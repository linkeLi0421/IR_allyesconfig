; ModuleID = '/llk/IR_all_yes/kernel/debug/debug_core.c_pt.bc'
source_filename = "../kernel/debug/debug_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+kgdb_connected\22, \22a\22\09"
module asm "\09.weak\09__crc_kgdb_connected\09\09\09\09"
module asm "\09.long\09__crc_kgdb_connected\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kgdb_connected:\09\09\09\09\09"
module asm "\09.asciz \09\22kgdb_connected\22\09\09\09\09\09"
module asm "__kstrtabns_kgdb_connected:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kgdb_active\22, \22a\22\09"
module asm "\09.weak\09__crc_kgdb_active\09\09\09\09"
module asm "\09.long\09__crc_kgdb_active\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kgdb_active:\09\09\09\09\09"
module asm "\09.asciz \09\22kgdb_active\22\09\09\09\09\09"
module asm "__kstrtabns_kgdb_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kgdb_register_io_module\22, \22a\22\09"
module asm "\09.weak\09__crc_kgdb_register_io_module\09\09\09\09"
module asm "\09.long\09__crc_kgdb_register_io_module\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kgdb_register_io_module:\09\09\09\09\09"
module asm "\09.asciz \09\22kgdb_register_io_module\22\09\09\09\09\09"
module asm "__kstrtabns_kgdb_register_io_module:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kgdb_unregister_io_module\22, \22a\22\09"
module asm "\09.weak\09__crc_kgdb_unregister_io_module\09\09\09\09"
module asm "\09.long\09__crc_kgdb_unregister_io_module\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kgdb_unregister_io_module:\09\09\09\09\09"
module asm "\09.asciz \09\22kgdb_unregister_io_module\22\09\09\09\09\09"
module asm "__kstrtabns_kgdb_unregister_io_module:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kgdb_breakpoint\22, \22a\22\09"
module asm "\09.weak\09__crc_kgdb_breakpoint\09\09\09\09"
module asm "\09.long\09__crc_kgdb_breakpoint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kgdb_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22kgdb_breakpoint\22\09\09\09\09\09"
module asm "__kstrtabns_kgdb_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kgdb_arch = type { [4 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.debuggerinfo_struct = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.kgdb_bkpt = type { i32, [4 x i8], i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sysrq_key_op = type { ptr, ptr, ptr, i32 }
%struct.kgdb_state = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kgdb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@kgdb_connected = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_kgdb_connected = external dso_local constant [0 x i8], align 1
@__kstrtabns_kgdb_connected = external dso_local constant [0 x i8], align 1
@__ksymtab_kgdb_connected = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kgdb_connected to i32), ptr @__kstrtab_kgdb_connected, ptr @__kstrtabns_kgdb_connected }, section "___ksymtab_gpl+kgdb_connected", align 4
@dbg_is_early = dso_local global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@dbg_kdb_mode = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_kgdb_use_con = internal constant [24 x i8] c"debug_core.kgdb_use_con\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@kgdb_use_con = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_kgdb_use_con = internal constant %struct.kernel_param { ptr @__param_str_kgdb_use_con, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @kgdb_use_con } }, section "__param", align 4
@__UNIQUE_ID_kgdb_use_contype245 = internal constant [37 x i8] c"debug_core.parmtype=kgdb_use_con:int\00", section ".modinfo", align 1
@__param_str_kgdbreboot = internal constant [22 x i8] c"debug_core.kgdbreboot\00", align 1
@kgdbreboot = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_kgdbreboot = internal constant %struct.kernel_param { ptr @__param_str_kgdbreboot, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @kgdbreboot } }, section "__param", align 4
@__UNIQUE_ID_kgdbreboottype246 = internal constant [35 x i8] c"debug_core.parmtype=kgdbreboot:int\00", section ".modinfo", align 1
@kgdb_active = dso_local global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 -1 }, [28 x i8] zeroinitializer }, align 32
@__kstrtab_kgdb_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_kgdb_active = external dso_local constant [0 x i8], align 1
@__ksymtab_kgdb_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kgdb_active to i32), ptr @__kstrtab_kgdb_active, ptr @__kstrtabns_kgdb_active }, section "___ksymtab_gpl+kgdb_active", align 4
@kgdb_cpu_doing_single_step = dso_local global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 -1 }, [28 x i8] zeroinitializer }, align 32
@__setup_str_opt_nokgdbroundup = internal constant [14 x i8] c"nokgdbroundup\00", section ".init.rodata", align 1
@__setup_opt_nokgdbroundup = internal global %struct.obs_kernel_param { ptr @__setup_str_opt_nokgdbroundup, ptr @opt_nokgdbroundup, i32 1 }, section ".init.setup", align 4
@arch_kgdb_ops = external dso_local constant %struct.kgdb_arch, align 4
@_kbl_addr_kgdb_arch_set_breakpoint = internal global i32 ptrtoint (ptr @kgdb_arch_set_breakpoint to i32), section "_kprobe_blacklist", align 4
@_kbl_addr_kgdb_arch_remove_breakpoint = internal global i32 ptrtoint (ptr @kgdb_arch_remove_breakpoint to i32), section "_kprobe_blacklist", align 4
@kgdb_validate_break_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013KGDB: Critical breakpoint error, kernel memory destroyed at: %lx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kgdb_validate_break_address\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/debug/debug_core.c\00", [38 x i8] zeroinitializer }, align 32
@kgdb_validate_break_address._entry_ptr = internal global ptr @kgdb_validate_break_address._entry, section ".printk_index", align 4
@_kbl_addr_kgdb_arch_pc = internal global i32 ptrtoint (ptr @kgdb_arch_pc to i32), section "_kprobe_blacklist", align 4
@_kbl_addr_kgdb_skipexception = internal global i32 ptrtoint (ptr @kgdb_skipexception to i32), section "_kprobe_blacklist", align 4
@_kbl_addr_kgdb_call_nmi_hook = internal global i32 ptrtoint (ptr @kgdb_call_nmi_hook to i32), section "_kprobe_blacklist", align 4
@kgdb_roundup_csd = weak dso_local global %struct.__call_single_data { %struct.__call_single_node zeroinitializer, ptr @kgdb_call_nmi_hook, ptr null }, section ".data..percpu", align 16
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kgdb_info = dso_local global { [4 x %struct.debuggerinfo_struct], [48 x i8] } zeroinitializer, align 32
@_kbl_addr_kgdb_roundup_cpus = internal global i32 ptrtoint (ptr @kgdb_roundup_cpus to i32), section "_kprobe_blacklist", align 4
@_kbl_addr_kgdb_flush_swbreak_addr = internal global i32 ptrtoint (ptr @kgdb_flush_swbreak_addr to i32), section "_kprobe_blacklist", align 4
@kgdb_break = internal global { [1000 x %struct.kgdb_bkpt], [4000 x i8] } zeroinitializer, align 32
@dbg_activate_sw_breakpoints._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016KGDB: BP install failed: %lx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dbg_activate_sw_breakpoints\00", [36 x i8] zeroinitializer }, align 32
@dbg_activate_sw_breakpoints._entry_ptr = internal global ptr @dbg_activate_sw_breakpoints._entry, section ".printk_index", align 4
@_kbl_addr_dbg_activate_sw_breakpoints = internal global i32 ptrtoint (ptr @dbg_activate_sw_breakpoints to i32), section "_kprobe_blacklist", align 4
@dbg_deactivate_sw_breakpoints._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016KGDB: BP remove failed: %lx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dbg_deactivate_sw_breakpoints\00", [34 x i8] zeroinitializer }, align 32
@dbg_deactivate_sw_breakpoints._entry_ptr = internal global ptr @dbg_deactivate_sw_breakpoints._entry, section ".printk_index", align 4
@_kbl_addr_dbg_deactivate_sw_breakpoints = internal global i32 ptrtoint (ptr @dbg_deactivate_sw_breakpoints to i32), section "_kprobe_blacklist", align 4
@dbg_remove_all_break._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013KGDB: breakpoint remove failed: %lx\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dbg_remove_all_break\00", [43 x i8] zeroinitializer }, align 32
@dbg_remove_all_break._entry_ptr = internal global ptr @dbg_remove_all_break._entry, section ".printk_index", align 4
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ERROR: Task on cpu %d didn't stop in the debugger\0A\00", [45 x i8] zeroinitializer }, align 32
@_kbl_addr_kgdb_io_ready = internal global i32 ptrtoint (ptr @kgdb_io_ready to i32), section "_kprobe_blacklist", align 4
@_kbl_addr_kgdb_reenter_check = internal global i32 ptrtoint (ptr @kgdb_reenter_check to i32), section "_kprobe_blacklist", align 4
@_kbl_addr_dbg_touch_watchdogs = internal global i32 ptrtoint (ptr @dbg_touch_watchdogs to i32), section "_kprobe_blacklist", align 4
@_kbl_addr_kgdb_cpu_enter = internal global i32 ptrtoint (ptr @kgdb_cpu_enter to i32), section "_kprobe_blacklist", align 4
@panic_timeout = external dso_local local_unnamed_addr global i32, align 4
@_kbl_addr_kgdb_handle_exception = internal global i32 ptrtoint (ptr @kgdb_handle_exception to i32), section "_kprobe_blacklist", align 4
@dbg_master_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@_kbl_addr_kgdb_nmicallback = internal global i32 ptrtoint (ptr @kgdb_nmicallback to i32), section "_kprobe_blacklist", align 4
@_kbl_addr_kgdb_nmicallin = internal global i32 ptrtoint (ptr @kgdb_nmicallin to i32), section "_kprobe_blacklist", align 4
@__setup_str_opt_kgdb_con = internal constant [8 x i8] c"kgdbcon\00", section ".init.rodata", align 1
@__setup_opt_kgdb_con = internal global %struct.obs_kernel_param { ptr @__setup_str_opt_kgdb_con, ptr @opt_kgdb_con, i32 1 }, section ".init.setup", align 4
@kgdb_io_module_registered = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PANIC: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@kgdb_break_asap = internal global { i1, [31 x i8] } zeroinitializer, align 32
@kgdb_registration_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dbg_io_ops = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@kgdb_register_io_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013KGDB: KGDB I/O driver %s can't replace %s.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kgdb_register_io_module\00", [40 x i8] zeroinitializer }, align 32
@kgdb_register_io_module._entry_ptr = internal global ptr @kgdb_register_io_module._entry, section ".printk_index", align 4
@kgdb_register_io_module._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016KGDB: Replacing I/O driver %s with %s\0A\00", [55 x i8] zeroinitializer }, align 32
@kgdb_register_io_module._entry_ptr.15 = internal global ptr @kgdb_register_io_module._entry.13, section ".printk_index", align 4
@kgdb_register_io_module._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 1138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016KGDB: Registered I/O driver %s\0A\00", [62 x i8] zeroinitializer }, align 32
@kgdb_register_io_module._entry_ptr.18 = internal global ptr @kgdb_register_io_module._entry.16, section ".printk_index", align 4
@__kstrtab_kgdb_register_io_module = external dso_local constant [0 x i8], align 1
@__kstrtabns_kgdb_register_io_module = external dso_local constant [0 x i8], align 1
@__ksymtab_kgdb_register_io_module = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kgdb_register_io_module to i32), ptr @__kstrtab_kgdb_register_io_module, ptr @__kstrtabns_kgdb_register_io_module }, section "___ksymtab_gpl+kgdb_register_io_module", align 4
@kgdb_unregister_io_module.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kgdb_unregister_io_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016KGDB: Unregistered I/O driver %s, debugger disabled\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kgdb_unregister_io_module\00", [38 x i8] zeroinitializer }, align 32
@kgdb_unregister_io_module._entry_ptr = internal global ptr @kgdb_unregister_io_module._entry, section ".printk_index", align 4
@__kstrtab_kgdb_unregister_io_module = external dso_local constant [0 x i8], align 1
@__kstrtabns_kgdb_unregister_io_module = external dso_local constant [0 x i8], align 1
@__ksymtab_kgdb_unregister_io_module = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kgdb_unregister_io_module to i32), ptr @__kstrtab_kgdb_unregister_io_module, ptr @__kstrtabns_kgdb_unregister_io_module }, section "___ksymtab_gpl+kgdb_unregister_io_module", align 4
@kgdb_setting_breakpoint = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_kgdb_breakpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_kgdb_breakpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_kgdb_breakpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kgdb_breakpoint to i32), ptr @__kstrtab_kgdb_breakpoint, ptr @__kstrtabns_kgdb_breakpoint }, section "___ksymtab_gpl+kgdb_breakpoint", align 4
@__setup_str_opt_kgdb_wait = internal constant [9 x i8] c"kgdbwait\00", section ".init.rodata", align 1
@__setup_opt_kgdb_wait = internal global %struct.obs_kernel_param { ptr @__setup_str_opt_kgdb_wait, ptr @opt_kgdb_wait, i32 1 }, section ".init.setup", align 4
@dbg_switch_cpu = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@kgdb_usethread = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@kgdb_contthread = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@kgdb_single_step = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__pcpu_unique_kgdb_roundup_csd = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@kgdb_do_roundup = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@__init_begin = external dso_local global [0 x i8], align 1
@__init_end = external dso_local global [0 x i8], align 1
@kgdb_io_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\012KGDB: waiting... or $3#33 for KDB\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kgdb_io_ready\00", [18 x i8] zeroinitializer }, align 32
@kgdb_io_ready._entry_ptr = internal global ptr @kgdb_io_ready._entry, section ".printk_index", align 4
@exception_level = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kgdb_reenter_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\012KGDB: re-enter error: breakpoint removed %lx\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kgdb_reenter_check\00", [45 x i8] zeroinitializer }, align 32
@kgdb_reenter_check._entry_ptr = internal global ptr @kgdb_reenter_check._entry, section ".printk_index", align 4
@kgdb_reenter_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Recursive entry to debugger\00", [36 x i8] zeroinitializer }, align 32
@kgdb_reenter_check._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.2, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\012KGDB: re-enter exception: ALL breakpoints killed\0A\00", [44 x i8] zeroinitializer }, align 32
@kgdb_reenter_check._entry_ptr.29 = internal global ptr @kgdb_reenter_check._entry.27, section ".printk_index", align 4
@masters_in_kgdb = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@slaves_in_kgdb = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@dbg_slave_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@kgdb_sstep_pid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ignore_console_lock_warning = external dso_local global %struct.atomic_t, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kgdb_cpu_enter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\012KGDB: Timed out waiting for secondary CPUs.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kgdb_cpu_enter\00", [17 x i8] zeroinitializer }, align 32
@kgdb_cpu_enter._entry_ptr = internal global ptr @kgdb_cpu_enter._entry, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dbg_slave_lock\00", [17 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dbg_master_lock\00", [16 x i8] zeroinitializer }, align 32
@kgdb_con_registered = internal global { i1, [31 x i8] } zeroinitializer, align 32
@kgdbcons = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"kgdb\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kgdb_console_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i16 5, i16 -1, i32 0, i32 0, i32 0, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kgdb_initial_breakpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\012KGDB: Waiting for connection from remote gdb...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kgdb_initial_breakpoint\00", [40 x i8] zeroinitializer }, align 32
@kgdb_initial_breakpoint._entry_ptr = internal global ptr @kgdb_initial_breakpoint._entry, section ".printk_index", align 4
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kgdb_registration_lock\00", [41 x i8] zeroinitializer }, align 32
@dbg_module_load_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @module_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@dbg_reboot_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @dbg_notify_reboot, ptr null, i32 2147483647 }, [20 x i8] zeroinitializer }, align 32
@sysrq_dbg_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_dbg, ptr @.str.40, ptr @.str.41, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"debug(g)\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DEBUG\00", [26 x i8] zeroinitializer }, align 32
@sysrq_handle_dbg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\012KGDB: ERROR: No KGDB I/O module available\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sysrq_handle_dbg\00", [47 x i8] zeroinitializer }, align 32
@sysrq_handle_dbg._entry_ptr = internal global ptr @sysrq_handle_dbg._entry, section ".printk_index", align 4
@sysrq_handle_dbg._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\012KGDB: KGDB or $3#33 for KDB\0A\00", [33 x i8] zeroinitializer }, align 32
@sysrq_handle_dbg._entry_ptr.46 = internal global ptr @sysrq_handle_dbg._entry.44, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294843840, i64 4294954951]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"kgdb_connected\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 68, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"dbg_is_early\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 87, i32 6 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"dbg_kdb_mode\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 92, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"kgdb_use_con\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 85, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"kgdbreboot\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 81, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"kgdb_active\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 108, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [27 x i8] c"kgdb_cpu_doing_single_step\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 128, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 196, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [10 x i8] c"kgdb_info\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 65, i32 28 }
@___asan_gen_.84 = private unnamed_addr constant [11 x i8] c"kgdb_break\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 101, i32 26 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 317, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 381, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 442, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 475, i32 14 }
@___asan_gen_.117 = private unnamed_addr constant [16 x i8] c"dbg_master_lock\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [26 x i8] c"kgdb_io_module_registered\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 72, i32 7 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 998, i32 14 }
@___asan_gen_.126 = private unnamed_addr constant [16 x i8] c"kgdb_break_asap\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [23 x i8] c"kgdb_registration_lock\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [11 x i8] c"dbg_io_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 77, i32 18 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1113, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1117, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1138, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1177, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [24 x i8] c"kgdb_setting_breakpoint\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 119, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"dbg_switch_cpu\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 89, i32 5 }
@___asan_gen_.169 = private unnamed_addr constant [15 x i8] c"kgdb_usethread\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 121, i32 22 }
@___asan_gen_.172 = private unnamed_addr constant [16 x i8] c"kgdb_contthread\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 122, i32 22 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"kgdb_single_step\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 124, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant [16 x i8] c"kgdb_do_roundup\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 517, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant [16 x i8] c"exception_level\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 75, i32 14 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 548, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 559, i32 9 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 562, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [16 x i8] c"masters_in_kgdb\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 117, i32 19 }
@___asan_gen_.212 = private unnamed_addr constant [15 x i8] c"slaves_in_kgdb\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 118, i32 19 }
@___asan_gen_.215 = private unnamed_addr constant [15 x i8] c"dbg_slave_lock\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [15 x i8] c"kgdb_sstep_pid\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 125, i32 16 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 732, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 695, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 111, i32 8 }
@___asan_gen_.240 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 723, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 110, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant [20 x i8] c"kgdb_con_registered\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [9 x i8] c"kgdbcons\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 937, i32 23 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1007, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 78, i32 8 }
@___asan_gen_.261 = private unnamed_addr constant [19 x i8] c"dbg_module_load_nb\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 870, i32 30 }
@___asan_gen_.264 = private unnamed_addr constant [20 x i8] c"dbg_reboot_notifier\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1048, i32 30 }
@___asan_gen_.267 = private unnamed_addr constant [13 x i8] c"sysrq_dbg_op\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 977, i32 34 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 979, i32 14 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 980, i32 16 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 962, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.289 = private constant [29 x i8] c"../kernel/debug/debug_core.c\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 968, i32 4 }
@llvm.compiler.used = appending global [126 x ptr] [ptr @__UNIQUE_ID_kgdb_use_contype245, ptr @__UNIQUE_ID_kgdbreboottype246, ptr @__ksymtab_kgdb_active, ptr @__ksymtab_kgdb_breakpoint, ptr @__ksymtab_kgdb_connected, ptr @__ksymtab_kgdb_register_io_module, ptr @__ksymtab_kgdb_unregister_io_module, ptr @__param_kgdb_use_con, ptr @__param_kgdbreboot, ptr @__setup_opt_kgdb_con, ptr @__setup_opt_kgdb_wait, ptr @__setup_opt_nokgdbroundup, ptr @_kbl_addr_dbg_activate_sw_breakpoints, ptr @_kbl_addr_dbg_deactivate_sw_breakpoints, ptr @_kbl_addr_dbg_touch_watchdogs, ptr @_kbl_addr_kgdb_arch_pc, ptr @_kbl_addr_kgdb_arch_remove_breakpoint, ptr @_kbl_addr_kgdb_arch_set_breakpoint, ptr @_kbl_addr_kgdb_call_nmi_hook, ptr @_kbl_addr_kgdb_cpu_enter, ptr @_kbl_addr_kgdb_flush_swbreak_addr, ptr @_kbl_addr_kgdb_handle_exception, ptr @_kbl_addr_kgdb_io_ready, ptr @_kbl_addr_kgdb_nmicallback, ptr @_kbl_addr_kgdb_nmicallin, ptr @_kbl_addr_kgdb_reenter_check, ptr @_kbl_addr_kgdb_roundup_cpus, ptr @_kbl_addr_kgdb_skipexception, ptr @dbg_activate_sw_breakpoints._entry, ptr @dbg_activate_sw_breakpoints._entry_ptr, ptr @dbg_deactivate_sw_breakpoints._entry, ptr @dbg_deactivate_sw_breakpoints._entry_ptr, ptr @dbg_remove_all_break._entry, ptr @dbg_remove_all_break._entry_ptr, ptr @kgdb_cpu_enter._entry, ptr @kgdb_cpu_enter._entry_ptr, ptr @kgdb_initial_breakpoint._entry, ptr @kgdb_initial_breakpoint._entry_ptr, ptr @kgdb_io_ready._entry, ptr @kgdb_io_ready._entry_ptr, ptr @kgdb_reenter_check._entry, ptr @kgdb_reenter_check._entry.27, ptr @kgdb_reenter_check._entry_ptr, ptr @kgdb_reenter_check._entry_ptr.29, ptr @kgdb_register_io_module._entry, ptr @kgdb_register_io_module._entry.13, ptr @kgdb_register_io_module._entry.16, ptr @kgdb_register_io_module._entry_ptr, ptr @kgdb_register_io_module._entry_ptr.15, ptr @kgdb_register_io_module._entry_ptr.18, ptr @kgdb_unregister_io_module._entry, ptr @kgdb_unregister_io_module._entry_ptr, ptr @kgdb_validate_break_address._entry, ptr @kgdb_validate_break_address._entry_ptr, ptr @sysrq_handle_dbg._entry, ptr @sysrq_handle_dbg._entry.44, ptr @sysrq_handle_dbg._entry_ptr, ptr @sysrq_handle_dbg._entry_ptr.46, ptr @kgdb_connected, ptr @dbg_is_early, ptr @dbg_kdb_mode, ptr @kgdb_use_con, ptr @kgdbreboot, ptr @kgdb_active, ptr @kgdb_cpu_doing_single_step, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @kgdb_info, ptr @kgdb_break, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @dbg_master_lock, ptr @kgdb_io_module_registered, ptr @.str.10, ptr @kgdb_break_asap, ptr @kgdb_registration_lock, ptr @dbg_io_ops, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @kgdb_setting_breakpoint, ptr @dbg_switch_cpu, ptr @kgdb_usethread, ptr @kgdb_contthread, ptr @kgdb_single_step, ptr @kgdb_do_roundup, ptr @.str.22, ptr @.str.23, ptr @exception_level, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @masters_in_kgdb, ptr @slaves_in_kgdb, ptr @dbg_slave_lock, ptr @kgdb_sstep_pid, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @kgdb_con_registered, ptr @kgdbcons, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @dbg_module_load_nb, ptr @dbg_reboot_notifier, ptr @sysrq_dbg_op, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_connected to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_is_early to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_kdb_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_use_con to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbreboot to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_active to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_cpu_doing_single_step to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_validate_break_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_info to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_break to i32), i32 16000, i32 20000, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_activate_sw_breakpoints._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_deactivate_sw_breakpoints._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_remove_all_break._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_master_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_io_module_registered to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_break_asap to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_registration_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_io_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_register_io_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_register_io_module._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_register_io_module._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_unregister_io_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_setting_breakpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_switch_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_usethread to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_contthread to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_single_step to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_do_roundup to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_io_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exception_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_reenter_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_reenter_check._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @masters_in_kgdb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slaves_in_kgdb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_slave_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_sstep_pid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_cpu_enter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_con_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdbcons to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_initial_breakpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_module_load_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_reboot_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_dbg_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_handle_dbg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_handle_dbg._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @opt_nokgdbroundup(ptr nocapture noundef readnone %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @kgdb_do_roundup, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @kgdb_arch_set_breakpoint(ptr noundef %bpt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %saved_instr = getelementptr inbounds %struct.kgdb_bkpt, ptr %bpt, i32 0, i32 1
  %0 = ptrtoint ptr %bpt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bpt, align 4
  %2 = inttoptr i32 %1 to ptr
  %call = tail call i32 @copy_from_kernel_nofault(ptr noundef %saved_instr, ptr noundef %2, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %bpt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bpt, align 4
  %5 = inttoptr i32 %4 to ptr
  %call2 = tail call i32 @copy_to_kernel_nofault(ptr noundef %5, ptr noundef nonnull @arch_kgdb_ops, i32 noundef 4) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_to_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @kgdb_arch_remove_breakpoint(ptr noundef %bpt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bpt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bpt, align 4
  %2 = inttoptr i32 %1 to ptr
  %saved_instr = getelementptr inbounds %struct.kgdb_bkpt, ptr %bpt, i32 0, i32 1
  %call = tail call i32 @copy_to_kernel_nofault(ptr noundef %2, ptr noundef %saved_instr, i32 noundef 4) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @kgdb_validate_break_address(i32 noundef %addr) local_unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.kgdb_bkpt, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  %0 = getelementptr inbounds i8, ptr %tmp, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %call.i = tail call zeroext i1 @within_kprobe_blacklist(i32 noundef %addr) #15
  br i1 %call.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %addr, ptr %tmp, align 4
  %call1 = call i32 @kgdb_arch_set_breakpoint(ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @kgdb_arch_remove_breakpoint(ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %do.end

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %addr) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call4, %do.end ], [ 0, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @kgdb_arch_pc(i32 noundef %exception, ptr noundef %regs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @kgdb_arch_init() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @kgdb_skipexception(i32 noundef %exception, ptr noundef %regs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @kgdb_call_nmi_hook(ptr noundef %ignored) #1 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %kgdb_var.i = alloca %struct.kgdb_state, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @__irq_regs to i32)
  %6 = inttoptr i32 %add.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %kgdb_var.i) #15
  %rounding_up.i = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %3, i32 6
  %9 = ptrtoint ptr %rounding_up.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %rounding_up.i, align 4
  %10 = call ptr @memset(ptr %kgdb_var.i, i32 0, i32 40)
  %cpu1.i = getelementptr inbounds %struct.kgdb_state, ptr %kgdb_var.i, i32 0, i32 3
  %11 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %3, ptr %cpu1.i, align 4
  %linux_regs.i = getelementptr inbounds %struct.kgdb_state, ptr %kgdb_var.i, i32 0, i32 8
  %12 = ptrtoint ptr %linux_regs.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %linux_regs.i, align 4
  %enter_kgdb.i = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %3, i32 5
  %13 = ptrtoint ptr %enter_kgdb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enter_kgdb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.kgdb_nmicallback.exit_crit_edge

entry.kgdb_nmicallback.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %kgdb_nmicallback.exit

land.lhs.true.i:                                  ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @dbg_master_lock, align 4
  %15 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %land.lhs.true.i.kgdb_nmicallback.exit_crit_edge, label %if.then.i

land.lhs.true.i.kgdb_nmicallback.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kgdb_nmicallback.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %call4.i = call i32 @kgdb_cpu_enter(ptr noundef nonnull %kgdb_var.i, ptr noundef %8, i32 noundef 4) #15
  br label %kgdb_nmicallback.exit

kgdb_nmicallback.exit:                            ; preds = %if.then.i, %land.lhs.true.i.kgdb_nmicallback.exit_crit_edge, %entry.kgdb_nmicallback.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %kgdb_var.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kgdb_nmicallback(i32 noundef %cpu, ptr noundef %regs) #1 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %kgdb_var = alloca %struct.kgdb_state, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %kgdb_var) #15
  %rounding_up = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %cpu, i32 6
  %0 = ptrtoint ptr %rounding_up to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %rounding_up, align 4
  %1 = call ptr @memset(ptr %kgdb_var, i32 0, i32 40)
  %cpu1 = getelementptr inbounds %struct.kgdb_state, ptr %kgdb_var, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cpu, ptr %cpu1, align 4
  %linux_regs = getelementptr inbounds %struct.kgdb_state, ptr %kgdb_var, i32 0, i32 8
  %3 = ptrtoint ptr %linux_regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regs, ptr %linux_regs, align 4
  %enter_kgdb = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %cpu, i32 5
  %4 = ptrtoint ptr %enter_kgdb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enter_kgdb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr @dbg_master_lock, align 4
  %6 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = call i32 @kgdb_cpu_enter(ptr noundef nonnull %kgdb_var, ptr noundef %regs, i32 noundef 4)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %kgdb_var) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @kgdb_roundup_cpus() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %call223 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call223, i32 %4)
  %cmp24 = icmp ult i32 %call223, %4
  br i1 %cmp24, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %entry.for.body_crit_edge
  %call225 = phi i32 [ %call2, %for.cond.backedge.for.body_crit_edge ], [ %call223, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call225, i32 %3)
  %cmp3 = icmp eq i32 %call225, %3
  br i1 %cmp3, label %for.body.for.cond.backedge_crit_edge, label %do.body

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge

do.body:                                          ; preds = %for.body
  %rounding_up = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %call225, i32 6
  %5 = ptrtoint ptr %rounding_up to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rounding_up, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end7, label %do.body.for.cond.backedge_crit_edge

do.body.for.cond.backedge_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge

if.end7:                                          ; preds = %do.body
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call225
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, ptrtoint (ptr @kgdb_roundup_csd to i32)
  %9 = inttoptr i32 %add to ptr
  %10 = ptrtoint ptr %rounding_up to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %rounding_up, align 4
  %call10 = tail call i32 @smp_call_function_single_async(i32 noundef %call225, ptr noundef %9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end7.for.cond.backedge_crit_edge, label %if.then12

if.end7.for.cond.backedge_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %rounding_up to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %rounding_up, align 4
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then12, %if.end7.for.cond.backedge_crit_edge, %do.body.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %call2 = tail call i32 @cpumask_next(i32 noundef %call225, ptr noundef nonnull @__cpu_online_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %12
  br i1 %cmp, label %for.cond.backedge.for.body_crit_edge, label %for.cond.backedge.for.end_crit_edge

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single_async(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdb_flush_swbreak_addr(i32 noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  %tobool.not = icmp eq ptr %5, null
  %.pre = add i32 %addr, 4
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %for.cond.preheader

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %arrayidx = getelementptr %struct.task_struct, ptr %7, i32 0, i32 55, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %for.cond.preheader.for.inc_crit_edge, label %if.end

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @flush_cache_range(ptr noundef nonnull %9, i32 noundef %addr, i32 noundef %.pre) #15
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.cond.preheader.for.inc_crit_edge
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %arrayidx.1 = getelementptr %struct.task_struct, ptr %11, i32 0, i32 55, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tobool3.not.1 = icmp eq ptr %13, null
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @flush_cache_range(ptr noundef nonnull %13, i32 noundef %addr, i32 noundef %.pre) #15
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %arrayidx.2 = getelementptr %struct.task_struct, ptr %15, i32 0, i32 55, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  %tobool3.not.2 = icmp eq ptr %17, null
  br i1 %tobool3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @flush_cache_range(ptr noundef nonnull %17, i32 noundef %addr, i32 noundef %.pre) #15
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %arrayidx.3 = getelementptr %struct.task_struct, ptr %19, i32 0, i32 55, i32 1, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.3, align 4
  %tobool3.not.3 = icmp eq ptr %21, null
  br i1 %tobool3.not.3, label %for.inc.2.if.end10_crit_edge, label %if.end.3

for.inc.2.if.end10_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @flush_cache_range(ptr noundef nonnull %21, i32 noundef %addr, i32 noundef %.pre) #15
  br label %if.end10

if.end10:                                         ; preds = %if.end.3, %for.inc.2.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  tail call void %22(i32 noundef %addr, i32 noundef %.pre) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_activate_sw_breakpoints() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.018 = phi i32 [ 0, %entry ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %state = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.019, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1.not = icmp eq i32 %1, 2
  br i1 %cmp1.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.019
  %call = tail call i32 @kgdb_arch_set_breakpoint(ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  br i1 %tobool.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %3) #18
  br label %for.inc

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kgdb_flush_swbreak_addr(i32 noundef %3)
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %state, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %if.then3, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.018, %for.body.for.inc_crit_edge ], [ %call, %if.then3 ], [ %ret.018, %if.end6 ]
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_set_sw_break(i32 noundef %addr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kgdb_validate_break_address(i32 noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.069 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %state = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.069, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.069
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %addr)
  %cmp3 = icmp eq i32 %3, %addr
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.inc.for.body8_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  br label %for.body8

for.body8:                                        ; preds = %for.inc18.for.body8_crit_edge, %for.inc.for.body8_crit_edge
  %i.171 = phi i32 [ %inc19, %for.inc18.for.body8_crit_edge ], [ 0, %for.inc.for.body8_crit_edge ]
  %state10 = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.171, i32 3
  %4 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp11 = icmp eq i32 %5, 1
  br i1 %cmp11, label %land.lhs.true12, label %for.body8.for.inc18_crit_edge

for.body8.for.inc18_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc18

land.lhs.true12:                                  ; preds = %for.body8
  %arrayidx9 = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.171
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %addr)
  %cmp15 = icmp eq i32 %7, %addr
  br i1 %cmp15, label %land.lhs.true12.if.end37_crit_edge, label %land.lhs.true12.for.inc18_crit_edge

land.lhs.true12.for.inc18_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc18

land.lhs.true12.if.end37_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

for.inc18:                                        ; preds = %land.lhs.true12.for.inc18_crit_edge, %for.body8.for.inc18_crit_edge
  %inc19 = add nuw nsw i32 %i.171, 1
  %exitcond76.not = icmp eq i32 %inc19, 1000
  br i1 %exitcond76.not, label %for.inc18.for.body25_crit_edge, label %for.inc18.for.body8_crit_edge

for.inc18.for.body8_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body8

for.inc18.for.body25_crit_edge:                   ; preds = %for.inc18
  br label %for.body25

for.body25:                                       ; preds = %for.inc31.for.body25_crit_edge, %for.inc18.for.body25_crit_edge
  %i.273 = phi i32 [ %inc32, %for.inc31.for.body25_crit_edge ], [ 0, %for.inc18.for.body25_crit_edge ]
  %state27 = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.273, i32 3
  %8 = ptrtoint ptr %state27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp28 = icmp eq i32 %9, 0
  br i1 %cmp28, label %for.body25.if.end37_crit_edge, label %for.inc31

for.body25.if.end37_crit_edge:                    ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

for.inc31:                                        ; preds = %for.body25
  %inc32 = add nuw nsw i32 %i.273, 1
  %exitcond77.not = icmp eq i32 %inc32, 1000
  br i1 %exitcond77.not, label %for.inc31.cleanup_crit_edge, label %for.inc31.for.body25_crit_edge

for.inc31.for.body25_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body25

for.inc31.cleanup_crit_edge:                      ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end37:                                         ; preds = %for.body25.if.end37_crit_edge, %land.lhs.true12.if.end37_crit_edge
  %breakno.1 = phi i32 [ %i.273, %for.body25.if.end37_crit_edge ], [ %i.171, %land.lhs.true12.if.end37_crit_edge ]
  %arrayidx38 = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %breakno.1
  %state39 = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %breakno.1, i32 3
  %10 = ptrtoint ptr %state39 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %state39, align 4
  %type = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %breakno.1, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %type, align 4
  %12 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %addr, ptr %arrayidx38, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %for.inc31.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ %call, %entry.cleanup_crit_edge ], [ -7, %for.inc31.cleanup_crit_edge ], [ -17, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_deactivate_sw_breakpoints() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.018 = phi i32 [ 0, %entry ], [ %ret.2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.019
  %state = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.019, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp1.not = icmp eq i32 %1, 3
  br i1 %cmp1.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call = tail call i32 @kgdb_arch_remove_breakpoint(ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %3) #18
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %ret.1 = phi i32 [ %call, %do.end ], [ %ret.018, %if.end.if.end6_crit_edge ]
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void @kgdb_flush_swbreak_addr(i32 noundef %5)
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %state, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %for.body.for.inc_crit_edge
  %ret.2 = phi i32 [ %ret.018, %for.body.for.inc_crit_edge ], [ %ret.1, %if.end6 ]
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  ret i32 %ret.2
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_remove_sw_break(i32 noundef %addr) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %state = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.010, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.010
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %addr)
  %cmp3 = icmp eq i32 %3, %addr
  br i1 %cmp3, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %state, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -2, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kgdb_isremovedbreak(i32 noundef %addr) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %state = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.07, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.07
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %addr)
  %cmp3 = icmp eq i32 %3, %addr
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kgdb_has_hit_break(i32 noundef %addr) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %state = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.07, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.07
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %addr)
  %cmp3 = icmp eq i32 %3, %addr
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_remove_all_break() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %setundefined.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %setundefined.for.body_crit_edge ]
  %arrayidx = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.017
  %state = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.017, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp1.not = icmp eq i32 %1, 3
  br i1 %cmp1.not, label %if.end, label %for.body.setundefined_crit_edge

for.body.setundefined_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %setundefined

if.end:                                           ; preds = %for.body
  %call = tail call i32 @kgdb_arch_remove_breakpoint(ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.setundefined_crit_edge, label %do.end

if.end.setundefined_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %setundefined

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %3) #18
  br label %setundefined

setundefined:                                     ; preds = %do.end, %if.end.setundefined_crit_edge, %for.body.setundefined_crit_edge
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.end, label %setundefined.for.body_crit_edge

setundefined.for.body_crit_edge:                  ; preds = %setundefined
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %setundefined
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 7), align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %for.end.if.end11_crit_edge, label %if.then10

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %5() #15
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %for.end.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kgdb_free_init_mem() local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = inttoptr i32 %1 to ptr
  %cmp.not.i.i = icmp uge ptr %2, @__init_begin
  %cmp1.i.i = icmp ule ptr %2, @__init_end
  %spec.select.i.i = and i1 %cmp.not.i.i, %cmp1.i.i
  br i1 %spec.select.i.i, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %state = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.05, i32 3
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %state, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kdb_dump_stack_on_cpu(i32 noundef %cpu) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cpu)
  %cmp = icmp eq i32 %3, %cpu
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_stack() #18
  br label %while.end

if.end:                                           ; preds = %entry
  %exception_state = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %cpu, i32 2
  %4 = ptrtoint ptr %exception_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %exception_state, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %do.end.preheader

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.9, i32 noundef %cpu) #15
  br label %while.end

do.end.preheader:                                 ; preds = %if.end
  %or = or i32 %5, 8
  %6 = ptrtoint ptr %exception_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %exception_state, align 4
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.end.preheader
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !231
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !232
  %7 = ptrtoint ptr %exception_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %exception_state, align 4
  %and9 = and i32 %8, 8
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %if.then2, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdb_io_ready(i32 noundef %print_wait) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dbg_io_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @kgdb_connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end3:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_setting_breakpoint, i32 noundef 4) #15
  %2 = load volatile i32, ptr @kgdb_setting_breakpoint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp ne i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print_wait)
  %tobool7.not = icmp eq i32 %print_wait, 0
  %or.cond = or i1 %tobool7.not, %tobool4.not
  br i1 %or.cond, label %if.end3.return_crit_edge, label %if.then8

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then8:                                         ; preds = %if.end3
  %3 = load i32, ptr @dbg_kdb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool9.not = icmp eq i32 %3, 0
  br i1 %tobool9.not, label %do.end, label %if.then8.return_crit_edge

if.then8.return_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #18
  br label %return

return:                                           ; preds = %do.end, %if.then8.return_crit_edge, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ 1, %if.end3.return_crit_edge ], [ 1, %if.then8.return_crit_edge ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdb_reenter_check(ptr nocapture noundef readonly %ks) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #15
  %0 = load volatile i32, ptr @kgdb_active, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %4)
  %cmp.not = icmp eq i32 %0, %4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, ptr @exception_level, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr @exception_level, align 4
  %6 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ks, align 4
  %linux_regs = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 8
  %8 = ptrtoint ptr %linux_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %linux_regs, align 4
  %call2 = tail call i32 @kgdb_arch_pc(i32 noundef %7, ptr noundef %9)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.019.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.019.i
  %state.i = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.019.i, i32 3
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp1.not.i = icmp eq i32 %11, 3
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call i32 @kgdb_arch_remove_breakpoint(ptr noundef %arrayidx.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end6.i_crit_edge, label %do.end.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %13) #18
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i, %if.end.i.if.end6.i_crit_edge
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  tail call void @kgdb_flush_swbreak_addr(i32 noundef %15) #15
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %state.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end6.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %for.inc.i.for.body.i73_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.for.body.i73_crit_edge:                 ; preds = %for.inc.i
  br label %for.body.i73

for.body.i73:                                     ; preds = %for.inc.i77.for.body.i73_crit_edge, %for.inc.i.for.body.i73_crit_edge
  %i.010.i = phi i32 [ %inc.i75, %for.inc.i77.for.body.i73_crit_edge ], [ 0, %for.inc.i.for.body.i73_crit_edge ]
  %state.i72 = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.010.i, i32 3
  %17 = ptrtoint ptr %state.i72 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp1.i = icmp eq i32 %18, 2
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i73.for.inc.i77_crit_edge

for.body.i73.for.inc.i77_crit_edge:               ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i77

land.lhs.true.i:                                  ; preds = %for.body.i73
  %arrayidx.i74 = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.010.i
  %19 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i74, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %call2)
  %cmp3.i = icmp eq i32 %20, %call2
  br i1 %cmp3.i, label %if.then6, label %land.lhs.true.i.for.inc.i77_crit_edge

land.lhs.true.i.for.inc.i77_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i77

for.inc.i77:                                      ; preds = %land.lhs.true.i.for.inc.i77_crit_edge, %for.body.i73.for.inc.i77_crit_edge
  %inc.i75 = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i76 = icmp eq i32 %inc.i75, 1000
  br i1 %exitcond.not.i76, label %for.inc.i77.for.body.i96_crit_edge, label %for.inc.i77.for.body.i73_crit_edge

for.inc.i77.for.body.i73_crit_edge:               ; preds = %for.inc.i77
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i73

for.inc.i77.for.body.i96_crit_edge:               ; preds = %for.inc.i77
  br label %for.body.i96

if.then6:                                         ; preds = %land.lhs.true.i
  %21 = ptrtoint ptr %state.i72 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %state.i72, align 4
  store i32 0, ptr @exception_level, align 4
  %22 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ks, align 4
  %24 = ptrtoint ptr %linux_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %linux_regs, align 4
  %call9 = tail call i32 @kgdb_skipexception(i32 noundef %23, ptr noundef %25)
  br label %for.body.i82

for.body.i82:                                     ; preds = %for.inc.i92.for.body.i82_crit_edge, %if.then6
  %i.019.i78 = phi i32 [ 0, %if.then6 ], [ %inc.i90, %for.inc.i92.for.body.i82_crit_edge ]
  %state.i80 = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.019.i78, i32 3
  %26 = ptrtoint ptr %state.i80 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp1.not.i81 = icmp eq i32 %27, 2
  br i1 %cmp1.not.i81, label %if.end.i86, label %for.body.i82.for.inc.i92_crit_edge

for.body.i82.for.inc.i92_crit_edge:               ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i92

if.end.i86:                                       ; preds = %for.body.i82
  %arrayidx.i83 = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.019.i78
  %call.i84 = tail call i32 @kgdb_arch_set_breakpoint(ptr noundef %arrayidx.i83) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i85 = icmp eq i32 %call.i84, 0
  %28 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i83, align 4
  br i1 %tobool.not.i85, label %if.end6.i88, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #17
  %call5.i87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %29) #18
  br label %for.inc.i92

if.end6.i88:                                      ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kgdb_flush_swbreak_addr(i32 noundef %29) #15
  %30 = ptrtoint ptr %state.i80 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %state.i80, align 4
  br label %for.inc.i92

for.inc.i92:                                      ; preds = %if.end6.i88, %if.then3.i, %for.body.i82.for.inc.i92_crit_edge
  %inc.i90 = add nuw nsw i32 %i.019.i78, 1
  %exitcond.not.i91 = icmp eq i32 %inc.i90, 1000
  br i1 %exitcond.not.i91, label %dbg_activate_sw_breakpoints.exit, label %for.inc.i92.for.body.i82_crit_edge

for.inc.i92.for.body.i82_crit_edge:               ; preds = %for.inc.i92
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i82

dbg_activate_sw_breakpoints.exit:                 ; preds = %for.inc.i92
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call2) #18
  %.b71 = load i1, ptr @kgdb_reenter_check.__already_done, align 1
  br i1 %.b71, label %dbg_activate_sw_breakpoints.exit.cleanup_crit_edge, label %if.then16, !prof !233

dbg_activate_sw_breakpoints.exit.cleanup_crit_edge: ; preds = %dbg_activate_sw_breakpoints.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then16:                                        ; preds = %dbg_activate_sw_breakpoints.exit
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @kgdb_reenter_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 549, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

for.body.i96:                                     ; preds = %setundefined.i.for.body.i96_crit_edge, %for.inc.i77.for.body.i96_crit_edge
  %i.017.i = phi i32 [ %inc.i102, %setundefined.i.for.body.i96_crit_edge ], [ 0, %for.inc.i77.for.body.i96_crit_edge ]
  %arrayidx.i93 = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.017.i
  %state.i94 = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.017.i, i32 3
  %31 = ptrtoint ptr %state.i94 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp1.not.i95 = icmp eq i32 %32, 3
  br i1 %cmp1.not.i95, label %if.end.i99, label %for.body.i96.setundefined.i_crit_edge

for.body.i96.setundefined.i_crit_edge:            ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #17
  br label %setundefined.i

if.end.i99:                                       ; preds = %for.body.i96
  %call.i97 = tail call i32 @kgdb_arch_remove_breakpoint(ptr noundef %arrayidx.i93) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool.not.i98 = icmp eq i32 %call.i97, 0
  br i1 %tobool.not.i98, label %if.end.i99.setundefined.i_crit_edge, label %do.end.i101

if.end.i99.setundefined.i_crit_edge:              ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #17
  br label %setundefined.i

do.end.i101:                                      ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i93, align 4
  %call5.i100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %34) #18
  br label %setundefined.i

setundefined.i:                                   ; preds = %do.end.i101, %if.end.i99.setundefined.i_crit_edge, %for.body.i96.setundefined.i_crit_edge
  %35 = ptrtoint ptr %state.i94 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %state.i94, align 4
  %inc.i102 = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i103 = icmp eq i32 %inc.i102, 1000
  br i1 %exitcond.not.i103, label %for.end.i, label %setundefined.i.for.body.i96_crit_edge

setundefined.i.for.body.i96_crit_edge:            ; preds = %setundefined.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i96

for.end.i:                                        ; preds = %setundefined.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 7), align 4
  %tobool9.not.i = icmp eq ptr %36, null
  br i1 %tobool9.not.i, label %for.end.i.dbg_remove_all_break.exit_crit_edge, label %if.then10.i

for.end.i.dbg_remove_all_break.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dbg_remove_all_break.exit

if.then10.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %36() #15
  br label %dbg_remove_all_break.exit

dbg_remove_all_break.exit:                        ; preds = %if.then10.i, %for.end.i.dbg_remove_all_break.exit_crit_edge
  %37 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ks, align 4
  %39 = ptrtoint ptr %linux_regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %linux_regs, align 4
  %call54 = tail call i32 @kgdb_skipexception(i32 noundef %38, ptr noundef %40)
  %41 = load i32, ptr @exception_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp55 = icmp sgt i32 %41, 1
  br i1 %cmp55, label %if.then56, label %do.end60

if.then56:                                        ; preds = %dbg_remove_all_break.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_stack() #18
  store i32 0, ptr @kgdb_io_module_registered, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.26) #20
  unreachable

do.end60:                                         ; preds = %dbg_remove_all_break.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %if.then16, %dbg_activate_sw_breakpoints.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end60 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then16 ], [ 1, %dbg_activate_sw_breakpoints.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dbg_touch_watchdogs() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @touch_softlockup_watchdog_sync() #15
  tail call void @clocksource_touch_watchdog() #15
  tail call void @rcu_cpu_stall_reset() #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdb_cpu_enter(ptr noundef %ks, ptr noundef %regs, i32 noundef %exception_state) #1 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %0 = load volatile i32, ptr @__num_online_cpus, align 4
  %cpu1 = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 3
  %1 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cpu1, align 4
  %enter_kgdb = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %2, i32 5
  %3 = ptrtoint ptr %enter_kgdb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enter_kgdb, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %enter_kgdb, align 4
  %5 = load i32, ptr %cpu1, align 4
  %exception_state4 = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %5, i32 2
  %6 = ptrtoint ptr %exception_state4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %exception_state4, align 4
  %or = or i32 %7, %exception_state
  store i32 %or, ptr %exception_state4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %exception_state)
  %cmp = icmp eq i32 %exception_state, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @masters_in_kgdb, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull @masters_in_kgdb, i32 1, i32 3, i32 1) #15
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @masters_in_kgdb, ptr nonnull @masters_in_kgdb, i32 1, ptr nonnull elementtype(i32) @masters_in_kgdb) #15, !srcloc !234
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i447 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @slaves_in_kgdb, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull @slaves_in_kgdb, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @slaves_in_kgdb, ptr nonnull @slaves_in_kgdb, i32 1, ptr nonnull elementtype(i32) @slaves_in_kgdb) #15, !srcloc !234
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 6) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 6), align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %10(ptr noundef %regs) #15
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %linux_regs = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 8
  %send_ready = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 9
  br label %acquirelock

acquirelock:                                      ; preds = %rcu_read_unlock.exit487, %if.end6
  %trace_on.0 = phi i32 [ 0, %if.end6 ], [ %trace_on.2.ph, %rcu_read_unlock.exit487 ]
  %sstep_tries.0 = phi i32 [ 100, %if.end6 ], [ %dec161, %rcu_read_unlock.exit487 ]
  %11 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !235
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %acquirelock.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

acquirelock.rcu_read_lock.exit_crit_edge:         ; preds = %acquirelock
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %acquirelock
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 696, ptr noundef nonnull @.str.33) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %acquirelock.rcu_read_lock.exit_crit_edge
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !236
  %and.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not = icmp eq i32 %and.i, 0
  br i1 %tobool17.not, label %if.then18, label %rcu_read_lock.exit.do.end21_crit_edge

rcu_read_lock.exit.do.end21_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end21

if.then18:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %rcu_read_lock.exit.do.end21_crit_edge
  %16 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu1, align 4
  %arrayidx23 = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %regs, ptr %arrayidx23, align 4
  %19 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i463 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i463 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %task26 = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %17, i32 1
  %23 = ptrtoint ptr %task26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %task26, align 4
  %ret_state = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %17, i32 3
  %24 = ptrtoint ptr %ret_state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ret_state, align 4
  %25 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i, align 4
  %and = lshr i32 %28, 16
  %shr = and i32 %and, 15
  %irq_depth = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %17, i32 4
  %29 = ptrtoint ptr %irq_depth to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr, ptr %irq_depth, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !237
  %30 = load i32, ptr @exception_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp36 = icmp eq i32 %30, 1
  br i1 %cmp36, label %if.then38, label %do.end21.cpu_loop.preheader_crit_edge

do.end21.cpu_loop.preheader_crit_edge:            ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_loop.preheader

cpu_loop.preheader:                               ; preds = %if.then275, %do.end21.cpu_loop.preheader_crit_edge
  %trace_on.2.ph = phi i32 [ %trace_on.0, %do.end21.cpu_loop.preheader_crit_edge ], [ %trace_on.4.ph, %if.then275 ]
  %sstep_tries.2.ph = phi i32 [ %sstep_tries.0, %do.end21.cpu_loop.preheader_crit_edge ], [ %sstep_tries.5.ph, %if.then275 ]
  %exception_state46 = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %17, i32 2
  br label %cpu_loop

if.then38:                                        ; preds = %do.end21
  %call39 = tail call i32 @_raw_spin_trylock(ptr noundef nonnull @dbg_master_lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then38.cpu_master_loop.preheader_crit_edge, label %if.then41

if.then38.cpu_master_loop.preheader_crit_edge:    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_master_loop.preheader

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i448 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kgdb_active, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  tail call void @llvm.prefetch.p0(ptr nonnull @kgdb_active, i32 1, i32 3, i32 1) #15
  %31 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %17, ptr nonnull @kgdb_active) #15, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !240
  br label %cpu_master_loop.preheader

cpu_loop:                                         ; preds = %do.end144, %cpu_loop.preheader
  %32 = ptrtoint ptr %exception_state46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %exception_state46, align 4
  %and47 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.else53, label %if.then49

if.then49:                                        ; preds = %cpu_loop
  call void @__sanitizer_cov_trace_pc() #17
  %and52 = and i32 %33, -3
  %34 = ptrtoint ptr %exception_state46 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and52, ptr %exception_state46, align 4
  br label %cpu_master_loop.preheader

if.else53:                                        ; preds = %cpu_loop
  %and56 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.else64, label %if.then58

if.then58:                                        ; preds = %if.else53
  %call59 = tail call i32 @_raw_spin_trylock(ptr noundef nonnull @dbg_master_lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then58.do.end144_crit_edge, label %if.then61

if.then58.do.end144_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end144

if.then61:                                        ; preds = %if.then58
  %call.i.i449 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kgdb_active, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  tail call void @llvm.prefetch.p0(ptr nonnull @kgdb_active, i32 1, i32 3, i32 1) #15
  %35 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %17, ptr nonnull @kgdb_active) #15, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !240
  %call.i.i450 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_cpu_doing_single_step, i32 noundef 4) #15
  %36 = load volatile i32, ptr @kgdb_cpu_doing_single_step, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp150.not = icmp eq i32 %36, -1
  br i1 %cmp150.not, label %if.then61.if.end200_crit_edge, label %land.lhs.true

if.then61.if.end200_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end200

if.else64:                                        ; preds = %if.else53
  %and67 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.else73, label %if.then69

if.then69:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_stack() #18
  %37 = ptrtoint ptr %exception_state46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %exception_state46, align 4
  %and72 = and i32 %38, -9
  store i32 %and72, ptr %exception_state46, align 4
  br label %do.end144

if.else73:                                        ; preds = %if.else64
  %and76 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.else73.return_normal_crit_edge, label %if.then78

if.else73.return_normal_crit_edge:                ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #17
  br label %return_normal

if.then78:                                        ; preds = %if.else73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr @dbg_slave_lock, align 4
  %39 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %if.then78.return_normal_crit_edge, label %if.then78.do.end144_crit_edge

if.then78.do.end144_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end144

if.then78.return_normal_crit_edge:                ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #17
  br label %return_normal

return_normal:                                    ; preds = %if.then78.return_normal_crit_edge, %if.else73.return_normal_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 8) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 8), align 4
  %tobool84.not = icmp eq ptr %40, null
  br i1 %tobool84.not, label %return_normal.if.end86_crit_edge, label %if.then85

return_normal.if.end86_crit_edge:                 ; preds = %return_normal
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

if.then85:                                        ; preds = %return_normal
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %40() #15
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %return_normal.if.end86_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trace_on.2.ph)
  %tobool87.not = icmp eq i32 %trace_on.2.ph, 0
  br i1 %tobool87.not, label %if.end86.if.end89_crit_edge, label %if.then88

if.end86.if.end89_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @tracing_on() #15
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end86.if.end89_crit_edge
  %41 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx23, align 4
  %42 = ptrtoint ptr %task26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %task26, align 4
  %43 = ptrtoint ptr %exception_state46 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %exception_state46, align 4
  %and96 = and i32 %44, -6
  store i32 %and96, ptr %exception_state46, align 4
  %enter_kgdb98 = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %17, i32 5
  %45 = ptrtoint ptr %enter_kgdb98 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %enter_kgdb98, align 4
  %dec = add i32 %46, -1
  store i32 %dec, ptr %enter_kgdb98, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !241
  %call.i.i451 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @slaves_in_kgdb, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull @slaves_in_kgdb, i32 1, i32 3, i32 1) #15
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @slaves_in_kgdb, ptr nonnull @slaves_in_kgdb, i32 1, ptr nonnull elementtype(i32) @slaves_in_kgdb) #15, !srcloc !242
  tail call void @touch_softlockup_watchdog_sync() #15
  tail call void @clocksource_touch_watchdog() #15
  tail call void @rcu_cpu_stall_reset() #15
  br i1 %tobool17.not, label %if.then114, label %if.end89.do.body116_crit_edge

if.end89.do.body116_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body116

if.then114:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_on() #15
  br label %do.body116

do.body116:                                       ; preds = %if.then114, %if.end89.do.body116_crit_edge
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !243
  %and.i.i465 = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i465)
  %tobool124.not = icmp eq i32 %and.i.i465, 0
  br i1 %tobool124.not, label %if.then128, label %do.body116.do.end131_crit_edge, !prof !244

do.body116.do.end131_crit_edge:                   ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end131

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end131

do.end131:                                        ; preds = %if.then128, %do.body116.do.end131_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #15, !srcloc !245
  %call.i466 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i466, label %do.end131.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i469

do.end131.rcu_read_unlock.exit_crit_edge:         ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i469:                               ; preds = %do.end131
  %call1.i467 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i467)
  %tobool.not.i468 = icmp eq i32 %call1.i467, 0
  br i1 %tobool.not.i468, label %land.lhs.true.i469.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i471

land.lhs.true.i469.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i469
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i471:                              ; preds = %land.lhs.true.i469
  %.b4.i470 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i470, label %land.lhs.true2.i471.rcu_read_unlock.exit_crit_edge, label %if.then.i472

land.lhs.true2.i471.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i471
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i472:                                     ; preds = %land.lhs.true2.i471
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 724, ptr noundef nonnull @.str.35) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i472, %land.lhs.true2.i471.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i469.rcu_read_unlock.exit_crit_edge, %do.end131.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !246
  %49 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i.i473 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i473 to ptr
  %preempt_count.i.i.i.i474 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i474 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i474, align 4
  %sub.i.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i474, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup

do.end144:                                        ; preds = %if.then78.do.end144_crit_edge, %if.then69, %if.then58.do.end144_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !247
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !248
  br label %cpu_loop

land.lhs.true:                                    ; preds = %if.then61
  %53 = ptrtoint ptr %task26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task26, align 4
  %tobool154.not = icmp eq ptr %54, null
  br i1 %tobool154.not, label %land.lhs.true.if.end200_crit_edge, label %land.lhs.true155

land.lhs.true.if.end200_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end200

land.lhs.true155:                                 ; preds = %land.lhs.true
  %pid = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 68
  %55 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pid, align 8
  %57 = load i32, ptr @kgdb_sstep_pid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %57)
  %cmp158.not = icmp eq i32 %56, %57
  br i1 %cmp158.not, label %land.lhs.true155.if.end200_crit_edge, label %land.lhs.true160

land.lhs.true155.if.end200_crit_edge:             ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end200

land.lhs.true160:                                 ; preds = %land.lhs.true155
  %dec161 = add i32 %sstep_tries.2.ph, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec161)
  %tobool162.not = icmp eq i32 %dec161, 0
  br i1 %tobool162.not, label %land.lhs.true160.if.end200_crit_edge, label %if.then163

land.lhs.true160.if.end200_crit_edge:             ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end200

if.then163:                                       ; preds = %land.lhs.true160
  %call.i.i452 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kgdb_active, i32 noundef 4) #15
  store volatile i32 -1, ptr @kgdb_active, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dbg_master_lock) #15
  tail call void @touch_softlockup_watchdog_sync() #15
  tail call void @clocksource_touch_watchdog() #15
  tail call void @rcu_cpu_stall_reset() #15
  br i1 %tobool17.not, label %if.then173, label %if.then163.do.body175_crit_edge

if.then163.do.body175_crit_edge:                  ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body175

if.then173:                                       ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_on() #15
  br label %do.body175

do.body175:                                       ; preds = %if.then173, %if.then163.do.body175_crit_edge
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !243
  %and.i.i476 = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i476)
  %tobool183.not = icmp eq i32 %and.i.i476, 0
  br i1 %tobool183.not, label %if.then192, label %do.body175.do.end195_crit_edge, !prof !244

do.body175.do.end195_crit_edge:                   ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end195

if.then192:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end195

do.end195:                                        ; preds = %if.then192, %do.body175.do.end195_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #15, !srcloc !245
  %call.i477 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i477, label %do.end195.rcu_read_unlock.exit487_crit_edge, label %land.lhs.true.i480

do.end195.rcu_read_unlock.exit487_crit_edge:      ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit487

land.lhs.true.i480:                               ; preds = %do.end195
  %call1.i478 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i478)
  %tobool.not.i479 = icmp eq i32 %call1.i478, 0
  br i1 %tobool.not.i479, label %land.lhs.true.i480.rcu_read_unlock.exit487_crit_edge, label %land.lhs.true2.i482

land.lhs.true.i480.rcu_read_unlock.exit487_crit_edge: ; preds = %land.lhs.true.i480
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit487

land.lhs.true2.i482:                              ; preds = %land.lhs.true.i480
  %.b4.i481 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i481, label %land.lhs.true2.i482.rcu_read_unlock.exit487_crit_edge, label %if.then.i483

land.lhs.true2.i482.rcu_read_unlock.exit487_crit_edge: ; preds = %land.lhs.true2.i482
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit487

if.then.i483:                                     ; preds = %land.lhs.true2.i482
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 724, ptr noundef nonnull @.str.35) #15
  br label %rcu_read_unlock.exit487

rcu_read_unlock.exit487:                          ; preds = %if.then.i483, %land.lhs.true2.i482.rcu_read_unlock.exit487_crit_edge, %land.lhs.true.i480.rcu_read_unlock.exit487_crit_edge, %do.end195.rcu_read_unlock.exit487_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !246
  %59 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i.i484 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i484 to ptr
  %preempt_count.i.i.i.i485 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i485 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i485, align 4
  %sub.i.i.i486 = add i32 %62, -1
  store volatile i32 %sub.i.i.i486, ptr %preempt_count.i.i.i.i485, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %acquirelock

if.end200:                                        ; preds = %land.lhs.true160.if.end200_crit_edge, %land.lhs.true155.if.end200_crit_edge, %land.lhs.true.if.end200_crit_edge, %if.then61.if.end200_crit_edge
  %sstep_tries.3 = phi i32 [ 0, %land.lhs.true160.if.end200_crit_edge ], [ %sstep_tries.2.ph, %land.lhs.true155.if.end200_crit_edge ], [ %sstep_tries.2.ph, %land.lhs.true.if.end200_crit_edge ], [ %sstep_tries.2.ph, %if.then61.if.end200_crit_edge ]
  %63 = load ptr, ptr @dbg_io_ops, align 4
  %tobool.not.i488 = icmp eq ptr %63, null
  br i1 %tobool.not.i488, label %if.then203, label %if.end.i

if.end.i:                                         ; preds = %if.end200
  %64 = load i32, ptr @kgdb_connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool1.not.i = icmp eq i32 %64, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.if.end206_crit_edge

if.end.i.if.end206_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end206

if.end3.i:                                        ; preds = %if.end.i
  %call.i.i.i489 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_setting_breakpoint, i32 noundef 4) #15
  %65 = load volatile i32, ptr @kgdb_setting_breakpoint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool4.not.i.not = icmp eq i32 %65, 0
  br i1 %tobool4.not.i.not, label %if.then8.i, label %if.end3.i.if.end206_crit_edge

if.end3.i.if.end206_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end206

if.then8.i:                                       ; preds = %if.end3.i
  %66 = load i32, ptr @dbg_kdb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool9.not.i = icmp eq i32 %66, 0
  br i1 %tobool9.not.i, label %do.end.i, label %if.then8.i.if.end206_crit_edge

if.then8.i.if.end206_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end206

do.end.i:                                         ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #17
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #18
  br label %if.end206

if.then203:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #17
  %67 = ptrtoint ptr %ret_state to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %ret_state, align 4
  br label %kgdb_restore

if.end206:                                        ; preds = %do.end.i, %if.then8.i.if.end206_crit_edge, %if.end3.i.if.end206_crit_edge, %if.end.i.if.end206_crit_edge
  %68 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ks, align 4
  %70 = ptrtoint ptr %linux_regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %linux_regs, align 4
  %call207 = tail call i32 @kgdb_skipexception(i32 noundef %69, ptr noundef %71)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.end210, label %if.end206.kgdb_restore_crit_edge

if.end206.kgdb_restore_crit_edge:                 ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #17
  br label %kgdb_restore

if.end210:                                        ; preds = %if.end206
  %call.i.i453 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull @ignore_console_lock_warning, i32 1, i32 3, i32 1) #15
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ignore_console_lock_warning, ptr nonnull @ignore_console_lock_warning, i32 1, ptr nonnull elementtype(i32) @ignore_console_lock_warning) #15, !srcloc !234
  %73 = load ptr, ptr @dbg_io_ops, align 4
  %pre_exception = getelementptr inbounds %struct.kgdb_io, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %pre_exception to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pre_exception, align 4
  %tobool211.not = icmp eq ptr %75, null
  br i1 %tobool211.not, label %if.end210.if.end214_crit_edge, label %if.then212

if.end210.if.end214_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end214

if.then212:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %75() #15
  br label %if.end214

if.end214:                                        ; preds = %if.then212, %if.end210.if.end214_crit_edge
  %76 = load i32, ptr @kgdb_single_step, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool215.not = icmp eq i32 %76, 0
  br i1 %tobool215.not, label %if.then216, label %if.end214.if.end217_crit_edge

if.end214.if.end217_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end217

if.then216:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_lock(ptr noundef nonnull @dbg_slave_lock) #15
  br label %if.end217

if.end217:                                        ; preds = %if.then216, %if.end214.if.end217_crit_edge
  %77 = ptrtoint ptr %send_ready to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %send_ready, align 4
  %tobool218.not = icmp eq ptr %78, null
  br i1 %tobool218.not, label %if.else221, label %if.then219

if.then219:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i454 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %78, i32 noundef 4) #15
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 1, ptr %78, align 4
  br label %if.end227

if.else221:                                       ; preds = %if.end217
  %80 = load i32, ptr @kgdb_single_step, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool222.not = icmp eq i32 %80, 0
  br i1 %tobool222.not, label %land.lhs.true223, label %if.else221.if.end227_crit_edge

if.else221.if.end227_crit_edge:                   ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end227

land.lhs.true223:                                 ; preds = %if.else221
  %.b446 = load i1, ptr @kgdb_do_roundup, align 4
  br i1 %.b446, label %land.lhs.true223.for.body.i.preheader_crit_edge, label %if.then225

land.lhs.true223.for.body.i.preheader_crit_edge:  ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.preheader

if.then225:                                       ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kgdb_roundup_cpus()
  br label %if.end227

if.end227:                                        ; preds = %if.then225, %if.else221.if.end227_crit_edge, %if.then219
  %.b445553.pr = load i1, ptr @kgdb_do_roundup, align 4
  br i1 %.b445553.pr, label %if.end227.for.body.i.preheader_crit_edge, label %if.end227.land.lhs.true230_crit_edge

if.end227.land.lhs.true230_crit_edge:             ; preds = %if.end227
  br label %land.lhs.true230

if.end227.for.body.i.preheader_crit_edge:         ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.preheader

land.lhs.true230:                                 ; preds = %while.body237.land.lhs.true230_crit_edge, %if.end227.land.lhs.true230_crit_edge
  %time_left.0554 = phi i64 [ %dec231, %while.body237.land.lhs.true230_crit_edge ], [ 1000, %if.end227.land.lhs.true230_crit_edge ]
  %dec231 = add nsw i64 %time_left.0554, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec231)
  %tobool232.not = icmp eq i64 %dec231, 0
  br i1 %tobool232.not, label %do.end243.critedge, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true230
  %call.i.i455 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @masters_in_kgdb, i32 noundef 4) #15
  %81 = load volatile i32, ptr @masters_in_kgdb, align 4
  %call.i.i456 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @slaves_in_kgdb, i32 noundef 4) #15
  %82 = load volatile i32, ptr @slaves_in_kgdb, align 4
  %add = add i32 %82, %81
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %0)
  %cmp235.not = icmp eq i32 %add, %0
  br i1 %cmp235.not, label %land.rhs.for.body.i.preheader_crit_edge, label %while.body237

land.rhs.for.body.i.preheader_crit_edge:          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.preheader

while.body237:                                    ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748000) #15
  %.b445 = load i1, ptr @kgdb_do_roundup, align 4
  br i1 %.b445, label %while.body237.for.body.i.preheader_crit_edge, label %while.body237.land.lhs.true230_crit_edge

while.body237.land.lhs.true230_crit_edge:         ; preds = %while.body237
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true230

while.body237.for.body.i.preheader_crit_edge:     ; preds = %while.body237
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.preheader

do.end243.critedge:                               ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #17
  %call245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #18
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end243.critedge, %while.body237.for.body.i.preheader_crit_edge, %land.rhs.for.body.i.preheader_crit_edge, %if.end227.for.body.i.preheader_crit_edge, %land.lhs.true223.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.019.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.019.i
  %state.i = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.019.i, i32 3
  %84 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %85)
  %cmp1.not.i = icmp eq i32 %85, 3
  br i1 %cmp1.not.i, label %if.end.i492, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i492:                                      ; preds = %for.body.i
  %call.i490 = tail call i32 @kgdb_arch_remove_breakpoint(ptr noundef %arrayidx.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i490)
  %tobool.not.i491 = icmp eq i32 %call.i490, 0
  br i1 %tobool.not.i491, label %if.end.i492.if.end6.i_crit_edge, label %do.end.i493

if.end.i492.if.end6.i_crit_edge:                  ; preds = %if.end.i492
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

do.end.i493:                                      ; preds = %if.end.i492
  call void @__sanitizer_cov_trace_pc() #17
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %87) #18
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i493, %if.end.i492.if.end6.i_crit_edge
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i, align 4
  tail call void @kgdb_flush_swbreak_addr(i32 noundef %89) #15
  %90 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 2, ptr %state.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end6.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %dbg_deactivate_sw_breakpoints.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

dbg_deactivate_sw_breakpoints.exit:               ; preds = %for.inc.i
  store i32 0, ptr @kgdb_single_step, align 4
  %91 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task, align 8
  store ptr %92, ptr @kgdb_contthread, align 4
  store i32 0, ptr @exception_level, align 4
  %call250 = tail call i32 @tracing_is_on() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %dbg_deactivate_sw_breakpoints.exit.cpu_master_loop.preheader_crit_edge, label %if.then252

dbg_deactivate_sw_breakpoints.exit.cpu_master_loop.preheader_crit_edge: ; preds = %dbg_deactivate_sw_breakpoints.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_master_loop.preheader

if.then252:                                       ; preds = %dbg_deactivate_sw_breakpoints.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @tracing_off() #15
  br label %cpu_master_loop.preheader

cpu_master_loop.preheader:                        ; preds = %if.then252, %dbg_deactivate_sw_breakpoints.exit.cpu_master_loop.preheader_crit_edge, %if.then49, %if.then41, %if.then38.cpu_master_loop.preheader_crit_edge
  %trace_on.4.ph = phi i32 [ 0, %dbg_deactivate_sw_breakpoints.exit.cpu_master_loop.preheader_crit_edge ], [ %call250, %if.then252 ], [ %trace_on.0, %if.then38.cpu_master_loop.preheader_crit_edge ], [ %trace_on.0, %if.then41 ], [ %trace_on.2.ph, %if.then49 ]
  %sstep_tries.5.ph = phi i32 [ %sstep_tries.3, %dbg_deactivate_sw_breakpoints.exit.cpu_master_loop.preheader_crit_edge ], [ %sstep_tries.3, %if.then252 ], [ %sstep_tries.0, %if.then38.cpu_master_loop.preheader_crit_edge ], [ %sstep_tries.0, %if.then41 ], [ %sstep_tries.2.ph, %if.then49 ]
  br label %cpu_master_loop

cpu_master_loop:                                  ; preds = %cpu_master_loop.backedge, %cpu_master_loop.preheader
  %93 = load i32, ptr @dbg_kdb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool256.not = icmp eq i32 %93, 0
  br i1 %tobool256.not, label %if.else263, label %if.then257

if.then257:                                       ; preds = %cpu_master_loop
  store i32 1, ptr @kgdb_connected, align 4
  %call258 = tail call i32 @kdb_stub(ptr noundef %ks) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call258)
  %cmp259 = icmp eq i32 %call258, -1
  br i1 %cmp259, label %if.then257.cpu_master_loop.backedge_crit_edge, label %if.end262

if.then257.cpu_master_loop.backedge_crit_edge:    ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_master_loop.backedge

cpu_master_loop.backedge:                         ; preds = %if.then268, %if.then257.cpu_master_loop.backedge_crit_edge
  br label %cpu_master_loop

if.end262:                                        ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #17
  store i32 0, ptr @kgdb_connected, align 4
  br label %if.end265

if.else263:                                       ; preds = %cpu_master_loop
  call void @__sanitizer_cov_trace_pc() #17
  %call264 = tail call i32 @gdb_serial_stub(ptr noundef %ks) #15
  br label %if.end265

if.end265:                                        ; preds = %if.else263, %if.end262
  %error.0 = phi i32 [ %call258, %if.end262 ], [ %call264, %if.else263 ]
  %94 = zext i32 %error.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values)
  switch i32 %error.0, label %if.else279 [
    i32 -12345, label %if.then268
    i32 -123456, label %if.then275
  ]

if.then268:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #17
  %95 = load i32, ptr @dbg_kdb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool269.not = icmp eq i32 %95, 0
  %lnot.ext271 = zext i1 %tobool269.not to i32
  store i32 %lnot.ext271, ptr @dbg_kdb_mode, align 4
  br label %cpu_master_loop.backedge

if.then275:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #17
  %96 = load i32, ptr @dbg_switch_cpu, align 4
  %exception_state277 = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %96, i32 2
  %97 = ptrtoint ptr %exception_state277 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %exception_state277, align 4
  %or278 = or i32 %98, 2
  store i32 %or278, ptr %exception_state277, align 4
  br label %cpu_loop.preheader

if.else279:                                       ; preds = %if.end265
  %99 = ptrtoint ptr %ret_state to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %error.0, ptr %ret_state, align 4
  br label %for.body.i498

for.body.i498:                                    ; preds = %for.inc.i508.for.body.i498_crit_edge, %if.else279
  %i.019.i494 = phi i32 [ 0, %if.else279 ], [ %inc.i506, %for.inc.i508.for.body.i498_crit_edge ]
  %state.i496 = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.019.i494, i32 3
  %100 = ptrtoint ptr %state.i496 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %state.i496, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %101)
  %cmp1.not.i497 = icmp eq i32 %101, 2
  br i1 %cmp1.not.i497, label %if.end.i502, label %for.body.i498.for.inc.i508_crit_edge

for.body.i498.for.inc.i508_crit_edge:             ; preds = %for.body.i498
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i508

if.end.i502:                                      ; preds = %for.body.i498
  %arrayidx.i499 = getelementptr [1000 x %struct.kgdb_bkpt], ptr @kgdb_break, i32 0, i32 %i.019.i494
  %call.i500 = tail call i32 @kgdb_arch_set_breakpoint(ptr noundef %arrayidx.i499) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i500)
  %tobool.not.i501 = icmp eq i32 %call.i500, 0
  %102 = ptrtoint ptr %arrayidx.i499 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i499, align 4
  br i1 %tobool.not.i501, label %if.end6.i504, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i502
  call void @__sanitizer_cov_trace_pc() #17
  %call5.i503 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %103) #18
  br label %for.inc.i508

if.end6.i504:                                     ; preds = %if.end.i502
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kgdb_flush_swbreak_addr(i32 noundef %103) #15
  %104 = ptrtoint ptr %state.i496 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 3, ptr %state.i496, align 4
  br label %for.inc.i508

for.inc.i508:                                     ; preds = %if.end6.i504, %if.then3.i, %for.body.i498.for.inc.i508_crit_edge
  %inc.i506 = add nuw nsw i32 %i.019.i494, 1
  %exitcond.not.i507 = icmp eq i32 %inc.i506, 1000
  br i1 %exitcond.not.i507, label %dbg_activate_sw_breakpoints.exit, label %for.inc.i508.for.body.i498_crit_edge

for.inc.i508.for.body.i498_crit_edge:             ; preds = %for.inc.i508
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i498

dbg_activate_sw_breakpoints.exit:                 ; preds = %for.inc.i508
  %105 = load ptr, ptr @dbg_io_ops, align 4
  %post_exception = getelementptr inbounds %struct.kgdb_io, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %post_exception to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %post_exception, align 4
  %tobool285.not = icmp eq ptr %107, null
  br i1 %tobool285.not, label %dbg_activate_sw_breakpoints.exit.if.end288_crit_edge, label %if.then286

dbg_activate_sw_breakpoints.exit.if.end288_crit_edge: ; preds = %dbg_activate_sw_breakpoints.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end288

if.then286:                                       ; preds = %dbg_activate_sw_breakpoints.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %107() #15
  br label %if.end288

if.end288:                                        ; preds = %if.then286, %dbg_activate_sw_breakpoints.exit.if.end288_crit_edge
  %call.i.i457 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull @ignore_console_lock_warning, i32 1, i32 3, i32 1) #15
  %108 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ignore_console_lock_warning, ptr nonnull @ignore_console_lock_warning, i32 1, ptr nonnull elementtype(i32) @ignore_console_lock_warning) #15, !srcloc !242
  %109 = load i32, ptr @kgdb_single_step, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool289.not = icmp eq i32 %109, 0
  br i1 %tobool289.not, label %if.then290, label %if.end288.kgdb_restore_crit_edge

if.end288.kgdb_restore_crit_edge:                 ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #17
  br label %kgdb_restore

if.then290:                                       ; preds = %if.end288
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dbg_slave_lock) #15
  %.b555 = load i1, ptr @kgdb_do_roundup, align 4
  br i1 %.b555, label %if.then290.kgdb_restore_crit_edge, label %if.then290.land.rhs293_crit_edge

if.then290.land.rhs293_crit_edge:                 ; preds = %if.then290
  br label %land.rhs293

if.then290.kgdb_restore_crit_edge:                ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #17
  br label %kgdb_restore

land.rhs293:                                      ; preds = %do.end302.land.rhs293_crit_edge, %if.then290.land.rhs293_crit_edge
  %call.i.i458 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @slaves_in_kgdb, i32 noundef 4) #15
  %110 = load volatile i32, ptr @slaves_in_kgdb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool295.not = icmp eq i32 %110, 0
  br i1 %tobool295.not, label %land.rhs293.kgdb_restore_crit_edge, label %do.end302

land.rhs293.kgdb_restore_crit_edge:               ; preds = %land.rhs293
  call void @__sanitizer_cov_trace_pc() #17
  br label %kgdb_restore

do.end302:                                        ; preds = %land.rhs293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !249
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !250
  %.b = load i1, ptr @kgdb_do_roundup, align 4
  br i1 %.b, label %do.end302.kgdb_restore_crit_edge, label %do.end302.land.rhs293_crit_edge

do.end302.land.rhs293_crit_edge:                  ; preds = %do.end302
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs293

do.end302.kgdb_restore_crit_edge:                 ; preds = %do.end302
  call void @__sanitizer_cov_trace_pc() #17
  br label %kgdb_restore

kgdb_restore:                                     ; preds = %do.end302.kgdb_restore_crit_edge, %land.rhs293.kgdb_restore_crit_edge, %if.then290.kgdb_restore_crit_edge, %if.end288.kgdb_restore_crit_edge, %if.end206.kgdb_restore_crit_edge, %if.then203
  %trace_on.5 = phi i32 [ %trace_on.2.ph, %if.then203 ], [ %trace_on.4.ph, %if.end288.kgdb_restore_crit_edge ], [ %trace_on.4.ph, %if.then290.kgdb_restore_crit_edge ], [ %trace_on.4.ph, %do.end302.kgdb_restore_crit_edge ], [ %trace_on.4.ph, %land.rhs293.kgdb_restore_crit_edge ], [ %trace_on.2.ph, %if.end206.kgdb_restore_crit_edge ]
  %call.i.i459 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_cpu_doing_single_step, i32 noundef 4) #15
  %111 = load volatile i32, ptr @kgdb_cpu_doing_single_step, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %111)
  %cmp310.not = icmp eq i32 %111, -1
  br i1 %cmp310.not, label %kgdb_restore.if.end323_crit_edge, label %if.then312

kgdb_restore.if.end323_crit_edge:                 ; preds = %kgdb_restore
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end323

if.then312:                                       ; preds = %kgdb_restore
  %call.i.i460 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_cpu_doing_single_step, i32 noundef 4) #15
  %112 = load volatile i32, ptr @kgdb_cpu_doing_single_step, align 4
  %task315 = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %112, i32 1
  %113 = ptrtoint ptr %task315 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %task315, align 4
  %tobool316.not = icmp eq ptr %114, null
  br i1 %tobool316.not, label %if.then312.if.end322_crit_edge, label %if.then317

if.then312.if.end322_crit_edge:                   ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end322

if.then317:                                       ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #17
  %pid320 = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 68
  %115 = ptrtoint ptr %pid320 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pid320, align 8
  br label %if.end322

if.end322:                                        ; preds = %if.then317, %if.then312.if.end322_crit_edge
  %storemerge = phi i32 [ %116, %if.then317 ], [ 0, %if.then312.if.end322_crit_edge ]
  store i32 %storemerge, ptr @kgdb_sstep_pid, align 4
  br label %if.end323

if.end323:                                        ; preds = %if.end322, %kgdb_restore.if.end323_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 8) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 8), align 4
  %tobool324.not = icmp eq ptr %117, null
  br i1 %tobool324.not, label %if.end323.if.end326_crit_edge, label %if.then325

if.end323.if.end326_crit_edge:                    ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end326

if.then325:                                       ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %117() #15
  br label %if.end326

if.end326:                                        ; preds = %if.then325, %if.end323.if.end326_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trace_on.5)
  %tobool327.not = icmp eq i32 %trace_on.5, 0
  br i1 %tobool327.not, label %if.end326.if.end329_crit_edge, label %if.then328

if.end326.if.end329_crit_edge:                    ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end329

if.then328:                                       ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @tracing_on() #15
  br label %if.end329

if.end329:                                        ; preds = %if.then328, %if.end326.if.end329_crit_edge
  %118 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %arrayidx23, align 4
  %119 = ptrtoint ptr %task26 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %task26, align 4
  %exception_state335 = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %17, i32 2
  %120 = ptrtoint ptr %exception_state335 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %exception_state335, align 4
  %and336 = and i32 %121, -6
  store i32 %and336, ptr %exception_state335, align 4
  %enter_kgdb338 = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %17, i32 5
  %122 = ptrtoint ptr %enter_kgdb338 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %enter_kgdb338, align 4
  %dec339 = add i32 %123, -1
  store i32 %dec339, ptr %enter_kgdb338, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !251
  %call.i.i461 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @masters_in_kgdb, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull @masters_in_kgdb, i32 1, i32 3, i32 1) #15
  %124 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @masters_in_kgdb, ptr nonnull @masters_in_kgdb, i32 1, ptr nonnull elementtype(i32) @masters_in_kgdb) #15, !srcloc !242
  %call.i.i462 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kgdb_active, i32 noundef 4) #15
  store volatile i32 -1, ptr @kgdb_active, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dbg_master_lock) #15
  tail call void @touch_softlockup_watchdog_sync() #15
  tail call void @clocksource_touch_watchdog() #15
  tail call void @rcu_cpu_stall_reset() #15
  br i1 %tobool17.not, label %if.then355, label %if.end329.do.body357_crit_edge

if.end329.do.body357_crit_edge:                   ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body357

if.then355:                                       ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_on() #15
  br label %do.body357

do.body357:                                       ; preds = %if.then355, %if.end329.do.body357_crit_edge
  %125 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !243
  %and.i.i510 = and i32 %125, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i510)
  %tobool365.not = icmp eq i32 %and.i.i510, 0
  br i1 %tobool365.not, label %if.then374, label %do.body357.do.end377_crit_edge, !prof !244

do.body357.do.end377_crit_edge:                   ; preds = %do.body357
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end377

if.then374:                                       ; preds = %do.body357
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end377

do.end377:                                        ; preds = %if.then374, %do.body357.do.end377_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #15, !srcloc !245
  %call.i511 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i511, label %do.end377.rcu_read_unlock.exit522_crit_edge, label %land.lhs.true.i514

do.end377.rcu_read_unlock.exit522_crit_edge:      ; preds = %do.end377
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit522

land.lhs.true.i514:                               ; preds = %do.end377
  %call1.i512 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i512)
  %tobool.not.i513 = icmp eq i32 %call1.i512, 0
  br i1 %tobool.not.i513, label %land.lhs.true.i514.rcu_read_unlock.exit522_crit_edge, label %land.lhs.true2.i516

land.lhs.true.i514.rcu_read_unlock.exit522_crit_edge: ; preds = %land.lhs.true.i514
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit522

land.lhs.true2.i516:                              ; preds = %land.lhs.true.i514
  %.b4.i515 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i515, label %land.lhs.true2.i516.rcu_read_unlock.exit522_crit_edge, label %if.then.i517

land.lhs.true2.i516.rcu_read_unlock.exit522_crit_edge: ; preds = %land.lhs.true2.i516
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit522

if.then.i517:                                     ; preds = %land.lhs.true2.i516
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 724, ptr noundef nonnull @.str.35) #15
  br label %rcu_read_unlock.exit522

rcu_read_unlock.exit522:                          ; preds = %if.then.i517, %land.lhs.true2.i516.rcu_read_unlock.exit522_crit_edge, %land.lhs.true.i514.rcu_read_unlock.exit522_crit_edge, %do.end377.rcu_read_unlock.exit522_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !246
  %126 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i.i518 = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i.i.i518 to ptr
  %preempt_count.i.i.i.i519 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %preempt_count.i.i.i.i519 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %preempt_count.i.i.i.i519, align 4
  %sub.i.i.i520 = add i32 %129, -1
  store volatile i32 %sub.i.i.i520, ptr %preempt_count.i.i.i.i519, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %130 = ptrtoint ptr %ret_state to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ret_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit522, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %131, %rcu_read_unlock.exit522 ], [ 0, %rcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kgdb_handle_exception(i32 noundef %evector, i32 noundef %signo, i32 noundef %ecode, ptr noundef %regs) #1 align 64 {
entry:
  %kgdb_var = alloca %struct.kgdb_state, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %kgdb_var) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 9), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %0(i1 noundef zeroext false) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %signo)
  %cmp.not = icmp eq i32 %signo, 5
  br i1 %cmp.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @panic_timeout to i32))
  %1 = load i32, ptr @panic_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end3_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %2 = getelementptr inbounds i8, ptr %kgdb_var, i32 16
  %3 = call ptr @memset(ptr %2, i32 0, i32 24)
  %4 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %cpu4 = getelementptr inbounds %struct.kgdb_state, ptr %kgdb_var, i32 0, i32 3
  %8 = ptrtoint ptr %cpu4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cpu4, align 4
  %9 = ptrtoint ptr %kgdb_var to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %evector, ptr %kgdb_var, align 4
  %signo5 = getelementptr inbounds %struct.kgdb_state, ptr %kgdb_var, i32 0, i32 1
  %10 = ptrtoint ptr %signo5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %signo, ptr %signo5, align 4
  %err_code = getelementptr inbounds %struct.kgdb_state, ptr %kgdb_var, i32 0, i32 2
  %11 = ptrtoint ptr %err_code to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %ecode, ptr %err_code, align 4
  %linux_regs = getelementptr inbounds %struct.kgdb_state, ptr %kgdb_var, i32 0, i32 8
  %12 = ptrtoint ptr %linux_regs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %regs, ptr %linux_regs, align 4
  %call6 = call i32 @kgdb_reenter_check(ptr noundef nonnull %kgdb_var)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end9:                                          ; preds = %if.end3
  %13 = ptrtoint ptr %cpu4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu4, align 4
  %enter_kgdb = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %14, i32 5
  %15 = ptrtoint ptr %enter_kgdb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %enter_kgdb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp11.not = icmp eq i32 %16, 0
  br i1 %cmp11.not, label %if.end13, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = call i32 @kgdb_cpu_enter(ptr noundef nonnull %kgdb_var, ptr noundef %regs, i32 noundef 1)
  br label %out

out:                                              ; preds = %if.end13, %if.end9.out_crit_edge, %if.end3.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end3.out_crit_edge ], [ 0, %if.end9.out_crit_edge ], [ %call14, %if.end13 ]
  br i1 %tobool.not, label %out.cleanup_crit_edge, label %if.then16

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then16:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  call void %0(i1 noundef zeroext true) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %out.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true.cleanup_crit_edge ], [ %ret.0, %if.then16 ], [ %ret.0, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %kgdb_var) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kgdb_nmicallin(i32 noundef %cpu, i32 noundef %trapnr, ptr noundef %regs, i32 noundef %err_code, ptr noundef %send_ready) #1 align 64 {
entry:
  %kgdb_var = alloca %struct.kgdb_state, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dbg_io_ops, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %if.end.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end.i:                                         ; preds = %entry
  %1 = load i32, ptr @kgdb_connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not.i = icmp eq i32 %1, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.kgdb_io_ready.exit_crit_edge

if.end.i.kgdb_io_ready.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kgdb_io_ready.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_setting_breakpoint, i32 noundef 4) #15
  %2 = load volatile i32, ptr @kgdb_setting_breakpoint, align 4
  br label %kgdb_io_ready.exit

kgdb_io_ready.exit:                               ; preds = %if.end3.i, %if.end.i.kgdb_io_ready.exit_crit_edge
  %tobool1.not = icmp eq ptr %send_ready, null
  br i1 %tobool1.not, label %kgdb_io_ready.exit.return_crit_edge, label %if.end

kgdb_io_ready.exit.return_crit_edge:              ; preds = %kgdb_io_ready.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %kgdb_io_ready.exit
  %enter_kgdb = getelementptr [4 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %cpu, i32 5
  %3 = ptrtoint ptr %enter_kgdb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enter_kgdb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %kgdb_var) #15
  %5 = getelementptr inbounds i8, ptr %kgdb_var, i32 16
  %6 = call ptr @memset(ptr %5, i32 0, i32 16)
  %cpu3 = getelementptr inbounds %struct.kgdb_state, ptr %kgdb_var, i32 0, i32 3
  %7 = ptrtoint ptr %cpu3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cpu, ptr %cpu3, align 4
  %8 = ptrtoint ptr %kgdb_var to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %trapnr, ptr %kgdb_var, align 4
  %signo = getelementptr inbounds %struct.kgdb_state, ptr %kgdb_var, i32 0, i32 1
  %9 = ptrtoint ptr %signo to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %signo, align 4
  %err_code4 = getelementptr inbounds %struct.kgdb_state, ptr %kgdb_var, i32 0, i32 2
  %10 = ptrtoint ptr %err_code4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %err_code, ptr %err_code4, align 4
  %linux_regs = getelementptr inbounds %struct.kgdb_state, ptr %kgdb_var, i32 0, i32 8
  %11 = ptrtoint ptr %linux_regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %regs, ptr %linux_regs, align 4
  %send_ready5 = getelementptr inbounds %struct.kgdb_state, ptr %kgdb_var, i32 0, i32 9
  %12 = ptrtoint ptr %send_ready5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %send_ready, ptr %send_ready5, align 4
  %call6 = call i32 @kgdb_cpu_enter(ptr noundef nonnull %kgdb_var, ptr noundef %regs, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %kgdb_var) #15
  br label %return

return:                                           ; preds = %if.then2, %if.end.return_crit_edge, %kgdb_io_ready.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %kgdb_io_ready.exit.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @opt_kgdb_con(ptr nocapture noundef readnone %str) #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1, ptr @kgdb_use_con, align 4
  %0 = load i32, ptr @kgdb_io_module_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %.b = load i1, ptr @kgdb_con_registered, align 4
  br i1 %.b, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @register_console(ptr noundef nonnull @kgdbcons) #15
  store i1 true, ptr @kgdb_con_registered, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kgdb_panic(ptr noundef %msg) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @kgdb_io_module_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @panic_timeout to i32))
  %1 = load i32, ptr @panic_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr @dbg_kdb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.10, ptr noundef %msg) #15
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  tail call void @kgdb_breakpoint()
  br label %return

return:                                           ; preds = %if.end6, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kgdb_breakpoint() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kgdb_setting_breakpoint, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull @kgdb_setting_breakpoint, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @kgdb_setting_breakpoint, ptr nonnull @kgdb_setting_breakpoint, i32 1, ptr nonnull elementtype(i32) @kgdb_setting_breakpoint) #15, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !252
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect ".long ( (((0xe7ffdeff) << 24) & 0xFF000000) | (((0xe7ffdeff) << 8) & 0x00FF0000) | (((0xe7ffdeff) >> 8) & 0x0000FF00) | (((0xe7ffdeff) >> 24) & 0x000000FF) )\0A\09", ""() #15, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !254
  tail call void @arm_heavy_mb() #15
  %call.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kgdb_setting_breakpoint, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull @kgdb_setting_breakpoint, i32 1, i32 3, i32 1) #15
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @kgdb_setting_breakpoint, ptr nonnull @kgdb_setting_breakpoint, i32 1, ptr nonnull elementtype(i32) @kgdb_setting_breakpoint) #15, !srcloc !242
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @kgdb_arch_late() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dbg_late_init() local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 0, ptr @dbg_is_early, align 1
  %0 = load i32, ptr @kgdb_io_module_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kgdb_arch_late()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kdb_init(i32 noundef 2) #15
  %1 = load i32, ptr @kgdb_io_module_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %.b = load i1, ptr @kgdb_break_asap, align 4
  br i1 %.b, label %if.then3, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  store i1 false, ptr @kgdb_break_asap, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #18
  tail call void @kgdb_breakpoint() #15
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kdb_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kgdb_register_io_module(ptr noundef %new_dbg_io_ops) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @kgdb_registration_lock) #15
  %0 = load ptr, ptr @dbg_io_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then:                                          ; preds = %entry
  %deinit = getelementptr inbounds %struct.kgdb_io, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %deinit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %deinit, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.then2, label %do.end6

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef nonnull @kgdb_registration_lock) #15
  %3 = ptrtoint ptr %new_dbg_io_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %new_dbg_io_ops, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %4, ptr noundef %6) #18
  br label %cleanup

do.end6:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %9 = ptrtoint ptr %new_dbg_io_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %new_dbg_io_ops, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %8, ptr noundef %10) #18
  br label %if.end11

if.end11:                                         ; preds = %do.end6, %entry.if.end11_crit_edge
  %init = getelementptr inbounds %struct.kgdb_io, ptr %new_dbg_io_ops, i32 0, i32 4
  %11 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %if.end11.if.end19_crit_edge, label %if.then13

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then13:                                        ; preds = %if.end11
  %call15 = tail call i32 %12() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then13.if.end19_crit_edge, label %if.then17

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef nonnull @kgdb_registration_lock) #15
  br label %cleanup

if.end19:                                         ; preds = %if.then13.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  store ptr %new_dbg_io_ops, ptr @dbg_io_ops, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @kgdb_registration_lock) #15
  br i1 %tobool.not, label %do.end26, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %deinit22 = getelementptr inbounds %struct.kgdb_io, ptr %0, i32 0, i32 5
  %13 = ptrtoint ptr %deinit22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %deinit22, align 4
  tail call void %14() #15
  br label %cleanup

do.end26:                                         ; preds = %if.end19
  %15 = ptrtoint ptr %new_dbg_io_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %new_dbg_io_ops, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %16) #18
  %17 = load i32, ptr @kgdb_io_module_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end26.kgdb_register_callbacks.exit_crit_edge

do.end26.kgdb_register_callbacks.exit_crit_edge:  ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %kgdb_register_callbacks.exit

if.then.i:                                        ; preds = %do.end26
  store i32 1, ptr @kgdb_io_module_registered, align 4
  %call.i = tail call i32 @kgdb_arch_init() #15
  %18 = load i8, ptr @dbg_is_early, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i = icmp eq i8 %18, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kgdb_arch_late() #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %call3.i = tail call i32 @register_module_notifier(ptr noundef nonnull @dbg_module_load_nb) #15
  %call4.i = tail call i32 @register_reboot_notifier(ptr noundef nonnull @dbg_reboot_notifier) #15
  %call5.i = tail call i32 @register_sysrq_key(i32 noundef 103, ptr noundef nonnull @sysrq_dbg_op) #15
  %19 = load i32, ptr @kgdb_use_con, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool6.not.i = icmp eq i32 %19, 0
  br i1 %tobool6.not.i, label %if.end.i.kgdb_register_callbacks.exit_crit_edge, label %land.lhs.true.i

if.end.i.kgdb_register_callbacks.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kgdb_register_callbacks.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %.b.i = load i1, ptr @kgdb_con_registered, align 4
  br i1 %.b.i, label %land.lhs.true.i.kgdb_register_callbacks.exit_crit_edge, label %if.then8.i

land.lhs.true.i.kgdb_register_callbacks.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kgdb_register_callbacks.exit

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @register_console(ptr noundef nonnull @kgdbcons) #15
  store i1 true, ptr @kgdb_con_registered, align 4
  br label %kgdb_register_callbacks.exit

kgdb_register_callbacks.exit:                     ; preds = %if.then8.i, %land.lhs.true.i.kgdb_register_callbacks.exit_crit_edge, %if.end.i.kgdb_register_callbacks.exit_crit_edge, %do.end26.kgdb_register_callbacks.exit_crit_edge
  %.b = load i1, ptr @kgdb_break_asap, align 4
  br i1 %.b, label %land.lhs.true, label %kgdb_register_callbacks.exit.cleanup_crit_edge

kgdb_register_callbacks.exit.cleanup_crit_edge:   ; preds = %kgdb_register_callbacks.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %kgdb_register_callbacks.exit
  %20 = load i8, ptr @dbg_is_early, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool31.not = icmp eq i8 %20, 0
  br i1 %tobool31.not, label %if.then32, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  store i1 false, ptr @kgdb_break_asap, align 4
  %call.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #18
  tail call void @kgdb_breakpoint() #15
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %land.lhs.true.cleanup_crit_edge, %kgdb_register_callbacks.exit.cleanup_crit_edge, %if.then21, %if.then17, %if.then2
  %retval.0 = phi i32 [ %call15, %if.then17 ], [ 0, %if.then21 ], [ -16, %if.then2 ], [ 0, %if.then32 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %kgdb_register_callbacks.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kgdb_unregister_io_module(ptr nocapture noundef readonly %old_dbg_io_ops) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @kgdb_connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !233

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/debug/debug_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1159, 0\0A.popsection", ""() #15, !srcloc !255
  unreachable

do.end6:                                          ; preds = %entry
  %1 = load i32, ptr @kgdb_io_module_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.end6.kgdb_unregister_callbacks.exit_crit_edge, label %if.then.i

do.end6.kgdb_unregister_callbacks.exit_crit_edge: ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %kgdb_unregister_callbacks.exit

if.then.i:                                        ; preds = %do.end6
  store i32 0, ptr @kgdb_io_module_registered, align 4
  %call.i = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @dbg_reboot_notifier) #15
  %call1.i = tail call i32 @unregister_module_notifier(ptr noundef nonnull @dbg_module_load_nb) #15
  tail call void @kgdb_arch_exit() #15
  %call2.i = tail call i32 @unregister_sysrq_key(i32 noundef 103, ptr noundef nonnull @sysrq_dbg_op) #15
  %.b.i = load i1, ptr @kgdb_con_registered, align 4
  br i1 %.b.i, label %if.then4.i, label %if.then.i.kgdb_unregister_callbacks.exit_crit_edge

if.then.i.kgdb_unregister_callbacks.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kgdb_unregister_callbacks.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %call5.i = tail call i32 @unregister_console(ptr noundef nonnull @kgdbcons) #15
  store i1 false, ptr @kgdb_con_registered, align 4
  br label %kgdb_unregister_callbacks.exit

kgdb_unregister_callbacks.exit:                   ; preds = %if.then4.i, %if.then.i.kgdb_unregister_callbacks.exit_crit_edge, %do.end6.kgdb_unregister_callbacks.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @kgdb_registration_lock) #15
  %2 = load ptr, ptr @dbg_io_ops, align 4
  %cmp.not = icmp eq ptr %2, %old_dbg_io_ops
  br i1 %cmp.not, label %kgdb_unregister_callbacks.exit.if.end45_crit_edge, label %land.rhs

kgdb_unregister_callbacks.exit.if.end45_crit_edge: ; preds = %kgdb_unregister_callbacks.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

land.rhs:                                         ; preds = %kgdb_unregister_callbacks.exit
  %.b66 = load i1, ptr @kgdb_unregister_io_module.__already_done, align 1
  br i1 %.b66, label %land.rhs.if.end45_crit_edge, label %if.then21, !prof !233

land.rhs.if.end45_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

if.then21:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @kgdb_unregister_io_module.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1169, i32 noundef 9, ptr noundef null) #15
  br label %if.end45

if.end45:                                         ; preds = %if.then21, %land.rhs.if.end45_crit_edge, %kgdb_unregister_callbacks.exit.if.end45_crit_edge
  store ptr null, ptr @dbg_io_ops, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @kgdb_registration_lock) #15
  %deinit = getelementptr inbounds %struct.kgdb_io, ptr %old_dbg_io_ops, i32 0, i32 5
  %3 = ptrtoint ptr %deinit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %deinit, align 4
  %tobool53.not = icmp eq ptr %4, null
  br i1 %tobool53.not, label %if.end45.do.end59_crit_edge, label %if.then54

if.end45.do.end59_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end59

if.then54:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %4() #15
  br label %do.end59

do.end59:                                         ; preds = %if.then54, %if.end45.do.end59_crit_edge
  %5 = ptrtoint ptr %old_dbg_io_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %old_dbg_io_ops, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %6) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_io_get_char() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dbg_io_ops, align 4
  %read_char = getelementptr inbounds %struct.kgdb_io, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %read_char to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_char, align 4
  %call = tail call i32 %2() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 16711680, i32 %call)
  %cmp = icmp eq i32 %call, 16711680
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr @dbg_kdb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call)
  %cmp3 = icmp eq i32 %call, 127
  %.call = select i1 %cmp3, i32 8, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %.call, %if.end2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @opt_kgdb_wait(ptr nocapture noundef readnone %str) #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @kgdb_break_asap, align 4
  tail call void @kdb_init(i32 noundef 1) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @within_kprobe_blacklist(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog_sync() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocksource_touch_watchdog() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_cpu_stall_reset() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_is_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_stub(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gdb_serial_stub(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdb_console_write(ptr nocapture noundef readnone %co, ptr noundef %s, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @kgdb_connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #15
  %1 = load volatile i32, ptr @kgdb_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %lor.lhs.false1, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr @dbg_kdb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %do.body3, label %lor.lhs.false1.cleanup_crit_edge

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body3:                                         ; preds = %lor.lhs.false1
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !236
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not = icmp eq i32 %and.i, 0
  br i1 %tobool13.not, label %if.then27, label %do.end17

do.end17:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @gdbstub_msg_write(ptr noundef %s, i32 noundef %count) #15
  br label %do.body29

if.then27:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  tail call void @gdbstub_msg_write(ptr noundef %s, i32 noundef %count) #15
  tail call void @trace_hardirqs_on() #15
  br label %do.body29

do.body29:                                        ; preds = %if.then27, %do.end17
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !243
  %and.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool37.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool37.not, label %if.then41, label %do.body29.do.end44_crit_edge, !prof !244

do.body29.do.end44_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end44

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body29.do.end44_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #15, !srcloc !245
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gdbstub_msg_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_module_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_sysrq_key(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @module_event(ptr nocapture noundef readnone %self, i32 noundef %val, ptr nocapture noundef readnone %data) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbg_notify_reboot(ptr nocapture noundef readnone %this, i32 noundef %code, ptr nocapture noundef readnone %x) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @kgdbreboot, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 -1, label %entry.done_crit_edge
  ]

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kgdb_breakpoint()
  br label %done

sw.epilog:                                        ; preds = %entry
  %2 = load i32, ptr @dbg_kdb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %sw.epilog.done_crit_edge

sw.epilog.done_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @gdbstub_exit(i32 noundef %code) #15
  br label %done

done:                                             ; preds = %if.then, %sw.epilog.done_crit_edge, %sw.bb, %entry.done_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gdbstub_exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_dbg(i32 noundef %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dbg_io_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #18
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @kgdb_connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr @dbg_kdb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not = icmp eq i32 %2, 0
  br i1 %tobool3.not, label %do.end6, label %if.then2.if.end10_crit_edge

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

do.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #18
  br label %if.end10

if.end10:                                         ; preds = %do.end6, %if.then2.if.end10_crit_edge, %if.end.if.end10_crit_edge
  tail call void @kgdb_breakpoint()
  br label %return

return:                                           ; preds = %if.end10, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_module_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_arch_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_sysrq_key(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_console(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !51, !52, !53, !54, !56, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !98, !100, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !134, !135, !136, !137, !139, !141, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !157, !159, !160, !161, !163, !165, !166, !167, !168, !170, !172, !174, !175, !176, !178, !179, !181, !182, !184, !186, !187, !188, !190, !192, !194, !195, !196, !197, !199, !200, !202, !204, !206, !208, !210, !212, !213, !214, !215, !217, !218, !219}
!llvm.named.register.sp = !{!220}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = !{ptr @__ksymtab_kgdb_connected, !1, !"__ksymtab_kgdb_connected", i1 false, i1 false}
!1 = !{!"../kernel/debug/debug_core.c", i32 69, i32 1}
!2 = !{ptr @dbg_is_early, !3, !"dbg_is_early", i1 false, i1 false}
!3 = !{!"../kernel/debug/debug_core.c", i32 87, i32 6}
!4 = !{ptr @dbg_kdb_mode, !5, !"dbg_kdb_mode", i1 false, i1 false}
!5 = !{!"../kernel/debug/debug_core.c", i32 92, i32 5}
!6 = !{ptr @__param_kgdb_use_con, !7, !"__param_kgdb_use_con", i1 false, i1 false}
!7 = !{!"../kernel/debug/debug_core.c", i32 94, i32 1}
!8 = !{ptr @__UNIQUE_ID_kgdb_use_contype245, !7, !"__UNIQUE_ID_kgdb_use_contype245", i1 false, i1 false}
!9 = !{ptr @__param_kgdbreboot, !10, !"__param_kgdbreboot", i1 false, i1 false}
!10 = !{!"../kernel/debug/debug_core.c", i32 95, i32 1}
!11 = !{ptr @__UNIQUE_ID_kgdbreboottype246, !10, !"__UNIQUE_ID_kgdbreboottype246", i1 false, i1 false}
!12 = !{ptr @kgdb_active, !13, !"kgdb_active", i1 false, i1 false}
!13 = !{!"../kernel/debug/debug_core.c", i32 108, i32 12}
!14 = !{ptr @__ksymtab_kgdb_active, !15, !"__ksymtab_kgdb_active", i1 false, i1 false}
!15 = !{!"../kernel/debug/debug_core.c", i32 109, i32 1}
!16 = !{ptr @kgdb_cpu_doing_single_step, !17, !"kgdb_cpu_doing_single_step", i1 false, i1 false}
!17 = !{!"../kernel/debug/debug_core.c", i32 128, i32 12}
!18 = !{ptr @__setup_opt_nokgdbroundup, !19, !"__setup_opt_nokgdbroundup", i1 false, i1 false}
!19 = !{!"../kernel/debug/debug_core.c", i32 146, i32 1}
!20 = !{ptr @_kbl_addr_kgdb_arch_set_breakpoint, !21, !"_kbl_addr_kgdb_arch_set_breakpoint", i1 false, i1 false}
!21 = !{!"../kernel/debug/debug_core.c", i32 168, i32 1}
!22 = !{ptr @_kbl_addr_kgdb_arch_remove_breakpoint, !23, !"_kbl_addr_kgdb_arch_remove_breakpoint", i1 false, i1 false}
!23 = !{!"../kernel/debug/debug_core.c", i32 175, i32 1}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/debug/debug_core.c", i32 196, i32 3}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @kgdb_validate_break_address._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @kgdb_validate_break_address._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @_kbl_addr_kgdb_arch_pc, !31, !"_kbl_addr_kgdb_arch_pc", i1 false, i1 false}
!31 = !{!"../kernel/debug/debug_core.c", i32 205, i32 1}
!32 = !{ptr @_kbl_addr_kgdb_skipexception, !33, !"_kbl_addr_kgdb_skipexception", i1 false, i1 false}
!33 = !{!"../kernel/debug/debug_core.c", i32 216, i32 1}
!34 = !{ptr @_kbl_addr_kgdb_call_nmi_hook, !35, !"_kbl_addr_kgdb_call_nmi_hook", i1 false, i1 false}
!35 = !{!"../kernel/debug/debug_core.c", i32 236, i32 1}
!36 = !{ptr @kgdb_roundup_csd, !37, !"kgdb_roundup_csd", i1 false, i1 false}
!37 = !{!"../kernel/debug/debug_core.c", i32 238, i32 8}
!38 = !{ptr @_kbl_addr_kgdb_roundup_cpus, !39, !"_kbl_addr_kgdb_roundup_cpus", i1 false, i1 false}
!39 = !{!"../kernel/debug/debug_core.c", i32 272, i32 1}
!40 = !{ptr @_kbl_addr_kgdb_flush_swbreak_addr, !41, !"_kbl_addr_kgdb_flush_swbreak_addr", i1 false, i1 false}
!41 = !{!"../kernel/debug/debug_core.c", i32 299, i32 1}
!42 = !{ptr @.str.3, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/debug/debug_core.c", i32 317, i32 4}
!44 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @dbg_activate_sw_breakpoints._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @dbg_activate_sw_breakpoints._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @_kbl_addr_dbg_activate_sw_breakpoints, !48, !"_kbl_addr_dbg_activate_sw_breakpoints", i1 false, i1 false}
!48 = !{!"../kernel/debug/debug_core.c", i32 327, i32 1}
!49 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/debug/debug_core.c", i32 381, i32 4}
!51 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @dbg_deactivate_sw_breakpoints._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @dbg_deactivate_sw_breakpoints._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @_kbl_addr_dbg_deactivate_sw_breakpoints, !55, !"_kbl_addr_dbg_deactivate_sw_breakpoints", i1 false, i1 false}
!55 = !{!"../kernel/debug/debug_core.c", i32 391, i32 1}
!56 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/debug/debug_core.c", i32 442, i32 4}
!58 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @dbg_remove_all_break._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @dbg_remove_all_break._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.9, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../kernel/debug/debug_core.c", i32 475, i32 14}
!63 = !{ptr @_kbl_addr_kgdb_io_ready, !64, !"_kbl_addr_kgdb_io_ready", i1 false, i1 false}
!64 = !{!"../kernel/debug/debug_core.c", i32 524, i32 1}
!65 = !{ptr @_kbl_addr_kgdb_reenter_check, !66, !"_kbl_addr_kgdb_reenter_check", i1 false, i1 false}
!66 = !{!"../kernel/debug/debug_core.c", i32 572, i32 1}
!67 = !{ptr @_kbl_addr_dbg_touch_watchdogs, !68, !"_kbl_addr_dbg_touch_watchdogs", i1 false, i1 false}
!68 = !{!"../kernel/debug/debug_core.c", i32 580, i32 1}
!69 = !{ptr @_kbl_addr_kgdb_cpu_enter, !70, !"_kbl_addr_kgdb_cpu_enter", i1 false, i1 false}
!70 = !{!"../kernel/debug/debug_core.c", i32 814, i32 1}
!71 = !{ptr @_kbl_addr_kgdb_handle_exception, !72, !"_kbl_addr_kgdb_handle_exception", i1 false, i1 false}
!72 = !{!"../kernel/debug/debug_core.c", i32 859, i32 1}
!73 = !{ptr @_kbl_addr_kgdb_nmicallback, !74, !"_kbl_addr_kgdb_nmicallback", i1 false, i1 false}
!74 = !{!"../kernel/debug/debug_core.c", i32 894, i32 1}
!75 = !{ptr @_kbl_addr_kgdb_nmicallin, !76, !"_kbl_addr_kgdb_nmicallin", i1 false, i1 false}
!76 = !{!"../kernel/debug/debug_core.c", i32 920, i32 1}
!77 = !{ptr @__setup_opt_kgdb_con, !78, !"__setup_opt_kgdb_con", i1 false, i1 false}
!78 = !{!"../kernel/debug/debug_core.c", i32 956, i32 1}
!79 = !{ptr @.str.10, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../kernel/debug/debug_core.c", i32 998, i32 14}
!81 = !{ptr @.str.11, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../kernel/debug/debug_core.c", i32 1113, i32 4}
!83 = !{ptr @.str.12, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @kgdb_register_io_module._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @kgdb_register_io_module._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.14, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../kernel/debug/debug_core.c", i32 1117, i32 3}
!88 = !{ptr @kgdb_register_io_module._entry.13, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @kgdb_register_io_module._entry_ptr.15, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.17, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../kernel/debug/debug_core.c", i32 1138, i32 2}
!92 = !{ptr @kgdb_register_io_module._entry.16, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @kgdb_register_io_module._entry_ptr.18, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @__ksymtab_kgdb_register_io_module, !95, !"__ksymtab_kgdb_register_io_module", i1 false, i1 false}
!95 = !{!"../kernel/debug/debug_core.c", i32 1149, i32 1}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../kernel/debug/debug_core.c", i32 1169, i32 2}
!98 = !{ptr @.str.19, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../kernel/debug/debug_core.c", i32 1177, i32 2}
!100 = !{ptr @.str.20, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @kgdb_unregister_io_module._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @kgdb_unregister_io_module._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @__ksymtab_kgdb_unregister_io_module, !104, !"__ksymtab_kgdb_unregister_io_module", i1 false, i1 false}
!104 = !{!"../kernel/debug/debug_core.c", i32 1180, i32 1}
!105 = !{ptr @__ksymtab_kgdb_breakpoint, !106, !"__ksymtab_kgdb_breakpoint", i1 false, i1 false}
!106 = !{!"../kernel/debug/debug_core.c", i32 1210, i32 1}
!107 = !{ptr @__setup_opt_kgdb_wait, !108, !"__setup_opt_kgdb_wait", i1 false, i1 false}
!108 = !{!"../kernel/debug/debug_core.c", i32 1224, i32 1}
!109 = distinct !{null, !110, !"kgdb_break_asap", i1 false, i1 false}
!110 = !{!"../kernel/debug/debug_core.c", i32 63, i32 12}
!111 = !{ptr @kgdb_info, !112, !"kgdb_info", i1 false, i1 false}
!112 = !{!"../kernel/debug/debug_core.c", i32 65, i32 28}
!113 = !{ptr @kgdb_connected, !114, !"kgdb_connected", i1 false, i1 false}
!114 = !{!"../kernel/debug/debug_core.c", i32 68, i32 8}
!115 = !{ptr @kgdb_io_module_registered, !116, !"kgdb_io_module_registered", i1 false, i1 false}
!116 = !{!"../kernel/debug/debug_core.c", i32 72, i32 7}
!117 = !{ptr @dbg_io_ops, !118, !"dbg_io_ops", i1 false, i1 false}
!118 = !{!"../kernel/debug/debug_core.c", i32 77, i32 18}
!119 = !{ptr @kgdbreboot, !120, !"kgdbreboot", i1 false, i1 false}
!120 = !{!"../kernel/debug/debug_core.c", i32 81, i32 12}
!121 = !{ptr @kgdb_use_con, !122, !"kgdb_use_con", i1 false, i1 false}
!122 = !{!"../kernel/debug/debug_core.c", i32 85, i32 12}
!123 = !{ptr @dbg_switch_cpu, !124, !"dbg_switch_cpu", i1 false, i1 false}
!124 = !{!"../kernel/debug/debug_core.c", i32 89, i32 5}
!125 = !{ptr @kgdb_setting_breakpoint, !126, !"kgdb_setting_breakpoint", i1 false, i1 false}
!126 = !{!"../kernel/debug/debug_core.c", i32 119, i32 12}
!127 = !{ptr @kgdb_usethread, !128, !"kgdb_usethread", i1 false, i1 false}
!128 = !{!"../kernel/debug/debug_core.c", i32 121, i32 22}
!129 = !{ptr @kgdb_contthread, !130, !"kgdb_contthread", i1 false, i1 false}
!130 = !{!"../kernel/debug/debug_core.c", i32 122, i32 22}
!131 = !{ptr @kgdb_single_step, !132, !"kgdb_single_step", i1 false, i1 false}
!132 = !{!"../kernel/debug/debug_core.c", i32 124, i32 8}
!133 = !{ptr @__pcpu_unique_kgdb_roundup_csd, !37, !"__pcpu_unique_kgdb_roundup_csd", i1 false, i1 false}
!134 = !{ptr @__param_str_kgdb_use_con, !7, !"__param_str_kgdb_use_con", i1 false, i1 false}
!135 = !{ptr @__param_str_kgdbreboot, !10, !"__param_str_kgdbreboot", i1 false, i1 false}
!136 = !{ptr @__setup_str_opt_nokgdbroundup, !19, !"__setup_str_opt_nokgdbroundup", i1 false, i1 false}
!137 = distinct !{null, !138, !"kgdb_do_roundup", i1 false, i1 false}
!138 = !{!"../kernel/debug/debug_core.c", i32 137, i32 12}
!139 = distinct !{null, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../include/asm-generic/irq_regs.h", i32 21, i32 9}
!141 = !{ptr @kgdb_break, !142, !"kgdb_break", i1 false, i1 false}
!142 = !{!"../kernel/debug/debug_core.c", i32 101, i32 26}
!143 = !{ptr @.str.22, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../kernel/debug/debug_core.c", i32 517, i32 4}
!145 = !{ptr @.str.23, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @kgdb_io_ready._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @kgdb_io_ready._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.24, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../kernel/debug/debug_core.c", i32 548, i32 3}
!150 = !{ptr @.str.25, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @kgdb_reenter_check._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @kgdb_reenter_check._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = distinct !{null, !154, !"__already_done", i1 false, i1 false}
!154 = !{!"../kernel/debug/debug_core.c", i32 549, i32 3}
!155 = !{ptr @.str.26, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../kernel/debug/debug_core.c", i32 559, i32 9}
!157 = !{ptr @.str.28, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../kernel/debug/debug_core.c", i32 562, i32 2}
!159 = !{ptr @kgdb_reenter_check._entry.27, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @kgdb_reenter_check._entry_ptr.29, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @exception_level, !162, !"exception_level", i1 false, i1 false}
!162 = !{!"../kernel/debug/debug_core.c", i32 75, i32 14}
!163 = !{ptr @.str.30, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../kernel/debug/debug_core.c", i32 732, i32 3}
!165 = !{ptr @.str.31, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @kgdb_cpu_enter._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @kgdb_cpu_enter._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @masters_in_kgdb, !169, !"masters_in_kgdb", i1 false, i1 false}
!169 = !{!"../kernel/debug/debug_core.c", i32 117, i32 19}
!170 = !{ptr @slaves_in_kgdb, !171, !"slaves_in_kgdb", i1 false, i1 false}
!171 = !{!"../kernel/debug/debug_core.c", i32 118, i32 19}
!172 = distinct !{null, !173, !"__warned", i1 false, i1 false}
!173 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!174 = !{ptr @.str.32, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.33, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.34, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../kernel/debug/debug_core.c", i32 111, i32 8}
!178 = !{ptr @dbg_slave_lock, !177, !"dbg_slave_lock", i1 false, i1 false}
!179 = distinct !{null, !180, !"__warned", i1 false, i1 false}
!180 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!181 = !{ptr @.str.35, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @kgdb_sstep_pid, !183, !"kgdb_sstep_pid", i1 false, i1 false}
!183 = !{!"../kernel/debug/debug_core.c", i32 125, i32 16}
!184 = !{ptr @.str.36, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../kernel/debug/debug_core.c", i32 110, i32 8}
!186 = !{ptr @dbg_master_lock, !185, !"dbg_master_lock", i1 false, i1 false}
!187 = !{ptr @__setup_str_opt_kgdb_con, !78, !"__setup_str_opt_kgdb_con", i1 false, i1 false}
!188 = distinct !{null, !189, !"kgdb_con_registered", i1 false, i1 false}
!189 = !{!"../kernel/debug/debug_core.c", i32 83, i32 12}
!190 = !{ptr @kgdbcons, !191, !"kgdbcons", i1 false, i1 false}
!191 = !{!"../kernel/debug/debug_core.c", i32 937, i32 23}
!192 = !{ptr @.str.37, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../kernel/debug/debug_core.c", i32 1007, i32 2}
!194 = !{ptr @.str.38, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @kgdb_initial_breakpoint._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @kgdb_initial_breakpoint._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.39, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../kernel/debug/debug_core.c", i32 78, i32 8}
!199 = !{ptr @kgdb_registration_lock, !198, !"kgdb_registration_lock", i1 false, i1 false}
!200 = !{ptr @dbg_module_load_nb, !201, !"dbg_module_load_nb", i1 false, i1 false}
!201 = !{!"../kernel/debug/debug_core.c", i32 870, i32 30}
!202 = !{ptr @dbg_reboot_notifier, !203, !"dbg_reboot_notifier", i1 false, i1 false}
!203 = !{!"../kernel/debug/debug_core.c", i32 1048, i32 30}
!204 = !{ptr @.str.40, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../kernel/debug/debug_core.c", i32 979, i32 14}
!206 = !{ptr @.str.41, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../kernel/debug/debug_core.c", i32 980, i32 16}
!208 = !{ptr @sysrq_dbg_op, !209, !"sysrq_dbg_op", i1 false, i1 false}
!209 = !{!"../kernel/debug/debug_core.c", i32 977, i32 34}
!210 = !{ptr @.str.42, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../kernel/debug/debug_core.c", i32 962, i32 3}
!212 = !{ptr @.str.43, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @sysrq_handle_dbg._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @sysrq_handle_dbg._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.45, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../kernel/debug/debug_core.c", i32 968, i32 4}
!217 = !{ptr @sysrq_handle_dbg._entry.44, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @sysrq_handle_dbg._entry_ptr.46, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @__setup_str_opt_kgdb_wait, !108, !"__setup_str_opt_kgdb_wait", i1 false, i1 false}
!220 = !{!"sp"}
!221 = !{i32 1, !"wchar_size", i32 2}
!222 = !{i32 1, !"min_enum_size", i32 4}
!223 = !{i32 8, !"branch-target-enforcement", i32 0}
!224 = !{i32 8, !"sign-return-address", i32 0}
!225 = !{i32 8, !"sign-return-address-all", i32 0}
!226 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!227 = !{i32 7, !"uwtable", i32 1}
!228 = !{i32 7, !"frame-pointer", i32 2}
!229 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!230 = !{i8 0, i8 2}
!231 = !{i64 2154741623}
!232 = !{i64 2154741465}
!233 = !{!"branch_weights", i32 2000, i32 1}
!234 = !{i64 2148448712, i64 2148448738, i64 2148448767, i64 2148448801, i64 2148448832, i64 2148448855}
!235 = !{i64 2149276226}
!236 = !{i64 842970, i64 843031}
!237 = !{i64 2154749657}
!238 = !{i64 2148708552}
!239 = !{i64 955480, i64 955497, i64 955521, i64 955547, i64 955565}
!240 = !{i64 2148708922}
!241 = !{i64 2154750184}
!242 = !{i64 2148451177, i64 2148451203, i64 2148451232, i64 2148451266, i64 2148451297, i64 2148451320}
!243 = !{i64 845702}
!244 = !{!"branch_weights", i32 1, i32 2000}
!245 = !{i64 845987}
!246 = !{i64 2149276492}
!247 = !{i64 2154751253}
!248 = !{i64 2154751095}
!249 = !{i64 2154754757}
!250 = !{i64 2154754599}
!251 = !{i64 2154754967}
!252 = !{i64 2154782910}
!253 = !{i64 2154661177, i64 2154661204}
!254 = !{i64 2154783058}
!255 = !{i64 2154776908, i64 2154777399, i64 2154776945, i64 2154777001, i64 2154777035, i64 2154777059, i64 2154777100, i64 2154777121, i64 2154777149, i64 2154777183}
