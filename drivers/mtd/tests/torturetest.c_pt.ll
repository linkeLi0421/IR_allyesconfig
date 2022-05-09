; ModuleID = '/llk/IR_all_yes/drivers/mtd/tests/torturetest.c_pt.bc'
source_filename = "../drivers/mtd/tests/torturetest.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.50 }
%union.anon.50 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.52 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.52 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.33, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.33 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__this_module = external dso_local global %struct.module, align 128
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@eb = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_eb = internal constant %struct.kernel_param { ptr @___asan_gen_.117, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @eb } }, section "__param", align 4
@__UNIQUE_ID_ebtype201 = internal constant [16 x i8] c"parmtype=eb:int\00", section ".modinfo", align 1
@__UNIQUE_ID_eb202 = internal constant [57 x i8] c"parm=eb:eraseblock number within the selected MTD device\00", section ".modinfo", align 1
@ebcnt = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_ebcnt = internal constant %struct.kernel_param { ptr @___asan_gen_.120, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @ebcnt } }, section "__param", align 4
@__UNIQUE_ID_ebcnttype203 = internal constant [19 x i8] c"parmtype=ebcnt:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ebcnt204 = internal constant [56 x i8] c"parm=ebcnt:number of consecutive eraseblocks to torture\00", section ".modinfo", align 1
@pgcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pgcnt = internal constant %struct.kernel_param { ptr @___asan_gen_.123, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @pgcnt } }, section "__param", align 4
@__UNIQUE_ID_pgcnttype205 = internal constant [19 x i8] c"parmtype=pgcnt:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pgcnt206 = internal constant [64 x i8] c"parm=pgcnt:number of pages per eraseblock to torture (0 => all)\00", section ".modinfo", align 1
@dev = internal global { i32, [28 x i8] } { i32 -22, [28 x i8] zeroinitializer }, align 32
@__param_dev = internal constant %struct.kernel_param { ptr @___asan_gen_.126, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @dev } }, section "__param", align 4
@__UNIQUE_ID_devtype207 = internal constant [17 x i8] c"parmtype=dev:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dev208 = internal constant [34 x i8] c"parm=dev:MTD device number to use\00", section ".modinfo", align 1
@gran = internal global { i32, [28 x i8] } { i32 512, [28 x i8] zeroinitializer }, align 32
@__param_gran = internal constant %struct.kernel_param { ptr @___asan_gen_.129, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @gran } }, section "__param", align 4
@__UNIQUE_ID_grantype209 = internal constant [18 x i8] c"parmtype=gran:int\00", section ".modinfo", align 1
@__UNIQUE_ID_gran210 = internal constant [61 x i8] c"parm=gran:how often the status information should be printed\00", section ".modinfo", align 1
@check = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_check = internal constant %struct.kernel_param { ptr @___asan_gen_.132, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @check } }, section "__param", align 4
@__UNIQUE_ID_checktype211 = internal constant [19 x i8] c"parmtype=check:int\00", section ".modinfo", align 1
@__UNIQUE_ID_check212 = internal constant [49 x i8] c"parm=check:if the written data should be checked\00", section ".modinfo", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@cycles_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_cycles_count = internal constant %struct.kernel_param { ptr @___asan_gen_.135, ptr @__this_module, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @cycles_count } }, section "__param", align 4
@__UNIQUE_ID_cycles_counttype213 = internal constant [27 x i8] c"parmtype=cycles_count:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_cycles_count214 = internal constant [68 x i8] c"parm=cycles_count:how many erase cycles to do (infinite by default)\00", section ".modinfo", align 1
@__UNIQUE_ID_description215 = internal constant [40 x i8] c"description=Eraseblock torturing module\00", section ".modinfo", align 1
@__UNIQUE_ID_author216 = internal constant [55 x i8] c"author=Artem Bityutskiy, Jarkko Lavinen, Adrian Hunter\00", section ".modinfo", align 1
@__UNIQUE_ID_license217 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@tort_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tort_init\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mtd/tests/torturetest.c\00", [32 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr = internal global ptr @tort_init._entry, section ".printk_index", align 4
@tort_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016=================================================\0A\00", [43 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr.5 = internal global ptr @tort_init._entry.3, section ".printk_index", align 4
@tort_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\016mtd_torturetest: Warning: this program is trying to wear out your flash, stop it if this is not wanted.\0A\00", [53 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr.8 = internal global ptr @tort_init._entry.6, section ".printk_index", align 4
@tort_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016mtd_torturetest: Please specify a valid mtd-device via module parameter\0A\00", [53 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr.11 = internal global ptr @tort_init._entry.9, section ".printk_index", align 4
@tort_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\012mtd_torturetest: CAREFUL: This test wipes all data on the specified MTD device!\0A\00", [45 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr.14 = internal global ptr @tort_init._entry.12, section ".printk_index", align 4
@tort_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016mtd_torturetest: MTD device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr.17 = internal global ptr @tort_init._entry.15, section ".printk_index", align 4
@tort_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016mtd_torturetest: torture %d eraseblocks (%d-%d) of mtd%d\0A\00", [36 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr.20 = internal global ptr @tort_init._entry.18, section ".printk_index", align 4
@tort_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016mtd_torturetest: torturing just %d pages per eraseblock\0A\00", [37 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr.23 = internal global ptr @tort_init._entry.21, section ".printk_index", align 4
@tort_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016mtd_torturetest: write verify %s\0A\00", [60 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr.26 = internal global ptr @tort_init._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@mtd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tort_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013mtd_torturetest: error: cannot get MTD device\0A\00", [47 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr.31 = internal global ptr @tort_init._entry.29, section ".printk_index", align 4
@tort_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016mtd_torturetest: not NAND flash, assume page size is 512 bytes.\0A\00", [61 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr.34 = internal global ptr @tort_init._entry.32, section ".printk_index", align 4
@pgsize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tort_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013mtd_torturetest: error: invalid pgcnt value %d\0A\00", [46 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr.37 = internal global ptr @tort_init._entry.35, section ".printk_index", align 4
@patt_5A5 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@patt_A5A = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@patt_FF = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@check_buf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tort_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.1, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016mtd_torturetest: verify failed for 0xFF... pattern\0A\00", [42 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr.40 = internal global ptr @tort_init._entry.38, section ".printk_index", align 4
@erase_cycles = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tort_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016mtd_torturetest: verify failed for %s pattern\0A\00", [47 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr.43 = internal global ptr @tort_init._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0x55AA55...\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0xAA55AA...\00", [20 x i8] zeroinitializer }, align 32
@start = internal global { i64, [24 x i8] } zeroinitializer, align 32
@tort_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.1, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016mtd_torturetest: %08u erase cycles done, took %lu milliseconds (%lu seconds)\0A\00", [48 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr.48 = internal global ptr @tort_init._entry.46, section ".printk_index", align 4
@tort_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.1, ptr @.str.2, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016mtd_torturetest: finished after %u erase cycles\0A\00", [45 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr.51 = internal global ptr @tort_init._entry.49, section ".printk_index", align 4
@tort_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.1, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016mtd_torturetest: error %d occurred during torturing\0A\00", [41 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr.54 = internal global ptr @tort_init._entry.52, section ".printk_index", align 4
@tort_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tort_init._entry_ptr.56 = internal global ptr @tort_init._entry.55, section ".printk_index", align 4
@check_eraseblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013mtd_torturetest: single bit flip occurred at EB %d MTD reported that it was fixed.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_eraseblock\00", [47 x i8] zeroinitializer }, align 32
@check_eraseblock._entry_ptr = internal global ptr @check_eraseblock._entry, section ".printk_index", align 4
@check_eraseblock._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013mtd_torturetest: error %d while reading EB %d, read %zd\0A\00", [37 x i8] zeroinitializer }, align 32
@check_eraseblock._entry_ptr.61 = internal global ptr @check_eraseblock._entry.59, section ".printk_index", align 4
@check_eraseblock._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\013mtd_torturetest: failed to read %zd bytes from EB %d, read only %zd, but no error reported\0A\00", [34 x i8] zeroinitializer }, align 32
@check_eraseblock._entry_ptr.64 = internal global ptr @check_eraseblock._entry.62, section ".printk_index", align 4
@check_eraseblock._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013mtd_torturetest: read wrong data from EB %d\0A\00", [49 x i8] zeroinitializer }, align 32
@check_eraseblock._entry_ptr.67 = internal global ptr @check_eraseblock._entry.65, section ".printk_index", align 4
@check_eraseblock._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.58, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016mtd_torturetest: re-try reading data from EB %d\0A\00", [45 x i8] zeroinitializer }, align 32
@check_eraseblock._entry_ptr.70 = internal global ptr @check_eraseblock._entry.68, section ".printk_index", align 4
@check_eraseblock._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.58, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016mtd_torturetest: retried %d times, still errors, give-up\0A\00", [36 x i8] zeroinitializer }, align 32
@check_eraseblock._entry_ptr.73 = internal global ptr @check_eraseblock._entry.71, section ".printk_index", align 4
@check_eraseblock._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.58, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016mtd_torturetest: only attempt number %d was OK (!!!)\0A\00", [40 x i8] zeroinitializer }, align 32
@check_eraseblock._entry_ptr.76 = internal global ptr @check_eraseblock._entry.74, section ".printk_index", align 4
@report_corrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016mtd_torturetest: verify fails on %d pages, %d bytes/%d bits\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"report_corrupt\00", [17 x i8] zeroinitializer }, align 32
@report_corrupt._entry_ptr = internal global ptr @report_corrupt._entry, section ".printk_index", align 4
@report_corrupt._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"\016mtd_torturetest: The following is a list of all differences between what was read from flash and what was expected\0A\00", [42 x i8] zeroinitializer }, align 32
@report_corrupt._entry_ptr.81 = internal global ptr @report_corrupt._entry.79, section ".printk_index", align 4
@report_corrupt._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"-----------------------------------------------------------------------------------------\0A\00", [37 x i8] zeroinitializer }, align 32
@report_corrupt._entry_ptr.84 = internal global ptr @report_corrupt._entry.82, section ".printk_index", align 4
@report_corrupt._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\016mtd_torturetest: Page %zd has %d bytes/%d bits failing verify, starting at offset 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@report_corrupt._entry_ptr.87 = internal global ptr @report_corrupt._entry.85, section ".printk_index", align 4
@print_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Offset       Read                          Written\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"print_bufs\00", [21 x i8] zeroinitializer }, align 32
@print_bufs._entry_ptr = internal global ptr @print_bufs._entry, section ".printk_index", align 4
@print_bufs._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%08x: \00", [23 x i8] zeroinitializer }, align 32
@print_bufs._entry_ptr.92 = internal global ptr @print_bufs._entry.90, section ".printk_index", align 4
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"   \00", [28 x i8] zeroinitializer }, align 32
@print_bufs._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.89, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@print_bufs._entry_ptr.96 = internal global ptr @print_bufs._entry.94, section ".printk_index", align 4
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"***\00", [28 x i8] zeroinitializer }, align 32
@print_bufs._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.89, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@print_bufs._entry_ptr.100 = internal global ptr @print_bufs._entry.98, section ".printk_index", align 4
@print_bufs._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.89, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"  %s \00", [26 x i8] zeroinitializer }, align 32
@print_bufs._entry_ptr.103 = internal global ptr @print_bufs._entry.101, section ".printk_index", align 4
@print_bufs._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.89, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_bufs._entry_ptr.105 = internal global ptr @print_bufs._entry.104, section ".printk_index", align 4
@print_bufs._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.89, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@print_bufs._entry_ptr.108 = internal global ptr @print_bufs._entry.106, section ".printk_index", align 4
@.str.109 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/tests/mtd_test.h\00", [35 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.109, i32 9, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016mtd_torturetest: aborting test due to pending signal!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtdtest_relax\00", [18 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry_ptr = internal global ptr @mtdtest_relax._entry, section ".printk_index", align 4
@write_pattern._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013mtd_torturetest: error %d while writing EB %d, written %zd bytes\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"write_pattern\00", [18 x i8] zeroinitializer }, align 32
@write_pattern._entry_ptr = internal global ptr @write_pattern._entry, section ".printk_index", align 4
@write_pattern._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016mtd_torturetest: written only %zd bytes of %zd, but no error reported\0A\00", [55 x i8] zeroinitializer }, align 32
@write_pattern._entry_ptr.116 = internal global ptr @write_pattern._entry.114, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@___asan_gen_.117 = private constant [3 x i8] c"eb\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 28, i32 12 }
@___asan_gen_.120 = private constant [6 x i8] c"ebcnt\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 32, i32 12 }
@___asan_gen_.123 = private constant [6 x i8] c"pgcnt\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 36, i32 12 }
@___asan_gen_.126 = private constant [4 x i8] c"dev\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 40, i32 12 }
@___asan_gen_.129 = private constant [5 x i8] c"gran\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 44, i32 12 }
@___asan_gen_.132 = private constant [6 x i8] c"check\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 48, i32 12 }
@___asan_gen_.135 = private constant [13 x i8] c"cycles_count\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 52, i32 21 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 174, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 175, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 176, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 180, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 181, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 185, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 186, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 189, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 191, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [4 x i8] c"mtd\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 57, i32 25 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 196, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 201, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [7 x i8] c"pgsize\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 70, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 208, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [9 x i8] c"patt_5A5\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 60, i32 23 }
@___asan_gen_.231 = private unnamed_addr constant [9 x i8] c"patt_A5A\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 62, i32 23 }
@___asan_gen_.234 = private unnamed_addr constant [8 x i8] c"patt_FF\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 64, i32 23 }
@___asan_gen_.237 = private unnamed_addr constant [10 x i8] c"check_buf\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 66, i32 23 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 265, i32 6 }
@___asan_gen_.246 = private unnamed_addr constant [13 x i8] c"erase_cycles\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 68, i32 21 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 304, i32 6 }
@___asan_gen_.261 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 71, i32 16 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 324, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 335, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 349, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 350, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 104, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 107, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 113, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 120, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 126, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 130, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 137, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 387, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 389, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 400, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 403, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 421, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 423, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 424, i32 10 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 426, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 428, i32 12 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 432, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 436, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 439, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 440, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 7, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant [32 x i8] c"../drivers/mtd/tests/mtd_test.h\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 9, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 156, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.430 = private constant [35 x i8] c"../drivers/mtd/tests/torturetest.c\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 161, i32 3 }
@llvm.compiler.used = appending global [168 x ptr] [ptr @__UNIQUE_ID_author216, ptr @__UNIQUE_ID_check212, ptr @__UNIQUE_ID_checktype211, ptr @__UNIQUE_ID_cycles_count214, ptr @__UNIQUE_ID_cycles_counttype213, ptr @__UNIQUE_ID_description215, ptr @__UNIQUE_ID_dev208, ptr @__UNIQUE_ID_devtype207, ptr @__UNIQUE_ID_eb202, ptr @__UNIQUE_ID_ebcnt204, ptr @__UNIQUE_ID_ebcnttype203, ptr @__UNIQUE_ID_ebtype201, ptr @__UNIQUE_ID_gran210, ptr @__UNIQUE_ID_grantype209, ptr @__UNIQUE_ID_license217, ptr @__UNIQUE_ID_pgcnt206, ptr @__UNIQUE_ID_pgcnttype205, ptr @__param_check, ptr @__param_cycles_count, ptr @__param_dev, ptr @__param_eb, ptr @__param_ebcnt, ptr @__param_gran, ptr @__param_pgcnt, ptr @check_eraseblock._entry, ptr @check_eraseblock._entry.59, ptr @check_eraseblock._entry.62, ptr @check_eraseblock._entry.65, ptr @check_eraseblock._entry.68, ptr @check_eraseblock._entry.71, ptr @check_eraseblock._entry.74, ptr @check_eraseblock._entry_ptr, ptr @check_eraseblock._entry_ptr.61, ptr @check_eraseblock._entry_ptr.64, ptr @check_eraseblock._entry_ptr.67, ptr @check_eraseblock._entry_ptr.70, ptr @check_eraseblock._entry_ptr.73, ptr @check_eraseblock._entry_ptr.76, ptr @mtdtest_relax._entry, ptr @mtdtest_relax._entry_ptr, ptr @print_bufs._entry, ptr @print_bufs._entry.101, ptr @print_bufs._entry.104, ptr @print_bufs._entry.106, ptr @print_bufs._entry.90, ptr @print_bufs._entry.94, ptr @print_bufs._entry.98, ptr @print_bufs._entry_ptr, ptr @print_bufs._entry_ptr.100, ptr @print_bufs._entry_ptr.103, ptr @print_bufs._entry_ptr.105, ptr @print_bufs._entry_ptr.108, ptr @print_bufs._entry_ptr.92, ptr @print_bufs._entry_ptr.96, ptr @report_corrupt._entry, ptr @report_corrupt._entry.79, ptr @report_corrupt._entry.82, ptr @report_corrupt._entry.85, ptr @report_corrupt._entry_ptr, ptr @report_corrupt._entry_ptr.81, ptr @report_corrupt._entry_ptr.84, ptr @report_corrupt._entry_ptr.87, ptr @tort_init._entry, ptr @tort_init._entry.12, ptr @tort_init._entry.15, ptr @tort_init._entry.18, ptr @tort_init._entry.21, ptr @tort_init._entry.24, ptr @tort_init._entry.29, ptr @tort_init._entry.3, ptr @tort_init._entry.32, ptr @tort_init._entry.35, ptr @tort_init._entry.38, ptr @tort_init._entry.41, ptr @tort_init._entry.46, ptr @tort_init._entry.49, ptr @tort_init._entry.52, ptr @tort_init._entry.55, ptr @tort_init._entry.6, ptr @tort_init._entry.9, ptr @tort_init._entry_ptr, ptr @tort_init._entry_ptr.11, ptr @tort_init._entry_ptr.14, ptr @tort_init._entry_ptr.17, ptr @tort_init._entry_ptr.20, ptr @tort_init._entry_ptr.23, ptr @tort_init._entry_ptr.26, ptr @tort_init._entry_ptr.31, ptr @tort_init._entry_ptr.34, ptr @tort_init._entry_ptr.37, ptr @tort_init._entry_ptr.40, ptr @tort_init._entry_ptr.43, ptr @tort_init._entry_ptr.48, ptr @tort_init._entry_ptr.5, ptr @tort_init._entry_ptr.51, ptr @tort_init._entry_ptr.54, ptr @tort_init._entry_ptr.56, ptr @tort_init._entry_ptr.8, ptr @write_pattern._entry, ptr @write_pattern._entry.114, ptr @write_pattern._entry_ptr, ptr @write_pattern._entry_ptr.116, ptr @eb, ptr @ebcnt, ptr @pgcnt, ptr @dev, ptr @gran, ptr @check, ptr @cycles_count, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @mtd, ptr @.str.30, ptr @.str.33, ptr @pgsize, ptr @.str.36, ptr @patt_5A5, ptr @patt_A5A, ptr @patt_FF, ptr @check_buf, ptr @.str.39, ptr @erase_cycles, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @start, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pgcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gran to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cycles_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pgsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patt_5A5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patt_A5A to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patt_FF to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_buf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erase_cycles to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tort_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_eraseblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_eraseblock._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_eraseblock._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_eraseblock._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_eraseblock._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_eraseblock._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_eraseblock._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_corrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_corrupt._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_corrupt._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_corrupt._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_bufs._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_bufs._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_bufs._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_bufs._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_bufs._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_bufs._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdtest_relax._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_pattern._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_pattern._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %written.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cycles_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #14
  %1 = load i32, ptr @dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %do.end13, label %do.end23

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #14
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #14
  br label %cleanup248

do.end23:                                         ; preds = %entry
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %1) #14
  %2 = load i32, ptr @ebcnt, align 4
  %3 = load i32, ptr @eb, align 4
  %add = add i32 %2, -1
  %sub = add i32 %add, %3
  %4 = load i32, ptr @dev, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %2, i32 noundef %3, i32 noundef %sub, i32 noundef %4) #14
  %5 = load i32, ptr @pgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool31.not = icmp eq i32 %5, 0
  br i1 %tobool31.not, label %do.end23.do.end41_crit_edge, label %do.end35

do.end23.do.end41_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end41

do.end35:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %5) #14
  br label %do.end41

do.end41:                                         ; preds = %do.end35, %do.end23.do.end41_crit_edge
  %6 = load i32, ptr @check, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool43.not = icmp eq i32 %6, 0
  %cond = select i1 %tobool43.not, ptr @.str.28, ptr @.str.27
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %cond) #14
  %7 = load i32, ptr @dev, align 4
  %call45 = tail call ptr @get_mtd_device(ptr noundef null, i32 noundef %7) #11
  store ptr %call45, ptr @mtd, align 4
  %cmp.i379 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i379, label %if.then47, label %if.end54

if.then47:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call45 to i32
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #14
  br label %cleanup248

if.end54:                                         ; preds = %do.end41
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %call45, i32 0, i32 4
  %9 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp55 = icmp eq i32 %10, 1
  br i1 %cmp55, label %do.end59, label %if.end54.if.end63_crit_edge

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

do.end59:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #14
  br label %if.end63

if.end63:                                         ; preds = %do.end59, %if.end54.if.end63_crit_edge
  %storemerge = phi i32 [ 512, %do.end59 ], [ %10, %if.end54.if.end63_crit_edge ]
  store i32 %storemerge, ptr @pgsize, align 4
  %11 = load i32, ptr @pgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool64.not = icmp eq i32 %11, 0
  br i1 %tobool64.not, label %if.end63.if.end8.i_crit_edge, label %land.lhs.true

if.end63.if.end8.i_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

land.lhs.true:                                    ; preds = %if.end63
  %12 = load ptr, ptr @mtd, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %erasesize, align 8
  %div = udiv i32 %14, %storemerge
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %div)
  %cmp65 = icmp ugt i32 %11, %div
  br i1 %cmp65, label %out_mtd.thread, label %land.lhs.true.if.end8.i_crit_edge

land.lhs.true.if.end8.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

out_mtd.thread:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %11) #14
  %15 = load ptr, ptr @mtd, align 4
  tail call void @put_mtd_device(ptr noundef %15) #11
  br label %do.end245

if.end8.i:                                        ; preds = %land.lhs.true.if.end8.i_crit_edge, %if.end63.if.end8.i_crit_edge
  %16 = load ptr, ptr @mtd, align 4
  %erasesize74 = getelementptr inbounds %struct.mtd_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %erasesize74 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %erasesize74, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3264) #15
  store ptr %call9.i, ptr @patt_5A5, align 4
  %tobool76.not = icmp eq ptr %call9.i, null
  %19 = load ptr, ptr @mtd, align 4
  br i1 %tobool76.not, label %out_mtd.thread442, label %if.end8.i318

out_mtd.thread442:                                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @put_mtd_device(ptr noundef %19) #11
  br label %do.end239

if.end8.i318:                                     ; preds = %if.end8.i
  %erasesize79 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %erasesize79 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %erasesize79, align 8
  %call9.i317 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #15
  store ptr %call9.i317, ptr @patt_A5A, align 4
  %tobool81.not = icmp eq ptr %call9.i317, null
  br i1 %tobool81.not, label %if.end8.i318.out_mtd_crit_edge, label %if.end8.i347

if.end8.i318.out_mtd_crit_edge:                   ; preds = %if.end8.i318
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_mtd

if.end8.i347:                                     ; preds = %if.end8.i318
  %22 = load ptr, ptr @mtd, align 4
  %erasesize84 = getelementptr inbounds %struct.mtd_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %erasesize84 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %erasesize84, align 8
  %call9.i346 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3264) #15
  store ptr %call9.i346, ptr @patt_FF, align 4
  %tobool86.not = icmp eq ptr %call9.i346, null
  br i1 %tobool86.not, label %if.end8.i347.out_patt_A5A_crit_edge, label %if.end8.i376

if.end8.i347.out_patt_A5A_crit_edge:              ; preds = %if.end8.i347
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_patt_A5A

if.end8.i376:                                     ; preds = %if.end8.i347
  %25 = load ptr, ptr @mtd, align 4
  %erasesize89 = getelementptr inbounds %struct.mtd_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %erasesize89 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %erasesize89, align 8
  %call9.i375 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %27, i32 noundef 3264) #15
  store ptr %call9.i375, ptr @check_buf, align 4
  %tobool91.not = icmp eq ptr %call9.i375, null
  br i1 %tobool91.not, label %if.end8.i376.out_patt_FF_crit_edge, label %if.end8.i.i

if.end8.i376.out_patt_FF_crit_edge:               ; preds = %if.end8.i376
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_patt_FF

if.end8.i.i:                                      ; preds = %if.end8.i376
  %28 = load i32, ptr @ebcnt, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #15
  %tobool95.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool95.not, label %if.end8.i.i.out_check_buf_crit_edge, label %if.end97

if.end8.i.i.out_check_buf_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_check_buf

if.end97:                                         ; preds = %if.end8.i.i
  %29 = load ptr, ptr @patt_FF, align 4
  %30 = load ptr, ptr @mtd, align 4
  %erasesize98 = getelementptr inbounds %struct.mtd_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %erasesize98 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %erasesize98, align 8
  %33 = call ptr @memset(ptr %29, i32 255, i32 %32)
  %34 = load i32, ptr @pgsize, align 4
  %35 = load i32, ptr %erasesize98, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %35)
  %cmp101464.not = icmp ugt i32 %34, %35
  br i1 %cmp101464.not, label %if.end97.for.end_crit_edge, label %for.body.preheader

if.end97.for.end_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end97
  %36 = load ptr, ptr @patt_5A5, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0465 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %and = and i32 %i.0465, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool102.not = icmp eq i32 %and, 0
  %mul = mul i32 %34, %i.0465
  %add.ptr = getelementptr i8, ptr %36, i32 %mul
  br i1 %tobool102.not, label %if.then103, label %if.else106

if.then103:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %37 = call ptr @memset(ptr %add.ptr, i32 85, i32 %34)
  %38 = load ptr, ptr @patt_A5A, align 4
  %add.ptr105 = getelementptr i8, ptr %38, i32 %mul
  %39 = call ptr @memset(ptr %add.ptr105, i32 170, i32 %34)
  br label %for.inc

if.else106:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %40 = call ptr @memset(ptr %add.ptr, i32 170, i32 %34)
  %41 = load ptr, ptr @patt_A5A, align 4
  %add.ptr110 = getelementptr i8, ptr %41, i32 %mul
  %42 = call ptr @memset(ptr %add.ptr110, i32 85, i32 %34)
  br label %for.inc

for.inc:                                          ; preds = %if.else106, %if.then103
  %inc = add nuw i32 %i.0465, 1
  %43 = ptrtoint ptr %erasesize98 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %erasesize98, align 8
  %div100 = udiv i32 %44, %34
  %cmp101 = icmp ult i32 %inc, %div100
  br i1 %cmp101, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end97.for.end_crit_edge
  %45 = load i32, ptr @eb, align 4
  %46 = load i32, ptr @ebcnt, align 4
  %call112 = tail call i32 @mtdtest_scan_for_bad_eraseblocks(ptr noundef %30, ptr noundef nonnull %call9.i.i, i32 noundef %45, i32 noundef %46) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %for.end.do.end232_crit_edge

for.end.do.end232_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end232

if.end115:                                        ; preds = %for.end
  %call.i = tail call i64 @ktime_get() #11
  store i64 %call.i, ptr @start, align 8
  %47 = load ptr, ptr @mtd, align 4
  %48 = load i32, ptr @eb, align 4
  %49 = load i32, ptr @ebcnt, align 4
  %call117477 = call i32 @mtdtest_erase_good_eraseblocks(ptr noundef %47, ptr noundef nonnull %call9.i.i, i32 noundef %48, i32 noundef %49) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117477)
  %tobool118.not478 = icmp eq i32 %call117477, 0
  br i1 %tobool118.not478, label %if.end115.if.end120_crit_edge, label %if.end115.do.end232_crit_edge

if.end115.do.end232_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end232

if.end115.if.end120_crit_edge:                    ; preds = %if.end115
  br label %if.end120

if.end120:                                        ; preds = %cleanup.if.end120_crit_edge, %if.end115.if.end120_crit_edge
  %50 = load i32, ptr @check, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool121.not = icmp eq i32 %50, 0
  br i1 %tobool121.not, label %if.end120.if.end147_crit_edge, label %if.then122

if.end120.if.end147_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

if.then122:                                       ; preds = %if.end120
  %51 = load i32, ptr @eb, align 4
  %52 = load i32, ptr @ebcnt, align 4
  %add124467 = add i32 %52, %51
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %add124467)
  %cmp125468 = icmp slt i32 %51, %add124467
  br i1 %cmp125468, label %if.then122.for.body126_crit_edge, label %if.then122.if.end147_crit_edge

if.then122.if.end147_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

if.then122.for.body126_crit_edge:                 ; preds = %if.then122
  br label %for.body126

for.body126:                                      ; preds = %for.inc144.for.body126_crit_edge, %if.then122.for.body126_crit_edge
  %53 = phi i32 [ %68, %for.inc144.for.body126_crit_edge ], [ %51, %if.then122.for.body126_crit_edge ]
  %i116.0469 = phi i32 [ %inc145, %for.inc144.for.body126_crit_edge ], [ %51, %if.then122.for.body126_crit_edge ]
  %sub127 = sub i32 %i116.0469, %53
  %arrayidx = getelementptr i8, ptr %call9.i.i, i32 %sub127
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool128.not = icmp eq i8 %55, 0
  br i1 %tobool128.not, label %if.end130, label %for.body126.for.inc144_crit_edge

for.body126.for.inc144_crit_edge:                 ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc144

if.end130:                                        ; preds = %for.body126
  %56 = load ptr, ptr @patt_FF, align 4
  %call131 = call fastcc i32 @check_eraseblock(i32 noundef %i116.0469, ptr noundef %56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end139, label %do.end136

do.end136:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  %call138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #14
  br label %do.end232

if.end139:                                        ; preds = %if.end130
  call void @__might_resched(ptr noundef nonnull @.str.109, i32 noundef 7, i32 noundef 0) #11
  %call.i.i = call i32 @__cond_resched() #11
  %57 = call i32 @llvm.read_register.i32(metadata !251) #11
  %and.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %stack.i.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %62, align 4
  %65 = and i32 %64, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i.i383 = icmp eq i32 %65, 0
  br i1 %tobool.not.i.i383, label %signal_pending.exit.i, label %if.end139.mtdtest_relax.exit_crit_edge, !prof !261

if.end139.mtdtest_relax.exit_crit_edge:           ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtdtest_relax.exit

signal_pending.exit.i:                            ; preds = %if.end139
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %62, align 4
  %and1.i.i.i.i.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %signal_pending.exit.i.for.inc144_crit_edge, label %signal_pending.exit.i.mtdtest_relax.exit_crit_edge

signal_pending.exit.i.mtdtest_relax.exit_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtdtest_relax.exit

signal_pending.exit.i.for.inc144_crit_edge:       ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc144

mtdtest_relax.exit:                               ; preds = %signal_pending.exit.i.mtdtest_relax.exit_crit_edge, %if.end139.mtdtest_relax.exit_crit_edge
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110) #14
  br label %do.end232

for.inc144:                                       ; preds = %signal_pending.exit.i.for.inc144_crit_edge, %for.body126.for.inc144_crit_edge
  %inc145 = add nsw i32 %i116.0469, 1
  %68 = load i32, ptr @eb, align 4
  %69 = load i32, ptr @ebcnt, align 4
  %add124 = add i32 %69, %68
  %cmp125 = icmp slt i32 %inc145, %add124
  br i1 %cmp125, label %for.inc144.for.body126_crit_edge, label %for.inc144.if.end147_crit_edge

for.inc144.if.end147_crit_edge:                   ; preds = %for.inc144
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

for.inc144.for.body126_crit_edge:                 ; preds = %for.inc144
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body126

if.end147:                                        ; preds = %for.inc144.if.end147_crit_edge, %if.then122.if.end147_crit_edge, %if.end120.if.end147_crit_edge
  %70 = load i32, ptr @eb, align 4
  %71 = load i32, ptr @ebcnt, align 4
  %add149470 = add i32 %71, %70
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %add149470)
  %cmp150471 = icmp slt i32 %70, %add149470
  br i1 %cmp150471, label %if.end147.for.body151_crit_edge, label %if.end147.for.end173_crit_edge

if.end147.for.end173_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end173

if.end147.for.body151_crit_edge:                  ; preds = %if.end147
  br label %for.body151

for.body151:                                      ; preds = %for.inc171.for.body151_crit_edge, %if.end147.for.body151_crit_edge
  %72 = phi i32 [ %95, %for.inc171.for.body151_crit_edge ], [ %70, %if.end147.for.body151_crit_edge ]
  %i116.1472 = phi i32 [ %inc172, %for.inc171.for.body151_crit_edge ], [ %70, %if.end147.for.body151_crit_edge ]
  %sub152 = sub i32 %i116.1472, %72
  %arrayidx153 = getelementptr i8, ptr %call9.i.i, i32 %sub152
  %73 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx153, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool154.not = icmp eq i8 %74, 0
  br i1 %tobool154.not, label %if.end156, label %for.body151.for.inc171_crit_edge

for.body151.for.inc171_crit_edge:                 ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc171

if.end156:                                        ; preds = %for.body151
  %75 = load i32, ptr @erase_cycles, align 4
  %add157 = add i32 %75, %72
  %and158 = and i32 %add157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  %patt_A5A.val446 = load ptr, ptr @patt_A5A, align 4
  %patt_5A5.val447 = load ptr, ptr @patt_5A5, align 4
  %patt.0 = select i1 %tobool159.not, ptr %patt_A5A.val446, ptr %patt_5A5.val447
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %written.i) #11
  %76 = ptrtoint ptr %written.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %written.i, align 4, !annotation !262
  %conv.i = sext i32 %i116.1472 to i64
  %77 = load ptr, ptr @mtd, align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %erasesize.i, align 8
  %conv1.i = zext i32 %79 to i64
  %mul.i = mul nsw i64 %conv1.i, %conv.i
  %80 = load i32, ptr @pgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i384 = icmp eq i32 %80, 0
  br i1 %tobool.not.i384, label %if.end156.if.end.i387_crit_edge, label %if.then.i385

if.end156.if.end.i387_crit_edge:                  ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i387

if.then.i385:                                     ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add nsw i32 %i116.1472, 1
  %conv3.i = sext i32 %add.i to i64
  %mul6.i = mul nsw i64 %conv1.i, %conv3.i
  %81 = load i32, ptr @pgsize, align 4
  %mul7.i = mul i32 %81, %80
  %conv8.i = sext i32 %mul7.i to i64
  %sub.i = sub nsw i64 %mul6.i, %conv8.i
  br label %if.end.i387

if.end.i387:                                      ; preds = %if.then.i385, %if.end156.if.end.i387_crit_edge
  %addr.0.i = phi i64 [ %sub.i, %if.then.i385 ], [ %mul.i, %if.end156.if.end.i387_crit_edge ]
  %len.0.i = phi i32 [ %mul7.i, %if.then.i385 ], [ %79, %if.end156.if.end.i387_crit_edge ]
  %call.i386 = call i32 @mtd_write(ptr noundef %77, i64 noundef %addr.0.i, i32 noundef %len.0.i, ptr noundef nonnull %written.i, ptr noundef %patt.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i386)
  %tobool10.not.i = icmp eq i32 %call.i386, 0
  %82 = ptrtoint ptr %written.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %written.i, align 4
  br i1 %tobool10.not.i, label %if.end13.i, label %do.end.i388

do.end.i388:                                      ; preds = %if.end.i387
  call void @__sanitizer_cov_trace_pc() #13
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %call.i386, i32 noundef %i116.1472, i32 noundef %83) #14
  br label %write_pattern.exit.thread

if.end13.i:                                       ; preds = %if.end.i387
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %len.0.i)
  %cmp.not.i = icmp eq i32 %83, %len.0.i
  br i1 %cmp.not.i, label %if.end166, label %do.end18.i

do.end18.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %83, i32 noundef %len.0.i) #14
  br label %write_pattern.exit.thread

write_pattern.exit.thread:                        ; preds = %do.end18.i, %do.end.i388
  %retval.0.i389.ph = phi i32 [ -5, %do.end18.i ], [ %call.i386, %do.end.i388 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %written.i) #11
  br label %do.end232

if.end166:                                        ; preds = %if.end13.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %written.i) #11
  call void @__might_resched(ptr noundef nonnull @.str.109, i32 noundef 7, i32 noundef 0) #11
  %call.i.i390 = call i32 @__cond_resched() #11
  %84 = call i32 @llvm.read_register.i32(metadata !251) #11
  %and.i.i391 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i391 to ptr
  %task.i392 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %task.i392 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %task.i392, align 8
  %stack.i.i.i393 = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %stack.i.i.i393 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %stack.i.i.i393, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %89, align 4
  %92 = and i32 %91, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i.i394 = icmp eq i32 %92, 0
  br i1 %tobool.not.i.i394, label %signal_pending.exit.i397, label %if.end166.mtdtest_relax.exit401_crit_edge, !prof !261

if.end166.mtdtest_relax.exit401_crit_edge:        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtdtest_relax.exit401

signal_pending.exit.i397:                         ; preds = %if.end166
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %89, align 4
  %and1.i.i.i.i.i.i395 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i395)
  %tobool.not.i396 = icmp eq i32 %and1.i.i.i.i.i.i395, 0
  br i1 %tobool.not.i396, label %signal_pending.exit.i397.for.inc171_crit_edge, label %signal_pending.exit.i397.mtdtest_relax.exit401_crit_edge

signal_pending.exit.i397.mtdtest_relax.exit401_crit_edge: ; preds = %signal_pending.exit.i397
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtdtest_relax.exit401

signal_pending.exit.i397.for.inc171_crit_edge:    ; preds = %signal_pending.exit.i397
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc171

mtdtest_relax.exit401:                            ; preds = %signal_pending.exit.i397.mtdtest_relax.exit401_crit_edge, %if.end166.mtdtest_relax.exit401_crit_edge
  %call4.i398 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110) #14
  br label %do.end232

for.inc171:                                       ; preds = %signal_pending.exit.i397.for.inc171_crit_edge, %for.body151.for.inc171_crit_edge
  %inc172 = add nsw i32 %i116.1472, 1
  %95 = load i32, ptr @eb, align 4
  %96 = load i32, ptr @ebcnt, align 4
  %add149 = add i32 %96, %95
  %cmp150 = icmp slt i32 %inc172, %add149
  br i1 %cmp150, label %for.inc171.for.body151_crit_edge, label %for.inc171.for.end173_crit_edge

for.inc171.for.end173_crit_edge:                  ; preds = %for.inc171
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end173

for.inc171.for.body151_crit_edge:                 ; preds = %for.inc171
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body151

for.end173:                                       ; preds = %for.inc171.for.end173_crit_edge, %if.end147.for.end173_crit_edge
  %.lcssa = phi i32 [ %70, %if.end147.for.end173_crit_edge ], [ %95, %for.inc171.for.end173_crit_edge ]
  %97 = load i32, ptr @check, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool174.not = icmp eq i32 %97, 0
  br i1 %tobool174.not, label %for.end173.if.end211_crit_edge, label %for.cond176.preheader

for.end173.if.end211_crit_edge:                   ; preds = %for.end173
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end211

for.cond176.preheader:                            ; preds = %for.end173
  %98 = load i32, ptr @eb, align 4
  %99 = load i32, ptr @ebcnt, align 4
  %add177474 = add i32 %99, %98
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %add177474)
  %cmp178475 = icmp slt i32 %.lcssa, %add177474
  br i1 %cmp178475, label %for.cond176.preheader.for.body179_crit_edge, label %for.cond176.preheader.if.end211_crit_edge

for.cond176.preheader.if.end211_crit_edge:        ; preds = %for.cond176.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end211

for.cond176.preheader.for.body179_crit_edge:      ; preds = %for.cond176.preheader
  br label %for.body179

for.body179:                                      ; preds = %for.inc208.for.body179_crit_edge, %for.cond176.preheader.for.body179_crit_edge
  %100 = phi i32 [ %117, %for.inc208.for.body179_crit_edge ], [ %98, %for.cond176.preheader.for.body179_crit_edge ]
  %i116.2476 = phi i32 [ %inc209, %for.inc208.for.body179_crit_edge ], [ %.lcssa, %for.cond176.preheader.for.body179_crit_edge ]
  %sub180 = sub i32 %i116.2476, %100
  %arrayidx181 = getelementptr i8, ptr %call9.i.i, i32 %sub180
  %101 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx181, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool182.not = icmp eq i8 %102, 0
  br i1 %tobool182.not, label %if.end184, label %for.body179.for.inc208_crit_edge

for.body179.for.inc208_crit_edge:                 ; preds = %for.body179
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc208

if.end184:                                        ; preds = %for.body179
  %103 = load i32, ptr @erase_cycles, align 4
  %add185 = add i32 %103, %100
  %and186 = and i32 %add185, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  %patt_A5A.val = load ptr, ptr @patt_A5A, align 4
  %patt_5A5.val = load ptr, ptr @patt_5A5, align 4
  %patt.1 = select i1 %tobool187.not, ptr %patt_A5A.val, ptr %patt_5A5.val
  %call191 = call fastcc i32 @check_eraseblock(i32 noundef %i116.2476, ptr noundef %patt.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end203, label %do.end196

do.end196:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  %104 = load i32, ptr @eb, align 4
  %105 = load i32, ptr @erase_cycles, align 4
  %add198 = add i32 %105, %104
  %and199 = and i32 %add198, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  %cond201 = select i1 %tobool200.not, ptr @.str.45, ptr @.str.44
  %call202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull %cond201) #14
  br label %do.end232

if.end203:                                        ; preds = %if.end184
  call void @__might_resched(ptr noundef nonnull @.str.109, i32 noundef 7, i32 noundef 0) #11
  %call.i.i402 = call i32 @__cond_resched() #11
  %106 = call i32 @llvm.read_register.i32(metadata !251) #11
  %and.i.i403 = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i403 to ptr
  %task.i404 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %task.i404 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %task.i404, align 8
  %stack.i.i.i405 = getelementptr inbounds %struct.task_struct, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %stack.i.i.i405 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %stack.i.i.i405, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %111, align 4
  %114 = and i32 %113, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i.i406 = icmp eq i32 %114, 0
  br i1 %tobool.not.i.i406, label %signal_pending.exit.i409, label %if.end203.mtdtest_relax.exit413_crit_edge, !prof !261

if.end203.mtdtest_relax.exit413_crit_edge:        ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtdtest_relax.exit413

signal_pending.exit.i409:                         ; preds = %if.end203
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %111, align 4
  %and1.i.i.i.i.i.i407 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i407)
  %tobool.not.i408 = icmp eq i32 %and1.i.i.i.i.i.i407, 0
  br i1 %tobool.not.i408, label %signal_pending.exit.i409.for.inc208_crit_edge, label %signal_pending.exit.i409.mtdtest_relax.exit413_crit_edge

signal_pending.exit.i409.mtdtest_relax.exit413_crit_edge: ; preds = %signal_pending.exit.i409
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtdtest_relax.exit413

signal_pending.exit.i409.for.inc208_crit_edge:    ; preds = %signal_pending.exit.i409
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc208

mtdtest_relax.exit413:                            ; preds = %signal_pending.exit.i409.mtdtest_relax.exit413_crit_edge, %if.end203.mtdtest_relax.exit413_crit_edge
  %call4.i410 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110) #14
  br label %do.end232

for.inc208:                                       ; preds = %signal_pending.exit.i409.for.inc208_crit_edge, %for.body179.for.inc208_crit_edge
  %inc209 = add nsw i32 %i116.2476, 1
  %117 = load i32, ptr @eb, align 4
  %118 = load i32, ptr @ebcnt, align 4
  %add177 = add i32 %118, %117
  %cmp178 = icmp slt i32 %inc209, %add177
  br i1 %cmp178, label %for.inc208.for.body179_crit_edge, label %for.inc208.if.end211_crit_edge

for.inc208.if.end211_crit_edge:                   ; preds = %for.inc208
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end211

for.inc208.for.body179_crit_edge:                 ; preds = %for.inc208
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body179

if.end211:                                        ; preds = %for.inc208.if.end211_crit_edge, %for.cond176.preheader.if.end211_crit_edge, %for.end173.if.end211_crit_edge
  %119 = load i32, ptr @erase_cycles, align 4
  %add212 = add i32 %119, 1
  store i32 %add212, ptr @erase_cycles, align 4
  %120 = load i32, ptr @gran, align 4
  %rem = urem i32 %add212, %120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp213 = icmp eq i32 %rem, 0
  br i1 %cmp213, label %if.then214, label %if.end211.if.end222_crit_edge

if.end211.if.end222_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end222

if.then214:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #13
  %call.i414 = call i64 @ktime_get() #11
  %121 = load i64, ptr @start, align 8
  %sub.i415 = sub i64 %call.i414, %121
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i415)
  %cmp8.i.i.i = icmp slt i64 %sub.i415, 0
  %122 = call i64 @llvm.abs.i64(i64 %sub.i415, i1 false) #11
  %123 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %122) #16, !srcloc !263
  %124 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %122, i64 %123, i32 0) #16, !srcloc !264
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %124, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv = trunc i64 %cond213.i.i.i to i32
  %125 = load i32, ptr @erase_cycles, align 4
  %div220 = sdiv i32 %conv, 1000
  %call221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %125, i32 noundef %conv, i32 noundef %div220) #14
  %call.i416 = call i64 @ktime_get() #11
  store i64 %call.i416, ptr @start, align 8
  br label %if.end222

if.end222:                                        ; preds = %if.then214, %if.end211.if.end222_crit_edge
  br i1 %tobool.not, label %if.end222.cleanup_crit_edge, label %land.lhs.true224

if.end222.cleanup_crit_edge:                      ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true224:                                 ; preds = %if.end222
  %126 = load i32, ptr @cycles_count, align 4
  %dec = add i32 %126, -1
  store i32 %dec, ptr @cycles_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp225 = icmp eq i32 %dec, 0
  br i1 %cmp225, label %land.lhs.true224.do.end232_crit_edge, label %land.lhs.true224.cleanup_crit_edge

land.lhs.true224.cleanup_crit_edge:               ; preds = %land.lhs.true224
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true224.do.end232_crit_edge:             ; preds = %land.lhs.true224
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end232

cleanup:                                          ; preds = %land.lhs.true224.cleanup_crit_edge, %if.end222.cleanup_crit_edge
  %127 = load ptr, ptr @mtd, align 4
  %128 = load i32, ptr @eb, align 4
  %129 = load i32, ptr @ebcnt, align 4
  %call117 = call i32 @mtdtest_erase_good_eraseblocks(ptr noundef %127, ptr noundef nonnull %call9.i.i, i32 noundef %128, i32 noundef %129) #11
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %cleanup.if.end120_crit_edge, label %cleanup.do.end232_crit_edge

cleanup.do.end232_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end232

cleanup.if.end120_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120

do.end232:                                        ; preds = %cleanup.do.end232_crit_edge, %land.lhs.true224.do.end232_crit_edge, %mtdtest_relax.exit413, %do.end196, %mtdtest_relax.exit401, %write_pattern.exit.thread, %mtdtest_relax.exit, %do.end136, %if.end115.do.end232_crit_edge, %for.end.do.end232_crit_edge
  %err.9 = phi i32 [ %call112, %for.end.do.end232_crit_edge ], [ %retval.0.i389.ph, %write_pattern.exit.thread ], [ -4, %mtdtest_relax.exit413 ], [ -4, %mtdtest_relax.exit401 ], [ -4, %mtdtest_relax.exit ], [ %call191, %do.end196 ], [ %call131, %do.end136 ], [ %call117477, %if.end115.do.end232_crit_edge ], [ %call117, %cleanup.do.end232_crit_edge ], [ 0, %land.lhs.true224.do.end232_crit_edge ]
  %130 = load i32, ptr @erase_cycles, align 4
  %call234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %130) #14
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %out_check_buf

out_check_buf:                                    ; preds = %do.end232, %if.end8.i.i.out_check_buf_crit_edge
  %err.10 = phi i32 [ %err.9, %do.end232 ], [ -12, %if.end8.i.i.out_check_buf_crit_edge ]
  %131 = load ptr, ptr @check_buf, align 4
  call void @kfree(ptr noundef %131) #11
  br label %out_patt_FF

out_patt_FF:                                      ; preds = %out_check_buf, %if.end8.i376.out_patt_FF_crit_edge
  %err.11 = phi i32 [ %err.10, %out_check_buf ], [ -12, %if.end8.i376.out_patt_FF_crit_edge ]
  %132 = load ptr, ptr @patt_FF, align 4
  call void @kfree(ptr noundef %132) #11
  br label %out_patt_A5A

out_patt_A5A:                                     ; preds = %out_patt_FF, %if.end8.i347.out_patt_A5A_crit_edge
  %err.12 = phi i32 [ %err.11, %out_patt_FF ], [ -12, %if.end8.i347.out_patt_A5A_crit_edge ]
  %133 = load ptr, ptr @patt_A5A, align 4
  call void @kfree(ptr noundef %133) #11
  br label %out_mtd

out_mtd:                                          ; preds = %out_patt_A5A, %if.end8.i318.out_mtd_crit_edge
  %err.13 = phi i32 [ %err.12, %out_patt_A5A ], [ -12, %if.end8.i318.out_mtd_crit_edge ]
  %134 = load ptr, ptr @patt_5A5, align 4
  call void @kfree(ptr noundef %134) #11
  %135 = load ptr, ptr @mtd, align 4
  call void @put_mtd_device(ptr noundef %135) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.13)
  %tobool235.not = icmp eq i32 %err.13, 0
  br i1 %tobool235.not, label %out_mtd.do.end245_crit_edge, label %out_mtd.do.end239_crit_edge

out_mtd.do.end239_crit_edge:                      ; preds = %out_mtd
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end239

out_mtd.do.end245_crit_edge:                      ; preds = %out_mtd
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end245

do.end239:                                        ; preds = %out_mtd.do.end239_crit_edge, %out_mtd.thread442
  %err.14445 = phi i32 [ -12, %out_mtd.thread442 ], [ %err.13, %out_mtd.do.end239_crit_edge ]
  %call241 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %err.14445) #14
  br label %do.end245

do.end245:                                        ; preds = %do.end239, %out_mtd.do.end245_crit_edge, %out_mtd.thread
  %err.14441 = phi i32 [ 0, %out_mtd.thread ], [ 0, %out_mtd.do.end245_crit_edge ], [ %err.14445, %do.end239 ]
  %call247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  br label %cleanup248

cleanup248:                                       ; preds = %do.end245, %if.then47, %do.end13
  %retval.0 = phi i32 [ -22, %do.end13 ], [ %8, %if.then47 ], [ %err.14441, %do.end245 ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_scan_for_bad_eraseblocks(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_erase_good_eraseblocks(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_eraseblock(i32 noundef %ebnum, ptr nocapture noundef readonly %buf) unnamed_addr #5 align 64 {
entry:
  %bytes.i = alloca i32, align 4
  %bits.i = alloca i32, align 4
  %read = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read) #11
  %0 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %read, align 4, !annotation !262
  %conv = sext i32 %ebnum to i64
  %1 = load ptr, ptr @mtd, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %erasesize, align 8
  %conv1 = zext i32 %3 to i64
  %mul = mul nsw i64 %conv1, %conv
  %4 = load i32, ptr @pgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %ebnum, 1
  %conv3 = sext i32 %add to i64
  %mul6 = mul nsw i64 %conv1, %conv3
  %5 = load i32, ptr @pgsize, align 4
  %mul7 = mul i32 %5, %4
  %conv8 = sext i32 %mul7 to i64
  %sub = sub nsw i64 %mul6, %conv8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.0 = phi i32 [ %mul7, %if.then ], [ %3, %entry.if.end_crit_edge ]
  %addr.0 = phi i64 [ %sub, %if.then ], [ %mul, %entry.if.end_crit_edge ]
  br label %retry

retry:                                            ; preds = %if.then41, %if.end
  %retries.0 = phi i32 [ 0, %if.end ], [ %inc, %if.then41 ]
  %6 = load ptr, ptr @mtd, align 4
  %7 = load ptr, ptr @check_buf, align 4
  %call = call i32 @mtd_read(ptr noundef %6, i64 noundef %addr.0, i32 noundef %len.0, ptr noundef nonnull %read, ptr noundef %7) #11
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end18 [
    i32 -117, label %do.end
    i32 0, label %retry.if.end22_crit_edge
  ]

retry.if.end22_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.end:                                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %ebnum) #14
  br label %if.end22

do.end18:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %read, align 4
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %call, i32 noundef %ebnum, i32 noundef %10) #14
  br label %cleanup

if.end22:                                         ; preds = %do.end, %retry.if.end22_crit_edge
  %11 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %read, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %len.0)
  %cmp.not = icmp eq i32 %12, %len.0
  br i1 %cmp.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %len.0, i32 noundef %ebnum, i32 noundef %12) #14
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %13 = load ptr, ptr @check_buf, align 4
  %bcmp = call i32 @bcmp(ptr %buf, ptr %13, i32 %len.0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool32.not = icmp eq i32 %bcmp, 0
  br i1 %tobool32.not, label %if.end53, label %do.end36

do.end36:                                         ; preds = %if.end30
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %ebnum) #14
  %14 = load ptr, ptr @check_buf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits.i) #11
  %15 = load ptr, ptr @mtd, align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %erasesize.i, align 8
  %18 = load i32, ptr @pgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %do.end36.if.end.i_crit_edge, label %if.then.i

do.end36.if.end.i_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  %19 = load i32, ptr @pgsize, align 4
  %mul.i = mul i32 %19, %18
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end36.if.end.i_crit_edge
  %check_len.0.i = phi i32 [ %mul.i, %if.then.i ], [ %17, %do.end36.if.end.i_crit_edge ]
  %20 = ptrtoint ptr %bits.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %bits.i, align 4
  %21 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_len.0.i)
  %cmp56.not.i = icmp eq i32 %check_len.0.i, 0
  br i1 %cmp56.not.i, label %for.end36.critedge.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %22 = load i32, ptr @pgsize, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.058.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %pages.057.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %call.i = call fastcc i32 @countdiffs(ptr noundef %buf, ptr noundef %14, i32 noundef %i.058.i, i32 noundef %22, ptr noundef nonnull %bytes.i, ptr noundef nonnull %bits.i) #11
  %23 = xor i32 %call.i, -1
  %call.lobit.not.i = lshr i32 %23, 31
  %spec.select.i = add i32 %call.lobit.not.i, %pages.057.i
  %add.i = add i32 %i.058.i, %22
  %cmp.i83 = icmp ult i32 %add.i, %check_len.0.i
  br i1 %cmp.i83, label %for.body.i.for.body.i_crit_edge, label %do.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %for.body.i
  %24 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bytes.i, align 4
  %26 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bits.i, align 4
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %spec.select.i, i32 noundef %25, i32 noundef %27) #14
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #14
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc34.i.for.body12.i_crit_edge, %do.end.i
  %i.160.i = phi i32 [ %add35.i, %for.inc34.i.for.body12.i_crit_edge ], [ 0, %do.end.i ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 393, i32 noundef 0) #11
  %call.i.i = call i32 @__cond_resched() #11
  %28 = ptrtoint ptr %bits.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %bits.i, align 4
  %29 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %bytes.i, align 4
  %30 = load i32, ptr @pgsize, align 4
  %call15.i = call fastcc i32 @countdiffs(ptr noundef %buf, ptr noundef %14, i32 noundef %i.160.i, i32 noundef %30, ptr noundef nonnull %bytes.i, ptr noundef nonnull %bits.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %for.body12.i.for.inc34.i_crit_edge, label %do.end21.i

for.body12.i.for.inc34.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc34.i

do.end21.i:                                       ; preds = %for.body12.i
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #14
  %31 = load ptr, ptr @mtd, align 4
  %erasesize28.i = getelementptr inbounds %struct.mtd_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %erasesize28.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %erasesize28.i, align 8
  %sub.i = sub i32 %i.160.i, %check_len.0.i
  %add29.i = add i32 %sub.i, %33
  %34 = load i32, ptr @pgsize, align 4
  %div.i = udiv i32 %add29.i, %34
  %35 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bytes.i, align 4
  %37 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bits.i, align 4
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %div.i, i32 noundef %36, i32 noundef %38, i32 noundef %call15.i) #14
  %and.i = and i32 %call15.i, -8
  %add31.i = add i32 %36, %call15.i
  %or.i = or i32 %add31.i, 7
  %add32.i = sub nsw i32 1, %and.i
  %sub33.i = add i32 %or.i, %add32.i
  %call.i54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub33.i)
  %cmp108.i.i = icmp sgt i32 %sub33.i, 0
  br i1 %cmp108.i.i, label %do.end21.i.do.end11.preheader.i.i_crit_edge, label %do.end21.i.for.inc34.i_crit_edge

do.end21.i.for.inc34.i_crit_edge:                 ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc34.i

do.end21.i.do.end11.preheader.i.i_crit_edge:      ; preds = %do.end21.i
  br label %do.end11.preheader.i.i

do.end11.preheader.i.i:                           ; preds = %do.end64.i.i.do.end11.preheader.i.i_crit_edge, %do.end21.i.do.end11.preheader.i.i_crit_edge
  %i.0109.i.i = phi i32 [ %add67.i.i, %do.end64.i.i.do.end11.preheader.i.i_crit_edge ], [ 0, %do.end21.i.do.end11.preheader.i.i_crit_edge ]
  %add.i.i = add i32 %i.0109.i.i, %and.i
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %add.i.i) #14
  %arrayidx.i.i = getelementptr i8, ptr %14, i32 %add.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %40 to i32
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv.i.i) #14
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx22.i.i = getelementptr i8, ptr %buf, i32 %add.i.i
  %43 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx22.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %44)
  %cmp24.not.i.i = icmp eq i8 %42, %44
  %spec.select.i.i = select i1 %cmp24.not.i.i, ptr @.str.93, ptr @.str.97
  %add7.i.i = or i32 %i.0109.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i.i, i32 %sub33.i)
  %cmp8.i.i = icmp slt i32 %add7.i.i, %sub33.i
  br i1 %cmp8.i.i, label %do.end11.i.i.1, label %do.end11.preheader.i.i.while.cond26.preheader.i.i_crit_edge

do.end11.preheader.i.i.while.cond26.preheader.i.i_crit_edge: ; preds = %do.end11.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond26.preheader.i.i

while.cond26.preheader.i.i:                       ; preds = %do.end11.i.i.7, %do.end11.i.i.6.while.cond26.preheader.i.i_crit_edge, %do.end11.i.i.5.while.cond26.preheader.i.i_crit_edge, %do.end11.i.i.4.while.cond26.preheader.i.i_crit_edge, %do.end11.i.i.3.while.cond26.preheader.i.i_crit_edge, %do.end11.i.i.2.while.cond26.preheader.i.i_crit_edge, %do.end11.i.i.1.while.cond26.preheader.i.i_crit_edge, %do.end11.preheader.i.i.while.cond26.preheader.i.i_crit_edge
  %spec.select.i.i.lcssa = phi ptr [ %spec.select.i.i, %do.end11.preheader.i.i.while.cond26.preheader.i.i_crit_edge ], [ %spec.select.i.i.1, %do.end11.i.i.1.while.cond26.preheader.i.i_crit_edge ], [ %spec.select.i.i.2, %do.end11.i.i.2.while.cond26.preheader.i.i_crit_edge ], [ %spec.select.i.i.3, %do.end11.i.i.3.while.cond26.preheader.i.i_crit_edge ], [ %spec.select.i.i.4, %do.end11.i.i.4.while.cond26.preheader.i.i_crit_edge ], [ %spec.select.i.i.5, %do.end11.i.i.5.while.cond26.preheader.i.i_crit_edge ], [ %spec.select.i.i.6, %do.end11.i.i.6.while.cond26.preheader.i.i_crit_edge ], [ %spec.select.i.i.7, %do.end11.i.i.7 ]
  %inc.i.i.lcssa = phi i32 [ 1, %do.end11.preheader.i.i.while.cond26.preheader.i.i_crit_edge ], [ 2, %do.end11.i.i.1.while.cond26.preheader.i.i_crit_edge ], [ 3, %do.end11.i.i.2.while.cond26.preheader.i.i_crit_edge ], [ 4, %do.end11.i.i.3.while.cond26.preheader.i.i_crit_edge ], [ 5, %do.end11.i.i.4.while.cond26.preheader.i.i_crit_edge ], [ 6, %do.end11.i.i.5.while.cond26.preheader.i.i_crit_edge ], [ 7, %do.end11.i.i.6.while.cond26.preheader.i.i_crit_edge ], [ 8, %do.end11.i.i.7 ]
  %cmp6.i.i.lcssa = phi i1 [ true, %do.end11.preheader.i.i.while.cond26.preheader.i.i_crit_edge ], [ true, %do.end11.i.i.1.while.cond26.preheader.i.i_crit_edge ], [ true, %do.end11.i.i.2.while.cond26.preheader.i.i_crit_edge ], [ true, %do.end11.i.i.3.while.cond26.preheader.i.i_crit_edge ], [ true, %do.end11.i.i.4.while.cond26.preheader.i.i_crit_edge ], [ true, %do.end11.i.i.5.while.cond26.preheader.i.i_crit_edge ], [ true, %do.end11.i.i.6.while.cond26.preheader.i.i_crit_edge ], [ false, %do.end11.i.i.7 ]
  br i1 %cmp6.i.i.lcssa, label %while.cond26.preheader.i.i.do.end32.i.i_crit_edge, label %while.cond26.preheader.i.i.do.end52.preheader.i.i_crit_edge

while.cond26.preheader.i.i.do.end52.preheader.i.i_crit_edge: ; preds = %while.cond26.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52.preheader.i.i

while.cond26.preheader.i.i.do.end32.i.i_crit_edge: ; preds = %while.cond26.preheader.i.i
  br label %do.end32.i.i

do.end11.i.i.1:                                   ; preds = %do.end11.preheader.i.i
  %add14.i.i.1 = or i32 %add.i.i, 1
  %arrayidx.i.i.1 = getelementptr i8, ptr %14, i32 %add14.i.i.1
  %45 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i.i.1, align 1
  %conv.i.i.1 = zext i8 %46 to i32
  %call15.i.i.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv.i.i.1) #14
  %47 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.i.1, align 1
  %arrayidx22.i.i.1 = getelementptr i8, ptr %buf, i32 %add14.i.i.1
  %49 = ptrtoint ptr %arrayidx22.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx22.i.i.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %50)
  %cmp24.not.i.i.1 = icmp eq i8 %48, %50
  %spec.select.i.i.1 = select i1 %cmp24.not.i.i.1, ptr %spec.select.i.i, ptr @.str.97
  %add7.i.i.1 = or i32 %i.0109.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i.i.1, i32 %sub33.i)
  %cmp8.i.i.1 = icmp slt i32 %add7.i.i.1, %sub33.i
  br i1 %cmp8.i.i.1, label %do.end11.i.i.2, label %do.end11.i.i.1.while.cond26.preheader.i.i_crit_edge

do.end11.i.i.1.while.cond26.preheader.i.i_crit_edge: ; preds = %do.end11.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond26.preheader.i.i

do.end11.i.i.2:                                   ; preds = %do.end11.i.i.1
  %add14.i.i.2 = or i32 %add.i.i, 2
  %arrayidx.i.i.2 = getelementptr i8, ptr %14, i32 %add14.i.i.2
  %51 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i.i.2, align 1
  %conv.i.i.2 = zext i8 %52 to i32
  %call15.i.i.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv.i.i.2) #14
  %53 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.i.2, align 1
  %arrayidx22.i.i.2 = getelementptr i8, ptr %buf, i32 %add14.i.i.2
  %55 = ptrtoint ptr %arrayidx22.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx22.i.i.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %56)
  %cmp24.not.i.i.2 = icmp eq i8 %54, %56
  %spec.select.i.i.2 = select i1 %cmp24.not.i.i.2, ptr %spec.select.i.i.1, ptr @.str.97
  %add7.i.i.2 = or i32 %i.0109.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i.i.2, i32 %sub33.i)
  %cmp8.i.i.2 = icmp slt i32 %add7.i.i.2, %sub33.i
  br i1 %cmp8.i.i.2, label %do.end11.i.i.3, label %do.end11.i.i.2.while.cond26.preheader.i.i_crit_edge

do.end11.i.i.2.while.cond26.preheader.i.i_crit_edge: ; preds = %do.end11.i.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond26.preheader.i.i

do.end11.i.i.3:                                   ; preds = %do.end11.i.i.2
  %add14.i.i.3 = or i32 %add.i.i, 3
  %arrayidx.i.i.3 = getelementptr i8, ptr %14, i32 %add14.i.i.3
  %57 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i.i.3, align 1
  %conv.i.i.3 = zext i8 %58 to i32
  %call15.i.i.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv.i.i.3) #14
  %59 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.i.3, align 1
  %arrayidx22.i.i.3 = getelementptr i8, ptr %buf, i32 %add14.i.i.3
  %61 = ptrtoint ptr %arrayidx22.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx22.i.i.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %62)
  %cmp24.not.i.i.3 = icmp eq i8 %60, %62
  %spec.select.i.i.3 = select i1 %cmp24.not.i.i.3, ptr %spec.select.i.i.2, ptr @.str.97
  %add7.i.i.3 = or i32 %i.0109.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i.i.3, i32 %sub33.i)
  %cmp8.i.i.3 = icmp slt i32 %add7.i.i.3, %sub33.i
  br i1 %cmp8.i.i.3, label %do.end11.i.i.4, label %do.end11.i.i.3.while.cond26.preheader.i.i_crit_edge

do.end11.i.i.3.while.cond26.preheader.i.i_crit_edge: ; preds = %do.end11.i.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond26.preheader.i.i

do.end11.i.i.4:                                   ; preds = %do.end11.i.i.3
  %add14.i.i.4 = or i32 %add.i.i, 4
  %arrayidx.i.i.4 = getelementptr i8, ptr %14, i32 %add14.i.i.4
  %63 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i.i.4, align 1
  %conv.i.i.4 = zext i8 %64 to i32
  %call15.i.i.4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv.i.i.4) #14
  %65 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i.i.4, align 1
  %arrayidx22.i.i.4 = getelementptr i8, ptr %buf, i32 %add14.i.i.4
  %67 = ptrtoint ptr %arrayidx22.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx22.i.i.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %66, i8 %68)
  %cmp24.not.i.i.4 = icmp eq i8 %66, %68
  %spec.select.i.i.4 = select i1 %cmp24.not.i.i.4, ptr %spec.select.i.i.3, ptr @.str.97
  %add7.i.i.4 = or i32 %i.0109.i.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i.i.4, i32 %sub33.i)
  %cmp8.i.i.4 = icmp slt i32 %add7.i.i.4, %sub33.i
  br i1 %cmp8.i.i.4, label %do.end11.i.i.5, label %do.end11.i.i.4.while.cond26.preheader.i.i_crit_edge

do.end11.i.i.4.while.cond26.preheader.i.i_crit_edge: ; preds = %do.end11.i.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond26.preheader.i.i

do.end11.i.i.5:                                   ; preds = %do.end11.i.i.4
  %add14.i.i.5 = or i32 %add.i.i, 5
  %arrayidx.i.i.5 = getelementptr i8, ptr %14, i32 %add14.i.i.5
  %69 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i.i.5, align 1
  %conv.i.i.5 = zext i8 %70 to i32
  %call15.i.i.5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv.i.i.5) #14
  %71 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i.i.5, align 1
  %arrayidx22.i.i.5 = getelementptr i8, ptr %buf, i32 %add14.i.i.5
  %73 = ptrtoint ptr %arrayidx22.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx22.i.i.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %74)
  %cmp24.not.i.i.5 = icmp eq i8 %72, %74
  %spec.select.i.i.5 = select i1 %cmp24.not.i.i.5, ptr %spec.select.i.i.4, ptr @.str.97
  %add7.i.i.5 = or i32 %i.0109.i.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i.i.5, i32 %sub33.i)
  %cmp8.i.i.5 = icmp slt i32 %add7.i.i.5, %sub33.i
  br i1 %cmp8.i.i.5, label %do.end11.i.i.6, label %do.end11.i.i.5.while.cond26.preheader.i.i_crit_edge

do.end11.i.i.5.while.cond26.preheader.i.i_crit_edge: ; preds = %do.end11.i.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond26.preheader.i.i

do.end11.i.i.6:                                   ; preds = %do.end11.i.i.5
  %add14.i.i.6 = or i32 %add.i.i, 6
  %arrayidx.i.i.6 = getelementptr i8, ptr %14, i32 %add14.i.i.6
  %75 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i.i.6, align 1
  %conv.i.i.6 = zext i8 %76 to i32
  %call15.i.i.6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv.i.i.6) #14
  %77 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i.i.6, align 1
  %arrayidx22.i.i.6 = getelementptr i8, ptr %buf, i32 %add14.i.i.6
  %79 = ptrtoint ptr %arrayidx22.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx22.i.i.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %78, i8 %80)
  %cmp24.not.i.i.6 = icmp eq i8 %78, %80
  %spec.select.i.i.6 = select i1 %cmp24.not.i.i.6, ptr %spec.select.i.i.5, ptr @.str.97
  %add7.i.i.6 = or i32 %i.0109.i.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i.i.6, i32 %sub33.i)
  %cmp8.i.i.6 = icmp slt i32 %add7.i.i.6, %sub33.i
  br i1 %cmp8.i.i.6, label %do.end11.i.i.7, label %do.end11.i.i.6.while.cond26.preheader.i.i_crit_edge

do.end11.i.i.6.while.cond26.preheader.i.i_crit_edge: ; preds = %do.end11.i.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond26.preheader.i.i

do.end11.i.i.7:                                   ; preds = %do.end11.i.i.6
  call void @__sanitizer_cov_trace_pc() #13
  %add14.i.i.7 = or i32 %add.i.i, 7
  %arrayidx.i.i.7 = getelementptr i8, ptr %14, i32 %add14.i.i.7
  %81 = ptrtoint ptr %arrayidx.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i.i.7, align 1
  %conv.i.i.7 = zext i8 %82 to i32
  %call15.i.i.7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv.i.i.7) #14
  %83 = ptrtoint ptr %arrayidx.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i.i.7, align 1
  %arrayidx22.i.i.7 = getelementptr i8, ptr %buf, i32 %add14.i.i.7
  %85 = ptrtoint ptr %arrayidx22.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx22.i.i.7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %86)
  %cmp24.not.i.i.7 = icmp eq i8 %84, %86
  %spec.select.i.i.7 = select i1 %cmp24.not.i.i.7, ptr %spec.select.i.i.6, ptr @.str.97
  br label %while.cond26.preheader.i.i

do.end32.i.i:                                     ; preds = %do.end32.i.i.do.end32.i.i_crit_edge, %while.cond26.preheader.i.i.do.end32.i.i_crit_edge
  %j1.1103.i.i = phi i32 [ %add35.i.i, %do.end32.i.i.do.end32.i.i_crit_edge ], [ %inc.i.i.lcssa, %while.cond26.preheader.i.i.do.end32.i.i_crit_edge ]
  %call34.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99) #14
  %add35.i.i = add nuw nsw i32 %j1.1103.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %add35.i.i, 8
  br i1 %exitcond.not.i.i, label %do.end32.i.i.do.end52.preheader.i.i_crit_edge, label %do.end32.i.i.do.end32.i.i_crit_edge

do.end32.i.i.do.end32.i.i_crit_edge:              ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32.i.i

do.end32.i.i.do.end52.preheader.i.i_crit_edge:    ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52.preheader.i.i

do.end52.preheader.i.i:                           ; preds = %do.end32.i.i.do.end52.preheader.i.i_crit_edge, %while.cond26.preheader.i.i.do.end52.preheader.i.i_crit_edge
  %call40.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %spec.select.i.i.lcssa) #14
  %arrayidx56.i.i = getelementptr i8, ptr %buf, i32 %add.i.i
  %87 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx56.i.i, align 1
  %conv57.i.i = zext i8 %88 to i32
  %call58.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv57.i.i) #14
  %add45.i.i = or i32 %i.0109.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add45.i.i, i32 %sub33.i)
  %cmp46.i.i = icmp slt i32 %add45.i.i, %sub33.i
  br i1 %cmp46.i.i, label %do.end52.i.i.1, label %do.end52.preheader.i.i.do.end64.i.i_crit_edge

do.end52.preheader.i.i.do.end64.i.i_crit_edge:    ; preds = %do.end52.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64.i.i

do.end52.i.i.1:                                   ; preds = %do.end52.preheader.i.i
  %add55.i.i.1 = or i32 %add.i.i, 1
  %arrayidx56.i.i.1 = getelementptr i8, ptr %buf, i32 %add55.i.i.1
  %89 = ptrtoint ptr %arrayidx56.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx56.i.i.1, align 1
  %conv57.i.i.1 = zext i8 %90 to i32
  %call58.i.i.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv57.i.i.1) #14
  %add45.i.i.1 = or i32 %i.0109.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add45.i.i.1, i32 %sub33.i)
  %cmp46.i.i.1 = icmp slt i32 %add45.i.i.1, %sub33.i
  br i1 %cmp46.i.i.1, label %do.end52.i.i.2, label %do.end52.i.i.1.do.end64.i.i_crit_edge

do.end52.i.i.1.do.end64.i.i_crit_edge:            ; preds = %do.end52.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64.i.i

do.end52.i.i.2:                                   ; preds = %do.end52.i.i.1
  %add55.i.i.2 = or i32 %add.i.i, 2
  %arrayidx56.i.i.2 = getelementptr i8, ptr %buf, i32 %add55.i.i.2
  %91 = ptrtoint ptr %arrayidx56.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx56.i.i.2, align 1
  %conv57.i.i.2 = zext i8 %92 to i32
  %call58.i.i.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv57.i.i.2) #14
  %add45.i.i.2 = or i32 %i.0109.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add45.i.i.2, i32 %sub33.i)
  %cmp46.i.i.2 = icmp slt i32 %add45.i.i.2, %sub33.i
  br i1 %cmp46.i.i.2, label %do.end52.i.i.3, label %do.end52.i.i.2.do.end64.i.i_crit_edge

do.end52.i.i.2.do.end64.i.i_crit_edge:            ; preds = %do.end52.i.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64.i.i

do.end52.i.i.3:                                   ; preds = %do.end52.i.i.2
  %add55.i.i.3 = or i32 %add.i.i, 3
  %arrayidx56.i.i.3 = getelementptr i8, ptr %buf, i32 %add55.i.i.3
  %93 = ptrtoint ptr %arrayidx56.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx56.i.i.3, align 1
  %conv57.i.i.3 = zext i8 %94 to i32
  %call58.i.i.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv57.i.i.3) #14
  %add45.i.i.3 = or i32 %i.0109.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add45.i.i.3, i32 %sub33.i)
  %cmp46.i.i.3 = icmp slt i32 %add45.i.i.3, %sub33.i
  br i1 %cmp46.i.i.3, label %do.end52.i.i.4, label %do.end52.i.i.3.do.end64.i.i_crit_edge

do.end52.i.i.3.do.end64.i.i_crit_edge:            ; preds = %do.end52.i.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64.i.i

do.end52.i.i.4:                                   ; preds = %do.end52.i.i.3
  %add55.i.i.4 = or i32 %add.i.i, 4
  %arrayidx56.i.i.4 = getelementptr i8, ptr %buf, i32 %add55.i.i.4
  %95 = ptrtoint ptr %arrayidx56.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx56.i.i.4, align 1
  %conv57.i.i.4 = zext i8 %96 to i32
  %call58.i.i.4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv57.i.i.4) #14
  %add45.i.i.4 = or i32 %i.0109.i.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add45.i.i.4, i32 %sub33.i)
  %cmp46.i.i.4 = icmp slt i32 %add45.i.i.4, %sub33.i
  br i1 %cmp46.i.i.4, label %do.end52.i.i.5, label %do.end52.i.i.4.do.end64.i.i_crit_edge

do.end52.i.i.4.do.end64.i.i_crit_edge:            ; preds = %do.end52.i.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64.i.i

do.end52.i.i.5:                                   ; preds = %do.end52.i.i.4
  %add55.i.i.5 = or i32 %add.i.i, 5
  %arrayidx56.i.i.5 = getelementptr i8, ptr %buf, i32 %add55.i.i.5
  %97 = ptrtoint ptr %arrayidx56.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx56.i.i.5, align 1
  %conv57.i.i.5 = zext i8 %98 to i32
  %call58.i.i.5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv57.i.i.5) #14
  %add45.i.i.5 = or i32 %i.0109.i.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add45.i.i.5, i32 %sub33.i)
  %cmp46.i.i.5 = icmp slt i32 %add45.i.i.5, %sub33.i
  br i1 %cmp46.i.i.5, label %do.end52.i.i.6, label %do.end52.i.i.5.do.end64.i.i_crit_edge

do.end52.i.i.5.do.end64.i.i_crit_edge:            ; preds = %do.end52.i.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64.i.i

do.end52.i.i.6:                                   ; preds = %do.end52.i.i.5
  %add55.i.i.6 = or i32 %add.i.i, 6
  %arrayidx56.i.i.6 = getelementptr i8, ptr %buf, i32 %add55.i.i.6
  %99 = ptrtoint ptr %arrayidx56.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx56.i.i.6, align 1
  %conv57.i.i.6 = zext i8 %100 to i32
  %call58.i.i.6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv57.i.i.6) #14
  %add45.i.i.6 = or i32 %i.0109.i.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add45.i.i.6, i32 %sub33.i)
  %cmp46.i.i.6 = icmp slt i32 %add45.i.i.6, %sub33.i
  br i1 %cmp46.i.i.6, label %do.end52.i.i.7, label %do.end52.i.i.6.do.end64.i.i_crit_edge

do.end52.i.i.6.do.end64.i.i_crit_edge:            ; preds = %do.end52.i.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64.i.i

do.end52.i.i.7:                                   ; preds = %do.end52.i.i.6
  call void @__sanitizer_cov_trace_pc() #13
  %add55.i.i.7 = or i32 %add.i.i, 7
  %arrayidx56.i.i.7 = getelementptr i8, ptr %buf, i32 %add55.i.i.7
  %101 = ptrtoint ptr %arrayidx56.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx56.i.i.7, align 1
  %conv57.i.i.7 = zext i8 %102 to i32
  %call58.i.i.7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv57.i.i.7) #14
  br label %do.end64.i.i

do.end64.i.i:                                     ; preds = %do.end52.i.i.7, %do.end52.i.i.6.do.end64.i.i_crit_edge, %do.end52.i.i.5.do.end64.i.i_crit_edge, %do.end52.i.i.4.do.end64.i.i_crit_edge, %do.end52.i.i.3.do.end64.i.i_crit_edge, %do.end52.i.i.2.do.end64.i.i_crit_edge, %do.end52.i.i.1.do.end64.i.i_crit_edge, %do.end52.preheader.i.i.do.end64.i.i_crit_edge
  %call66.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #14
  %add67.i.i = add i32 %i.0109.i.i, 8
  %cmp.i.i = icmp slt i32 %add67.i.i, %sub33.i
  br i1 %cmp.i.i, label %do.end64.i.i.do.end11.preheader.i.i_crit_edge, label %do.end64.i.i.for.inc34.i_crit_edge

do.end64.i.i.for.inc34.i_crit_edge:               ; preds = %do.end64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc34.i

do.end64.i.i.do.end11.preheader.i.i_crit_edge:    ; preds = %do.end64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11.preheader.i.i

for.inc34.i:                                      ; preds = %do.end64.i.i.for.inc34.i_crit_edge, %do.end21.i.for.inc34.i_crit_edge, %for.body12.i.for.inc34.i_crit_edge
  %103 = load i32, ptr @pgsize, align 4
  %add35.i = add i32 %103, %i.160.i
  %cmp11.i = icmp ult i32 %add35.i, %check_len.0.i
  br i1 %cmp11.i, label %for.inc34.i.for.body12.i_crit_edge, label %for.inc34.i.report_corrupt.exit_crit_edge

for.inc34.i.report_corrupt.exit_crit_edge:        ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_corrupt.exit

for.inc34.i.for.body12.i_crit_edge:               ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12.i

for.end36.critedge.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.c.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  %call9.c.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #14
  br label %report_corrupt.exit

report_corrupt.exit:                              ; preds = %for.end36.critedge.i, %for.inc34.i.report_corrupt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes.i) #11
  %exitcond.not = icmp eq i32 %retries.0, 3
  br i1 %exitcond.not, label %do.end50, label %if.then41

if.then41:                                        ; preds = %report_corrupt.exit
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add nuw nsw i32 %retries.0, 1
  call void @yield() #11
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %ebnum) #14
  br label %retry

do.end50:                                         ; preds = %report_corrupt.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 3) #14
  br label %cleanup

if.end53:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0)
  %cmp54.not = icmp eq i32 %retries.0, 0
  br i1 %cmp54.not, label %if.end53.cleanup_crit_edge, label %do.end59

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %retries.0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.end53.cleanup_crit_edge, %do.end50, %do.end27, %do.end18
  %retval.0 = phi i32 [ -5, %do.end27 ], [ -22, %do.end50 ], [ %call, %do.end18 ], [ 0, %do.end59 ], [ 0, %if.end53.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mtd_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @countdiffs(ptr nocapture noundef readonly %buf, ptr nocapture noundef readonly %check_buf, i32 noundef %offset, i32 noundef %len, ptr nocapture noundef %bytesp, ptr nocapture noundef %bitsp) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp53 = icmp ugt i32 %add, %offset
  br i1 %cmp53, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %offset, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.054
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr i8, ptr %check_buf, i32 %i.054
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp3.not = icmp eq i8 %1, %3
  br i1 %cmp3.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.inc.while.end32_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.while.end32_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end32

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %offset, %entry.for.end_crit_edge ], [ %i.054, %for.body.for.end_crit_edge ]
  %first.0 = phi i32 [ -1, %entry.for.end_crit_edge ], [ %i.054, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %add)
  %cmp661 = icmp ult i32 %i.0.lcssa, %add
  br i1 %cmp661, label %for.end.while.body_crit_edge, label %for.end.while.end32_crit_edge

for.end.while.end32_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end32

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %for.end.while.body_crit_edge
  %i.162 = phi i32 [ %inc31, %if.end30.while.body_crit_edge ], [ %i.0.lcssa, %for.end.while.body_crit_edge ]
  %arrayidx8 = getelementptr i8, ptr %buf, i32 %i.162
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr i8, ptr %check_buf, i32 %i.162
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp12.not = icmp eq i8 %5, %7
  br i1 %cmp12.not, label %while.body.if.end30_crit_edge, label %if.then14

while.body.if.end30_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then14:                                        ; preds = %while.body
  %8 = ptrtoint ptr %bytesp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytesp, align 4
  %inc15 = add i32 %9, 1
  store i32 %inc15, ptr %bytesp, align 4
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx10, align 1
  %14 = xor i8 %13, %11
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp25.not = icmp eq i8 %15, 0
  br i1 %cmp25.not, label %if.then14.if.end29_crit_edge, label %if.then27

if.then14.if.end29_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then27:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %bitsp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bitsp, align 4
  %inc28 = add i32 %17, 1
  store i32 %inc28, ptr %bitsp, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then14.if.end29_crit_edge
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx8, align 1
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx10, align 1
  %22 = xor i8 %21, %19
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp25.not.1 = icmp eq i8 %23, 0
  br i1 %cmp25.not.1, label %if.end29.if.end29.1_crit_edge, label %if.then27.1

if.end29.if.end29.1_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.1

if.then27.1:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %bitsp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bitsp, align 4
  %inc28.1 = add i32 %25, 1
  store i32 %inc28.1, ptr %bitsp, align 4
  br label %if.end29.1

if.end29.1:                                       ; preds = %if.then27.1, %if.end29.if.end29.1_crit_edge
  %26 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx8, align 1
  %28 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx10, align 1
  %30 = xor i8 %29, %27
  %31 = and i8 %30, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp25.not.2 = icmp eq i8 %31, 0
  br i1 %cmp25.not.2, label %if.end29.1.if.end29.2_crit_edge, label %if.then27.2

if.end29.1.if.end29.2_crit_edge:                  ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.2

if.then27.2:                                      ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %bitsp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bitsp, align 4
  %inc28.2 = add i32 %33, 1
  store i32 %inc28.2, ptr %bitsp, align 4
  br label %if.end29.2

if.end29.2:                                       ; preds = %if.then27.2, %if.end29.1.if.end29.2_crit_edge
  %34 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx8, align 1
  %36 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx10, align 1
  %38 = xor i8 %37, %35
  %39 = and i8 %38, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp25.not.3 = icmp eq i8 %39, 0
  br i1 %cmp25.not.3, label %if.end29.2.if.end29.3_crit_edge, label %if.then27.3

if.end29.2.if.end29.3_crit_edge:                  ; preds = %if.end29.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.3

if.then27.3:                                      ; preds = %if.end29.2
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %bitsp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bitsp, align 4
  %inc28.3 = add i32 %41, 1
  store i32 %inc28.3, ptr %bitsp, align 4
  br label %if.end29.3

if.end29.3:                                       ; preds = %if.then27.3, %if.end29.2.if.end29.3_crit_edge
  %42 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx8, align 1
  %44 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx10, align 1
  %46 = xor i8 %45, %43
  %47 = and i8 %46, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp25.not.4 = icmp eq i8 %47, 0
  br i1 %cmp25.not.4, label %if.end29.3.if.end29.4_crit_edge, label %if.then27.4

if.end29.3.if.end29.4_crit_edge:                  ; preds = %if.end29.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.4

if.then27.4:                                      ; preds = %if.end29.3
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %bitsp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bitsp, align 4
  %inc28.4 = add i32 %49, 1
  store i32 %inc28.4, ptr %bitsp, align 4
  br label %if.end29.4

if.end29.4:                                       ; preds = %if.then27.4, %if.end29.3.if.end29.4_crit_edge
  %50 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx8, align 1
  %52 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx10, align 1
  %54 = xor i8 %53, %51
  %55 = and i8 %54, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp25.not.5 = icmp eq i8 %55, 0
  br i1 %cmp25.not.5, label %if.end29.4.if.end29.5_crit_edge, label %if.then27.5

if.end29.4.if.end29.5_crit_edge:                  ; preds = %if.end29.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.5

if.then27.5:                                      ; preds = %if.end29.4
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %bitsp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bitsp, align 4
  %inc28.5 = add i32 %57, 1
  store i32 %inc28.5, ptr %bitsp, align 4
  br label %if.end29.5

if.end29.5:                                       ; preds = %if.then27.5, %if.end29.4.if.end29.5_crit_edge
  %58 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx8, align 1
  %60 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx10, align 1
  %62 = xor i8 %61, %59
  %63 = and i8 %62, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp25.not.6 = icmp eq i8 %63, 0
  br i1 %cmp25.not.6, label %if.end29.5.if.end29.6_crit_edge, label %if.then27.6

if.end29.5.if.end29.6_crit_edge:                  ; preds = %if.end29.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.6

if.then27.6:                                      ; preds = %if.end29.5
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %bitsp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bitsp, align 4
  %inc28.6 = add i32 %65, 1
  store i32 %inc28.6, ptr %bitsp, align 4
  br label %if.end29.6

if.end29.6:                                       ; preds = %if.then27.6, %if.end29.5.if.end29.6_crit_edge
  %66 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx8, align 1
  %68 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx10, align 1
  %70 = xor i8 %69, %67
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %70)
  %cmp25.not.7 = icmp sgt i8 %70, -1
  br i1 %cmp25.not.7, label %if.end29.6.if.end30_crit_edge, label %if.then27.7

if.end29.6.if.end30_crit_edge:                    ; preds = %if.end29.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then27.7:                                      ; preds = %if.end29.6
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %bitsp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bitsp, align 4
  %inc28.7 = add i32 %72, 1
  store i32 %inc28.7, ptr %bitsp, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27.7, %if.end29.6.if.end30_crit_edge, %while.body.if.end30_crit_edge
  %inc31 = add nuw i32 %i.162, 1
  %exitcond63.not = icmp eq i32 %inc31, %add
  br i1 %exitcond63.not, label %if.end30.while.end32_crit_edge, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end30.while.end32_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end32

while.end32:                                      ; preds = %if.end30.while.end32_crit_edge, %for.end.while.end32_crit_edge, %for.inc.while.end32_crit_edge
  %first.067 = phi i32 [ %first.0, %for.end.while.end32_crit_edge ], [ %first.0, %if.end30.while.end32_crit_edge ], [ -1, %for.inc.while.end32_crit_edge ]
  ret i32 %first.067
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !46, !48, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !141, !143, !145, !147, !149, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !208, !210, !211, !212, !214, !216, !217, !218, !220, !221, !222, !224, !225, !227, !228, !229, !231, !233, !234, !235, !236, !238, !240, !241, !242, !243, !245, !246, !247, !249}
!llvm.named.register.sp = !{!251}
!llvm.module.flags = !{!252, !253, !254, !255, !256, !257, !258, !259}
!llvm.ident = !{!260}

!0 = !{ptr @__param_eb, !1, !"__param_eb", i1 false, i1 false}
!1 = !{!"../drivers/mtd/tests/torturetest.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_ebtype201, !1, !"__UNIQUE_ID_ebtype201", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_eb202, !4, !"__UNIQUE_ID_eb202", i1 false, i1 false}
!4 = !{!"../drivers/mtd/tests/torturetest.c", i32 30, i32 1}
!5 = !{ptr @__param_ebcnt, !6, !"__param_ebcnt", i1 false, i1 false}
!6 = !{!"../drivers/mtd/tests/torturetest.c", i32 33, i32 1}
!7 = !{ptr @__UNIQUE_ID_ebcnttype203, !6, !"__UNIQUE_ID_ebcnttype203", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_ebcnt204, !9, !"__UNIQUE_ID_ebcnt204", i1 false, i1 false}
!9 = !{!"../drivers/mtd/tests/torturetest.c", i32 34, i32 1}
!10 = !{ptr @__param_pgcnt, !11, !"__param_pgcnt", i1 false, i1 false}
!11 = !{!"../drivers/mtd/tests/torturetest.c", i32 37, i32 1}
!12 = !{ptr @__UNIQUE_ID_pgcnttype205, !11, !"__UNIQUE_ID_pgcnttype205", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_pgcnt206, !14, !"__UNIQUE_ID_pgcnt206", i1 false, i1 false}
!14 = !{!"../drivers/mtd/tests/torturetest.c", i32 38, i32 1}
!15 = !{ptr @__param_dev, !16, !"__param_dev", i1 false, i1 false}
!16 = !{!"../drivers/mtd/tests/torturetest.c", i32 41, i32 1}
!17 = !{ptr @__UNIQUE_ID_devtype207, !16, !"__UNIQUE_ID_devtype207", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_dev208, !19, !"__UNIQUE_ID_dev208", i1 false, i1 false}
!19 = !{!"../drivers/mtd/tests/torturetest.c", i32 42, i32 1}
!20 = !{ptr @__param_gran, !21, !"__param_gran", i1 false, i1 false}
!21 = !{!"../drivers/mtd/tests/torturetest.c", i32 45, i32 1}
!22 = !{ptr @__UNIQUE_ID_grantype209, !21, !"__UNIQUE_ID_grantype209", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_gran210, !24, !"__UNIQUE_ID_gran210", i1 false, i1 false}
!24 = !{!"../drivers/mtd/tests/torturetest.c", i32 46, i32 1}
!25 = !{ptr @__param_check, !26, !"__param_check", i1 false, i1 false}
!26 = !{!"../drivers/mtd/tests/torturetest.c", i32 49, i32 1}
!27 = !{ptr @__UNIQUE_ID_checktype211, !26, !"__UNIQUE_ID_checktype211", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_check212, !29, !"__UNIQUE_ID_check212", i1 false, i1 false}
!29 = !{!"../drivers/mtd/tests/torturetest.c", i32 50, i32 1}
!30 = !{ptr @__param_cycles_count, !31, !"__param_cycles_count", i1 false, i1 false}
!31 = !{!"../drivers/mtd/tests/torturetest.c", i32 53, i32 1}
!32 = !{ptr @__UNIQUE_ID_cycles_counttype213, !31, !"__UNIQUE_ID_cycles_counttype213", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_cycles_count214, !34, !"__UNIQUE_ID_cycles_count214", i1 false, i1 false}
!34 = !{!"../drivers/mtd/tests/torturetest.c", i32 54, i32 1}
!35 = !{ptr @__UNIQUE_ID_description215, !36, !"__UNIQUE_ID_description215", i1 false, i1 false}
!36 = !{!"../drivers/mtd/tests/torturetest.c", i32 478, i32 1}
!37 = !{ptr @__UNIQUE_ID_author216, !38, !"__UNIQUE_ID_author216", i1 false, i1 false}
!38 = !{!"../drivers/mtd/tests/torturetest.c", i32 479, i32 1}
!39 = !{ptr @__UNIQUE_ID_license217, !40, !"__UNIQUE_ID_license217", i1 false, i1 false}
!40 = !{!"../drivers/mtd/tests/torturetest.c", i32 480, i32 1}
!41 = !{ptr @pgcnt, !42, !"pgcnt", i1 false, i1 false}
!42 = !{!"../drivers/mtd/tests/torturetest.c", i32 36, i32 12}
!43 = !{ptr @cycles_count, !44, !"cycles_count", i1 false, i1 false}
!44 = !{!"../drivers/mtd/tests/torturetest.c", i32 52, i32 21}
!45 = !{ptr @___asan_gen_.117, !1, !"__param_str_eb", i1 false, i1 false}
!46 = !{ptr @eb, !47, !"eb", i1 false, i1 false}
!47 = !{!"../drivers/mtd/tests/torturetest.c", i32 28, i32 12}
!48 = !{ptr @___asan_gen_.120, !6, !"__param_str_ebcnt", i1 false, i1 false}
!49 = !{ptr @ebcnt, !50, !"ebcnt", i1 false, i1 false}
!50 = !{!"../drivers/mtd/tests/torturetest.c", i32 32, i32 12}
!51 = !{ptr @___asan_gen_.123, !11, !"__param_str_pgcnt", i1 false, i1 false}
!52 = !{ptr @___asan_gen_.126, !16, !"__param_str_dev", i1 false, i1 false}
!53 = !{ptr @dev, !54, !"dev", i1 false, i1 false}
!54 = !{!"../drivers/mtd/tests/torturetest.c", i32 40, i32 12}
!55 = !{ptr @___asan_gen_.129, !21, !"__param_str_gran", i1 false, i1 false}
!56 = !{ptr @gran, !57, !"gran", i1 false, i1 false}
!57 = !{!"../drivers/mtd/tests/torturetest.c", i32 44, i32 12}
!58 = !{ptr @___asan_gen_.132, !26, !"__param_str_check", i1 false, i1 false}
!59 = !{ptr @check, !60, !"check", i1 false, i1 false}
!60 = !{!"../drivers/mtd/tests/torturetest.c", i32 48, i32 12}
!61 = !{ptr @___asan_gen_.135, !31, !"__param_str_cycles_count", i1 false, i1 false}
!62 = !{ptr @.str, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/tests/torturetest.c", i32 174, i32 2}
!64 = !{ptr @.str.1, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.2, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @tort_init._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @tort_init._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.4, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/tests/torturetest.c", i32 175, i32 2}
!70 = !{ptr @tort_init._entry.3, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @tort_init._entry_ptr.5, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.7, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/tests/torturetest.c", i32 176, i32 2}
!74 = !{ptr @tort_init._entry.6, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @tort_init._entry_ptr.8, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.10, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/tests/torturetest.c", i32 180, i32 3}
!78 = !{ptr @tort_init._entry.9, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @tort_init._entry_ptr.11, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.13, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/tests/torturetest.c", i32 181, i32 3}
!82 = !{ptr @tort_init._entry.12, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @tort_init._entry_ptr.14, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.16, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/tests/torturetest.c", i32 185, i32 2}
!86 = !{ptr @tort_init._entry.15, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @tort_init._entry_ptr.17, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.19, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/tests/torturetest.c", i32 186, i32 2}
!90 = !{ptr @tort_init._entry.18, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @tort_init._entry_ptr.20, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.22, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mtd/tests/torturetest.c", i32 189, i32 3}
!94 = !{ptr @tort_init._entry.21, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @tort_init._entry_ptr.23, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.25, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mtd/tests/torturetest.c", i32 191, i32 2}
!98 = !{ptr @tort_init._entry.24, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @tort_init._entry_ptr.26, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/tests/torturetest.c", i32 196, i32 3}
!104 = !{ptr @tort_init._entry.29, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @tort_init._entry_ptr.31, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mtd/tests/torturetest.c", i32 201, i32 3}
!108 = !{ptr @tort_init._entry.32, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @tort_init._entry_ptr.34, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.36, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mtd/tests/torturetest.c", i32 208, i32 3}
!112 = !{ptr @tort_init._entry.35, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @tort_init._entry_ptr.37, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/tests/torturetest.c", i32 265, i32 6}
!116 = !{ptr @tort_init._entry.38, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @tort_init._entry_ptr.40, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mtd/tests/torturetest.c", i32 304, i32 6}
!120 = !{ptr @tort_init._entry.41, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @tort_init._entry_ptr.43, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mtd/tests/torturetest.c", i32 324, i32 4}
!126 = !{ptr @tort_init._entry.46, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @tort_init._entry_ptr.48, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mtd/tests/torturetest.c", i32 335, i32 2}
!130 = !{ptr @tort_init._entry.49, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @tort_init._entry_ptr.51, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/tests/torturetest.c", i32 349, i32 3}
!134 = !{ptr @tort_init._entry.52, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @tort_init._entry_ptr.54, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @tort_init._entry.55, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../drivers/mtd/tests/torturetest.c", i32 350, i32 2}
!138 = !{ptr @tort_init._entry_ptr.56, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @mtd, !140, !"mtd", i1 false, i1 false}
!140 = !{!"../drivers/mtd/tests/torturetest.c", i32 57, i32 25}
!141 = !{ptr @pgsize, !142, !"pgsize", i1 false, i1 false}
!142 = !{!"../drivers/mtd/tests/torturetest.c", i32 70, i32 12}
!143 = !{ptr @patt_5A5, !144, !"patt_5A5", i1 false, i1 false}
!144 = !{!"../drivers/mtd/tests/torturetest.c", i32 60, i32 23}
!145 = !{ptr @patt_A5A, !146, !"patt_A5A", i1 false, i1 false}
!146 = !{!"../drivers/mtd/tests/torturetest.c", i32 62, i32 23}
!147 = !{ptr @patt_FF, !148, !"patt_FF", i1 false, i1 false}
!148 = !{!"../drivers/mtd/tests/torturetest.c", i32 64, i32 23}
!149 = !{ptr @check_buf, !150, !"check_buf", i1 false, i1 false}
!150 = !{!"../drivers/mtd/tests/torturetest.c", i32 66, i32 23}
!151 = !{ptr @.str.57, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mtd/tests/torturetest.c", i32 104, i32 3}
!153 = !{ptr @.str.58, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @check_eraseblock._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @check_eraseblock._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mtd/tests/torturetest.c", i32 107, i32 3}
!158 = !{ptr @check_eraseblock._entry.59, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @check_eraseblock._entry_ptr.61, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.63, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mtd/tests/torturetest.c", i32 113, i32 3}
!162 = !{ptr @check_eraseblock._entry.62, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @check_eraseblock._entry_ptr.64, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.66, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/mtd/tests/torturetest.c", i32 120, i32 3}
!166 = !{ptr @check_eraseblock._entry.65, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @check_eraseblock._entry_ptr.67, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/mtd/tests/torturetest.c", i32 126, i32 4}
!170 = !{ptr @check_eraseblock._entry.68, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @check_eraseblock._entry_ptr.70, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.72, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mtd/tests/torturetest.c", i32 130, i32 4}
!174 = !{ptr @check_eraseblock._entry.71, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @check_eraseblock._entry_ptr.73, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/mtd/tests/torturetest.c", i32 137, i32 3}
!178 = !{ptr @check_eraseblock._entry.74, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @check_eraseblock._entry_ptr.76, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/mtd/tests/torturetest.c", i32 387, i32 2}
!182 = !{ptr @.str.78, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @report_corrupt._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @report_corrupt._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.80, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/mtd/tests/torturetest.c", i32 389, i32 2}
!187 = !{ptr @report_corrupt._entry.79, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @report_corrupt._entry_ptr.81, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.83, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mtd/tests/torturetest.c", i32 400, i32 3}
!191 = !{ptr @report_corrupt._entry.82, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @report_corrupt._entry_ptr.84, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mtd/tests/torturetest.c", i32 403, i32 3}
!195 = !{ptr @report_corrupt._entry.85, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @report_corrupt._entry_ptr.87, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/mtd/tests/torturetest.c", i32 421, i32 2}
!199 = !{ptr @.str.89, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @print_bufs._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @print_bufs._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.91, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/mtd/tests/torturetest.c", i32 423, i32 3}
!204 = !{ptr @print_bufs._entry.90, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @print_bufs._entry_ptr.92, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.93, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/mtd/tests/torturetest.c", i32 424, i32 10}
!208 = !{ptr @.str.95, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/mtd/tests/torturetest.c", i32 426, i32 4}
!210 = !{ptr @print_bufs._entry.94, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @print_bufs._entry_ptr.96, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.97, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/mtd/tests/torturetest.c", i32 428, i32 12}
!214 = !{ptr @.str.99, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/mtd/tests/torturetest.c", i32 432, i32 4}
!216 = !{ptr @print_bufs._entry.98, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @print_bufs._entry_ptr.100, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.102, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/mtd/tests/torturetest.c", i32 436, i32 3}
!220 = !{ptr @print_bufs._entry.101, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @print_bufs._entry_ptr.103, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @print_bufs._entry.104, !223, !"_entry", i1 false, i1 false}
!223 = !{!"../drivers/mtd/tests/torturetest.c", i32 439, i32 4}
!224 = !{ptr @print_bufs._entry_ptr.105, !223, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.107, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/mtd/tests/torturetest.c", i32 440, i32 3}
!227 = !{ptr @print_bufs._entry.106, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @print_bufs._entry_ptr.108, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.109, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/mtd/tests/mtd_test.h", i32 7, i32 2}
!231 = !{ptr @.str.110, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/mtd/tests/mtd_test.h", i32 9, i32 3}
!233 = !{ptr @.str.111, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @mtdtest_relax._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @mtdtest_relax._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @erase_cycles, !237, !"erase_cycles", i1 false, i1 false}
!237 = !{!"../drivers/mtd/tests/torturetest.c", i32 68, i32 21}
!238 = !{ptr @.str.112, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/mtd/tests/torturetest.c", i32 156, i32 3}
!240 = !{ptr @.str.113, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @write_pattern._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @write_pattern._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.115, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/mtd/tests/torturetest.c", i32 161, i32 3}
!245 = !{ptr @write_pattern._entry.114, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @write_pattern._entry_ptr.116, !244, !"_entry_ptr", i1 false, i1 false}
!247 = distinct !{null, !248, !"finish", i1 false, i1 false}
!248 = !{!"../drivers/mtd/tests/torturetest.c", i32 71, i32 23}
!249 = !{ptr @start, !250, !"start", i1 false, i1 false}
!250 = !{!"../drivers/mtd/tests/torturetest.c", i32 71, i32 16}
!251 = !{!"sp"}
!252 = !{i32 1, !"wchar_size", i32 2}
!253 = !{i32 1, !"min_enum_size", i32 4}
!254 = !{i32 8, !"branch-target-enforcement", i32 0}
!255 = !{i32 8, !"sign-return-address", i32 0}
!256 = !{i32 8, !"sign-return-address-all", i32 0}
!257 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!258 = !{i32 7, !"uwtable", i32 1}
!259 = !{i32 7, !"frame-pointer", i32 2}
!260 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!261 = !{!"branch_weights", i32 2000, i32 1}
!262 = !{!"auto-init"}
!263 = !{i64 574421, i64 574448}
!264 = !{i64 575116, i64 575143, i64 575176, i64 575197, i64 575224, i64 575250}
