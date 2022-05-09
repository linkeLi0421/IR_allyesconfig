; ModuleID = '/llk/IR_all_yes/drivers/tty/vt/selection.c_pt.bc'
source_filename = "../drivers/tty/vt/selection.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+clear_selection\22, \22a\22\09"
module asm "\09.weak\09__crc_clear_selection\09\09\09\09"
module asm "\09.long\09__crc_clear_selection\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clear_selection:\09\09\09\09\09"
module asm "\09.asciz \09\22clear_selection\22\09\09\09\09\09"
module asm "__kstrtabns_clear_selection:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+set_selection_kernel\22, \22a\22\09"
module asm "\09.weak\09__crc_set_selection_kernel\09\09\09\09"
module asm "\09.long\09__crc_set_selection_kernel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_selection_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22set_selection_kernel\22\09\09\09\09\09"
module asm "__kstrtabns_set_selection_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+paste_selection\22, \22a\22\09"
module asm "\09.weak\09__crc_paste_selection\09\09\09\09"
module asm "\09.long\09__crc_paste_selection\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_paste_selection:\09\09\09\09\09"
module asm "\09.asciz \09\22paste_selection\22\09\09\09\09\09"
module asm "__kstrtabns_paste_selection:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.vc_selection = type { %struct.mutex, ptr, ptr, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tiocl_selection = type { i16, i16, i16, i16, i16 }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.1, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.1 = type { ptr }
%struct.llist_head = type { ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.68, %struct.anon.69, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.68 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.69 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@vc_sel = internal global { %struct.vc_selection, [48 x i8] } { %struct.vc_selection { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vc_sel, i64 52), ptr getelementptr (i8, ptr @vc_sel, i64 52) }, ptr @vc_sel, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr null, ptr null, i32 0, i32 -1, i32 0 }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_clear_selection = external dso_local constant [0 x i8], align 1
@__kstrtabns_clear_selection = external dso_local constant [0 x i8], align 1
@__ksymtab_clear_selection = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clear_selection to i32), ptr @__kstrtab_clear_selection, ptr @__kstrtabns_clear_selection }, section "___ksymtab_gpl+clear_selection", align 4
@inwordLut = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 67100672, i32 -2013265922, i32 134217726], [16 x i8] zeroinitializer }, align 32
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 4
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_set_selection_kernel = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_selection_kernel = external dso_local constant [0 x i8], align 1
@__ksymtab_set_selection_kernel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_selection_kernel to i32), ptr @__kstrtab_set_selection_kernel, ptr @__kstrtabns_set_selection_kernel }, section "___ksymtab_gpl+set_selection_kernel", align 4
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/tty/vt/selection.c\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_paste_selection = external dso_local constant [0 x i8], align 1
@__kstrtabns_paste_selection = external dso_local constant [0 x i8], align 1
@__ksymtab_paste_selection = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @paste_selection to i32), ptr @__kstrtab_paste_selection, ptr @__kstrtabns_paste_selection }, section "___ksymtab_gpl+paste_selection", align 4
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vc_sel.lock.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vc_sel.lock\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@vc_selection_store_chars._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014selection: kmalloc() failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vc_selection_store_chars\00", [39 x i8] zeroinitializer }, align 32
@vc_selection_store_chars._entry_ptr = internal global ptr @vc_selection_store_chars._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"vc_sel\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 46, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"inwordLut\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 99, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 395, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 47, i32 10 }
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 156, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [30 x i8] c"../drivers/tty/vt/selection.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 198, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_clear_selection, ptr @__ksymtab_paste_selection, ptr @__ksymtab_set_selection_kernel, ptr @vc_selection_store_chars._entry, ptr @vc_selection_store_chars._entry_ptr, ptr @vc_sel, ptr @inwordLut, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc_sel to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inwordLut to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc_selection_store_chars._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_selection() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  tail call void @complement_pos(ptr noundef %0, i32 noundef -1) #8
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %sub.i = sub i32 2, %2
  %add.i = add i32 %sub.i, %3
  tail call void @invert_screen(ptr noundef %4, i32 noundef %2, i32 noundef %add.i, i1 noundef zeroext true) #8
  store volatile i32 -1, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vc_is_sel(ptr noundef readnone %vc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %cmp = icmp eq ptr %0, %vc
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sel_loadlut(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %tmplut = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmplut) #8
  %add.ptr = getelementptr i8, ptr %p, i32 4
  %0 = call ptr @memset(ptr %tmplut, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 16, i32 -1226833920) #11, !srcloc !42
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !43

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmplut, i32 noundef 16) #8
  %2 = call i32 @llvm.read_register.i32(metadata !32) #8
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !44
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmplut, ptr noundef %add.ptr, i32 noundef 16) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #8, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !43

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i4 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %entry.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i4
  %add.ptr.i.i = getelementptr i8, ptr %tmplut, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i4)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = call ptr @memcpy(ptr @inwordLut, ptr %tmplut, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmplut) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_selection_user(ptr noundef %sel, ptr noundef %tty) local_unnamed_addr #0 align 64 {
entry:
  %v = alloca %struct.tiocl_selection, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %v) #8
  %0 = call ptr @memset(ptr %v, i32 255, i32 10)
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %sel, i32 10, i32 -1226833920) #11, !srcloc !42
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !43

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 10) #8
  %2 = call i32 @llvm.read_register.i32(metadata !32) #8
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !44
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %v, ptr noundef %sel, i32 noundef 10) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #8, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !43

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i4 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 10, %entry.if.then11.i.i_crit_edge ], [ 10, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 10, %res.0.i.i4
  %add.ptr.i.i = getelementptr i8, ptr %v, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i4)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = call i32 @set_selection_kernel(ptr noundef nonnull %v, ptr noundef %tty)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ %call1, %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %v) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_selection_kernel(ptr nocapture noundef %v, ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @vc_sel, i32 noundef 0) #8
  tail call void @console_lock() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %0 = load i32, ptr @fg_console, align 4
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  tail call void @poke_blanked_console() #8
  %sel_mode.i = getelementptr inbounds %struct.tiocl_selection, ptr %v, i32 0, i32 4
  %3 = ptrtoint ptr %sel_mode.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sel_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %4)
  %cmp.i = icmp eq i16 %4, 4
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %5 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  tail call void @complement_pos(ptr noundef %5, i32 noundef -1) #8
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.not.i.i = icmp eq i32 %6, -1
  br i1 %cmp.not.i.i, label %if.then.i.vc_selection.exit_crit_edge, label %if.then.i.i

if.then.i.vc_selection.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc_selection.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %sub.i.i.i = sub i32 2, %7
  %add.i.i.i = add i32 %sub.i.i.i, %8
  tail call void @invert_screen(ptr noundef %9, i32 noundef %7, i32 noundef %add.i.i.i, i1 noundef zeroext true) #8
  store volatile i32 -1, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  br label %vc_selection.exit

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %v, align 2
  %sub.i = add i16 %11, -1
  %vc_cols.i = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %vc_cols.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vc_cols.i, align 4
  %conv5.i = add i32 %13, 65535
  %conv6.i = zext i16 %sub.i to i32
  %conv7.i = and i32 %conv5.i, 65535
  %14 = tail call i32 @llvm.umin.i32(i32 %conv7.i, i32 %conv6.i) #8
  %conv12.i = trunc i32 %14 to i16
  %15 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv12.i, ptr %v, align 2
  %ys.i = getelementptr inbounds %struct.tiocl_selection, ptr %v, i32 0, i32 1
  %16 = ptrtoint ptr %ys.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ys.i, align 2
  %sub15.i = add i16 %17, -1
  %vc_rows.i = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 5
  %18 = ptrtoint ptr %vc_rows.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vc_rows.i, align 4
  %conv18.i = add i32 %19, 65535
  %conv20.i = zext i16 %sub15.i to i32
  %conv21.i = and i32 %conv18.i, 65535
  %20 = tail call i32 @llvm.umin.i32(i32 %conv21.i, i32 %conv20.i) #8
  %conv30.i = trunc i32 %20 to i16
  %21 = ptrtoint ptr %ys.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv30.i, ptr %ys.i, align 2
  %xe.i = getelementptr inbounds %struct.tiocl_selection, ptr %v, i32 0, i32 2
  %22 = ptrtoint ptr %xe.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %xe.i, align 2
  %sub33.i = add i16 %23, -1
  %24 = ptrtoint ptr %vc_cols.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vc_cols.i, align 4
  %conv37.i = add i32 %25, 65535
  %conv39.i = zext i16 %sub33.i to i32
  %conv40.i = and i32 %conv37.i, 65535
  %26 = tail call i32 @llvm.umin.i32(i32 %conv40.i, i32 %conv39.i) #8
  %conv49.i = trunc i32 %26 to i16
  %27 = ptrtoint ptr %xe.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv49.i, ptr %xe.i, align 2
  %ye.i = getelementptr inbounds %struct.tiocl_selection, ptr %v, i32 0, i32 3
  %28 = ptrtoint ptr %ye.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ye.i, align 2
  %sub52.i = add i16 %29, -1
  %30 = ptrtoint ptr %vc_rows.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vc_rows.i, align 4
  %conv56.i = add i32 %31, 65535
  %conv58.i = zext i16 %sub52.i to i32
  %conv59.i = and i32 %conv56.i, 65535
  %32 = tail call i32 @llvm.umin.i32(i32 %conv59.i, i32 %conv58.i) #8
  %conv68.i = trunc i32 %32 to i16
  %33 = ptrtoint ptr %ye.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv68.i, ptr %ye.i, align 2
  %call.i = tail call i32 @mouse_reporting() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end81.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end81.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %34 = ptrtoint ptr %sel_mode.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %sel_mode.i, align 2
  %conv71.i = zext i16 %35 to i32
  %and.i = and i32 %conv71.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool72.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool72.not.i, label %land.lhs.true.i.if.end81.i_crit_edge, label %if.then73.i

land.lhs.true.i.if.end81.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81.i

if.then73.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %and76.i = and i32 %conv71.i, 15
  %36 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %v, align 2
  %conv78.i = zext i16 %37 to i32
  %38 = ptrtoint ptr %ys.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ys.i, align 2
  %conv80.i = zext i16 %39 to i32
  tail call void @mouse_report(ptr noundef %tty, i32 noundef %and76.i, i32 noundef %conv78.i, i32 noundef %conv80.i) #8
  br label %vc_selection.exit

if.end81.i:                                       ; preds = %land.lhs.true.i.if.end81.i_crit_edge, %if.end.i.if.end81.i_crit_edge
  %40 = ptrtoint ptr %ys.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ys.i, align 2
  %conv83.i = zext i16 %41 to i32
  %vc_size_row.i = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 6
  %42 = ptrtoint ptr %vc_size_row.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vc_size_row.i, align 4
  %mul.i = mul i32 %43, %conv83.i
  %44 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %v, align 2
  %conv85.i = zext i16 %45 to i32
  %shl.i = shl nuw nsw i32 %conv85.i, 1
  %add.i = add i32 %shl.i, %mul.i
  %46 = ptrtoint ptr %ye.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ye.i, align 2
  %conv87.i = zext i16 %47 to i32
  %mul89.i = mul i32 %43, %conv87.i
  %48 = ptrtoint ptr %xe.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %xe.i, align 2
  %conv91.i = zext i16 %49 to i32
  %shl92.i = shl nuw nsw i32 %conv91.i, 1
  %add93.i = add i32 %shl92.i, %mul89.i
  %50 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 %add93.i) #8
  %51 = tail call i32 @llvm.smin.i32(i32 %add.i, i32 %add93.i) #8
  %52 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %cmp98.not.i = icmp eq ptr %52, %2
  br i1 %cmp98.not.i, label %if.end81.i.if.end101.i_crit_edge, label %if.then100.i

if.end81.i.if.end101.i_crit_edge:                 ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101.i

if.then100.i:                                     ; preds = %if.end81.i
  tail call void @complement_pos(ptr noundef %52, i32 noundef -1) #8
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp.not.i143.i = icmp eq i32 %53, -1
  br i1 %cmp.not.i143.i, label %if.then100.i.clear_selection.exit147.i_crit_edge, label %if.then.i146.i

if.then100.i.clear_selection.exit147.i_crit_edge: ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clear_selection.exit147.i

if.then.i146.i:                                   ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %55 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  %56 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %sub.i.i144.i = sub i32 2, %54
  %add.i.i145.i = add i32 %sub.i.i144.i, %55
  tail call void @invert_screen(ptr noundef %56, i32 noundef %54, i32 noundef %add.i.i145.i, i1 noundef zeroext true) #8
  store volatile i32 -1, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  br label %clear_selection.exit147.i

clear_selection.exit147.i:                        ; preds = %if.then.i146.i, %if.then100.i.clear_selection.exit147.i_crit_edge
  store ptr %2, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br label %if.end101.i

if.end101.i:                                      ; preds = %clear_selection.exit147.i, %if.end81.i.if.end101.i_crit_edge
  %57 = ptrtoint ptr %sel_mode.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %sel_mode.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %59 = load i32, ptr @fg_console, align 4
  %call.i.i = tail call i32 @vt_do_kdgkbmode(i32 noundef %59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 3
  %60 = zext i16 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values)
  switch i16 %58, label %if.end101.i.vc_selection.exit_crit_edge [
    i16 0, label %if.end101.i.sw.epilog.i.i_crit_edge
    i16 1, label %sw.bb1.i.i
    i16 2, label %sw.bb47.i.i
    i16 3, label %sw.bb59.i.i
  ]

if.end101.i.sw.epilog.i.i_crit_edge:              ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

if.end101.i.vc_selection.exit_crit_edge:          ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc_selection.exit

sw.bb1.i.i:                                       ; preds = %if.end101.i
  %61 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %cmp.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i.i.i = sdiv i32 %51, 2
  %call.i.i.i = tail call i32 @screen_glyph_unicode(ptr noundef %61, i32 noundef %div.i.i.i) #8
  br label %sel_pos.exit.i.i

if.end.i.i.i:                                     ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i.i = tail call zeroext i16 @screen_glyph(ptr noundef %61, i32 noundef %51) #8
  %conv.i.i.i = zext i16 %call1.i.i.i to i32
  %call2.i.i.i = tail call zeroext i16 @inverse_translate(ptr noundef %61, i32 noundef %conv.i.i.i, i32 noundef 0) #8
  %conv3.i.i.i = zext i16 %call2.i.i.i to i32
  br label %sel_pos.exit.i.i

sel_pos.exit.i.i:                                 ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i.i ], [ %conv3.i.i.i, %if.end.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %retval.0.i.i.i)
  %cmp3.i.i = icmp eq i32 %retval.0.i.i.i, 32
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.inc.i.i, %sel_pos.exit.i.i
  %new_sel_start.0.i.i = phi i32 [ %51, %sel_pos.exit.i.i ], [ %ps.addr.0.i.i, %for.inc.i.i ]
  %ps.addr.0.i.i = phi i32 [ %51, %sel_pos.exit.i.i ], [ %sub.i.i, %for.inc.i.i ]
  %62 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %land.lhs.true11.critedge.i.i

land.lhs.true.i.i:                                ; preds = %for.cond.i.i
  br i1 %cmp.i.i, label %if.then.i195.i.i, label %if.end.i200.i.i

if.then.i195.i.i:                                 ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i193.i.i = sdiv i32 %ps.addr.0.i.i, 2
  %call.i194.i.i = tail call i32 @screen_glyph_unicode(ptr noundef %62, i32 noundef %div.i193.i.i) #8
  br label %sel_pos.exit202.i.i

if.end.i200.i.i:                                  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i196.i.i = tail call zeroext i16 @screen_glyph(ptr noundef %62, i32 noundef %ps.addr.0.i.i) #8
  %conv.i197.i.i = zext i16 %call1.i196.i.i to i32
  %call2.i198.i.i = tail call zeroext i16 @inverse_translate(ptr noundef %62, i32 noundef %conv.i197.i.i, i32 noundef 0) #8
  %conv3.i199.i.i = zext i16 %call2.i198.i.i to i32
  br label %sel_pos.exit202.i.i

sel_pos.exit202.i.i:                              ; preds = %if.end.i200.i.i, %if.then.i195.i.i
  %retval.0.i201.i.i = phi i32 [ %call.i194.i.i, %if.then.i195.i.i ], [ %conv3.i199.i.i, %if.end.i200.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %retval.0.i201.i.i)
  %cmp8.i.i = icmp eq i32 %retval.0.i201.i.i, 32
  br i1 %cmp8.i.i, label %sel_pos.exit202.i.i.if.end.i.i_crit_edge, label %sel_pos.exit202.i.i.for.end.i.i_crit_edge

sel_pos.exit202.i.i.for.end.i.i_crit_edge:        ; preds = %sel_pos.exit202.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

sel_pos.exit202.i.i.if.end.i.i_crit_edge:         ; preds = %sel_pos.exit202.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true11.critedge.i.i:                     ; preds = %for.cond.i.i
  br i1 %cmp.i.i, label %if.then.i205.i.i, label %if.end.i210.i.i

if.then.i205.i.i:                                 ; preds = %land.lhs.true11.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i203.i.i = sdiv i32 %ps.addr.0.i.i, 2
  %call.i204.i.i = tail call i32 @screen_glyph_unicode(ptr noundef %62, i32 noundef %div.i203.i.i) #8
  br label %sel_pos.exit212.i.i

if.end.i210.i.i:                                  ; preds = %land.lhs.true11.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i206.i.i = tail call zeroext i16 @screen_glyph(ptr noundef %62, i32 noundef %ps.addr.0.i.i) #8
  %conv.i207.i.i = zext i16 %call1.i206.i.i to i32
  %call2.i208.i.i = tail call zeroext i16 @inverse_translate(ptr noundef %62, i32 noundef %conv.i207.i.i, i32 noundef 0) #8
  %conv3.i209.i.i = zext i16 %call2.i208.i.i to i32
  br label %sel_pos.exit212.i.i

sel_pos.exit212.i.i:                              ; preds = %if.end.i210.i.i, %if.then.i205.i.i
  %retval.0.i211.i.i = phi i32 [ %call.i204.i.i, %if.then.i205.i.i ], [ %conv3.i209.i.i, %if.end.i210.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %retval.0.i211.i.i)
  %cmp.i.i.i = icmp ugt i32 %retval.0.i211.i.i, 127
  br i1 %cmp.i.i.i, label %sel_pos.exit212.i.i.if.end.i.i_crit_edge, label %inword.exit.i.i

sel_pos.exit212.i.i.if.end.i.i_crit_edge:         ; preds = %sel_pos.exit212.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

inword.exit.i.i:                                  ; preds = %sel_pos.exit212.i.i
  %shr.i.i.i = lshr i32 %retval.0.i211.i.i, 5
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @inwordLut, i32 0, i32 %shr.i.i.i
  %63 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %retval.0.i211.i.i, 31
  %65 = shl nuw i32 1, %and.i.i.i
  %66 = and i32 %64, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool15.not.i.i = icmp eq i32 %66, 0
  br i1 %tobool15.not.i.i, label %inword.exit.i.i.for.end.i.i_crit_edge, label %inword.exit.i.i.if.end.i.i_crit_edge

inword.exit.i.i.if.end.i.i_crit_edge:             ; preds = %inword.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

inword.exit.i.i.for.end.i.i_crit_edge:            ; preds = %inword.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.end.i.i:                                       ; preds = %inword.exit.i.i.if.end.i.i_crit_edge, %sel_pos.exit212.i.i.if.end.i.i_crit_edge, %sel_pos.exit202.i.i.if.end.i.i_crit_edge
  %67 = ptrtoint ptr %vc_size_row.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vc_size_row.i, align 4
  %rem.i.i = urem i32 %ps.addr.0.i.i, %68
  %tobool16.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %for.inc.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %ps.addr.0.i.i, -2
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %if.end.i.i.for.end.i.i_crit_edge, %inword.exit.i.i.for.end.i.i_crit_edge, %sel_pos.exit202.i.i.for.end.i.i_crit_edge
  %new_sel_start.1.i.i = phi i32 [ %ps.addr.0.i.i, %if.end.i.i.for.end.i.i_crit_edge ], [ %new_sel_start.0.i.i, %inword.exit.i.i.for.end.i.i_crit_edge ], [ %new_sel_start.0.i.i, %sel_pos.exit202.i.i.for.end.i.i_crit_edge ]
  %69 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %cmp.i.i, label %if.then.i215.i.i, label %if.end.i220.i.i

if.then.i215.i.i:                                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i213.i.i = sdiv i32 %50, 2
  %call.i214.i.i = tail call i32 @screen_glyph_unicode(ptr noundef %69, i32 noundef %div.i213.i.i) #8
  br label %sel_pos.exit222.i.i

if.end.i220.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i216.i.i = tail call zeroext i16 @screen_glyph(ptr noundef %69, i32 noundef %50) #8
  %conv.i217.i.i = zext i16 %call1.i216.i.i to i32
  %call2.i218.i.i = tail call zeroext i16 @inverse_translate(ptr noundef %69, i32 noundef %conv.i217.i.i, i32 noundef 0) #8
  %conv3.i219.i.i = zext i16 %call2.i218.i.i to i32
  br label %sel_pos.exit222.i.i

sel_pos.exit222.i.i:                              ; preds = %if.end.i220.i.i, %if.then.i215.i.i
  %retval.0.i221.i.i = phi i32 [ %call.i214.i.i, %if.then.i215.i.i ], [ %conv3.i219.i.i, %if.end.i220.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %retval.0.i221.i.i)
  %cmp21.i.i = icmp eq i32 %retval.0.i221.i.i, 32
  br label %for.cond23.i.i

for.cond23.i.i:                                   ; preds = %if.end38.i.i.for.cond23.i.i_crit_edge, %sel_pos.exit222.i.i
  %new_sel_end.0.i.i = phi i32 [ %50, %sel_pos.exit222.i.i ], [ %pe.addr.0.i.i, %if.end38.i.i.for.cond23.i.i_crit_edge ]
  %pe.addr.0.i.i = phi i32 [ %50, %sel_pos.exit222.i.i ], [ %add.i.i, %if.end38.i.i.for.cond23.i.i_crit_edge ]
  %70 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %cmp21.i.i, label %land.lhs.true25.i.i, label %land.lhs.true32.critedge.i.i

land.lhs.true25.i.i:                              ; preds = %for.cond23.i.i
  br i1 %cmp.i.i, label %if.then.i225.i.i, label %if.end.i230.i.i

if.then.i225.i.i:                                 ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i223.i.i = sdiv i32 %pe.addr.0.i.i, 2
  %call.i224.i.i = tail call i32 @screen_glyph_unicode(ptr noundef %70, i32 noundef %div.i223.i.i) #8
  br label %sel_pos.exit232.i.i

if.end.i230.i.i:                                  ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i226.i.i = tail call zeroext i16 @screen_glyph(ptr noundef %70, i32 noundef %pe.addr.0.i.i) #8
  %conv.i227.i.i = zext i16 %call1.i226.i.i to i32
  %call2.i228.i.i = tail call zeroext i16 @inverse_translate(ptr noundef %70, i32 noundef %conv.i227.i.i, i32 noundef 0) #8
  %conv3.i229.i.i = zext i16 %call2.i228.i.i to i32
  br label %sel_pos.exit232.i.i

sel_pos.exit232.i.i:                              ; preds = %if.end.i230.i.i, %if.then.i225.i.i
  %retval.0.i231.i.i = phi i32 [ %call.i224.i.i, %if.then.i225.i.i ], [ %conv3.i229.i.i, %if.end.i230.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %retval.0.i231.i.i)
  %cmp28.i.i = icmp eq i32 %retval.0.i231.i.i, 32
  br i1 %cmp28.i.i, label %sel_pos.exit232.i.i.if.end38.i.i_crit_edge, label %sel_pos.exit232.i.i.sw.epilog.i.i_crit_edge

sel_pos.exit232.i.i.sw.epilog.i.i_crit_edge:      ; preds = %sel_pos.exit232.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sel_pos.exit232.i.i.if.end38.i.i_crit_edge:       ; preds = %sel_pos.exit232.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i.i

land.lhs.true32.critedge.i.i:                     ; preds = %for.cond23.i.i
  br i1 %cmp.i.i, label %if.then.i235.i.i, label %if.end.i240.i.i

if.then.i235.i.i:                                 ; preds = %land.lhs.true32.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i233.i.i = sdiv i32 %pe.addr.0.i.i, 2
  %call.i234.i.i = tail call i32 @screen_glyph_unicode(ptr noundef %70, i32 noundef %div.i233.i.i) #8
  br label %sel_pos.exit242.i.i

if.end.i240.i.i:                                  ; preds = %land.lhs.true32.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i236.i.i = tail call zeroext i16 @screen_glyph(ptr noundef %70, i32 noundef %pe.addr.0.i.i) #8
  %conv.i237.i.i = zext i16 %call1.i236.i.i to i32
  %call2.i238.i.i = tail call zeroext i16 @inverse_translate(ptr noundef %70, i32 noundef %conv.i237.i.i, i32 noundef 0) #8
  %conv3.i239.i.i = zext i16 %call2.i238.i.i to i32
  br label %sel_pos.exit242.i.i

sel_pos.exit242.i.i:                              ; preds = %if.end.i240.i.i, %if.then.i235.i.i
  %retval.0.i241.i.i = phi i32 [ %call.i234.i.i, %if.then.i235.i.i ], [ %conv3.i239.i.i, %if.end.i240.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %retval.0.i241.i.i)
  %cmp.i243.i.i = icmp ugt i32 %retval.0.i241.i.i, 127
  br i1 %cmp.i243.i.i, label %sel_pos.exit242.i.i.if.end38.i.i_crit_edge, label %inword.exit248.i.i

sel_pos.exit242.i.i.if.end38.i.i_crit_edge:       ; preds = %sel_pos.exit242.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i.i

inword.exit248.i.i:                               ; preds = %sel_pos.exit242.i.i
  %shr.i244.i.i = lshr i32 %retval.0.i241.i.i, 5
  %arrayidx.i245.i.i = getelementptr [4 x i32], ptr @inwordLut, i32 0, i32 %shr.i244.i.i
  %71 = ptrtoint ptr %arrayidx.i245.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i245.i.i, align 4
  %and.i246.i.i = and i32 %retval.0.i241.i.i, 31
  %73 = shl nuw i32 1, %and.i246.i.i
  %74 = and i32 %72, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool36.not.i.i = icmp eq i32 %74, 0
  br i1 %tobool36.not.i.i, label %inword.exit248.i.i.sw.epilog.i.i_crit_edge, label %inword.exit248.i.i.if.end38.i.i_crit_edge

inword.exit248.i.i.if.end38.i.i_crit_edge:        ; preds = %inword.exit248.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i.i

inword.exit248.i.i.sw.epilog.i.i_crit_edge:       ; preds = %inword.exit248.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

if.end38.i.i:                                     ; preds = %inword.exit248.i.i.if.end38.i.i_crit_edge, %sel_pos.exit242.i.i.if.end38.i.i_crit_edge, %sel_pos.exit232.i.i.if.end38.i.i_crit_edge
  %add.i.i = add i32 %pe.addr.0.i.i, 2
  %75 = ptrtoint ptr %vc_size_row.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %vc_size_row.i, align 4
  %rem40.i.i = urem i32 %add.i.i, %76
  %tobool41.not.i.i = icmp eq i32 %rem40.i.i, 0
  br i1 %tobool41.not.i.i, label %if.end38.i.i.sw.epilog.i.i_crit_edge, label %if.end38.i.i.for.cond23.i.i_crit_edge

if.end38.i.i.for.cond23.i.i_crit_edge:            ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond23.i.i

if.end38.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb47.i.i:                                      ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %vc_size_row.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %vc_size_row.i, align 4
  %rem49.i.i = urem i32 %51, %78
  %sub50.i.i = sub i32 %51, %rem49.i.i
  %rem54.i.i = urem i32 %50, %78
  %sub55.i.i = add i32 %50, -2
  %add57.i.i = add i32 %sub55.i.i, %78
  %sub58.i.i = sub i32 %add57.i.i, %rem54.i.i
  br label %sw.epilog.i.i

sw.bb59.i.i:                                      ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  tail call void @complement_pos(ptr noundef %79, i32 noundef %50) #8
  br label %vc_selection.exit

sw.epilog.i.i:                                    ; preds = %sw.bb47.i.i, %if.end38.i.i.sw.epilog.i.i_crit_edge, %inword.exit248.i.i.sw.epilog.i.i_crit_edge, %sel_pos.exit232.i.i.sw.epilog.i.i_crit_edge, %if.end101.i.sw.epilog.i.i_crit_edge
  %new_sel_end.1.i.i = phi i32 [ %sub58.i.i, %sw.bb47.i.i ], [ %50, %if.end101.i.sw.epilog.i.i_crit_edge ], [ %new_sel_end.0.i.i, %sel_pos.exit232.i.i.sw.epilog.i.i_crit_edge ], [ %new_sel_end.0.i.i, %inword.exit248.i.i.sw.epilog.i.i_crit_edge ], [ %pe.addr.0.i.i, %if.end38.i.i.sw.epilog.i.i_crit_edge ]
  %new_sel_start.2.i.i = phi i32 [ %sub50.i.i, %sw.bb47.i.i ], [ %51, %if.end101.i.sw.epilog.i.i_crit_edge ], [ %new_sel_start.1.i.i, %sel_pos.exit232.i.i.sw.epilog.i.i_crit_edge ], [ %new_sel_start.1.i.i, %inword.exit248.i.i.sw.epilog.i.i_crit_edge ], [ %new_sel_start.1.i.i, %if.end38.i.i.sw.epilog.i.i_crit_edge ]
  %80 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  tail call void @complement_pos(ptr noundef %80, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %new_sel_end.1.i.i, i32 %new_sel_start.2.i.i)
  %cmp60.i.i = icmp sgt i32 %new_sel_end.1.i.i, %new_sel_start.2.i.i
  br i1 %cmp60.i.i, label %land.lhs.true62.i.i, label %sw.epilog.i.i.if.end93.i.i_crit_edge

sw.epilog.i.i.if.end93.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.i.i

land.lhs.true62.i.i:                              ; preds = %sw.epilog.i.i
  %81 = ptrtoint ptr %vc_size_row.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vc_size_row.i, align 4
  %rem.i.i.i = srem i32 %new_sel_end.1.i.i, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %rem.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true62.i.i.if.end93.i.i_crit_edge, label %atedge.exit.i.i

land.lhs.true62.i.i.if.end93.i.i_crit_edge:       ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.i.i

atedge.exit.i.i:                                  ; preds = %land.lhs.true62.i.i
  %add.i.i148.i = add i32 %new_sel_end.1.i.i, 2
  %rem1.i.i.i = srem i32 %add.i.i148.i, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i.i.i)
  %tobool2.not.i.not.i.i = icmp eq i32 %rem1.i.i.i, 0
  br i1 %tobool2.not.i.not.i.i, label %atedge.exit.i.i.if.end93.i.i_crit_edge, label %land.lhs.true66.i.i

atedge.exit.i.i.if.end93.i.i_crit_edge:           ; preds = %atedge.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.i.i

land.lhs.true66.i.i:                              ; preds = %atedge.exit.i.i
  %83 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %cmp.i.i, label %if.then.i252.i.i, label %if.end.i257.i.i

if.then.i252.i.i:                                 ; preds = %land.lhs.true66.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i250.i.i = sdiv i32 %new_sel_end.1.i.i, 2
  %call.i251.i.i = tail call i32 @screen_glyph_unicode(ptr noundef %83, i32 noundef %div.i250.i.i) #8
  br label %sel_pos.exit259.i.i

if.end.i257.i.i:                                  ; preds = %land.lhs.true66.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i253.i.i = tail call zeroext i16 @screen_glyph(ptr noundef %83, i32 noundef %new_sel_end.1.i.i) #8
  %conv.i254.i.i = zext i16 %call1.i253.i.i to i32
  %call2.i255.i.i = tail call zeroext i16 @inverse_translate(ptr noundef %83, i32 noundef %conv.i254.i.i, i32 noundef 0) #8
  %conv3.i256.i.i = zext i16 %call2.i255.i.i to i32
  br label %sel_pos.exit259.i.i

sel_pos.exit259.i.i:                              ; preds = %if.end.i257.i.i, %if.then.i252.i.i
  %retval.0.i258.i.i = phi i32 [ %call.i251.i.i, %if.then.i252.i.i ], [ %conv3.i256.i.i, %if.end.i257.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %retval.0.i258.i.i)
  %cmp69.i.i = icmp eq i32 %retval.0.i258.i.i, 32
  br i1 %cmp69.i.i, label %sel_pos.exit259.i.i.for.cond73.i.i_crit_edge, label %sel_pos.exit259.i.i.if.end93.i.i_crit_edge

sel_pos.exit259.i.i.if.end93.i.i_crit_edge:       ; preds = %sel_pos.exit259.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.i.i

sel_pos.exit259.i.i.for.cond73.i.i_crit_edge:     ; preds = %sel_pos.exit259.i.i
  br label %for.cond73.i.i

for.cond73.i.i:                                   ; preds = %atedge.exit277.i.i.for.cond73.i.i_crit_edge, %sel_pos.exit259.i.i.for.cond73.i.i_crit_edge
  %pe.addr.1.in.i.i = phi i32 [ %pe.addr.1.i.i, %atedge.exit277.i.i.for.cond73.i.i_crit_edge ], [ %new_sel_end.1.i.i, %sel_pos.exit259.i.i.for.cond73.i.i_crit_edge ]
  %pe.addr.1.i.i = add i32 %pe.addr.1.in.i.i, 2
  %84 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %cmp.i.i, label %if.then.i262.i.i, label %if.end.i267.i.i

if.then.i262.i.i:                                 ; preds = %for.cond73.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i260.i.i = sdiv i32 %pe.addr.1.i.i, 2
  %call.i261.i.i = tail call i32 @screen_glyph_unicode(ptr noundef %84, i32 noundef %div.i260.i.i) #8
  br label %sel_pos.exit269.i.i

if.end.i267.i.i:                                  ; preds = %for.cond73.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i263.i.i = tail call zeroext i16 @screen_glyph(ptr noundef %84, i32 noundef %pe.addr.1.i.i) #8
  %conv.i264.i.i = zext i16 %call1.i263.i.i to i32
  %call2.i265.i.i = tail call zeroext i16 @inverse_translate(ptr noundef %84, i32 noundef %conv.i264.i.i, i32 noundef 0) #8
  %conv3.i266.i.i = zext i16 %call2.i265.i.i to i32
  br label %sel_pos.exit269.i.i

sel_pos.exit269.i.i:                              ; preds = %if.end.i267.i.i, %if.then.i262.i.i
  %retval.0.i268.i.i = phi i32 [ %call.i261.i.i, %if.then.i262.i.i ], [ %conv3.i266.i.i, %if.end.i267.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %retval.0.i268.i.i)
  %cmp76.i.i = icmp eq i32 %retval.0.i268.i.i, 32
  br i1 %cmp76.i.i, label %lor.lhs.false78.i.i, label %sel_pos.exit269.i.i.for.end86.i.i_crit_edge

sel_pos.exit269.i.i.for.end86.i.i_crit_edge:      ; preds = %sel_pos.exit269.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end86.i.i

lor.lhs.false78.i.i:                              ; preds = %sel_pos.exit269.i.i
  %85 = ptrtoint ptr %vc_size_row.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %vc_size_row.i, align 4
  %rem.i270.i.i = srem i32 %pe.addr.1.i.i, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i270.i.i)
  %tobool.not.i271.i.i = icmp eq i32 %rem.i270.i.i, 0
  br i1 %tobool.not.i271.i.i, label %lor.lhs.false78.i.i.for.end86.i.i_crit_edge, label %atedge.exit277.i.i

lor.lhs.false78.i.i.for.end86.i.i_crit_edge:      ; preds = %lor.lhs.false78.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end86.i.i

atedge.exit277.i.i:                               ; preds = %lor.lhs.false78.i.i
  %add.i272.i.i = add i32 %pe.addr.1.in.i.i, 4
  %rem1.i273.i.i = srem i32 %add.i272.i.i, %86
  %tobool2.not.i274.not.i.i = icmp eq i32 %rem1.i273.i.i, 0
  br i1 %tobool2.not.i274.not.i.i, label %atedge.exit277.i.i.for.end86.i.i_crit_edge, label %atedge.exit277.i.i.for.cond73.i.i_crit_edge

atedge.exit277.i.i.for.cond73.i.i_crit_edge:      ; preds = %atedge.exit277.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond73.i.i

atedge.exit277.i.i.for.end86.i.i_crit_edge:       ; preds = %atedge.exit277.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end86.i.i

for.end86.i.i:                                    ; preds = %atedge.exit277.i.i.for.end86.i.i_crit_edge, %lor.lhs.false78.i.i.for.end86.i.i_crit_edge, %sel_pos.exit269.i.i.for.end86.i.i_crit_edge
  %87 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %cmp.i.i, label %if.then.i280.i.i, label %if.end.i285.i.i

if.then.i280.i.i:                                 ; preds = %for.end86.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i278.i.i = sdiv i32 %pe.addr.1.i.i, 2
  %call.i279.i.i = tail call i32 @screen_glyph_unicode(ptr noundef %87, i32 noundef %div.i278.i.i) #8
  br label %sel_pos.exit287.i.i

if.end.i285.i.i:                                  ; preds = %for.end86.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i281.i.i = tail call zeroext i16 @screen_glyph(ptr noundef %87, i32 noundef %pe.addr.1.i.i) #8
  %conv.i282.i.i = zext i16 %call1.i281.i.i to i32
  %call2.i283.i.i = tail call zeroext i16 @inverse_translate(ptr noundef %87, i32 noundef %conv.i282.i.i, i32 noundef 0) #8
  %conv3.i284.i.i = zext i16 %call2.i283.i.i to i32
  br label %sel_pos.exit287.i.i

sel_pos.exit287.i.i:                              ; preds = %if.end.i285.i.i, %if.then.i280.i.i
  %retval.0.i286.i.i = phi i32 [ %call.i279.i.i, %if.then.i280.i.i ], [ %conv3.i284.i.i, %if.end.i285.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %retval.0.i286.i.i)
  %cmp89.i.i = icmp eq i32 %retval.0.i286.i.i, 32
  %spec.select.i.i = select i1 %cmp89.i.i, i32 %pe.addr.1.i.i, i32 %new_sel_end.1.i.i
  br label %if.end93.i.i

if.end93.i.i:                                     ; preds = %sel_pos.exit287.i.i, %sel_pos.exit259.i.i.if.end93.i.i_crit_edge, %atedge.exit.i.i.if.end93.i.i_crit_edge, %land.lhs.true62.i.i.if.end93.i.i_crit_edge, %sw.epilog.i.i.if.end93.i.i_crit_edge
  %new_sel_end.2.i.i = phi i32 [ %new_sel_end.1.i.i, %atedge.exit.i.i.if.end93.i.i_crit_edge ], [ %new_sel_end.1.i.i, %sel_pos.exit259.i.i.if.end93.i.i_crit_edge ], [ %new_sel_end.1.i.i, %sw.epilog.i.i.if.end93.i.i_crit_edge ], [ %spec.select.i.i, %sel_pos.exit287.i.i ], [ %new_sel_end.1.i.i, %land.lhs.true62.i.i.if.end93.i.i_crit_edge ]
  %88 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %cmp94.i.i = icmp eq i32 %88, -1
  br i1 %cmp94.i.i, label %if.then96.i.i, label %if.else.i.i

if.then96.i.i:                                    ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %89 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %sub.i.i149.i = sub i32 2, %new_sel_start.2.i.i
  %add.i288.i.i = add i32 %sub.i.i149.i, %new_sel_end.2.i.i
  tail call void @invert_screen(ptr noundef %89, i32 noundef %new_sel_start.2.i.i, i32 noundef %add.i288.i.i, i1 noundef zeroext true) #8
  br label %if.end126.i.i

if.else.i.i:                                      ; preds = %if.end93.i.i
  %90 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_sel_start.2.i.i, i32 %90)
  %cmp97.i.i = icmp eq i32 %new_sel_start.2.i.i, %90
  %91 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_sel_end.2.i.i, i32 %91)
  %cmp100.i.i = icmp eq i32 %new_sel_end.2.i.i, %91
  br i1 %cmp97.i.i, label %if.then99.i.i, label %if.else112.i.i

if.then99.i.i:                                    ; preds = %if.else.i.i
  br i1 %cmp100.i.i, label %if.then99.i.i.vc_selection.exit_crit_edge, label %if.else103.i.i

if.then99.i.i.vc_selection.exit_crit_edge:        ; preds = %if.then99.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc_selection.exit

if.else103.i.i:                                   ; preds = %if.then99.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %new_sel_end.2.i.i, i32 %91)
  %cmp104.i.i = icmp sgt i32 %new_sel_end.2.i.i, %91
  br i1 %cmp104.i.i, label %if.then106.i.i, label %if.else108.i.i

if.then106.i.i:                                   ; preds = %if.else103.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add107.i.i = add i32 %91, 2
  %92 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %add.i290.i.i = sub i32 %new_sel_end.2.i.i, %91
  tail call void @invert_screen(ptr noundef %92, i32 noundef %add107.i.i, i32 noundef %add.i290.i.i, i1 noundef zeroext true) #8
  br label %if.end126.i.i

if.else108.i.i:                                   ; preds = %if.else103.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add109.i.i = add i32 %new_sel_end.2.i.i, 2
  %93 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %add.i292.i.i = sub i32 %91, %new_sel_end.2.i.i
  tail call void @invert_screen(ptr noundef %93, i32 noundef %add109.i.i, i32 noundef %add.i292.i.i, i1 noundef zeroext true) #8
  br label %if.end126.i.i

if.else112.i.i:                                   ; preds = %if.else.i.i
  br i1 %cmp100.i.i, label %if.then115.i.i, label %if.else123.i.i

if.then115.i.i:                                   ; preds = %if.else112.i.i
  %94 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_sel_start.2.i.i, i32 %94)
  %cmp116.i.i = icmp slt i32 %new_sel_start.2.i.i, %94
  %95 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %96 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %cmp116.i.i, label %if.then118.i.i, label %if.else120.i.i

if.then118.i.i:                                   ; preds = %if.then115.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %97 = sub i32 %95, %new_sel_start.2.i.i
  tail call void @invert_screen(ptr noundef %96, i32 noundef %new_sel_start.2.i.i, i32 noundef %97, i1 noundef zeroext true) #8
  br label %if.end126.i.i

if.else120.i.i:                                   ; preds = %if.then115.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %98 = sub i32 %new_sel_start.2.i.i, %95
  tail call void @invert_screen(ptr noundef %96, i32 noundef %95, i32 noundef %98, i1 noundef zeroext true) #8
  br label %if.end126.i.i

if.else123.i.i:                                   ; preds = %if.else112.i.i
  %99 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  tail call void @complement_pos(ptr noundef %99, i32 noundef -1) #8
  %100 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %100)
  %cmp.not.i.i.i = icmp eq i32 %100, -1
  br i1 %cmp.not.i.i.i, label %if.else123.i.i.clear_selection.exit.i.i_crit_edge, label %if.then.i297.i.i

if.else123.i.i.clear_selection.exit.i.i_crit_edge: ; preds = %if.else123.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clear_selection.exit.i.i

if.then.i297.i.i:                                 ; preds = %if.else123.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %101 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %102 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  %103 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %sub.i.i.i.i = sub i32 2, %101
  %add.i.i.i.i = add i32 %sub.i.i.i.i, %102
  tail call void @invert_screen(ptr noundef %103, i32 noundef %101, i32 noundef %add.i.i.i.i, i1 noundef zeroext true) #8
  store volatile i32 -1, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  br label %clear_selection.exit.i.i

clear_selection.exit.i.i:                         ; preds = %if.then.i297.i.i, %if.else123.i.i.clear_selection.exit.i.i_crit_edge
  %104 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %sub.i299.i.i = sub i32 2, %new_sel_start.2.i.i
  %add.i300.i.i = add i32 %sub.i299.i.i, %new_sel_end.2.i.i
  tail call void @invert_screen(ptr noundef %104, i32 noundef %new_sel_start.2.i.i, i32 noundef %add.i300.i.i, i1 noundef zeroext true) #8
  br label %if.end126.i.i

if.end126.i.i:                                    ; preds = %clear_selection.exit.i.i, %if.else120.i.i, %if.then118.i.i, %if.else108.i.i, %if.then106.i.i, %if.then96.i.i
  store volatile i32 %new_sel_start.2.i.i, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  store i32 %new_sel_end.2.i.i, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  %105 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %sub.i301.i.i = sub i32 %new_sel_end.2.i.i, %105
  %div.i302.i.i = sdiv i32 %sub.i301.i.i, 2
  %add.i303.i.i = add nsw i32 %div.i302.i.i, 1
  %cond.i.i.i = select i1 %cmp.i.i, i32 4, i32 1
  %106 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i303.i.i, i32 %cond.i.i.i) #8
  %107 = extractvalue { i32, i1 } %106, 1
  br i1 %107, label %if.end126.i.i.do.end.i.i.i_crit_edge, label %if.end7.i.i.i.i, !prof !47

if.end126.i.i.do.end.i.i.i_crit_edge:             ; preds = %if.end126.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

if.end7.i.i.i.i:                                  ; preds = %if.end126.i.i
  %108 = extractvalue { i32, i1 } %106, 0
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %108, i32 noundef 11456) #12
  %tobool1.not.i.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool1.not.i.i.i, label %if.end7.i.i.i.i.do.end.i.i.i_crit_edge, label %if.end.i305.i.i

if.end7.i.i.i.i.do.end.i.i.i_crit_edge:           ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end7.i.i.i.i.do.end.i.i.i_crit_edge, %if.end126.i.i.do.end.i.i.i_crit_edge
  %call2.i304.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  %109 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  tail call void @complement_pos(ptr noundef %109, i32 noundef -1) #8
  %110 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %cmp.not.i.i.i.i = icmp eq i32 %110, -1
  br i1 %cmp.not.i.i.i.i, label %do.end.i.i.i.vc_selection.exit_crit_edge, label %if.then.i.i.i.i

do.end.i.i.i.vc_selection.exit_crit_edge:         ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc_selection.exit

if.then.i.i.i.i:                                  ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %111 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %112 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  %113 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %sub.i.i.i.i.i = sub i32 2, %111
  %add.i.i.i.i.i = add i32 %sub.i.i.i.i.i, %112
  tail call void @invert_screen(ptr noundef %113, i32 noundef %111, i32 noundef %add.i.i.i.i.i, i1 noundef zeroext true) #8
  store volatile i32 -1, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  br label %vc_selection.exit

if.end.i305.i.i:                                  ; preds = %if.end7.i.i.i.i
  %114 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 4
  tail call void @kfree(ptr noundef %114) #8
  store ptr %call8.i.i.i.i, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 4
  %115 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %116 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %116)
  %cmp.not59.i.i.i = icmp ugt i32 %115, %116
  br i1 %cmp.not59.i.i.i, label %if.end.i305.i.i.for.end.i.i.i_crit_edge, label %if.end.i305.i.i.for.body.i.i.i_crit_edge

if.end.i305.i.i.for.body.i.i.i_crit_edge:         ; preds = %if.end.i305.i.i
  br label %for.body.i.i.i

if.end.i305.i.i.for.end.i.i.i_crit_edge:          ; preds = %if.end.i305.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %if.end21.i.i.i.for.body.i.i.i_crit_edge, %if.end.i305.i.i.for.body.i.i.i_crit_edge
  %i.063.i.i.i = phi i32 [ %add13.i.i.i, %if.end21.i.i.i.for.body.i.i.i_crit_edge ], [ %115, %if.end.i305.i.i.for.body.i.i.i_crit_edge ]
  %obp.062.i.i.i = phi ptr [ %obp.2.i.i.i, %if.end21.i.i.i.for.body.i.i.i_crit_edge ], [ %call8.i.i.i.i, %if.end.i305.i.i.for.body.i.i.i_crit_edge ]
  %bp.060.i.i.i = phi ptr [ %bp.3.i.i.i, %if.end21.i.i.i.for.body.i.i.i_crit_edge ], [ %call8.i.i.i.i, %if.end.i305.i.i.for.body.i.i.i_crit_edge ]
  %117 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %cmp.i.i, label %if.then6.i.i.i, label %if.else.i.i.i

if.then6.i.i.i:                                   ; preds = %for.body.i.i.i
  %div.i.i.i.i = sdiv i32 %i.063.i.i.i, 2
  %call.i.i.i.i = tail call i32 @screen_glyph_unicode(ptr noundef %117, i32 noundef %div.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %call.i.i.i.i, 128
  br i1 %cmp.i.i.i.i, label %if.then.i48.i.i.i, label %if.else.i.i.i.i

if.then.i48.i.i.i:                                ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i47.i.i.i = trunc i32 %call.i.i.i.i to i8
  %118 = ptrtoint ptr %bp.060.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv.i47.i.i.i, ptr %bp.060.i.i.i, align 1
  br label %store_utf8.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.i.i.i)
  %cmp1.i.i.i.i = icmp ult i32 %call.i.i.i.i, 2048
  br i1 %cmp1.i.i.i.i, label %if.then3.i.i.i.i, label %if.else9.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i.i.i = lshr i32 %call.i.i.i.i, 6
  %119 = trunc i32 %shr.i.i.i.i to i8
  %conv4.i.i.i.i = or i8 %119, -64
  %120 = ptrtoint ptr %bp.060.i.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv4.i.i.i.i, ptr %bp.060.i.i.i, align 1
  %121 = trunc i32 %call.i.i.i.i to i8
  %122 = and i8 %121, 63
  %conv7.i.i.i.i = or i8 %122, -128
  %arrayidx8.i.i.i.i = getelementptr i8, ptr %bp.060.i.i.i, i32 1
  %123 = ptrtoint ptr %arrayidx8.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv7.i.i.i.i, ptr %arrayidx8.i.i.i.i, align 1
  br label %store_utf8.exit.i.i.i

if.else9.i.i.i.i:                                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call.i.i.i.i)
  %cmp10.i.i.i.i = icmp ult i32 %call.i.i.i.i, 65536
  br i1 %cmp10.i.i.i.i, label %if.then12.i.i.i.i, label %if.else26.i.i.i.i

if.then12.i.i.i.i:                                ; preds = %if.else9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr13.i.i.i.i = lshr i32 %call.i.i.i.i, 12
  %124 = trunc i32 %shr13.i.i.i.i to i8
  %conv15.i.i.i.i = or i8 %124, -32
  %125 = ptrtoint ptr %bp.060.i.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv15.i.i.i.i, ptr %bp.060.i.i.i, align 1
  %shr17.i.i.i.i = lshr i32 %call.i.i.i.i, 6
  %126 = trunc i32 %shr17.i.i.i.i to i8
  %127 = and i8 %126, 63
  %conv20.i.i.i.i = or i8 %127, -128
  %arrayidx21.i.i.i.i = getelementptr i8, ptr %bp.060.i.i.i, i32 1
  %128 = ptrtoint ptr %arrayidx21.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv20.i.i.i.i, ptr %arrayidx21.i.i.i.i, align 1
  %129 = trunc i32 %call.i.i.i.i to i8
  %130 = and i8 %129, 63
  %conv24.i.i.i.i = or i8 %130, -128
  %arrayidx25.i.i.i.i = getelementptr i8, ptr %bp.060.i.i.i, i32 2
  %131 = ptrtoint ptr %arrayidx25.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv24.i.i.i.i, ptr %arrayidx25.i.i.i.i, align 1
  br label %store_utf8.exit.i.i.i

if.else26.i.i.i.i:                                ; preds = %if.else9.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1114112, i32 %call.i.i.i.i)
  %cmp27.i.i.i.i = icmp ult i32 %call.i.i.i.i, 1114112
  br i1 %cmp27.i.i.i.i, label %if.then29.i.i.i.i, label %if.else48.i.i.i.i

if.then29.i.i.i.i:                                ; preds = %if.else26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr30.i.i.i.i = lshr i32 %call.i.i.i.i, 18
  %132 = trunc i32 %shr30.i.i.i.i to i8
  %conv32.i.i.i.i = or i8 %132, -16
  %133 = ptrtoint ptr %bp.060.i.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv32.i.i.i.i, ptr %bp.060.i.i.i, align 1
  %shr34.i.i.i.i = lshr i32 %call.i.i.i.i, 12
  %134 = trunc i32 %shr34.i.i.i.i to i8
  %135 = and i8 %134, 63
  %conv37.i.i.i.i = or i8 %135, -128
  %arrayidx38.i.i.i.i = getelementptr i8, ptr %bp.060.i.i.i, i32 1
  %136 = ptrtoint ptr %arrayidx38.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv37.i.i.i.i, ptr %arrayidx38.i.i.i.i, align 1
  %shr39.i.i.i.i = lshr i32 %call.i.i.i.i, 6
  %137 = trunc i32 %shr39.i.i.i.i to i8
  %138 = and i8 %137, 63
  %conv42.i.i.i.i = or i8 %138, -128
  %arrayidx43.i.i.i.i = getelementptr i8, ptr %bp.060.i.i.i, i32 2
  %139 = ptrtoint ptr %arrayidx43.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv42.i.i.i.i, ptr %arrayidx43.i.i.i.i, align 1
  %140 = trunc i32 %call.i.i.i.i to i8
  %141 = and i8 %140, 63
  %conv46.i.i.i.i = or i8 %141, -128
  %arrayidx47.i.i.i.i = getelementptr i8, ptr %bp.060.i.i.i, i32 3
  %142 = ptrtoint ptr %arrayidx47.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv46.i.i.i.i, ptr %arrayidx47.i.i.i.i, align 1
  br label %store_utf8.exit.i.i.i

if.else48.i.i.i.i:                                ; preds = %if.else26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %bp.060.i.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -17, ptr %bp.060.i.i.i, align 1
  %arrayidx50.i.i.i.i = getelementptr i8, ptr %bp.060.i.i.i, i32 1
  %144 = ptrtoint ptr %arrayidx50.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 -65, ptr %arrayidx50.i.i.i.i, align 1
  %arrayidx51.i.i.i.i = getelementptr i8, ptr %bp.060.i.i.i, i32 2
  %145 = ptrtoint ptr %arrayidx51.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 -67, ptr %arrayidx51.i.i.i.i, align 1
  br label %store_utf8.exit.i.i.i

store_utf8.exit.i.i.i:                            ; preds = %if.else48.i.i.i.i, %if.then29.i.i.i.i, %if.then12.i.i.i.i, %if.then3.i.i.i.i, %if.then.i48.i.i.i
  %retval.0.i49.i.i.i = phi i32 [ 1, %if.then.i48.i.i.i ], [ 2, %if.then3.i.i.i.i ], [ 3, %if.then12.i.i.i.i ], [ 4, %if.then29.i.i.i.i ], [ 3, %if.else48.i.i.i.i ]
  %add.ptr.i.i.i = getelementptr i8, ptr %bp.060.i.i.i, i32 %retval.0.i49.i.i.i
  br label %if.end8.i.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i.i.i = tail call zeroext i16 @screen_glyph(ptr noundef %117, i32 noundef %i.063.i.i.i) #8
  %conv.i.i.i.i = zext i16 %call1.i.i.i.i to i32
  %call2.i.i.i.i = tail call zeroext i16 @inverse_translate(ptr noundef %117, i32 noundef %conv.i.i.i.i, i32 noundef 0) #8
  %conv3.i.i.i.i = zext i16 %call2.i.i.i.i to i32
  %conv.i306.i.i = trunc i16 %call2.i.i.i.i to i8
  %incdec.ptr.i.i.i = getelementptr i8, ptr %bp.060.i.i.i, i32 1
  %146 = ptrtoint ptr %bp.060.i.i.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv.i306.i.i, ptr %bp.060.i.i.i, align 1
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.else.i.i.i, %store_utf8.exit.i.i.i
  %retval.0.i4657.i.i.i = phi i32 [ %call.i.i.i.i, %store_utf8.exit.i.i.i ], [ %conv3.i.i.i.i, %if.else.i.i.i ]
  %bp.1.i.i.i = phi ptr [ %add.ptr.i.i.i, %store_utf8.exit.i.i.i ], [ %incdec.ptr.i.i.i, %if.else.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %retval.0.i4657.i.i.i)
  %cmp9.i.i.i = icmp eq i32 %retval.0.i4657.i.i.i, 32
  %spec.select.i.i.i = select i1 %cmp9.i.i.i, ptr %obp.062.i.i.i, ptr %bp.1.i.i.i
  %add13.i.i.i = add i32 %i.063.i.i.i, 2
  %147 = ptrtoint ptr %vc_size_row.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %vc_size_row.i, align 4
  %rem.i307.i.i = urem i32 %add13.i.i.i, %148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i307.i.i)
  %tobool14.not.i.i.i = icmp eq i32 %rem.i307.i.i, 0
  br i1 %tobool14.not.i.i.i, label %if.then15.i.i.i, label %if.end8.i.i.i.if.end21.i.i.i_crit_edge

if.end8.i.i.i.if.end21.i.i.i_crit_edge:           ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i.i

if.then15.i.i.i:                                  ; preds = %if.end8.i.i.i
  %cmp16.not.i.i.i = icmp eq ptr %spec.select.i.i.i, %bp.1.i.i.i
  br i1 %cmp16.not.i.i.i, label %if.then15.i.i.i.if.end21.i.i.i_crit_edge, label %if.then18.i.i.i

if.then15.i.i.i.if.end21.i.i.i_crit_edge:         ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i.i

if.then18.i.i.i:                                  ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr19.i.i.i = getelementptr i8, ptr %spec.select.i.i.i, i32 1
  %149 = ptrtoint ptr %spec.select.i.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 13, ptr %spec.select.i.i.i, align 1
  br label %if.end21.i.i.i

if.end21.i.i.i:                                   ; preds = %if.then18.i.i.i, %if.then15.i.i.i.if.end21.i.i.i_crit_edge, %if.end8.i.i.i.if.end21.i.i.i_crit_edge
  %bp.3.i.i.i = phi ptr [ %bp.1.i.i.i, %if.end8.i.i.i.if.end21.i.i.i_crit_edge ], [ %incdec.ptr19.i.i.i, %if.then18.i.i.i ], [ %bp.1.i.i.i, %if.then15.i.i.i.if.end21.i.i.i_crit_edge ]
  %obp.2.i.i.i = phi ptr [ %spec.select.i.i.i, %if.end8.i.i.i.if.end21.i.i.i_crit_edge ], [ %incdec.ptr19.i.i.i, %if.then18.i.i.i ], [ %bp.1.i.i.i, %if.then15.i.i.i.if.end21.i.i.i_crit_edge ]
  %150 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  %cmp.not.i308.i.i = icmp ugt i32 %add13.i.i.i, %150
  br i1 %cmp.not.i308.i.i, label %if.end21.i.i.i.for.end.i.i.i_crit_edge, label %if.end21.i.i.i.for.body.i.i.i_crit_edge

if.end21.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

if.end21.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %if.end21.i.i.i.for.end.i.i.i_crit_edge, %if.end.i305.i.i.for.end.i.i.i_crit_edge
  %bp.0.lcssa.i.i.i = phi ptr [ %call8.i.i.i.i, %if.end.i305.i.i.for.end.i.i.i_crit_edge ], [ %bp.3.i.i.i, %if.end21.i.i.i.for.end.i.i.i_crit_edge ]
  %151 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %bp.0.lcssa.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %151 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  store i32 %sub.ptr.sub.i.i.i, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 3), align 4
  br label %vc_selection.exit

vc_selection.exit:                                ; preds = %for.end.i.i.i, %if.then.i.i.i.i, %do.end.i.i.i.vc_selection.exit_crit_edge, %if.then99.i.i.vc_selection.exit_crit_edge, %sw.bb59.i.i, %if.end101.i.vc_selection.exit_crit_edge, %if.then73.i, %if.then.i.i, %if.then.i.vc_selection.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then73.i ], [ 0, %if.then.i.vc_selection.exit_crit_edge ], [ 0, %if.then.i.i ], [ 0, %sw.bb59.i.i ], [ -22, %if.end101.i.vc_selection.exit_crit_edge ], [ 0, %if.then99.i.i.vc_selection.exit_crit_edge ], [ 0, %for.end.i.i.i ], [ -12, %do.end.i.i.i.vc_selection.exit_crit_edge ], [ -12, %if.then.i.i.i.i ]
  tail call void @console_unlock() #8
  tail call void @mutex_unlock(ptr noundef nonnull @vc_sel) #8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @paste_selection(ptr noundef %tty) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !32) #8
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @default_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  tail call void @console_lock() #8
  tail call void @poke_blanked_console() #8
  tail call void @console_unlock() #8
  %call2 = tail call ptr @tty_ldisc_ref_wait(ptr noundef %tty) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @tty_buffer_lock_exclusive(ptr noundef %1) #8
  %paste_wait = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 36
  call void @add_wait_queue(ptr noundef %paste_wait, ptr noundef nonnull %wait) #8
  call void @mutex_lock_nested(ptr noundef nonnull @vc_sel, i32 noundef 0) #8
  %15 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 4
  %tobool3.not248253 = icmp eq ptr %15, null
  br i1 %tobool3.not248253, label %if.end.while.end_crit_edge, label %land.rhs.lr.ph.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.lr.ph.lr.ph:                             ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %__here129.land.rhs.lr.ph_crit_edge, %land.rhs.lr.ph.lr.ph
  %pasted.0.ph254 = phi i32 [ 0, %land.rhs.lr.ph.lr.ph ], [ %add, %__here129.land.rhs.lr.ph_crit_edge ]
  br label %land.rhs

land.rhs:                                         ; preds = %if.then77.land.rhs_crit_edge, %land.rhs.lr.ph
  %16 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %pasted.0.ph254)
  %cmp = icmp ugt i32 %16, %pasted.0.ph254
  br i1 %cmp, label %__here, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

__here:                                           ; preds = %land.rhs
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 212
  %19 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 ptrtoint (ptr blockaddress(@paste_selection, %__here) to i32), ptr %task_state_change, align 4
  %20 = load ptr, ptr %task, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %20, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stack.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %__here.while.end_crit_edge, !prof !43

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

signal_pending.exit:                              ; preds = %__here
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %25, align 4
  %and1.i.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool73.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool73.not, label %if.end75, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end75:                                         ; preds = %signal_pending.exit
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %__here129, label %if.then77

if.then77:                                        ; preds = %if.end75
  call void @mutex_unlock(ptr noundef nonnull @vc_sel) #8
  call void @schedule() #8
  call void @mutex_lock_nested(ptr noundef nonnull @vc_sel, i32 noundef 0) #8
  %33 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 4
  %tobool3.not = icmp eq ptr %33, null
  br i1 %tobool3.not, label %if.then77.while.end_crit_edge, label %if.then77.land.rhs_crit_edge

if.then77.land.rhs_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

if.then77.while.end_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

__here129:                                        ; preds = %if.end75
  %task_state_change133 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 212
  %34 = ptrtoint ptr %task_state_change133 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 ptrtoint (ptr blockaddress(@paste_selection, %__here129) to i32), ptr %task_state_change133, align 4
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 0, ptr %36, align 128
  %38 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 3), align 4
  %sub = sub i32 %38, %pasted.0.ph254
  %39 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 4
  %add.ptr = getelementptr i8, ptr %39, i32 %pasted.0.ph254
  %call150 = call i32 @tty_ldisc_receive_buf(ptr noundef nonnull %call2, ptr noundef %add.ptr, ptr noundef null, i32 noundef %sub) #8
  %add = add i32 %call150, %pasted.0.ph254
  %40 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 4
  %tobool3.not248 = icmp eq ptr %40, null
  br i1 %tobool3.not248, label %__here129.while.end_crit_edge, label %__here129.land.rhs.lr.ph_crit_edge

__here129.land.rhs.lr.ph_crit_edge:               ; preds = %__here129
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.lr.ph

__here129.while.end_crit_edge:                    ; preds = %__here129
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %__here129.while.end_crit_edge, %if.then77.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %__here.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end.while.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.while.end_crit_edge ], [ -4, %__here.while.end_crit_edge ], [ -4, %signal_pending.exit.while.end_crit_edge ], [ 0, %if.then77.while.end_crit_edge ], [ 0, %land.rhs.while.end_crit_edge ], [ 0, %__here129.while.end_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @vc_sel) #8
  call void @remove_wait_queue(ptr noundef %paste_wait, ptr noundef nonnull %wait) #8
  br label %__here202

__here202:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %task_state_change206 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 212
  %43 = ptrtoint ptr %task_state_change206 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 ptrtoint (ptr blockaddress(@paste_selection, %__here202) to i32), ptr %task_state_change206, align 4
  %44 = load ptr, ptr %task, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 0, ptr %44, align 128
  call void @tty_buffer_unlock_exclusive(ptr noundef %1) #8
  call void @tty_ldisc_deref(ptr noundef nonnull %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %__here202, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %__here202 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @poke_blanked_console() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_ldisc_ref_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_lock_exclusive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_ldisc_receive_buf(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_unlock_exclusive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_deref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complement_pos(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @invert_screen(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mouse_reporting() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mouse_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdgkbmode(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @screen_glyph_unicode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @inverse_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @screen_glyph(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !20, !21, !23, !25, !27, !29, !30, !31}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__ksymtab_clear_selection, !1, !"__ksymtab_clear_selection", i1 false, i1 false}
!1 = !{!"../drivers/tty/vt/selection.c", i32 88, i32 1}
!2 = !{ptr @__ksymtab_set_selection_kernel, !3, !"__ksymtab_set_selection_kernel", i1 false, i1 false}
!3 = !{!"../drivers/tty/vt/selection.c", i32 365, i32 1}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/tty/vt/selection.c", i32 395, i32 3}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/tty/vt/selection.c", i32 406, i32 3}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/tty/vt/selection.c", i32 414, i32 2}
!11 = !{ptr @__ksymtab_paste_selection, !12, !"__ksymtab_paste_selection", i1 false, i1 false}
!12 = !{!"../drivers/tty/vt/selection.c", i32 420, i32 1}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/tty/vt/selection.c", i32 47, i32 10}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vc_sel, !17, !"vc_sel", i1 false, i1 false}
!17 = !{!"../drivers/tty/vt/selection.c", i32 46, i32 3}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!20 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!25 = !{ptr @inwordLut, !26, !"inwordLut", i1 false, i1 false}
!26 = !{!"../drivers/tty/vt/selection.c", i32 99, i32 12}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/tty/vt/selection.c", i32 198, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @vc_selection_store_chars._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @vc_selection_store_chars._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
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
!42 = !{i64 2152431643, i64 2152431668}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 4927198}
!45 = !{i64 4927395}
!46 = !{i64 2152412628}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{i64 2154324498}
