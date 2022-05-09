; ModuleID = '/llk/IR_all_yes/kernel/debug/kdb/kdb_main.c_pt.bc'
source_filename = "../kernel/debug/kdb/kdb_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+kdb_grepping_flag\22, \22a\22\09"
module asm "\09.weak\09__crc_kdb_grepping_flag\09\09\09\09"
module asm "\09.long\09__crc_kdb_grepping_flag\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kdb_grepping_flag:\09\09\09\09\09"
module asm "\09.asciz \09\22kdb_grepping_flag\22\09\09\09\09\09"
module asm "__kstrtabns_kdb_grepping_flag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kdb_register\22, \22a\22\09"
module asm "\09.weak\09__crc_kdb_register\09\09\09\09"
module asm "\09.long\09__crc_kdb_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kdb_register:\09\09\09\09\09"
module asm "\09.asciz \09\22kdb_register\22\09\09\09\09\09"
module asm "__kstrtabns_kdb_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kdb_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_kdb_unregister\09\09\09\09"
module asm "\09.long\09__crc_kdb_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kdb_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22kdb_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_kdb_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.debuggerinfo_struct = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct._kdbmsg = type { i32, ptr }
%struct.kgdb_arch = type { [4 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._kdbtab = type { ptr, ptr, ptr, ptr, i16, i32, %struct.list_head }
%struct.dbg_reg_def_t = type { ptr, i32, i32 }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.timezone = type { i32, i32 }
%struct.__ksymtab = type { i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.kdb_macro = type { %struct._kdbtab, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.kdb_macro_statement = type { ptr, %struct.list_head }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.module_use = type { %struct.list_head, %struct.list_head, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.kmsg_dump_iter = type { i64, i64 }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%union.anon.71 = type { i64 }

@__param_str_cmd_enable = internal constant [15 x i8] c"kdb.cmd_enable\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@kdb_cmd_enabled = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_cmd_enable = internal constant %struct.kernel_param { ptr @__param_str_cmd_enable, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.65 { ptr @kdb_cmd_enabled } }, section "__param", align 4
@__UNIQUE_ID_cmd_enabletype245 = internal constant [33 x i8] c"kdb_main.parmtype=cmd_enable:int\00", section ".modinfo", align 1
@kdb_grepping_flag = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_kdb_grepping_flag = external dso_local constant [0 x i8], align 1
@__kstrtabns_kdb_grepping_flag = external dso_local constant [0 x i8], align 1
@__ksymtab_kdb_grepping_flag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kdb_grepping_flag to i32), ptr @__kstrtab_kdb_grepping_flag, ptr @__kstrtabns_kdb_grepping_flag }, section "___ksymtab+kdb_grepping_flag", align 4
@kdb_initial_cpu = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@kdb_nextline = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PROMPT\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"KDBDEBUG\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kdb: illegal debug flags '%s'\0A\00", [33 x i8] zeroinitializer }, align 32
@kdb_flags = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"+-\00", [29 x i8] zeroinitializer }, align 32
@kdb_parse.argv = internal global { [20 x ptr], [48 x i8] } zeroinitializer, align 32
@kdb_parse.argc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kdb_parse.cbuf = internal global { [202 x i8], [54 x i8] } zeroinitializer, align 32
@kdb_state = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@defcmd_in_progress = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"kdb_parse: command buffer overflow, command ignored\0A%s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"kdb_parse: too many arguments, command ignored\0A%s\0A\00", [45 x i8] zeroinitializer }, align 32
@kdb_cmds_head = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @kdb_cmds_head, ptr @kdb_cmds_head }, [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s = \00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"state: %s cpu %d value %d initial %d state %x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kdb_main_loop 1\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kdb_main_loop 2\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kdb_main_loop 3\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Entering please attach debugger or use $D#44+ or $3#33\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\0AUnexpected kdb_local return code %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kdb_main_loop 4\00", [16 x i8] zeroinitializer }, align 32
@__param_str_enable_nmi = internal constant [15 x i8] c"kdb.enable_nmi\00", align 1
@kdb_param_ops_enable_nmi = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @kdb_param_enable_nmi, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_enable_nmi = internal constant %struct.kernel_param { ptr @__param_str_enable_nmi, ptr null, ptr @kdb_param_ops_enable_nmi, i16 384, i8 -1, i8 0, %union.anon.65 zeroinitializer }, section "__param", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@init_task = external dso_local global %struct.task_struct, align 128
@kdb_ps_suppressed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kernel/debug/kdb/kdb_main.c\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ims\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%d idle process%s (state -)%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"es\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" and \00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%d sleeping system daemon (state [ims]) process%s\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c" suppressed,\0Ause 'ps A' to see all.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"0x%px %8d %8d  %d %4d   %c  0x%px %c%s\0A\00", [56 x i8] zeroinitializer }, align 32
@kgdb_info = external dso_local local_unnamed_addr global [0 x %struct.debuggerinfo_struct], align 4
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"  Error: no saved data for this cpu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"  Error: does not match running process table (0x%px)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Duplicate kdb cmd: %s, func %p help %s\0A\00", [56 x i8] zeroinitializer }, align 32
@__kstrtab_kdb_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_kdb_register = external dso_local constant [0 x i8], align 1
@__ksymtab_kdb_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kdb_register to i32), ptr @__kstrtab_kdb_register, ptr @__kstrtabns_kdb_register }, section "___ksymtab_gpl+kdb_register", align 4
@__kstrtab_kdb_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_kdb_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_kdb_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kdb_unregister to i32), ptr @__kstrtab_kdb_unregister, ptr @__kstrtabns_kdb_unregister }, section "___ksymtab_gpl+kdb_unregister", align 4
@kdb_init.kdb_init_lvl = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kdb_grep_string = dso_local global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@kdb_grep_leading = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@kdb_grep_trailing = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@kdb_current_task = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@kdb_current_regs = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@kdb_diemsg = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PROMPT=[%d]kdb> \00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MOREPROMPT=more> \00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RADIX=16\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MDCOUNT=8\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BYTESPERWORD=4\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DTABCOUNT=30\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NOSECT=1\00", [23 x i8] zeroinitializer }, align 32
@__env = internal unnamed_addr global <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x ptr] }> <{ ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, [24 x ptr] zeroinitializer }>, align 4
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s=%s\00", [26 x i8] zeroinitializer }, align 32
@kdballocenv.envbuffer = internal global { [512 x i8], [128 x i8] } zeroinitializer, align 32
@kdballocenv.envbufsize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"No current kdb registers.  You may need to select another task\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"grep \00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid 'pipe', see grephelp\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid quoted string, see grephelp\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"search string too long\0A\00", [40 x i8] zeroinitializer }, align 32
@kdb_macro = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"endefcmd\00", [23 x i8] zeroinitializer }, align 32
@kgdb_active = external dso_local global %struct.atomic_t, align 4
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Could not allocate new kdb macro command: %s\0A\00", [50 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kdb_local 1\00", [20 x i8] zeroinitializer }, align 32
@kdb_go_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\0AEntering kdb (current=0x%px, pid %d) \00", [57 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"on processor %d \00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\0AEntering kdb (0x%px, pid %d) \00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"due to Debug @ 0x%lx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kdb_local 4\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"kdb: Bad result from kdba_db_trap: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"due to Keyboard Entry\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"due to KDB_ENTER()\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"due to cpu switch\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Oops: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"due to oops @ 0x%lx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"due to System NonMaskable Interrupt\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"due to NonMaskable Interrupt @ 0x%lx\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"due to %s @ 0x%lx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Breakpoint\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SS trap\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"kdb: error return from kdba_bp_trap: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kdb_local 6\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"due to Recursion @ 0x%lx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"kdb: unexpected reason code: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kdb_local 8\00", [20 x i8] zeroinitializer }, align 32
@cmd_cur = internal global { [200 x i8], [56 x i8] } zeroinitializer, align 32
@cmd_hist = internal global { [32 x [200 x i8]], [1600 x i8] } zeroinitializer, align 32
@cmd_head = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kdb_prompt_str = external dso_local global [0 x i8], align 1
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"[defcmd]\00", [23 x i8] zeroinitializer }, align 32
@cmdptr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cmd_tail = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unknown kdb command: '%s'\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kdb_local 9\00", [20 x i8] zeroinitializer }, align 32
@console_printk = external dso_local local_unnamed_addr global [0 x i32], align 4
@kdb_trap_printk = external dso_local local_unnamed_addr global i32, align 4
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no error detected (diagnostic is %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@kdbmsgs = internal constant { [22 x %struct._kdbmsg], [48 x i8] } { [22 x %struct._kdbmsg] [%struct._kdbmsg { i32 -1, ptr @.str.73 }, %struct._kdbmsg { i32 -2, ptr @.str.74 }, %struct._kdbmsg { i32 -3, ptr @.str.75 }, %struct._kdbmsg { i32 -4, ptr @.str.76 }, %struct._kdbmsg { i32 -5, ptr @.str.77 }, %struct._kdbmsg { i32 -6, ptr @.str.78 }, %struct._kdbmsg { i32 -7, ptr @.str.79 }, %struct._kdbmsg { i32 -8, ptr @.str.80 }, %struct._kdbmsg { i32 -9, ptr @.str.81 }, %struct._kdbmsg { i32 -10, ptr @.str.82 }, %struct._kdbmsg { i32 -11, ptr @.str.83 }, %struct._kdbmsg { i32 -12, ptr @.str.84 }, %struct._kdbmsg { i32 -13, ptr @.str.85 }, %struct._kdbmsg { i32 -14, ptr @.str.86 }, %struct._kdbmsg { i32 -15, ptr @.str.87 }, %struct._kdbmsg { i32 -16, ptr @.str.88 }, %struct._kdbmsg { i32 -17, ptr @.str.89 }, %struct._kdbmsg { i32 -18, ptr @.str.90 }, %struct._kdbmsg { i32 -19, ptr @.str.91 }, %struct._kdbmsg { i32 -20, ptr @.str.92 }, %struct._kdbmsg { i32 -21, ptr @.str.93 }, %struct._kdbmsg { i32 -22, ptr @.str.94 }], [48 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"diag: %d: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Unknown diag %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Command Not Found\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Improper argument count, see usage.\00", [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Illegal value for BYTESPERWORD use 1, 2, 4 or 8, 8 is only allowed on 64 bit systems\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Illegal value for RADIX use 8, 10 or 16\00", [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot find environment variable\00", [63 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Environment variable should have value\00", [57 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Command not implemented\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Environment full\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Environment buffer full\00", [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Too many breakpoints defined\00", [35 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"More breakpoints than db registers defined\00", [53 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Duplicate breakpoint address\00", [35 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Breakpoint not found\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Invalid IDMODE\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Illegal numeric value\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid symbolic address format\00", [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid register name\00", [42 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid cpu number\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid length field\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No Breakpoint exists\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid address\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Permission denied\00", [46 x i8] zeroinitializer }, align 32
@kdb_nmi_disabled = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@arch_kgdb_ops = external dso_local local_unnamed_addr constant %struct.kgdb_arch, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@maintab = internal global { [31 x %struct._kdbtab], [224 x i8] } { [31 x %struct._kdbtab] [%struct._kdbtab { ptr @.str.95, ptr @kdb_md, ptr @.str.96, ptr @.str.97, i16 1, i32 1073741826, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.98, ptr @kdb_md, ptr @.str.99, ptr @.str.100, i16 0, i32 1073741826, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.101, ptr @kdb_md, ptr @.str.102, ptr @.str.103, i16 0, i32 1073741826, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.104, ptr @kdb_md, ptr @.str.96, ptr @.str.105, i16 0, i32 1073741826, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.106, ptr @kdb_mm, ptr @.str.107, ptr @.str.108, i16 0, i32 1073741828, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.109, ptr @kdb_go, ptr @.str.110, ptr @.str.111, i16 1, i32 524304, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.112, ptr @kdb_rd, ptr @.str, ptr @.str.113, i16 0, i32 8, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.114, ptr @kdb_rm, ptr @.str.115, ptr @.str.116, i16 0, i32 16, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.117, ptr @kdb_ef, ptr @.str.96, ptr @.str.118, i16 0, i32 2, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.119, ptr @kdb_bt, ptr @.str.110, ptr @.str.120, i16 1, i32 32770, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.121, ptr @kdb_bt, ptr @.str.122, ptr @.str.123, i16 0, i32 32, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.124, ptr @kdb_bt, ptr @.str.125, ptr @.str.126, i16 0, i32 32, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.127, ptr @kdb_bt, ptr @.str, ptr @.str.128, i16 0, i32 32, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.129, ptr @kdb_bt, ptr @.str.96, ptr @.str.130, i16 0, i32 32770, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.131, ptr @kdb_env, ptr @.str, ptr @.str.132, i16 0, i32 512, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.133, ptr @kdb_set, ptr @.str, ptr @.str.134, i16 0, i32 512, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.135, ptr @kdb_help, ptr @.str, ptr @.str.136, i16 1, i32 512, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.137, ptr @kdb_help, ptr @.str, ptr @.str.136, i16 0, i32 512, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.138, ptr @kdb_cpu, ptr @.str.139, ptr @.str.140, i16 0, i32 524288, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.141, ptr @kdb_kgdb, ptr @.str, ptr @.str.142, i16 0, i32 0, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.143, ptr @kdb_ps, ptr @.str.125, ptr @.str.144, i16 0, i32 32, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.145, ptr @kdb_pid, ptr @.str.146, ptr @.str.147, i16 0, i32 32, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.148, ptr @kdb_reboot, ptr @.str, ptr @.str.149, i16 0, i32 256, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.150, ptr @kdb_lsmod, ptr @.str, ptr @.str.151, i16 0, i32 32, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.152, ptr @kdb_sr, ptr @.str.153, ptr @.str.154, i16 0, i32 512, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.155, ptr @kdb_dmesg, ptr @.str.156, ptr @.str.157, i16 0, i32 512, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.158, ptr @kdb_defcmd, ptr @.str.159, ptr @.str.160, i16 0, i32 512, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.161, ptr @kdb_kill, ptr @.str.162, ptr @.str.163, i16 0, i32 128, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.164, ptr @kdb_summary, ptr @.str, ptr @.str.165, i16 4, i32 512, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.166, ptr @kdb_per_cpu, ptr @.str.167, ptr @.str.168, i16 3, i32 2, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.169, ptr @kdb_grep_help, ptr @.str, ptr @.str.170, i16 0, i32 512, %struct.list_head zeroinitializer }], [224 x i8] zeroinitializer }, align 32
@nmicmd = internal global { %struct._kdbtab, [32 x i8] } { %struct._kdbtab { ptr @.str.275, ptr @kdb_disable_nmi, ptr @.str, ptr @.str.276, i16 0, i32 512, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"md\00", [29 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"<vaddr>\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Display Memory Contents, also mdWcN, e.g. md8c1\00", [48 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mdr\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"<vaddr> <bytes>\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Display Raw Memory\00", [45 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mdp\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"<paddr> <bytes>\00", [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Display Physical Memory\00", [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mds\00", [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Display Memory Symbolically\00", [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mm\00", [29 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"<vaddr> <contents>\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Modify Memory Contents\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"go\00", [29 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"[<vaddr>]\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Continue Execution\00", [45 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rd\00", [29 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Display Registers\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rm\00", [29 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"<reg> <contents>\00", [47 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Modify Registers\00", [47 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ef\00", [29 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Display exception frame\00", [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bt\00", [29 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stack traceback\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"btp\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"<pid>\00", [26 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Display stack for process <pid>\00", [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bta\00", [28 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[<state_chars>|A]\00", [46 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Backtrace all processes whose state matches\00", [52 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"btc\00", [28 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Backtrace current process on each cpu\00", [58 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"btt\00", [28 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Backtrace process given its struct task address\00", [48 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"env\00", [28 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Show environment variables\00", [37 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Set environment variables\00", [38 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"help\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Display Help Message\00", [43 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"<cpunum>\00", [23 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Switch to new cpu\00", [46 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kgdb\00", [27 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Enter kgdb mode\00", [16 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ps\00", [29 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Display active task list\00", [39 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"<pidnum>\00", [23 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Switch to another task\00", [41 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reboot\00", [25 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Reboot the machine immediately\00", [33 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lsmod\00", [26 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"List loaded kernel modules\00", [37 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sr\00", [29 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"<key>\00", [26 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Magic SysRq key\00", [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmesg\00", [26 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[lines]\00", [24 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Display syslog buffer\00", [42 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"defcmd\00", [25 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"name \22usage\22 \22help\22\00", [44 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Define a set of commands, down to endefcmd\00", [53 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kill\00", [27 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"<-signal> <pid>\00", [16 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Send a signal to a process\00", [37 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"summary\00", [24 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Summarize the system\00", [43 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"per_cpu\00", [24 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"<sym> [<bytes>] [<cpu>]\00", [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Display per_cpu variables\00", [38 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"grephelp\00", [23 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Display help on | grep\00", [41 x i8] zeroinitializer }, align 32
@kdb_md.last_addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kdb_md.last_radix = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kdb_md.last_bytesperword = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kdb_md.last_repeat = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.171 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MDCOUNT\00", [24 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RADIX\00", [26 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BYTESPERWORD\00", [19 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%%8.8l%c \00", [22 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%%4.4l%c \00", [22 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%%2.2l%c \00", [22 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NOSECT\00", [25 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"0x%08lx-0x%08lx zero suppressed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phys 0x%08lx \00", [18 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%08lx \00", [23 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"                       %s %s 0x%lx 0x%lx 0x%lx\00", [49 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%*s %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%lx = 0x%lx\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"go must execute on the entry cpu, please use \22cpu %d\22 and then execute go\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Catastrophic error detected\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kdb_continue_catastrophic=%d, \00", [33 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"type go a second time if you really want to continue\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"attempting to continue\0A\00", [40 x i8] zeroinitializer }, align 32
@dbg_reg_def = external dso_local local_unnamed_addr global [0 x %struct.dbg_reg_def_t], align 4
@.str.193 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"  \00", [29 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s: %02x\00", [23 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s: %04x\00", [23 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s: %08x\00", [23 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: %016llx\00", [20 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s: ??\00", [25 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"KDBDEBUG=0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%-15.15s %-20.20s %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Command\00", [24 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Usage\00", [26 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Description\00", [20 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"----------------------------------------------------------\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\0A                                    \00", [58 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%-15.15s %-20s%s%s\0A\00", [44 x i8] zeroinitializer }, align 32
@dbg_switch_cpu = external dso_local local_unnamed_addr global i32, align 4
@.str.208 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Currently on cpu %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Available cpus: \00", [47 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-%d\00", [28 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"(%c)\00", [27 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.214 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%-*s      Pid   Parent [*] cpu State %-*s Command\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Task Addr\00", [22 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Thread\00", [25 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PS\00", [29 x i8] zeroinitializer }, align 32
@kdb_ps.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.219 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"R\00", [30 x i8] zeroinitializer }, align 32
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@.str.220 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No task with pid=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"KDB current process is %s(pid=%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Hmm, kdb_reboot did not reboot, spinning here\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Module                  Size  modstruct     Used by\0A\00", [43 x i8] zeroinitializer }, align 32
@kdb_modules = external dso_local local_unnamed_addr global ptr, align 4
@.str.224 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%-20s%8u  0x%px \00", [47 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%4d \00", [27 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" (Unloading)\00", [19 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (Loading)\00", [21 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" (Live)\00", [24 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" 0x%px\00", [25 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" [ \00", [28 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"]\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LOGGING\00", [24 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@__const.kdb_dmesg.setargs = private unnamed_addr constant [3 x ptr] [ptr @.str.133, ptr @.str.233, ptr @.str.234], align 4
@.str.235 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"buffer only contains %d lines, nothing printed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"buffer only contains %d lines, last %d lines printed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"buffer only contains %d lines, first %d lines printed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.*s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"kdb: nested defcmd detected, assuming missing endefcmd\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"defcmd %s \22%s\22 \22%s\22\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"endefcmd\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Command only available during kdb_init()\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Could not allocate new kdb_macro entry for %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"kdb_exec_defcmd: could not find commands for %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[%s]kdb> %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid signal parameter.<-signal>\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Process ID must be large than 0.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"The specified process isn't found.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sysname    %s\0A\00", [17 x i8] zeroinitializer }, align 32
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@.str.251 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"release    %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"version    %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"machine    %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nodename   %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"domainname %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"date       %ptTs tz_minuteswest %d\0A\00", [60 x i8] zeroinitializer }, align 32
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@.str.257 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uptime     \00", [20 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d day%s \00", [22 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%02ld:%02ld\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"load avg   %ld.%02ld %ld.%02ld %ld.%02ld\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\0AMemTotal:       %8lu kB\0AMemFree:        %8lu kB\0ABuffers:        %8lu kB\0A\00", [54 x i8] zeroinitializer }, align 32
@avenrun = external dso_local local_unnamed_addr global [0 x i32], align 4
@nr_threads = external dso_local local_unnamed_addr global i32, align 4
@.str.263 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%%0%dlx \00", [23 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cpu %ld is not online\0A\00", [41 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.265 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%5d 0x%08lx - unable to read, diag=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%5d \00", [27 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Usage of  cmd args | grep pattern:\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"  Any command's output may be filtered through an \00", [45 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"emulated 'pipe'.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"  'grep' is just a key word.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"  The pattern may include a very limited set of metacharacters:\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"   pattern or ^pattern or pattern$ or ^pattern$\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"  And if there are spaces in the pattern, you may quote it:\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"   \22pat tern\22 or \22^pat tern\22 or \22pat tern$\22 or \22^pat tern$\22\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"disable_nmi\00", [20 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Disable NMI entry to KDB\00", [39 x i8] zeroinitializer }, align 32
@kdb_cmds = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.277 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"kdb command %s failed, kdb diag %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Incomplete 'defcmd' set, forcing endefcmd\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 61]
@__sancov_gen_cov_switch_values.279 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 61]
@__sancov_gen_cov_switch_values.280 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.281 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 61]
@__sancov_gen_cov_switch_values.282 = internal global [4 x i64] [i64 2, i64 8, i64 36, i64 37]
@__sancov_gen_cov_switch_values.283 = internal global [4 x i64] [i64 2, i64 8, i64 43, i64 45]
@__sancov_gen_cov_switch_values.284 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.285 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 10, i64 35, i64 124]
@__sancov_gen_cov_switch_values.286 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.287 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.288 = internal global [4 x i64] [i64 2, i64 8, i64 34, i64 39]
@__sancov_gen_cov_switch_values.289 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 34]
@__sancov_gen_cov_switch_values.290 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.291 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.292 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 61]
@__sancov_gen_cov_switch_values.293 = internal global [4 x i64] [i64 2, i64 8, i64 14, i64 16]
@__sancov_gen_cov_switch_values.294 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294966291, i64 4294966293, i64 4294966294, i64 4294966295, i64 4294967295]
@__sancov_gen_cov_switch_values.295 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 4294966291, i64 4294966293, i64 4294966294, i64 4294966295]
@__sancov_gen_cov_switch_values.296 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.297 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.298 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 99]
@__sancov_gen_cov_switch_values.299 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 10, i64 16]
@__sancov_gen_cov_switch_values.300 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.301 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.302 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.303 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.304 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.305 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 61]
@__sancov_gen_cov_switch_values.306 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.307 = private unnamed_addr constant [16 x i8] c"kdb_cmd_enabled\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 53, i32 12 }
@___asan_gen_.310 = private unnamed_addr constant [18 x i8] c"kdb_grepping_flag\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 57, i32 5 }
@___asan_gen_.313 = private unnamed_addr constant [16 x i8] c"kdb_initial_cpu\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 71, i32 5 }
@___asan_gen_.316 = private unnamed_addr constant [13 x i8] c"kdb_nextline\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 72, i32 5 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 213, i32 23 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 426, i32 22 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 433, i32 22 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 439, i32 15 }
@___asan_gen_.331 = private unnamed_addr constant [10 x i8] c"kdb_flags\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 65, i32 14 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 533, i32 24 }
@___asan_gen_.337 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 917, i32 15 }
@___asan_gen_.340 = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 918, i32 13 }
@___asan_gen_.343 = private unnamed_addr constant [5 x i8] c"cbuf\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 919, i32 14 }
@___asan_gen_.346 = private unnamed_addr constant [10 x i8] c"kdb_state\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 73, i32 5 }
@___asan_gen_.349 = private unnamed_addr constant [19 x i8] c"defcmd_in_progress\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 954, i32 16 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 960, i32 16 }
@___asan_gen_.356 = private unnamed_addr constant [14 x i8] c"kdb_cmds_head\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 88, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1077, i32 14 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1079, i32 14 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1356, i32 13 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1396, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1407, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1412, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1424, i32 16 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1429, i32 15 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1431, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant [25 x i8] c"kdb_param_ops_enable_nmi\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2181, i32 38 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2278, i32 25 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2281, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2282, i32 25 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2287, i32 15 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2288, i32 31 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2289, i32 17 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2291, i32 15 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2294, i32 14 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2308, i32 13 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2317, i32 15 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2320, i32 16 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2636, i32 15 }
@___asan_gen_.428 = private unnamed_addr constant [13 x i8] c"kdb_init_lvl\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2915, i32 13 }
@___asan_gen_.431 = private unnamed_addr constant [16 x i8] c"kdb_grep_string\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 56, i32 6 }
@___asan_gen_.434 = private unnamed_addr constant [17 x i8] c"kdb_grep_leading\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 59, i32 5 }
@___asan_gen_.437 = private unnamed_addr constant [18 x i8] c"kdb_grep_trailing\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 60, i32 5 }
@___asan_gen_.440 = private unnamed_addr constant [17 x i8] c"kdb_current_task\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 75, i32 21 }
@___asan_gen_.443 = private unnamed_addr constant [17 x i8] c"kdb_current_regs\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 76, i32 17 }
@___asan_gen_.446 = private unnamed_addr constant [11 x i8] c"kdb_diemsg\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 78, i32 13 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 144, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 148, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 149, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 150, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 151, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 152, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 153, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 314, i32 14 }
@___asan_gen_.473 = private unnamed_addr constant [10 x i8] c"envbuffer\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 238, i32 14 }
@___asan_gen_.476 = private unnamed_addr constant [11 x i8] c"envbufsize\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 239, i32 13 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 459, i32 14 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 837, i32 26 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 838, i32 14 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 859, i32 15 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 879, i32 14 }
@___asan_gen_.494 = private unnamed_addr constant [10 x i8] c"kdb_macro\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 666, i32 26 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 679, i32 20 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 688, i32 14 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1182, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant [13 x i8] c"kdb_go_count\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 79, i32 12 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1187, i32 14 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1190, i32 14 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1203, i32 15 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1208, i32 15 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1214, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1217, i32 15 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1226, i32 15 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1228, i32 15 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1237, i32 14 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1240, i32 14 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1241, i32 14 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1246, i32 14 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1249, i32 14 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1255, i32 14 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1257, i32 7 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1257, i32 22 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1263, i32 15 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1265, i32 4 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1270, i32 14 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1274, i32 14 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1275, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant [8 x i8] c"cmd_cur\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 821, i32 13 }
@___asan_gen_.575 = private unnamed_addr constant [9 x i8] c"cmd_hist\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 820, i32 13 }
@___asan_gen_.578 = private unnamed_addr constant [9 x i8] c"cmd_head\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 818, i32 21 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1298, i32 28 }
@___asan_gen_.584 = private unnamed_addr constant [7 x i8] c"cmdptr\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 819, i32 21 }
@___asan_gen_.587 = private unnamed_addr constant [9 x i8] c"cmd_tail\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 818, i32 31 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1330, i32 15 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1342, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 630, i32 14 }
@___asan_gen_.599 = private unnamed_addr constant [8 x i8] c"kdbmsgs\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 98, i32 17 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 636, i32 15 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 641, i32 13 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 99, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 100, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 101, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 103, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 104, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 105, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 106, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 107, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 108, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 109, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 113, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 115, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 116, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 117, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 118, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 119, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 120, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 121, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 122, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 123, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 124, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 125, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant [17 x i8] c"kdb_nmi_disabled\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2162, i32 17 }
@___asan_gen_.677 = private unnamed_addr constant [8 x i8] c"maintab\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2673, i32 17 }
@___asan_gen_.680 = private unnamed_addr constant [7 x i8] c"nmicmd\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2880, i32 17 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2674, i32 12 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2676, i32 12 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2677, i32 11 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2681, i32 12 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2683, i32 12 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2684, i32 11 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2687, i32 12 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2689, i32 12 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2690, i32 11 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2693, i32 12 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2696, i32 11 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2699, i32 12 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2701, i32 12 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2702, i32 11 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2705, i32 12 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2707, i32 12 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2708, i32 11 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2713, i32 12 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2716, i32 11 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2719, i32 12 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2721, i32 12 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2722, i32 11 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2725, i32 12 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2728, i32 11 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2731, i32 12 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2734, i32 11 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2738, i32 12 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2740, i32 12 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2741, i32 11 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2744, i32 12 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2746, i32 12 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2747, i32 11 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2750, i32 12 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2753, i32 11 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2756, i32 12 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2759, i32 11 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2762, i32 12 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2765, i32 11 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2768, i32 12 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2771, i32 11 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2774, i32 12 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2777, i32 11 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2781, i32 12 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2787, i32 12 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2789, i32 12 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2790, i32 11 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2793, i32 12 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2796, i32 11 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2799, i32 12 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2802, i32 11 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2805, i32 12 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2807, i32 12 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2808, i32 11 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2811, i32 12 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2814, i32 11 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2818, i32 12 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2821, i32 11 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2826, i32 12 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2828, i32 12 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2829, i32 11 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2834, i32 12 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2836, i32 12 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2837, i32 11 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2841, i32 12 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2843, i32 12 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2844, i32 11 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2852, i32 12 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2854, i32 12 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2855, i32 11 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2858, i32 12 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2861, i32 11 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2865, i32 12 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2867, i32 12 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2868, i32 11 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2872, i32 12 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2875, i32 11 }
@___asan_gen_.911 = private unnamed_addr constant [10 x i8] c"last_addr\00", align 1
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1543, i32 23 }
@___asan_gen_.914 = private unnamed_addr constant [11 x i8] c"last_radix\00", align 1
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1544, i32 13 }
@___asan_gen_.917 = private unnamed_addr constant [18 x i8] c"last_bytesperword\00", align 1
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1544, i32 25 }
@___asan_gen_.920 = private unnamed_addr constant [12 x i8] c"last_repeat\00", align 1
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1544, i32 44 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1556, i32 15 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1557, i32 15 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1558, i32 15 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1670, i32 19 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1673, i32 19 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1676, i32 19 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1692, i32 16 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1721, i32 15 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1459, i32 14 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1490, i32 14 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1492, i32 14 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1509, i32 16 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1537, i32 13 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1538, i32 6 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1773, i32 13 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1790, i32 14 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1807, i32 14 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1808, i32 14 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1811, i32 15 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1819, i32 14 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1851, i32 22 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1857, i32 22 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1863, i32 22 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1869, i32 22 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1875, i32 22 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1878, i32 22 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2065, i32 14 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 348, i32 15 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2414, i32 13 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2414, i32 39 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2414, i32 50 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2414, i32 59 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2415, i32 13 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2424, i32 12 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2425, i32 14 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2197, i32 13 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2198, i32 13 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2212, i32 17 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2214, i32 16 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2216, i32 17 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2218, i32 17 }
@___asan_gen_.1047 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1047, i32 108, i32 2 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2341, i32 13 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2342, i32 30 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2343, i32 30 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2344, i32 36 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2380, i32 23 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2389, i32 16 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2395, i32 13 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 1116, i32 13 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2020, i32 13 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2025, i32 14 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2028, i32 14 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2031, i32 15 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2033, i32 15 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2035, i32 15 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2036, i32 14 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2041, i32 15 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2044, i32 16 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2045, i32 15 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2104, i32 22 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2106, i32 47 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2116, i32 15 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2119, i32 15 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2133, i32 15 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2154, i32 14 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 704, i32 14 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 715, i32 16 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 720, i32 17 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 721, i32 16 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 729, i32 14 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 768, i32 13 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 796, i32 14 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 806, i32 14 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2447, i32 14 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2456, i32 14 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2463, i32 14 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2502, i32 13 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2503, i32 13 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2504, i32 13 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2505, i32 13 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2506, i32 13 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2507, i32 13 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2510, i32 13 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2512, i32 13 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2516, i32 14 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2516, i32 50 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2518, i32 13 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2520, i32 13 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2527, i32 13 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2558, i32 18 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2564, i32 15 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2590, i32 15 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2594, i32 14 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2608, i32 13 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2609, i32 13 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2610, i32 13 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2611, i32 13 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2612, i32 13 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2614, i32 13 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2615, i32 13 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2617, i32 13 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2881, i32 10 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2884, i32 10 }
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2903, i32 15 }
@___asan_gen_.1238 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1239 = private constant [31 x i8] c"../kernel/debug/kdb/kdb_main.c\00", align 1
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1239, i32 2907, i32 14 }
@llvm.compiler.used = appending global [318 x ptr] [ptr @__UNIQUE_ID_cmd_enabletype245, ptr @__ksymtab_kdb_grepping_flag, ptr @__ksymtab_kdb_register, ptr @__ksymtab_kdb_unregister, ptr @__param_cmd_enable, ptr @__param_enable_nmi, ptr @kdb_cmd_enabled, ptr @kdb_grepping_flag, ptr @kdb_initial_cpu, ptr @kdb_nextline, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @kdb_flags, ptr @.str.4, ptr @kdb_parse.argv, ptr @kdb_parse.argc, ptr @kdb_parse.cbuf, ptr @kdb_state, ptr @defcmd_in_progress, ptr @.str.5, ptr @.str.6, ptr @kdb_cmds_head, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @kdb_param_ops_enable_nmi, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @kdb_init.kdb_init_lvl, ptr @kdb_grep_string, ptr @kdb_grep_leading, ptr @kdb_grep_trailing, ptr @kdb_current_task, ptr @kdb_current_regs, ptr @kdb_diemsg, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @kdballocenv.envbuffer, ptr @kdballocenv.envbufsize, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @kdb_macro, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @kdb_go_count, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @cmd_cur, ptr @cmd_hist, ptr @cmd_head, ptr @.str.67, ptr @cmdptr, ptr @cmd_tail, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @kdbmsgs, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @kdb_nmi_disabled, ptr @maintab, ptr @nmicmd, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @kdb_md.last_addr, ptr @kdb_md.last_radix, ptr @kdb_md.last_bytesperword, ptr @kdb_md.last_repeat, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278], section "llvm.metadata"
@0 = internal global [312 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_cmd_enabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_grepping_flag to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_initial_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_nextline to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_parse.argv to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_parse.argc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_parse.cbuf to i32), i32 202, i32 256, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defcmd_in_progress to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_cmds_head to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_param_ops_enable_nmi to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_init.kdb_init_lvl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_grep_string to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_grep_leading to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_grep_trailing to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_current_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_current_regs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_diemsg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdballocenv.envbuffer to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdballocenv.envbufsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_macro to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_go_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_cur to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_hist to i32), i32 6400, i32 8000, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_head to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_tail to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdbmsgs to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_nmi_disabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maintab to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmicmd to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_md.last_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_md.last_radix to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_md.last_bytesperword to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_md.last_repeat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kdb_curr_task(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @curr_task(i32 noundef %cpu) #16
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @curr_task(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kdbgetenv(ptr nocapture noundef readonly %match) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %match) #19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %ep.029 = phi ptr [ @__env, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %incdec.ptr = getelementptr ptr, ptr %ep.029, i32 1
  %0 = ptrtoint ptr %ep.029 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep.029, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call1 = tail call i32 @strncmp(ptr noundef %match, ptr noundef nonnull %1, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %1, i32 %call
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %land.lhs.true.for.inc_crit_edge [
    i8 0, label %land.lhs.true.cleanup_crit_edge
    i8 61, label %land.lhs.true.cleanup_crit_edge36
  ]

land.lhs.true.cleanup_crit_edge36:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge36
  %call10 = tail call ptr @strchr(ptr noundef nonnull %1, i32 noundef 61)
  %tobool11.not = icmp eq ptr %call10, null
  %incdec.ptr12 = getelementptr i8, ptr %call10, i32 1
  %spec.select = select i1 %tobool11.not, ptr @.str, ptr %incdec.ptr12
  br label %cleanup14

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %for.inc.cleanup14_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup14_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup14

cleanup14:                                        ; preds = %for.inc.cleanup14_crit_edge, %cleanup
  %retval.2 = phi ptr [ %spec.select, %cleanup ], [ null, %for.inc.cleanup14_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdbgetintenv(ptr nocapture noundef readonly %match, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !658
  %call = call fastcc i32 @kdbgetulenv(ptr noundef %match, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kdbgetulenv(ptr nocapture noundef readonly %match, ptr nocapture noundef writeonly %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @strlen(ptr noundef %match) #20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.030.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %ep.029.i = phi ptr [ @__env, %entry ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr ptr, ptr %ep.029.i, i32 1
  %0 = ptrtoint ptr %ep.029.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep.029.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call1.i = tail call i32 @strncmp(ptr noundef %match, ptr noundef nonnull %1, i32 noundef %call.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx.i = getelementptr i8, ptr %1, i32 %call.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.279)
  switch i8 %3, label %land.lhs.true.i.for.inc.i_crit_edge [
    i8 0, label %land.lhs.true.i.cleanup.i_crit_edge
    i8 61, label %land.lhs.true.i.cleanup.i_crit_edge19
  ]

land.lhs.true.i.cleanup.i_crit_edge19:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %land.lhs.true.i.cleanup.i_crit_edge19
  %call10.i = tail call ptr @strchr(ptr noundef nonnull %1, i32 noundef 61) #16
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %cleanup.i.if.end_crit_edge, label %kdbgetenv.exit

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 31
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

kdbgetenv.exit:                                   ; preds = %cleanup.i
  %incdec.ptr12.i = getelementptr i8, ptr %call10.i, i32 1
  %tobool.not = icmp eq ptr %incdec.ptr12.i, null
  br i1 %tobool.not, label %kdbgetenv.exit.cleanup_crit_edge, label %kdbgetenv.exit.if.end_crit_edge

kdbgetenv.exit.if.end_crit_edge:                  ; preds = %kdbgetenv.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

kdbgetenv.exit.cleanup_crit_edge:                 ; preds = %kdbgetenv.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %kdbgetenv.exit.if.end_crit_edge, %cleanup.i.if.end_crit_edge
  %retval.2.i12 = phi ptr [ %incdec.ptr12.i, %kdbgetenv.exit.if.end_crit_edge ], [ @.str, %cleanup.i.if.end_crit_edge ]
  %5 = ptrtoint ptr %retval.2.i12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %char0 = load i8, ptr %retval.2.i12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp = icmp eq i8 %char0, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call i32 @simple_strtoul(ptr noundef nonnull %retval.2.i12, ptr noundef null, i32 noundef 0) #16
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %kdbgetenv.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -5, %kdbgetenv.exit.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ -5, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdbgetularg(ptr noundef %arg, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %endp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #16
  %0 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp, align 4, !annotation !658
  %call = call i32 @simple_strtoul(ptr noundef %arg, ptr noundef nonnull %endp, i32 noundef 0) #16
  %1 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %endp, align 4
  %cmp = icmp eq ptr %2, %arg
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = call i32 @simple_strtoul(ptr noundef %arg, ptr noundef nonnull %endp, i32 noundef 16) #16
  %3 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %endp, align 4
  %cmp2 = icmp eq ptr %4, %arg
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %val.0 = phi i32 [ %call1, %if.then.if.end4_crit_edge ], [ %call, %entry.if.end4_crit_edge ]
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %val.0, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -15, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdbgetu64arg(ptr noundef %arg, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %endp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #16
  %0 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp, align 4, !annotation !658
  %call = call i64 @simple_strtoull(ptr noundef %arg, ptr noundef nonnull %endp, i32 noundef 0) #16
  %1 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %endp, align 4
  %cmp = icmp eq ptr %2, %arg
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = call i64 @simple_strtoull(ptr noundef %arg, ptr noundef nonnull %endp, i32 noundef 16) #16
  %3 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %endp, align 4
  %cmp2 = icmp eq ptr %4, %arg
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %val.0 = phi i64 [ %call1, %if.then.if.end4_crit_edge ], [ %call, %entry.if.end4_crit_edge ]
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %val.0, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -15, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdb_set(i32 noundef %argc, ptr nocapture noundef %argv) #0 align 64 {
entry:
  %cp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %argc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.280)
  switch i32 %argc, label %entry.return_crit_edge [
    i32 3, label %if.end.thread
    i32 2, label %entry.if.end4_crit_edge
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr ptr, ptr %argv, i32 3
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr ptr, ptr %argv, i32 2
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %arrayidx1, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end.thread, %entry.if.end4_crit_edge
  %arrayidx5 = getelementptr ptr, ptr %argv, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  %call = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(7) @.str.1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end4
  %6 = load i32, ptr @kdb_cmd_enabled, align 4
  %and3.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i.not = icmp eq i32 %and3.i, 0
  br i1 %tobool4.i.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end4.if.end9_crit_edge
  %call11 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(9) @.str.2) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end25

if.then13:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cp) #16
  %7 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %cp, align 4, !annotation !658
  %arrayidx14 = getelementptr ptr, ptr %argv, i32 2
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx14, align 4
  %call15 = call i32 @simple_strtoul(ptr noundef %9, ptr noundef nonnull %cp, i32 noundef 0) #16
  %10 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cp, align 4
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14, align 4
  %cmp17 = icmp ne ptr %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call15)
  %tobool.not = icmp ult i32 %call15, 65536
  %or.cond = select i1 %cmp17, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  %call20 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.3, ptr noundef %13) #16
  br label %cleanup

if.end21:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  %14 = load i32, ptr @kdb_flags, align 4
  %and23 = and i32 %14, 65535
  %shl = shl nuw i32 %call15, 16
  %or = or i32 %and23, %shl
  store i32 %or, ptr @kdb_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cp) #16
  br label %return

if.end25:                                         ; preds = %if.end9
  %arrayidx27 = getelementptr ptr, ptr %argv, i32 2
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx27, align 4
  %call.i = tail call i32 @strlen(ptr noundef %5) #20
  %call1.i = tail call i32 @strlen(ptr noundef %16) #20
  %add.i = add i32 %call.i, 2
  %add2.i = add i32 %add.i, %call1.i
  %17 = load i32, ptr @kdballocenv.envbufsize, align 4
  %sub.i.i = sub i32 512, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %add2.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i, %add2.i
  br i1 %cmp.not.i.i, label %if.end25.return_crit_edge, label %kdballocenv.exit.i

if.end25.return_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

kdballocenv.exit.i:                               ; preds = %if.end25
  %arrayidx.i.i = getelementptr [512 x i8], ptr @kdballocenv.envbuffer, i32 0, i32 %17
  %add.i.i = add i32 %17, %add2.i
  store i32 %add.i.i, ptr @kdballocenv.envbufsize, align 4
  %cmp.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %cmp.i, label %kdballocenv.exit.i.return_crit_edge, label %if.end.i

kdballocenv.exit.i.return_crit_edge:              ; preds = %kdballocenv.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end.i:                                         ; preds = %kdballocenv.exit.i
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx.i.i, ptr noundef nonnull @.str.37, ptr noundef %5, ptr noundef %16) #16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %i.059.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [31 x ptr], ptr @__env, i32 0, i32 %i.059.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call7.i = tail call i32 @strncmp(ptr noundef nonnull %19, ptr noundef %5, i32 noundef %call.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %land.lhs.true9.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %arrayidx11.i = getelementptr i8, ptr %19, i32 %call.i
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx11.i, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.281)
  switch i8 %21, label %land.lhs.true9.i.for.inc.i_crit_edge [
    i8 0, label %land.lhs.true9.i.cleanup.sink.split.i_crit_edge
    i8 61, label %land.lhs.true9.i.cleanup.sink.split.i_crit_edge59
  ]

land.lhs.true9.i.cleanup.sink.split.i_crit_edge59: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

land.lhs.true9.i.cleanup.sink.split.i_crit_edge:  ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

land.lhs.true9.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true9.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 31
  br i1 %exitcond.not.i, label %for.inc.i.for.body25.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.for.body25.i_crit_edge:                 ; preds = %for.inc.i
  br label %for.body25.i

for.cond22.i:                                     ; preds = %for.body25.i
  %inc33.i = add nuw nsw i32 %i.160.i, 1
  %exitcond63.not.i = icmp eq i32 %inc33.i, 30
  br i1 %exitcond63.not.i, label %for.cond22.i.return_crit_edge, label %for.cond22.i.for.body25.i_crit_edge

for.cond22.i.for.body25.i_crit_edge:              ; preds = %for.cond22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body25.i

for.cond22.i.return_crit_edge:                    ; preds = %for.cond22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

for.body25.i:                                     ; preds = %for.cond22.i.for.body25.i_crit_edge, %for.inc.i.for.body25.i_crit_edge
  %i.160.i = phi i32 [ %inc33.i, %for.cond22.i.for.body25.i_crit_edge ], [ 0, %for.inc.i.for.body25.i_crit_edge ]
  %arrayidx26.i = getelementptr [31 x ptr], ptr @__env, i32 0, i32 %i.160.i
  %23 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx26.i, align 4
  %cmp27.i = icmp eq ptr %24, null
  br i1 %cmp27.i, label %for.body25.i.cleanup.sink.split.i_crit_edge, label %for.cond22.i

for.body25.i.cleanup.sink.split.i_crit_edge:      ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.body25.i.cleanup.sink.split.i_crit_edge, %land.lhs.true9.i.cleanup.sink.split.i_crit_edge, %land.lhs.true9.i.cleanup.sink.split.i_crit_edge59
  %arrayidx26.lcssa.sink.i = phi ptr [ %arrayidx26.i, %for.body25.i.cleanup.sink.split.i_crit_edge ], [ %arrayidx.i, %land.lhs.true9.i.cleanup.sink.split.i_crit_edge ], [ %arrayidx.i, %land.lhs.true9.i.cleanup.sink.split.i_crit_edge59 ]
  %25 = ptrtoint ptr %arrayidx26.lcssa.sink.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.i.i, ptr %arrayidx26.lcssa.sink.i, align 4
  br label %return

return:                                           ; preds = %cleanup.sink.split.i, %for.cond22.i.return_crit_edge, %kdballocenv.exit.i.return_crit_edge, %if.end25.return_crit_edge, %cleanup, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup ], [ -22, %land.lhs.true.return_crit_edge ], [ -9, %kdballocenv.exit.i.return_crit_edge ], [ -9, %if.end25.return_crit_edge ], [ 0, %cleanup.sink.split.i ], [ -2, %entry.return_crit_edge ], [ -8, %for.cond22.i.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdbgetaddrarg(i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr nocapture noundef %nextarg, ptr noundef %value, ptr noundef %offset, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %endp.i178 = alloca ptr, align 4
  %endp.i = alloca ptr, align 4
  %addr = alloca i32, align 4
  %symtab = alloca %struct.__ksymtab, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #16
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !658
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %symtab) #16
  %1 = call ptr @memset(ptr %symtab, i32 255, i32 40)
  %2 = load i32, ptr @kdb_cmd_enabled, align 4
  %and3.i = and i32 %2, 67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i.not = icmp eq i32 %and3.i, 0
  br i1 %tobool4.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %nextarg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nextarg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %argc)
  %cmp = icmp sgt i32 %4, %argc
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %arrayidx = getelementptr ptr, ptr %argv, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call ptr @strpbrk(ptr noundef %6, ptr noundef nonnull @.str.4)
  %cmp4.not = icmp eq ptr %call3, null
  br i1 %cmp4.not, label %if.end2.if.end6_crit_edge, label %if.then5

if.end2.if.end6_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call3, align 1
  %incdec.ptr = getelementptr i8, ptr %call3, i32 1
  store i8 0, ptr %call3, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end2.if.end6_crit_edge
  %symbol.0 = phi i8 [ %8, %if.then5 ], [ 0, %if.end2.if.end6_crit_edge ]
  %cp.0 = phi ptr [ %incdec.ptr, %if.then5 ], [ null, %if.end2.if.end6_crit_edge ]
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %6, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.282)
  switch i8 %10, label %if.else24 [
    i8 36, label %if.then10
    i8 37, label %if.then19
  ]

if.then10:                                        ; preds = %if.end6
  %arrayidx11 = getelementptr i8, ptr %6, i32 1
  %call12 = call fastcc i32 @kdbgetulenv(ptr noundef %arrayidx11, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then10.if.then38_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.if.then38_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then38

if.then19:                                        ; preds = %if.end6
  %12 = load ptr, ptr @kdb_current_regs, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %kdb_check_regs.exit, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

kdb_check_regs.exit:                              ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.38) #16
  br label %cleanup

if.else24:                                        ; preds = %if.end6
  %call25 = call i32 @kdbgetsymval(ptr noundef %6, ptr noundef nonnull %symtab) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.else28, label %if.then27

if.then27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #18
  %sym_start = getelementptr inbounds %struct.__ksymtab, ptr %symtab, i32 0, i32 8
  %13 = ptrtoint ptr %sym_start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sym_start, align 4
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %addr, align 4
  br label %if.end40

if.else28:                                        ; preds = %if.else24
  %16 = ptrtoint ptr %nextarg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nextarg, align 4
  %arrayidx29 = getelementptr ptr, ptr %argv, i32 %17
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx29, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp.i) #16
  %20 = ptrtoint ptr %endp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp.i, align 4, !annotation !658
  %call.i175 = call i32 @simple_strtoul(ptr noundef %19, ptr noundef nonnull %endp.i, i32 noundef 0) #16
  %21 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %endp.i, align 4
  %cmp.i = icmp eq ptr %22, %19
  br i1 %cmp.i, label %if.then.i176, label %if.else28.kdbgetularg.exit.thread_crit_edge

if.else28.kdbgetularg.exit.thread_crit_edge:      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #18
  br label %kdbgetularg.exit.thread

if.then.i176:                                     ; preds = %if.else28
  %call1.i = call i32 @simple_strtoul(ptr noundef %19, ptr noundef nonnull %endp.i, i32 noundef 16) #16
  %23 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %endp.i, align 4
  %cmp2.i = icmp eq ptr %24, %19
  br i1 %cmp2.i, label %kdbgetularg.exit, label %if.then.i176.kdbgetularg.exit.thread_crit_edge

if.then.i176.kdbgetularg.exit.thread_crit_edge:   ; preds = %if.then.i176
  call void @__sanitizer_cov_trace_pc() #18
  br label %kdbgetularg.exit.thread

kdbgetularg.exit.thread:                          ; preds = %if.then.i176.kdbgetularg.exit.thread_crit_edge, %if.else28.kdbgetularg.exit.thread_crit_edge
  %val.0.i = phi i32 [ %call1.i, %if.then.i176.kdbgetularg.exit.thread_crit_edge ], [ %call.i175, %if.else28.kdbgetularg.exit.thread_crit_edge ]
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %val.0.i, ptr %addr, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #16
  br label %if.then38

kdbgetularg.exit:                                 ; preds = %if.then.i176
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #16
  br label %cleanup

if.then38:                                        ; preds = %kdbgetularg.exit.thread, %if.then10.if.then38_crit_edge
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr, align 4
  %call39 = call i32 @kdbnearsym(i32 noundef %27, ptr noundef nonnull %symtab) #16
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then27
  %28 = ptrtoint ptr %nextarg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nextarg, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %nextarg, align 4
  %tobool41.not = icmp eq ptr %name, null
  br i1 %tobool41.not, label %if.end40.if.end43_crit_edge, label %if.then42

if.end40.if.end43_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %6, ptr %name, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end40.if.end43_crit_edge
  %tobool44.not = icmp eq ptr %value, null
  br i1 %tobool44.not, label %if.end43.if.end46_crit_edge, label %if.then45

if.end43.if.end46_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr, align 4
  %33 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %value, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end43.if.end46_crit_edge
  %tobool47.not = icmp eq ptr %offset, null
  %brmerge = or i1 %tobool47.not, %tobool41.not
  br i1 %brmerge, label %if.end46.if.end53_crit_edge, label %land.lhs.true49

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

land.lhs.true49:                                  ; preds = %if.end46
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  %tobool50.not = icmp eq ptr %35, null
  br i1 %tobool50.not, label %land.lhs.true49.if.end53_crit_edge, label %if.then51

land.lhs.true49.if.end53_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr, align 4
  %sym_start52 = getelementptr inbounds %struct.__ksymtab, ptr %symtab, i32 0, i32 8
  %38 = ptrtoint ptr %sym_start52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sym_start52, align 4
  %sub = sub i32 %37, %39
  %40 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub, ptr %offset, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %land.lhs.true49.if.end53_crit_edge, %if.end46.if.end53_crit_edge
  %41 = ptrtoint ptr %nextarg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nextarg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %argc)
  %cmp54 = icmp sgt i32 %42, %argc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %symbol.0)
  %cmp58 = icmp eq i8 %symbol.0, 0
  %or.cond = select i1 %cmp54, i1 %cmp58, i1 false
  br i1 %or.cond, label %if.end53.cleanup_crit_edge, label %if.end61

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end61:                                         ; preds = %if.end53
  br i1 %cmp58, label %if.then65, label %if.end61.if.end103_crit_edge

if.end61.if.end103_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end103

if.then65:                                        ; preds = %if.end61
  %arrayidx66 = getelementptr ptr, ptr %argv, i32 %42
  %43 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx66, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.283)
  switch i8 %46, label %if.then65.cleanup_crit_edge [
    i8 43, label %if.then65.if.end90_crit_edge
    i8 45, label %if.then65.if.end90_crit_edge208
  ]

if.then65.if.end90_crit_edge208:                  ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end90

if.then65.if.end90_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end90

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end90:                                         ; preds = %if.then65.if.end90_crit_edge, %if.then65.if.end90_crit_edge208
  %inc84 = add i32 %42, 1
  %48 = ptrtoint ptr %nextarg to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %inc84, ptr %nextarg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc84, i32 %argc)
  %cmp91.not = icmp sgt i32 %inc84, %argc
  br i1 %cmp91.not, label %if.end90.cleanup_crit_edge, label %if.then100

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then100:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx101 = getelementptr ptr, ptr %argv, i32 %inc84
  %49 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx101, align 4
  %inc102 = add i32 %42, 2
  %51 = ptrtoint ptr %nextarg to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %inc102, ptr %nextarg, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %if.end61.if.end103_crit_edge
  %positive.0.in200202.in = phi i8 [ %46, %if.then100 ], [ %symbol.0, %if.end61.if.end103_crit_edge ]
  %cp.1 = phi ptr [ %50, %if.then100 ], [ %cp.0, %if.end61.if.end103_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %positive.0.in200202.in)
  %positive.0.in200202 = icmp eq i8 %positive.0.in200202.in, 43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp.i178) #16
  %52 = ptrtoint ptr %endp.i178 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp.i178, align 4, !annotation !658
  %call.i179 = call i32 @simple_strtoul(ptr noundef %cp.1, ptr noundef nonnull %endp.i178, i32 noundef 0) #16
  %53 = ptrtoint ptr %endp.i178 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %endp.i178, align 4
  %cmp.i180 = icmp eq ptr %54, %cp.1
  br i1 %cmp.i180, label %if.then.i183, label %if.end103.if.end107_crit_edge

if.end103.if.end107_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end107

if.then.i183:                                     ; preds = %if.end103
  %call1.i181 = call i32 @simple_strtoul(ptr noundef %cp.1, ptr noundef nonnull %endp.i178, i32 noundef 16) #16
  %55 = ptrtoint ptr %endp.i178 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %endp.i178, align 4
  %cmp2.i182 = icmp eq ptr %56, %cp.1
  br i1 %cmp2.i182, label %kdbgetularg.exit187, label %if.then.i183.if.end107_crit_edge

if.then.i183.if.end107_crit_edge:                 ; preds = %if.then.i183
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end107

kdbgetularg.exit187:                              ; preds = %if.then.i183
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i178) #16
  br label %cleanup

if.end107:                                        ; preds = %if.then.i183.if.end107_crit_edge, %if.end103.if.end107_crit_edge
  %val.0.i184 = phi i32 [ %call1.i181, %if.then.i183.if.end107_crit_edge ], [ %call.i179, %if.end103.if.end107_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i178) #16
  %sub110 = sub i32 0, %val.0.i184
  %spec.select = select i1 %positive.0.in200202, i32 %val.0.i184, i32 %sub110
  br i1 %tobool47.not, label %if.end107.if.end114_crit_edge, label %if.then113

if.end107.if.end114_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114

if.then113:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %offset, align 4
  %add = add i32 %58, %spec.select
  store i32 %add, ptr %offset, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.end107.if.end114_crit_edge
  br i1 %tobool44.not, label %if.end114.cleanup_crit_edge, label %if.then116

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then116:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #18
  %59 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %value, align 4
  %add117 = add i32 %60, %spec.select
  store i32 %add117, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then116, %if.end114.cleanup_crit_edge, %kdbgetularg.exit187, %if.end90.cleanup_crit_edge, %if.then65.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %kdbgetularg.exit, %kdb_check_regs.exit, %if.then19.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %call12, %if.then10.cleanup_crit_edge ], [ -15, %kdbgetularg.exit ], [ 0, %if.end53.cleanup_crit_edge ], [ 0, %if.then65.cleanup_crit_edge ], [ -16, %if.end90.cleanup_crit_edge ], [ -15, %kdbgetularg.exit187 ], [ 0, %if.then116 ], [ 0, %if.end114.cleanup_crit_edge ], [ -17, %kdb_check_regs.exit ], [ -7, %if.then19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %symtab) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdbgetsymval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdbnearsym(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdb_parse(ptr noundef %cmdstr) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  %name233 = alloca ptr, align 4
  %offset = alloca i32, align 4
  %nextarg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @kdb_flags, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %and1 = and i32 %0, -5
  store i32 %and1, ptr @kdb_flags, align 4
  %1 = load i32, ptr @kdb_state, align 4
  %or = or i32 %1, 1024
  store i32 %or, ptr @kdb_state, align 4
  store i32 0, ptr @kdb_parse.argc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %cmdstr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmdstr, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.284)
  switch i8 %3, label %if.then6 [
    i8 10, label %if.end.if.end105_crit_edge
    i8 0, label %if.end.if.end105_crit_edge424
  ]

if.end.if.end105_crit_edge424:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

if.end.if.end105_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

if.then6:                                         ; preds = %if.end
  store i32 0, ptr @kdb_parse.argc, align 4
  br label %while.cond8.preheader

while.cond8.preheader:                            ; preds = %while.end102.while.cond8.preheader_crit_edge, %if.then6
  %cp.0354 = phi ptr [ %cmdstr, %if.then6 ], [ %cp.3, %while.end102.while.cond8.preheader_crit_edge ]
  %cpp.0353 = phi ptr [ @kdb_parse.cbuf, %if.then6 ], [ %incdec.ptr103, %while.end102.while.cond8.preheader_crit_edge ]
  br label %while.cond8

while.cond8:                                      ; preds = %while.cond8.while.cond8_crit_edge, %while.cond8.preheader
  %cp.1 = phi ptr [ %incdec.ptr, %while.cond8.while.cond8_crit_edge ], [ %cp.0354, %while.cond8.preheader ]
  %5 = ptrtoint ptr %cp.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cp.1, align 1
  %conv9 = zext i8 %6 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv9
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = and i8 %8, 32
  %cmp12.not = icmp eq i8 %9, 0
  %incdec.ptr = getelementptr i8, ptr %cp.1, i32 1
  br i1 %cmp12.not, label %while.end, label %while.cond8.while.cond8_crit_edge

while.cond8.while.cond8_crit_edge:                ; preds = %while.cond8
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond8

while.end:                                        ; preds = %while.cond8
  %10 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.285)
  switch i8 %6, label %while.end.if.end33_crit_edge [
    i8 0, label %while.end.if.end105_crit_edge
    i8 10, label %while.end.if.end105_crit_edge425
    i8 35, label %land.lhs.true25
    i8 124, label %if.end105.thread
  ]

while.end.if.end105_crit_edge425:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

while.end.if.end105_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

while.end.if.end33_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

land.lhs.true25:                                  ; preds = %while.end
  %.b308312 = load i1, ptr @defcmd_in_progress, align 1
  br i1 %.b308312, label %land.lhs.true25.if.end33_crit_edge, label %land.lhs.true25.if.end105_crit_edge

land.lhs.true25.if.end105_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

land.lhs.true25.if.end33_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true25.if.end33_crit_edge, %while.end.if.end33_crit_edge
  %cmp34.not = icmp ult ptr %cpp.0353, getelementptr inbounds ([202 x i8], ptr @kdb_parse.cbuf, i32 0, i32 200)
  br i1 %cmp34.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.5, ptr noundef %cmdstr) #16
  br label %cleanup244

if.end37:                                         ; preds = %if.end33
  %11 = load i32, ptr @kdb_parse.argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %11)
  %cmp38 = icmp sgt i32 %11, 18
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  %call41 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.6, ptr noundef %cmdstr) #16
  br label %cleanup244

if.end42:                                         ; preds = %if.end37
  %inc43 = add nsw i32 %11, 1
  store i32 %inc43, ptr @kdb_parse.argc, align 4
  %arrayidx44 = getelementptr [20 x ptr], ptr @kdb_parse.argv, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cpp.0353, ptr %arrayidx44, align 4
  br label %while.cond45.outer

while.cond45.outer:                               ; preds = %if.end100, %if.end42
  %quoted.0.ph = phi i8 [ 0, %if.end42 ], [ %quoted.1323, %if.end100 ]
  %cpp.1.ph = phi ptr [ %cpp.0353, %if.end42 ], [ %incdec.ptr101, %if.end100 ]
  %cp.2.ph = phi ptr [ %cp.1, %if.end42 ], [ %uglygep, %if.end100 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %quoted.0.ph)
  %tobool55.not = icmp eq i8 %quoted.0.ph, 0
  br label %while.cond45.outer336

while.cond45.outer336:                            ; preds = %if.then68, %while.cond45.outer
  %cpp.1.ph337 = phi ptr [ %cpp.1.ph, %while.cond45.outer ], [ %incdec.ptr70, %if.then68 ]
  %cp.2.ph338 = phi ptr [ %cp.2.ph, %while.cond45.outer ], [ %incdec.ptr69, %if.then68 ]
  %cmp63.not.old = icmp ult ptr %cpp.1.ph337, getelementptr inbounds ([202 x i8], ptr @kdb_parse.cbuf, i32 0, i32 200)
  %uglygep = getelementptr i8, ptr %cp.2.ph338, i32 1
  %13 = ptrtoint ptr %cp.2.ph338 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cp.2.ph338, align 1
  %conv46 = zext i8 %14 to i32
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.286)
  switch i8 %14, label %land.rhs [
    i8 0, label %while.cond45.outer336.while.end102_crit_edge
    i8 10, label %while.cond45.outer336.while.end102_crit_edge426
  ]

while.cond45.outer336.while.end102_crit_edge426:  ; preds = %while.cond45.outer336
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end102

while.cond45.outer336.while.end102_crit_edge:     ; preds = %while.cond45.outer336
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end102

land.rhs:                                         ; preds = %while.cond45.outer336
  br i1 %tobool55.not, label %lor.rhs, label %while.body62

lor.rhs:                                          ; preds = %land.rhs
  %arrayidx57 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv46
  %16 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx57, align 1
  %18 = and i8 %17, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp60.not = icmp eq i8 %18, 0
  %or.cond313 = select i1 %cmp60.not, i1 %cmp63.not.old, i1 false
  br i1 %or.cond313, label %lor.rhs.if.end66_crit_edge, label %lor.rhs.while.end102_crit_edge

lor.rhs.while.end102_crit_edge:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end102

lor.rhs.if.end66_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

while.body62:                                     ; preds = %land.rhs
  br i1 %cmp63.not.old, label %while.body62.if.end66_crit_edge, label %while.body62.while.end102_crit_edge

while.body62.while.end102_crit_edge:              ; preds = %while.body62
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end102

while.body62.if.end66_crit_edge:                  ; preds = %while.body62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

if.end66:                                         ; preds = %while.body62.if.end66_crit_edge, %lor.rhs.if.end66_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %14)
  %cmp73 = icmp eq i8 %14, 92
  br i1 %cmp73, label %if.then75, label %if.end77

if.then68:                                        ; preds = %while.body62.1
  call void @__sanitizer_cov_trace_pc() #18
  %incdec.ptr69 = getelementptr i8, ptr %cp.2.ph338, i32 2
  %incdec.ptr70 = getelementptr i8, ptr %cpp.1.ph337, i32 1
  %19 = ptrtoint ptr %cpp.1.ph337 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %21, ptr %cpp.1.ph337, align 1
  br label %while.cond45.outer336

if.then75:                                        ; preds = %if.end66
  %20 = ptrtoint ptr %uglygep to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %uglygep, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.287)
  switch i8 %21, label %while.body62.1 [
    i8 0, label %if.then75.while.end102_crit_edge
    i8 10, label %if.then75.while.end102_crit_edge427
  ]

if.then75.while.end102_crit_edge427:              ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end102

if.then75.while.end102_crit_edge:                 ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end102

while.body62.1:                                   ; preds = %if.then75
  br i1 %cmp63.not.old, label %if.then68, label %while.body62.1.while.end102_crit_edge

while.body62.1.while.end102_crit_edge:            ; preds = %while.body62.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end102

if.end77:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %quoted.0.ph)
  %cmp80 = icmp eq i8 %14, %quoted.0.ph
  br i1 %cmp80, label %if.end77.if.end92_crit_edge, label %if.else

if.end77.if.end92_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92

if.else:                                          ; preds = %if.end77
  %23 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.288)
  switch i8 %14, label %if.else.if.end92_crit_edge [
    i8 39, label %if.else.if.end92.thread_crit_edge
    i8 34, label %if.else.if.end92.thread_crit_edge428
  ]

if.else.if.end92.thread_crit_edge428:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92.thread

if.else.if.end92.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92.thread

if.else.if.end92_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92

if.end92.thread:                                  ; preds = %if.else.if.end92.thread_crit_edge, %if.else.if.end92.thread_crit_edge428
  %24 = ptrtoint ptr %cpp.1.ph337 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %14, ptr %cpp.1.ph337, align 1
  br label %if.end100

if.end92:                                         ; preds = %if.else.if.end92_crit_edge, %if.end77.if.end92_crit_edge
  %25 = phi i8 [ %quoted.0.ph, %if.end77.if.end92_crit_edge ], [ %14, %if.else.if.end92_crit_edge ]
  %quoted.1 = phi i8 [ 0, %if.end77.if.end92_crit_edge ], [ %quoted.0.ph, %if.else.if.end92_crit_edge ]
  %26 = ptrtoint ptr %cpp.1.ph337 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %14, ptr %cpp.1.ph337, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %25)
  %cmp95 = icmp eq i8 %25, 61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %quoted.1)
  %tobool98.not = icmp eq i8 %quoted.1, 0
  %or.cond314 = select i1 %cmp95, i1 %tobool98.not, i1 false
  br i1 %or.cond314, label %if.end92.while.end102_crit_edge, label %if.end92.if.end100_crit_edge

if.end92.if.end100_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end100

if.end92.while.end102_crit_edge:                  ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end102

if.end100:                                        ; preds = %if.end92.if.end100_crit_edge, %if.end92.thread
  %quoted.1323 = phi i8 [ %14, %if.end92.thread ], [ %quoted.1, %if.end92.if.end100_crit_edge ]
  %incdec.ptr101 = getelementptr i8, ptr %cpp.1.ph337, i32 1
  br label %while.cond45.outer

while.end102:                                     ; preds = %if.end92.while.end102_crit_edge, %while.body62.1.while.end102_crit_edge, %if.then75.while.end102_crit_edge, %if.then75.while.end102_crit_edge427, %while.body62.while.end102_crit_edge, %lor.rhs.while.end102_crit_edge, %while.cond45.outer336.while.end102_crit_edge, %while.cond45.outer336.while.end102_crit_edge426
  %cp.3 = phi ptr [ %uglygep, %while.body62.1.while.end102_crit_edge ], [ %uglygep, %if.then75.while.end102_crit_edge ], [ %uglygep, %if.then75.while.end102_crit_edge427 ], [ %cp.2.ph338, %lor.rhs.while.end102_crit_edge ], [ %cp.2.ph338, %while.body62.while.end102_crit_edge ], [ %cp.2.ph338, %while.cond45.outer336.while.end102_crit_edge ], [ %cp.2.ph338, %while.cond45.outer336.while.end102_crit_edge426 ], [ %uglygep, %if.end92.while.end102_crit_edge ]
  %incdec.ptr103 = getelementptr i8, ptr %cpp.1.ph337, i32 1
  %27 = ptrtoint ptr %cpp.1.ph337 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %cpp.1.ph337, align 1
  %28 = ptrtoint ptr %cp.3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %.pr = load i8, ptr %cp.3, align 1
  %tobool7.not = icmp eq i8 %.pr, 0
  br i1 %tobool7.not, label %while.end102.if.end105_crit_edge, label %while.end102.while.cond8.preheader_crit_edge

while.end102.while.cond8.preheader_crit_edge:     ; preds = %while.end102
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond8.preheader

while.end102.if.end105_crit_edge:                 ; preds = %while.end102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

if.end105:                                        ; preds = %while.end102.if.end105_crit_edge, %land.lhs.true25.if.end105_crit_edge, %while.end.if.end105_crit_edge, %while.end.if.end105_crit_edge425, %if.end.if.end105_crit_edge, %if.end.if.end105_crit_edge424
  %29 = load i32, ptr @kdb_parse.argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool106.not = icmp eq i32 %29, 0
  br i1 %tobool106.not, label %if.end105.cleanup244_crit_edge, label %if.end105.if.end111_crit_edge

if.end105.if.end111_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

if.end105.cleanup244_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup244

if.end105.thread:                                 ; preds = %while.end
  %30 = load i32, ptr @kdb_parse.argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool106.not327 = icmp eq i32 %30, 0
  br i1 %tobool106.not327, label %if.end105.thread.cleanup244_crit_edge, label %if.then110

if.end105.thread.cleanup244_crit_edge:            ; preds = %if.end105.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup244

if.then110:                                       ; preds = %if.end105.thread
  %31 = ptrtoint ptr %cp.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cp.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 124, i8 %32)
  %cmp.not.i = icmp eq i8 %32, 124
  br i1 %cmp.not.i, label %if.then110.while.cond.i_crit_edge, label %if.then110.if.end111_crit_edge

if.then110.if.end111_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

if.then110.while.cond.i_crit_edge:                ; preds = %if.then110
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then110.while.cond.i_crit_edge
  %str.pn.i = phi ptr [ %cp.0.i, %while.cond.i.while.cond.i_crit_edge ], [ %cp.1, %if.then110.while.cond.i_crit_edge ]
  %cp.0.i = getelementptr i8, ptr %str.pn.i, i32 1
  %33 = ptrtoint ptr %cp.0.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cp.0.i, align 1
  %conv2.i = zext i8 %34 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv2.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i, align 1
  %37 = and i8 %36, 32
  %cmp4.not.i = icmp eq i8 %37, 0
  br i1 %cmp4.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %call1.i.i = tail call i32 @strncmp(ptr noundef %cp.0.i, ptr noundef nonnull dereferenceable(6) @.str.39, i32 noundef 5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i.not.i, label %if.end9.i, label %if.then7.i

if.then7.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call8.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.40) #16
  br label %if.end111

if.end9.i:                                        ; preds = %while.end.i
  %add.ptr.i = getelementptr i8, ptr %str.pn.i, i32 6
  br label %while.cond10.i

while.cond10.i:                                   ; preds = %while.cond10.i.while.cond10.i_crit_edge, %if.end9.i
  %cp.1.i = phi ptr [ %add.ptr.i, %if.end9.i ], [ %incdec.ptr18.i, %while.cond10.i.while.cond10.i_crit_edge ]
  %38 = ptrtoint ptr %cp.1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %cp.1.i, align 1
  %conv11.i = zext i8 %39 to i32
  %arrayidx12.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv11.i
  %40 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx12.i, align 1
  %42 = and i8 %41, 32
  %cmp15.not.i = icmp eq i8 %42, 0
  %incdec.ptr18.i = getelementptr i8, ptr %cp.1.i, i32 1
  br i1 %cmp15.not.i, label %while.end19.i, label %while.cond10.i.while.cond10.i_crit_edge

while.cond10.i.while.cond10.i_crit_edge:          ; preds = %while.cond10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond10.i

while.end19.i:                                    ; preds = %while.cond10.i
  %call20.i = tail call ptr @strchr(ptr noundef %cp.1.i, i32 noundef 10) #16
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %while.end19.i.if.end23.i_crit_edge, label %if.then22.i

while.end19.i.if.end23.i_crit_edge:               ; preds = %while.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23.i

if.then22.i:                                      ; preds = %while.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  %43 = ptrtoint ptr %call20.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %call20.i, align 1
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i, %while.end19.i.if.end23.i_crit_edge
  %44 = ptrtoint ptr %cp.1.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %char0.i = load i8, ptr %cp.1.i, align 1
  %45 = zext i8 %char0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.289)
  switch i8 %char0.i, label %if.end23.i.if.end40.i_crit_edge [
    i8 0, label %if.then27.i
    i8 34, label %if.then33.i
  ]

if.end23.i.if.end40.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  %call28.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.40) #16
  br label %if.end111

if.then33.i:                                      ; preds = %if.end23.i
  %call35.i = tail call ptr @strchr(ptr noundef %incdec.ptr18.i, i32 noundef 34) #16
  %tobool36.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool36.not.i, label %if.then37.i, label %if.end39.i

if.then37.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #18
  %call38.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.41) #16
  br label %if.end111

if.end39.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #18
  %46 = ptrtoint ptr %call35.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %call35.i, align 1
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end39.i, %if.end23.i.if.end40.i_crit_edge
  %cp.2.i = phi ptr [ %incdec.ptr18.i, %if.end39.i ], [ %cp.1.i, %if.end23.i.if.end40.i_crit_edge ]
  store i32 0, ptr @kdb_grep_leading, align 4
  %47 = ptrtoint ptr %cp.2.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cp.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %48)
  %cmp42.i = icmp eq i8 %48, 94
  br i1 %cmp42.i, label %if.then44.i, label %if.end40.i.if.end46.i_crit_edge

if.end40.i.if.end46.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46.i

if.then44.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #18
  store i32 1, ptr @kdb_grep_leading, align 4
  %incdec.ptr45.i = getelementptr i8, ptr %cp.2.i, i32 1
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then44.i, %if.end40.i.if.end46.i_crit_edge
  %cp.3.i = phi ptr [ %incdec.ptr45.i, %if.then44.i ], [ %cp.2.i, %if.end40.i.if.end46.i_crit_edge ]
  %call47.i = tail call i32 @strlen(ptr noundef %cp.3.i) #20
  store i32 0, ptr @kdb_grep_trailing, align 4
  %add.ptr48.i = getelementptr i8, ptr %cp.3.i, i32 %call47.i
  %add.ptr49.i = getelementptr i8, ptr %add.ptr48.i, i32 -1
  %49 = ptrtoint ptr %add.ptr49.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr49.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %50)
  %cmp51.i = icmp eq i8 %50, 36
  br i1 %cmp51.i, label %if.then53.i, label %if.end46.i.if.end56.i_crit_edge

if.end46.i.if.end56.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56.i

if.then53.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #18
  store i32 1, ptr @kdb_grep_trailing, align 4
  %51 = ptrtoint ptr %add.ptr49.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %add.ptr49.i, align 1
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then53.i, %if.end46.i.if.end56.i_crit_edge
  %call57.i = tail call i32 @strlen(ptr noundef %cp.3.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end56.i.if.end111_crit_edge, label %if.end60.i

if.end56.i.if.end111_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

if.end60.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call57.i)
  %cmp61.i = icmp sgt i32 %call57.i, 255
  br i1 %cmp61.i, label %if.then63.i, label %if.end65.i

if.then63.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #18
  %call64.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.42) #16
  br label %if.end111

if.end65.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #18
  %call66.i = tail call ptr @strcpy(ptr noundef nonnull @kdb_grep_string, ptr noundef %cp.3.i) #20
  %52 = load i32, ptr @kdb_grepping_flag, align 4
  %inc.i = add i32 %52, 1
  store i32 %inc.i, ptr @kdb_grepping_flag, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.end65.i, %if.then63.i, %if.end56.i.if.end111_crit_edge, %if.then37.i, %if.then27.i, %if.then7.i, %if.then110.if.end111_crit_edge, %if.end105.if.end111_crit_edge
  %.b307309 = load i1, ptr @defcmd_in_progress, align 1
  %53 = load ptr, ptr @kdb_parse.argv, align 4
  br i1 %.b307309, label %if.then113, label %if.end118

if.then113:                                       ; preds = %if.end111
  %call114 = tail call fastcc i32 @kdb_defcmd2(ptr noundef %cmdstr, ptr noundef %53)
  %.b311 = load i1, ptr @defcmd_in_progress, align 1
  br i1 %.b311, label %if.then113.cleanup244_crit_edge, label %if.then116

if.then113.cleanup244_crit_edge:                  ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup244

if.then116:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #18
  store i32 0, ptr @kdb_parse.argc, align 4
  %54 = load ptr, ptr @kdb_parse.argv, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %54, align 1
  br label %cleanup244

if.end118:                                        ; preds = %if.end111
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %57)
  %cmp121 = icmp eq i8 %57, 45
  br i1 %cmp121, label %land.lhs.true123, label %if.end118.if.end139_crit_edge

if.end118.if.end139_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end139

land.lhs.true123:                                 ; preds = %if.end118
  %arrayidx124 = getelementptr i8, ptr %53, i32 1
  %58 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx124, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool126.not = icmp ne i8 %59, 0
  %60 = add i8 %59, -58
  call void @__sanitizer_cov_trace_const_cmp1(i8 -10, i8 %60)
  %61 = icmp ult i8 %60, -10
  %or.cond334 = and i1 %tobool126.not, %61
  br i1 %or.cond334, label %if.then137, label %land.lhs.true123.if.end139_crit_edge

land.lhs.true123.if.end139_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end139

if.then137:                                       ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #18
  store ptr %arrayidx124, ptr @kdb_parse.argv, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then137, %land.lhs.true123.if.end139_crit_edge, %if.end118.if.end139_crit_edge
  %tobool212.not = phi i1 [ false, %if.then137 ], [ true, %land.lhs.true123.if.end139_crit_edge ], [ true, %if.end118.if.end139_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %if.end158.for.cond_crit_edge, %if.end139
  %.pn.in = phi ptr [ @kdb_cmds_head, %if.end139 ], [ %.pn, %if.end158.for.cond_crit_edge ]
  %62 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn = load ptr, ptr %.pn.in, align 4
  %tp.0 = getelementptr i8, ptr %.pn, i32 -24
  %cmp140 = icmp eq ptr %.pn, @kdb_cmds_head
  br i1 %cmp140, label %for.cond.for.cond176_crit_edge, label %for.body

for.cond.for.cond176_crit_edge:                   ; preds = %for.cond
  br label %for.cond176

for.body:                                         ; preds = %for.cond
  %minlen = getelementptr i8, ptr %.pn, i32 -8
  %63 = ptrtoint ptr %minlen to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %minlen, align 4
  %conv143 = sext i16 %64 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool144.not = icmp eq i16 %64, 0
  br i1 %tobool144.not, label %for.body.if.end158_crit_edge, label %land.lhs.true145

for.body.if.end158_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end158

land.lhs.true145:                                 ; preds = %for.body
  %65 = load ptr, ptr @kdb_parse.argv, align 4
  %call146 = tail call i32 @strlen(ptr noundef %65) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call146, i32 %conv143)
  %cmp149.not = icmp ugt i32 %call146, %conv143
  br i1 %cmp149.not, label %land.lhs.true145.if.end158_crit_edge, label %land.lhs.true151

land.lhs.true145.if.end158_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end158

land.lhs.true151:                                 ; preds = %land.lhs.true145
  %66 = ptrtoint ptr %tp.0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tp.0, align 4
  %call154 = tail call i32 @strncmp(ptr noundef %65, ptr noundef %67, i32 noundef %conv143)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %cmp155 = icmp eq i32 %call154, 0
  br i1 %cmp155, label %land.lhs.true151.if.end197_crit_edge, label %land.lhs.true151.if.end158_crit_edge

land.lhs.true151.if.end158_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end158

land.lhs.true151.if.end197_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end197

if.end158:                                        ; preds = %land.lhs.true151.if.end158_crit_edge, %land.lhs.true145.if.end158_crit_edge, %for.body.if.end158_crit_edge
  %68 = load ptr, ptr @kdb_parse.argv, align 4
  %69 = ptrtoint ptr %tp.0 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tp.0, align 4
  %call160 = tail call i32 @strcmp(ptr noundef %68, ptr noundef %70) #19
  %cmp161 = icmp eq i32 %call160, 0
  br i1 %cmp161, label %if.end158.if.end197_crit_edge, label %if.end158.for.cond_crit_edge

if.end158.for.cond_crit_edge:                     ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.end158.if.end197_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end197

for.cond176:                                      ; preds = %for.body181.for.cond176_crit_edge, %for.cond.for.cond176_crit_edge
  %.pn310.in = phi ptr [ %.pn310, %for.body181.for.cond176_crit_edge ], [ @kdb_cmds_head, %for.cond.for.cond176_crit_edge ]
  %71 = ptrtoint ptr %.pn310.in to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn310 = load ptr, ptr %.pn310.in, align 4
  %tp.1 = getelementptr i8, ptr %.pn310, i32 -24
  %cmp178.not = icmp eq ptr %.pn310, @kdb_cmds_head
  br i1 %cmp178.not, label %for.cond176.if.end197_crit_edge, label %for.body181

for.cond176.if.end197_crit_edge:                  ; preds = %for.cond176
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end197

for.body181:                                      ; preds = %for.cond176
  %72 = load ptr, ptr @kdb_parse.argv, align 4
  %73 = ptrtoint ptr %tp.1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tp.1, align 4
  %call184 = tail call i32 @strlen(ptr noundef %74) #19
  %call185 = tail call i32 @strncmp(ptr noundef %72, ptr noundef %74, i32 noundef %call184)
  %cmp186 = icmp eq i32 %call185, 0
  br i1 %cmp186, label %for.body181.if.end197_crit_edge, label %for.body181.for.cond176_crit_edge

for.body181.for.cond176_crit_edge:                ; preds = %for.body181
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond176

for.body181.if.end197_crit_edge:                  ; preds = %for.body181
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end197

if.end197:                                        ; preds = %for.body181.if.end197_crit_edge, %for.cond176.if.end197_crit_edge, %if.end158.if.end197_crit_edge, %land.lhs.true151.if.end197_crit_edge
  %tp.2 = phi ptr [ %tp.1, %for.body181.if.end197_crit_edge ], [ %tp.1, %for.cond176.if.end197_crit_edge ], [ %tp.0, %if.end158.if.end197_crit_edge ], [ %tp.0, %land.lhs.true151.if.end197_crit_edge ]
  %list_node198 = getelementptr inbounds %struct._kdbtab, ptr %tp.2, i32 0, i32 6
  %cmp199 = icmp eq ptr %list_node198, @kdb_cmds_head
  br i1 %cmp199, label %if.end232, label %if.then201

if.then201:                                       ; preds = %if.end197
  %flags = getelementptr inbounds %struct._kdbtab, ptr %tp.2, i32 0, i32 5
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags, align 4
  %77 = load i32, ptr @kdb_cmd_enabled, align 4
  %78 = load i32, ptr @kdb_parse.argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %cmp203 = icmp slt i32 %78, 2
  %and.i = and i32 %77, 511
  %or.i = or i32 %and.i, 512
  %shl.i = shl nuw nsw i32 %or.i, 10
  %or1.i = select i1 %cmp203, i32 %shl.i, i32 0
  %permissions.addr.0.i = or i32 %or1.i, %or.i
  %or2.i = or i32 %76, 1
  %and3.i = and i32 %permissions.addr.0.i, %or2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i.not = icmp eq i32 %and3.i, 0
  br i1 %tobool4.i.not, label %if.then201.cleanup244_crit_edge, label %if.end207

if.then201.cleanup244_crit_edge:                  ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup244

if.end207:                                        ; preds = %if.then201
  %79 = load i32, ptr @kdb_state, align 4
  %or208 = or i32 %79, 4
  store i32 %or208, ptr @kdb_state, align 4
  %func = getelementptr inbounds %struct._kdbtab, ptr %tp.2, i32 0, i32 1
  %80 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %func, align 4
  %sub = add i32 %78, -1
  %call209 = tail call i32 %81(i32 noundef %sub, ptr noundef nonnull @kdb_parse.argv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  %brmerge = or i1 %tobool212.not, %tobool210.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1001, i32 %call209)
  %cmp214 = icmp sgt i32 %call209, -1001
  %spec.store.select = select i1 %cmp214, i32 0, i32 %call209
  %result202.0 = select i1 %brmerge, i32 %call209, i32 %spec.store.select
  %82 = load i32, ptr @kdb_state, align 4
  %and218 = and i32 %82, -5
  store i32 %and218, ptr @kdb_state, align 4
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %tobool221.not = icmp sgt i32 %84, -1
  br i1 %tobool221.not, label %if.end223, label %if.end207.cleanup244_crit_edge

if.end207.cleanup244_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup244

if.end223:                                        ; preds = %if.end207
  %and225 = lshr i32 %84, 30
  store i32 %and225, ptr @kdb_parse.argc, align 4
  %arrayidx227 = getelementptr [20 x ptr], ptr @kdb_parse.argv, i32 0, i32 %and225
  %85 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx227, align 4
  %tobool228.not = icmp eq ptr %86, null
  br i1 %tobool228.not, label %if.end223.cleanup244_crit_edge, label %if.then229

if.end223.cleanup244_crit_edge:                   ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup244

if.then229:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #18
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %86, align 1
  br label %cleanup244

if.end232:                                        ; preds = %if.end197
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #16
  %88 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %value, align 4, !annotation !658
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name233) #16
  %89 = ptrtoint ptr %name233 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %name233, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #16
  %90 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %offset, align 4, !annotation !658
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextarg) #16
  %91 = ptrtoint ptr %nextarg to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %nextarg, align 4
  %call234 = call i32 @kdbgetaddrarg(i32 noundef 0, ptr noundef nonnull @kdb_parse.argv, ptr noundef nonnull %nextarg, ptr noundef nonnull %value, ptr noundef nonnull %offset, ptr noundef nonnull %name233)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %if.end237, label %if.end232.cleanup240_crit_edge

if.end232.cleanup240_crit_edge:                   ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup240

if.end237:                                        ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #18
  %92 = load ptr, ptr @kdb_parse.argv, align 4
  %call238 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.7, ptr noundef %92) #16
  %93 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %value, align 4
  call void @kdb_symbol_print(i32 noundef %94, ptr noundef null, i32 noundef 12) #16
  %call239 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.8) #16
  br label %cleanup240

cleanup240:                                       ; preds = %if.end237, %if.end232.cleanup240_crit_edge
  %retval.1 = phi i32 [ 0, %if.end237 ], [ -1, %if.end232.cleanup240_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextarg) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name233) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #16
  br label %cleanup244

cleanup244:                                       ; preds = %cleanup240, %if.then229, %if.end223.cleanup244_crit_edge, %if.end207.cleanup244_crit_edge, %if.then201.cleanup244_crit_edge, %if.then116, %if.then113.cleanup244_crit_edge, %if.end105.thread.cleanup244_crit_edge, %if.end105.cleanup244_crit_edge, %if.then40, %if.then36
  %retval.2 = phi i32 [ %retval.1, %cleanup240 ], [ -1, %if.then36 ], [ -1, %if.then40 ], [ 0, %if.end105.cleanup244_crit_edge ], [ %call114, %if.then116 ], [ %call114, %if.then113.cleanup244_crit_edge ], [ -22, %if.then201.cleanup244_crit_edge ], [ %result202.0, %if.end207.cleanup244_crit_edge ], [ %result202.0, %if.then229 ], [ %result202.0, %if.end223.cleanup244_crit_edge ], [ 0, %if.end105.thread.cleanup244_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kdb_defcmd2(ptr noundef %cmdstr, ptr nocapture noundef readonly %argv0) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @kdb_macro, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef %argv0, ptr noundef nonnull dereferenceable(9) @.str.43) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.end
  store i1 false, ptr @defcmd_in_progress, align 1
  %statements = getelementptr inbounds %struct.kdb_macro, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %statements to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %statements, align 4
  %cmp.i.not = icmp eq ptr %2, %statements
  br i1 %cmp.i.not, label %if.then1.cleanup_crit_edge, label %if.then1.for.cond.i_crit_edge

if.then1.for.cond.i_crit_edge:                    ; preds = %if.then1
  br label %for.cond.i

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then1.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @kdb_cmds_head, %if.then1.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @kdb_cmds_head
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %kp.0.i = getelementptr i8, ptr %.pn.i, i32 -24
  %4 = ptrtoint ptr %kp.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kp.0.i, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %5, ptr noundef %7) #20
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %func.i = getelementptr inbounds %struct._kdbtab, ptr %0, i32 0, i32 1
  %8 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func.i, align 4
  %help.i = getelementptr inbounds %struct._kdbtab, ptr %0, i32 0, i32 3
  %10 = ptrtoint ptr %help.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %help.i, align 4
  %call4.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.28, ptr noundef %7, ptr noundef %9, ptr noundef %11) #16
  br label %cleanup

for.end.i:                                        ; preds = %for.cond.i
  %list_node9.i = getelementptr inbounds %struct._kdbtab, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @kdb_cmds_head, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_node9.i, ptr noundef %12, ptr noundef nonnull @kdb_cmds_head) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  store ptr %list_node9.i, ptr getelementptr inbounds (%struct.list_head, ptr @kdb_cmds_head, i32 0, i32 1), align 4
  %13 = ptrtoint ptr %list_node9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @kdb_cmds_head, ptr %list_node9.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct._kdbtab, ptr %0, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list_node9.i, ptr %12, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !659
  %and.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not = icmp eq i32 %and.i, 0
  br i1 %tobool18.not, label %if.end7.land.end_crit_edge, label %land.rhs

if.end7.land.end_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

land.rhs:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %17 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i62 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i62 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %21 = load volatile i32, ptr @kgdb_active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %21)
  %cmp21 = icmp eq i32 %20, %21
  %phi.sel = select i1 %cmp21, i32 2592, i32 3264
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end7.land.end_crit_edge
  %22 = phi i32 [ 3264, %if.end7.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef %22, i32 noundef 12) #21
  %tobool24.not = icmp eq ptr %call7.i, null
  br i1 %tobool24.not, label %if.then25, label %if.end27

if.then25:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #18
  %call26 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.44, ptr noundef %cmdstr) #16
  br label %cleanup

if.end27:                                         ; preds = %land.end
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !659
  %and.i63 = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool46.not = icmp eq i32 %and.i63, 0
  br i1 %tobool46.not, label %if.end27.land.end53_crit_edge, label %land.rhs47

if.end27.land.end53_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end53

land.rhs47:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %25 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i64 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i64 to ptr
  %cpu49 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu49, align 4
  %call.i.i61 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %29 = load volatile i32, ptr @kgdb_active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %29)
  %cmp51 = icmp eq i32 %28, %29
  %phi.sel60 = select i1 %cmp51, i32 2592, i32 3264
  br label %land.end53

land.end53:                                       ; preds = %land.rhs47, %if.end27.land.end53_crit_edge
  %30 = phi i32 [ 3264, %if.end27.land.end53_crit_edge ], [ %phi.sel60, %land.rhs47 ]
  %call55 = tail call ptr @kdb_strdup(ptr noundef %cmdstr, i32 noundef %30) #16
  %31 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call55, ptr %call7.i, align 8
  %list_node = getelementptr inbounds %struct.kdb_macro_statement, ptr %call7.i, i32 0, i32 1
  %32 = load ptr, ptr @kdb_macro, align 4
  %statements56 = getelementptr inbounds %struct.kdb_macro, ptr %32, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.kdb_macro, ptr %32, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %call.i.i65 = tail call zeroext i1 @__list_add_valid(ptr noundef %list_node, ptr noundef %34, ptr noundef %statements56) #16
  br i1 %call.i.i65, label %if.end.i.i, label %land.end53.cleanup_crit_edge

land.end53.cleanup_crit_edge:                     ; preds = %land.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %land.end53
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list_node, ptr %prev.i, align 4
  %36 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %statements56, ptr %list_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.kdb_macro_statement, ptr %call7.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i, align 8
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %list_node, ptr %34, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %land.end53.cleanup_crit_edge, %if.then25, %if.end.i.i.i, %for.end.i.cleanup_crit_edge, %if.then.i, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -7, %if.then25 ], [ -7, %entry.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %for.end.i.cleanup_crit_edge ], [ 0, %if.end.i.i.i ], [ 0, %land.end53.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kdb_symbol_print(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kdb_print_state(ptr noundef %text, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %4 = load i32, ptr @kdb_initial_cpu, align 4
  %5 = load i32, ptr @kdb_state, align 4
  %call1 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.9, ptr noundef %text, i32 noundef %3, i32 noundef %value, i32 noundef %4, i32 noundef %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdb_main_loop(i32 noundef %reason, i32 noundef %reason2, i32 noundef %error, i32 noundef %db_result, ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @kdb_flags, align 4
  %and = and i32 %0, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu.i, align 4
  %5 = load i32, ptr @kdb_initial_cpu, align 4
  %6 = load i32, ptr @kdb_state, align 4
  %call1.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %4, i32 noundef %reason, i32 noundef %5, i32 noundef %6) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %kdb_state.promoted = load i32, ptr @kdb_state, align 4
  %and280 = and i32 %kdb_state.promoted, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and280)
  %tobool3.not81 = icmp eq i32 %and280, 0
  br i1 %tobool3.not81, label %if.end.while.end_crit_edge, label %while.body4.preheader

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body4.preheader:                            ; preds = %if.end
  %7 = or i32 %kdb_state.promoted, 1
  %and2 = and i32 %kdb_state.promoted, 16
  %tobool3.not = icmp eq i32 %and2, 0
  br label %while.body4

while.body4:                                      ; preds = %while.body4.while.body4_crit_edge, %while.body4.preheader
  br i1 %tobool3.not, label %while.body4.while.end_crit_edge, label %while.body4.while.body4_crit_edge

while.body4.while.body4_crit_edge:                ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body4

while.body4.while.end_crit_edge:                  ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %while.body4.while.end_crit_edge, %if.end.while.end_crit_edge
  %.lcssa77 = phi i32 [ %kdb_state.promoted, %if.end.while.end_crit_edge ], [ %7, %while.body4.while.end_crit_edge ]
  %and9 = and i32 %.lcssa77, -513
  store i32 %and9, ptr @kdb_state, align 4
  %8 = load i32, ptr @kdb_flags, align 4
  %and10 = and i32 %8, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %while.end.if.end13_crit_edge, label %if.then12

while.end.if.end13_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then12:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i.i63 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i63 to ptr
  %cpu.i64 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i64 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i64, align 4
  %13 = load i32, ptr @kdb_initial_cpu, align 4
  %call1.i65 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %12, i32 noundef %reason, i32 noundef %13, i32 noundef %and9) #16
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %while.end.if.end13_crit_edge
  %14 = load i32, ptr @kdb_state, align 4
  %and14 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.while.end47_crit_edge

if.end13.while.end47_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end47

if.end17:                                         ; preds = %if.end13
  %15 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i.i66 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i66 to ptr
  %cpu.i67 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i67 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i67, align 4
  %call.i.i = tail call ptr @curr_task(i32 noundef %18) #16
  %19 = load i32, ptr @kdb_flags, align 4
  %and.i = and i32 %19, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end17.if.end.i_crit_edge, label %if.then.i

if.end17.if.end.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %20 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i.i, align 4
  %24 = load i32, ptr @kdb_initial_cpu, align 4
  %25 = load i32, ptr @kdb_state, align 4
  %call1.i.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.45, i32 noundef %23, i32 noundef %reason2, i32 noundef %24, i32 noundef %25) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end17.if.end.i_crit_edge
  store i32 0, ptr @kdb_go_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %reason2)
  %cond2.i = icmp eq i32 %reason2, 4
  br i1 %cond2.i, label %sw.bb.i, label %if.else.i

if.else.i:                                        ; preds = %if.end.i
  %tobool3.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i, label %if.else.i.cond.end.i_crit_edge, label %cond.true.i

if.else.i.cond.end.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 68
  %26 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.else.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %27, %cond.true.i ], [ 0, %if.else.i.cond.end.i_crit_edge ]
  %call4.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.46, ptr noundef %call.i.i, i32 noundef %cond.i) #16
  %28 = ptrtoint ptr %cpu.i67 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i67, align 4
  %call7.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.47, i32 noundef %29) #16
  %30 = zext i32 %reason2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.290)
  switch i32 %reason2, label %sw.default63.i [
    i32 9, label %sw.bb59.i
    i32 1, label %sw.bb22.i
    i32 7, label %sw.bb30.i
    i32 2, label %cond.end.i.sw.bb32.i_crit_edge
    i32 6, label %cond.end.i.sw.bb32.i_crit_edge97
    i32 5, label %sw.bb34.i
    i32 11, label %sw.bb39.i
    i32 8, label %sw.bb41.i
    i32 10, label %cond.end.i.sw.bb45.i_crit_edge
    i32 3, label %cond.end.i.sw.bb45.i_crit_edge98
  ]

cond.end.i.sw.bb45.i_crit_edge98:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb45.i

cond.end.i.sw.bb45.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb45.i

cond.end.i.sw.bb32.i_crit_edge97:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb32.i

cond.end.i.sw.bb32.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb32.i

sw.bb.i:                                          ; preds = %if.end.i
  %31 = zext i32 %db_result to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.291)
  switch i32 %db_result, label %sw.default.i [
    i32 0, label %sw.bb9.i
    i32 1, label %sw.bb.i.while.cond.i.preheader_crit_edge
    i32 2, label %sw.bb16.i
  ]

sw.bb.i.while.cond.i.preheader_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %sw.bb59.i, %sw.bb45.i.while.cond.i.preheader_crit_edge, %sw.bb41.i, %sw.bb39.i, %sw.bb34.i, %sw.bb32.i, %sw.bb30.i, %if.else27.i, %if.then25.i, %sw.default.i, %sw.bb9.i, %sw.bb.i.while.cond.i.preheader_crit_edge
  br label %while.cond.i

sw.bb9.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  %pid10.i = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 68
  %32 = ptrtoint ptr %pid10.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid10.i, align 8
  %call11.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.48, ptr noundef %call.i.i, i32 noundef %33) #16
  %34 = ptrtoint ptr %cpu.i67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i67, align 4
  %call14.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.47, i32 noundef %35) #16
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  %call15.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.49, i32 noundef %37) #16
  br label %while.cond.i.preheader

sw.bb16.i:                                        ; preds = %sw.bb.i
  %38 = load i32, ptr @kdb_flags, align 4
  %and17.i = and i32 %38, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %sw.bb16.i.kdb_local.exit_crit_edge, label %if.then19.i

sw.bb16.i.kdb_local.exit_crit_edge:               ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kdb_local.exit

if.then19.i:                                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #18
  %39 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i.i3.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i3.i to ptr
  %cpu.i4.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu.i4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i4.i, align 4
  %43 = load i32, ptr @kdb_initial_cpu, align 4
  %44 = load i32, ptr @kdb_state, align 4
  %call1.i5.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.50, i32 noundef %42, i32 noundef 4, i32 noundef %43, i32 noundef %44) #16
  br label %kdb_local.exit

sw.default.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  %call21.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.51, i32 noundef %db_result) #16
  br label %while.cond.i.preheader

sw.bb22.i:                                        ; preds = %cond.end.i
  %45 = load i32, ptr @kdb_state, align 4
  %and23.i = and i32 %45, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.else27.i, label %if.then25.i

if.then25.i:                                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #18
  %call26.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.52) #16
  br label %while.cond.i.preheader

if.else27.i:                                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #18
  %call28.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.53) #16
  br label %while.cond.i.preheader

sw.bb30.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %46 = load i32, ptr @kdb_state, align 4
  %or.i = or i32 %46, 131072
  store i32 %or.i, ptr @kdb_state, align 4
  %call31.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.52) #16
  br label %while.cond.i.preheader

sw.bb32.i:                                        ; preds = %cond.end.i.sw.bb32.i_crit_edge, %cond.end.i.sw.bb32.i_crit_edge97
  %call33.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.54) #16
  br label %while.cond.i.preheader

sw.bb34.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %47 = load ptr, ptr @kdb_diemsg, align 4
  %call35.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.55, ptr noundef %47) #16
  %arrayidx37.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %48 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx37.i, align 4
  %call38.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.56, i32 noundef %49) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  %50 = load i32, ptr @console_printk, align 4
  store i32 15, ptr @console_printk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_trap_printk to i32))
  %51 = load i32, ptr @kdb_trap_printk, align 4
  %inc.i.i = add i32 %51, 1
  store i32 %inc.i.i, ptr @kdb_trap_printk, align 4
  tail call void @show_regs(ptr noundef %regs) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_trap_printk to i32))
  %52 = load i32, ptr @kdb_trap_printk, align 4
  %dec.i.i = add i32 %52, -1
  store i32 %dec.i.i, ptr @kdb_trap_printk, align 4
  %call.i6.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.8) #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  store i32 %50, ptr @console_printk, align 4
  br label %while.cond.i.preheader

sw.bb39.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call40.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.57) #16
  br label %while.cond.i.preheader

sw.bb41.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx43.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %53 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx43.i, align 4
  %call44.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.58, i32 noundef %54) #16
  br label %while.cond.i.preheader

sw.bb45.i:                                        ; preds = %cond.end.i.sw.bb45.i_crit_edge, %cond.end.i.sw.bb45.i_crit_edge98
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reason2)
  %cmp46.i = icmp eq i32 %reason2, 3
  %cond47.i = select i1 %cmp46.i, ptr @.str.60, ptr @.str.61
  %arrayidx49.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %55 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx49.i, align 4
  %call50.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.59, ptr noundef nonnull %cond47.i, i32 noundef %56) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %db_result)
  %cmp51.not.i = icmp eq i32 %db_result, 0
  br i1 %cmp51.not.i, label %sw.bb45.i.while.cond.i.preheader_crit_edge, label %if.then52.i

sw.bb45.i.while.cond.i.preheader_crit_edge:       ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.preheader

if.then52.i:                                      ; preds = %sw.bb45.i
  %call53.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.62, i32 noundef %db_result) #16
  %57 = load i32, ptr @kdb_flags, align 4
  %and54.i = and i32 %57, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.then52.i.kdb_local.exit_crit_edge, label %if.then56.i

if.then52.i.kdb_local.exit_crit_edge:             ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kdb_local.exit

if.then56.i:                                      ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #18
  %58 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i.i7.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i7.i to ptr
  %cpu.i8.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %cpu.i8.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu.i8.i, align 4
  %62 = load i32, ptr @kdb_initial_cpu, align 4
  %63 = load i32, ptr @kdb_state, align 4
  %call1.i9.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.63, i32 noundef %61, i32 noundef %reason2, i32 noundef %62, i32 noundef %63) #16
  br label %kdb_local.exit

sw.bb59.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx61.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %64 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx61.i, align 4
  %call62.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.64, i32 noundef %65) #16
  br label %while.cond.i.preheader

sw.default63.i:                                   ; preds = %cond.end.i
  %call64.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.65, i32 noundef %reason2) #16
  %66 = load i32, ptr @kdb_flags, align 4
  %and65.i = and i32 %66, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %sw.default63.i.kdb_local.exit_crit_edge, label %if.then67.i

sw.default63.i.kdb_local.exit_crit_edge:          ; preds = %sw.default63.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kdb_local.exit

if.then67.i:                                      ; preds = %sw.default63.i
  call void @__sanitizer_cov_trace_pc() #18
  %67 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i.i10.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i10.i to ptr
  %cpu.i11.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %cpu.i11.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cpu.i11.i, align 4
  %71 = load i32, ptr @kdb_initial_cpu, align 4
  %72 = load i32, ptr @kdb_state, align 4
  %call1.i12.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.66, i32 noundef %70, i32 noundef %reason2, i32 noundef %71, i32 noundef %72) #16
  br label %kdb_local.exit

while.cond.i:                                     ; preds = %while.cond.i.backedge, %while.cond.i.preheader
  store i32 1, ptr @kdb_nextline, align 4
  %73 = load i32, ptr @kdb_state, align 4
  %and70.i = and i32 %73, -513
  store i32 %and70.i, ptr @kdb_state, align 4
  store i32 0, ptr @kdb_grepping_flag, align 4
  store i8 0, ptr @kdb_grep_string, align 1
  store i8 0, ptr @cmd_cur, align 1
  %74 = load i32, ptr @cmd_head, align 4
  %arrayidx71.i = getelementptr [32 x [200 x i8]], ptr @cmd_hist, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx71.i, align 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.backedge, %while.cond.i
  %i.030.i.i = phi i32 [ 0, %while.cond.i ], [ %i.030.i.i.be, %for.body.i.i.backedge ]
  %ep.029.i.i = phi ptr [ @__env, %while.cond.i ], [ %ep.029.i.i.be, %for.body.i.i.backedge ]
  %incdec.ptr.i.i = getelementptr ptr, ptr %ep.029.i.i, i32 1
  %76 = ptrtoint ptr %ep.029.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ep.029.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %call1.i14.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.1, ptr noundef nonnull %77, i32 noundef 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14.i)
  %cmp2.i.i = icmp eq i32 %call1.i14.i, 0
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr i8, ptr %77, i32 6
  %78 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i.i, align 1
  %80 = zext i8 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.292)
  switch i8 %79, label %land.lhs.true.i.i.for.inc.i.i_crit_edge [
    i8 0, label %land.lhs.true.i.i.cleanup.i.i_crit_edge
    i8 61, label %land.lhs.true.i.i.cleanup.i.i_crit_edge99
  ]

land.lhs.true.i.i.cleanup.i.i_crit_edge99:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

land.lhs.true.i.i.cleanup.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

cleanup.i.i:                                      ; preds = %land.lhs.true.i.i.cleanup.i.i_crit_edge, %land.lhs.true.i.i.cleanup.i.i_crit_edge99
  %call10.i.i = tail call ptr @strchr(ptr noundef nonnull %77, i32 noundef 61) #16
  %tobool11.not.i.i = icmp eq ptr %call10.i.i, null
  %incdec.ptr12.i.i = getelementptr i8, ptr %call10.i.i, i32 1
  %spec.select.i.i = select i1 %tobool11.not.i.i, ptr @.str, ptr %incdec.ptr12.i.i
  br label %kdbgetenv.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i15.i = add nuw nsw i32 %i.030.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %inc.i15.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i15.i, 31
  br i1 %exitcond.not.i.i, label %for.inc.i.i.kdbgetenv.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i.backedge_crit_edge

for.inc.i.i.for.body.i.i.backedge_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.backedge

for.inc.i.i.kdbgetenv.exit.i_crit_edge:           ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kdbgetenv.exit.i

for.body.i.i.backedge:                            ; preds = %if.then103.i, %handle_ctrl_cmd.exit.i, %for.inc.i.i.for.body.i.i.backedge_crit_edge
  %i.030.i.i.be = phi i32 [ %inc.i15.i, %for.inc.i.i.for.body.i.i.backedge_crit_edge ], [ 0, %if.then103.i ], [ 0, %handle_ctrl_cmd.exit.i ]
  %ep.029.i.i.be = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i.backedge_crit_edge ], [ @__env, %if.then103.i ], [ @__env, %handle_ctrl_cmd.exit.i ]
  br label %for.body.i.i

kdbgetenv.exit.i:                                 ; preds = %for.inc.i.i.kdbgetenv.exit.i_crit_edge, %cleanup.i.i
  %retval.2.i.i = phi ptr [ %spec.select.i.i, %cleanup.i.i ], [ null, %for.inc.i.i.kdbgetenv.exit.i_crit_edge ]
  %81 = ptrtoint ptr %cpu.i67 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cpu.i67, align 4
  %call75.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @kdb_prompt_str, i32 noundef 200, ptr noundef %retval.2.i.i, i32 noundef %82) #16
  %.b1.i = load i1, ptr @defcmd_in_progress, align 1
  br i1 %.b1.i, label %if.then77.i, label %kdbgetenv.exit.i.if.end79.i_crit_edge

kdbgetenv.exit.i.if.end79.i_crit_edge:            ; preds = %kdbgetenv.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

if.then77.i:                                      ; preds = %kdbgetenv.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %strlen.i = tail call i32 @strlen(ptr nonnull @kdb_prompt_str) #20
  %endptr.i = getelementptr i8, ptr @kdb_prompt_str, i32 %strlen.i
  %83 = call ptr @memcpy(ptr %endptr.i, ptr @.str.67, i32 9)
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then77.i, %kdbgetenv.exit.i.if.end79.i_crit_edge
  %call80.i = tail call ptr @kdb_getstr(ptr noundef nonnull @cmd_cur, i32 noundef 200, ptr noundef nonnull @kdb_prompt_str) #16
  %84 = ptrtoint ptr %call80.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %call80.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %85)
  %cmp81.not.i = icmp eq i8 %85, 10
  br i1 %cmp81.not.i, label %if.end79.i.if.end119.i_crit_edge, label %if.then83.i

if.end79.i.if.end119.i_crit_edge:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end119.i

if.then83.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %85)
  %cmp85.i = icmp ult i8 %85, 32
  br i1 %cmp85.i, label %if.then87.i, label %if.else108.i

if.then87.i:                                      ; preds = %if.then83.i
  %86 = load i32, ptr @cmdptr, align 4
  %87 = load i32, ptr @cmd_head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %87)
  %cmp88.i = icmp eq i32 %86, %87
  br i1 %cmp88.i, label %if.then90.i, label %if.then87.i.if.end100.i_crit_edge

if.then87.i.if.end100.i_crit_edge:                ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end100.i

if.then90.i:                                      ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx91.i = getelementptr [32 x [200 x i8]], ptr @cmd_hist, i32 0, i32 %86
  %call93.i = tail call i32 @strscpy(ptr noundef %arrayidx91.i, ptr noundef nonnull @cmd_cur, i32 noundef 200) #16
  %88 = load i32, ptr @cmd_head, align 4
  %arrayidx94.i = getelementptr [32 x [200 x i8]], ptr @cmd_hist, i32 0, i32 %88
  %call98.i = tail call i32 @strlen(ptr noundef %arrayidx94.i) #20
  %add.ptr.i = getelementptr i8, ptr %arrayidx94.i, i32 -1
  %add.ptr99.i = getelementptr i8, ptr %add.ptr.i, i32 %call98.i
  %89 = ptrtoint ptr %add.ptr99.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %add.ptr99.i, align 1
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.then90.i, %if.then87.i.if.end100.i_crit_edge
  %90 = load i32, ptr @cmd_head, align 4
  %91 = load i32, ptr @cmd_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %91)
  %cmp.i.i = icmp eq i32 %90, %91
  br i1 %cmp.i.i, label %if.end100.i.if.then103.i_crit_edge, label %if.end.i16.i

if.end100.i.if.then103.i_crit_edge:               ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then103.i

if.end.i16.i:                                     ; preds = %if.end100.i
  %92 = ptrtoint ptr %call80.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %call80.i, align 1
  %94 = zext i8 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.293)
  switch i8 %93, label %if.end.i16.i.if.then103.i_crit_edge [
    i8 16, label %sw.bb.i.i
    i8 14, label %sw.bb5.i.i
  ]

if.end.i16.i.if.then103.i_crit_edge:              ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then103.i

sw.bb.i.i:                                        ; preds = %if.end.i16.i
  %95 = load i32, ptr @cmdptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %91)
  %cmp1.not.i.i = icmp eq i32 %95, %91
  br i1 %cmp1.not.i.i, label %sw.bb.i.i.handle_ctrl_cmd.exit.i_crit_edge, label %if.then3.i.i

sw.bb.i.i.handle_ctrl_cmd.exit.i_crit_edge:       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %handle_ctrl_cmd.exit.i

if.then3.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %95, 31
  br label %return.sink.split.sink.split.i.i

sw.bb5.i.i:                                       ; preds = %if.end.i16.i
  %96 = load i32, ptr @cmdptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %90)
  %cmp6.not.i.i = icmp eq i32 %96, %90
  br i1 %cmp6.not.i.i, label %sw.bb5.i.i.handle_ctrl_cmd.exit.i_crit_edge, label %if.then8.i.i

sw.bb5.i.i.handle_ctrl_cmd.exit.i_crit_edge:      ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %handle_ctrl_cmd.exit.i

if.then8.i.i:                                     ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %add9.i.i = add i32 %96, 1
  br label %return.sink.split.sink.split.i.i

return.sink.split.sink.split.i.i:                 ; preds = %if.then8.i.i, %if.then3.i.i
  %add9.sink.i.i = phi i32 [ %add9.i.i, %if.then8.i.i ], [ %sub.i.i, %if.then3.i.i ]
  %rem10.i.i = and i32 %add9.sink.i.i, 31
  store i32 %rem10.i.i, ptr @cmdptr, align 4
  br label %handle_ctrl_cmd.exit.i

handle_ctrl_cmd.exit.i:                           ; preds = %return.sink.split.sink.split.i.i, %sw.bb5.i.i.handle_ctrl_cmd.exit.i_crit_edge, %sw.bb.i.i.handle_ctrl_cmd.exit.i_crit_edge
  %97 = load i32, ptr @cmdptr, align 4
  %arrayidx12.i.i = getelementptr [32 x [200 x i8]], ptr @cmd_hist, i32 0, i32 %97
  %call14.i.i = tail call i32 @strscpy(ptr noundef nonnull @cmd_cur, ptr noundef %arrayidx12.i.i, i32 noundef 200) #16
  br label %for.body.i.i.backedge

if.then103.i:                                     ; preds = %if.end.i16.i.if.then103.i_crit_edge, %if.end100.i.if.then103.i_crit_edge
  %call104.i = tail call i32 @strlen(ptr noundef nonnull @cmd_cur) #20
  %add.ptr106.i = getelementptr i8, ptr getelementptr ([200 x i8], ptr @cmd_cur, i32 -1, i32 199), i32 %call104.i
  %98 = ptrtoint ptr %add.ptr106.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %add.ptr106.i, align 1
  br label %for.body.i.i.backedge

if.else108.i:                                     ; preds = %if.then83.i
  %99 = load i32, ptr @cmd_head, align 4
  %arrayidx109.i = getelementptr [32 x [200 x i8]], ptr @cmd_hist, i32 0, i32 %99
  %call111.i = tail call i32 @strscpy(ptr noundef %arrayidx109.i, ptr noundef nonnull @cmd_cur, i32 noundef 200) #16
  %100 = load i32, ptr @cmd_head, align 4
  %add.i = add i32 %100, 1
  %rem.i = and i32 %add.i, 31
  store i32 %rem.i, ptr @cmd_head, align 4
  %101 = load i32, ptr @cmd_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %101)
  %cmp113.i = icmp eq i32 %rem.i, %101
  br i1 %cmp113.i, label %if.then115.i, label %if.else108.i.if.end119.i_crit_edge

if.else108.i.if.end119.i_crit_edge:               ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end119.i

if.then115.i:                                     ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_pc() #18
  %add116.i = add i32 %100, 2
  %rem117.i = and i32 %add116.i, 31
  store i32 %rem117.i, ptr @cmd_tail, align 4
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then115.i, %if.else108.i.if.end119.i_crit_edge, %if.end79.i.if.end119.i_crit_edge
  %102 = load i32, ptr @cmd_head, align 4
  store i32 %102, ptr @cmdptr, align 4
  %call120.i = tail call i32 @kdb_parse(ptr noundef %call80.i) #16
  %103 = zext i32 %call120.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.294)
  switch i32 %call120.i, label %if.then139.i [
    i32 -1, label %if.then123.i
    i32 -1001, label %if.end119.i.while.end.i_crit_edge
    i32 -1002, label %if.end119.i.while.end.i_crit_edge100
    i32 -1003, label %if.end119.i.while.end.i_crit_edge101
    i32 -1005, label %if.end119.i.while.end.i_crit_edge102
    i32 0, label %if.end119.i.while.cond.i.backedge_crit_edge
  ]

if.end119.i.while.cond.i.backedge_crit_edge:      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.backedge

if.end119.i.while.end.i_crit_edge102:             ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end119.i.while.end.i_crit_edge101:             ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end119.i.while.end.i_crit_edge100:             ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end119.i.while.end.i_crit_edge:                ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.then123.i:                                     ; preds = %if.end119.i
  %call.i17.i = tail call i32 @strlen(ptr noundef %call80.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %cmp.i18.i = icmp eq i32 %call.i17.i, 0
  br i1 %cmp.i18.i, label %if.then123.i.if.end125.thread.i_crit_edge, label %if.end.i20.i

if.then123.i.if.end125.thread.i_crit_edge:        ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end125.thread.i

if.end.i20.i:                                     ; preds = %if.then123.i
  %add.ptr.i.i = getelementptr i8, ptr %call80.i, i32 -1
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %call.i17.i
  %104 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %add.ptr1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %105)
  %cmp2.i19.i = icmp eq i8 %105, 10
  br i1 %cmp2.i19.i, label %if.then4.i.i, label %if.end.i20.i.if.end125.thread.i_crit_edge

if.end.i20.i.if.end125.thread.i_crit_edge:        ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end125.thread.i

if.then4.i.i:                                     ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #18
  %106 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %add.ptr1.i.i, align 1
  br label %if.end125.thread.i

if.end125.thread.i:                               ; preds = %if.then4.i.i, %if.end.i20.i.if.end125.thread.i_crit_edge, %if.then123.i.if.end125.thread.i_crit_edge
  %call124.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.68, ptr noundef %call80.i) #16
  br label %while.cond.i.backedge

if.then139.i:                                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call120.i)
  %cmp.i22.i = icmp sgt i32 %call120.i, -1
  br i1 %cmp.i22.i, label %if.then.i.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -23, i32 %call120.i)
  %switch.i = icmp ugt i32 %call120.i, -23
  br i1 %switch.i, label %if.then3.i24.i, label %for.inc.21.i.i

if.then.i.i:                                      ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i23.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.70, i32 noundef %call120.i) #16
  br label %while.cond.i.backedge

if.then3.i24.i:                                   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %107 = xor i32 %call120.i, -1
  %km_msg.i.i = getelementptr [22 x %struct._kdbmsg], ptr @kdbmsgs, i32 0, i32 %107, i32 1
  %108 = ptrtoint ptr %km_msg.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %km_msg.i.i, align 4
  %call5.i.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.71, i32 noundef %call120.i, ptr noundef %109) #16
  br label %while.cond.i.backedge

for.inc.21.i.i:                                   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i25.i = sub i32 0, %call120.i
  %call7.i.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.72, i32 noundef %sub.i25.i) #16
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %for.inc.21.i.i, %if.then3.i24.i, %if.then.i.i, %if.end125.thread.i, %if.end119.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

while.end.i:                                      ; preds = %if.end119.i.while.end.i_crit_edge, %if.end119.i.while.end.i_crit_edge100, %if.end119.i.while.end.i_crit_edge101, %if.end119.i.while.end.i_crit_edge102
  %110 = load i32, ptr @kdb_flags, align 4
  %and141.i = and i32 %110, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141.i)
  %tobool142.not.i = icmp eq i32 %and141.i, 0
  br i1 %tobool142.not.i, label %while.end.i.kdb_local.exit_crit_edge, label %if.then143.i

while.end.i.kdb_local.exit_crit_edge:             ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kdb_local.exit

if.then143.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %111 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i.i27.i = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i27.i to ptr
  %cpu.i28.i = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %cpu.i28.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cpu.i28.i, align 4
  %115 = load i32, ptr @kdb_initial_cpu, align 4
  %116 = load i32, ptr @kdb_state, align 4
  %call1.i29.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.69, i32 noundef %114, i32 noundef %call120.i, i32 noundef %115, i32 noundef %116) #16
  br label %kdb_local.exit

kdb_local.exit:                                   ; preds = %if.then143.i, %while.end.i.kdb_local.exit_crit_edge, %if.then67.i, %sw.default63.i.kdb_local.exit_crit_edge, %if.then56.i, %if.then52.i.kdb_local.exit_crit_edge, %if.then19.i, %sw.bb16.i.kdb_local.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.then19.i ], [ 1, %sw.bb16.i.kdb_local.exit_crit_edge ], [ 0, %if.then56.i ], [ 0, %if.then52.i.kdb_local.exit_crit_edge ], [ 0, %if.then67.i ], [ 0, %sw.default63.i.kdb_local.exit_crit_edge ], [ %call120.i, %if.then143.i ], [ %call120.i, %while.end.i.kdb_local.exit_crit_edge ]
  %117 = load i32, ptr @kdb_flags, align 4
  %and18 = and i32 %117, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %kdb_local.exit.if.end21_crit_edge, label %if.then20

kdb_local.exit.if.end21_crit_edge:                ; preds = %kdb_local.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then20:                                        ; preds = %kdb_local.exit
  call void @__sanitizer_cov_trace_pc() #18
  %118 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i.i68 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i68 to ptr
  %cpu.i69 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %cpu.i69 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cpu.i69, align 4
  %122 = load i32, ptr @kdb_initial_cpu, align 4
  %123 = load i32, ptr @kdb_state, align 4
  %call1.i70 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef %121, i32 noundef %retval.0.i, i32 noundef %122, i32 noundef %123) #16
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %kdb_local.exit.if.end21_crit_edge
  %124 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.295)
  switch i32 %retval.0.i, label %if.then40 [
    i32 -1002, label %if.end21.while.end47_crit_edge
    i32 -1003, label %if.then25
    i32 -1005, label %if.then29
    i32 0, label %if.end21.if.end42_crit_edge
    i32 1, label %if.end21.if.end42_crit_edge103
    i32 -1001, label %if.end21.if.end42_crit_edge104
  ]

if.end21.if.end42_crit_edge104:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

if.end21.if.end42_crit_edge103:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

if.end21.if.end42_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

if.end21.while.end47_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end47

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %125 = load i32, ptr @kdb_state, align 4
  %or26 = or i32 %125, 32
  store i32 %or26, ptr @kdb_state, align 4
  br label %while.end47

if.then29:                                        ; preds = %if.end21
  %126 = load i32, ptr @kdb_state, align 4
  %and30 = and i32 %126, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then32, label %if.then29.while.end47_crit_edge

if.then29.while.end47_crit_edge:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end47

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  %call33 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.13) #16
  br label %while.end47

if.then40:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %call41 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.14, i32 noundef %retval.0.i) #16
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end21.if.end42_crit_edge, %if.end21.if.end42_crit_edge103, %if.end21.if.end42_crit_edge104
  %127 = load i32, ptr @kdb_flags, align 4
  %and43 = and i32 %127, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.while.end47_crit_edge, label %if.then45

if.end42.while.end47_crit_edge:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end47

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  %128 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i.i71 = and i32 %128, -16384
  %129 = inttoptr i32 %and.i.i71 to ptr
  %cpu.i72 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %cpu.i72 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cpu.i72, align 4
  %132 = load i32, ptr @kdb_initial_cpu, align 4
  %133 = load i32, ptr @kdb_state, align 4
  %call1.i73 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.15, i32 noundef %131, i32 noundef %reason, i32 noundef %132, i32 noundef %133) #16
  br label %while.end47

while.end47:                                      ; preds = %if.then45, %if.end42.while.end47_crit_edge, %if.then32, %if.then29.while.end47_crit_edge, %if.then25, %if.end21.while.end47_crit_edge, %if.end13.while.end47_crit_edge
  %result.0 = phi i32 [ 1, %if.end13.while.end47_crit_edge ], [ %retval.0.i, %if.end21.while.end47_crit_edge ], [ -1003, %if.then25 ], [ -1005, %if.then29.while.end47_crit_edge ], [ -1005, %if.then32 ], [ %retval.0.i, %if.then45 ], [ %retval.0.i, %if.end42.while.end47_crit_edge ]
  %134 = load i32, ptr @kdb_state, align 4
  %and48 = and i32 %134, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %while.end47.if.end52_crit_edge, label %if.then50

while.end47.if.end52_crit_edge:                   ; preds = %while.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

if.then50:                                        ; preds = %while.end47
  call void @__sanitizer_cov_trace_pc() #18
  %and51 = and i32 %134, -129
  store i32 %and51, ptr @kdb_state, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %while.end47.if.end52_crit_edge
  tail call void @kdb_kbd_cleanup_state() #16
  ret i32 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kdb_kbd_cleanup_state() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kdb_ps_suppressed() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call81 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call81, i32 %0)
  %cmp82 = icmp ult i32 %call81, %0
  br i1 %cmp82, label %entry.for.body_crit_edge, label %entry.for.cond3.preheader_crit_edge

entry.for.cond3.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond3.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond3.preheader:                              ; preds = %for.body.for.cond3.preheader_crit_edge, %entry.for.cond3.preheader_crit_edge
  %idle.0.lcssa = phi i32 [ 0, %entry.for.cond3.preheader_crit_edge ], [ %spec.select, %for.body.for.cond3.preheader_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %1 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr91 = getelementptr i8, ptr %1, i32 -1136
  %cmp5.not92 = icmp eq ptr %add.ptr91, @init_task
  br i1 %cmp5.not92, label %for.cond3.preheader.for.end44_crit_edge, label %for.cond3.preheader.do.body7_crit_edge

for.cond3.preheader.do.body7_crit_edge:           ; preds = %for.cond3.preheader
  br label %do.body7

for.cond3.preheader.for.end44_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end44

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call84 = phi i32 [ %call, %for.body.for.body_crit_edge ], [ %call81, %entry.for.body_crit_edge ]
  %idle.083 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call.i = tail call ptr @curr_task(i32 noundef %call84) #16
  %call2 = tail call zeroext i1 @kdb_task_state(ptr noundef %call.i, ptr noundef nonnull @.str.16) #16
  %inc = zext i1 %call2 to i32
  %spec.select = add i32 %idle.083, %inc
  %call = tail call i32 @cpumask_next(i32 noundef %call84, ptr noundef nonnull @__cpu_online_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %2
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond3.preheader_crit_edge

for.body.for.cond3.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond3.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.cond3.loopexit:                               ; preds = %for.body29.for.cond3.loopexit_crit_edge, %do.end16.for.cond3.loopexit_crit_edge
  %daemon.1.lcssa = phi i32 [ %daemon.093, %do.end16.for.cond3.loopexit_crit_edge ], [ %spec.select80, %for.body29.for.cond3.loopexit_crit_edge ]
  %3 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %5, align 16
  %add.ptr = getelementptr i8, ptr %4, i32 -1136
  %cmp5.not = icmp eq ptr %add.ptr, @init_task
  br i1 %cmp5.not, label %for.cond3.loopexit.for.end44_crit_edge, label %for.cond3.loopexit.do.body7_crit_edge

for.cond3.loopexit.do.body7_crit_edge:            ; preds = %for.cond3.loopexit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body7

for.cond3.loopexit.for.end44_crit_edge:           ; preds = %for.cond3.loopexit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end44

do.body7:                                         ; preds = %for.cond3.loopexit.do.body7_crit_edge, %for.cond3.preheader.do.body7_crit_edge
  %5 = phi ptr [ %4, %for.cond3.loopexit.do.body7_crit_edge ], [ %1, %for.cond3.preheader.do.body7_crit_edge ]
  %daemon.093 = phi i32 [ %daemon.1.lcssa, %for.cond3.loopexit.do.body7_crit_edge ], [ 0, %for.cond3.preheader.do.body7_crit_edge ]
  %call8 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body7.do.end16_crit_edge

do.body7.do.end16_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end16

land.lhs.true:                                    ; preds = %do.body7
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b79 = load i1, ptr @kdb_ps_suppressed.__warned, align 1
  br i1 %.b79, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @kdb_ps_suppressed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 2281, ptr noundef nonnull @.str.18) #16
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %do.body7.do.end16_crit_edge
  %signal = getelementptr i8, ptr %5, i32 544
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %thread_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn85 = load volatile ptr, ptr %thread_head, align 4
  %cmp28.not87 = icmp eq ptr %.pn85, %thread_head
  br i1 %cmp28.not87, label %do.end16.for.cond3.loopexit_crit_edge, label %do.end16.for.body29_crit_edge

do.end16.for.body29_crit_edge:                    ; preds = %do.end16
  br label %for.body29

do.end16.for.cond3.loopexit_crit_edge:            ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond3.loopexit

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %do.end16.for.body29_crit_edge
  %.pn89 = phi ptr [ %.pn, %for.body29.for.body29_crit_edge ], [ %.pn85, %do.end16.for.body29_crit_edge ]
  %daemon.188 = phi i32 [ %spec.select80, %for.body29.for.body29_crit_edge ], [ %daemon.093, %do.end16.for.body29_crit_edge ]
  %p.0 = getelementptr i8, ptr %.pn89, i32 -1404
  %call30 = tail call zeroext i1 @kdb_task_state(ptr noundef %p.0, ptr noundef nonnull @.str.19) #16
  %inc32 = zext i1 %call30 to i32
  %spec.select80 = add i32 %daemon.188, %inc32
  %9 = ptrtoint ptr %.pn89 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load volatile ptr, ptr %.pn89, align 4
  %10 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signal, align 16
  %thread_head27 = getelementptr inbounds %struct.signal_struct, ptr %11, i32 0, i32 3
  %cmp28.not = icmp eq ptr %.pn, %thread_head27
  br i1 %cmp28.not, label %for.body29.for.cond3.loopexit_crit_edge, label %for.body29.for.body29_crit_edge

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body29

for.body29.for.cond3.loopexit_crit_edge:          ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond3.loopexit

for.end44:                                        ; preds = %for.cond3.loopexit.for.end44_crit_edge, %for.cond3.preheader.for.end44_crit_edge
  %daemon.0.lcssa = phi i32 [ 0, %for.cond3.preheader.for.end44_crit_edge ], [ %daemon.1.lcssa, %for.cond3.loopexit.for.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idle.0.lcssa)
  %tobool45.not = icmp eq i32 %idle.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %daemon.0.lcssa)
  %tobool46.not = icmp eq i32 %daemon.0.lcssa, 0
  %or.cond = select i1 %tobool45.not, i1 %tobool46.not, i1 false
  br i1 %or.cond, label %for.end44.if.end62_crit_edge, label %if.then47

for.end44.if.end62_crit_edge:                     ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

if.then47:                                        ; preds = %for.end44
  br i1 %tobool45.not, label %if.then47.if.end54_crit_edge, label %if.then49

if.then47.if.end54_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54

if.then49:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %idle.0.lcssa)
  %cmp50 = icmp eq i32 %idle.0.lcssa, 1
  %cond = select i1 %cmp50, ptr @.str, ptr @.str.21
  %cond52 = select i1 %tobool46.not, ptr @.str, ptr @.str.22
  %call53 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.20, i32 noundef %idle.0.lcssa, ptr noundef nonnull %cond, ptr noundef nonnull %cond52) #16
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %if.then47.if.end54_crit_edge
  br i1 %tobool46.not, label %if.end54.if.end60_crit_edge, label %if.then56

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %daemon.0.lcssa)
  %cmp57 = icmp eq i32 %daemon.0.lcssa, 1
  %cond58 = select i1 %cmp57, ptr @.str, ptr @.str.21
  %call59 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.23, i32 noundef %daemon.0.lcssa, ptr noundef nonnull %cond58) #16
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.end54.if.end60_crit_edge
  %call61 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.24) #16
  br label %if.end62

if.end62:                                         ; preds = %if.end60, %for.end44.if.end62_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kdb_task_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kdb_ps1(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #16
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !658
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %tmp, ptr noundef nonnull %p, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 1
  %1 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stack.i.i, align 4
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %cpu.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %5) #16
  %pid = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %parent = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 72
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %pid3 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid3, align 8
  %call4 = call i32 @task_curr(ptr noundef nonnull %p) #16
  %12 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i.i, align 4
  %cpu.i.i46 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i.i46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %cpu.i.i46, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i145 = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %16) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %call4.i.i.i145)
  %cmp.i148 = icmp ugt i32 %15, %call4.i.i.i145
  %spec.select.i149 = select i1 %cmp.i148, i32 0, i32 %15
  %call6 = call zeroext i8 @kdb_task_state_char(ptr noundef nonnull %p) #16
  %conv = zext i8 %call6 to i32
  %thread = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 219
  %17 = call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %cpu8 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu8, align 4
  %call.i = call ptr @curr_task(i32 noundef %20) #16
  %cmp = icmp eq ptr %call.i, %p
  %cond = select i1 %cmp, i32 42, i32 32
  %comm = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 101
  %call11 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.25, ptr noundef nonnull %p, i32 noundef %7, i32 noundef %11, i32 noundef %call4, i32 noundef %spec.select.i149, i32 noundef %conv, ptr noundef %thread, i32 noundef %cond, ptr noundef %comm) #16
  %call12 = call i32 @task_curr(ptr noundef nonnull %p) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.then14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %call4.i.i.i)
  %cmp.i = icmp ugt i32 %4, %call4.i.i.i
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %4
  %task = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %spec.select.i, i32 1
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 4
  %tobool15.not = icmp eq ptr %22, null
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  %call17 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.26) #16
  br label %cleanup

if.else:                                          ; preds = %if.then14
  %cmp20.not = icmp eq ptr %22, %p
  br i1 %cmp20.not, label %if.else.cleanup_crit_edge, label %if.then22

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call25 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.27, ptr noundef nonnull %22) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.else.cleanup_crit_edge, %if.then16, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_curr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @kdb_task_state_char(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdb_register(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @kdb_cmds_head, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @kdb_cmds_head
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %kp.0 = getelementptr i8, ptr %.pn, i32 -24
  %1 = ptrtoint ptr %kp.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %kp.0, align 4
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd, align 4
  %call = tail call i32 @strcmp(ptr noundef %2, ptr noundef %4) #19
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %func = getelementptr inbounds %struct._kdbtab, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %func, align 4
  %help = getelementptr inbounds %struct._kdbtab, ptr %cmd, i32 0, i32 3
  %7 = ptrtoint ptr %help to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %help, align 4
  %call4 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.28, ptr noundef %4, ptr noundef %6, ptr noundef %8) #16
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %list_node9 = getelementptr inbounds %struct._kdbtab, ptr %cmd, i32 0, i32 6
  %9 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @kdb_cmds_head, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_node9, ptr noundef %9, ptr noundef nonnull @kdb_cmds_head) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  store ptr %list_node9, ptr getelementptr inbounds (%struct.list_head, ptr @kdb_cmds_head, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %list_node9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @kdb_cmds_head, ptr %list_node9, align 4
  %prev3.i.i = getelementptr inbounds %struct._kdbtab, ptr %cmd, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list_node9, ptr %9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %for.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kdb_register_table(ptr noundef %kp, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not2 = icmp eq i32 %len, 0
  br i1 %tobool.not2, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %len.addr.05 = phi i32 [ %dec, %list_add_tail.exit.while.body_crit_edge ], [ %len, %entry.while.body_crit_edge ]
  %kp.addr.03 = phi ptr [ %incdec.ptr, %list_add_tail.exit.while.body_crit_edge ], [ %kp, %entry.while.body_crit_edge ]
  %dec = add i32 %len.addr.05, -1
  %list_node = getelementptr inbounds %struct._kdbtab, ptr %kp.addr.03, i32 0, i32 6
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @kdb_cmds_head, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_node, ptr noundef %0, ptr noundef nonnull @kdb_cmds_head) #16
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_add_tail.exit_crit_edge

while.body.list_add_tail.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  store ptr %list_node, ptr getelementptr inbounds (%struct.list_head, ptr @kdb_cmds_head, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @kdb_cmds_head, ptr %list_node, align 4
  %prev3.i.i = getelementptr inbounds %struct._kdbtab, ptr %kp.addr.03, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list_node, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %while.body.list_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr %struct._kdbtab, ptr %kp.addr.03, i32 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %list_add_tail.exit.while.end_crit_edge, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

list_add_tail.exit.while.end_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %list_add_tail.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kdb_unregister(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %list_node = getelementptr inbounds %struct._kdbtab, ptr %cmd, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_node) #16
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct._kdbtab, ptr %cmd, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list_node, align 4
  %prev.i = getelementptr inbounds %struct._kdbtab, ptr %cmd, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @kdb_init(i32 noundef %lvl) local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @kdb_init.kdb_init_lvl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp ne i32 %0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %lvl)
  %cmp1.not = icmp slt i32 %0, %lvl
  %or.cond = and i1 %cmp, %cmp1.not
  br i1 %or.cond, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = zext i32 %i.09 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.296)
  switch i32 %i.09, label %for.body.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @kdb_inittab() #23
  tail call void @kdb_initbptab() #16
  br label %for.inc

sw.bb3:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @kdb_cmd_init() #23
  br label %for.inc

for.inc:                                          ; preds = %sw.bb3, %sw.bb, %for.body.for.inc_crit_edge
  %inc = add nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %lvl
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  store i32 %lvl, ptr @kdb_init.kdb_init_lvl, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kdb_inittab() unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kdb_register_table(ptr noundef nonnull @maintab, i32 noundef 31)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 9), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kdb_register_table(ptr noundef nonnull @nmicmd, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kdb_initbptab() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kdb_cmd_init() unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_cmds to i32))
  %0 = load ptr, ptr @kdb_cmds, align 4
  %tobool.not15 = icmp eq ptr %0, null
  br i1 %tobool.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %1 = phi ptr [ %5, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %arrayidx17 = phi ptr [ %arrayidx, %for.inc.for.body_crit_edge ], [ @kdb_cmds, %entry.for.body_crit_edge ]
  %i.016 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @kdb_parse(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx17, align 4
  %call4 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.277, ptr noundef %3, i32 noundef %call) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add i32 %i.016, 1
  %arrayidx = getelementptr [0 x ptr], ptr @kdb_cmds, i32 0, i32 %inc
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.b14 = load i1, ptr @defcmd_in_progress, align 1
  br i1 %.b14, label %if.then6, label %for.end.if.end9_crit_edge

for.end.if.end9_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then6:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.278) #16
  %call8 = tail call i32 @kdb_parse(ptr noundef nonnull @.str.43)
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %for.end.if.end9_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kdb_strdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kdb_getstr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_param_enable_nmi(ptr nocapture noundef readnone %val, ptr nocapture noundef readnone %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kdb_nmi_disabled, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !660
  tail call void @llvm.prefetch.p0(ptr nonnull @kdb_nmi_disabled, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @kdb_nmi_disabled, ptr nonnull @kdb_nmi_disabled, i32 0, i32 -1, ptr nonnull elementtype(i32) @kdb_nmi_disabled) #16, !srcloc !661
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !662
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 9), align 4
  tail call void %1(i1 noundef zeroext true) #16
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_md(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  %val.i328 = alloca i32, align 4
  %c.i = alloca i8, align 1
  %endp.i316 = alloca ptr, align 4
  %endp.i = alloca ptr, align 4
  %val.i309 = alloca i32, align 4
  %val.i304 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %fmtstr = alloca [64 x i8], align 1
  %addr = alloca i32, align 4
  %word = alloca i32, align 4
  %offset = alloca i32, align 4
  %p = alloca ptr, align 4
  %nextarg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fmtstr) #16
  %0 = call ptr @memset(ptr %fmtstr, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #16
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %addr, align 4, !annotation !658
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word) #16
  %2 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %word, align 4, !annotation !658
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #16
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #16
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !658
  %call.i = call fastcc i32 @kdbgetulenv(ptr noundef nonnull @.str.171, ptr noundef nonnull %val.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.kdbgetintenv.exit_crit_edge

entry.kdbgetintenv.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %kdbgetintenv.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  br label %kdbgetintenv.exit

kdbgetintenv.exit:                                ; preds = %if.then.i, %entry.kdbgetintenv.exit_crit_edge
  %mdcount.0 = phi i32 [ %6, %if.then.i ], [ 8, %entry.kdbgetintenv.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i304) #16
  %7 = ptrtoint ptr %val.i304 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i304, align 4, !annotation !658
  %call.i305 = call fastcc i32 @kdbgetulenv(ptr noundef nonnull @.str.172, ptr noundef nonnull %val.i304) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i305)
  %tobool.not.i306 = icmp eq i32 %call.i305, 0
  br i1 %tobool.not.i306, label %if.then.i307, label %kdbgetintenv.exit.kdbgetintenv.exit308_crit_edge

kdbgetintenv.exit.kdbgetintenv.exit308_crit_edge: ; preds = %kdbgetintenv.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %kdbgetintenv.exit308

if.then.i307:                                     ; preds = %kdbgetintenv.exit
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %val.i304 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i304, align 4
  br label %kdbgetintenv.exit308

kdbgetintenv.exit308:                             ; preds = %if.then.i307, %kdbgetintenv.exit.kdbgetintenv.exit308_crit_edge
  %radix.0 = phi i32 [ %9, %if.then.i307 ], [ 16, %kdbgetintenv.exit.kdbgetintenv.exit308_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i304) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i309) #16
  %10 = ptrtoint ptr %val.i309 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i309, align 4, !annotation !658
  %call.i310 = call fastcc i32 @kdbgetulenv(ptr noundef nonnull @.str.173, ptr noundef nonnull %val.i309) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i310)
  %tobool.not.i311 = icmp eq i32 %call.i310, 0
  br i1 %tobool.not.i311, label %if.then.i312, label %kdbgetintenv.exit308.kdbgetintenv.exit313_crit_edge

kdbgetintenv.exit308.kdbgetintenv.exit313_crit_edge: ; preds = %kdbgetintenv.exit308
  call void @__sanitizer_cov_trace_pc() #18
  br label %kdbgetintenv.exit313

if.then.i312:                                     ; preds = %kdbgetintenv.exit308
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %val.i309 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i309, align 4
  br label %kdbgetintenv.exit313

kdbgetintenv.exit313:                             ; preds = %if.then.i312, %kdbgetintenv.exit308.kdbgetintenv.exit313_crit_edge
  %bytesperword.0 = phi i32 [ %12, %if.then.i312 ], [ 4, %kdbgetintenv.exit308.kdbgetintenv.exit313_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i309) #16
  %mul = shl i32 %mdcount.0, 4
  %div = sdiv i32 %mul, %bytesperword.0
  %13 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %argv, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(4) @.str.98) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else8

if.then:                                          ; preds = %kdbgetintenv.exit313
  %15 = zext i32 %argc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.297)
  switch i32 %argc, label %if.then.cleanup229_crit_edge [
    i32 2, label %if.then.if.then91_crit_edge
    i32 0, label %land.lhs.true
  ]

if.then.if.then91_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then91

if.then.cleanup229_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup229

land.lhs.true:                                    ; preds = %if.then
  %16 = load i32, ptr @kdb_md.last_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp6.not = icmp eq i32 %16, 0
  br i1 %cmp6.not, label %land.lhs.true.cleanup229_crit_edge, label %if.end81.thread

land.lhs.true.cleanup229_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup229

if.end81.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %addr, align 4
  %18 = load i32, ptr @kdb_md.last_radix, align 4
  %19 = load i32, ptr @kdb_md.last_bytesperword, align 4
  %20 = load i32, ptr @kdb_md.last_repeat, align 4
  br label %if.end129

if.else8:                                         ; preds = %kdbgetintenv.exit313
  %arrayidx10 = getelementptr i8, ptr %14, i32 2
  %21 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx10, align 1
  %conv = zext i8 %22 to i32
  %23 = add nsw i32 %conv, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %23)
  %24 = icmp ugt i32 %23, 9
  br i1 %24, label %if.else49, label %if.then12

if.then12:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp16 = icmp eq i32 %23, 0
  br i1 %cmp16, label %if.then18, label %if.then12.if.end23_crit_edge

if.then12.if.end23_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %25 = load i32, ptr @kdb_md.last_bytesperword, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp19 = icmp eq i32 %25, 0
  %spec.store.select = select i1 %cmp19, i32 4, i32 %25
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.then12.if.end23_crit_edge
  %bytesperword.1 = phi i32 [ %spec.store.select, %if.then18 ], [ %23, %if.then12.if.end23_crit_edge ]
  store i32 %bytesperword.1, ptr @kdb_md.last_bytesperword, align 4
  %div25 = sdiv i32 %mul, %bytesperword.1
  %arrayidx27 = getelementptr i8, ptr %14, i32 3
  %26 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx27, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.298)
  switch i8 %27, label %if.end23.if.end71.thread376_crit_edge [
    i8 0, label %if.end71.thread381
    i8 99, label %land.lhs.true36
  ]

if.end23.if.end71.thread376_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71.thread376

if.end71.thread381:                               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  store i32 %div25, ptr @kdb_md.last_repeat, align 4
  br label %if.end74

land.lhs.true36:                                  ; preds = %if.end23
  %arrayidx38 = getelementptr i8, ptr %14, i32 4
  %29 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool40.not = icmp eq i8 %30, 0
  br i1 %tobool40.not, label %land.lhs.true36.if.end71.thread376_crit_edge, label %if.end71

land.lhs.true36.if.end71.thread376_crit_edge:     ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71.thread376

if.else49:                                        ; preds = %if.else8
  %call51 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(3) @.str.95) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.else49.if.end74_crit_edge, label %if.else55

if.else49.if.end74_crit_edge:                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

if.else55:                                        ; preds = %if.else49
  %call57 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(4) @.str.104) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.else55.if.end74_crit_edge, label %if.else61

if.else55.if.end74_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

if.else61:                                        ; preds = %if.else55
  %call63 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(4) @.str.101) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp eq i32 %call63, 0
  br i1 %cmp64, label %if.else61.if.end74_crit_edge, label %if.else61.cleanup229_crit_edge

if.else61.cleanup229_crit_edge:                   ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup229

if.else61.if.end74_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

if.end71.thread376:                               ; preds = %land.lhs.true36.if.end71.thread376_crit_edge, %if.end23.if.end71.thread376_crit_edge
  store i32 %div25, ptr @kdb_md.last_repeat, align 4
  br label %cleanup229

if.end71:                                         ; preds = %land.lhs.true36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #16
  %31 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -1 to ptr), ptr %p, align 4, !annotation !658
  %call43 = call i32 @simple_strtoul(ptr noundef %arrayidx38, ptr noundef nonnull %p, i32 noundef 10) #16
  %mul44 = mul i32 %call43, %bytesperword.1
  %add = add i32 %mul44, 15
  %div45 = sdiv i32 %add, 16
  %32 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool46.not.not = icmp eq i8 %35, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #16
  store i32 %call43, ptr @kdb_md.last_repeat, align 4
  br i1 %tobool46.not.not, label %if.end71.if.end74_crit_edge, label %if.end71.cleanup229_crit_edge

if.end71.cleanup229_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup229

if.end71.if.end74_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

if.end74:                                         ; preds = %if.end71.if.end74_crit_edge, %if.else61.if.end74_crit_edge, %if.else55.if.end74_crit_edge, %if.else49.if.end74_crit_edge, %if.end71.thread381
  %repeat.1366 = phi i32 [ %call43, %if.end71.if.end74_crit_edge ], [ %div25, %if.end71.thread381 ], [ %div, %if.else49.if.end74_crit_edge ], [ %div, %if.else55.if.end74_crit_edge ], [ %div, %if.else61.if.end74_crit_edge ]
  %phys.0365 = phi i32 [ 0, %if.end71.if.end74_crit_edge ], [ 0, %if.end71.thread381 ], [ 0, %if.else49.if.end74_crit_edge ], [ 0, %if.else55.if.end74_crit_edge ], [ 1, %if.else61.if.end74_crit_edge ]
  %tobool180.not364 = phi i1 [ true, %if.end71.if.end74_crit_edge ], [ true, %if.end71.thread381 ], [ true, %if.else49.if.end74_crit_edge ], [ true, %if.else55.if.end74_crit_edge ], [ false, %if.else61.if.end74_crit_edge ]
  %bytesperword.2363 = phi i32 [ %bytesperword.1, %if.end71.if.end74_crit_edge ], [ %bytesperword.1, %if.end71.thread381 ], [ %bytesperword.0, %if.else49.if.end74_crit_edge ], [ %bytesperword.0, %if.else55.if.end74_crit_edge ], [ %bytesperword.0, %if.else61.if.end74_crit_edge ]
  %mdcount.2362 = phi i32 [ %div45, %if.end71.if.end74_crit_edge ], [ %mdcount.0, %if.end71.thread381 ], [ %mdcount.0, %if.else49.if.end74_crit_edge ], [ %mdcount.0, %if.else55.if.end74_crit_edge ], [ %mdcount.0, %if.else61.if.end74_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp75 = icmp eq i32 %argc, 0
  br i1 %cmp75, label %if.then77, label %if.end74.if.then91_crit_edge

if.end74.if.then91_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then91

if.then77:                                        ; preds = %if.end74
  %.pr = load i32, ptr @kdb_md.last_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp78 = icmp eq i32 %.pr, 0
  br i1 %cmp78, label %if.then77.cleanup229_crit_edge, label %if.else84

if.then77.cleanup229_crit_edge:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup229

if.else84:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.pr, ptr %addr, align 4
  %37 = load i32, ptr @kdb_md.last_radix, align 4
  %38 = load i32, ptr @kdb_md.last_bytesperword, align 4
  %39 = load i32, ptr @kdb_md.last_repeat, align 4
  %mul85 = mul i32 %39, %38
  %add86 = add i32 %mul85, 15
  %div87 = sdiv i32 %add86, 16
  br label %if.end129

if.then91:                                        ; preds = %if.end74.if.then91_crit_edge, %if.then.if.then91_crit_edge
  %tobool180.not364424 = phi i1 [ %tobool180.not364, %if.end74.if.then91_crit_edge ], [ true, %if.then.if.then91_crit_edge ]
  %phys.0365423 = phi i32 [ %phys.0365, %if.end74.if.then91_crit_edge ], [ 0, %if.then.if.then91_crit_edge ]
  %mdcount.3 = phi i32 [ %mdcount.2362, %if.end74.if.then91_crit_edge ], [ %mdcount.0, %if.then.if.then91_crit_edge ]
  %bytesperword.3 = phi i32 [ %bytesperword.2363, %if.end74.if.then91_crit_edge ], [ %bytesperword.0, %if.then.if.then91_crit_edge ]
  %repeat.2 = phi i32 [ %repeat.1366, %if.end74.if.then91_crit_edge ], [ %div, %if.then.if.then91_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextarg) #16
  %40 = ptrtoint ptr %nextarg to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %nextarg, align 4
  %call92 = call i32 @kdbgetaddrarg(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull %nextarg, ptr noundef nonnull %addr, ptr noundef nonnull %offset, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.then91.cleanup_crit_edge

if.then91.cleanup_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end95:                                         ; preds = %if.then91
  %41 = ptrtoint ptr %nextarg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nextarg, align 4
  %add96 = add i32 %42, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add96, i32 %argc)
  %cmp97 = icmp slt i32 %add96, %argc
  br i1 %cmp97, label %if.end95.cleanup_crit_edge, label %if.end100

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end100:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %argc)
  %cmp101.not = icmp sgt i32 %42, %argc
  br i1 %cmp101.not, label %if.end100.if.end115_crit_edge, label %if.then103

if.end100.if.end115_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115

if.then103:                                       ; preds = %if.end100
  %arrayidx104 = getelementptr ptr, ptr %argv, i32 %42
  %43 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx104, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp.i) #16
  %45 = ptrtoint ptr %endp.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp.i, align 4, !annotation !658
  %call.i314 = call i32 @simple_strtoul(ptr noundef %44, ptr noundef nonnull %endp.i, i32 noundef 0) #16
  %46 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %endp.i, align 4
  %cmp.i = icmp eq ptr %47, %44
  br i1 %cmp.i, label %if.then.i315, label %if.then103.if.then107_crit_edge

if.then103.if.then107_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.then.i315:                                     ; preds = %if.then103
  %call1.i = call i32 @simple_strtoul(ptr noundef %44, ptr noundef nonnull %endp.i, i32 noundef 16) #16
  %48 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %endp.i, align 4
  %cmp2.i = icmp eq ptr %49, %44
  br i1 %cmp2.i, label %kdbgetularg.exit, label %if.then.i315.if.then107_crit_edge

if.then.i315.if.then107_crit_edge:                ; preds = %if.then.i315
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

kdbgetularg.exit:                                 ; preds = %if.then.i315
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #16
  br label %if.end115

if.then107:                                       ; preds = %if.then.i315.if.then107_crit_edge, %if.then103.if.then107_crit_edge
  %val.0.i = phi i32 [ %call1.i, %if.then.i315.if.then107_crit_edge ], [ %call.i314, %if.then103.if.then107_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #16
  br i1 %cmp, label %if.then107.if.end115_crit_edge, label %if.else110

if.then107.if.end115_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115

if.else110:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #18
  %mul111 = shl i32 %val.0.i, 4
  %div112 = sdiv i32 %mul111, %bytesperword.3
  br label %if.end115

if.end115:                                        ; preds = %if.else110, %if.then107.if.end115_crit_edge, %kdbgetularg.exit, %if.end100.if.end115_crit_edge
  %mdcount.4 = phi i32 [ %mdcount.3, %if.end100.if.end115_crit_edge ], [ %val.0.i, %if.then107.if.end115_crit_edge ], [ %val.0.i, %if.else110 ], [ %mdcount.3, %kdbgetularg.exit ]
  %repeat.3 = phi i32 [ %repeat.2, %if.end100.if.end115_crit_edge ], [ %val.0.i, %if.then107.if.end115_crit_edge ], [ %div112, %if.else110 ], [ %repeat.2, %kdbgetularg.exit ]
  %add116 = add i32 %42, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add116, i32 %argc)
  %cmp117.not = icmp sgt i32 %add116, %argc
  br i1 %cmp117.not, label %if.end115.cleanup.thread_crit_edge, label %if.then119

if.end115.cleanup.thread_crit_edge:               ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.then119:                                       ; preds = %if.end115
  %arrayidx121 = getelementptr ptr, ptr %argv, i32 %add116
  %50 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx121, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp.i316) #16
  %52 = ptrtoint ptr %endp.i316 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp.i316, align 4, !annotation !658
  %call.i317 = call i32 @simple_strtoul(ptr noundef %51, ptr noundef nonnull %endp.i316, i32 noundef 0) #16
  %53 = ptrtoint ptr %endp.i316 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %endp.i316, align 4
  %cmp.i318 = icmp eq ptr %54, %51
  br i1 %cmp.i318, label %if.then.i321, label %if.then119.if.then124_crit_edge

if.then119.if.then124_crit_edge:                  ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then124

if.then.i321:                                     ; preds = %if.then119
  %call1.i319 = call i32 @simple_strtoul(ptr noundef %51, ptr noundef nonnull %endp.i316, i32 noundef 16) #16
  %55 = ptrtoint ptr %endp.i316 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %endp.i316, align 4
  %cmp2.i320 = icmp eq ptr %56, %51
  br i1 %cmp2.i320, label %kdbgetularg.exit325, label %if.then.i321.if.then124_crit_edge

if.then.i321.if.then124_crit_edge:                ; preds = %if.then.i321
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then124

kdbgetularg.exit325:                              ; preds = %if.then.i321
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i316) #16
  br label %cleanup.thread

if.then124:                                       ; preds = %if.then.i321.if.then124_crit_edge, %if.then119.if.then124_crit_edge
  %val.0.i322 = phi i32 [ %call1.i319, %if.then.i321.if.then124_crit_edge ], [ %call.i317, %if.then119.if.then124_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i316) #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then124, %kdbgetularg.exit325, %if.end115.cleanup.thread_crit_edge
  %radix.2.ph = phi i32 [ %radix.0, %kdbgetularg.exit325 ], [ %val.0.i322, %if.then124 ], [ %radix.0, %if.end115.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextarg) #16
  br label %if.end129

cleanup:                                          ; preds = %if.end95.cleanup_crit_edge, %if.then91.cleanup_crit_edge
  %retval.0 = phi i32 [ %call92, %if.then91.cleanup_crit_edge ], [ -2, %if.end95.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextarg) #16
  br label %cleanup229

if.end129:                                        ; preds = %cleanup.thread, %if.else84, %if.end81.thread
  %tobool180.not364414 = phi i1 [ %tobool180.not364424, %cleanup.thread ], [ %tobool180.not364, %if.else84 ], [ true, %if.end81.thread ]
  %phys.0365412 = phi i32 [ %phys.0365423, %cleanup.thread ], [ %phys.0365, %if.else84 ], [ 0, %if.end81.thread ]
  %bytesperword.3390 = phi i32 [ %bytesperword.3, %cleanup.thread ], [ %38, %if.else84 ], [ %19, %if.end81.thread ]
  %radix.3 = phi i32 [ %radix.2.ph, %cleanup.thread ], [ %37, %if.else84 ], [ %18, %if.end81.thread ]
  %mdcount.6 = phi i32 [ %mdcount.4, %cleanup.thread ], [ %div87, %if.else84 ], [ %20, %if.end81.thread ]
  %repeat.5 = phi i32 [ %repeat.3, %cleanup.thread ], [ %39, %if.else84 ], [ %20, %if.end81.thread ]
  %57 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %argv, align 4
  %call131 = call i32 @strcmp(ptr noundef %58, ptr noundef nonnull dereferenceable(4) @.str.98) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %cmp132 = icmp eq i32 %call131, 0
  br i1 %cmp132, label %if.then134, label %if.end138

if.then134:                                       ; preds = %if.end129
  %59 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %addr, align 4
  store i32 %60, ptr @kdb_md.last_addr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i) #16
  %61 = ptrtoint ptr %c.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -1, ptr %c.i, align 1, !annotation !658
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mdcount.6)
  %tobool.not2.i = icmp eq i32 %mdcount.6, 0
  br i1 %tobool.not2.i, label %if.then134.while.end.i_crit_edge, label %if.then134.while.body.i_crit_edge

if.then134.while.body.i_crit_edge:                ; preds = %if.then134
  br label %while.body.i

if.then134.while.end.i_crit_edge:                 ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then134.while.body.i_crit_edge
  %dec4.in.i = phi i32 [ %dec4.i, %if.end.i.while.body.i_crit_edge ], [ %mdcount.6, %if.then134.while.body.i_crit_edge ]
  %addr.addr.03.i = phi i32 [ %inc.i, %if.end.i.while.body.i_crit_edge ], [ %60, %if.then134.while.body.i_crit_edge ]
  %call.i326 = call i32 @kdb_getarea_size(ptr noundef nonnull %c.i, i32 noundef %addr.addr.03.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i326)
  %tobool1.not.i = icmp eq i32 %call.i326, 0
  br i1 %tobool1.not.i, label %if.end.i, label %while.body.i.kdb_mdr.exit_crit_edge

while.body.i.kdb_mdr.exit_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kdb_mdr.exit

if.end.i:                                         ; preds = %while.body.i
  %dec4.i = add i32 %dec4.in.i, -1
  %62 = ptrtoint ptr %c.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %c.i, align 1
  %conv.i = zext i8 %63 to i32
  %call2.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.180, i32 noundef %conv.i) #16
  %inc.i = add i32 %addr.addr.03.i, 1
  %tobool.not.i327 = icmp eq i32 %dec4.i, 0
  br i1 %tobool.not.i327, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %if.then134.while.end.i_crit_edge
  %call3.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.8) #16
  br label %kdb_mdr.exit

kdb_mdr.exit:                                     ; preds = %while.end.i, %while.body.i.kdb_mdr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i) #16
  %64 = load i32, ptr @kdb_md.last_addr, align 4
  %add136 = add i32 %64, %mdcount.6
  store i32 %add136, ptr @kdb_md.last_addr, align 4
  store i32 %mdcount.6, ptr @kdb_md.last_repeat, align 4
  store i32 %bytesperword.3390, ptr @kdb_md.last_bytesperword, align 4
  br label %cleanup229

if.end138:                                        ; preds = %if.end129
  %65 = zext i32 %radix.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.299)
  switch i32 %radix.3, label %if.end138.cleanup229_crit_edge [
    i32 10, label %if.end138.sw.epilog_crit_edge
    i32 16, label %sw.bb139
    i32 8, label %sw.bb140
  ]

if.end138.sw.epilog_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end138.cleanup229_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup229

sw.bb139:                                         ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb140:                                         ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb140, %sw.bb139, %if.end138.sw.epilog_crit_edge
  %fmtchar.0 = phi i32 [ 111, %sw.bb140 ], [ 120, %sw.bb139 ], [ 100, %if.end138.sw.epilog_crit_edge ]
  store i32 %radix.3, ptr @kdb_md.last_radix, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bytesperword.3390)
  %cmp141 = icmp sgt i32 %bytesperword.3390, 4
  br i1 %cmp141, label %sw.epilog.cleanup229_crit_edge, label %if.end144

sw.epilog.cleanup229_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup229

if.end144:                                        ; preds = %sw.epilog
  %66 = zext i32 %bytesperword.3390 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.300)
  switch i32 %bytesperword.3390, label %if.end144.cleanup229_crit_edge [
    i32 1, label %sw.bb156
    i32 4, label %if.end144.sw.epilog161_crit_edge
    i32 2, label %sw.bb152
  ]

if.end144.sw.epilog161_crit_edge:                 ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog161

if.end144.cleanup229_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup229

sw.bb152:                                         ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog161

sw.bb156:                                         ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog161

sw.epilog161:                                     ; preds = %sw.bb156, %sw.bb152, %if.end144.sw.epilog161_crit_edge
  %.str.177.sink = phi ptr [ @.str.177, %sw.bb156 ], [ @.str.176, %sw.bb152 ], [ @.str.175, %if.end144.sw.epilog161_crit_edge ]
  %call159 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fmtstr, ptr noundef nonnull %.str.177.sink, i32 noundef %fmtchar.0)
  store i32 %repeat.5, ptr @kdb_md.last_repeat, align 4
  store i32 %bytesperword.3390, ptr @kdb_md.last_bytesperword, align 4
  %67 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %argv, align 4
  %call163 = call i32 @strcmp(ptr noundef %68, ptr noundef nonnull dereferenceable(4) @.str.104) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp eq i32 %call163, 0
  br i1 %cmp164, label %if.then166, label %sw.epilog161.if.end168_crit_edge

sw.epilog161.if.end168_crit_edge:                 ; preds = %sw.epilog161
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end168

if.then166:                                       ; preds = %sw.epilog161
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i328) #16
  %69 = ptrtoint ptr %val.i328 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %val.i328, align 4, !annotation !658
  %call.i329 = call fastcc i32 @kdbgetulenv(ptr noundef nonnull @.str.178, ptr noundef nonnull %val.i328) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329)
  %tobool.not.i330 = icmp eq i32 %call.i329, 0
  br i1 %tobool.not.i330, label %if.then.i331, label %if.then166.kdbgetintenv.exit333_crit_edge

if.then166.kdbgetintenv.exit333_crit_edge:        ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #18
  br label %kdbgetintenv.exit333

if.then.i331:                                     ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #18
  %70 = ptrtoint ptr %val.i328 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %val.i328, align 4
  br label %kdbgetintenv.exit333

kdbgetintenv.exit333:                             ; preds = %if.then.i331, %if.then166.kdbgetintenv.exit333_crit_edge
  %nosect.0 = phi i32 [ %71, %if.then.i331 ], [ 0, %if.then166.kdbgetintenv.exit333_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i328) #16
  br label %if.end168

if.end168:                                        ; preds = %kdbgetintenv.exit333, %sw.epilog161.if.end168_crit_edge
  %bytesperword.4 = phi i32 [ 4, %kdbgetintenv.exit333 ], [ %bytesperword.3390, %sw.epilog161.if.end168_crit_edge ]
  %nosect.1 = phi i32 [ %nosect.0, %kdbgetintenv.exit333 ], [ 0, %sw.epilog161.if.end168_crit_edge ]
  %symbolic.0 = phi i32 [ 1, %kdbgetintenv.exit333 ], [ 0, %sw.epilog161.if.end168_crit_edge ]
  %repeat.6 = phi i32 [ %mdcount.6, %kdbgetintenv.exit333 ], [ %repeat.5, %sw.epilog161.if.end168_crit_edge ]
  %neg = sub nsw i32 0, %bytesperword.4
  %72 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %addr, align 4
  %and = and i32 %73, %neg
  store i32 %and, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %repeat.6)
  %cmp170443 = icmp sgt i32 %repeat.6, 0
  br i1 %cmp170443, label %if.end168.while.body_crit_edge, label %if.end168.while.end_crit_edge

if.end168.while.end_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end168.while.body_crit_edge:                   ; preds = %if.end168
  br label %while.body

while.body:                                       ; preds = %cleanup223.while.body_crit_edge, %if.end168.while.body_crit_edge
  %repeat.7444 = phi i32 [ %repeat.9, %cleanup223.while.body_crit_edge ], [ %repeat.6, %if.end168.while.body_crit_edge ]
  br i1 %cmp164, label %while.body.cond.end_crit_edge, label %cond.false

while.body.cond.end_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.false:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %div173 = sdiv i32 16, %bytesperword.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %while.body.cond.end_crit_edge
  %cond = phi i32 [ %div173, %cond.false ], [ 1, %while.body.cond.end_crit_edge ]
  %74 = load i32, ptr @kdb_flags, align 4
  %and174 = and i32 %74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %for.body.preheader, label %cond.end.cleanup229_crit_edge

cond.end.cleanup229_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup229

for.body.preheader:                               ; preds = %cond.end
  %75 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %addr, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %z.0437 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %a.0435 = phi i32 [ %add196, %for.inc.for.body_crit_edge ], [ %76, %for.body.preheader ]
  br i1 %tobool180.not364414, label %if.else188, label %if.then181

if.then181:                                       ; preds = %for.body
  %call182 = call i32 @kdb_getphysword(ptr noundef nonnull %word, i32 noundef %a.0435, i32 noundef %bytesperword.4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %lor.lhs.false184, label %if.then181.for.end_crit_edge

if.then181.for.end_crit_edge:                     ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

lor.lhs.false184:                                 ; preds = %if.then181
  %77 = ptrtoint ptr %word to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %word, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool185.not = icmp eq i32 %78, 0
  br i1 %tobool185.not, label %lor.lhs.false184.for.inc_crit_edge, label %lor.lhs.false184.for.end_crit_edge

lor.lhs.false184.for.end_crit_edge:               ; preds = %lor.lhs.false184
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

lor.lhs.false184.for.inc_crit_edge:               ; preds = %lor.lhs.false184
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.else188:                                       ; preds = %for.body
  %call189 = call i32 @kdb_getword(ptr noundef nonnull %word, i32 noundef %a.0435, i32 noundef %bytesperword.4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %lor.lhs.false191, label %if.else188.for.end_crit_edge

if.else188.for.end_crit_edge:                     ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

lor.lhs.false191:                                 ; preds = %if.else188
  %79 = ptrtoint ptr %word to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %word, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool192.not = icmp eq i32 %80, 0
  br i1 %tobool192.not, label %lor.lhs.false191.for.inc_crit_edge, label %lor.lhs.false191.for.end_crit_edge

lor.lhs.false191.for.end_crit_edge:               ; preds = %lor.lhs.false191
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

lor.lhs.false191.for.inc_crit_edge:               ; preds = %lor.lhs.false191
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false191.for.inc_crit_edge, %lor.lhs.false184.for.inc_crit_edge
  %add196 = add i32 %a.0435, %bytesperword.4
  %inc = add nuw nsw i32 %z.0437, 1
  %exitcond.not = icmp eq i32 %inc, %repeat.7444
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lor.lhs.false191.for.end_crit_edge, %if.else188.for.end_crit_edge, %lor.lhs.false184.for.end_crit_edge, %if.then181.for.end_crit_edge
  %z.0.lcssa.ph = phi i32 [ %repeat.7444, %for.inc.for.end_crit_edge ], [ %z.0437, %lor.lhs.false184.for.end_crit_edge ], [ %z.0437, %if.then181.for.end_crit_edge ], [ %z.0437, %lor.lhs.false191.for.end_crit_edge ], [ %z.0437, %if.else188.for.end_crit_edge ]
  %81 = call i32 @llvm.smin.i32(i32 %cond, i32 %repeat.7444)
  %82 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %addr, align 4
  call fastcc void @kdb_md_line(ptr noundef nonnull %fmtstr, i32 noundef %83, i32 noundef %symbolic.0, i32 noundef %nosect.1, i32 noundef %bytesperword.4, i32 noundef %cond, i32 noundef %repeat.7444, i32 noundef %phys.0365412)
  %mul204 = mul i32 %81, %bytesperword.4
  %84 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %addr, align 4
  %add205 = add i32 %85, %mul204
  store i32 %add205, ptr %addr, align 4
  %sub206 = sub i32 %repeat.7444, %81
  %add207 = add i32 %cond, -1
  %sub208 = add i32 %add207, %z.0.lcssa.ph
  %div209 = sdiv i32 %sub208, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div209)
  %cmp210 = icmp sgt i32 %div209, 2
  br i1 %cmp210, label %if.then212, label %for.end.cleanup223_crit_edge

for.end.cleanup223_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup223

if.then212:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %sub213 = add nsw i32 %div209, -2
  %mul214 = mul i32 %sub213, %cond
  %mul215 = mul i32 %mul214, %bytesperword.4
  %add216 = add i32 %add205, -1
  %sub217 = add i32 %add216, %mul215
  %call218 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.179, i32 noundef %add205, i32 noundef %sub217) #16
  %86 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %addr, align 4
  %add220 = add i32 %87, %mul215
  store i32 %add220, ptr %addr, align 4
  %sub221 = sub i32 %sub206, %mul214
  br label %cleanup223

cleanup223:                                       ; preds = %if.then212, %for.end.cleanup223_crit_edge
  %repeat.9 = phi i32 [ %sub221, %if.then212 ], [ %sub206, %for.end.cleanup223_crit_edge ]
  %cmp170 = icmp sgt i32 %repeat.9, 0
  br i1 %cmp170, label %cleanup223.while.body_crit_edge, label %cleanup223.while.end_crit_edge

cleanup223.while.end_crit_edge:                   ; preds = %cleanup223
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

cleanup223.while.body_crit_edge:                  ; preds = %cleanup223
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.end:                                        ; preds = %cleanup223.while.end_crit_edge, %if.end168.while.end_crit_edge
  %88 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %addr, align 4
  store i32 %89, ptr @kdb_md.last_addr, align 4
  br label %cleanup229

cleanup229:                                       ; preds = %while.end, %cond.end.cleanup229_crit_edge, %if.end144.cleanup229_crit_edge, %sw.epilog.cleanup229_crit_edge, %if.end138.cleanup229_crit_edge, %kdb_mdr.exit, %cleanup, %if.then77.cleanup229_crit_edge, %if.end71.cleanup229_crit_edge, %if.end71.thread376, %if.else61.cleanup229_crit_edge, %land.lhs.true.cleanup229_crit_edge, %if.then.cleanup229_crit_edge
  %retval.4 = phi i32 [ 0, %kdb_mdr.exit ], [ 0, %while.end ], [ %retval.0, %cleanup ], [ -2, %if.then.cleanup229_crit_edge ], [ -2, %land.lhs.true.cleanup229_crit_edge ], [ -1, %if.end71.cleanup229_crit_edge ], [ -2, %if.then77.cleanup229_crit_edge ], [ -4, %if.end138.cleanup229_crit_edge ], [ -3, %sw.epilog.cleanup229_crit_edge ], [ -3, %if.end144.cleanup229_crit_edge ], [ -1, %if.end71.thread376 ], [ -1, %if.else61.cleanup229_crit_edge ], [ 0, %cond.end.cleanup229_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fmtstr) #16
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_mm(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  %addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %contents = alloca i32, align 4
  %nextarg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #16
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !658
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #16
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %contents) #16
  %2 = ptrtoint ptr %contents to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %contents, align 4, !annotation !658
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextarg) #16
  %3 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %argv, align 4
  %arrayidx1 = getelementptr i8, ptr %4, i32 2
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp ne i8 %6, 0
  %conv = zext i8 %6 to i32
  %7 = add nsw i32 %conv, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %7)
  %8 = icmp ult i32 %7, -10
  %or.cond = select i1 %tobool.not, i1 %8, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %9 = ptrtoint ptr %nextarg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %nextarg, align 4
  %call9 = call i32 @kdbgetaddrarg(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull %nextarg, ptr noundef nonnull %addr, ptr noundef nonnull %offset, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %nextarg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nextarg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %argc)
  %cmp13 = icmp sgt i32 %11, %argc
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @kdbgetaddrarg(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull %nextarg, ptr noundef nonnull %contents, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %12 = ptrtoint ptr %nextarg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nextarg, align 4
  %add = add nuw i32 %argc, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp21.not = icmp eq i32 %13, %add
  br i1 %cmp21.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %14 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %argv, align 4
  %arrayidx26 = getelementptr i8, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool28.not = icmp eq i8 %17, 0
  %conv27 = zext i8 %17 to i32
  %sub = add nsw i32 %conv27, -48
  %cond = select i1 %tobool28.not, i32 4, i32 %sub
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr, align 4
  %20 = ptrtoint ptr %contents to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %contents, align 4
  %call32 = call i32 @kdb_putword(i32 noundef %19, i32 noundef %21, i32 noundef %cond) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end35:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr, align 4
  %24 = ptrtoint ptr %contents to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %contents, align 4
  %call36 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.186, i32 noundef %23, i32 noundef %25) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -2, %if.end.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ -2, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ -2, %if.end20.cleanup_crit_edge ], [ %call32, %if.end24.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextarg) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %contents) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_go(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  %addr = alloca i32, align 4
  %nextarg = alloca i32, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #16
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !658
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextarg) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #16
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %offset, align 4, !annotation !658
  %2 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %6 = load i32, ptr @kdb_initial_cpu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %6)
  %cmp.not = icmp eq i32 %5, %6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.187, i32 noundef %6) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = zext i32 %argc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.301)
  switch i32 %argc, label %if.end.cleanup_crit_edge [
    i32 1, label %if.then3
    i32 0, label %if.end.if.end10_crit_edge
  ]

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %8 = ptrtoint ptr %nextarg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %nextarg, align 4
  %call4 = call i32 @kdbgetaddrarg(i32 noundef 1, ptr noundef %argv, ptr noundef nonnull %nextarg, ptr noundef nonnull %addr, ptr noundef nonnull %offset, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then3.if.end10_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.end10:                                         ; preds = %if.then3.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %9 = load i32, ptr @kdb_flags, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  %call13 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.188) #16
  %call14 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.189, i32 noundef 0) #16
  %10 = load i32, ptr @kdb_go_count, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr @kdb_go_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp16 = icmp eq i32 %10, 0
  br i1 %cmp16, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %call18 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.190) #16
  br label %cleanup

if.end24:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %call25 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.192) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then17, %if.end10.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -18, %if.then ], [ 0, %if.then17 ], [ %call4, %if.then3.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -1001, %if.end24 ], [ -1001, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextarg) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_rd(i32 noundef %argc, ptr nocapture noundef readnone %argv) #0 align 64 {
entry:
  %reg64 = alloca i64, align 8
  %reg32 = alloca i32, align 4
  %reg16 = alloca i16, align 2
  %reg8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @kdb_current_regs, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %kdb_check_regs.exit.thread, label %kdb_check_regs.exit

kdb_check_regs.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.38) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg64) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg32) #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg8) #16
  br label %cleanup

kdb_check_regs.exit:                              ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg64) #16
  %1 = ptrtoint ptr %reg64 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %reg64, align 8, !annotation !658
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg32) #16
  %2 = ptrtoint ptr %reg32 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg32, align 4, !annotation !658
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16) #16
  %3 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %reg16, align 2, !annotation !658
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg8) #16
  %4 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %reg8, align 1, !annotation !658
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %kdb_check_regs.exit
  %i.091 = phi i32 [ 0, %kdb_check_regs.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %len.090 = phi i32 [ 0, %kdb_check_regs.exit ], [ %len.3, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.dbg_reg_def_t], ptr @dbg_reg_def, i32 0, i32 %i.091
  %size = getelementptr [0 x %struct.dbg_reg_def_t], ptr @dbg_reg_def, i32 0, i32 %i.091, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %mul = shl i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %mul)
  %cmp1 = icmp sgt i32 %mul, 16
  %spec.store.select = select i1 %cmp1, i32 2, i32 %mul
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call5 = call i32 @strlen(ptr noundef %8) #19
  %add = add i32 %len.090, 4
  %add6 = add i32 %add, %call5
  %add7 = add i32 %add6, %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %add7)
  %cmp8 = icmp ugt i32 %add7, 80
  br i1 %cmp8, label %if.end11.thread, label %if.end11

if.end11.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %call10 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.8) #16
  br label %if.end16

if.end11:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.090)
  %tobool12.not = icmp eq i32 %len.090, 0
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %if.then13

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %call14 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.193) #16
  %add15 = add i32 %call14, %len.090
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge, %if.end11.thread
  %len.2 = phi i32 [ %add15, %if.then13 ], [ 0, %if.end11.if.end16_crit_edge ], [ 0, %if.end11.thread ]
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %11 = add i32 %10, 536870911
  %12 = and i32 %11, 536870911
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.302)
  switch i32 %12, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb26
    i32 3, label %sw.bb34
    i32 7, label %sw.bb41
  ]

sw.bb:                                            ; preds = %if.end16
  %14 = load ptr, ptr @kdb_current_regs, align 4
  %call20 = call ptr @dbg_get_reg(i32 noundef %i.091, ptr noundef nonnull %reg8, ptr noundef %14) #16
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %sw.bb.for.inc_crit_edge, label %if.end23

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end23:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %reg8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reg8, align 1
  %conv = zext i8 %16 to i32
  %call24 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.194, ptr noundef nonnull %call20, i32 noundef %conv) #16
  %add25 = add i32 %call24, %len.2
  br label %for.inc

sw.bb26:                                          ; preds = %if.end16
  %17 = load ptr, ptr @kdb_current_regs, align 4
  %call27 = call ptr @dbg_get_reg(i32 noundef %i.091, ptr noundef nonnull %reg16, ptr noundef %17) #16
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %sw.bb26.for.inc_crit_edge, label %if.end30

sw.bb26.for.inc_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end30:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %reg16 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %reg16, align 2
  %conv31 = zext i16 %19 to i32
  %call32 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.195, ptr noundef nonnull %call27, i32 noundef %conv31) #16
  %add33 = add i32 %call32, %len.2
  br label %for.inc

sw.bb34:                                          ; preds = %if.end16
  %20 = load ptr, ptr @kdb_current_regs, align 4
  %call35 = call ptr @dbg_get_reg(i32 noundef %i.091, ptr noundef nonnull %reg32, ptr noundef %20) #16
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %sw.bb34.for.inc_crit_edge, label %if.end38

sw.bb34.for.inc_crit_edge:                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end38:                                         ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %reg32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg32, align 4
  %call39 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.196, ptr noundef nonnull %call35, i32 noundef %22) #16
  %add40 = add i32 %call39, %len.2
  br label %for.inc

sw.bb41:                                          ; preds = %if.end16
  %23 = load ptr, ptr @kdb_current_regs, align 4
  %call42 = call ptr @dbg_get_reg(i32 noundef %i.091, ptr noundef nonnull %reg64, ptr noundef %23) #16
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %sw.bb41.for.inc_crit_edge, label %if.end45

sw.bb41.for.inc_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end45:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %reg64 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %reg64, align 8
  %call46 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.197, ptr noundef nonnull %call42, i64 noundef %25) #16
  %add47 = add i32 %call46, %len.2
  br label %for.inc

sw.default:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %call50 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.198, ptr noundef %27) #16
  %add51 = add i32 %call50, %len.2
  br label %for.inc

for.inc:                                          ; preds = %sw.default, %if.end45, %sw.bb41.for.inc_crit_edge, %if.end38, %sw.bb34.for.inc_crit_edge, %if.end30, %sw.bb26.for.inc_crit_edge, %if.end23, %sw.bb.for.inc_crit_edge
  %len.3 = phi i32 [ %add51, %sw.default ], [ %add47, %if.end45 ], [ %len.2, %sw.bb41.for.inc_crit_edge ], [ %add40, %if.end38 ], [ %len.2, %sw.bb34.for.inc_crit_edge ], [ %add33, %if.end30 ], [ %len.2, %sw.bb26.for.inc_crit_edge ], [ %add25, %if.end23 ], [ %len.2, %sw.bb.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc, 26
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %call52 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.8) #16
  br label %cleanup

cleanup:                                          ; preds = %for.end, %kdb_check_regs.exit.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ -17, %kdb_check_regs.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg8) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg32) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg64) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_rm(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  %endp.i = alloca ptr, align 4
  %reg64 = alloca i64, align 8
  %reg32 = alloca i32, align 4
  %reg16 = alloca i16, align 2
  %reg8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg64) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg32) #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp.not = icmp eq i32 %argc, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %argv, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %3)
  %cmp1 = icmp eq i8 %3, 37
  %spec.select.idx = zext i1 %cmp1 to i32
  %spec.select = getelementptr i8, ptr %1, i32 %spec.select.idx
  %arrayidx5 = getelementptr ptr, ptr %argv, i32 2
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp.i) #16
  %6 = ptrtoint ptr %endp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp.i, align 4, !annotation !658
  %call.i = call i64 @simple_strtoull(ptr noundef %5, ptr noundef nonnull %endp.i, i32 noundef 0) #16
  %7 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %endp.i, align 4
  %cmp.i = icmp eq ptr %8, %5
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then.i:                                        ; preds = %if.end
  %call1.i = call i64 @simple_strtoull(ptr noundef %5, ptr noundef nonnull %endp.i, i32 noundef 16) #16
  %9 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %endp.i, align 4
  %cmp2.i = icmp eq ptr %10, %5
  br i1 %cmp2.i, label %kdbgetu64arg.exit, label %if.then.i.if.end7_crit_edge

if.then.i.if.end7_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

kdbgetu64arg.exit:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #16
  br label %cleanup

if.end7:                                          ; preds = %if.then.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %val.0.i = phi i64 [ %call1.i, %if.then.i.if.end7_crit_edge ], [ %call.i, %if.end.if.end7_crit_edge ]
  %11 = ptrtoint ptr %reg64 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %val.0.i, ptr %reg64, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #16
  %12 = load ptr, ptr @kdb_current_regs, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %kdb_check_regs.exit.thread, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

kdb_check_regs.exit.thread:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %call.i55 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.38) #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.065 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %arrayidx14 = getelementptr [0 x %struct.dbg_reg_def_t], ptr @dbg_reg_def, i32 0, i32 %i.065
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx14, align 4
  %call15 = call i32 @strcmp(ptr noundef %spec.select, ptr noundef %14) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then21, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 26
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then21:                                        ; preds = %for.body
  %size = getelementptr [0 x %struct.dbg_reg_def_t], ptr @dbg_reg_def, i32 0, i32 %i.065, i32 1
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %17 = add i32 %16, 536870911
  %18 = and i32 %17, 536870911
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.303)
  switch i32 %18, label %if.then21.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
    i32 3, label %sw.bb28
    i32 7, label %sw.bb31
  ]

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %reg64 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %reg64, align 8
  %conv23 = trunc i64 %21 to i8
  %22 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv23, ptr %reg8, align 1
  %23 = load ptr, ptr @kdb_current_regs, align 4
  %call24 = call i32 @dbg_set_reg(i32 noundef %i.065, ptr noundef nonnull %reg8, ptr noundef %23) #16
  br label %cleanup

sw.bb25:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %reg64 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %reg64, align 8
  %conv26 = trunc i64 %25 to i16
  %26 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv26, ptr %reg16, align 2
  %27 = load ptr, ptr @kdb_current_regs, align 4
  %call27 = call i32 @dbg_set_reg(i32 noundef %i.065, ptr noundef nonnull %reg16, ptr noundef %27) #16
  br label %cleanup

sw.bb28:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %reg64 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %reg64, align 8
  %conv29 = trunc i64 %29 to i32
  %30 = ptrtoint ptr %reg32 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv29, ptr %reg32, align 4
  %31 = load ptr, ptr @kdb_current_regs, align 4
  %call30 = call i32 @dbg_set_reg(i32 noundef %i.065, ptr noundef nonnull %reg32, ptr noundef %31) #16
  br label %cleanup

sw.bb31:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  %32 = load ptr, ptr @kdb_current_regs, align 4
  %call32 = call i32 @dbg_set_reg(i32 noundef %i.065, ptr noundef nonnull %reg64, ptr noundef %32) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.bb31, %sw.bb28, %sw.bb25, %sw.bb, %if.then21.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %kdb_check_regs.exit.thread, %kdbgetu64arg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -15, %kdbgetu64arg.exit ], [ 0, %sw.bb ], [ 0, %sw.bb25 ], [ 0, %sw.bb28 ], [ 0, %sw.bb31 ], [ 0, %if.then21.cleanup_crit_edge ], [ -17, %kdb_check_regs.exit.thread ], [ -17, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg8) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg32) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg64) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_ef(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  %addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %nextarg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #16
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !658
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #16
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %offset, align 4, !annotation !658
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextarg) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp.not = icmp eq i32 %argc, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %nextarg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %nextarg, align 4
  %call = call i32 @kdbgetaddrarg(i32 noundef 1, ptr noundef %argv, ptr noundef nonnull %nextarg, ptr noundef nonnull %addr, ptr noundef nonnull %offset, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 4
  %5 = inttoptr i32 %4 to ptr
  call void @show_regs(ptr noundef %5) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -2, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextarg) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_bt(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_env(i32 noundef %argc, ptr nocapture noundef readnone %argv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.05.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [31 x ptr], ptr @__env, i32 0, i32 %i.05.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.200, ptr noundef nonnull %1) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 31
  br i1 %exitcond.not.i, label %kdb_printenv.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

kdb_printenv.exit:                                ; preds = %for.inc.i
  %2 = load i32, ptr @kdb_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %2)
  %tobool.not = icmp ult i32 %2, 65536
  br i1 %tobool.not, label %kdb_printenv.exit.if.end_crit_edge, label %if.then

kdb_printenv.exit.if.end_crit_edge:               ; preds = %kdb_printenv.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %kdb_printenv.exit
  call void @__sanitizer_cov_trace_pc() #18
  %shr = lshr i32 %2, 16
  %call = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.199, i32 noundef %shr) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %kdb_printenv.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_help(i32 noundef %argc, ptr nocapture noundef readnone %argv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.204) #16
  %call1 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.205) #16
  %.pn23 = load ptr, ptr @kdb_cmds_head, align 4
  %cmp.not25 = icmp eq ptr %.pn23, @kdb_cmds_head
  br i1 %cmp.not25, label %entry.cleanup15_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup15

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn26 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn23, %entry.for.body_crit_edge ]
  %kt.027 = getelementptr i8, ptr %.pn26, i32 -24
  %0 = load i32, ptr @kdb_flags, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup15_crit_edge

for.body.cleanup15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup15

if.end:                                           ; preds = %for.body
  %flags = getelementptr i8, ptr %.pn26, i32 -4
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %3 = load i32, ptr @kdb_cmd_enabled, align 4
  %and.i = and i32 %3, 511
  %or.i = or i32 %and.i, 512
  %permissions.addr.0.i = mul nuw nsw i32 %or.i, 1025
  %or2.i = or i32 %2, 1
  %and3.i = and i32 %permissions.addr.0.i, %or2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i.not = icmp eq i32 %and3.i, 0
  br i1 %tobool4.i.not, label %if.end.for.inc_crit_edge, label %if.end4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %usage = getelementptr i8, ptr %.pn26, i32 -16
  %4 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usage, align 4
  %call5 = tail call i32 @strlen(ptr noundef %5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call5)
  %cmp6 = icmp ugt i32 %call5, 20
  %spec.select = select i1 %cmp6, ptr @.str.206, ptr @.str
  %6 = ptrtoint ptr %kt.027 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kt.027, align 4
  %help = getelementptr i8, ptr %.pn26, i32 -12
  %8 = ptrtoint ptr %help to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %help, align 4
  %call10 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.207, ptr noundef %7, ptr noundef %5, ptr noundef nonnull %spec.select, ptr noundef %9) #16
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %if.end.for.inc_crit_edge
  %10 = ptrtoint ptr %.pn26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn26, align 4
  %cmp.not = icmp eq ptr %.pn, @kdb_cmds_head
  br i1 %cmp.not, label %for.inc.cleanup15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup15

cleanup15:                                        ; preds = %for.inc.cleanup15_crit_edge, %for.body.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_cpu(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  %endp.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %argc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.304)
  switch i32 %argc, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.end3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu.i, align 4
  %call1.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.208, i32 noundef %4) #16
  %call2.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.209) #16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %prev_state.091.i = phi i8 [ 63, %if.then ], [ %prev_state.1.i, %for.inc.i.for.body.i_crit_edge ]
  %first_print.090.i = phi i32 [ 1, %if.then ], [ %first_print.2.i, %for.inc.i.for.body.i_crit_edge ]
  %start_cpu.089.i = phi i32 [ -1, %if.then ], [ %start_cpu.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.087.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %i.087.i)
  %cmp.not.i.i.i.i.i = icmp ugt i32 %5, %i.087.i
  br i1 %cmp.not.i.i.i.i.i, label %for.body.i.cpu_online.exit.i_crit_edge, label %land.rhs.i.i.i.i.i

for.body.i.cpu_online.exit.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit.i

land.rhs.i.i.i.i.i:                               ; preds = %for.body.i
  %.b37.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i, label %land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge, label %if.then.i.i.i.i.i, !prof !663

land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge:   ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit.i

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.214, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit.i

cpu_online.exit.i:                                ; preds = %if.then.i.i.i.i.i, %land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge, %for.body.i.cpu_online.exit.i_crit_edge
  %div1.i.i.i.i = lshr i32 %i.087.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i.i
  %6 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %8 = shl nuw i32 1, %i.087.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i, label %cpu_online.exit.i.if.end12.i_crit_edge, label %if.else.i

cpu_online.exit.i.if.end12.i_crit_edge:           ; preds = %cpu_online.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

if.else.i:                                        ; preds = %cpu_online.exit.i
  %enter_kgdb.i = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %i.087.i, i32 5
  %10 = ptrtoint ptr %enter_kgdb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enter_kgdb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.else.i.if.end12.i_crit_edge, label %if.else5.i

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %task.i = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %i.087.i, i32 1
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 4
  %call7.i = tail call zeroext i8 @kdb_task_state_char(ptr noundef %13) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %call7.i)
  %cmp8.i = icmp eq i8 %call7.i, 45
  %spec.select.i = select i1 %cmp8.i, i8 45, i8 32
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else5.i, %if.else.i.if.end12.i_crit_edge, %cpu_online.exit.i.if.end12.i_crit_edge
  %state.0.i = phi i8 [ 70, %cpu_online.exit.i.if.end12.i_crit_edge ], [ 68, %if.else.i.if.end12.i_crit_edge ], [ %spec.select.i, %if.else5.i ]
  %conv14.i = zext i8 %prev_state.091.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %state.0.i, i8 %prev_state.091.i)
  %cmp15.not.i = icmp eq i8 %state.0.i, %prev_state.091.i
  br i1 %cmp15.not.i, label %if.end12.i.for.inc.i_crit_edge, label %if.then17.i

if.end12.i.for.inc.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %prev_state.091.i)
  %cmp19.not.i = icmp eq i8 %prev_state.091.i, 63
  br i1 %cmp19.not.i, label %if.then17.i.for.inc.i_crit_edge, label %if.then21.i

if.then17.i.for.inc.i_crit_edge:                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then21.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_print.090.i)
  %tobool22.not.i = icmp eq i32 %first_print.090.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.then21.i.if.end25.i_crit_edge

if.then21.i.if.end25.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #18
  %call24.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.210) #16
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.then21.i.if.end25.i_crit_edge
  %call26.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.211, i32 noundef %start_cpu.089.i) #16
  %sub.i = add nsw i32 %i.087.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %start_cpu.089.i, i32 %sub.i)
  %cmp27.i = icmp slt i32 %start_cpu.089.i, %sub.i
  br i1 %cmp27.i, label %if.then29.i, label %if.end25.i.if.end32.i_crit_edge

if.end25.i.if.end32.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  %call31.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.212, i32 noundef %sub.i) #16
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.end25.i.if.end32.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %prev_state.091.i)
  %cmp34.not.i = icmp eq i8 %prev_state.091.i, 32
  br i1 %cmp34.not.i, label %if.end32.i.for.inc.i_crit_edge, label %if.then36.i

if.end32.i.for.inc.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then36.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #18
  %call38.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.213, i32 noundef %conv14.i) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then36.i, %if.end32.i.for.inc.i_crit_edge, %if.then17.i.for.inc.i_crit_edge, %if.end12.i.for.inc.i_crit_edge
  %start_cpu.1.i = phi i32 [ %start_cpu.089.i, %if.end12.i.for.inc.i_crit_edge ], [ %i.087.i, %if.end32.i.for.inc.i_crit_edge ], [ %i.087.i, %if.then36.i ], [ %i.087.i, %if.then17.i.for.inc.i_crit_edge ]
  %first_print.2.i = phi i32 [ %first_print.090.i, %if.end12.i.for.inc.i_crit_edge ], [ 0, %if.end32.i.for.inc.i_crit_edge ], [ 0, %if.then36.i ], [ %first_print.090.i, %if.then17.i.for.inc.i_crit_edge ]
  %prev_state.1.i = phi i8 [ %prev_state.091.i, %if.end12.i.for.inc.i_crit_edge ], [ %state.0.i, %if.end32.i.for.inc.i_crit_edge ], [ %state.0.i, %if.then36.i ], [ %state.0.i, %if.then17.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.087.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %conv42.i = zext i8 %prev_state.1.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %prev_state.1.i)
  %cmp43.not.i = icmp eq i8 %prev_state.1.i, 70
  br i1 %cmp43.not.i, label %for.end.i.kdb_cpu_status.exit_crit_edge, label %if.then45.i

for.end.i.kdb_cpu_status.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kdb_cpu_status.exit

if.then45.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_print.2.i)
  %tobool46.not.i = icmp eq i32 %first_print.2.i, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %if.then45.i.if.end49.i_crit_edge

if.then45.i.if.end49.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49.i

if.then47.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #18
  %call48.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.210) #16
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then47.i, %if.then45.i.if.end49.i_crit_edge
  %call50.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.211, i32 noundef %start_cpu.1.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %start_cpu.1.i)
  %cmp52.i = icmp slt i32 %start_cpu.1.i, 3
  br i1 %cmp52.i, label %if.then54.i, label %if.end49.i.if.end57.i_crit_edge

if.end49.i.if.end57.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57.i

if.then54.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #18
  %call56.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.212, i32 noundef 3) #16
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then54.i, %if.end49.i.if.end57.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %prev_state.1.i)
  %cmp59.not.i = icmp eq i8 %prev_state.1.i, 32
  br i1 %cmp59.not.i, label %if.end57.i.kdb_cpu_status.exit_crit_edge, label %if.then61.i

if.end57.i.kdb_cpu_status.exit_crit_edge:         ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kdb_cpu_status.exit

if.then61.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #18
  %call63.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.213, i32 noundef %conv42.i) #16
  br label %kdb_cpu_status.exit

kdb_cpu_status.exit:                              ; preds = %if.then61.i, %if.end57.i.kdb_cpu_status.exit_crit_edge, %for.end.i.kdb_cpu_status.exit_crit_edge
  %call66.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.8) #16
  br label %cleanup

if.end3:                                          ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %argv, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp.i) #16
  %16 = ptrtoint ptr %endp.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp.i, align 4, !annotation !658
  %call.i = call i32 @simple_strtoul(ptr noundef %15, ptr noundef nonnull %endp.i, i32 noundef 0) #16
  %17 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %endp.i, align 4
  %cmp.i = icmp eq ptr %18, %15
  br i1 %cmp.i, label %if.then.i, label %if.end3.if.end5_crit_edge

if.end3.if.end5_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then.i:                                        ; preds = %if.end3
  %call1.i14 = call i32 @simple_strtoul(ptr noundef %15, ptr noundef nonnull %endp.i, i32 noundef 16) #16
  %19 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %endp.i, align 4
  %cmp2.i = icmp eq ptr %20, %15
  br i1 %cmp2.i, label %kdbgetularg.exit, label %if.then.i.if.end5_crit_edge

if.then.i.if.end5_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

kdbgetularg.exit:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #16
  br label %cleanup

if.end5:                                          ; preds = %if.then.i.if.end5_crit_edge, %if.end3.if.end5_crit_edge
  %val.0.i = phi i32 [ %call1.i14, %if.then.i.if.end5_crit_edge ], [ %call.i, %if.end3.if.end5_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %val.0.i)
  %cmp6 = icmp ugt i32 %val.0.i, 3
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %lor.lhs.false

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %enter_kgdb = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %val.0.i, i32 5
  %21 = ptrtoint ptr %enter_kgdb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enter_kgdb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool8.not = icmp eq i32 %22, 0
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @dbg_switch_cpu to i32))
  store i32 %val.0.i, ptr @dbg_switch_cpu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %kdbgetularg.exit, %kdb_cpu_status.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %kdb_cpu_status.exit ], [ -1002, %if.end10 ], [ -2, %entry.cleanup_crit_edge ], [ -15, %kdbgetularg.exit ], [ -18, %lor.lhs.false.cleanup_crit_edge ], [ -18, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kdb_kgdb(i32 noundef %argc, ptr nocapture noundef readnone %argv) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1005
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_ps(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp = icmp eq i32 %argc, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.215, i32 noundef 10, ptr noundef nonnull @.str.216, i32 noundef 10, ptr noundef nonnull @.str.217) #16
  %arrayidx = getelementptr ptr, ptr %argv, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  tail call void @kdb_ps_suppressed()
  %call74 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.215, i32 noundef 10, ptr noundef nonnull @.str.216, i32 noundef 10, ptr noundef nonnull @.str.217) #16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %cond.false
  %i.030.i = phi i32 [ 0, %cond.false ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %ep.029.i = phi ptr [ @__env, %cond.false ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr ptr, ptr %ep.029.i, i32 1
  %2 = ptrtoint ptr %ep.029.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep.029.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call1.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(3) @.str.218, ptr noundef nonnull %3, i32 noundef 2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx.i = getelementptr i8, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.305)
  switch i8 %5, label %land.lhs.true.i.for.inc.i_crit_edge [
    i8 0, label %land.lhs.true.i.cleanup.i_crit_edge
    i8 61, label %land.lhs.true.i.cleanup.i_crit_edge103
  ]

land.lhs.true.i.cleanup.i_crit_edge103:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %land.lhs.true.i.cleanup.i_crit_edge103
  %call10.i = tail call ptr @strchr(ptr noundef nonnull %3, i32 noundef 61) #16
  %tobool11.not.i = icmp eq ptr %call10.i, null
  %incdec.ptr12.i = getelementptr i8, ptr %call10.i, i32 1
  %spec.select.i = select i1 %tobool11.not.i, ptr @.str, ptr %incdec.ptr12.i
  br label %cond.end

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 31
  br i1 %exitcond.not.i, label %for.inc.i.cond.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.cond.end_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.end:                                         ; preds = %for.inc.i.cond.end_crit_edge, %cleanup.i, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ %spec.select.i, %cleanup.i ], [ null, %for.inc.i.cond.end_crit_edge ]
  %call278 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call278, i32 %7)
  %cmp379 = icmp ult i32 %call278, %7
  br i1 %cmp379, label %cond.end.for.body_crit_edge, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %cond.end.for.body_crit_edge
  %call280 = phi i32 [ %call2, %if.end10.for.body_crit_edge ], [ %call278, %cond.end.for.body_crit_edge ]
  %8 = load i32, ptr @kdb_flags, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %call.i73 = tail call ptr @curr_task(i32 noundef %call280) #16
  %call8 = tail call zeroext i1 @kdb_task_state(ptr noundef %call.i73, ptr noundef %cond) #16
  br i1 %call8, label %if.then9, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kdb_ps1(ptr noundef %call.i73)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  %call2 = tail call i32 @cpumask_next(i32 noundef %call280, ptr noundef nonnull @__cpu_online_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %cmp3 = icmp ult i32 %call2, %9
  br i1 %cmp3, label %if.end10.for.body_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %if.end10.for.end_crit_edge, %cond.end.for.end_crit_edge
  %call11 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.8) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr87 = getelementptr i8, ptr %10, i32 -1136
  %cmp14.not88 = icmp eq ptr %add.ptr87, @init_task
  br i1 %cmp14.not88, label %for.end.cleanup_crit_edge, label %for.end.do.body16_crit_edge

for.end.do.body16_crit_edge:                      ; preds = %for.end
  br label %do.body16

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond12.loopexit:                              ; preds = %for.inc.for.cond12.loopexit_crit_edge, %do.end26.for.cond12.loopexit_crit_edge
  %11 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %13, align 16
  %add.ptr = getelementptr i8, ptr %12, i32 -1136
  %cmp14.not = icmp eq ptr %add.ptr, @init_task
  br i1 %cmp14.not, label %for.cond12.loopexit.cleanup_crit_edge, label %for.cond12.loopexit.do.body16_crit_edge

for.cond12.loopexit.do.body16_crit_edge:          ; preds = %for.cond12.loopexit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body16

for.cond12.loopexit.cleanup_crit_edge:            ; preds = %for.cond12.loopexit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body16:                                        ; preds = %for.cond12.loopexit.do.body16_crit_edge, %for.end.do.body16_crit_edge
  %13 = phi ptr [ %12, %for.cond12.loopexit.do.body16_crit_edge ], [ %10, %for.end.do.body16_crit_edge ]
  %call17 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true, label %do.body16.do.end26_crit_edge

do.body16.do.end26_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end26

land.lhs.true:                                    ; preds = %do.body16
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true.do.end26_crit_edge, label %land.lhs.true21

land.lhs.true.do.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end26

land.lhs.true21:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @kdb_ps.__warned, align 1
  br i1 %.b72, label %land.lhs.true21.do.end26_crit_edge, label %if.then23

land.lhs.true21.do.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end26

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @kdb_ps.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 2355, ptr noundef nonnull @.str.18) #16
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %land.lhs.true21.do.end26_crit_edge, %land.lhs.true.do.end26_crit_edge, %do.body16.do.end26_crit_edge
  %signal = getelementptr i8, ptr %13, i32 544
  %14 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %thread_head to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn81 = load volatile ptr, ptr %thread_head, align 4
  %cmp38.not84 = icmp eq ptr %.pn81, %thread_head
  br i1 %cmp38.not84, label %do.end26.for.cond12.loopexit_crit_edge, label %do.end26.for.body39_crit_edge

do.end26.for.body39_crit_edge:                    ; preds = %do.end26
  br label %for.body39

do.end26.for.cond12.loopexit_crit_edge:           ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond12.loopexit

for.body39:                                       ; preds = %for.inc.for.body39_crit_edge, %do.end26.for.body39_crit_edge
  %.pn85 = phi ptr [ %.pn, %for.inc.for.body39_crit_edge ], [ %.pn81, %do.end26.for.body39_crit_edge ]
  %p.086 = getelementptr i8, ptr %.pn85, i32 -1404
  %17 = load i32, ptr @kdb_flags, align 4
  %and40 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end43, label %for.body39.cleanup_crit_edge

for.body39.cleanup_crit_edge:                     ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end43:                                         ; preds = %for.body39
  %call44 = tail call zeroext i1 @kdb_task_state(ptr noundef %p.086, ptr noundef %cond) #16
  br i1 %call44, label %if.then45, label %if.end43.for.inc_crit_edge

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kdb_ps1(ptr noundef %p.086)
  br label %for.inc

for.inc:                                          ; preds = %if.then45, %if.end43.for.inc_crit_edge
  %18 = ptrtoint ptr %.pn85 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load volatile ptr, ptr %.pn85, align 4
  %19 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %signal, align 16
  %thread_head37 = getelementptr inbounds %struct.signal_struct, ptr %20, i32 0, i32 3
  %cmp38.not = icmp eq ptr %.pn, %thread_head37
  br i1 %cmp38.not, label %for.inc.for.cond12.loopexit_crit_edge, label %for.inc.for.body39_crit_edge

for.inc.for.body39_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body39

for.inc.for.cond12.loopexit_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond12.loopexit

cleanup:                                          ; preds = %for.body39.cleanup_crit_edge, %for.cond12.loopexit.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_pid(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  %endp.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp = icmp sgt i32 %argc, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 0
  br i1 %tobool.not, label %if.end.if.end16_crit_edge, label %if.then1

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then1:                                         ; preds = %if.end
  %arrayidx = getelementptr ptr, ptr %argv, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(2) @.str.219) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  %2 = load i32, ptr @kdb_initial_cpu, align 4
  %task = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %2, i32 1
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 4
  br label %if.end15

if.else:                                          ; preds = %if.then1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp.i) #16
  %5 = ptrtoint ptr %endp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp.i, align 4, !annotation !658
  %call.i = call i32 @simple_strtoul(ptr noundef %1, ptr noundef nonnull %endp.i, i32 noundef 0) #16
  %6 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %endp.i, align 4
  %cmp.i = icmp eq ptr %7, %1
  br i1 %cmp.i, label %if.then.i, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then.i:                                        ; preds = %if.else
  %call1.i = call i32 @simple_strtoul(ptr noundef %1, ptr noundef nonnull %endp.i, i32 noundef 16) #16
  %8 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %endp.i, align 4
  %cmp2.i = icmp eq ptr %9, %1
  br i1 %cmp2.i, label %kdbgetularg.exit, label %if.then.i.if.end9_crit_edge

if.then.i.if.end9_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

kdbgetularg.exit:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #16
  br label %cleanup

if.end9:                                          ; preds = %if.then.i.if.end9_crit_edge, %if.else.if.end9_crit_edge
  %val.0.i = phi i32 [ %call1.i, %if.then.i.if.end9_crit_edge ], [ %call.i, %if.else.if.end9_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #16
  %call10 = call ptr @find_task_by_pid_ns(i32 noundef %val.0.i, ptr noundef nonnull @init_pid_ns) #16
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %call13 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.220, i32 noundef %val.0.i) #16
  br label %cleanup

if.end15:                                         ; preds = %if.end9.if.end15_crit_edge, %if.then3
  %p.0 = phi ptr [ %4, %if.then3 ], [ %call10, %if.end9.if.end15_crit_edge ]
  store ptr %p.0, ptr @kdb_current_task, align 4
  %call.i23 = call i32 @task_curr(ptr noundef %p.0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i, label %if.end15.kdb_set_current_task.exit_crit_edge, label %if.then.i24

if.end15.kdb_set_current_task.exit_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %kdb_set_current_task.exit

if.then.i24:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p.0, i32 0, i32 1
  %10 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i.i, align 4
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %cpu.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i.i = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %14) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call4.i.i.i.i)
  %cmp.i.i = icmp ugt i32 %13, %call4.i.i.i.i
  %spec.select.i.i = select i1 %cmp.i.i, i32 0, i32 %13
  %arrayidx.i = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %spec.select.i.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  br label %kdb_set_current_task.exit

kdb_set_current_task.exit:                        ; preds = %if.then.i24, %if.end15.kdb_set_current_task.exit_crit_edge
  %storemerge.i = phi ptr [ %16, %if.then.i24 ], [ null, %if.end15.kdb_set_current_task.exit_crit_edge ]
  store ptr %storemerge.i, ptr @kdb_current_regs, align 4
  br label %if.end16

if.end16:                                         ; preds = %kdb_set_current_task.exit, %if.end.if.end16_crit_edge
  %17 = load ptr, ptr @kdb_current_task, align 4
  %comm = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid, align 8
  %call17 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.221, ptr noundef %comm, i32 noundef %19) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then12, %kdbgetularg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ 0, %if.then12 ], [ -2, %entry.cleanup_crit_edge ], [ -15, %kdbgetularg.exit ]
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_reboot(i32 noundef %argc, ptr nocapture noundef readnone %argv) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @emergency_restart() #16
  %call = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.222) #16
  br label %while.body

while.body:                                       ; preds = %while.body, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !664
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !665
  br label %while.body
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_lsmod(i32 noundef %argc, ptr nocapture noundef readnone %argv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp.not = icmp eq i32 %argc, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.223) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_modules to i32))
  %0 = load ptr, ptr @kdb_modules, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn65 = load ptr, ptr %0, align 4
  %cmp1.not67 = icmp eq ptr %.pn65, %0
  br i1 %cmp1.not67, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.inc42.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn68 = phi ptr [ %.pn, %for.inc42.for.body_crit_edge ], [ %.pn65, %if.end.for.body_crit_edge ]
  %mod.069 = getelementptr i8, ptr %.pn68, i32 -4
  %2 = ptrtoint ptr %mod.069 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mod.069, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %for.body.for.inc42_crit_edge, label %if.end4

for.body.for.inc42_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc42

if.end4:                                          ; preds = %for.body
  %name = getelementptr i8, ptr %.pn68, i32 8
  %core_layout = getelementptr i8, ptr %.pn68, i32 508
  %size = getelementptr i8, ptr %.pn68, i32 512
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %call5 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.224, ptr noundef %name, i32 noundef %5, ptr noundef %mod.069) #16
  %call6 = tail call i32 @module_refcount(ptr noundef %mod.069) #16
  %call7 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.225, i32 noundef %call6) #16
  %6 = ptrtoint ptr %mod.069 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mod.069, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %switch.selectcmp = icmp eq i32 %7, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.227, ptr @.str.228
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %switch.selectcmp70 = icmp eq i32 %7, 2
  %switch.select71 = select i1 %switch.selectcmp70, ptr @.str.226, ptr %switch.select
  %call15 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull %switch.select71) #16
  %8 = ptrtoint ptr %core_layout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core_layout, align 128
  %call21 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.229, ptr noundef %9) #16
  %call22 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.230) #16
  %source_list = getelementptr i8, ptr %.pn68, i32 812
  %10 = ptrtoint ptr %source_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %use.062 = load ptr, ptr %source_list, align 4
  %cmp30.not63 = icmp eq ptr %use.062, %source_list
  br i1 %cmp30.not63, label %if.end4.for.end_crit_edge, label %if.end4.for.body32_crit_edge

if.end4.for.body32_crit_edge:                     ; preds = %if.end4
  br label %for.body32

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %if.end4.for.body32_crit_edge
  %use.064 = phi ptr [ %use.0, %for.body32.for.body32_crit_edge ], [ %use.062, %if.end4.for.body32_crit_edge ]
  %target = getelementptr inbounds %struct.module_use, ptr %use.064, i32 0, i32 3
  %11 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %target, align 4
  %name33 = getelementptr inbounds %struct.module, ptr %12, i32 0, i32 2
  %call35 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.231, ptr noundef %name33) #16
  %13 = ptrtoint ptr %use.064 to i32
  call void @__asan_load4_noabort(i32 %13)
  %use.0 = load ptr, ptr %use.064, align 4
  %cmp30.not = icmp eq ptr %use.0, %source_list
  br i1 %cmp30.not, label %for.body32.for.end_crit_edge, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body32

for.body32.for.end_crit_edge:                     ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body32.for.end_crit_edge, %if.end4.for.end_crit_edge
  %call41 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.232) #16
  br label %for.inc42

for.inc42:                                        ; preds = %for.end, %for.body.for.inc42_crit_edge
  %14 = ptrtoint ptr %.pn68 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn68, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_modules to i32))
  %15 = load ptr, ptr @kdb_modules, align 4
  %cmp1.not = icmp eq ptr %.pn, %15
  br i1 %cmp1.not, label %for.inc42.cleanup_crit_edge, label %for.inc42.for.body_crit_edge

for.inc42.for.body_crit_edge:                     ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc42.cleanup_crit_edge:                      ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc42.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_sr(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp.not = icmp eq i32 %argc, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = load i32, ptr @kdb_cmd_enabled, align 4
  %and3.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i.not = icmp eq i32 %and3.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_trap_printk to i32))
  %1 = load i32, ptr @kdb_trap_printk, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @kdb_trap_printk, align 4
  %arrayidx = getelementptr ptr, ptr %argv, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  tail call void @__handle_sysrq(i32 noundef %conv, i1 noundef zeroext %tobool4.i.not) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_trap_printk to i32))
  %6 = load i32, ptr @kdb_trap_printk, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr @kdb_trap_printk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_dmesg(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %iter = alloca %struct.kmsg_dump_iter, align 8
  %len = alloca i32, align 4
  %buf = alloca [201 x i8], align 1
  %cp = alloca ptr, align 4
  %setargs = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter) #16
  %0 = call ptr @memset(ptr %iter, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #16
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 4, !annotation !658
  call void @llvm.lifetime.start.p0(i64 201, ptr nonnull %buf) #16
  %2 = call ptr @memset(ptr %buf, i32 255, i32 201)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp = icmp sgt i32 %argc, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 0
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %if.then1

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cp) #16
  %3 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %cp, align 4, !annotation !658
  %arrayidx = getelementptr ptr, ptr %argv, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @simple_strtol(ptr noundef %5, ptr noundef nonnull %cp, i32 noundef 0) #16
  %6 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cp, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  %spec.store.select = select i1 %tobool2.not, i32 %call, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp5 = icmp sgt i32 %argc, 1
  br i1 %cmp5, label %if.then6, label %if.then1.if.end14_crit_edge

if.then1.if.end14_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then6:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx7 = getelementptr ptr, ptr %argv, i32 2
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7, align 4
  %call8 = call i32 @simple_strtoul(ptr noundef %11, ptr noundef nonnull %cp, i32 noundef 0) #16
  %12 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cp, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not = icmp ne i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp10 = icmp slt i32 %call8, 0
  %or.cond = select i1 %tobool9.not, i1 true, i1 %cmp10
  %spec.select = select i1 %or.cond, i32 0, i32 %call8
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %if.then1.if.end14_crit_edge
  %adjust.0 = phi i32 [ 0, %if.then1.if.end14_crit_edge ], [ %spec.select, %if.then6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cp) #16
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end.if.end15_crit_edge
  %lines.0 = phi i32 [ %spec.store.select, %if.end14 ], [ 0, %if.end.if.end15_crit_edge ]
  %adjust.1 = phi i32 [ %adjust.0, %if.end14 ], [ 0, %if.end.if.end15_crit_edge ]
  %sub39 = sub i32 0, %lines.0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #16
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i, align 4, !annotation !658
  %call.i = call fastcc i32 @kdbgetulenv(ptr noundef nonnull @.str.233, ptr noundef nonnull %val.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true, label %kdbgetintenv.exit

kdbgetintenv.exit:                                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #16
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end15
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool18.not = icmp eq i32 %18, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end21_crit_edge, label %if.then19

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %setargs) #16
  %19 = call ptr @memcpy(ptr %setargs, ptr @__const.kdb_dmesg.setargs, i32 12)
  %call20 = call i32 @kdb_set(i32 noundef 2, ptr noundef nonnull %setargs)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %setargs) #16
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %land.lhs.true.if.end21_crit_edge, %kdbgetintenv.exit
  call void @kmsg_dump_rewind(ptr noundef nonnull %iter) #16
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end21
  %n.0 = phi i32 [ 0, %if.end21 ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call22 = call zeroext i1 @kmsg_dump_get_line(ptr noundef nonnull %iter, i1 noundef zeroext true, ptr noundef null, i32 noundef 0, ptr noundef null) #16
  %inc = add i32 %n.0, 1
  br i1 %call22, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lines.0)
  %cmp23 = icmp slt i32 %lines.0, 0
  br i1 %cmp23, label %if.then25, label %if.else40

if.then25:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0, i32 %adjust.1)
  %cmp26.not = icmp sgt i32 %n.0, %adjust.1
  br i1 %cmp26.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  %call29 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.235, i32 noundef %n.0) #16
  br label %if.end68

if.else:                                          ; preds = %if.then25
  %sub = sub i32 %adjust.1, %lines.0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %n.0)
  %cmp30.not = icmp slt i32 %sub, %n.0
  br i1 %cmp30.not, label %if.else.if.end68_crit_edge, label %if.then32

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %sub33 = sub i32 %n.0, %adjust.1
  %call34 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.236, i32 noundef %n.0, i32 noundef %sub33) #16
  br label %if.end68

if.else40:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lines.0)
  %cmp41.not = icmp eq i32 %lines.0, 0
  br i1 %cmp41.not, label %if.else40.if.end68_crit_edge, label %if.then43

if.else40.if.end68_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68

if.then43:                                        ; preds = %if.else40
  %20 = add i32 %adjust.1, %lines.0
  %sub45 = sub i32 %n.0, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0, i32 %adjust.1)
  %cmp55.not = icmp sgt i32 %n.0, %adjust.1
  br i1 %cmp55.not, label %if.else59, label %if.end68.thread

if.end68.thread:                                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #18
  %call58 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.235, i32 noundef %n.0) #16
  br label %cleanup

if.else59:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub45)
  %cmp60 = icmp slt i32 %sub45, 0
  br i1 %cmp60, label %if.then62, label %if.else59.if.end68_crit_edge

if.else59.if.end68_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68

if.then62:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #18
  %add = add nsw i32 %sub45, %lines.0
  %call63 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.237, i32 noundef %n.0, i32 noundef %add) #16
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %if.else59.if.end68_crit_edge, %if.else40.if.end68_crit_edge, %if.then32, %if.else.if.end68_crit_edge, %if.then28
  %lines.1 = phi i32 [ %add, %if.then62 ], [ %lines.0, %if.else59.if.end68_crit_edge ], [ %n.0, %if.else40.if.end68_crit_edge ], [ %sub39, %if.else.if.end68_crit_edge ], [ %sub39, %if.then32 ], [ %sub39, %if.then28 ]
  %skip.0 = phi i32 [ 0, %if.then62 ], [ %sub45, %if.else59.if.end68_crit_edge ], [ 0, %if.else40.if.end68_crit_edge ], [ %adjust.1, %if.else.if.end68_crit_edge ], [ %adjust.1, %if.then32 ], [ %adjust.1, %if.then28 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %skip.0, i32 %n.0)
  %cmp69.not = icmp sge i32 %skip.0, %n.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip.0)
  %cmp72 = icmp slt i32 %skip.0, 0
  %or.cond140 = or i1 %cmp69.not, %cmp72
  br i1 %or.cond140, label %if.end68.cleanup_crit_edge, label %if.end75

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end75:                                         ; preds = %if.end68
  call void @kmsg_dump_rewind(ptr noundef nonnull %iter) #16
  %call78149151 = call zeroext i1 @kmsg_dump_get_line(ptr noundef nonnull %iter, i1 noundef zeroext true, ptr noundef nonnull %buf, i32 noundef 201, ptr noundef nonnull %len) #16
  br i1 %call78149151, label %if.end75.while.body79.lr.ph_crit_edge, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end75.while.body79.lr.ph_crit_edge:            ; preds = %if.end75
  br label %while.body79.lr.ph

while.body79.lr.ph:                               ; preds = %if.end89.while.body79.lr.ph_crit_edge, %if.end75.while.body79.lr.ph_crit_edge
  %skip.1.ph153 = phi i32 [ 0, %if.end89.while.body79.lr.ph_crit_edge ], [ %skip.0, %if.end75.while.body79.lr.ph_crit_edge ]
  %lines.2.ph152 = phi i32 [ %dec83, %if.end89.while.body79.lr.ph_crit_edge ], [ %lines.1, %if.end75.while.body79.lr.ph_crit_edge ]
  br label %while.body79

while.cond76:                                     ; preds = %while.body79
  %dec = add i32 %skip.1150, -1
  %call78 = call zeroext i1 @kmsg_dump_get_line(ptr noundef nonnull %iter, i1 noundef zeroext true, ptr noundef nonnull %buf, i32 noundef 201, ptr noundef nonnull %len) #16
  br i1 %call78, label %while.cond76.while.body79_crit_edge, label %while.cond76.cleanup_crit_edge

while.cond76.cleanup_crit_edge:                   ; preds = %while.cond76
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.cond76.while.body79_crit_edge:              ; preds = %while.cond76
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body79

while.body79:                                     ; preds = %while.cond76.while.body79_crit_edge, %while.body79.lr.ph
  %skip.1150 = phi i32 [ %skip.1.ph153, %while.body79.lr.ph ], [ %dec, %while.cond76.while.body79_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip.1150)
  %tobool80.not = icmp eq i32 %skip.1150, 0
  br i1 %tobool80.not, label %if.end82, label %while.cond76

if.end82:                                         ; preds = %while.body79
  %dec83 = add i32 %lines.2.ph152, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lines.2.ph152)
  %tobool84.not = icmp eq i32 %lines.2.ph152, 0
  br i1 %tobool84.not, label %if.end82.cleanup_crit_edge, label %if.end86

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end86:                                         ; preds = %if.end82
  %21 = load i32, ptr @kdb_flags, align 4
  %and = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool87.not = icmp eq i32 %and, 0
  br i1 %tobool87.not, label %if.end89, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end89:                                         ; preds = %if.end86
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %sub90 = add i32 %23, -1
  %call92 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.238, i32 noundef %sub90, ptr noundef nonnull %buf) #16
  %call78149 = call zeroext i1 @kmsg_dump_get_line(ptr noundef nonnull %iter, i1 noundef zeroext true, ptr noundef nonnull %buf, i32 noundef 201, ptr noundef nonnull %len) #16
  br i1 %call78149, label %if.end89.while.body79.lr.ph_crit_edge, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end89.while.body79.lr.ph_crit_edge:            ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body79.lr.ph

cleanup:                                          ; preds = %if.end89.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %while.cond76.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.end68.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end68.cleanup_crit_edge ], [ 0, %if.end68.thread ], [ 0, %if.end75.cleanup_crit_edge ], [ 0, %while.cond76.cleanup_crit_edge ], [ 0, %if.end86.cleanup_crit_edge ], [ 0, %if.end82.cleanup_crit_edge ], [ 0, %if.end89.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 201, ptr nonnull %buf) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_defcmd(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %.b256 = load i1, ptr @defcmd_in_progress, align 1
  br i1 %.b256, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.239) #16
  %call1 = tail call fastcc i32 @kdb_defcmd2(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.43)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %0 = zext i32 %argc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.306)
  switch i32 %argc, label %if.end.cleanup_crit_edge [
    i32 0, label %for.cond.preheader
    i32 3, label %if.end37
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %.pn277 = load ptr, ptr @kdb_cmds_head, align 4
  %cmp3.not279 = icmp eq ptr %.pn277, @kdb_cmds_head
  br i1 %cmp3.not279, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.inc27.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn280 = phi ptr [ %.pn, %for.inc27.for.body_crit_edge ], [ %.pn277, %for.cond.preheader.for.body_crit_edge ]
  %func = getelementptr i8, ptr %.pn280, i32 -20
  %1 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %func, align 4
  %cmp4 = icmp eq ptr %2, @kdb_exec_defcmd
  br i1 %cmp4, label %if.then5, label %for.body.for.inc27_crit_edge

for.body.for.inc27_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc27

if.then5:                                         ; preds = %for.body
  %kp.0281 = getelementptr i8, ptr %.pn280, i32 -24
  %3 = ptrtoint ptr %kp.0281 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kp.0281, align 4
  %usage = getelementptr i8, ptr %.pn280, i32 -16
  %5 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usage, align 4
  %help = getelementptr i8, ptr %.pn280, i32 -12
  %7 = ptrtoint ptr %help to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %help, align 4
  %call6 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.240, ptr noundef %4, ptr noundef %6, ptr noundef %8) #16
  %statements = getelementptr i8, ptr %.pn280, i32 8
  %9 = ptrtoint ptr %statements to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn260274 = load ptr, ptr %statements, align 4
  %cmp16.not275 = icmp eq ptr %.pn260274, %statements
  br i1 %cmp16.not275, label %if.then5.for.end_crit_edge, label %if.then5.for.body18_crit_edge

if.then5.for.body18_crit_edge:                    ; preds = %if.then5
  br label %for.body18

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %if.then5.for.body18_crit_edge
  %.pn260276 = phi ptr [ %.pn260, %for.body18.for.body18_crit_edge ], [ %.pn260274, %if.then5.for.body18_crit_edge ]
  %kms.0 = getelementptr i8, ptr %.pn260276, i32 -4
  %10 = ptrtoint ptr %kms.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kms.0, align 4
  %call19 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.241, ptr noundef %11) #16
  %12 = ptrtoint ptr %.pn260276 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn260 = load ptr, ptr %.pn260276, align 4
  %cmp16.not = icmp eq ptr %.pn260, %statements
  br i1 %cmp16.not, label %for.body18.for.end_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body18

for.body18.for.end_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body18.for.end_crit_edge, %if.then5.for.end_crit_edge
  %call25 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.242) #16
  br label %for.inc27

for.inc27:                                        ; preds = %for.end, %for.body.for.inc27_crit_edge
  %13 = ptrtoint ptr %.pn280 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn280, align 4
  %cmp3.not = icmp eq ptr %.pn, @kdb_cmds_head
  br i1 %cmp3.not, label %for.inc27.cleanup_crit_edge, label %for.inc27.for.body_crit_edge

for.inc27.for.body_crit_edge:                     ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc27.cleanup_crit_edge:                      ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end37:                                         ; preds = %if.end
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !659
  %and.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool49.not = icmp eq i32 %and.i, 0
  br i1 %tobool49.not, label %if.end37.if.end56_crit_edge, label %land.lhs.true

if.end37.if.end56_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end37
  %15 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i265 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i265 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %19 = load volatile i32, ptr @kgdb_active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %19)
  %cmp52 = icmp eq i32 %18, %19
  br i1 %cmp52, label %if.then54, label %land.lhs.true.if.end56_crit_edge

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %call55 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.243) #16
  br label %cleanup

if.end56:                                         ; preds = %land.lhs.true.if.end56_crit_edge, %if.end37.if.end56_crit_edge
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !659
  %and.i266 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i266)
  %tobool75.not = icmp eq i32 %and.i266, 0
  br i1 %tobool75.not, label %if.end56.land.end_crit_edge, label %land.rhs

if.end56.land.end_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

land.rhs:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  %21 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i267 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i267 to ptr
  %cpu77 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu77 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu77, align 4
  %call.i.i261 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %25 = load volatile i32, ptr @kgdb_active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %25)
  %cmp79 = icmp eq i32 %24, %25
  %phi.bo = select i1 %cmp79, i32 2848, i32 3520
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end56.land.end_crit_edge
  %26 = phi i32 [ 3520, %if.end56.land.end_crit_edge ], [ %phi.bo, %land.rhs ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef %26, i32 noundef 40) #21
  store ptr %call7.i.i, ptr @kdb_macro, align 4
  %tobool82.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool82.not, label %land.end.fail_defcmd_crit_edge, label %if.end84

land.end.fail_defcmd_crit_edge:                   ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail_defcmd

if.end84:                                         ; preds = %land.end
  %func85 = getelementptr inbounds %struct._kdbtab, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %func85 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @kdb_exec_defcmd, ptr %func85, align 4
  %minlen = getelementptr inbounds %struct._kdbtab, ptr %call7.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %minlen to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %minlen, align 8
  %flags = getelementptr inbounds %struct._kdbtab, ptr %call7.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 512, ptr %flags, align 4
  %arrayidx = getelementptr ptr, ptr %argv, i32 1
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !659
  %and.i268 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i268)
  %tobool104.not = icmp eq i32 %and.i268, 0
  br i1 %tobool104.not, label %if.end84.land.end111_crit_edge, label %land.rhs105

if.end84.land.end111_crit_edge:                   ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end111

land.rhs105:                                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  %34 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i269 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i269 to ptr
  %cpu107 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu107 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu107, align 4
  %call.i.i262 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %38 = load volatile i32, ptr @kgdb_active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %38)
  %cmp109 = icmp eq i32 %37, %38
  %phi.sel257 = select i1 %cmp109, i32 2592, i32 3264
  br label %land.end111

land.end111:                                      ; preds = %land.rhs105, %if.end84.land.end111_crit_edge
  %39 = phi i32 [ 3264, %if.end84.land.end111_crit_edge ], [ %phi.sel257, %land.rhs105 ]
  %call113 = tail call ptr @kdb_strdup(ptr noundef %32, i32 noundef %39) #16
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call113, ptr %call7.i.i, align 8
  %tobool116.not = icmp eq ptr %call113, null
  br i1 %tobool116.not, label %land.end111.fail_name_crit_edge, label %if.end118

land.end111.fail_name_crit_edge:                  ; preds = %land.end111
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail_name

if.end118:                                        ; preds = %land.end111
  %arrayidx119 = getelementptr ptr, ptr %argv, i32 2
  %41 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx119, align 4
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !659
  %and.i270 = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i270)
  %tobool138.not = icmp eq i32 %and.i270, 0
  br i1 %tobool138.not, label %if.end118.land.end145_crit_edge, label %land.rhs139

if.end118.land.end145_crit_edge:                  ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end145

land.rhs139:                                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #18
  %44 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i271 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i271 to ptr
  %cpu141 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu141 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu141, align 4
  %call.i.i263 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %48 = load volatile i32, ptr @kgdb_active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %48)
  %cmp143 = icmp eq i32 %47, %48
  %phi.sel258 = select i1 %cmp143, i32 2592, i32 3264
  br label %land.end145

land.end145:                                      ; preds = %land.rhs139, %if.end118.land.end145_crit_edge
  %49 = phi i32 [ 3264, %if.end118.land.end145_crit_edge ], [ %phi.sel258, %land.rhs139 ]
  %call147 = tail call ptr @kdb_strdup(ptr noundef %42, i32 noundef %49) #16
  %usage148 = getelementptr inbounds %struct._kdbtab, ptr %call7.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %usage148 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call147, ptr %usage148, align 8
  %tobool150.not = icmp eq ptr %call147, null
  br i1 %tobool150.not, label %land.end145.fail_usage_crit_edge, label %if.end152

land.end145.fail_usage_crit_edge:                 ; preds = %land.end145
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail_usage

if.end152:                                        ; preds = %land.end145
  %arrayidx153 = getelementptr ptr, ptr %argv, i32 3
  %51 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx153, align 4
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !659
  %and.i272 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i272)
  %tobool172.not = icmp eq i32 %and.i272, 0
  br i1 %tobool172.not, label %if.end152.land.end179_crit_edge, label %land.rhs173

if.end152.land.end179_crit_edge:                  ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end179

land.rhs173:                                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #18
  %54 = tail call i32 @llvm.read_register.i32(metadata !648) #16
  %and.i273 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i273 to ptr
  %cpu175 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %cpu175 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu175, align 4
  %call.i.i264 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %58 = load volatile i32, ptr @kgdb_active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %58)
  %cmp177 = icmp eq i32 %57, %58
  %phi.sel259 = select i1 %cmp177, i32 2592, i32 3264
  br label %land.end179

land.end179:                                      ; preds = %land.rhs173, %if.end152.land.end179_crit_edge
  %59 = phi i32 [ 3264, %if.end152.land.end179_crit_edge ], [ %phi.sel259, %land.rhs173 ]
  %call181 = tail call ptr @kdb_strdup(ptr noundef %52, i32 noundef %59) #16
  %help182 = getelementptr inbounds %struct._kdbtab, ptr %call7.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %help182 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call181, ptr %help182, align 4
  %tobool184.not = icmp eq ptr %call181, null
  %61 = ptrtoint ptr %usage148 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %usage148, align 8
  br i1 %tobool184.not, label %fail_help, label %if.end186

if.end186:                                        ; preds = %land.end179
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %64)
  %cmp190 = icmp eq i8 %64, 34
  br i1 %cmp190, label %if.then192, label %if.end186.if.end201_crit_edge

if.end186.if.end201_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end201

if.then192:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #18
  %65 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx119, align 4
  %add.ptr195 = getelementptr i8, ptr %66, i32 1
  %call196 = tail call ptr @strcpy(ptr noundef %62, ptr noundef %add.ptr195) #19
  %67 = ptrtoint ptr %usage148 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %usage148, align 8
  %call199 = tail call i32 @strlen(ptr noundef %68) #19
  %sub = add i32 %call199, -1
  %arrayidx200 = getelementptr i8, ptr %68, i32 %sub
  %69 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx200, align 1
  br label %if.end201

if.end201:                                        ; preds = %if.then192, %if.end186.if.end201_crit_edge
  %70 = ptrtoint ptr %help182 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %help182, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %73)
  %cmp205 = icmp eq i8 %73, 34
  br i1 %cmp205, label %if.then207, label %if.end201.if.end217_crit_edge

if.end201.if.end217_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end217

if.then207:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #18
  %74 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx153, align 4
  %add.ptr210 = getelementptr i8, ptr %75, i32 1
  %call211 = tail call ptr @strcpy(ptr noundef %71, ptr noundef %add.ptr210) #19
  %76 = ptrtoint ptr %help182 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %help182, align 4
  %call214 = tail call i32 @strlen(ptr noundef %77) #19
  %sub215 = add i32 %call214, -1
  %arrayidx216 = getelementptr i8, ptr %77, i32 %sub215
  %78 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %arrayidx216, align 1
  br label %if.end217

if.end217:                                        ; preds = %if.then207, %if.end201.if.end217_crit_edge
  %79 = load ptr, ptr @kdb_macro, align 4
  %statements218 = getelementptr inbounds %struct.kdb_macro, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %statements218 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %statements218, ptr %statements218, align 4
  %prev.i = getelementptr inbounds %struct.kdb_macro, ptr %79, i32 0, i32 1, i32 1
  %81 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %statements218, ptr %prev.i, align 4
  store i1 true, ptr @defcmd_in_progress, align 1
  br label %cleanup

fail_help:                                        ; preds = %land.end179
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef %62) #16
  br label %fail_usage

fail_usage:                                       ; preds = %fail_help, %land.end145.fail_usage_crit_edge
  %82 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %83) #16
  br label %fail_name

fail_name:                                        ; preds = %fail_usage, %land.end111.fail_name_crit_edge
  %84 = load ptr, ptr @kdb_macro, align 4
  tail call void @kfree(ptr noundef %84) #16
  br label %fail_defcmd

fail_defcmd:                                      ; preds = %fail_name, %land.end.fail_defcmd_crit_edge
  %arrayidx221 = getelementptr ptr, ptr %argv, i32 1
  %85 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx221, align 4
  %call222 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.244, ptr noundef %86) #16
  br label %cleanup

cleanup:                                          ; preds = %fail_defcmd, %if.end217, %if.then54, %for.inc27.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -7, %if.then54 ], [ 0, %if.end217 ], [ -7, %fail_defcmd ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_kill(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  %endp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #16
  %0 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp, align 4, !annotation !658
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp.not = icmp eq i32 %argc, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %argv, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @simple_strtol(ptr noundef %2, ptr noundef nonnull %endp, i32 noundef 0) #16
  %3 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %endp, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp3 = icmp sgt i32 %call, -1
  br i1 %cmp3, label %if.end2.if.then6_crit_edge, label %lor.lhs.false

if.end2.if.then6_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end2
  %sub = sub i32 0, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub)
  %cmp.i = icmp ugt i32 %sub, 64
  br i1 %cmp.i, label %lor.lhs.false.if.then6_crit_edge, label %if.end8

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end2.if.then6_crit_edge
  %call7 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.247) #16
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %arrayidx10 = getelementptr ptr, ptr %argv, i32 2
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx10, align 4
  %call11 = call i32 @simple_strtol(ptr noundef %8, ptr noundef nonnull %endp, i32 noundef 0) #16
  %9 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %endp, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not = icmp eq i8 %12, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11)
  %cmp15 = icmp slt i32 %call11, 1
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %call17 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.248) #16
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = call ptr @find_task_by_pid_ns(i32 noundef %call11, ptr noundef nonnull @init_pid_ns) #16
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  %call22 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.249) #16
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %call19, i32 0, i32 75
  %13 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %group_leader, align 4
  call void @kdb_send_sig(ptr noundef %14, i32 noundef %sub) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then21, %if.then16, %if.end8.cleanup_crit_edge, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then16 ], [ 0, %if.end23 ], [ 0, %if.then21 ], [ -2, %entry.cleanup_crit_edge ], [ -15, %if.end.cleanup_crit_edge ], [ -15, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_summary(i32 noundef %argc, ptr nocapture noundef readnone %argv) #0 align 64 {
entry:
  %now = alloca i64, align 8
  %val = alloca %struct.sysinfo, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %now) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %val) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.250, ptr noundef nonnull @init_uts_ns) #16
  %call1 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.251, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2)) #16
  %call2 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.252, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 3)) #16
  %call3 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.253, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 4)) #16
  %call4 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.254, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 1)) #16
  %call5 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.255, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 5)) #16
  %call6 = tail call i64 @__ktime_get_real_seconds() #16
  %0 = ptrtoint ptr %now to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call6, ptr %now, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %1 = load i32, ptr @sys_tz, align 4
  %call7 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull %now, i32 noundef %1) #16
  %call.i = call i64 @ktime_get_mono_fast_ns() #16
  %2 = getelementptr inbounds i8, ptr %val, i32 4
  %3 = getelementptr inbounds i8, ptr %val, i32 16
  %4 = call ptr @memset(ptr %3, i32 0, i32 48)
  %5 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %call.i, i32 0) #24, !srcloc !666
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %call.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #24, !srcloc !667
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 29
  %conv.i = trunc i64 %div1581.i.i.i to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.i, ptr %val, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @avenrun to i32))
  %8 = load i32, ptr @avenrun, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i32], ptr @avenrun, i32 0, i32 1) to i32))
  %10 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @avenrun, i32 0, i32 1), align 4
  %arrayidx4.i = getelementptr inbounds %struct.sysinfo, ptr %val, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx4.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i32], ptr @avenrun, i32 0, i32 2) to i32))
  %12 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @avenrun, i32 0, i32 2), align 4
  %arrayidx6.i = getelementptr inbounds %struct.sysinfo, ptr %val, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx6.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_threads to i32))
  %14 = load i32, ptr @nr_threads, align 4
  %15 = trunc i32 %14 to i16
  %conv7.i = add i16 %15, -1
  %procs.i = getelementptr inbounds %struct.sysinfo, ptr %val, i32 0, i32 8
  %16 = ptrtoint ptr %procs.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv7.i, ptr %procs.i, align 4
  call void @si_meminfo(ptr noundef nonnull %val) #16
  %call8 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.257) #16
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 86400, i32 %18)
  %cmp = icmp sgt i32 %18, 86400
  br i1 %cmp, label %if.then9, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %.frozen = freeze i32 %18
  %div46 = udiv i32 %.frozen, 86400
  %19 = mul i32 %div46, 86400
  %rem47.decomposed = sub i32 %.frozen, %19
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %rem47.decomposed, ptr %val, align 4
  %.off = add nsw i32 %18, -86400
  call void @__sanitizer_cov_trace_const_cmp4(i32 86400, i32 %.off)
  %21 = icmp ult i32 %.off, 86400
  %cond = select i1 %21, ptr @.str, ptr @.str.259
  %call13 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.258, i32 noundef %div46, ptr noundef nonnull %cond) #16
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end.if.end14_crit_edge
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %div16 = sdiv i32 %23, 3600
  %div18 = sdiv i32 %23, 60
  %rem19 = srem i32 %div18, 60
  %call20 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.260, i32 noundef %div16, i32 noundef %rem19) #16
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %2, align 4
  %shr = lshr i32 %25, 11
  %and = and i32 %25, 2047
  %mul = mul nuw nsw i32 %and, 100
  %shr23 = lshr i32 %mul, 11
  %26 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx4.i, align 4
  %shr26 = lshr i32 %27, 11
  %and29 = and i32 %27, 2047
  %mul30 = mul nuw nsw i32 %and29, 100
  %shr31 = lshr i32 %mul30, 11
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx6.i, align 4
  %shr34 = lshr i32 %29, 11
  %and37 = and i32 %29, 2047
  %mul38 = mul nuw nsw i32 %and37, 100
  %shr39 = lshr i32 %mul38, 11
  %call40 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.261, i32 noundef %shr, i32 noundef %shr23, i32 noundef %shr26, i32 noundef %shr31, i32 noundef %shr34, i32 noundef %shr39) #16
  %totalram = getelementptr inbounds %struct.sysinfo, ptr %val, i32 0, i32 2
  %30 = ptrtoint ptr %totalram to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %totalram, align 4
  %shl = shl i32 %31, 2
  %freeram = getelementptr inbounds %struct.sysinfo, ptr %val, i32 0, i32 3
  %32 = ptrtoint ptr %freeram to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %freeram, align 4
  %shl41 = shl i32 %33, 2
  %bufferram = getelementptr inbounds %struct.sysinfo, ptr %val, i32 0, i32 5
  %34 = ptrtoint ptr %bufferram to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bufferram, align 4
  %shl42 = shl i32 %35, 2
  %call43 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.262, i32 noundef %shl, i32 noundef %shl41, i32 noundef %shl42) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %val) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %now) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_per_cpu(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  %endp.i81 = alloca ptr, align 4
  %endp.i = alloca ptr, align 4
  %fmtstr = alloca [64 x i8], align 1
  %nextarg = alloca i32, align 4
  %symaddr = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fmtstr) #16
  %0 = call ptr @memset(ptr %fmtstr, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextarg) #16
  %1 = ptrtoint ptr %nextarg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %nextarg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %symaddr) #16
  %2 = ptrtoint ptr %symaddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %symaddr, align 4, !annotation !658
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !658
  %4 = add i32 %argc, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %4)
  %5 = icmp ult i32 %4, -3
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @kdbgetaddrarg(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull %nextarg, ptr noundef nonnull %symaddr, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp4 = icmp ugt i32 %argc, 1
  br i1 %cmp4, label %if.then5, label %if.end16.thread

if.end16.thread:                                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %call17103 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fmtstr, ptr noundef nonnull @.str.263, i32 noundef 8)
  br label %if.end31

if.then5:                                         ; preds = %if.end3
  %arrayidx = getelementptr ptr, ptr %argv, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp.i) #16
  %8 = ptrtoint ptr %endp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp.i, align 4, !annotation !658
  %call.i = call i32 @simple_strtoul(ptr noundef %7, ptr noundef nonnull %endp.i, i32 noundef 0) #16
  %9 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %endp.i, align 4
  %cmp.i = icmp eq ptr %10, %7
  br i1 %cmp.i, label %if.then.i, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then.i:                                        ; preds = %if.then5
  %call1.i = call i32 @simple_strtoul(ptr noundef %7, ptr noundef nonnull %endp.i, i32 noundef 16) #16
  %11 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %endp.i, align 4
  %cmp2.i = icmp eq ptr %12, %7
  br i1 %cmp2.i, label %kdbgetularg.exit, label %if.then.i.if.end10_crit_edge

if.then.i.if.end10_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

kdbgetularg.exit:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #16
  br label %cleanup

if.end10:                                         ; preds = %if.then.i.if.end10_crit_edge, %if.then5.if.end10_crit_edge
  %val.0.i = phi i32 [ %call1.i, %if.then.i.if.end10_crit_edge ], [ %call.i, %if.then5.if.end10_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.i)
  %tobool11.not = icmp eq i32 %val.0.i, 0
  br i1 %tobool11.not, label %if.end10.if.end16_crit_edge, label %if.else

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %val.0.i)
  %cmp13 = icmp ugt i32 %val.0.i, 4
  br i1 %cmp13, label %if.else.cleanup_crit_edge, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %bytesperword.2 = phi i32 [ %val.0.i, %if.else.if.end16_crit_edge ], [ 4, %if.end10.if.end16_crit_edge ]
  %mul = shl nuw nsw i32 %bytesperword.2, 1
  %call17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fmtstr, ptr noundef nonnull @.str.263, i32 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp18 = icmp ugt i32 %argc, 2
  br i1 %cmp18, label %if.then19, label %if.end16.if.end31_crit_edge

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.then19:                                        ; preds = %if.end16
  %arrayidx20 = getelementptr ptr, ptr %argv, i32 3
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp.i81) #16
  %15 = ptrtoint ptr %endp.i81 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp.i81, align 4, !annotation !658
  %call.i82 = call i32 @simple_strtoul(ptr noundef %14, ptr noundef nonnull %endp.i81, i32 noundef 0) #16
  %16 = ptrtoint ptr %endp.i81 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %endp.i81, align 4
  %cmp.i83 = icmp eq ptr %17, %14
  br i1 %cmp.i83, label %if.then.i86, label %if.then19.if.end24_crit_edge

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.then.i86:                                      ; preds = %if.then19
  %call1.i84 = call i32 @simple_strtoul(ptr noundef %14, ptr noundef nonnull %endp.i81, i32 noundef 16) #16
  %18 = ptrtoint ptr %endp.i81 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %endp.i81, align 4
  %cmp2.i85 = icmp eq ptr %19, %14
  br i1 %cmp2.i85, label %kdbgetularg.exit90, label %if.then.i86.if.end24_crit_edge

if.then.i86.if.end24_crit_edge:                   ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

kdbgetularg.exit90:                               ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i81) #16
  br label %cleanup

if.end24:                                         ; preds = %if.then.i86.if.end24_crit_edge, %if.then19.if.end24_crit_edge
  %val.0.i87 = phi i32 [ %call1.i84, %if.then.i86.if.end24_crit_edge ], [ %call.i82, %if.then19.if.end24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i81) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0.i87, i32 %20)
  %cmp25.not = icmp ult i32 %val.0.i87, %20
  br i1 %cmp25.not, label %lor.lhs.false26, label %if.end24.if.then28_crit_edge

if.end24.if.then28_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28

lor.lhs.false26:                                  ; preds = %if.end24
  %call27 = call fastcc zeroext i1 @cpu_online(i32 noundef %val.0.i87)
  br i1 %call27, label %lor.lhs.false26.if.end31_crit_edge, label %lor.lhs.false26.if.then28_crit_edge

lor.lhs.false26.if.then28_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28

lor.lhs.false26.if.end31_crit_edge:               ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.then28:                                        ; preds = %lor.lhs.false26.if.then28_crit_edge, %if.end24.if.then28_crit_edge
  %call29 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.264, i32 noundef %val.0.i87) #16
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false26.if.end31_crit_edge, %if.end16.if.end31_crit_edge, %if.end16.thread
  %bytesperword.2105 = phi i32 [ %bytesperword.2, %lor.lhs.false26.if.end31_crit_edge ], [ %bytesperword.2, %if.end16.if.end31_crit_edge ], [ 4, %if.end16.thread ]
  %whichcpu.1 = phi i32 [ %val.0.i87, %lor.lhs.false26.if.end31_crit_edge ], [ -1, %if.end16.if.end31_crit_edge ], [ -1, %if.end16.thread ]
  %call32111 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call32111, i32 %21)
  %cmp33112 = icmp ult i32 %call32111, %21
  br i1 %cmp33112, label %for.body.lr.ph, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %whichcpu.1)
  %cmp37.not = icmp eq i32 %whichcpu.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bytesperword.2105)
  %cmp49 = icmp eq i32 %bytesperword.2105, 4
  %conv = zext i1 %cmp49 to i32
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %call32113 = phi i32 [ %call32111, %for.body.lr.ph ], [ %call32, %for.cond.backedge.for.body_crit_edge ]
  %22 = load i32, ptr @kdb_flags, align 4
  %and = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.end36, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end36:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %whichcpu.1, i32 %call32113)
  %cmp38.not = icmp eq i32 %whichcpu.1, %call32113
  %or.cond80 = select i1 %cmp37.not, i1 true, i1 %cmp38.not
  br i1 %or.cond80, label %if.end40, label %if.end36.for.cond.backedge_crit_edge

if.end36.for.cond.backedge_crit_edge:             ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.backedge

if.end40:                                         ; preds = %if.end36
  %23 = ptrtoint ptr %symaddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %symaddr, align 4
  %arrayidx41 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call32113
  %25 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx41, align 4
  %add = add i32 %26, %24
  %call42 = call i32 @kdb_getword(ptr noundef nonnull %val, i32 noundef %add, i32 noundef %bytesperword.2105) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %call45 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.265, i32 noundef %call32113, i32 noundef %add, i32 noundef %call42) #16
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end46, %if.then44, %if.end36.for.cond.backedge_crit_edge
  %call32 = call i32 @cpumask_next(i32 noundef %call32113, ptr noundef nonnull @__cpu_online_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %cmp33 = icmp ult i32 %call32, %27
  br i1 %cmp33, label %for.cond.backedge.for.body_crit_edge, label %for.cond.backedge.cleanup_crit_edge

for.cond.backedge.cleanup_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %call47 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.266, i32 noundef %call32113) #16
  call fastcc void @kdb_md_line(ptr noundef nonnull %fmtstr, i32 noundef %add, i32 noundef %conv, i32 noundef 1, i32 noundef %bytesperword.2105, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %for.cond.backedge

cleanup:                                          ; preds = %for.cond.backedge.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then28, %kdbgetularg.exit90, %if.else.cleanup_crit_edge, %kdbgetularg.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -18, %if.then28 ], [ -2, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -15, %kdbgetularg.exit ], [ -3, %if.else.cleanup_crit_edge ], [ -15, %kdbgetularg.exit90 ], [ 0, %if.end31.cleanup_crit_edge ], [ 0, %for.cond.backedge.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %symaddr) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextarg) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fmtstr) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_grep_help(i32 noundef %argc, ptr nocapture noundef readnone %argv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.267) #16
  %call1 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.268) #16
  %call2 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.269) #16
  %call3 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.270) #16
  %call4 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.271) #16
  %call5 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.272) #16
  %call6 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.273) #16
  %call7 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.274) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_getphysword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_getword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kdb_md_line(ptr noundef %fmtstr, i32 noundef %addr, i32 noundef %symbolic, i32 noundef %nosect, i32 noundef %bytesperword, i32 noundef %num, i32 noundef %repeat, i32 noundef %phys) unnamed_addr #0 align 64 {
entry:
  %symtab = alloca %struct.__ksymtab, align 4
  %cbuf = alloca [32 x i8], align 1
  %word = alloca i32, align 4
  %wc = alloca %union.anon.71, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %symtab) #16
  %0 = call ptr @memset(ptr %symtab, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cbuf) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word) #16
  %1 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %word, align 4, !annotation !658
  %2 = call ptr @memset(ptr %cbuf, i32 0, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phys)
  %tobool.not = icmp eq i32 %phys, 0
  %.str.182..str.181 = select i1 %tobool.not, ptr @.str.182, ptr @.str.181
  %call2 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull %.str.182..str.181, i32 noundef %addr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp78 = icmp sgt i32 %num, 0
  br i1 %cmp78, label %land.rhs.lr.ph, label %entry.for.end50_crit_edge

entry.for.end50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end50

land.rhs.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %symbolic)
  %tobool17.not = icmp eq i32 %symbolic, 0
  %sym_name = getelementptr inbounds %struct.__ksymtab, ptr %symtab, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nosect)
  %tobool24.not = icmp eq i32 %nosect, 0
  %mod_name = getelementptr inbounds %struct.__ksymtab, ptr %symtab, i32 0, i32 1
  %sec_name = getelementptr inbounds %struct.__ksymtab, ptr %symtab, i32 0, i32 4
  %sec_start = getelementptr inbounds %struct.__ksymtab, ptr %symtab, i32 0, i32 5
  %sym_start = getelementptr inbounds %struct.__ksymtab, ptr %symtab, i32 0, i32 8
  %sym_end = getelementptr inbounds %struct.__ksymtab, ptr %symtab, i32 0, i32 9
  %add.ptr = getelementptr inbounds i8, ptr %wc, i32 8
  %idx.neg = sub i32 0, %bytesperword
  %add.ptr31 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytesperword)
  %cmp3374 = icmp sgt i32 %bytesperword, 0
  %3 = add i32 %bytesperword, -1
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc48.land.rhs_crit_edge, %land.rhs.lr.ph
  %addr.addr.083 = phi i32 [ %addr, %land.rhs.lr.ph ], [ %addr.addr.1, %for.inc48.land.rhs_crit_edge ]
  %i.081 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc49, %for.inc48.land.rhs_crit_edge ]
  %c.080 = phi ptr [ %cbuf, %land.rhs.lr.ph ], [ %c.2, %for.inc48.land.rhs_crit_edge ]
  %repeat.addr.079 = phi i32 [ %repeat, %land.rhs.lr.ph ], [ %dec, %for.inc48.land.rhs_crit_edge ]
  %dec = add i32 %repeat.addr.079, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %repeat.addr.079)
  %tobool3.not = icmp eq i32 %repeat.addr.079, 0
  br i1 %tobool3.not, label %land.rhs.for.end50_crit_edge, label %for.body

land.rhs.for.end50_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end50

for.body:                                         ; preds = %land.rhs
  br i1 %tobool.not, label %if.else10, label %if.then5

if.then5:                                         ; preds = %for.body
  %call6 = call i32 @kdb_getphysword(ptr noundef nonnull %word, i32 noundef %addr.addr.083, i32 noundef %bytesperword) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end15_crit_edge, label %if.then5.for.end50_crit_edge

if.then5.for.end50_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end50

if.then5.if.end15_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.else10:                                        ; preds = %for.body
  %call11 = call i32 @kdb_getword(ptr noundef nonnull %word, i32 noundef %addr.addr.083, i32 noundef %bytesperword) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.else10.if.end15_crit_edge, label %if.else10.for.end50_crit_edge

if.else10.for.end50_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end50

if.else10.if.end15_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.end15:                                         ; preds = %if.else10.if.end15_crit_edge, %if.then5.if.end15_crit_edge
  %4 = ptrtoint ptr %word to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %word, align 4
  %call16 = call i32 (ptr, ...) @kdb_printf(ptr noundef %fmtstr, i32 noundef %5) #16
  br i1 %tobool17.not, label %if.else20, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %word to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %word, align 4
  %call19 = call i32 @kdbnearsym(i32 noundef %7, ptr noundef nonnull %symtab) #16
  br label %if.end21

if.else20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %8 = call ptr @memset(ptr %symtab, i32 0, i32 40)
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then18
  %9 = ptrtoint ptr %sym_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sym_name, align 4
  %tobool22.not = icmp eq ptr %10, null
  br i1 %tobool22.not, label %if.else29, label %if.then23

if.then23:                                        ; preds = %if.end21
  %11 = ptrtoint ptr %word to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %word, align 4
  call void @kdb_symbol_print(i32 noundef %12, ptr noundef nonnull %symtab, i32 noundef 0) #16
  br i1 %tobool24.not, label %if.then25, label %if.then23.for.inc48_crit_edge

if.then23.for.inc48_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc48

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  %call26 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.8) #16
  %13 = ptrtoint ptr %mod_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mod_name, align 4
  %15 = ptrtoint ptr %sec_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sec_name, align 4
  %17 = ptrtoint ptr %sec_start to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sec_start, align 4
  %19 = ptrtoint ptr %sym_start to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sym_start, align 4
  %21 = ptrtoint ptr %sym_end to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sym_end, align 4
  %call27 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.183, ptr noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #16
  br label %for.inc48

if.else29:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wc) #16
  %23 = ptrtoint ptr %word to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %word, align 4
  %conv = zext i32 %24 to i64
  %25 = ptrtoint ptr %wc to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv, ptr %wc, align 8
  br i1 %cmp3374, label %for.body35.preheader, label %if.else29.for.end_crit_edge

if.else29.for.end_crit_edge:                      ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body35.preheader:                             ; preds = %if.else29
  %uglygep = getelementptr i8, ptr %c.080, i32 %3
  br label %for.body35

for.body35:                                       ; preds = %cond.end.for.body35_crit_edge, %for.body35.preheader
  %cp.077 = phi ptr [ %incdec.ptr, %cond.end.for.body35_crit_edge ], [ %add.ptr31, %for.body35.preheader ]
  %c.175 = phi ptr [ %incdec.ptr45, %cond.end.for.body35_crit_edge ], [ %c.080, %for.body35.preheader ]
  %incdec.ptr = getelementptr i8, ptr %cp.077, i32 1
  %26 = ptrtoint ptr %cp.077 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cp.077, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp37 = icmp sgt i8 %27, -1
  br i1 %cmp37, label %land.lhs.true, label %for.body35.cond.end_crit_edge

for.body35.cond.end_crit_edge:                    ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

land.lhs.true:                                    ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #18
  %conv36 = zext i8 %27 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv36
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  %30 = and i8 %29, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp41.not = icmp eq i8 %30, 0
  %spec.select = select i1 %cmp41.not, i8 46, i8 %27
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %for.body35.cond.end_crit_edge
  %cond = phi i8 [ 46, %for.body35.cond.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %incdec.ptr45 = getelementptr i8, ptr %c.175, i32 1
  %31 = ptrtoint ptr %c.175 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %cond, ptr %c.175, align 1
  %exitcond.not = icmp eq ptr %c.175, %uglygep
  br i1 %exitcond.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body35_crit_edge

cond.end.for.body35_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body35

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %if.else29.for.end_crit_edge
  %c.1.lcssa = phi ptr [ %c.080, %if.else29.for.end_crit_edge ], [ %incdec.ptr45, %cond.end.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wc) #16
  br label %for.inc48

for.inc48:                                        ; preds = %for.end, %if.then25, %if.then23.for.inc48_crit_edge
  %c.2 = phi ptr [ %c.1.lcssa, %for.end ], [ %c.080, %if.then25 ], [ %c.080, %if.then23.for.inc48_crit_edge ]
  %addr.addr.1 = add i32 %addr.addr.083, %bytesperword
  %inc49 = add nuw nsw i32 %i.081, 1
  %exitcond88.not = icmp eq i32 %inc49, %num
  br i1 %exitcond88.not, label %for.inc48.for.end50_crit_edge, label %for.inc48.land.rhs_crit_edge

for.inc48.land.rhs_crit_edge:                     ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

for.inc48.for.end50_crit_edge:                    ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end50

for.end50:                                        ; preds = %for.inc48.for.end50_crit_edge, %if.else10.for.end50_crit_edge, %if.then5.for.end50_crit_edge, %land.rhs.for.end50_crit_edge, %entry.for.end50_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end50_crit_edge ], [ %num, %for.inc48.for.end50_crit_edge ], [ %i.081, %if.else10.for.end50_crit_edge ], [ %i.081, %if.then5.for.end50_crit_edge ], [ %repeat, %land.rhs.for.end50_crit_edge ]
  %sub = sub i32 %num, %i.0.lcssa
  %mul = shl i32 %bytesperword, 1
  %add51 = or i32 %mul, 1
  %mul52 = mul i32 %sub, %add51
  %add53 = add i32 %mul52, 1
  %call55 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.184, i32 noundef %add53, ptr noundef nonnull @.str.185, ptr noundef nonnull %cbuf) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbuf) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %symtab) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_getarea_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_putword(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dbg_get_reg(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_set_reg(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cpu_online(i32 noundef %cpu) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !663

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.214, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div1.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_pid_ns(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_restart() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @module_refcount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__handle_sysrq(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmsg_dump_rewind(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kmsg_dump_get_line(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_exec_defcmd(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp.not = icmp eq i32 %argc, 0
  br i1 %cmp.not, label %entry.for.cond_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ @kdb_cmds_head, %entry.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp1 = icmp eq ptr %.pn, @kdb_cmds_head
  br i1 %cmp1, label %if.then11.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %kp.0 = getelementptr i8, ptr %.pn, i32 -24
  %1 = ptrtoint ptr %kp.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %kp.0, align 4
  %3 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %argv, align 4
  %call = tail call i32 @strcmp(ptr noundef %2, ptr noundef %4) #19
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.end14, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.then11.critedge:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %argv, align 4
  %call13 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.245, ptr noundef %6) #16
  br label %cleanup

if.end14:                                         ; preds = %for.body
  %kp.0.le = getelementptr i8, ptr %.pn, i32 -24
  %statements = getelementptr i8, ptr %.pn, i32 8
  br label %for.cond22

for.cond22:                                       ; preds = %for.body27.for.cond22_crit_edge, %if.end14
  %.pn55.in = phi ptr [ %statements, %if.end14 ], [ %.pn55, %for.body27.for.cond22_crit_edge ]
  %7 = ptrtoint ptr %.pn55.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn55 = load ptr, ptr %.pn55.in, align 4
  %cmp25.not = icmp eq ptr %.pn55, %statements
  br i1 %cmp25.not, label %for.cond22.cleanup_crit_edge, label %for.body27

for.cond22.cleanup_crit_edge:                     ; preds = %for.cond22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body27:                                       ; preds = %for.cond22
  %kms.0 = getelementptr i8, ptr %.pn55, i32 -4
  %8 = ptrtoint ptr %kp.0.le to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kp.0.le, align 4
  %10 = ptrtoint ptr %kms.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kms.0, align 4
  %call29 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.246, ptr noundef %9, ptr noundef %11) #16
  %12 = ptrtoint ptr %kms.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kms.0, align 4
  %call31 = tail call i32 @kdb_parse(ptr noundef %13)
  %tobool.not = icmp eq i32 %call31, 0
  br i1 %tobool.not, label %for.body27.for.cond22_crit_edge, label %for.body27.cleanup_crit_edge

for.body27.cleanup_crit_edge:                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body27.for.cond22_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond22

cleanup:                                          ; preds = %for.body27.cleanup_crit_edge, %for.cond22.cleanup_crit_edge, %if.then11.critedge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -7, %if.then11.critedge ], [ -2, %entry.cleanup_crit_edge ], [ 0, %for.cond22.cleanup_crit_edge ], [ %call31, %for.body27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kdb_send_sig(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_disable_nmi(i32 noundef %argc, ptr nocapture noundef readnone %argv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kdb_nmi_disabled, i32 noundef 4) #16
  %0 = load volatile i32, ptr @kdb_nmi_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kdb_nmi_disabled, i32 noundef 4) #16
  store volatile i32 1, ptr @kdb_nmi_disabled, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 9), align 4
  tail call void %1(i1 noundef zeroext false) #16
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 312)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 312)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nobuiltin }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind readonly willreturn }
attributes #23 = { cold }
attributes #24 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646}
!llvm.named.register.sp = !{!648}
!llvm.module.flags = !{!649, !650, !651, !652, !653, !654, !655, !656}
!llvm.ident = !{!657}

!0 = !{ptr @__param_cmd_enable, !1, !"__param_cmd_enable", i1 false, i1 false}
!1 = !{!"../kernel/debug/kdb/kdb_main.c", i32 54, i32 1}
!2 = !{ptr @__UNIQUE_ID_cmd_enabletype245, !1, !"__UNIQUE_ID_cmd_enabletype245", i1 false, i1 false}
!3 = !{ptr @__ksymtab_kdb_grepping_flag, !4, !"__ksymtab_kdb_grepping_flag", i1 false, i1 false}
!4 = !{!"../kernel/debug/kdb/kdb_main.c", i32 58, i32 1}
!5 = !{ptr @kdb_initial_cpu, !6, !"kdb_initial_cpu", i1 false, i1 false}
!6 = !{!"../kernel/debug/kdb/kdb_main.c", i32 71, i32 5}
!7 = !{ptr @kdb_nextline, !8, !"kdb_nextline", i1 false, i1 false}
!8 = !{!"../kernel/debug/kdb/kdb_main.c", i32 72, i32 5}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../kernel/debug/kdb/kdb_main.c", i32 213, i32 23}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/debug/kdb/kdb_main.c", i32 426, i32 22}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/debug/kdb/kdb_main.c", i32 433, i32 22}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/debug/kdb/kdb_main.c", i32 439, i32 15}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/debug/kdb/kdb_main.c", i32 533, i32 24}
!19 = !{ptr @kdb_parse.argv, !20, !"argv", i1 false, i1 false}
!20 = !{!"../kernel/debug/kdb/kdb_main.c", i32 917, i32 15}
!21 = !{ptr @kdb_parse.argc, !22, !"argc", i1 false, i1 false}
!22 = !{!"../kernel/debug/kdb/kdb_main.c", i32 918, i32 13}
!23 = !{ptr @kdb_parse.cbuf, !24, !"cbuf", i1 false, i1 false}
!24 = !{!"../kernel/debug/kdb/kdb_main.c", i32 919, i32 14}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/debug/kdb/kdb_main.c", i32 954, i32 16}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/debug/kdb/kdb_main.c", i32 960, i32 16}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1077, i32 14}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1079, i32 14}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1356, i32 13}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1396, i32 3}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1407, i32 3}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1412, i32 3}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1424, i32 16}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1429, i32 15}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1431, i32 3}
!47 = !{ptr @__param_enable_nmi, !48, !"__param_enable_nmi", i1 false, i1 false}
!48 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2184, i32 1}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2278, i32 25}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2281, i32 2}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2282, i32 25}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2287, i32 15}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2288, i32 31}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2289, i32 17}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2291, i32 15}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2294, i32 14}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2308, i32 13}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2317, i32 15}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2320, i32 16}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2636, i32 15}
!75 = !{ptr @__ksymtab_kdb_register, !76, !"__ksymtab_kdb_register", i1 false, i1 false}
!76 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2645, i32 1}
!77 = !{ptr @__ksymtab_kdb_unregister, !78, !"__ksymtab_kdb_unregister", i1 false, i1 false}
!78 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2671, i32 1}
!79 = !{ptr @kdb_init.kdb_init_lvl, !80, !"kdb_init_lvl", i1 false, i1 false}
!80 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2915, i32 13}
!81 = !{ptr @kdb_grep_string, !82, !"kdb_grep_string", i1 false, i1 false}
!82 = !{!"../kernel/debug/kdb/kdb_main.c", i32 56, i32 6}
!83 = !{ptr @kdb_grepping_flag, !84, !"kdb_grepping_flag", i1 false, i1 false}
!84 = !{!"../kernel/debug/kdb/kdb_main.c", i32 57, i32 5}
!85 = !{ptr @kdb_grep_leading, !86, !"kdb_grep_leading", i1 false, i1 false}
!86 = !{!"../kernel/debug/kdb/kdb_main.c", i32 59, i32 5}
!87 = !{ptr @kdb_grep_trailing, !88, !"kdb_grep_trailing", i1 false, i1 false}
!88 = !{!"../kernel/debug/kdb/kdb_main.c", i32 60, i32 5}
!89 = !{ptr @kdb_flags, !90, !"kdb_flags", i1 false, i1 false}
!90 = !{!"../kernel/debug/kdb/kdb_main.c", i32 65, i32 14}
!91 = !{ptr @kdb_state, !92, !"kdb_state", i1 false, i1 false}
!92 = !{!"../kernel/debug/kdb/kdb_main.c", i32 73, i32 5}
!93 = !{ptr @kdb_current_task, !94, !"kdb_current_task", i1 false, i1 false}
!94 = !{!"../kernel/debug/kdb/kdb_main.c", i32 75, i32 21}
!95 = !{ptr @kdb_current_regs, !96, !"kdb_current_regs", i1 false, i1 false}
!96 = !{!"../kernel/debug/kdb/kdb_main.c", i32 76, i32 17}
!97 = !{ptr @kdb_diemsg, !98, !"kdb_diemsg", i1 false, i1 false}
!98 = !{!"../kernel/debug/kdb/kdb_main.c", i32 78, i32 13}
!99 = distinct !{null, !100, !"defcmd_in_progress", i1 false, i1 false}
!100 = !{!"../kernel/debug/kdb/kdb_main.c", i32 667, i32 13}
!101 = !{ptr @__param_str_cmd_enable, !1, !"__param_str_cmd_enable", i1 false, i1 false}
!102 = !{ptr @kdb_cmd_enabled, !103, !"kdb_cmd_enabled", i1 false, i1 false}
!103 = !{!"../kernel/debug/kdb/kdb_main.c", i32 53, i32 12}
!104 = !{ptr @.str.29, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../kernel/debug/kdb/kdb_main.c", i32 144, i32 2}
!106 = !{ptr @.str.30, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../kernel/debug/kdb/kdb_main.c", i32 148, i32 2}
!108 = !{ptr @.str.31, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../kernel/debug/kdb/kdb_main.c", i32 149, i32 2}
!110 = !{ptr @.str.32, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../kernel/debug/kdb/kdb_main.c", i32 150, i32 2}
!112 = !{ptr @.str.33, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../kernel/debug/kdb/kdb_main.c", i32 151, i32 2}
!114 = !{ptr @.str.34, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../kernel/debug/kdb/kdb_main.c", i32 152, i32 2}
!116 = !{ptr @.str.35, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../kernel/debug/kdb/kdb_main.c", i32 153, i32 2}
!118 = !{ptr @__env, !119, !"__env", i1 false, i1 false}
!119 = !{!"../kernel/debug/kdb/kdb_main.c", i32 142, i32 14}
!120 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../kernel/debug/kdb/kdb_main.c", i32 314, i32 14}
!122 = !{ptr @kdballocenv.envbuffer, !123, !"envbuffer", i1 false, i1 false}
!123 = !{!"../kernel/debug/kdb/kdb_main.c", i32 238, i32 14}
!124 = !{ptr @kdballocenv.envbufsize, !125, !"envbufsize", i1 false, i1 false}
!125 = !{!"../kernel/debug/kdb/kdb_main.c", i32 239, i32 13}
!126 = !{ptr @.str.38, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../kernel/debug/kdb/kdb_main.c", i32 459, i32 14}
!128 = !{ptr @.str.39, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../kernel/debug/kdb/kdb_main.c", i32 837, i32 26}
!130 = !{ptr @.str.40, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../kernel/debug/kdb/kdb_main.c", i32 838, i32 14}
!132 = !{ptr @.str.41, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../kernel/debug/kdb/kdb_main.c", i32 859, i32 15}
!134 = !{ptr @.str.42, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../kernel/debug/kdb/kdb_main.c", i32 879, i32 14}
!136 = !{ptr @.str.43, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../kernel/debug/kdb/kdb_main.c", i32 679, i32 20}
!138 = !{ptr @.str.44, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../kernel/debug/kdb/kdb_main.c", i32 688, i32 14}
!140 = !{ptr @kdb_macro, !141, !"kdb_macro", i1 false, i1 false}
!141 = !{!"../kernel/debug/kdb/kdb_main.c", i32 666, i32 26}
!142 = !{ptr @kdb_cmds_head, !143, !"kdb_cmds_head", i1 false, i1 false}
!143 = !{!"../kernel/debug/kdb/kdb_main.c", i32 88, i32 8}
!144 = !{ptr @.str.45, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1182, i32 2}
!146 = !{ptr @.str.46, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1187, i32 14}
!148 = !{ptr @.str.47, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1190, i32 14}
!150 = !{ptr @.str.48, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1203, i32 15}
!152 = !{ptr @.str.49, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1208, i32 15}
!154 = !{ptr @.str.50, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1214, i32 4}
!156 = !{ptr @.str.51, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1217, i32 15}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1226, i32 15}
!160 = !{ptr @.str.53, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1228, i32 15}
!162 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1237, i32 14}
!164 = !{ptr @.str.55, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1240, i32 14}
!166 = !{ptr @.str.56, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1241, i32 14}
!168 = !{ptr @.str.57, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1246, i32 14}
!170 = !{ptr @.str.58, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1249, i32 14}
!172 = !{ptr @.str.59, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1255, i32 14}
!174 = !{ptr @.str.60, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1257, i32 7}
!176 = !{ptr @.str.61, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1257, i32 22}
!178 = !{ptr @.str.62, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1263, i32 15}
!180 = !{ptr @.str.63, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1265, i32 4}
!182 = !{ptr @.str.64, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1270, i32 14}
!184 = !{ptr @.str.65, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1274, i32 14}
!186 = !{ptr @.str.66, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1275, i32 3}
!188 = !{ptr @.str.67, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1298, i32 28}
!190 = !{ptr @.str.68, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1330, i32 15}
!192 = !{ptr @.str.69, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1342, i32 2}
!194 = !{ptr @kdb_go_count, !195, !"kdb_go_count", i1 false, i1 false}
!195 = !{!"../kernel/debug/kdb/kdb_main.c", i32 79, i32 12}
!196 = !{ptr @cmd_cur, !197, !"cmd_cur", i1 false, i1 false}
!197 = !{!"../kernel/debug/kdb/kdb_main.c", i32 821, i32 13}
!198 = !{ptr @cmd_hist, !199, !"cmd_hist", i1 false, i1 false}
!199 = !{!"../kernel/debug/kdb/kdb_main.c", i32 820, i32 13}
!200 = !{ptr @cmd_head, !201, !"cmd_head", i1 false, i1 false}
!201 = !{!"../kernel/debug/kdb/kdb_main.c", i32 818, i32 21}
!202 = !{ptr @cmdptr, !203, !"cmdptr", i1 false, i1 false}
!203 = !{!"../kernel/debug/kdb/kdb_main.c", i32 819, i32 21}
!204 = !{ptr @cmd_tail, !205, !"cmd_tail", i1 false, i1 false}
!205 = !{!"../kernel/debug/kdb/kdb_main.c", i32 818, i32 31}
!206 = !{ptr @.str.70, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../kernel/debug/kdb/kdb_main.c", i32 630, i32 14}
!208 = !{ptr @.str.71, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../kernel/debug/kdb/kdb_main.c", i32 636, i32 15}
!210 = !{ptr @.str.72, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../kernel/debug/kdb/kdb_main.c", i32 641, i32 13}
!212 = !{ptr @.str.73, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../kernel/debug/kdb/kdb_main.c", i32 99, i32 2}
!214 = !{ptr @.str.74, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../kernel/debug/kdb/kdb_main.c", i32 100, i32 2}
!216 = !{ptr @.str.75, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../kernel/debug/kdb/kdb_main.c", i32 101, i32 2}
!218 = !{ptr @.str.76, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../kernel/debug/kdb/kdb_main.c", i32 103, i32 2}
!220 = !{ptr @.str.77, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../kernel/debug/kdb/kdb_main.c", i32 104, i32 2}
!222 = !{ptr @.str.78, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../kernel/debug/kdb/kdb_main.c", i32 105, i32 2}
!224 = !{ptr @.str.79, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../kernel/debug/kdb/kdb_main.c", i32 106, i32 2}
!226 = !{ptr @.str.80, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../kernel/debug/kdb/kdb_main.c", i32 107, i32 2}
!228 = !{ptr @.str.81, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../kernel/debug/kdb/kdb_main.c", i32 108, i32 2}
!230 = !{ptr @.str.82, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../kernel/debug/kdb/kdb_main.c", i32 109, i32 2}
!232 = !{ptr @.str.83, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../kernel/debug/kdb/kdb_main.c", i32 113, i32 2}
!234 = !{ptr @.str.84, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../kernel/debug/kdb/kdb_main.c", i32 115, i32 2}
!236 = !{ptr @.str.85, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../kernel/debug/kdb/kdb_main.c", i32 116, i32 2}
!238 = !{ptr @.str.86, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../kernel/debug/kdb/kdb_main.c", i32 117, i32 2}
!240 = !{ptr @.str.87, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../kernel/debug/kdb/kdb_main.c", i32 118, i32 2}
!242 = !{ptr @.str.88, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../kernel/debug/kdb/kdb_main.c", i32 119, i32 2}
!244 = !{ptr @.str.89, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../kernel/debug/kdb/kdb_main.c", i32 120, i32 2}
!246 = !{ptr @.str.90, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../kernel/debug/kdb/kdb_main.c", i32 121, i32 2}
!248 = !{ptr @.str.91, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../kernel/debug/kdb/kdb_main.c", i32 122, i32 2}
!250 = !{ptr @.str.92, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../kernel/debug/kdb/kdb_main.c", i32 123, i32 2}
!252 = !{ptr @.str.93, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../kernel/debug/kdb/kdb_main.c", i32 124, i32 2}
!254 = !{ptr @.str.94, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../kernel/debug/kdb/kdb_main.c", i32 125, i32 2}
!256 = !{ptr @kdbmsgs, !257, !"kdbmsgs", i1 false, i1 false}
!257 = !{!"../kernel/debug/kdb/kdb_main.c", i32 98, i32 17}
!258 = !{ptr @__param_str_enable_nmi, !48, !"__param_str_enable_nmi", i1 false, i1 false}
!259 = !{ptr @kdb_param_ops_enable_nmi, !260, !"kdb_param_ops_enable_nmi", i1 false, i1 false}
!260 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2181, i32 38}
!261 = !{ptr @kdb_nmi_disabled, !262, !"kdb_nmi_disabled", i1 false, i1 false}
!262 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2162, i32 17}
!263 = !{ptr @.str.95, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2674, i32 12}
!265 = !{ptr @.str.96, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2676, i32 12}
!267 = !{ptr @.str.97, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2677, i32 11}
!269 = !{ptr @.str.98, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2681, i32 12}
!271 = !{ptr @.str.99, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2683, i32 12}
!273 = !{ptr @.str.100, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2684, i32 11}
!275 = !{ptr @.str.101, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2687, i32 12}
!277 = !{ptr @.str.102, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2689, i32 12}
!279 = !{ptr @.str.103, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2690, i32 11}
!281 = !{ptr @.str.104, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2693, i32 12}
!283 = !{ptr @.str.105, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2696, i32 11}
!285 = !{ptr @.str.106, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2699, i32 12}
!287 = !{ptr @.str.107, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2701, i32 12}
!289 = !{ptr @.str.108, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2702, i32 11}
!291 = !{ptr @.str.109, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2705, i32 12}
!293 = !{ptr @.str.110, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2707, i32 12}
!295 = !{ptr @.str.111, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2708, i32 11}
!297 = !{ptr @.str.112, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2713, i32 12}
!299 = !{ptr @.str.113, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2716, i32 11}
!301 = !{ptr @.str.114, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2719, i32 12}
!303 = !{ptr @.str.115, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2721, i32 12}
!305 = !{ptr @.str.116, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2722, i32 11}
!307 = !{ptr @.str.117, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2725, i32 12}
!309 = !{ptr @.str.118, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2728, i32 11}
!311 = !{ptr @.str.119, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2731, i32 12}
!313 = !{ptr @.str.120, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2734, i32 11}
!315 = !{ptr @.str.121, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2738, i32 12}
!317 = !{ptr @.str.122, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2740, i32 12}
!319 = !{ptr @.str.123, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2741, i32 11}
!321 = !{ptr @.str.124, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2744, i32 12}
!323 = !{ptr @.str.125, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2746, i32 12}
!325 = !{ptr @.str.126, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2747, i32 11}
!327 = !{ptr @.str.127, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2750, i32 12}
!329 = !{ptr @.str.128, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2753, i32 11}
!331 = !{ptr @.str.129, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2756, i32 12}
!333 = !{ptr @.str.130, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2759, i32 11}
!335 = !{ptr @.str.131, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2762, i32 12}
!337 = !{ptr @.str.132, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2765, i32 11}
!339 = !{ptr @.str.133, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2768, i32 12}
!341 = !{ptr @.str.134, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2771, i32 11}
!343 = !{ptr @.str.135, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2774, i32 12}
!345 = !{ptr @.str.136, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2777, i32 11}
!347 = !{ptr @.str.137, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2781, i32 12}
!349 = !{ptr @.str.138, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2787, i32 12}
!351 = !{ptr @.str.139, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2789, i32 12}
!353 = !{ptr @.str.140, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2790, i32 11}
!355 = !{ptr @.str.141, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2793, i32 12}
!357 = !{ptr @.str.142, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2796, i32 11}
!359 = !{ptr @.str.143, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2799, i32 12}
!361 = !{ptr @.str.144, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2802, i32 11}
!363 = !{ptr @.str.145, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2805, i32 12}
!365 = !{ptr @.str.146, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2807, i32 12}
!367 = !{ptr @.str.147, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2808, i32 11}
!369 = !{ptr @.str.148, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2811, i32 12}
!371 = !{ptr @.str.149, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2814, i32 11}
!373 = !{ptr @.str.150, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2818, i32 12}
!375 = !{ptr @.str.151, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2821, i32 11}
!377 = !{ptr @.str.152, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2826, i32 12}
!379 = !{ptr @.str.153, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2828, i32 12}
!381 = !{ptr @.str.154, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2829, i32 11}
!383 = !{ptr @.str.155, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2834, i32 12}
!385 = !{ptr @.str.156, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2836, i32 12}
!387 = !{ptr @.str.157, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2837, i32 11}
!389 = !{ptr @.str.158, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2841, i32 12}
!391 = !{ptr @.str.159, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2843, i32 12}
!393 = !{ptr @.str.160, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2844, i32 11}
!395 = !{ptr @.str.161, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2852, i32 12}
!397 = !{ptr @.str.162, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2854, i32 12}
!399 = !{ptr @.str.163, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2855, i32 11}
!401 = !{ptr @.str.164, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2858, i32 12}
!403 = !{ptr @.str.165, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2861, i32 11}
!405 = !{ptr @.str.166, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2865, i32 12}
!407 = !{ptr @.str.167, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2867, i32 12}
!409 = !{ptr @.str.168, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2868, i32 11}
!411 = !{ptr @.str.169, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2872, i32 12}
!413 = !{ptr @.str.170, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2875, i32 11}
!415 = !{ptr @maintab, !416, !"maintab", i1 false, i1 false}
!416 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2673, i32 17}
!417 = !{ptr @kdb_md.last_addr, !418, !"last_addr", i1 false, i1 false}
!418 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1543, i32 23}
!419 = !{ptr @kdb_md.last_radix, !420, !"last_radix", i1 false, i1 false}
!420 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1544, i32 13}
!421 = !{ptr @kdb_md.last_bytesperword, !422, !"last_bytesperword", i1 false, i1 false}
!422 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1544, i32 25}
!423 = !{ptr @kdb_md.last_repeat, !424, !"last_repeat", i1 false, i1 false}
!424 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1544, i32 44}
!425 = !{ptr @.str.171, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1556, i32 15}
!427 = !{ptr @.str.172, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1557, i32 15}
!429 = !{ptr @.str.173, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1558, i32 15}
!431 = distinct !{null, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1667, i32 19}
!433 = !{ptr @.str.175, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1670, i32 19}
!435 = !{ptr @.str.176, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1673, i32 19}
!437 = !{ptr @.str.177, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1676, i32 19}
!439 = !{ptr @.str.178, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1692, i32 16}
!441 = !{ptr @.str.179, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1721, i32 15}
!443 = !{ptr @.str.180, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1459, i32 14}
!445 = !{ptr @.str.181, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1490, i32 14}
!447 = !{ptr @.str.182, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1492, i32 14}
!449 = !{ptr @.str.183, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1509, i32 16}
!451 = !{ptr @.str.184, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1537, i32 13}
!453 = !{ptr @.str.185, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1538, i32 6}
!455 = !{ptr @.str.186, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1773, i32 13}
!457 = !{ptr @.str.187, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1790, i32 14}
!459 = !{ptr @.str.188, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1807, i32 14}
!461 = !{ptr @.str.189, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1808, i32 14}
!463 = !{ptr @.str.190, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1811, i32 15}
!465 = distinct !{null, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1816, i32 15}
!467 = !{ptr @.str.192, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1819, i32 14}
!469 = distinct !{null, !470, !"kdb_continue_catastrophic", i1 false, i1 false}
!470 = !{!"../kernel/debug/kdb/kdb_main.c", i32 81, i32 21}
!471 = !{ptr @.str.193, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1851, i32 22}
!473 = !{ptr @.str.194, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1857, i32 22}
!475 = !{ptr @.str.195, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1863, i32 22}
!477 = !{ptr @.str.196, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1869, i32 22}
!479 = !{ptr @.str.197, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1875, i32 22}
!481 = !{ptr @.str.198, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1878, i32 22}
!483 = !{ptr @.str.199, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2065, i32 14}
!485 = !{ptr @.str.200, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../kernel/debug/kdb/kdb_main.c", i32 348, i32 15}
!487 = !{ptr @.str.201, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2414, i32 13}
!489 = !{ptr @.str.202, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2414, i32 39}
!491 = !{ptr @.str.203, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2414, i32 50}
!493 = !{ptr @.str.204, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2414, i32 59}
!495 = !{ptr @.str.205, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2415, i32 13}
!497 = !{ptr @.str.206, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2424, i32 12}
!499 = !{ptr @.str.207, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2425, i32 14}
!501 = !{ptr @.str.208, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2197, i32 13}
!503 = !{ptr @.str.209, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2198, i32 13}
!505 = !{ptr @.str.210, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2212, i32 17}
!507 = !{ptr @.str.211, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2214, i32 16}
!509 = !{ptr @.str.212, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2216, i32 17}
!511 = !{ptr @.str.213, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2218, i32 17}
!513 = distinct !{null, !514, !"__already_done", i1 false, i1 false}
!514 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!515 = !{ptr @.str.214, !514, !"<string literal>", i1 false, i1 false}
!516 = !{ptr @.str.215, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2341, i32 13}
!518 = !{ptr @.str.216, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2342, i32 30}
!520 = !{ptr @.str.217, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2343, i32 30}
!522 = !{ptr @.str.218, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2344, i32 36}
!524 = distinct !{null, !525, !"__warned", i1 false, i1 false}
!525 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2355, i32 2}
!526 = !{ptr @.str.219, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2380, i32 23}
!528 = !{ptr @.str.220, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2389, i32 16}
!530 = !{ptr @.str.221, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2395, i32 13}
!532 = !{ptr @.str.222, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../kernel/debug/kdb/kdb_main.c", i32 1116, i32 13}
!534 = !{ptr @.str.223, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2020, i32 13}
!536 = !{ptr @.str.224, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2025, i32 14}
!538 = !{ptr @.str.225, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2028, i32 14}
!540 = !{ptr @.str.226, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2031, i32 15}
!542 = !{ptr @.str.227, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2033, i32 15}
!544 = !{ptr @.str.228, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2035, i32 15}
!546 = !{ptr @.str.229, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2036, i32 14}
!548 = !{ptr @.str.230, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2041, i32 15}
!550 = !{ptr @.str.231, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2044, i32 16}
!552 = !{ptr @.str.232, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2045, i32 15}
!554 = !{ptr @.str.233, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2104, i32 22}
!556 = !{ptr @.str.234, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2106, i32 47}
!558 = !{ptr @.str.235, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2116, i32 15}
!560 = !{ptr @.str.236, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2119, i32 15}
!562 = !{ptr @.str.237, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2133, i32 15}
!564 = !{ptr @.str.238, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2154, i32 14}
!566 = !{ptr @.str.239, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../kernel/debug/kdb/kdb_main.c", i32 704, i32 14}
!568 = !{ptr @.str.240, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../kernel/debug/kdb/kdb_main.c", i32 715, i32 16}
!570 = !{ptr @.str.241, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../kernel/debug/kdb/kdb_main.c", i32 720, i32 17}
!572 = !{ptr @.str.242, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../kernel/debug/kdb/kdb_main.c", i32 721, i32 16}
!574 = !{ptr @.str.243, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../kernel/debug/kdb/kdb_main.c", i32 729, i32 14}
!576 = !{ptr @.str.244, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../kernel/debug/kdb/kdb_main.c", i32 768, i32 13}
!578 = !{ptr @.str.245, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../kernel/debug/kdb/kdb_main.c", i32 796, i32 14}
!580 = !{ptr @.str.246, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../kernel/debug/kdb/kdb_main.c", i32 806, i32 14}
!582 = !{ptr @.str.247, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2447, i32 14}
!584 = !{ptr @.str.248, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2456, i32 14}
!586 = !{ptr @.str.249, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2463, i32 14}
!588 = !{ptr @.str.250, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2502, i32 13}
!590 = !{ptr @.str.251, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2503, i32 13}
!592 = !{ptr @.str.252, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2504, i32 13}
!594 = !{ptr @.str.253, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2505, i32 13}
!596 = !{ptr @.str.254, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2506, i32 13}
!598 = !{ptr @.str.255, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2507, i32 13}
!600 = !{ptr @.str.256, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2510, i32 13}
!602 = !{ptr @.str.257, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2512, i32 13}
!604 = !{ptr @.str.258, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2516, i32 14}
!606 = !{ptr @.str.259, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2516, i32 50}
!608 = !{ptr @.str.260, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2518, i32 13}
!610 = !{ptr @.str.261, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2520, i32 13}
!612 = !{ptr @.str.262, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2527, i32 13}
!614 = !{ptr @.str.263, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2558, i32 18}
!616 = !{ptr @.str.264, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2564, i32 15}
!618 = !{ptr @.str.265, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2590, i32 15}
!620 = !{ptr @.str.266, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2594, i32 14}
!622 = !{ptr @.str.267, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2608, i32 13}
!624 = !{ptr @.str.268, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2609, i32 13}
!626 = !{ptr @.str.269, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2610, i32 13}
!628 = !{ptr @.str.270, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2611, i32 13}
!630 = !{ptr @.str.271, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2612, i32 13}
!632 = !{ptr @.str.272, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2614, i32 13}
!634 = !{ptr @.str.273, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2615, i32 13}
!636 = !{ptr @.str.274, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2617, i32 13}
!638 = !{ptr @.str.275, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2881, i32 10}
!640 = !{ptr @.str.276, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2884, i32 10}
!642 = !{ptr @nmicmd, !643, !"nmicmd", i1 false, i1 false}
!643 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2880, i32 17}
!644 = !{ptr @.str.277, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2903, i32 15}
!646 = !{ptr @.str.278, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../kernel/debug/kdb/kdb_main.c", i32 2907, i32 14}
!648 = !{!"sp"}
!649 = !{i32 1, !"wchar_size", i32 2}
!650 = !{i32 1, !"min_enum_size", i32 4}
!651 = !{i32 8, !"branch-target-enforcement", i32 0}
!652 = !{i32 8, !"sign-return-address", i32 0}
!653 = !{i32 8, !"sign-return-address-all", i32 0}
!654 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!655 = !{i32 7, !"uwtable", i32 1}
!656 = !{i32 7, !"frame-pointer", i32 2}
!657 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!658 = !{!"auto-init"}
!659 = !{i64 691152}
!660 = !{i64 2148295358}
!661 = !{i64 780181, i64 780206, i64 780228, i64 780244, i64 780256, i64 780276, i64 780300, i64 780316, i64 780328}
!662 = !{i64 2148295546}
!663 = !{!"branch_weights", i32 2000, i32 1}
!664 = !{i64 2154452763}
!665 = !{i64 2154452605}
!666 = !{i64 1200929, i64 1200956, i64 1200978, i64 1201006}
!667 = !{i64 1201337, i64 1201364, i64 1201397, i64 1201418, i64 1201445, i64 1201471}
