; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/ipmi_watchdog.c_pt.bc'
source_filename = "../drivers/char/ipmi/ipmi_watchdog.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.ipmi_smi_watcher = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ipmi_user_hndl = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ipmi_smi_msg = type { %struct.list_head, i32, i32, ptr, i32, [272 x i8], i32, [272 x i8], ptr }
%struct.ipmi_recv_msg = type { %struct.list_head, i32, ptr, %struct.ipmi_addr, i32, %struct.kernel_ipmi_msg, ptr, ptr, [272 x i8] }
%struct.ipmi_addr = type { i32, i16, [32 x i8] }
%struct.kernel_ipmi_msg = type { i8, i8, i16, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.ipmi_system_interface_addr = type { i32, i16, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
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
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.67 = type { ptr }

@__param_str_ifnum_to_use = internal constant [27 x i8] c"ipmi_watchdog.ifnum_to_use\00", align 1
@param_ops_wdog_ifnum = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @set_param_wdog_ifnum, ptr @param_get_int, ptr null }, [16 x i8] zeroinitializer }, align 32
@ifnum_to_use = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_ifnum_to_use = internal constant %struct.kernel_param { ptr @__param_str_ifnum_to_use, ptr null, ptr @param_ops_wdog_ifnum, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @ifnum_to_use } }, section "__param", align 4
@__UNIQUE_ID_ifnum_to_usetype223 = internal constant [47 x i8] c"ipmi_watchdog.parmtype=ifnum_to_use:wdog_ifnum\00", section ".modinfo", align 1
@__UNIQUE_ID_ifnum_to_use224 = internal constant [142 x i8] c"ipmi_watchdog.parm=ifnum_to_use:The interface number to use for the watchdog timer.  Setting to -1 defaults to the first registered interface\00", section ".modinfo", align 1
@__param_str_timeout = internal constant [22 x i8] c"ipmi_watchdog.timeout\00", align 1
@param_ops_timeout = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @set_param_timeout, ptr @param_get_int, ptr null }, [16 x i8] zeroinitializer }, align 32
@timeout = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_timeout, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype225 = internal constant [39 x i8] c"ipmi_watchdog.parmtype=timeout:timeout\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout226 = internal constant [53 x i8] c"ipmi_watchdog.parm=timeout:Timeout value in seconds.\00", section ".modinfo", align 1
@__param_str_pretimeout = internal constant [25 x i8] c"ipmi_watchdog.pretimeout\00", align 1
@pretimeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pretimeout = internal constant %struct.kernel_param { ptr @__param_str_pretimeout, ptr null, ptr @param_ops_timeout, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @pretimeout } }, section "__param", align 4
@__UNIQUE_ID_pretimeouttype227 = internal constant [42 x i8] c"ipmi_watchdog.parmtype=pretimeout:timeout\00", section ".modinfo", align 1
@__UNIQUE_ID_pretimeout228 = internal constant [59 x i8] c"ipmi_watchdog.parm=pretimeout:Pretimeout value in seconds.\00", section ".modinfo", align 1
@__param_str_panic_wdt_timeout = internal constant [32 x i8] c"ipmi_watchdog.panic_wdt_timeout\00", align 1
@panic_wdt_timeout = internal global { i32, [28 x i8] } { i32 255, [28 x i8] zeroinitializer }, align 32
@__param_panic_wdt_timeout = internal constant %struct.kernel_param { ptr @__param_str_panic_wdt_timeout, ptr null, ptr @param_ops_timeout, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @panic_wdt_timeout } }, section "__param", align 4
@__UNIQUE_ID_panic_wdt_timeouttype229 = internal constant [49 x i8] c"ipmi_watchdog.parmtype=panic_wdt_timeout:timeout\00", section ".modinfo", align 1
@__UNIQUE_ID_panic_wdt_timeout230 = internal constant [79 x i8] c"ipmi_watchdog.parm=panic_wdt_timeout:Timeout value on kernel panic in seconds.\00", section ".modinfo", align 1
@__param_str_action = internal constant [21 x i8] c"ipmi_watchdog.action\00", align 1
@param_ops_str = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @set_param_str, ptr @get_param_str, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_action = internal constant %struct.kernel_param { ptr @__param_str_action, ptr null, ptr @param_ops_str, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @action_op } }, section "__param", align 4
@__UNIQUE_ID_action231 = internal constant [87 x i8] c"ipmi_watchdog.parm=action:Timeout action. One of: reset, none, power_cycle, power_off.\00", section ".modinfo", align 1
@__param_str_preaction = internal constant [24 x i8] c"ipmi_watchdog.preaction\00", align 1
@__param_preaction = internal constant %struct.kernel_param { ptr @__param_str_preaction, ptr null, ptr @param_ops_str, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @preaction_op } }, section "__param", align 4
@__UNIQUE_ID_preaction232 = internal constant [94 x i8] c"ipmi_watchdog.parm=preaction:Pretimeout action.  One of: pre_none, pre_smi, pre_nmi, pre_int.\00", section ".modinfo", align 1
@__param_str_preop = internal constant [20 x i8] c"ipmi_watchdog.preop\00", align 1
@__param_preop = internal constant %struct.kernel_param { ptr @__param_str_preop, ptr null, ptr @param_ops_str, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @preop_op } }, section "__param", align 4
@__UNIQUE_ID_preop233 = internal constant [105 x i8] c"ipmi_watchdog.parm=preop:Pretimeout driver operation.  One of: preop_none, preop_panic, preop_give_data.\00", section ".modinfo", align 1
@__param_str_start_now = internal constant [24 x i8] c"ipmi_watchdog.start_now\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@start_now = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_start_now = internal constant %struct.kernel_param { ptr @__param_str_start_now, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @start_now } }, section "__param", align 4
@__UNIQUE_ID_start_nowtype234 = internal constant [37 x i8] c"ipmi_watchdog.parmtype=start_now:int\00", section ".modinfo", align 1
@__UNIQUE_ID_start_now235 = internal constant [92 x i8] c"ipmi_watchdog.parm=start_now:Set to 1 to start the watchdog assoon as the driver is loaded.\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [23 x i8] c"ipmi_watchdog.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype236 = internal constant [37 x i8] c"ipmi_watchdog.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout237 = internal constant [103 x i8] c"ipmi_watchdog.parm=nowayout:Watchdog cannot be stopped once started (default=CONFIG_WATCHDOG_NOWAYOUT)\00", section ".modinfo", align 1
@smi_watcher = internal global { %struct.ipmi_smi_watcher, [44 x i8] } { %struct.ipmi_smi_watcher { %struct.list_head zeroinitializer, ptr null, ptr @ipmi_new_smi, ptr @ipmi_smi_gone }, [44 x i8] zeroinitializer }, align 32
@watchdog_ifnum = internal global { i32, [28 x i8] } zeroinitializer, align 32
@wdog_reboot_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @wdog_reboot_handler, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__exitcall_ipmi_wdog_exit = internal global ptr @ipmi_wdog_exit, section ".exitcall.exit", align 4
@__initcall__kmod_ipmi_watchdog__239_1349_ipmi_wdog_init6 = internal global ptr @ipmi_wdog_init, section ".initcall6.init", align 4
@__UNIQUE_ID_file240 = internal constant [51 x i8] c"ipmi_watchdog.file=drivers/char/ipmi/ipmi_watchdog\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [26 x i8] c"ipmi_watchdog.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [56 x i8] c"ipmi_watchdog.author=Corey Minyard <minyard@mvista.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [72 x i8] c"ipmi_watchdog.description=watchdog timer based upon the IPMI interface.\00", section ".modinfo", align 1
@watchdog_user = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ipmi_hndlrs = internal constant { %struct.ipmi_user_hndl, [16 x i8] } { %struct.ipmi_user_hndl { ptr @ipmi_wdog_msg_handler, ptr @ipmi_wdog_pretimeout_handler, ptr @ipmi_wdog_panic_handler, ptr null }, [16 x i8] zeroinitializer }, align 32
@ipmi_register_watchdog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\012IPMI Watchdog: Unable to register with ipmi\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ipmi_register_watchdog\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/char/ipmi/ipmi_watchdog.c\00", [62 x i8] zeroinitializer }, align 32
@ipmi_register_watchdog._entry_ptr = internal global ptr @ipmi_register_watchdog._entry, section ".printk_index", align 4
@ipmi_version_major = internal global { i8, [31 x i8] } zeroinitializer, align 32
@ipmi_version_minor = internal global { i8, [31 x i8] } zeroinitializer, align 32
@ipmi_register_watchdog._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014IPMI Watchdog: Unable to get IPMI version, assuming 1.0\0A\00", [37 x i8] zeroinitializer }, align 32
@ipmi_register_watchdog._entry_ptr.5 = internal global ptr @ipmi_register_watchdog._entry.3, section ".printk_index", align 4
@ipmi_wdog_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 130, ptr @.str.24, ptr @ipmi_wdog_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@ipmi_register_watchdog._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\012IPMI Watchdog: Unable to register misc device\0A\00", [47 x i8] zeroinitializer }, align 32
@ipmi_register_watchdog._entry_ptr.8 = internal global ptr @ipmi_register_watchdog._entry.6, section ".printk_index", align 4
@action_val = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@ipmi_watchdog_state = internal global { i8, [31 x i8] } zeroinitializer, align 32
@ipmi_register_watchdog._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 1066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016IPMI Watchdog: Starting now!\0A\00", [32 x i8] zeroinitializer }, align 32
@ipmi_register_watchdog._entry_ptr.11 = internal global ptr @ipmi_register_watchdog._entry.9, section ".printk_index", align 4
@ipmi_wdog_msg_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [124 x i8], [36 x i8] } { [124 x i8] c"\016IPMI Watchdog: response: The IPMI controller appears to have been reset, will attempt to reinitialize the watchdog timer\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ipmi_wdog_msg_handler\00", [42 x i8] zeroinitializer }, align 32
@ipmi_wdog_msg_handler._entry_ptr = internal global ptr @ipmi_wdog_msg_handler._entry, section ".printk_index", align 4
@ipmi_wdog_msg_handler._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013IPMI Watchdog: response: Error %x on cmd %x\0A\00", [49 x i8] zeroinitializer }, align 32
@ipmi_wdog_msg_handler._entry_ptr.16 = internal global ptr @ipmi_wdog_msg_handler._entry.14, section ".printk_index", align 4
@preaction_val = internal global { i8, [31 x i8] } zeroinitializer, align 32
@preop_val = internal global { i8, [31 x i8] } zeroinitializer, align 32
@preop_panic_excl = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 -1 }, [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Watchdog pre-timeout\00", [43 x i8] zeroinitializer }, align 32
@ipmi_read_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@data_to_read = internal global { i8, [31 x i8] } zeroinitializer, align 32
@read_q = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @read_q, i64 44), ptr getelementptr (i8, ptr @read_q, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@fasync_q = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pretimeout_since_last_heartbeat = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipmi_read_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_q.lock\00", [20 x i8] zeroinitializer }, align 32
@ipmi_wdog_panic_handler.panic_event_handled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@panic_done_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@panic_halt_smi_msg = internal global { %struct.ipmi_smi_msg, [128 x i8] } { %struct.ipmi_smi_msg { %struct.list_head zeroinitializer, i32 0, i32 0, ptr null, i32 0, [272 x i8] zeroinitializer, i32 0, [272 x i8] zeroinitializer, ptr @panic_smi_free }, [128 x i8] zeroinitializer }, align 32
@panic_halt_recv_msg = internal global { %struct.ipmi_recv_msg, [68 x i8] } { %struct.ipmi_recv_msg { %struct.list_head zeroinitializer, i32 0, ptr null, %struct.ipmi_addr zeroinitializer, i32 0, %struct.kernel_ipmi_msg zeroinitializer, ptr null, ptr @panic_recv_free, [272 x i8] zeroinitializer }, [68 x i8] zeroinitializer }, align 32
@panic_halt_ipmi_set_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014IPMI Watchdog: Unable to extend the watchdog timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"panic_halt_ipmi_set_timeout\00", [36 x i8] zeroinitializer }, align 32
@panic_halt_ipmi_set_timeout._entry_ptr = internal global ptr @panic_halt_ipmi_set_timeout._entry, section ".printk_index", align 4
@__ipmi_set_timeout._entry = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 421, ptr null, ptr null }, align 1
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014IPMI Watchdog: set timeout error: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__ipmi_set_timeout\00", [45 x i8] zeroinitializer }, align 32
@__ipmi_set_timeout._entry_ptr = internal global ptr @__ipmi_set_timeout._entry, section ".printk_index", align 4
@panic_halt_heartbeat_smi_msg = internal global { %struct.ipmi_smi_msg, [128 x i8] } { %struct.ipmi_smi_msg { %struct.list_head zeroinitializer, i32 0, i32 0, ptr null, i32 0, [272 x i8] zeroinitializer, i32 0, [272 x i8] zeroinitializer, ptr @panic_smi_free }, [128 x i8] zeroinitializer }, align 32
@panic_halt_heartbeat_recv_msg = internal global { %struct.ipmi_recv_msg, [68 x i8] } { %struct.ipmi_recv_msg { %struct.list_head zeroinitializer, i32 0, ptr null, %struct.ipmi_addr zeroinitializer, i32 0, %struct.kernel_ipmi_msg zeroinitializer, ptr null, ptr @panic_recv_free, [272 x i8] zeroinitializer }, [68 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@ipmi_wdog_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @ipmi_read, ptr @ipmi_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipmi_poll, ptr @ipmi_unlocked_ioctl, ptr null, ptr null, i32 0, ptr @ipmi_open, ptr null, ptr @ipmi_close, ptr null, ptr @ipmi_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@expect_close = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ipmi_watchdog_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ipmi_watchdog_mutex, i64 52), ptr getelementptr (i8, ptr @ipmi_watchdog_mutex, i64 52) }, ptr @ipmi_watchdog_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ipmi_watchdog_mutex.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ipmi_watchdog_mutex\00", [44 x i8] zeroinitializer }, align 32
@ipmi_start_timer_on_heartbeat = internal global { i1, [31 x i8] } zeroinitializer, align 32
@msg_tofree = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@smi_msg = internal global { %struct.ipmi_smi_msg, [128 x i8] } { %struct.ipmi_smi_msg { %struct.list_head zeroinitializer, i32 0, i32 0, ptr null, i32 0, [272 x i8] zeroinitializer, i32 0, [272 x i8] zeroinitializer, ptr @msg_free_smi }, [128 x i8] zeroinitializer }, align 32
@recv_msg = internal global { %struct.ipmi_recv_msg, [68 x i8] } { %struct.ipmi_recv_msg { %struct.list_head zeroinitializer, i32 0, ptr null, %struct.ipmi_addr zeroinitializer, i32 0, %struct.kernel_ipmi_msg zeroinitializer, ptr null, ptr @msg_free_recv, [272 x i8] zeroinitializer }, [68 x i8] zeroinitializer }, align 32
@msg_wait = internal global { %struct.completion, [40 x i8] } { %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @msg_wait, i64 48), ptr getelementptr (i8, ptr @msg_wait, i64 48) } } }, [40 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(msg_wait).wait.lock\00", [43 x i8] zeroinitializer }, align 32
@__ipmi_heartbeat._entry = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 590, ptr null, ptr null }, align 1
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014IPMI Watchdog: heartbeat send failure: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__ipmi_heartbeat\00", [47 x i8] zeroinitializer }, align 32
@__ipmi_heartbeat._entry_ptr = internal global ptr @__ipmi_heartbeat._entry, section ".printk_index", align 4
@__ipmi_heartbeat._entry.33 = internal constant %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 600, ptr null, ptr null }, align 1
@.str.34 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013IPMI Watchdog: Unable to restore the IPMI watchdog's settings, giving up\0A\00", [52 x i8] zeroinitializer }, align 32
@__ipmi_heartbeat._entry_ptr.35 = internal global ptr @__ipmi_heartbeat._entry.33, section ".printk_index", align 4
@__ipmi_heartbeat._entry.36 = internal constant %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 615, ptr null, ptr null }, align 1
@.str.37 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013IPMI Watchdog: Unable to send the command to set the watchdog's settings, giving up\0A\00", [41 x i8] zeroinitializer }, align 32
@__ipmi_heartbeat._entry_ptr.38 = internal global ptr @__ipmi_heartbeat._entry.36, section ".printk_index", align 4
@ident = internal global { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 0, i32 1, [32 x i8] c"IPMI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@ipmi_wdog_open = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ipmi_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\012IPMI Watchdog: Unexpected close, not stopping watchdog!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ipmi_close\00", [21 x i8] zeroinitializer }, align 32
@ipmi_close._entry_ptr = internal global ptr @ipmi_close._entry, section ".printk_index", align 4
@action = internal global { [16 x i8], [16 x i8] } { [16 x i8] c"reset\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power_cycle\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"power_off\00", [22 x i8] zeroinitializer }, align 32
@preaction = internal global { [16 x i8], [16 x i8] } { [16 x i8] c"pre_none\00\00\00\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pre_none\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pre_smi\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pre_int\00", [24 x i8] zeroinitializer }, align 32
@preop = internal global { [16 x i8], [16 x i8] } { [16 x i8] c"preop_none\00\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"preop_none\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"preop_panic\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"preop_give_data\00", [16 x i8] zeroinitializer }, align 32
@ipmi_unregister_watchdog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 1103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014IPMI Watchdog: error unlinking from IPMI: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ipmi_unregister_watchdog\00", [39 x i8] zeroinitializer }, align 32
@ipmi_unregister_watchdog._entry_ptr = internal global ptr @ipmi_unregister_watchdog._entry, section ".printk_index", align 4
@wdog_reboot_handler.reboot_event_handled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ipmi_wdog_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 1302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016IPMI Watchdog: Unknown action '%s', defaulting to reset\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipmi_wdog_init\00", [17 x i8] zeroinitializer }, align 32
@ipmi_wdog_init._entry_ptr = internal global ptr @ipmi_wdog_init._entry, section ".printk_index", align 4
@ipmi_wdog_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016IPMI Watchdog: Unknown preaction '%s', defaulting to none\0A\00", [35 x i8] zeroinitializer }, align 32
@ipmi_wdog_init._entry_ptr.57 = internal global ptr @ipmi_wdog_init._entry.55, section ".printk_index", align 4
@ipmi_wdog_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.2, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016IPMI Watchdog: Unknown preop '%s', defaulting to none\0A\00", [39 x i8] zeroinitializer }, align 32
@ipmi_wdog_init._entry_ptr.60 = internal global ptr @ipmi_wdog_init._entry.58, section ".printk_index", align 4
@ipmi_wdog_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.2, i32 1327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014IPMI Watchdog: can't register smi watcher\0A\00", [51 x i8] zeroinitializer }, align 32
@ipmi_wdog_init._entry_ptr.63 = internal global ptr @ipmi_wdog_init._entry.61, section ".printk_index", align 4
@ipmi_wdog_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.54, ptr @.str.2, i32 1331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016IPMI Watchdog: driver initialized\0A\00", [59 x i8] zeroinitializer }, align 32
@ipmi_wdog_init._entry_ptr.66 = internal global ptr @ipmi_wdog_init._entry.64, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.67 = internal global [10 x i64] [i64 8, i64 32, i64 2147768065, i64 2147768068, i64 2147768069, i64 2147768071, i64 2147768073, i64 2150127360, i64 3221509894, i64 3221509896]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"param_ops_wdog_ifnum\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 262, i32 38 }
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"ifnum_to_use\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 159, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"param_ops_timeout\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 195, i32 38 }
@___asan_gen_.78 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 132, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [11 x i8] c"pretimeout\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 135, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"panic_wdt_timeout\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 138, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"param_ops_str\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 269, i32 38 }
@___asan_gen_.90 = private unnamed_addr constant [10 x i8] c"start_now\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 174, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 126, i32 13 }
@___asan_gen_.96 = private unnamed_addr constant [12 x i8] c"smi_watcher\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1195, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant [15 x i8] c"watchdog_ifnum\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 129, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant [21 x i8] c"wdog_reboot_notifier\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1179, i32 30 }
@___asan_gen_.105 = private unnamed_addr constant [14 x i8] c"watchdog_user\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 128, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant [12 x i8] c"ipmi_hndlrs\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 982, i32 36 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1002, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c"ipmi_version_major\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 323, i32 22 }
@___asan_gen_.126 = private unnamed_addr constant [19 x i8] c"ipmi_version_minor\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 324, i32 22 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1010, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [18 x i8] c"ipmi_wdog_miscdev\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 917, i32 26 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1019, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [11 x i8] c"action_val\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 141, i32 22 }
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c"ipmi_watchdog_state\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 309, i32 22 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1066, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 928, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 930, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [14 x i8] c"preaction_val\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 145, i32 22 }
@___asan_gen_.174 = private unnamed_addr constant [10 x i8] c"preop_val\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 149, i32 22 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"preop_panic_excl\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 327, i32 17 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 942, i32 11 }
@___asan_gen_.183 = private unnamed_addr constant [15 x i8] c"ipmi_read_lock\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [13 x i8] c"data_to_read\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 153, i32 13 }
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"read_q\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [9 x i8] c"fasync_q\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 155, i32 30 }
@___asan_gen_.195 = private unnamed_addr constant [32 x i8] c"pretimeout_since_last_heartbeat\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 156, i32 17 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 152, i32 8 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 154, i32 8 }
@___asan_gen_.204 = private unnamed_addr constant [44 x i8] c"ipmi_wdog_panic_handler.panic_event_handled\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"panic_done_count\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 467, i32 17 }
@___asan_gen_.208 = private unnamed_addr constant [19 x i8] c"panic_halt_smi_msg\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 519, i32 28 }
@___asan_gen_.211 = private unnamed_addr constant [20 x i8] c"panic_halt_recv_msg\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 522, i32 29 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 546, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 421, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [29 x i8] c"panic_halt_heartbeat_smi_msg\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 478, i32 28 }
@___asan_gen_.232 = private unnamed_addr constant [30 x i8] c"panic_halt_heartbeat_recv_msg\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 481, i32 29 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 919, i32 11 }
@___asan_gen_.238 = private unnamed_addr constant [15 x i8] c"ipmi_wdog_fops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 904, i32 37 }
@___asan_gen_.242 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 174, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [13 x i8] c"expect_close\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [20 x i8] c"ipmi_watchdog_mutex\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 125, i32 8 }
@___asan_gen_.254 = private unnamed_addr constant [30 x i8] c"ipmi_start_timer_on_heartbeat\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [11 x i8] c"msg_tofree\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 341, i32 17 }
@___asan_gen_.258 = private unnamed_addr constant [8 x i8] c"smi_msg\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 357, i32 28 }
@___asan_gen_.261 = private unnamed_addr constant [9 x i8] c"recv_msg\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 360, i32 29 }
@___asan_gen_.264 = private unnamed_addr constant [9 x i8] c"msg_wait\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 342, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 590, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 600, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 615, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 671, i32 29 }
@___asan_gen_.285 = private unnamed_addr constant [15 x i8] c"ipmi_wdog_open\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 312, i32 22 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 893, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 143, i32 13 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1209, i32 20 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1211, i32 25 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1213, i32 25 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1215, i32 25 }
@___asan_gen_.312 = private unnamed_addr constant [10 x i8] c"preaction\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 147, i32 13 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1231, i32 20 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1233, i32 25 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1239, i32 25 }
@___asan_gen_.324 = private unnamed_addr constant [6 x i8] c"preop\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 151, i32 13 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1255, i32 20 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1257, i32 25 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1259, i32 25 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1103, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [41 x i8] c"wdog_reboot_handler.reboot_event_handled\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1302, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1307, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1313, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1327, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.377 = private constant [37 x i8] c"../drivers/char/ipmi/ipmi_watchdog.c\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1331, i32 2 }
@llvm.compiler.used = appending global [159 x ptr] [ptr @__UNIQUE_ID_action231, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_ifnum_to_use224, ptr @__UNIQUE_ID_ifnum_to_usetype223, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_nowayout237, ptr @__UNIQUE_ID_nowayouttype236, ptr @__UNIQUE_ID_panic_wdt_timeout230, ptr @__UNIQUE_ID_panic_wdt_timeouttype229, ptr @__UNIQUE_ID_preaction232, ptr @__UNIQUE_ID_preop233, ptr @__UNIQUE_ID_pretimeout228, ptr @__UNIQUE_ID_pretimeouttype227, ptr @__UNIQUE_ID_start_now235, ptr @__UNIQUE_ID_start_nowtype234, ptr @__UNIQUE_ID_timeout226, ptr @__UNIQUE_ID_timeouttype225, ptr @__exitcall_ipmi_wdog_exit, ptr @__initcall__kmod_ipmi_watchdog__239_1349_ipmi_wdog_init6, ptr @__ipmi_heartbeat._entry, ptr @__ipmi_heartbeat._entry.33, ptr @__ipmi_heartbeat._entry.36, ptr @__ipmi_heartbeat._entry_ptr, ptr @__ipmi_heartbeat._entry_ptr.35, ptr @__ipmi_heartbeat._entry_ptr.38, ptr @__ipmi_set_timeout._entry, ptr @__ipmi_set_timeout._entry_ptr, ptr @__param_action, ptr @__param_ifnum_to_use, ptr @__param_nowayout, ptr @__param_panic_wdt_timeout, ptr @__param_preaction, ptr @__param_preop, ptr @__param_pretimeout, ptr @__param_start_now, ptr @__param_timeout, ptr @ipmi_close._entry, ptr @ipmi_close._entry_ptr, ptr @ipmi_register_watchdog._entry, ptr @ipmi_register_watchdog._entry.3, ptr @ipmi_register_watchdog._entry.6, ptr @ipmi_register_watchdog._entry.9, ptr @ipmi_register_watchdog._entry_ptr, ptr @ipmi_register_watchdog._entry_ptr.11, ptr @ipmi_register_watchdog._entry_ptr.5, ptr @ipmi_register_watchdog._entry_ptr.8, ptr @ipmi_unregister_watchdog._entry, ptr @ipmi_unregister_watchdog._entry_ptr, ptr @ipmi_wdog_exit, ptr @ipmi_wdog_init._entry, ptr @ipmi_wdog_init._entry.55, ptr @ipmi_wdog_init._entry.58, ptr @ipmi_wdog_init._entry.61, ptr @ipmi_wdog_init._entry.64, ptr @ipmi_wdog_init._entry_ptr, ptr @ipmi_wdog_init._entry_ptr.57, ptr @ipmi_wdog_init._entry_ptr.60, ptr @ipmi_wdog_init._entry_ptr.63, ptr @ipmi_wdog_init._entry_ptr.66, ptr @ipmi_wdog_msg_handler._entry, ptr @ipmi_wdog_msg_handler._entry.14, ptr @ipmi_wdog_msg_handler._entry_ptr, ptr @ipmi_wdog_msg_handler._entry_ptr.16, ptr @panic_halt_ipmi_set_timeout._entry, ptr @panic_halt_ipmi_set_timeout._entry_ptr, ptr @param_ops_wdog_ifnum, ptr @ifnum_to_use, ptr @param_ops_timeout, ptr @timeout, ptr @pretimeout, ptr @panic_wdt_timeout, ptr @param_ops_str, ptr @start_now, ptr @nowayout, ptr @smi_watcher, ptr @watchdog_ifnum, ptr @wdog_reboot_notifier, ptr @watchdog_user, ptr @ipmi_hndlrs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ipmi_version_major, ptr @ipmi_version_minor, ptr @.str.4, ptr @ipmi_wdog_miscdev, ptr @.str.7, ptr @action_val, ptr @ipmi_watchdog_state, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @preaction_val, ptr @preop_val, ptr @preop_panic_excl, ptr @.str.17, ptr @ipmi_read_lock, ptr @data_to_read, ptr @read_q, ptr @fasync_q, ptr @pretimeout_since_last_heartbeat, ptr @.str.18, ptr @.str.19, ptr @ipmi_wdog_panic_handler.panic_event_handled, ptr @panic_done_count, ptr @panic_halt_smi_msg, ptr @panic_halt_recv_msg, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @panic_halt_heartbeat_smi_msg, ptr @panic_halt_heartbeat_recv_msg, ptr @.str.24, ptr @ipmi_wdog_fops, ptr @.str.27, ptr @expect_close, ptr @ipmi_watchdog_mutex, ptr @.str.28, ptr @.str.29, ptr @ipmi_start_timer_on_heartbeat, ptr @msg_tofree, ptr @smi_msg, ptr @recv_msg, ptr @msg_wait, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @ident, ptr @ipmi_wdog_open, ptr @.str.39, ptr @.str.40, ptr @action, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @preaction, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @preop, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @wdog_reboot_handler.reboot_event_handled, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_wdog_ifnum to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifnum_to_use to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_timeout to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pretimeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_wdt_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_now to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_watcher to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_ifnum to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdog_reboot_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_user to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_hndlrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_register_watchdog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_version_major to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_version_minor to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_register_watchdog._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_wdog_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_register_watchdog._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @action_val to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_watchdog_state to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_register_watchdog._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_wdog_msg_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_wdog_msg_handler._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preaction_val to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preop_val to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preop_panic_excl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_read_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_to_read to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_q to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fasync_q to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pretimeout_since_last_heartbeat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_wdog_panic_handler.panic_event_handled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_done_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_halt_smi_msg to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_halt_recv_msg to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_halt_ipmi_set_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_halt_heartbeat_smi_msg to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_halt_heartbeat_recv_msg to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_wdog_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expect_close to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_watchdog_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_start_timer_on_heartbeat to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_tofree to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_msg to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_msg to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_wait to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_wdog_open to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @action to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preaction to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preop to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_unregister_watchdog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdog_reboot_handler.reboot_event_handled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_wdog_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_wdog_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_wdog_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_wdog_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_wdog_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @action_op(ptr noundef readonly %inval, ptr noundef %outval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %outval, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @strcpy(ptr noundef nonnull %outval, ptr noundef nonnull @action) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %inval, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @strcmp(ptr noundef nonnull %inval, ptr noundef nonnull dereferenceable(6) @.str.41) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.end3.if.end21_crit_edge, label %if.else

if.end3.if.end21_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.else:                                          ; preds = %if.end3
  %call6 = tail call i32 @strcmp(ptr noundef nonnull %inval, ptr noundef nonnull dereferenceable(5) @.str.42) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.else.if.end21_crit_edge, label %if.else9

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.else9:                                         ; preds = %if.else
  %call10 = tail call i32 @strcmp(ptr noundef nonnull %inval, ptr noundef nonnull dereferenceable(12) @.str.43) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.else9.if.end21_crit_edge, label %if.else13

if.else9.if.end21_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.else13:                                        ; preds = %if.else9
  %call14 = tail call i32 @strcmp(ptr noundef nonnull %inval, ptr noundef nonnull dereferenceable(10) @.str.44) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.else13.if.end21_crit_edge, label %if.else13.return_crit_edge

if.else13.return_crit_edge:                       ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else13.if.end21_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end21:                                         ; preds = %if.else13.if.end21_crit_edge, %if.else9.if.end21_crit_edge, %if.else.if.end21_crit_edge, %if.end3.if.end21_crit_edge
  %.sink = phi i8 [ 1, %if.end3.if.end21_crit_edge ], [ 0, %if.else.if.end21_crit_edge ], [ 3, %if.else9.if.end21_crit_edge ], [ 2, %if.else13.if.end21_crit_edge ]
  store i8 %.sink, ptr @action_val, align 1
  %call22 = tail call ptr @strcpy(ptr noundef nonnull @action, ptr noundef nonnull %inval) #14
  br label %return

return:                                           ; preds = %if.end21, %if.else13.return_crit_edge, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ 0, %if.end.return_crit_edge ], [ -22, %if.else13.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @preaction_op(ptr noundef readonly %inval, ptr noundef %outval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %outval, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @strcpy(ptr noundef nonnull %outval, ptr noundef nonnull @preaction) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %inval, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @strcmp(ptr noundef nonnull %inval, ptr noundef nonnull dereferenceable(9) @.str.45) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.end3.if.end16_crit_edge, label %if.else

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.else:                                          ; preds = %if.end3
  %call6 = tail call i32 @strcmp(ptr noundef nonnull %inval, ptr noundef nonnull dereferenceable(8) @.str.46) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.else.if.end16_crit_edge, label %if.else9

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.else9:                                         ; preds = %if.else
  %call10 = tail call i32 @strcmp(ptr noundef nonnull %inval, ptr noundef nonnull dereferenceable(8) @.str.47) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.else9.if.end16_crit_edge, label %if.else9.return_crit_edge

if.else9.return_crit_edge:                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else9.if.end16_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end16:                                         ; preds = %if.else9.if.end16_crit_edge, %if.else.if.end16_crit_edge, %if.end3.if.end16_crit_edge
  %.sink = phi i8 [ 0, %if.end3.if.end16_crit_edge ], [ 1, %if.else.if.end16_crit_edge ], [ 3, %if.else9.if.end16_crit_edge ]
  store i8 %.sink, ptr @preaction_val, align 1
  %call17 = tail call ptr @strcpy(ptr noundef nonnull @preaction, ptr noundef nonnull %inval) #14
  br label %return

return:                                           ; preds = %if.end16, %if.else9.return_crit_edge, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ 0, %if.end.return_crit_edge ], [ -22, %if.else9.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @preop_op(ptr noundef readonly %inval, ptr noundef %outval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %outval, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @strcpy(ptr noundef nonnull %outval, ptr noundef nonnull @preop) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %inval, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @strcmp(ptr noundef nonnull %inval, ptr noundef nonnull dereferenceable(11) @.str.48) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.end3.if.end16_crit_edge, label %if.else

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.else:                                          ; preds = %if.end3
  %call6 = tail call i32 @strcmp(ptr noundef nonnull %inval, ptr noundef nonnull dereferenceable(12) @.str.49) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.else.if.end16_crit_edge, label %if.else9

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.else9:                                         ; preds = %if.else
  %call10 = tail call i32 @strcmp(ptr noundef nonnull %inval, ptr noundef nonnull dereferenceable(16) @.str.50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.else9.if.end16_crit_edge, label %if.else9.return_crit_edge

if.else9.return_crit_edge:                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else9.if.end16_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end16:                                         ; preds = %if.else9.if.end16_crit_edge, %if.else.if.end16_crit_edge, %if.end3.if.end16_crit_edge
  %.sink = phi i8 [ 0, %if.end3.if.end16_crit_edge ], [ 1, %if.else.if.end16_crit_edge ], [ 2, %if.else9.if.end16_crit_edge ]
  store i8 %.sink, ptr @preop_val, align 1
  %call17 = tail call ptr @strcpy(ptr noundef nonnull @preop, ptr noundef nonnull %inval) #14
  br label %return

return:                                           ; preds = %if.end16, %if.else9.return_crit_edge, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ 0, %if.end.return_crit_edge ], [ -22, %if.else9.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_wdog_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @ipmi_smi_watcher_unregister(ptr noundef nonnull @smi_watcher) #11
  %0 = load i32, ptr @watchdog_ifnum, align 4
  tail call fastcc void @ipmi_unregister_watchdog(i32 noundef %0)
  %call1 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @wdog_reboot_notifier) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_smi_watcher_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipmi_unregister_watchdog(i32 noundef %ipmi_intf) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @watchdog_user, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @watchdog_ifnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %ipmi_intf)
  %cmp.not = icmp eq i32 %1, %ipmi_intf
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  tail call void @misc_deregister(ptr noundef nonnull @ipmi_wdog_miscdev) #11
  store ptr null, ptr @watchdog_user, align 4
  %call.i.i12 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  %2 = load volatile i32, ptr @msg_tofree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not13 = icmp eq i32 %2, 0
  br i1 %tobool3.not13, label %if.end2.while.end_crit_edge, label %if.end2.while.body_crit_edge

if.end2.while.body_crit_edge:                     ; preds = %if.end2
  br label %while.body

if.end2.while.end_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %msg_free_smi.exit.while.body_crit_edge, %if.end2.while.body_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !285
  tail call void @llvm.prefetch.p0(ptr nonnull @msg_tofree, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @msg_tofree, ptr nonnull @msg_tofree, i32 1, ptr nonnull elementtype(i32) @msg_tofree) #11, !srcloc !286
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %while.body.msg_free_smi.exit_crit_edge

while.body.msg_free_smi.exit_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %msg_free_smi.exit

if.then.i:                                        ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %4 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then1.i, label %if.then.i.msg_free_smi.exit_crit_edge

if.then.i.msg_free_smi.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %msg_free_smi.exit

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @complete(ptr noundef nonnull @msg_wait) #11
  br label %msg_free_smi.exit

msg_free_smi.exit:                                ; preds = %if.then1.i, %if.then.i.msg_free_smi.exit_crit_edge, %while.body.msg_free_smi.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  %5 = load volatile i32, ptr @msg_tofree, align 4
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %msg_free_smi.exit.while.end_crit_edge, label %msg_free_smi.exit.while.body_crit_edge

msg_free_smi.exit.while.body_crit_edge:           ; preds = %msg_free_smi.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

msg_free_smi.exit.while.end_crit_edge:            ; preds = %msg_free_smi.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %msg_free_smi.exit.while.end_crit_edge, %if.end2.while.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @ipmi_watchdog_mutex, i32 noundef 0) #11
  %call4 = tail call i32 @ipmi_destroy_user(ptr noundef nonnull %0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %while.end.if.end8_crit_edge, label %do.end

while.end.if.end8_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %call4) #15
  br label %if.end8

if.end8:                                          ; preds = %do.end, %while.end.if.end8_crit_edge
  store i1 true, ptr @ipmi_start_timer_on_heartbeat, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ipmi_watchdog_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_wdog_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @action_op(ptr noundef nonnull @action, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @action_op(ptr noundef nonnull @.str.41, ptr noundef null)
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @action) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @preaction_op(ptr noundef nonnull @preaction, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end12_crit_edge, label %if.then5

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 @preaction_op(ptr noundef nonnull @.str.45, ptr noundef null)
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @preaction) #15
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %if.end.if.end12_crit_edge
  %call13 = tail call i32 @preop_op(ptr noundef nonnull @preop, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.if.end22_crit_edge, label %if.then15

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 @preop_op(ptr noundef nonnull @.str.48, ptr noundef null)
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @preop) #15
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %if.end12.if.end22_crit_edge
  %call23 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @wdog_reboot_notifier) #11
  %call24 = tail call i32 @ipmi_smi_watcher_register(ptr noundef nonnull @smi_watcher) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %if.then26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @wdog_reboot_notifier) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end22.cleanup_crit_edge
  %.str.65.sink = phi ptr [ @.str.62, %if.then26 ], [ @.str.65, %if.end22.cleanup_crit_edge ]
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.65.sink) #15
  ret i32 %call24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_param_wdog_ifnum(ptr noundef %val, ptr noundef %kp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @param_set_int(ptr noundef %val, ptr noundef %kp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @ifnum_to_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i32, ptr @watchdog_ifnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp1 = icmp eq i32 %0, %1
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ipmi_unregister_watchdog(i32 noundef %1)
  %2 = load i32, ptr @ifnum_to_use, align 4
  tail call fastcc void @ipmi_register_watchdog(i32 noundef %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_int(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_int(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipmi_register_watchdog(i32 noundef %ipmi_intf) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @watchdog_user, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @ifnum_to_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %ipmi_intf)
  %cmp1.not = icmp eq i32 %1, %ipmi_intf
  %or.cond = or i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end3, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end3:                                          ; preds = %if.end
  store i32 %ipmi_intf, ptr @watchdog_ifnum, align 4
  %call = tail call i32 @ipmi_create_user(i32 noundef %ipmi_intf, ptr noundef nonnull @ipmi_hndlrs, ptr noundef null, ptr noundef nonnull @watchdog_user) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.end3.if.else.sink.split_crit_edge, label %if.end7

if.end3.if.else.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.sink.split

if.end7:                                          ; preds = %if.end3
  %2 = load ptr, ptr @watchdog_user, align 4
  %call8 = tail call i32 @ipmi_get_version(ptr noundef %2, ptr noundef nonnull @ipmi_version_major, ptr noundef nonnull @ipmi_version_minor) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.if.end16_crit_edge, label %do.end13

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #15
  store i8 1, ptr @ipmi_version_major, align 1
  store i8 0, ptr @ipmi_version_minor, align 1
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.end7.if.end16_crit_edge
  %call17 = tail call i32 @misc_register(ptr noundef nonnull @ipmi_wdog_miscdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %out

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %3 = load ptr, ptr @watchdog_user, align 4
  %call20 = tail call i32 @ipmi_destroy_user(ptr noundef %3) #11
  store ptr null, ptr @watchdog_user, align 4
  br label %if.else.sink.split

out:                                              ; preds = %if.end16
  %4 = load i32, ptr @start_now, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool27.not = icmp ne i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp29 = icmp eq i32 %call17, 0
  %or.cond44 = select i1 %tobool27.not, i1 %cmp29, i1 false
  br i1 %or.cond44, label %if.then30, label %out.if.else_crit_edge

out.if.else_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then30:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr @start_now, align 4
  %5 = load i8, ptr @action_val, align 1
  store i8 %5, ptr @ipmi_watchdog_state, align 1
  %call31 = tail call fastcc i32 @ipmi_set_timeout(i32 noundef 2)
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  br label %if.end38

if.else.sink.split:                               ; preds = %if.then19, %if.end3.if.else.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str.7, %if.then19 ], [ @.str, %if.end3.if.else.sink.split_crit_edge ]
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.7.sink) #15
  br label %if.else

if.else:                                          ; preds = %if.else.sink.split, %out.if.else_crit_edge, %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  store i8 0, ptr @ipmi_watchdog_state, align 1
  %call37 = tail call fastcc i32 @ipmi_set_timeout(i32 noundef 0)
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then30
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_create_user(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_get_version(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_destroy_user(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipmi_set_timeout(i32 noundef %do_heartbeat) unnamed_addr #3 align 64 {
entry:
  %send_heartbeat_now.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ipmi_watchdog_mutex, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %send_heartbeat_now.i) #11
  %0 = ptrtoint ptr %send_heartbeat_now.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %send_heartbeat_now.i, align 4, !annotation !288
  %1 = load ptr, ptr @watchdog_user, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry._ipmi_set_timeout.exit_crit_edge, label %if.end.i

entry._ipmi_set_timeout.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %_ipmi_set_timeout.exit

if.end.i:                                         ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 2, ptr @msg_tofree, align 4
  %call.i = call fastcc i32 @__ipmi_set_timeout(ptr noundef nonnull @smi_msg, ptr noundef nonnull @recv_msg, ptr noundef nonnull %send_heartbeat_now.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i13.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 0, ptr @msg_tofree, align 4
  br label %_ipmi_set_timeout.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @wait_for_completion(ptr noundef nonnull @msg_wait) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %do_heartbeat)
  %cmp.i = icmp eq i32 %do_heartbeat, 2
  br i1 %cmp.i, label %if.end3.i.if.then6.i_crit_edge, label %lor.lhs.false.i

if.end3.i.if.then6.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.end3.i
  %2 = ptrtoint ptr %send_heartbeat_now.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %send_heartbeat_now.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not.i = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %do_heartbeat)
  %cmp5.i = icmp eq i32 %do_heartbeat, 1
  %or.cond.i = and i1 %cmp5.i, %tobool4.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then6.i_crit_edge, label %lor.lhs.false.i._ipmi_set_timeout.exit_crit_edge

lor.lhs.false.i._ipmi_set_timeout.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_ipmi_set_timeout.exit

lor.lhs.false.i.if.then6.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

if.then6.i:                                       ; preds = %lor.lhs.false.i.if.then6.i_crit_edge, %if.end3.i.if.then6.i_crit_edge
  %call7.i = call fastcc i32 @__ipmi_heartbeat() #11
  br label %_ipmi_set_timeout.exit

_ipmi_set_timeout.exit:                           ; preds = %if.then6.i, %lor.lhs.false.i._ipmi_set_timeout.exit_crit_edge, %if.then2.i, %entry._ipmi_set_timeout.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then2.i ], [ -19, %entry._ipmi_set_timeout.exit_crit_edge ], [ %call7.i, %if.then6.i ], [ 0, %lor.lhs.false.i._ipmi_set_timeout.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %send_heartbeat_now.i) #11
  call void @mutex_unlock(ptr noundef nonnull @ipmi_watchdog_mutex) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_wdog_msg_handler(ptr noundef %msg, ptr nocapture noundef readnone %handler_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.ipmi_recv_msg, ptr %msg, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %1)
  %cmp = icmp eq i8 %1, 34
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.ipmi_recv_msg, ptr %msg, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %5)
  %cmp5 = icmp eq i8 %5, -128
  br i1 %cmp5, label %do.end, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #15
  br label %if.end25

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %data8 = getelementptr inbounds %struct.ipmi_recv_msg, ptr %msg, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data8, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp11.not = icmp eq i8 %9, 0
  br i1 %cmp11.not, label %if.else.if.end25_crit_edge, label %do.end15

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv10 = zext i8 %9 to i32
  %conv23 = zext i8 %1 to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv10, i32 noundef %conv23) #15
  br label %if.end25

if.end25:                                         ; preds = %do.end15, %if.else.if.end25_crit_edge, %do.end
  tail call void @ipmi_free_recv_msg(ptr noundef %msg) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_wdog_pretimeout_handler(ptr nocapture noundef readnone %handler_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @preaction_val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then:                                          ; preds = %entry
  %1 = load i8, ptr @preop_val, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %if.then.if.end20_crit_edge [
    i8 1, label %if.then5
    i8 2, label %if.then10
  ]

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then5:                                         ; preds = %if.then
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @preop_panic_excl, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !289
  tail call void @llvm.prefetch.p0(ptr nonnull @preop_panic_excl, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @preop_panic_excl, ptr nonnull @preop_panic_excl, i32 1, ptr nonnull elementtype(i32) @preop_panic_excl) #11, !srcloc !290
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then6, label %if.then5.if.end20_crit_edge

if.then5.if.end20_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then6:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.17) #16
  unreachable

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ipmi_read_lock) #11
  store i8 1, ptr @data_to_read, align 1
  tail call void @__wake_up(ptr noundef nonnull @read_q, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  tail call void @kill_fasync(ptr noundef nonnull @fasync_q, i32 noundef 29, i32 noundef 1) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ipmi_read_lock, i32 noundef %call15) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then10, %if.then5.if.end20_crit_edge, %if.then.if.end20_crit_edge, %entry.if.end20_crit_edge
  %call.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @pretimeout_since_last_heartbeat, i32 noundef 4) #11
  store volatile i32 1, ptr @pretimeout_since_last_heartbeat, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_wdog_panic_handler(ptr nocapture noundef readnone %user_data) #3 align 64 {
entry:
  %msg.i.i = alloca %struct.kernel_ipmi_msg, align 4
  %addr.i.i = alloca %struct.ipmi_system_interface_addr, align 8
  %send_heartbeat_now.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @watchdog_user, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %.b = load i1, ptr @ipmi_wdog_panic_handler.panic_event_handled, align 4
  br i1 %.b, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %1 = load i8, ptr @ipmi_watchdog_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  store i1 true, ptr @ipmi_wdog_panic_handler.panic_event_handled, align 4
  %2 = load i32, ptr @panic_wdt_timeout, align 4
  store i32 %2, ptr @timeout, align 4
  store i32 0, ptr @pretimeout, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %send_heartbeat_now.i) #11
  %3 = ptrtoint ptr %send_heartbeat_now.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %send_heartbeat_now.i, align 4, !annotation !288
  %call.i.i14.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @panic_done_count, i32 noundef 4) #11
  %4 = load volatile i32, ptr @panic_done_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not15.i = icmp eq i32 %4, 0
  br i1 %cmp.not15.i, label %if.then.while.end.i_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %5 = load ptr, ptr @watchdog_user, align 4
  tail call void @ipmi_poll_interface(ptr noundef %5) #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @panic_done_count, i32 noundef 4) #11
  %6 = load volatile i32, ptr @panic_done_count, align 4
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then.while.end.i_crit_edge
  %call.i.i11.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @panic_done_count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @panic_done_count, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @panic_done_count, ptr nonnull @panic_done_count, i32 2, ptr nonnull elementtype(i32) @panic_done_count) #11, !srcloc !292
  %call1.i = call fastcc i32 @__ipmi_set_timeout(ptr noundef nonnull @panic_halt_smi_msg, ptr noundef nonnull @panic_halt_recv_msg, ptr noundef nonnull %send_heartbeat_now.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i12.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @panic_done_count, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @panic_done_count, i32 1, i32 3, i32 1) #11
  %8 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @panic_done_count, ptr nonnull @panic_done_count, i32 2, ptr nonnull elementtype(i32) @panic_done_count) #11, !srcloc !293
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #15
  br label %if.end5.i

if.else.i:                                        ; preds = %while.end.i
  %9 = ptrtoint ptr %send_heartbeat_now.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %send_heartbeat_now.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not.i = icmp eq i32 %10, 0
  br i1 %tobool3.not.i, label %if.else.i.if.end5.i_crit_edge, label %if.then4.i

if.else.i.if.end5.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i.i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr.i.i) #11
  %11 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 51540590847, ptr %addr.i.i, align 8, !annotation !288
  %12 = load i8, ptr @ipmi_watchdog_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i.i = icmp eq i8 %12, 0
  br i1 %cmp.i.i, label %if.then4.i.panic_halt_ipmi_heartbeat.exit.i_crit_edge, label %if.end.i.i

if.then4.i.panic_halt_ipmi_heartbeat.exit.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %panic_halt_ipmi_heartbeat.exit.i

if.end.i.i:                                       ; preds = %if.then4.i
  %13 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %msg.i.i, i32 0, i32 3
  %14 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %msg.i.i, i32 0, i32 2
  %15 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %msg.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 6, ptr %msg.i.i, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 34, ptr %15, align 1
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %13, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %14, align 2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @panic_done_count, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @panic_done_count, i32 1, i32 3, i32 1) #11
  %20 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @panic_done_count, ptr nonnull @panic_done_count, i32 2, ptr nonnull elementtype(i32) @panic_done_count) #11, !srcloc !292
  %21 = load ptr, ptr @watchdog_user, align 4
  %call.i.i = call i32 @ipmi_request_supply_msgs(ptr noundef %21, ptr noundef nonnull %addr.i.i, i32 noundef 0, ptr noundef nonnull %msg.i.i, ptr noundef null, ptr noundef nonnull @panic_halt_heartbeat_smi_msg, ptr noundef nonnull @panic_halt_heartbeat_recv_msg, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.panic_halt_ipmi_heartbeat.exit.i_crit_edge, label %if.then2.i.i

if.end.i.i.panic_halt_ipmi_heartbeat.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %panic_halt_ipmi_heartbeat.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i6.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @panic_done_count, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @panic_done_count, i32 1, i32 3, i32 1) #11
  %22 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @panic_done_count, ptr nonnull @panic_done_count, i32 2, ptr nonnull elementtype(i32) @panic_done_count) #11, !srcloc !293
  br label %panic_halt_ipmi_heartbeat.exit.i

panic_halt_ipmi_heartbeat.exit.i:                 ; preds = %if.then2.i.i, %if.end.i.i.panic_halt_ipmi_heartbeat.exit.i_crit_edge, %if.then4.i.panic_halt_ipmi_heartbeat.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i.i) #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %panic_halt_ipmi_heartbeat.exit.i, %if.else.i.if.end5.i_crit_edge, %if.then.i
  %call.i.i1316.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @panic_done_count, i32 noundef 4) #11
  %23 = load volatile i32, ptr @panic_done_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp8.not17.i = icmp eq i32 %23, 0
  br i1 %cmp8.not17.i, label %if.end5.i.panic_halt_ipmi_set_timeout.exit_crit_edge, label %if.end5.i.while.body9.i_crit_edge

if.end5.i.while.body9.i_crit_edge:                ; preds = %if.end5.i
  br label %while.body9.i

if.end5.i.panic_halt_ipmi_set_timeout.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %panic_halt_ipmi_set_timeout.exit

while.body9.i:                                    ; preds = %while.body9.i.while.body9.i_crit_edge, %if.end5.i.while.body9.i_crit_edge
  %24 = load ptr, ptr @watchdog_user, align 4
  call void @ipmi_poll_interface(ptr noundef %24) #11
  %call.i.i13.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @panic_done_count, i32 noundef 4) #11
  %25 = load volatile i32, ptr @panic_done_count, align 4
  %cmp8.not.i = icmp eq i32 %25, 0
  br i1 %cmp8.not.i, label %while.body9.i.panic_halt_ipmi_set_timeout.exit_crit_edge, label %while.body9.i.while.body9.i_crit_edge

while.body9.i.while.body9.i_crit_edge:            ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body9.i

while.body9.i.panic_halt_ipmi_set_timeout.exit_crit_edge: ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %panic_halt_ipmi_set_timeout.exit

panic_halt_ipmi_set_timeout.exit:                 ; preds = %while.body9.i.panic_halt_ipmi_set_timeout.exit_crit_edge, %if.end5.i.panic_halt_ipmi_set_timeout.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %send_heartbeat_now.i) #11
  br label %if.end

if.end:                                           ; preds = %panic_halt_ipmi_set_timeout.exit, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_free_recv_msg(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_poll_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ipmi_set_timeout(ptr noundef %smi_msg, ptr noundef %recv_msg, ptr noundef writeonly %send_heartbeat_now) unnamed_addr #3 align 64 {
entry:
  %msg = alloca %struct.kernel_ipmi_msg, align 4
  %data = alloca [6 x i8], align 1
  %addr = alloca %struct.ipmi_system_interface_addr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #11
  %0 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %msg, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #11
  %3 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 1
  %4 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 2
  %5 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 3
  %6 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 4
  %7 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 5
  %8 = getelementptr inbounds i8, ptr %data, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #11
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 51540590847, ptr %addr, align 8, !annotation !288
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %data, align 1
  %12 = load i8, ptr @ipmi_watchdog_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.not = icmp eq i8 %12, 0
  br i1 %cmp.not, label %entry.if.else47_crit_edge, label %if.then

entry.if.else47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else47

if.then:                                          ; preds = %entry
  %13 = load i8, ptr @ipmi_version_major, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp7 = icmp ugt i8 %13, 1
  br i1 %cmp7, label %if.then.if.then15_crit_edge, label %lor.lhs.false

if.then.if.then15_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp10 = icmp eq i8 %13, 1
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false.if.end20_crit_edge

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true:                                    ; preds = %lor.lhs.false
  %14 = load i8, ptr @ipmi_version_minor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %14)
  %cmp13 = icmp ugt i8 %14, 4
  br i1 %cmp13, label %land.lhs.true.if.then15_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.then15:                                        ; preds = %land.lhs.true.if.then15_crit_edge, %if.then.if.then15_crit_edge
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 68, ptr %data, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %land.lhs.true.if.end20_crit_edge, %lor.lhs.false.if.end20_crit_edge
  %hbnow.0 = phi i32 [ 0, %if.then15 ], [ 1, %land.lhs.true.if.end20_crit_edge ], [ 1, %lor.lhs.false.if.end20_crit_edge ]
  %16 = and i8 %12, 7
  %17 = load i32, ptr @pretimeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp30 = icmp sgt i32 %17, 0
  br i1 %cmp30, label %if.then36.critedge, label %if.end20.if.else47_crit_edge

if.end20.if.else47_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else47

if.then36.critedge:                               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %18 = load i8, ptr @preaction_val, align 1
  %19 = shl i8 %18, 4
  %20 = and i8 %19, 112
  %or4274 = or i8 %20, %16
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or4274, ptr %3, align 1
  %conv45 = trunc i32 %17 to i8
  br label %if.end55

if.else47:                                        ; preds = %if.end20.if.else47_crit_edge, %entry.if.else47_crit_edge
  %22 = phi i8 [ %16, %if.end20.if.else47_crit_edge ], [ 0, %entry.if.else47_crit_edge ]
  %hbnow.078 = phi i32 [ %hbnow.0, %if.end20.if.else47_crit_edge ], [ 0, %entry.if.else47_crit_edge ]
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %3, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.else47, %if.then36.critedge
  %hbnow.077 = phi i32 [ %hbnow.078, %if.else47 ], [ %hbnow.0, %if.then36.critedge ]
  %storemerge = phi i8 [ 0, %if.else47 ], [ %conv45, %if.then36.critedge ]
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %storemerge, ptr %4, align 1
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %5, align 1
  %26 = load i32, ptr @timeout, align 4
  %27 = trunc i32 %26 to i8
  %conv58 = mul i8 %27, 10
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv58, ptr %6, align 1
  %mul60 = mul i32 %26, 10
  %29 = lshr i32 %mul60, 8
  %conv61 = trunc i32 %29 to i8
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv61, ptr %7, align 1
  %31 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 6, ptr %msg, align 4
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 36, ptr %0, align 1
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %data, ptr %2, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 6, ptr %1, align 2
  %35 = load ptr, ptr @watchdog_user, align 4
  %call = call i32 @ipmi_request_supply_msgs(ptr noundef %35, ptr noundef nonnull %addr, i32 noundef 0, ptr noundef nonnull %msg, ptr noundef null, ptr noundef %smi_msg, ptr noundef %recv_msg, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else66, label %do.end

do.end:                                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call) #15
  br label %if.end70

if.else66:                                        ; preds = %if.end55
  %tobool67.not = icmp eq ptr %send_heartbeat_now, null
  br i1 %tobool67.not, label %if.else66.if.end70_crit_edge, label %if.then68

if.else66.if.end70_crit_edge:                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then68:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %send_heartbeat_now to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %hbnow.077, ptr %send_heartbeat_now, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.else66.if.end70_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_request_supply_msgs(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panic_smi_free(ptr nocapture noundef readnone %msg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @panic_done_count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @panic_done_count, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @panic_done_count, ptr nonnull @panic_done_count, i32 1, ptr nonnull elementtype(i32) @panic_done_count) #11, !srcloc !293
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panic_recv_free(ptr nocapture noundef readnone %msg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @panic_done_count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @panic_done_count, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @panic_done_count, ptr nonnull @panic_done_count, i32 1, ptr nonnull elementtype(i32) @panic_done_count) #11, !srcloc !293
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #3 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #11
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  %2 = call ptr @memset(ptr %wait, i32 255, i32 20)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @ipmi_read_lock) #11
  %3 = load i8, ptr @data_to_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.then79_crit_edge

if.end.if.then79_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then79

if.then1:                                         ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.then1.out.thread_crit_edge

if.then1.out.thread_crit_edge:                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end4:                                          ; preds = %if.then1
  %6 = tail call i32 @llvm.read_register.i32(metadata !275) #11
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wait, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @default_wake_function, ptr %1, align 4
  call void @add_wait_queue(ptr noundef nonnull @read_q, ptr noundef nonnull %wait) #11
  %13 = load i8, ptr @data_to_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not95 = icmp eq i8 %13, 0
  br i1 %tobool5.not95, label %if.end4.__here_crit_edge, label %if.end4.while.end_crit_edge

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end4.__here_crit_edge:                         ; preds = %if.end4
  br label %__here

__here:                                           ; preds = %__here.__here_crit_edge, %if.end4.__here_crit_edge
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 212
  %16 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 ptrtoint (ptr blockaddress(@ipmi_read, %__here) to i32), ptr %task_state_change, align 4
  %17 = load ptr, ptr %task, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %17, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !294
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @ipmi_read_lock) #11
  call void @schedule() #11
  call void @_raw_spin_lock_irq(ptr noundef nonnull @ipmi_read_lock) #11
  %19 = load i8, ptr @data_to_read, align 1
  %tobool5.not = icmp eq i8 %19, 0
  br i1 %tobool5.not, label %__here.__here_crit_edge, label %__here.while.end_crit_edge

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

__here.__here_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

while.end:                                        ; preds = %__here.while.end_crit_edge, %if.end4.while.end_crit_edge
  call void @remove_wait_queue(ptr noundef nonnull @read_q, ptr noundef nonnull %wait) #11
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stack.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.end.out.thread_crit_edge, !prof !295

while.end.out.thread_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

signal_pending.exit:                              ; preds = %while.end
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %23, align 4
  %and1.i.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool74.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool74.not, label %signal_pending.exit.if.then79_crit_edge, label %signal_pending.exit.out.thread_crit_edge

signal_pending.exit.out.thread_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

signal_pending.exit.if.then79_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then79

out.thread:                                       ; preds = %signal_pending.exit.out.thread_crit_edge, %while.end.out.thread_crit_edge, %if.then1.out.thread_crit_edge
  %rv.0.ph = phi i32 [ -512, %signal_pending.exit.out.thread_crit_edge ], [ -11, %if.then1.out.thread_crit_edge ], [ -512, %while.end.out.thread_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @ipmi_read_lock) #11
  br label %cleanup

if.then79:                                        ; preds = %signal_pending.exit.if.then79_crit_edge, %if.end.if.then79_crit_edge
  store i8 0, ptr @data_to_read, align 1
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @ipmi_read_lock) #11
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then79.cleanup_crit_edge, label %if.end.i.i

if.then79.cleanup_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then79
  %29 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 1, i32 -1226833920) #17, !srcloc !296
  %asmresult.i.i = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @data_to_read, i32 noundef 1) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull @data_to_read, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool81.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool81.not, i32 1, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.then79.cleanup_crit_edge, %out.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %rv.0.ph, %out.thread ], [ -14, %if.then79.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then:                                          ; preds = %entry
  %0 = load i8, ptr @nowayout, align 1, !range !297
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %for.body.preheader, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

for.body.preheader:                               ; preds = %if.then
  store i1 false, ptr @expect_close, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.031 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 776) #11
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.031
  %1 = tail call i32 @llvm.read_register.i32(metadata !275) #11
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !298
  %and.i = and i32 %3, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  %4 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #11, !srcloc !301
  %asmresult = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #11, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool5.not = icmp eq i32 %asmresult, 0
  br i1 %tobool5.not, label %if.end, label %for.body.cleanup21_crit_edge

for.body.cleanup21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup21

if.end:                                           ; preds = %for.body
  %asmresult3 = extractvalue { i32, i32 } %4, 1
  %conv7 = and i32 %asmresult3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 86, i32 %conv7)
  %cmp8 = icmp eq i32 %conv7, 86
  br i1 %cmp8, label %if.then10, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @expect_close, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.031, 1
  %cmp.not = icmp eq i32 %inc, %len
  br i1 %cmp.not, label %for.inc.if.end15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end15:                                         ; preds = %for.inc.if.end15_crit_edge, %if.then.if.end15_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @ipmi_watchdog_mutex, i32 noundef 0) #11
  %call.i = tail call fastcc i32 @_ipmi_heartbeat() #11
  tail call void @mutex_unlock(ptr noundef nonnull @ipmi_watchdog_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.end15.cleanup21_crit_edge

if.end15.cleanup21_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup21

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end20:                                         ; preds = %if.end15.if.end20_crit_edge, %entry.if.end20_crit_edge
  br label %cleanup21

cleanup21:                                        ; preds = %if.end20, %if.end15.cleanup21_crit_edge, %for.body.cleanup21_crit_edge
  %retval.3 = phi i32 [ %len, %if.end20 ], [ %call.i, %if.end15.cleanup21_crit_edge ], [ -14, %for.body.cleanup21_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_poll(ptr noundef %file, ptr noundef %wait) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %1(ptr noundef %file, ptr noundef nonnull @read_q, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @ipmi_read_lock) #11
  %2 = load i8, ptr @data_to_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 65
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @ipmi_read_lock) #11
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_unlocked_ioctl(ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  %send_heartbeat_now.i120.i = alloca i32, align 4
  %send_heartbeat_now.i108.i = alloca i32, align 4
  %send_heartbeat_now.i94.i = alloca i32, align 4
  %send_heartbeat_now.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ipmi_watchdog_mutex, i32 noundef 0) #11
  %0 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val.i, align 4, !annotation !288
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %cmd, label %entry.ipmi_ioctl.exit_crit_edge [
    i32 -2144839936, label %if.end59.i.i.i
    i32 -1073457402, label %if.then.i.i
    i32 -2147199225, label %if.end59.i.i12.i
    i32 -1073457400, label %if.then.i26.i
    i32 -2147199223, label %if.end59.i.i47.i
    i32 -2147199227, label %sw.bb21.i
    i32 -2147199228, label %if.then.i61.i
    i32 -2147199231, label %sw.bb37.i
  ]

entry.ipmi_ioctl.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipmi_ioctl.exit

if.end59.i.i.i:                                   ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.end59.i.i.i.ipmi_ioctl.exit_crit_edge, label %if.end.i.i.i

if.end59.i.i.i.ipmi_ioctl.exit_crit_edge:         ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipmi_ioctl.exit

if.end.i.i.i:                                     ; preds = %if.end59.i.i.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 40, i32 -1226833920) #17, !srcloc !296
  %asmresult.i.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.ipmi_ioctl.exit_crit_edge

if.end.i.i.i.ipmi_ioctl.exit_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipmi_ioctl.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ident, i32 noundef 40) #11
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull @ident, i32 noundef 40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %ipmi_ioctl.exit

if.then.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i4.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i4.i, label %if.then.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.if.then11.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1226833920) #17, !srcloc !302
  %asmresult.i.i5.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i5.i)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i5.i, 0
  br i1 %cmp.i1.i.i, label %if.end.i.i7.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !295

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i7.i:                                    ; preds = %land.lhs.true.i.i.i
  %call.i.i.i6.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val.i, i32 noundef 4) #11
  %5 = call i32 @llvm.read_register.i32(metadata !275) #11
  %and.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #8, !srcloc !298
  %and.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !299
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val.i, ptr noundef %0, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !299
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i7.i.if.then11.i.i.i_crit_edge, !prof !295

if.end.i.i7.i.if.then11.i.i.i_crit_edge:          ; preds = %if.end.i.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i7.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then.i.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i7.i.if.then11.i.i.i_crit_edge ], [ 4, %if.then.i.i.if.then11.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 4, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %val.i, i32 %sub.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %ipmi_ioctl.exit

if.end.i:                                         ; preds = %if.end.i.i7.i
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  store i32 %10, ptr @timeout, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %send_heartbeat_now.i.i) #11
  %11 = ptrtoint ptr %send_heartbeat_now.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %send_heartbeat_now.i.i, align 4, !annotation !288
  %12 = load ptr, ptr @watchdog_user, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i._ipmi_set_timeout.exit.i_crit_edge, label %if.end.i.i

if.end.i._ipmi_set_timeout.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_ipmi_set_timeout.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %call.i.i.i93.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 2, ptr @msg_tofree, align 4
  %call.i.i = call fastcc i32 @__ipmi_set_timeout(ptr noundef nonnull @smi_msg, ptr noundef nonnull @recv_msg, ptr noundef nonnull %send_heartbeat_now.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i13.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 0, ptr @msg_tofree, align 4
  br label %_ipmi_set_timeout.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @wait_for_completion(ptr noundef nonnull @msg_wait) #11
  %13 = ptrtoint ptr %send_heartbeat_now.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %send_heartbeat_now.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool4.not.i.not.i, label %if.end3.i.i._ipmi_set_timeout.exit.i_crit_edge, label %if.then6.i.i

if.end3.i.i._ipmi_set_timeout.exit.i_crit_edge:   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_ipmi_set_timeout.exit.i

if.then6.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i.i = call fastcc i32 @__ipmi_heartbeat() #11
  br label %_ipmi_set_timeout.exit.i

_ipmi_set_timeout.exit.i:                         ; preds = %if.then6.i.i, %if.end3.i.i._ipmi_set_timeout.exit.i_crit_edge, %if.then2.i.i, %if.end.i._ipmi_set_timeout.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then2.i.i ], [ -19, %if.end.i._ipmi_set_timeout.exit.i_crit_edge ], [ %call7.i.i, %if.then6.i.i ], [ 0, %if.end3.i.i._ipmi_set_timeout.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %send_heartbeat_now.i.i) #11
  br label %ipmi_ioctl.exit

if.end59.i.i12.i:                                 ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #11
  %call.i.i13.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i13.i, label %if.end59.i.i12.i.ipmi_ioctl.exit_crit_edge, label %if.end.i.i17.i

if.end59.i.i12.i.ipmi_ioctl.exit_crit_edge:       ; preds = %if.end59.i.i12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipmi_ioctl.exit

if.end.i.i17.i:                                   ; preds = %if.end59.i.i12.i
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1226833920) #17, !srcloc !296
  %asmresult.i.i15.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i15.i)
  %cmp.i6.i16.i = icmp eq i32 %asmresult.i.i15.i, 0
  br i1 %cmp.i6.i16.i, label %copy_to_user.exit22.i, label %if.end.i.i17.i.ipmi_ioctl.exit_crit_edge

if.end.i.i17.i.ipmi_ioctl.exit_crit_edge:         ; preds = %if.end.i.i17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipmi_ioctl.exit

copy_to_user.exit22.i:                            ; preds = %if.end.i.i17.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i18.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @timeout, i32 noundef 4) #11
  %call.i12.i.i19.i = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull @timeout, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i19.i)
  %tobool7.not.i = icmp eq i32 %call.i12.i.i19.i, 0
  %spec.select147.i = select i1 %tobool7.not.i, i32 0, i32 -14
  br label %ipmi_ioctl.exit

if.then.i26.i:                                    ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i25.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i25.i, label %if.then.i26.i.if.then11.i.i41.i_crit_edge, label %land.lhs.true.i.i29.i

if.then.i26.i.if.then11.i.i41.i_crit_edge:        ; preds = %if.then.i26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i41.i

land.lhs.true.i.i29.i:                            ; preds = %if.then.i26.i
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1226833920) #17, !srcloc !302
  %asmresult.i.i27.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i27.i)
  %cmp.i1.i28.i = icmp eq i32 %asmresult.i.i27.i, 0
  br i1 %cmp.i1.i28.i, label %if.end.i.i37.i, label %land.lhs.true.i.i29.i.if.then11.i.i41.i_crit_edge, !prof !295

land.lhs.true.i.i29.i.if.then11.i.i41.i_crit_edge: ; preds = %land.lhs.true.i.i29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i41.i

if.end.i.i37.i:                                   ; preds = %land.lhs.true.i.i29.i
  %call.i.i.i30.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val.i, i32 noundef 4) #11
  %17 = call i32 @llvm.read_register.i32(metadata !275) #11
  %and.i.i.i.i.i.i31.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i31.i to ptr
  %cpu_domain.i.i.i.i.i32.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i32.i) #8, !srcloc !298
  %and.i.i.i.i33.i = and i32 %19, -13
  %or.i.i.i.i34.i = or i32 %and.i.i.i.i33.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i34.i) #11, !srcloc !299
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  %call1.i.i.i35.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val.i, ptr noundef %0, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #11, !srcloc !299
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i35.i)
  %tobool4.not.i.i36.i = icmp eq i32 %call1.i.i.i35.i, 0
  br i1 %tobool4.not.i.i36.i, label %if.end14.i, label %if.end.i.i37.i.if.then11.i.i41.i_crit_edge, !prof !295

if.end.i.i37.i.if.then11.i.i41.i_crit_edge:       ; preds = %if.end.i.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i41.i

if.then11.i.i41.i:                                ; preds = %if.end.i.i37.i.if.then11.i.i41.i_crit_edge, %land.lhs.true.i.i29.i.if.then11.i.i41.i_crit_edge, %if.then.i26.i.if.then11.i.i41.i_crit_edge
  %res.03.i.i38.i = phi i32 [ %call1.i.i.i35.i, %if.end.i.i37.i.if.then11.i.i41.i_crit_edge ], [ 4, %if.then.i26.i.if.then11.i.i41.i_crit_edge ], [ 4, %land.lhs.true.i.i29.i.if.then11.i.i41.i_crit_edge ]
  %sub.i.i39.i = sub i32 4, %res.03.i.i38.i
  %add.ptr.i.i40.i = getelementptr i8, ptr %val.i, i32 %sub.i.i39.i
  %20 = call ptr @memset(ptr %add.ptr.i.i40.i, i32 0, i32 %res.03.i.i38.i)
  br label %ipmi_ioctl.exit

if.end14.i:                                       ; preds = %if.end.i.i37.i
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  store i32 %22, ptr @pretimeout, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %send_heartbeat_now.i94.i) #11
  %23 = ptrtoint ptr %send_heartbeat_now.i94.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %send_heartbeat_now.i94.i, align 4, !annotation !288
  %24 = load ptr, ptr @watchdog_user, align 4
  %tobool.not.i95.i = icmp eq ptr %24, null
  br i1 %tobool.not.i95.i, label %if.end14.i._ipmi_set_timeout.exit107.i_crit_edge, label %if.end.i99.i

if.end14.i._ipmi_set_timeout.exit107.i_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_ipmi_set_timeout.exit107.i

if.end.i99.i:                                     ; preds = %if.end14.i
  %call.i.i.i96.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 2, ptr @msg_tofree, align 4
  %call.i97.i = call fastcc i32 @__ipmi_set_timeout(ptr noundef nonnull @smi_msg, ptr noundef nonnull @recv_msg, ptr noundef nonnull %send_heartbeat_now.i94.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i)
  %tobool1.not.i98.i = icmp eq i32 %call.i97.i, 0
  br i1 %tobool1.not.i98.i, label %if.end3.i102.i, label %if.then2.i101.i

if.then2.i101.i:                                  ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i13.i100.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 0, ptr @msg_tofree, align 4
  br label %_ipmi_set_timeout.exit107.i

if.end3.i102.i:                                   ; preds = %if.end.i99.i
  call void @wait_for_completion(ptr noundef nonnull @msg_wait) #11
  %25 = ptrtoint ptr %send_heartbeat_now.i94.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %send_heartbeat_now.i94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool4.not.i103.not.i = icmp eq i32 %26, 0
  br i1 %tobool4.not.i103.not.i, label %if.end3.i102.i._ipmi_set_timeout.exit107.i_crit_edge, label %if.then6.i105.i

if.end3.i102.i._ipmi_set_timeout.exit107.i_crit_edge: ; preds = %if.end3.i102.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_ipmi_set_timeout.exit107.i

if.then6.i105.i:                                  ; preds = %if.end3.i102.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i104.i = call fastcc i32 @__ipmi_heartbeat() #11
  br label %_ipmi_set_timeout.exit107.i

_ipmi_set_timeout.exit107.i:                      ; preds = %if.then6.i105.i, %if.end3.i102.i._ipmi_set_timeout.exit107.i_crit_edge, %if.then2.i101.i, %if.end14.i._ipmi_set_timeout.exit107.i_crit_edge
  %retval.0.i106.i = phi i32 [ %call.i97.i, %if.then2.i101.i ], [ -19, %if.end14.i._ipmi_set_timeout.exit107.i_crit_edge ], [ %call7.i104.i, %if.then6.i105.i ], [ 0, %if.end3.i102.i._ipmi_set_timeout.exit107.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %send_heartbeat_now.i94.i) #11
  br label %ipmi_ioctl.exit

if.end59.i.i47.i:                                 ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #11
  %call.i.i48.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i48.i, label %if.end59.i.i47.i.ipmi_ioctl.exit_crit_edge, label %if.end.i.i52.i

if.end59.i.i47.i.ipmi_ioctl.exit_crit_edge:       ; preds = %if.end59.i.i47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipmi_ioctl.exit

if.end.i.i52.i:                                   ; preds = %if.end59.i.i47.i
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1226833920) #17, !srcloc !296
  %asmresult.i.i50.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i50.i)
  %cmp.i6.i51.i = icmp eq i32 %asmresult.i.i50.i, 0
  br i1 %cmp.i6.i51.i, label %copy_to_user.exit57.i, label %if.end.i.i52.i.ipmi_ioctl.exit_crit_edge

if.end.i.i52.i.ipmi_ioctl.exit_crit_edge:         ; preds = %if.end.i.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipmi_ioctl.exit

copy_to_user.exit57.i:                            ; preds = %if.end.i.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i53.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @pretimeout, i32 noundef 4) #11
  %call.i12.i.i54.i = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull @pretimeout, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i54.i)
  %tobool18.not.i = icmp eq i32 %call.i12.i.i54.i, 0
  %spec.select148.i = select i1 %tobool18.not.i, i32 0, i32 -14
  br label %ipmi_ioctl.exit

sw.bb21.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call22.i = tail call fastcc i32 @_ipmi_heartbeat() #11
  br label %ipmi_ioctl.exit

if.then.i61.i:                                    ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i60.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i60.i, label %if.then.i61.i.if.then11.i.i76.i_crit_edge, label %land.lhs.true.i.i64.i

if.then.i61.i.if.then11.i.i76.i_crit_edge:        ; preds = %if.then.i61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i76.i

land.lhs.true.i.i64.i:                            ; preds = %if.then.i61.i
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1226833920) #17, !srcloc !302
  %asmresult.i.i62.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i62.i)
  %cmp.i1.i63.i = icmp eq i32 %asmresult.i.i62.i, 0
  br i1 %cmp.i1.i63.i, label %if.end.i.i72.i, label %land.lhs.true.i.i64.i.if.then11.i.i76.i_crit_edge, !prof !295

land.lhs.true.i.i64.i.if.then11.i.i76.i_crit_edge: ; preds = %land.lhs.true.i.i64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i76.i

if.end.i.i72.i:                                   ; preds = %land.lhs.true.i.i64.i
  %call.i.i.i65.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val.i, i32 noundef 4) #11
  %29 = call i32 @llvm.read_register.i32(metadata !275) #11
  %and.i.i.i.i.i.i66.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i66.i to ptr
  %cpu_domain.i.i.i.i.i67.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i67.i) #8, !srcloc !298
  %and.i.i.i.i68.i = and i32 %31, -13
  %or.i.i.i.i69.i = or i32 %and.i.i.i.i68.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i69.i) #11, !srcloc !299
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  %call1.i.i.i70.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val.i, ptr noundef %0, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #11, !srcloc !299
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i70.i)
  %tobool4.not.i.i71.i = icmp eq i32 %call1.i.i.i70.i, 0
  br i1 %tobool4.not.i.i71.i, label %if.end27.i, label %if.end.i.i72.i.if.then11.i.i76.i_crit_edge, !prof !295

if.end.i.i72.i.if.then11.i.i76.i_crit_edge:       ; preds = %if.end.i.i72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i76.i

if.then11.i.i76.i:                                ; preds = %if.end.i.i72.i.if.then11.i.i76.i_crit_edge, %land.lhs.true.i.i64.i.if.then11.i.i76.i_crit_edge, %if.then.i61.i.if.then11.i.i76.i_crit_edge
  %res.03.i.i73.i = phi i32 [ %call1.i.i.i70.i, %if.end.i.i72.i.if.then11.i.i76.i_crit_edge ], [ 4, %if.then.i61.i.if.then11.i.i76.i_crit_edge ], [ 4, %land.lhs.true.i.i64.i.if.then11.i.i76.i_crit_edge ]
  %sub.i.i74.i = sub i32 4, %res.03.i.i73.i
  %add.ptr.i.i75.i = getelementptr i8, ptr %val.i, i32 %sub.i.i74.i
  %32 = call ptr @memset(ptr %add.ptr.i.i75.i, i32 0, i32 %res.03.i.i73.i)
  br label %ipmi_ioctl.exit

if.end27.i:                                       ; preds = %if.end.i.i72.i
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i, align 4
  %and.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool28.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool28.not.i, label %if.end27.i.if.end31.i_crit_edge, label %if.then29.i

if.end27.i.if.end31.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.end27.i
  store i8 0, ptr @ipmi_watchdog_state, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %send_heartbeat_now.i108.i) #11
  %35 = ptrtoint ptr %send_heartbeat_now.i108.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %send_heartbeat_now.i108.i, align 4, !annotation !288
  %36 = load ptr, ptr @watchdog_user, align 4
  %tobool.not.i109.i = icmp eq ptr %36, null
  br i1 %tobool.not.i109.i, label %if.then29.i._ipmi_set_timeout.exit119.i_crit_edge, label %if.end.i113.i

if.then29.i._ipmi_set_timeout.exit119.i_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_ipmi_set_timeout.exit119.i

if.end.i113.i:                                    ; preds = %if.then29.i
  %call.i.i.i110.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 2, ptr @msg_tofree, align 4
  %call.i111.i = call fastcc i32 @__ipmi_set_timeout(ptr noundef nonnull @smi_msg, ptr noundef nonnull @recv_msg, ptr noundef nonnull %send_heartbeat_now.i108.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111.i)
  %tobool1.not.i112.i = icmp eq i32 %call.i111.i, 0
  br i1 %tobool1.not.i112.i, label %if.end3.i116.i, label %if.then2.i115.i

if.then2.i115.i:                                  ; preds = %if.end.i113.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i13.i114.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 0, ptr @msg_tofree, align 4
  br label %_ipmi_set_timeout.exit119.i

if.end3.i116.i:                                   ; preds = %if.end.i113.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef nonnull @msg_wait) #11
  br label %_ipmi_set_timeout.exit119.i

_ipmi_set_timeout.exit119.i:                      ; preds = %if.end3.i116.i, %if.then2.i115.i, %if.then29.i._ipmi_set_timeout.exit119.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %send_heartbeat_now.i108.i) #11
  store i1 false, ptr @ipmi_start_timer_on_heartbeat, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %_ipmi_set_timeout.exit119.i, %if.end27.i.if.end31.i_crit_edge
  %37 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i, align 4
  %and32.i = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end31.i.ipmi_ioctl.exit_crit_edge, label %if.then34.i

if.end31.i.ipmi_ioctl.exit_crit_edge:             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipmi_ioctl.exit

if.then34.i:                                      ; preds = %if.end31.i
  %39 = load i8, ptr @action_val, align 1
  store i8 %39, ptr @ipmi_watchdog_state, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %send_heartbeat_now.i120.i) #11
  %40 = ptrtoint ptr %send_heartbeat_now.i120.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %send_heartbeat_now.i120.i, align 4, !annotation !288
  %41 = load ptr, ptr @watchdog_user, align 4
  %tobool.not.i121.i = icmp eq ptr %41, null
  br i1 %tobool.not.i121.i, label %if.then34.i._ipmi_set_timeout.exit132.i_crit_edge, label %if.end.i125.i

if.then34.i._ipmi_set_timeout.exit132.i_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_ipmi_set_timeout.exit132.i

if.end.i125.i:                                    ; preds = %if.then34.i
  %call.i.i.i122.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 2, ptr @msg_tofree, align 4
  %call.i123.i = call fastcc i32 @__ipmi_set_timeout(ptr noundef nonnull @smi_msg, ptr noundef nonnull @recv_msg, ptr noundef nonnull %send_heartbeat_now.i120.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123.i)
  %tobool1.not.i124.i = icmp eq i32 %call.i123.i, 0
  br i1 %tobool1.not.i124.i, label %if.end3.i128.i, label %if.then2.i127.i

if.then2.i127.i:                                  ; preds = %if.end.i125.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i13.i126.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 0, ptr @msg_tofree, align 4
  br label %_ipmi_set_timeout.exit132.i

if.end3.i128.i:                                   ; preds = %if.end.i125.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef nonnull @msg_wait) #11
  %call7.i129.i = call fastcc i32 @__ipmi_heartbeat() #11
  br label %_ipmi_set_timeout.exit132.i

_ipmi_set_timeout.exit132.i:                      ; preds = %if.end3.i128.i, %if.then2.i127.i, %if.then34.i._ipmi_set_timeout.exit132.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %send_heartbeat_now.i120.i) #11
  br label %ipmi_ioctl.exit

sw.bb37.i:                                        ; preds = %entry
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %val.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #11
  %call.i.i83.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i83.i, label %sw.bb37.i.ipmi_ioctl.exit_crit_edge, label %if.end.i.i87.i

sw.bb37.i.ipmi_ioctl.exit_crit_edge:              ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipmi_ioctl.exit

if.end.i.i87.i:                                   ; preds = %sw.bb37.i
  %43 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1226833920) #17, !srcloc !296
  %asmresult.i.i85.i = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i85.i)
  %cmp.i6.i86.i = icmp eq i32 %asmresult.i.i85.i, 0
  br i1 %cmp.i6.i86.i, label %copy_to_user.exit92.i, label %if.end.i.i87.i.ipmi_ioctl.exit_crit_edge

if.end.i.i87.i.ipmi_ioctl.exit_crit_edge:         ; preds = %if.end.i.i87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipmi_ioctl.exit

copy_to_user.exit92.i:                            ; preds = %if.end.i.i87.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i88.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val.i, i32 noundef 4) #11
  %call.i12.i.i89.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %val.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i89.i)
  %tobool39.not.i = icmp eq i32 %call.i12.i.i89.i, 0
  %spec.select149.i = select i1 %tobool39.not.i, i32 0, i32 -14
  br label %ipmi_ioctl.exit

ipmi_ioctl.exit:                                  ; preds = %copy_to_user.exit92.i, %if.end.i.i87.i.ipmi_ioctl.exit_crit_edge, %sw.bb37.i.ipmi_ioctl.exit_crit_edge, %_ipmi_set_timeout.exit132.i, %if.end31.i.ipmi_ioctl.exit_crit_edge, %if.then11.i.i76.i, %sw.bb21.i, %copy_to_user.exit57.i, %if.end.i.i52.i.ipmi_ioctl.exit_crit_edge, %if.end59.i.i47.i.ipmi_ioctl.exit_crit_edge, %_ipmi_set_timeout.exit107.i, %if.then11.i.i41.i, %copy_to_user.exit22.i, %if.end.i.i17.i.ipmi_ioctl.exit_crit_edge, %if.end59.i.i12.i.ipmi_ioctl.exit_crit_edge, %_ipmi_set_timeout.exit.i, %if.then11.i.i.i, %copy_to_user.exit.i, %if.end.i.i.i.ipmi_ioctl.exit_crit_edge, %if.end59.i.i.i.ipmi_ioctl.exit_crit_edge, %entry.ipmi_ioctl.exit_crit_edge
  %retval.0.i = phi i32 [ %call22.i, %sw.bb21.i ], [ %retval.0.i106.i, %_ipmi_set_timeout.exit107.i ], [ %retval.0.i.i, %_ipmi_set_timeout.exit.i ], [ 0, %_ipmi_set_timeout.exit132.i ], [ 0, %if.end31.i.ipmi_ioctl.exit_crit_edge ], [ -515, %entry.ipmi_ioctl.exit_crit_edge ], [ -14, %if.end59.i.i.i.ipmi_ioctl.exit_crit_edge ], [ -14, %if.end.i.i.i.ipmi_ioctl.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.end59.i.i12.i.ipmi_ioctl.exit_crit_edge ], [ -14, %if.end.i.i17.i.ipmi_ioctl.exit_crit_edge ], [ -14, %if.then11.i.i41.i ], [ -14, %if.end59.i.i47.i.ipmi_ioctl.exit_crit_edge ], [ -14, %if.end.i.i52.i.ipmi_ioctl.exit_crit_edge ], [ -14, %if.then11.i.i76.i ], [ -14, %sw.bb37.i.ipmi_ioctl.exit_crit_edge ], [ -14, %if.end.i.i87.i.ipmi_ioctl.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ], [ %spec.select147.i, %copy_to_user.exit22.i ], [ %spec.select148.i, %copy_to_user.exit57.i ], [ %spec.select149.i, %copy_to_user.exit92.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  call void @mutex_unlock(ptr noundef nonnull @ipmi_watchdog_mutex) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_open(ptr noundef %ino, ptr noundef %filep) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %ino, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %and.i)
  %cond = icmp eq i32 %and.i, 130
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @ipmi_wdog_open) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ipmi_start_timer_on_heartbeat, align 4
  %call2 = tail call i32 @stream_open(ptr noundef %ino, ptr noundef %filep) #11
  br label %return

return:                                           ; preds = %if.end, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %sw.bb.return_crit_edge ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_close(ptr nocapture noundef readonly %ino, ptr nocapture noundef readnone %filep) #3 align 64 {
entry:
  %send_heartbeat_now.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %ino, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 130
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %.b = load i1, ptr @expect_close, align 1
  br i1 %.b, label %if.then3, label %do.end

if.then3:                                         ; preds = %if.then
  tail call void @mutex_lock_nested(ptr noundef nonnull @ipmi_watchdog_mutex, i32 noundef 0) #11
  store i8 0, ptr @ipmi_watchdog_state, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %send_heartbeat_now.i) #11
  %2 = ptrtoint ptr %send_heartbeat_now.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %send_heartbeat_now.i, align 4, !annotation !288
  %3 = load ptr, ptr @watchdog_user, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then3._ipmi_set_timeout.exit_crit_edge, label %if.end.i

if.then3._ipmi_set_timeout.exit_crit_edge:        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %_ipmi_set_timeout.exit

if.end.i:                                         ; preds = %if.then3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 2, ptr @msg_tofree, align 4
  %call.i = call fastcc i32 @__ipmi_set_timeout(ptr noundef nonnull @smi_msg, ptr noundef nonnull @recv_msg, ptr noundef nonnull %send_heartbeat_now.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i13.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 0, ptr @msg_tofree, align 4
  br label %_ipmi_set_timeout.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef nonnull @msg_wait) #11
  br label %_ipmi_set_timeout.exit

_ipmi_set_timeout.exit:                           ; preds = %if.end3.i, %if.then2.i, %if.then3._ipmi_set_timeout.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %send_heartbeat_now.i) #11
  call void @mutex_unlock(ptr noundef nonnull @ipmi_watchdog_mutex) #11
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @ipmi_watchdog_mutex, i32 noundef 0) #11
  %call.i8 = tail call fastcc i32 @_ipmi_heartbeat() #11
  tail call void @mutex_unlock(ptr noundef nonnull @ipmi_watchdog_mutex) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %_ipmi_set_timeout.exit
  call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @ipmi_wdog_open) #11
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  store i1 false, ptr @expect_close, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %file, i32 noundef %on, ptr noundef nonnull @fasync_q) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ipmi_heartbeat() unnamed_addr #3 align 64 {
entry:
  %send_heartbeat_now.i11 = alloca i32, align 4
  %send_heartbeat_now.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @watchdog_user, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %.b = load i1, ptr @ipmi_start_timer_on_heartbeat, align 4
  br i1 %.b, label %if.end.i, label %if.else

if.end.i:                                         ; preds = %if.end
  store i1 false, ptr @ipmi_start_timer_on_heartbeat, align 4
  %1 = load i8, ptr @action_val, align 1
  store i8 %1, ptr @ipmi_watchdog_state, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %send_heartbeat_now.i) #11
  %2 = ptrtoint ptr %send_heartbeat_now.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %send_heartbeat_now.i, align 4, !annotation !288
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 2, ptr @msg_tofree, align 4
  %call.i = call fastcc i32 @__ipmi_set_timeout(ptr noundef nonnull @smi_msg, ptr noundef nonnull @recv_msg, ptr noundef nonnull %send_heartbeat_now.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i13.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 0, ptr @msg_tofree, align 4
  br label %_ipmi_set_timeout.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef nonnull @msg_wait) #11
  %call7.i = call fastcc i32 @__ipmi_heartbeat() #11
  br label %_ipmi_set_timeout.exit

_ipmi_set_timeout.exit:                           ; preds = %if.end3.i, %if.then2.i
  %retval.0.i = phi i32 [ %call.i, %if.then2.i ], [ %call7.i, %if.end3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %send_heartbeat_now.i) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @pretimeout_since_last_heartbeat, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !303
  tail call void @llvm.prefetch.p0(ptr nonnull @pretimeout_since_last_heartbeat, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.else
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pretimeout_since_last_heartbeat, ptr nonnull @pretimeout_since_last_heartbeat, i32 1, i32 0, ptr nonnull elementtype(i32) @pretimeout_since_last_heartbeat) #11, !srcloc !304
  %asmresult.i.i.i = extractvalue { i32, i32 } %3, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !305
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %tobool4.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %tobool4.not, label %if.else7, label %if.then5

if.then5:                                         ; preds = %atomic_cmpxchg.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %send_heartbeat_now.i11) #11
  %4 = ptrtoint ptr %send_heartbeat_now.i11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %send_heartbeat_now.i11, align 4, !annotation !288
  %5 = load ptr, ptr @watchdog_user, align 4
  %tobool.not.i12 = icmp eq ptr %5, null
  br i1 %tobool.not.i12, label %if.then5._ipmi_set_timeout.exit22_crit_edge, label %if.end.i16

if.then5._ipmi_set_timeout.exit22_crit_edge:      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %_ipmi_set_timeout.exit22

if.end.i16:                                       ; preds = %if.then5
  %call.i.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 2, ptr @msg_tofree, align 4
  %call.i14 = call fastcc i32 @__ipmi_set_timeout(ptr noundef nonnull @smi_msg, ptr noundef nonnull @recv_msg, ptr noundef nonnull %send_heartbeat_now.i11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool1.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool1.not.i15, label %if.end3.i19, label %if.then2.i18

if.then2.i18:                                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i13.i17 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 0, ptr @msg_tofree, align 4
  br label %_ipmi_set_timeout.exit22

if.end3.i19:                                      ; preds = %if.end.i16
  call void @wait_for_completion(ptr noundef nonnull @msg_wait) #11
  %6 = ptrtoint ptr %send_heartbeat_now.i11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %send_heartbeat_now.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.i.not = icmp eq i32 %7, 0
  br i1 %tobool4.not.i.not, label %if.end3.i19._ipmi_set_timeout.exit22_crit_edge, label %if.then6.i

if.end3.i19._ipmi_set_timeout.exit22_crit_edge:   ; preds = %if.end3.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %_ipmi_set_timeout.exit22

if.then6.i:                                       ; preds = %if.end3.i19
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i20 = call fastcc i32 @__ipmi_heartbeat() #11
  br label %_ipmi_set_timeout.exit22

_ipmi_set_timeout.exit22:                         ; preds = %if.then6.i, %if.end3.i19._ipmi_set_timeout.exit22_crit_edge, %if.then2.i18, %if.then5._ipmi_set_timeout.exit22_crit_edge
  %retval.0.i21 = phi i32 [ %call.i14, %if.then2.i18 ], [ -19, %if.then5._ipmi_set_timeout.exit22_crit_edge ], [ %call7.i20, %if.then6.i ], [ 0, %if.end3.i19._ipmi_set_timeout.exit22_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %send_heartbeat_now.i11) #11
  br label %cleanup

if.else7:                                         ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call fastcc i32 @__ipmi_heartbeat()
  br label %cleanup

cleanup:                                          ; preds = %if.else7, %_ipmi_set_timeout.exit22, %_ipmi_set_timeout.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %retval.0.i, %_ipmi_set_timeout.exit ], [ %retval.0.i21, %_ipmi_set_timeout.exit22 ], [ %call8, %if.else7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ipmi_heartbeat() unnamed_addr #3 align 64 {
entry:
  %send_heartbeat_now.i = alloca i32, align 4
  %msg = alloca %struct.kernel_ipmi_msg, align 8
  %addr = alloca %struct.ipmi_system_interface_addr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #11
  %0 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #11
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %addr, align 8, !annotation !288
  %5 = load i8, ptr @ipmi_watchdog_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp50 = icmp eq i8 %5, 0
  br i1 %cmp50, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %channel = getelementptr inbounds %struct.ipmi_system_interface_addr, ptr %addr, i32 0, i32 1
  %lun = getelementptr inbounds %struct.ipmi_system_interface_addr, ptr %addr, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %_ipmi_set_timeout.exit.if.end_crit_edge, %if.end.lr.ph
  %timeout_retries.051 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %_ipmi_set_timeout.exit.if.end_crit_edge ]
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 2, ptr @msg_tofree, align 4
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12, ptr %addr, align 8
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 15, ptr %channel, align 4
  %8 = ptrtoint ptr %lun to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %lun, align 2
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %msg, align 8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 34, ptr %0, align 1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %1, align 2
  %13 = load ptr, ptr @watchdog_user, align 4
  %call = call i32 @ipmi_request_supply_msgs(ptr noundef %13, ptr noundef nonnull %addr, i32 noundef 0, ptr noundef nonnull %msg, ptr noundef null, ptr noundef nonnull @smi_msg, ptr noundef nonnull @recv_msg, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i42 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 0, ptr @msg_tofree, align 4
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %call) #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @wait_for_completion(ptr noundef nonnull @msg_wait) #11
  %14 = load ptr, ptr getelementptr inbounds (%struct.ipmi_recv_msg, ptr @recv_msg, i32 0, i32 5, i32 3), align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %16, label %cleanup.loopexit85 [
    i8 -128, label %if.then8
    i8 0, label %if.end4.cleanup_crit_edge
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %if.end4
  %inc = add nuw nsw i32 %timeout_retries.051, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %timeout_retries.051)
  %exitcond = icmp eq i32 %timeout_retries.051, 3
  br i1 %exitcond, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #15
  br label %cleanup

if.end17:                                         ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %send_heartbeat_now.i) #11
  %18 = ptrtoint ptr %send_heartbeat_now.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %send_heartbeat_now.i, align 4, !annotation !288
  %19 = load ptr, ptr @watchdog_user, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end17.do.end23_crit_edge, label %if.end.i

if.end17.do.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

if.end.i:                                         ; preds = %if.end17
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 2, ptr @msg_tofree, align 4
  %call.i = call fastcc i32 @__ipmi_set_timeout(ptr noundef nonnull @smi_msg, ptr noundef nonnull @recv_msg, ptr noundef nonnull %send_heartbeat_now.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %_ipmi_set_timeout.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i13.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  store volatile i32 0, ptr @msg_tofree, align 4
  br label %do.end23

_ipmi_set_timeout.exit:                           ; preds = %if.end.i
  call void @wait_for_completion(ptr noundef nonnull @msg_wait) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %send_heartbeat_now.i) #11
  %20 = load i8, ptr @ipmi_watchdog_state, align 1
  %cmp = icmp eq i8 %20, 0
  br i1 %cmp, label %_ipmi_set_timeout.exit.cleanup_crit_edge, label %_ipmi_set_timeout.exit.if.end_crit_edge

_ipmi_set_timeout.exit.if.end_crit_edge:          ; preds = %_ipmi_set_timeout.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

_ipmi_set_timeout.exit.cleanup_crit_edge:         ; preds = %_ipmi_set_timeout.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end23:                                         ; preds = %if.then2.i, %if.end17.do.end23_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.then2.i ], [ -19, %if.end17.do.end23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %send_heartbeat_now.i) #11
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #15
  br label %cleanup

cleanup.loopexit85:                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit85, %do.end23, %_ipmi_set_timeout.exit.cleanup_crit_edge, %do.end14, %if.end4.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then2 ], [ -5, %do.end14 ], [ %retval.0.i.ph, %do.end23 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %cleanup.loopexit85 ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %_ipmi_set_timeout.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msg_free_smi(ptr nocapture noundef readnone %msg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !285
  tail call void @llvm.prefetch.p0(ptr nonnull @msg_tofree, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @msg_tofree, ptr nonnull @msg_tofree, i32 1, ptr nonnull elementtype(i32) @msg_tofree) #11, !srcloc !286
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %1 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then1, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @complete(ptr noundef nonnull @msg_wait) #11
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msg_free_recv(ptr nocapture noundef readnone %msg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msg_tofree, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !285
  tail call void @llvm.prefetch.p0(ptr nonnull @msg_tofree, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @msg_tofree, ptr nonnull @msg_tofree, i32 1, ptr nonnull elementtype(i32) @msg_tofree) #11, !srcloc !286
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %1 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then1, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @complete(ptr noundef nonnull @msg_wait) #11
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_param_timeout(ptr noundef %val, ptr nocapture noundef readonly %kp) #3 align 64 {
entry:
  %endp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #11
  %0 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp, align 4, !annotation !288
  %tobool.not = icmp eq ptr %val, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @simple_strtoul(ptr noundef nonnull %val, ptr noundef nonnull %endp, i32 noundef 0) #11
  %1 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %endp, align 4
  %cmp = icmp eq ptr %2, %val
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %3 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %5, align 4
  %7 = load ptr, ptr @watchdog_user, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.then4

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = call fastcc i32 @ipmi_set_timeout(i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5, %if.then4 ], [ 0, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_param_str(ptr nocapture noundef readonly %val, ptr nocapture noundef readonly %kp) #3 align 64 {
entry:
  %valcp = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %valcp) #11
  %3 = getelementptr inbounds [16 x i8], ptr %valcp, i32 0, i32 15
  %call = call ptr @strncpy(ptr noundef nonnull %valcp, ptr noundef %val, i32 noundef 15)
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %3, align 1
  %call.i = call ptr @strim(ptr noundef nonnull %valcp) #11
  %call3 = call i32 %2(ptr noundef %call.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr @watchdog_user, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.out_crit_edge, label %if.then5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = call fastcc i32 @ipmi_set_timeout(i32 noundef 1)
  br label %out

out:                                              ; preds = %if.then5, %if.end.out_crit_edge, %entry.out_crit_edge
  %rv.0 = phi i32 [ %call3, %entry.out_crit_edge ], [ %call6, %if.then5 ], [ 0, %if.end.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %valcp) #11
  ret i32 %rv.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_param_str(ptr noundef %buffer, ptr nocapture noundef readonly %kp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call i32 %2(ptr noundef null, ptr noundef %buffer) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @strlen(ptr noundef %buffer) #14
  %inc = add i32 %call1, 1
  %arrayidx = getelementptr i8, ptr %buffer, i32 %call1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr i8, ptr %buffer, i32 %inc
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx2, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %inc, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_new_smi(i32 noundef %if_num, ptr nocapture noundef readnone %device) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ipmi_register_watchdog(i32 noundef %if_num)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_smi_gone(i32 noundef %if_num) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ipmi_unregister_watchdog(i32 noundef %if_num)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdog_reboot_handler(ptr nocapture noundef readnone %this, i32 noundef %code, ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @watchdog_user, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %land.lhs.true

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %.b = load i1, ptr @wdog_reboot_handler.reboot_event_handled, align 4
  br i1 %.b, label %land.lhs.true.if.end13_crit_edge, label %if.then

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true
  store i1 true, ptr @wdog_reboot_handler.reboot_event_handled, align 4
  %1 = and i32 %code, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp eq i32 %1, 2
  br i1 %switch, label %if.then.if.end13.sink.split_crit_edge, label %if.else

if.then.if.end13.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.sink.split

if.else:                                          ; preds = %if.then
  %2 = load i8, ptr @ipmi_watchdog_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp4.not = icmp eq i8 %2, 0
  br i1 %cmp4.not, label %if.else.if.end13_crit_edge, label %if.then6

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then6:                                         ; preds = %if.else
  %3 = load i32, ptr @timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %3)
  %cmp7 = icmp slt i32 %3, 120
  br i1 %cmp7, label %if.then9, label %if.then6.if.end_crit_edge

if.then6.if.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  store i32 120, ptr @timeout, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then6.if.end_crit_edge
  store i32 0, ptr @pretimeout, align 4
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.end, %if.then.if.end13.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.end ], [ 0, %if.then.if.end13.sink.split_crit_edge ]
  store i8 %.sink, ptr @ipmi_watchdog_state, align 1
  %call = tail call fastcc i32 @ipmi_set_timeout(i32 noundef 0)
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.else.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_smi_watcher_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !40, !42, !44, !46, !48, !49, !51, !53, !55, !57, !59, !60, !62, !64, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !99, !101, !103, !104, !106, !108, !109, !111, !113, !115, !117, !118, !119, !120, !122, !124, !125, !126, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !150, !152, !154, !156, !158, !159, !160, !162, !164, !166, !168, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !188, !190, !191, !192, !193, !195, !197, !199, !200, !202, !204, !205, !206, !208, !209, !211, !212, !213, !214, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !248, !249, !250, !252, !254, !256, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274}
!llvm.named.register.sp = !{!275}
!llvm.module.flags = !{!276, !277, !278, !279, !280, !281, !282, !283}
!llvm.ident = !{!284}

!0 = !{ptr @__param_ifnum_to_use, !1, !"__param_ifnum_to_use", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 274, i32 1}
!2 = !{ptr @__UNIQUE_ID_ifnum_to_usetype223, !1, !"__UNIQUE_ID_ifnum_to_usetype223", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ifnum_to_use224, !4, !"__UNIQUE_ID_ifnum_to_use224", i1 false, i1 false}
!4 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 275, i32 1}
!5 = !{ptr @__param_timeout, !6, !"__param_timeout", i1 false, i1 false}
!6 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 279, i32 1}
!7 = !{ptr @__UNIQUE_ID_timeouttype225, !6, !"__UNIQUE_ID_timeouttype225", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_timeout226, !9, !"__UNIQUE_ID_timeout226", i1 false, i1 false}
!9 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 280, i32 1}
!10 = !{ptr @__param_pretimeout, !11, !"__param_pretimeout", i1 false, i1 false}
!11 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 282, i32 1}
!12 = !{ptr @__UNIQUE_ID_pretimeouttype227, !11, !"__UNIQUE_ID_pretimeouttype227", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_pretimeout228, !14, !"__UNIQUE_ID_pretimeout228", i1 false, i1 false}
!14 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 283, i32 1}
!15 = !{ptr @__param_panic_wdt_timeout, !16, !"__param_panic_wdt_timeout", i1 false, i1 false}
!16 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 285, i32 1}
!17 = !{ptr @__UNIQUE_ID_panic_wdt_timeouttype229, !16, !"__UNIQUE_ID_panic_wdt_timeouttype229", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_panic_wdt_timeout230, !19, !"__UNIQUE_ID_panic_wdt_timeout230", i1 false, i1 false}
!19 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 286, i32 1}
!20 = !{ptr @__param_action, !21, !"__param_action", i1 false, i1 false}
!21 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 288, i32 1}
!22 = !{ptr @__UNIQUE_ID_action231, !23, !"__UNIQUE_ID_action231", i1 false, i1 false}
!23 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 289, i32 1}
!24 = !{ptr @__param_preaction, !25, !"__param_preaction", i1 false, i1 false}
!25 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 292, i32 1}
!26 = !{ptr @__UNIQUE_ID_preaction232, !27, !"__UNIQUE_ID_preaction232", i1 false, i1 false}
!27 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 293, i32 1}
!28 = !{ptr @__param_preop, !29, !"__param_preop", i1 false, i1 false}
!29 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 296, i32 1}
!30 = !{ptr @__UNIQUE_ID_preop233, !31, !"__UNIQUE_ID_preop233", i1 false, i1 false}
!31 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 297, i32 1}
!32 = !{ptr @__param_start_now, !33, !"__param_start_now", i1 false, i1 false}
!33 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 300, i32 1}
!34 = !{ptr @__UNIQUE_ID_start_nowtype234, !33, !"__UNIQUE_ID_start_nowtype234", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_start_now235, !36, !"__UNIQUE_ID_start_now235", i1 false, i1 false}
!36 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 301, i32 1}
!37 = !{ptr @__param_nowayout, !38, !"__param_nowayout", i1 false, i1 false}
!38 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 304, i32 1}
!39 = !{ptr @__UNIQUE_ID_nowayouttype236, !38, !"__UNIQUE_ID_nowayouttype236", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_nowayout237, !41, !"__UNIQUE_ID_nowayout237", i1 false, i1 false}
!41 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 305, i32 1}
!42 = !{ptr @__exitcall_ipmi_wdog_exit, !43, !"__exitcall_ipmi_wdog_exit", i1 false, i1 false}
!43 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1348, i32 1}
!44 = !{ptr @__initcall__kmod_ipmi_watchdog__239_1349_ipmi_wdog_init6, !45, !"__initcall__kmod_ipmi_watchdog__239_1349_ipmi_wdog_init6", i1 false, i1 false}
!45 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1349, i32 1}
!46 = !{ptr @__UNIQUE_ID_file240, !47, !"__UNIQUE_ID_file240", i1 false, i1 false}
!47 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1350, i32 1}
!48 = !{ptr @__UNIQUE_ID_license241, !47, !"__UNIQUE_ID_license241", i1 false, i1 false}
!49 = !{ptr @__UNIQUE_ID_author242, !50, !"__UNIQUE_ID_author242", i1 false, i1 false}
!50 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1351, i32 1}
!51 = !{ptr @__UNIQUE_ID_description243, !52, !"__UNIQUE_ID_description243", i1 false, i1 false}
!52 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1352, i32 1}
!53 = !{ptr @watchdog_ifnum, !54, !"watchdog_ifnum", i1 false, i1 false}
!54 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 129, i32 12}
!55 = !{ptr @pretimeout, !56, !"pretimeout", i1 false, i1 false}
!56 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 135, i32 12}
!57 = !{ptr @start_now, !58, !"start_now", i1 false, i1 false}
!58 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 174, i32 12}
!59 = !{ptr @__param_str_ifnum_to_use, !1, !"__param_str_ifnum_to_use", i1 false, i1 false}
!60 = !{ptr @param_ops_wdog_ifnum, !61, !"param_ops_wdog_ifnum", i1 false, i1 false}
!61 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 262, i32 38}
!62 = !{ptr @.str, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1002, i32 3}
!64 = !{ptr @.str.1, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.2, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ipmi_register_watchdog._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @ipmi_register_watchdog._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.4, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1010, i32 3}
!70 = !{ptr @ipmi_register_watchdog._entry.3, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ipmi_register_watchdog._entry_ptr.5, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.7, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1019, i32 3}
!74 = !{ptr @ipmi_register_watchdog._entry.6, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ipmi_register_watchdog._entry_ptr.8, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.10, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1066, i32 3}
!78 = !{ptr @ipmi_register_watchdog._entry.9, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ipmi_register_watchdog._entry_ptr.11, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @watchdog_user, !81, !"watchdog_user", i1 false, i1 false}
!81 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 128, i32 26}
!82 = !{ptr @ipmi_hndlrs, !83, !"ipmi_hndlrs", i1 false, i1 false}
!83 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 982, i32 36}
!84 = !{ptr @.str.12, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 928, i32 3}
!86 = !{ptr @.str.13, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ipmi_wdog_msg_handler._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @ipmi_wdog_msg_handler._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.15, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 930, i32 3}
!91 = !{ptr @ipmi_wdog_msg_handler._entry.14, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ipmi_wdog_msg_handler._entry_ptr.16, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.17, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 942, i32 11}
!95 = !{ptr @preaction_val, !96, !"preaction_val", i1 false, i1 false}
!96 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 145, i32 22}
!97 = !{ptr @preop_val, !98, !"preop_val", i1 false, i1 false}
!98 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 149, i32 22}
!99 = !{ptr @preop_panic_excl, !100, !"preop_panic_excl", i1 false, i1 false}
!100 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 327, i32 17}
!101 = !{ptr @.str.18, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 152, i32 8}
!103 = !{ptr @ipmi_read_lock, !102, !"ipmi_read_lock", i1 false, i1 false}
!104 = !{ptr @data_to_read, !105, !"data_to_read", i1 false, i1 false}
!105 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 153, i32 13}
!106 = !{ptr @.str.19, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 154, i32 8}
!108 = !{ptr @read_q, !107, !"read_q", i1 false, i1 false}
!109 = !{ptr @fasync_q, !110, !"fasync_q", i1 false, i1 false}
!110 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 155, i32 30}
!111 = !{ptr @pretimeout_since_last_heartbeat, !112, !"pretimeout_since_last_heartbeat", i1 false, i1 false}
!112 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 156, i32 17}
!113 = distinct !{null, !114, !"panic_event_handled", i1 false, i1 false}
!114 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 963, i32 13}
!115 = !{ptr @.str.20, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 546, i32 3}
!117 = !{ptr @.str.21, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @panic_halt_ipmi_set_timeout._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @panic_halt_ipmi_set_timeout._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @panic_done_count, !121, !"panic_done_count", i1 false, i1 false}
!121 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 467, i32 17}
!122 = !{ptr @.str.22, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 421, i32 3}
!124 = !{ptr @.str.23, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @__ipmi_set_timeout._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @__ipmi_set_timeout._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @panic_halt_smi_msg, !128, !"panic_halt_smi_msg", i1 false, i1 false}
!128 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 519, i32 28}
!129 = !{ptr @panic_halt_recv_msg, !130, !"panic_halt_recv_msg", i1 false, i1 false}
!130 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 522, i32 29}
!131 = !{ptr @panic_halt_heartbeat_smi_msg, !132, !"panic_halt_heartbeat_smi_msg", i1 false, i1 false}
!132 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 478, i32 28}
!133 = !{ptr @panic_halt_heartbeat_recv_msg, !134, !"panic_halt_heartbeat_recv_msg", i1 false, i1 false}
!134 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 481, i32 29}
!135 = !{ptr @ipmi_version_major, !136, !"ipmi_version_major", i1 false, i1 false}
!136 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 323, i32 22}
!137 = !{ptr @ipmi_version_minor, !138, !"ipmi_version_minor", i1 false, i1 false}
!138 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 324, i32 22}
!139 = !{ptr @.str.24, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 919, i32 11}
!141 = !{ptr @ipmi_wdog_miscdev, !142, !"ipmi_wdog_miscdev", i1 false, i1 false}
!142 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 917, i32 26}
!143 = !{ptr @ipmi_wdog_fops, !144, !"ipmi_wdog_fops", i1 false, i1 false}
!144 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 904, i32 37}
!145 = distinct !{null, !146, !"__already_done", i1 false, i1 false}
!146 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 814, i32 4}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!149 = distinct !{null, !148, !"<string literal>", i1 false, i1 false}
!150 = distinct !{null, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!152 = !{ptr @.str.27, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!154 = distinct !{null, !155, !"expect_close", i1 false, i1 false}
!155 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 157, i32 13}
!156 = !{ptr @.str.28, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 125, i32 8}
!158 = !{ptr @.str.29, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @ipmi_watchdog_mutex, !157, !"ipmi_watchdog_mutex", i1 false, i1 false}
!160 = distinct !{null, !161, !"ipmi_start_timer_on_heartbeat", i1 false, i1 false}
!161 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 320, i32 12}
!162 = !{ptr @msg_tofree, !163, !"msg_tofree", i1 false, i1 false}
!163 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 341, i32 17}
!164 = !{ptr @smi_msg, !165, !"smi_msg", i1 false, i1 false}
!165 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 357, i32 28}
!166 = !{ptr @recv_msg, !167, !"recv_msg", i1 false, i1 false}
!167 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 360, i32 29}
!168 = !{ptr @.str.30, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 342, i32 8}
!170 = !{ptr @msg_wait, !169, !"msg_wait", i1 false, i1 false}
!171 = !{ptr @.str.31, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 590, i32 3}
!173 = !{ptr @.str.32, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @__ipmi_heartbeat._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @__ipmi_heartbeat._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.34, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 600, i32 4}
!178 = !{ptr @__ipmi_heartbeat._entry.33, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @__ipmi_heartbeat._entry_ptr.35, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.37, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 615, i32 4}
!182 = !{ptr @__ipmi_heartbeat._entry.36, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @__ipmi_heartbeat._entry_ptr.38, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @ident, !185, !"ident", i1 false, i1 false}
!185 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 671, i32 29}
!186 = !{ptr @ipmi_wdog_open, !187, !"ipmi_wdog_open", i1 false, i1 false}
!187 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 312, i32 22}
!188 = !{ptr @.str.39, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 893, i32 4}
!190 = !{ptr @.str.40, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @ipmi_close._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @ipmi_close._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @action_val, !194, !"action_val", i1 false, i1 false}
!194 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 141, i32 22}
!195 = !{ptr @ipmi_watchdog_state, !196, !"ipmi_watchdog_state", i1 false, i1 false}
!196 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 309, i32 22}
!197 = !{ptr @ifnum_to_use, !198, !"ifnum_to_use", i1 false, i1 false}
!198 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 159, i32 12}
!199 = !{ptr @__param_str_timeout, !6, !"__param_str_timeout", i1 false, i1 false}
!200 = !{ptr @param_ops_timeout, !201, !"param_ops_timeout", i1 false, i1 false}
!201 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 195, i32 38}
!202 = !{ptr @timeout, !203, !"timeout", i1 false, i1 false}
!203 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 132, i32 12}
!204 = !{ptr @__param_str_pretimeout, !11, !"__param_str_pretimeout", i1 false, i1 false}
!205 = !{ptr @__param_str_panic_wdt_timeout, !16, !"__param_str_panic_wdt_timeout", i1 false, i1 false}
!206 = !{ptr @panic_wdt_timeout, !207, !"panic_wdt_timeout", i1 false, i1 false}
!207 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 138, i32 12}
!208 = !{ptr @__param_str_action, !21, !"__param_str_action", i1 false, i1 false}
!209 = !{ptr @param_ops_str, !210, !"param_ops_str", i1 false, i1 false}
!210 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 269, i32 38}
!211 = !{ptr @__param_str_preaction, !25, !"__param_str_preaction", i1 false, i1 false}
!212 = !{ptr @__param_str_preop, !29, !"__param_str_preop", i1 false, i1 false}
!213 = !{ptr @__param_str_start_now, !33, !"__param_str_start_now", i1 false, i1 false}
!214 = !{ptr @__param_str_nowayout, !38, !"__param_str_nowayout", i1 false, i1 false}
!215 = !{ptr @nowayout, !216, !"nowayout", i1 false, i1 false}
!216 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 126, i32 13}
!217 = !{ptr @.str.41, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1209, i32 20}
!219 = !{ptr @.str.42, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1211, i32 25}
!221 = !{ptr @.str.43, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1213, i32 25}
!223 = !{ptr @.str.44, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1215, i32 25}
!225 = !{ptr @action, !226, !"action", i1 false, i1 false}
!226 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 143, i32 13}
!227 = !{ptr @.str.45, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1231, i32 20}
!229 = !{ptr @.str.46, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1233, i32 25}
!231 = !{ptr @.str.47, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1239, i32 25}
!233 = !{ptr @preaction, !234, !"preaction", i1 false, i1 false}
!234 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 147, i32 13}
!235 = !{ptr @.str.48, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1255, i32 20}
!237 = !{ptr @.str.49, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1257, i32 25}
!239 = !{ptr @.str.50, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1259, i32 25}
!241 = !{ptr @preop, !242, !"preop", i1 false, i1 false}
!242 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 151, i32 13}
!243 = !{ptr @smi_watcher, !244, !"smi_watcher", i1 false, i1 false}
!244 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1195, i32 32}
!245 = !{ptr @.str.51, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1103, i32 3}
!247 = !{ptr @.str.52, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @ipmi_unregister_watchdog._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @ipmi_unregister_watchdog._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @wdog_reboot_notifier, !251, !"wdog_reboot_notifier", i1 false, i1 false}
!251 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1179, i32 30}
!252 = distinct !{null, !253, !"reboot_event_handled", i1 false, i1 false}
!253 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1155, i32 13}
!254 = !{ptr @.str.53, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1302, i32 3}
!256 = !{ptr @.str.54, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @ipmi_wdog_init._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @ipmi_wdog_init._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.56, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1307, i32 3}
!261 = !{ptr @ipmi_wdog_init._entry.55, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @ipmi_wdog_init._entry_ptr.57, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.59, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1313, i32 3}
!265 = !{ptr @ipmi_wdog_init._entry.58, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @ipmi_wdog_init._entry_ptr.60, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.62, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1327, i32 3}
!269 = !{ptr @ipmi_wdog_init._entry.61, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @ipmi_wdog_init._entry_ptr.63, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.65, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/char/ipmi/ipmi_watchdog.c", i32 1331, i32 2}
!273 = !{ptr @ipmi_wdog_init._entry.64, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @ipmi_wdog_init._entry_ptr.66, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{!"sp"}
!276 = !{i32 1, !"wchar_size", i32 2}
!277 = !{i32 1, !"min_enum_size", i32 4}
!278 = !{i32 8, !"branch-target-enforcement", i32 0}
!279 = !{i32 8, !"sign-return-address", i32 0}
!280 = !{i32 8, !"sign-return-address-all", i32 0}
!281 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!282 = !{i32 7, !"uwtable", i32 1}
!283 = !{i32 7, !"frame-pointer", i32 2}
!284 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!285 = !{i64 2148459528}
!286 = !{i64 2148374237, i64 2148374269, i64 2148374298, i64 2148374332, i64 2148374363, i64 2148374386}
!287 = !{i64 2148459757}
!288 = !{!"auto-init"}
!289 = !{i64 2148456487}
!290 = !{i64 2148371772, i64 2148371804, i64 2148371833, i64 2148371867, i64 2148371898, i64 2148371921}
!291 = !{i64 2148456716}
!292 = !{i64 2148371052, i64 2148371078, i64 2148371107, i64 2148371141, i64 2148371172, i64 2148371195}
!293 = !{i64 2148373517, i64 2148373543, i64 2148373572, i64 2148373606, i64 2148373637, i64 2148373660}
!294 = !{i64 2154221514}
!295 = !{!"branch_weights", i32 2000, i32 1}
!296 = !{i64 2152475471, i64 2152475496}
!297 = !{i8 0, i8 2}
!298 = !{i64 4970345}
!299 = !{i64 4970542}
!300 = !{i64 2152455775}
!301 = !{i64 2154208029, i64 2154208309, i64 2154208643, i64 2154208977}
!302 = !{i64 2152474790, i64 2152474815}
!303 = !{i64 2148472899}
!304 = !{i64 855585, i64 855609, i64 855630, i64 855647, i64 855664}
!305 = !{i64 2148473125}
