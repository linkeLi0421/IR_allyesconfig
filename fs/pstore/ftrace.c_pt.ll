; ModuleID = '/llk/IR_all_yes/fs/pstore/ftrace.c_pt.bc'
source_filename = "../fs/pstore/ftrace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pstore_ftrace_combine_log\22, \22a\22\09"
module asm "\09.weak\09__crc_pstore_ftrace_combine_log\09\09\09\09"
module asm "\09.long\09__crc_pstore_ftrace_combine_log\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pstore_ftrace_combine_log:\09\09\09\09\09"
module asm "\09.asciz \09\22pstore_ftrace_combine_log\22\09\09\09\09\09"
module asm "__kstrtabns_pstore_ftrace_combine_log:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pstore_info = type { ptr, ptr, %struct.semaphore, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.pstore_ftrace_record = type { i32, i32, i64 }
%struct.pstore_record = type { ptr, i32, i64, %struct.timespec64, ptr, i32, i32, i32, i32, i32, i8 }
%struct.timespec64 = type { i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_record_ftrace = internal constant [21 x i8] c"pstore.record_ftrace\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@record_ftrace = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_record_ftrace = internal constant %struct.kernel_param { ptr @__param_str_record_ftrace, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @record_ftrace } }, section "__param", align 4
@__UNIQUE_ID_record_ftracetype235 = internal constant [35 x i8] c"pstore.parmtype=record_ftrace:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_record_ftrace236 = internal constant [77 x i8] c"pstore.parm=record_ftrace:enable ftrace recording immediately (default: off)\00", section ".modinfo", align 1
@psinfo = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pstore\00", [25 x i8] zeroinitializer }, align 32
@pstore_ftrace_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"record_ftrace\00", [18 x i8] zeroinitializer }, align 32
@pstore_knob_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @pstore_ftrace_knob_read, ptr @pstore_ftrace_knob_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@pstore_ftrace_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pstore_ftrace_lock, i64 52), ptr getelementptr (i8, ptr @pstore_ftrace_lock, i64 52) }, ptr @pstore_ftrace_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@pstore_ftrace_enabled = internal global { i8, [31 x i8] } zeroinitializer, align 32
@pstore_ftrace_ops = internal global %struct.ftrace_ops { ptr @pstore_ftrace_call, ptr null, i32 0, ptr null, ptr null, %struct.ftrace_ops_hash zeroinitializer, ptr null, %struct.ftrace_ops_hash zeroinitializer, i32 0, i32 0, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@__kstrtab_pstore_ftrace_combine_log = external dso_local constant [0 x i8], align 1
@__kstrtabns_pstore_ftrace_combine_log = external dso_local constant [0 x i8], align 1
@__ksymtab_pstore_ftrace_combine_log = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pstore_ftrace_combine_log to i32), ptr @__kstrtab_pstore_ftrace_combine_log, ptr @__kstrtabns_pstore_ftrace_combine_log }, section "___ksymtab_gpl+pstore_ftrace_combine_log", align 4
@pstore_set_ftrace_enabled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: unable to %sregister ftrace ops: %zd\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pstore_set_ftrace_enabled\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/pstore/ftrace.c\00", [45 x i8] zeroinitializer }, align 32
@pstore_set_ftrace_enabled._entry_ptr = internal global ptr @pstore_set_ftrace_enabled._entry, section ".printk_index", align 4
@.str.5 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"un\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pstore_ftrace_lock.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pstore_ftrace_lock\00", [45 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@pstore_ftrace_stamp = internal global { i64, [24 x i8] } zeroinitializer, align 32
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"record_ftrace\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 127, i32 13 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 137, i32 41 }
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"pstore_ftrace_dir\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 125, i32 23 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 141, i32 22 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"pstore_knob_fops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 119, i32 37 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"pstore_ftrace_lock\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"pstore_ftrace_enabled\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 65, i32 13 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 82, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 64, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"pstore_ftrace_stamp\00", align 1
@___asan_gen_.55 = private constant [22 x i8] c"../fs/pstore/ftrace.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 24, i32 12 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_record_ftrace236, ptr @__UNIQUE_ID_record_ftracetype235, ptr @__ksymtab_pstore_ftrace_combine_log, ptr @__param_record_ftrace, ptr @pstore_set_ftrace_enabled._entry, ptr @pstore_set_ftrace_enabled._entry_ptr, ptr @record_ftrace, ptr @.str, ptr @pstore_ftrace_dir, ptr @.str.1, ptr @pstore_knob_fops, ptr @pstore_ftrace_lock, ptr @pstore_ftrace_enabled, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @pstore_ftrace_stamp], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @record_ftrace to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_ftrace_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_knob_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_ftrace_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_ftrace_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_set_ftrace_enabled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_ftrace_stamp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pstore_register_ftrace() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @psinfo to i32))
  %0 = load ptr, ptr @psinfo, align 4
  %write = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 12
  %1 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #6
  store ptr %call, ptr @pstore_ftrace_dir, align 4
  %3 = load i8, ptr @record_ftrace, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  %4 = load i8, ptr @pstore_ftrace_enabled, align 1, !range !46
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %3)
  %cmp.i = icmp eq i8 %4, %3
  br i1 %cmp.i, label %if.end.pstore_set_ftrace_enabled.exit_crit_edge, label %if.end.i

if.end.pstore_set_ftrace_enabled.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pstore_set_ftrace_enabled.exit

if.end.i:                                         ; preds = %if.end
  br i1 %tobool1.not, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ftrace_ops_set_global_filter(ptr noundef nonnull @pstore_ftrace_ops) #6
  %call.i = tail call i32 @register_ftrace_function(ptr noundef nonnull @pstore_ftrace_ops) #6
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 @unregister_ftrace_function(ptr noundef nonnull @pstore_ftrace_ops) #6
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then5.i
  %ret.0.i = phi i32 [ %call.i, %if.then5.i ], [ %call6.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool8.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool8.not.i, label %if.else13.i, label %do.end.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %cond.i = select i1 %tobool1.not, ptr @.str.6, ptr @.str.5
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond.i, i32 noundef %ret.0.i) #9
  br label %pstore_set_ftrace_enabled.exit

if.else13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  store i8 %3, ptr @pstore_ftrace_enabled, align 1
  br label %pstore_set_ftrace_enabled.exit

pstore_set_ftrace_enabled.exit:                   ; preds = %if.else13.i, %do.end.i, %if.end.pstore_set_ftrace_enabled.exit_crit_edge
  %5 = load ptr, ptr @pstore_ftrace_dir, align 4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 384, ptr noundef %5, ptr noundef null, ptr noundef nonnull @pstore_knob_fops) #6
  br label %return

return:                                           ; preds = %pstore_set_ftrace_enabled.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pstore_unregister_ftrace() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @pstore_ftrace_lock, i32 noundef 0) #6
  %0 = load i8, ptr @pstore_ftrace_enabled, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @unregister_ftrace_function(ptr noundef nonnull @pstore_ftrace_ops) #6
  store i8 0, ptr @pstore_ftrace_enabled, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pstore_ftrace_lock) #6
  %1 = load ptr, ptr @pstore_ftrace_dir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_ftrace_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pstore_ftrace_combine_log(ptr nocapture noundef %dest_log, ptr nocapture noundef %dest_log_size, ptr nocapture noundef readonly %src_log, i32 noundef %src_log_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dest_log_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dest_log_size, align 4
  %sub = and i32 %1, -16
  %sub2 = and i32 %src_log_size, -16
  %add = add i32 %sub, %sub2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem1 = and i32 %src_log_size, 15
  %rem = and i32 %1, 15
  %2 = ptrtoint ptr %dest_log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dest_log, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %rem
  %add.ptr3 = getelementptr i8, ptr %src_log, i32 %rem1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.not91 = icmp eq i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2)
  %cmp4.not92 = icmp eq i32 %sub2, 0
  %or.cond93 = or i1 %cmp.not91, %cmp4.not92
  br i1 %or.cond93, label %if.end.while.cond20.preheader_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.cond20.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond20.preheader

while.cond20.preheader:                           ; preds = %if.end19.while.cond20.preheader_crit_edge, %if.end.while.cond20.preheader_crit_edge
  %dest_size.0.lcssa = phi i32 [ %sub, %if.end.while.cond20.preheader_crit_edge ], [ %dest_size.1, %if.end19.while.cond20.preheader_crit_edge ]
  %src_size.0.lcssa = phi i32 [ %sub2, %if.end.while.cond20.preheader_crit_edge ], [ %src_size.1, %if.end19.while.cond20.preheader_crit_edge ]
  %dest_idx.0.lcssa = phi i32 [ 0, %if.end.while.cond20.preheader_crit_edge ], [ %dest_idx.1, %if.end19.while.cond20.preheader_crit_edge ]
  %src_idx.0.lcssa = phi i32 [ 0, %if.end.while.cond20.preheader_crit_edge ], [ %src_idx.1, %if.end19.while.cond20.preheader_crit_edge ]
  %merged_idx.0.lcssa = phi i32 [ 0, %if.end.while.cond20.preheader_crit_edge ], [ %merged_idx.1, %if.end19.while.cond20.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dest_size.0.lcssa)
  %cmp21.not103 = icmp eq i32 %dest_size.0.lcssa, 0
  br i1 %cmp21.not103, label %while.cond20.preheader.while.cond29.preheader_crit_edge, label %while.cond20.preheader.while.body22_crit_edge

while.cond20.preheader.while.body22_crit_edge:    ; preds = %while.cond20.preheader
  br label %while.body22

while.cond20.preheader.while.cond29.preheader_crit_edge: ; preds = %while.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond29.preheader

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %if.end.while.body_crit_edge
  %merged_idx.098 = phi i32 [ %merged_idx.1, %if.end19.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %src_idx.097 = phi i32 [ %src_idx.1, %if.end19.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %dest_idx.096 = phi i32 [ %dest_idx.1, %if.end19.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %src_size.095 = phi i32 [ %src_size.1, %if.end19.while.body_crit_edge ], [ %sub2, %if.end.while.body_crit_edge ]
  %dest_size.094 = phi i32 [ %dest_size.1, %if.end19.while.body_crit_edge ], [ %sub, %if.end.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.pstore_ftrace_record, ptr %add.ptr, i32 %dest_idx.096
  %ts.i = getelementptr inbounds %struct.pstore_ftrace_record, ptr %arrayidx, i32 0, i32 2
  %4 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ts.i, align 8
  %arrayidx6 = getelementptr %struct.pstore_ftrace_record, ptr %add.ptr3, i32 %src_idx.097
  %ts.i87 = getelementptr inbounds %struct.pstore_ftrace_record, ptr %arrayidx6, i32 0, i32 2
  %6 = ptrtoint ptr %ts.i87 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ts.i87, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp8 = icmp ult i64 %5, %7
  %arrayidx10 = getelementptr %struct.pstore_ftrace_record, ptr %call9.i, i32 %merged_idx.098
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %inc11 = add i32 %dest_idx.096, 1
  %8 = call ptr @memcpy(ptr %arrayidx10, ptr %arrayidx, i32 16)
  %sub13 = add i32 %dest_size.094, -16
  br label %if.end19

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %inc16 = add i32 %src_idx.097, 1
  %9 = call ptr @memcpy(ptr %arrayidx10, ptr %arrayidx6, i32 16)
  %sub18 = add i32 %src_size.095, -16
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then9
  %dest_size.1 = phi i32 [ %sub13, %if.then9 ], [ %dest_size.094, %if.else ]
  %src_size.1 = phi i32 [ %src_size.095, %if.then9 ], [ %sub18, %if.else ]
  %dest_idx.1 = phi i32 [ %inc11, %if.then9 ], [ %dest_idx.096, %if.else ]
  %src_idx.1 = phi i32 [ %src_idx.097, %if.then9 ], [ %inc16, %if.else ]
  %merged_idx.1 = add i32 %merged_idx.098, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dest_size.1)
  %cmp.not = icmp eq i32 %dest_size.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_size.1)
  %cmp4.not = icmp eq i32 %src_size.1, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp4.not
  br i1 %or.cond, label %if.end19.while.cond20.preheader_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end19.while.cond20.preheader_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond20.preheader

while.cond29.preheader:                           ; preds = %while.body22.while.cond29.preheader_crit_edge, %while.cond20.preheader.while.cond29.preheader_crit_edge
  %merged_idx.2.lcssa = phi i32 [ %merged_idx.0.lcssa, %while.cond20.preheader.while.cond29.preheader_crit_edge ], [ %inc23, %while.body22.while.cond29.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_size.0.lcssa)
  %cmp30.not108 = icmp eq i32 %src_size.0.lcssa, 0
  br i1 %cmp30.not108, label %while.cond29.preheader.while.end37_crit_edge, label %while.cond29.preheader.while.body31_crit_edge

while.cond29.preheader.while.body31_crit_edge:    ; preds = %while.cond29.preheader
  br label %while.body31

while.cond29.preheader.while.end37_crit_edge:     ; preds = %while.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end37

while.body22:                                     ; preds = %while.body22.while.body22_crit_edge, %while.cond20.preheader.while.body22_crit_edge
  %merged_idx.2106 = phi i32 [ %inc23, %while.body22.while.body22_crit_edge ], [ %merged_idx.0.lcssa, %while.cond20.preheader.while.body22_crit_edge ]
  %dest_idx.2105 = phi i32 [ %inc25, %while.body22.while.body22_crit_edge ], [ %dest_idx.0.lcssa, %while.cond20.preheader.while.body22_crit_edge ]
  %dest_size.2104 = phi i32 [ %sub27, %while.body22.while.body22_crit_edge ], [ %dest_size.0.lcssa, %while.cond20.preheader.while.body22_crit_edge ]
  %inc23 = add i32 %merged_idx.2106, 1
  %arrayidx24 = getelementptr %struct.pstore_ftrace_record, ptr %call9.i, i32 %merged_idx.2106
  %inc25 = add i32 %dest_idx.2105, 1
  %arrayidx26 = getelementptr %struct.pstore_ftrace_record, ptr %add.ptr, i32 %dest_idx.2105
  %10 = call ptr @memcpy(ptr %arrayidx24, ptr %arrayidx26, i32 16)
  %sub27 = add i32 %dest_size.2104, -16
  %cmp21.not = icmp eq i32 %sub27, 0
  br i1 %cmp21.not, label %while.body22.while.cond29.preheader_crit_edge, label %while.body22.while.body22_crit_edge

while.body22.while.body22_crit_edge:              ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body22

while.body22.while.cond29.preheader_crit_edge:    ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond29.preheader

while.body31:                                     ; preds = %while.body31.while.body31_crit_edge, %while.cond29.preheader.while.body31_crit_edge
  %merged_idx.3111 = phi i32 [ %inc32, %while.body31.while.body31_crit_edge ], [ %merged_idx.2.lcssa, %while.cond29.preheader.while.body31_crit_edge ]
  %src_idx.2110 = phi i32 [ %inc34, %while.body31.while.body31_crit_edge ], [ %src_idx.0.lcssa, %while.cond29.preheader.while.body31_crit_edge ]
  %src_size.2109 = phi i32 [ %sub36, %while.body31.while.body31_crit_edge ], [ %src_size.0.lcssa, %while.cond29.preheader.while.body31_crit_edge ]
  %inc32 = add i32 %merged_idx.3111, 1
  %arrayidx33 = getelementptr %struct.pstore_ftrace_record, ptr %call9.i, i32 %merged_idx.3111
  %inc34 = add i32 %src_idx.2110, 1
  %arrayidx35 = getelementptr %struct.pstore_ftrace_record, ptr %add.ptr3, i32 %src_idx.2110
  %11 = call ptr @memcpy(ptr %arrayidx33, ptr %arrayidx35, i32 16)
  %sub36 = add i32 %src_size.2109, -16
  %cmp30.not = icmp eq i32 %sub36, 0
  br i1 %cmp30.not, label %while.body31.while.end37_crit_edge, label %while.body31.while.body31_crit_edge

while.body31.while.body31_crit_edge:              ; preds = %while.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body31

while.body31.while.end37_crit_edge:               ; preds = %while.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end37

while.end37:                                      ; preds = %while.body31.while.end37_crit_edge, %while.cond29.preheader.while.end37_crit_edge
  %12 = ptrtoint ptr %dest_log to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dest_log, align 4
  tail call void @kfree(ptr noundef %13) #6
  %14 = ptrtoint ptr %dest_log to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i, ptr %dest_log, align 4
  %15 = ptrtoint ptr %dest_log_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %dest_log_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end37 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_ops_set_global_filter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_ftrace_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pstore_ftrace_knob_read(ptr nocapture noundef readnone %f, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %val = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = getelementptr inbounds [2 x i8], ptr %val, i32 0, i32 1
  %1 = load i8, ptr @pstore_ftrace_enabled, align 1, !range !46
  %2 = or i8 %1, 48
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %val, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %0, align 1
  %call = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %val, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pstore_ftrace_knob_write(ptr nocapture noundef readnone %f, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %on = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %on) #6
  %0 = ptrtoint ptr %on to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %on, align 1, !annotation !47
  %call = call i32 @kstrtou8_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 2, ptr noundef nonnull %on) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef nonnull @pstore_ftrace_lock, i32 noundef 0) #6
  %1 = ptrtoint ptr %on to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %on, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1 = icmp ne i8 %2, 0
  %frombool.i = zext i1 %tobool1 to i8
  %3 = load i8, ptr @pstore_ftrace_enabled, align 1, !range !46
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %frombool.i)
  %cmp.i = icmp eq i8 %3, %frombool.i
  br i1 %cmp.i, label %if.end.cleanup.sink.split_crit_edge, label %if.end.i

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end
  br i1 %tobool1, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ftrace_ops_set_global_filter(ptr noundef nonnull @pstore_ftrace_ops) #6
  %call.i = call i32 @register_ftrace_function(ptr noundef nonnull @pstore_ftrace_ops) #6
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 @unregister_ftrace_function(ptr noundef nonnull @pstore_ftrace_ops) #6
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then5.i
  %ret.0.i = phi i32 [ %call.i, %if.then5.i ], [ %call6.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool8.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool8.not.i, label %if.else13.i, label %pstore_set_ftrace_enabled.exit

if.else13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  store i8 %frombool.i, ptr @pstore_ftrace_enabled, align 1
  br label %cleanup.sink.split

pstore_set_ftrace_enabled.exit:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %cond.i = select i1 %tobool1, ptr @.str.5, ptr @.str.6
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond.i, i32 noundef %ret.0.i) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %pstore_set_ftrace_enabled.exit, %if.else13.i, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0.i, %pstore_set_ftrace_enabled.exit ], [ %count, %if.end.cleanup.sink.split_crit_edge ], [ %count, %if.else13.i ]
  call void @mutex_unlock(ptr noundef nonnull @pstore_ftrace_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %on) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pstore_ftrace_call(i32 noundef %ip, i32 noundef %parent_ip, ptr nocapture noundef readnone %op, ptr nocapture noundef readnone %fregs) #0 align 64 {
entry:
  %rec = alloca %struct.pstore_ftrace_record, align 8
  %record = alloca %struct.pstore_record, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec) #6
  %0 = call ptr @memset(ptr %rec, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %record) #6
  %1 = getelementptr inbounds i8, ptr %record, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 56)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @psinfo to i32))
  %3 = load ptr, ptr @psinfo, align 4
  %4 = ptrtoint ptr %record to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %record, align 8
  %type = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %type, align 4
  %buf = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 4
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rec, ptr %buf, align 8
  %size = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 5
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %8 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !48

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = call i32 @llvm.read_register.i32(metadata !36) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i, align 8
  %trace_recursion.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 194
  %13 = ptrtoint ptr %trace_recursion.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %trace_recursion.i.i, align 4
  %15 = call i32 @llvm.read_register.i32(metadata !36) #6
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %18, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.i.i.i = icmp ne i32 %and.i.i.i.i, 0
  %and3.i.i.i.i = and i32 %18, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i.i)
  %tobool4.i.not.i.i.i = icmp eq i32 %and3.i.i.i.i, 0
  %conv9.i.neg.i.i.i = sext i1 %tobool.i.i.i.i to i32
  %and12.i.i.i.i = and i32 %18, 16711936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i.i.i)
  %tobool13.i.i.i.i = icmp ne i32 %and12.i.i.i.i, 0
  %lnot.ext17.i.neg.i.i.i = sext i1 %tobool13.i.i.i.i to i32
  %add10.i.neg.i.i.i = select i1 %tobool4.i.not.i.i.i, i32 3, i32 2
  %add19.i.neg.i.i.i = add nsw i32 %add10.i.neg.i.i.i, %conv9.i.neg.i.i.i
  %sub.i.i.i = add nsw i32 %add19.i.neg.i.i.i, %lnot.ext17.i.neg.i.i.i
  %shl.i.i = shl nuw nsw i32 1, %sub.i.i.i
  %and.i.i = and i32 %shl.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.do.body5_crit_edge, label %if.then.i.i, !prof !48

if.end.do.body5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

if.then.i.i:                                      ; preds = %if.end
  %and6.i.i = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then.i.i.do.body5_crit_edge, label %do.body9.i.i

if.then.i.i.do.body5_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

do.body9.i.i:                                     ; preds = %if.then.i.i
  %and13.i.i = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %do.body16.i.i, label %do.body9.i.i.cleanup_crit_edge

do.body9.i.i.cleanup_crit_edge:                   ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body16.i.i:                                    ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i = or i32 %14, 65536
  %19 = ptrtoint ptr %trace_recursion.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i.i, ptr %trace_recursion.i.i, align 4
  call void @ftrace_record_recursion(i32 noundef %ip, i32 noundef %parent_ip) #6
  br label %cleanup.sink.split

do.body5:                                         ; preds = %if.then.i.i.do.body5_crit_edge, %if.end.do.body5_crit_edge
  %bit.0.i.i = phi i32 [ %sub.i.i.i, %if.end.do.body5_crit_edge ], [ 4, %if.then.i.i.do.body5_crit_edge ]
  %shl33.i.i = shl nuw nsw i32 1, %bit.0.i.i
  %or34.i.i = or i32 %shl33.i.i, %14
  %20 = ptrtoint ptr %trace_recursion.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or34.i.i, ptr %trace_recursion.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !49
  %21 = call i32 @llvm.read_register.i32(metadata !36) #6
  %and.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !50
  %25 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !51
  %and.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not = icmp eq i32 %and.i, 0
  br i1 %tobool15.not, label %if.then16, label %do.body5.do.end19_crit_edge

do.body5.do.end19_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

if.then16:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  call void @trace_hardirqs_off() #6
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body5.do.end19_crit_edge
  %26 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %ip, ptr %rec, align 8
  %parent_ip21 = getelementptr inbounds %struct.pstore_ftrace_record, ptr %rec, i32 0, i32 1
  %27 = ptrtoint ptr %parent_ip21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %parent_ip, ptr %parent_ip21, align 4
  %28 = load i64, ptr @pstore_ftrace_stamp, align 8
  %inc = add i64 %28, 1
  store i64 %inc, ptr @pstore_ftrace_stamp, align 8
  %ts.i = getelementptr inbounds %struct.pstore_ftrace_record, ptr %rec, i32 0, i32 2
  %29 = ptrtoint ptr %ts.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %ts.i, align 8
  %30 = call i32 @llvm.read_register.i32(metadata !36) #6
  %and.i76 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i76 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu, align 4
  %or.i = or i32 %33, %ip
  %34 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i, ptr %rec, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @psinfo to i32))
  %35 = load ptr, ptr @psinfo, align 4
  %write = getelementptr inbounds %struct.pstore_info, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write, align 4
  %call23 = call i32 %37(ptr noundef nonnull %record) #6
  br i1 %tobool15.not, label %if.then33, label %do.end19.do.body35_crit_edge

do.end19.do.body35_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35

if.then33:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #8
  call void @trace_hardirqs_on() #6
  br label %do.body35

do.body35:                                        ; preds = %if.then33, %do.end19.do.body35_crit_edge
  %38 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !52
  %and.i.i78 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i78)
  %tobool43.not = icmp eq i32 %and.i.i78, 0
  br i1 %tobool43.not, label %if.then52, label %do.body35.do.end55_crit_edge, !prof !53

do.body35.do.end55_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end55

if.then52:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %do.body35.do.end55_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #6, !srcloc !54
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !55
  %39 = call i32 @llvm.read_register.i32(metadata !36) #6
  %and.i.i.i.i.i68 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i68 to ptr
  %preempt_count.i.i.i.i69 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i69, align 4
  %sub.i.i.i70 = add i32 %42, -1
  store volatile i32 %sub.i.i.i70, ptr %preempt_count.i.i.i.i69, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !56
  %neg.i.i = xor i32 %shl33.i.i, -1
  %43 = call i32 @llvm.read_register.i32(metadata !36) #6
  %and.i.i.i72 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i72 to ptr
  %task.i.i73 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end55, %do.body16.i.i
  %task.i.i73.sink = phi ptr [ %task.i.i73, %do.end55 ], [ %task.i.i, %do.body16.i.i ]
  %.sink81 = phi i32 [ %neg.i.i, %do.end55 ], [ -65537, %do.body16.i.i ]
  %45 = ptrtoint ptr %task.i.i73.sink to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i.i73.sink, align 8
  %trace_recursion.i.i74 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 194
  %47 = ptrtoint ptr %trace_recursion.i.i74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %trace_recursion.i.i74, align 4
  %and26.i.i = and i32 %48, %.sink81
  store i32 %and26.i.i, ptr %trace_recursion.i.i74, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body9.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %record) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_record_recursion(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__param_record_ftrace, !1, !"__param_record_ftrace", i1 false, i1 false}
!1 = !{!"../fs/pstore/ftrace.c", i32 128, i32 1}
!2 = !{ptr @__UNIQUE_ID_record_ftracetype235, !1, !"__UNIQUE_ID_record_ftracetype235", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_record_ftrace236, !4, !"__UNIQUE_ID_record_ftrace236", i1 false, i1 false}
!4 = !{!"../fs/pstore/ftrace.c", i32 129, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/pstore/ftrace.c", i32 137, i32 41}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/pstore/ftrace.c", i32 141, i32 22}
!9 = !{ptr @__ksymtab_pstore_ftrace_combine_log, !10, !"__ksymtab_pstore_ftrace_combine_log", i1 false, i1 false}
!10 = !{!"../fs/pstore/ftrace.c", i32 208, i32 1}
!11 = !{ptr @pstore_ftrace_enabled, !12, !"pstore_ftrace_enabled", i1 false, i1 false}
!12 = !{!"../fs/pstore/ftrace.c", i32 65, i32 13}
!13 = !{ptr @pstore_ftrace_dir, !14, !"pstore_ftrace_dir", i1 false, i1 false}
!14 = !{!"../fs/pstore/ftrace.c", i32 125, i32 23}
!15 = !{ptr @record_ftrace, !16, !"record_ftrace", i1 false, i1 false}
!16 = !{!"../fs/pstore/ftrace.c", i32 127, i32 13}
!17 = !{ptr @__param_str_record_ftrace, !1, !"__param_str_record_ftrace", i1 false, i1 false}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/pstore/ftrace.c", i32 82, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pstore_set_ftrace_enabled._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @pstore_set_ftrace_enabled._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pstore_knob_fops, !27, !"pstore_knob_fops", i1 false, i1 false}
!27 = !{!"../fs/pstore/ftrace.c", i32 119, i32 37}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/pstore/ftrace.c", i32 64, i32 8}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @pstore_ftrace_lock, !29, !"pstore_ftrace_lock", i1 false, i1 false}
!32 = !{ptr @pstore_ftrace_ops, !33, !"pstore_ftrace_ops", i1 false, i1 false}
!33 = !{!"../fs/pstore/ftrace.c", i32 60, i32 26}
!34 = !{ptr @pstore_ftrace_stamp, !35, !"pstore_ftrace_stamp", i1 false, i1 false}
!35 = !{!"../fs/pstore/ftrace.c", i32 24, i32 12}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i8 0, i8 2}
!47 = !{!"auto-init"}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2152612407}
!50 = !{i64 2152612529}
!51 = !{i64 605179, i64 605240}
!52 = !{i64 607911}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 608196}
!55 = !{i64 2152612839}
!56 = !{i64 2152612900}
