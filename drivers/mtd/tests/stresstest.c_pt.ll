; ModuleID = '/llk/IR_all_yes/drivers/mtd/tests/stresstest.c_pt.bc'
source_filename = "../drivers/mtd/tests/stresstest.c"
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
@dev = internal global { i32, [28 x i8] } { i32 -22, [28 x i8] zeroinitializer }, align 32
@__param_dev = internal constant %struct.kernel_param { ptr @___asan_gen_.44, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @dev } }, section "__param", align 4
@__UNIQUE_ID_devtype201 = internal constant [17 x i8] c"parmtype=dev:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dev202 = internal constant [34 x i8] c"parm=dev:MTD device number to use\00", section ".modinfo", align 1
@count = internal global { i32, [28 x i8] } { i32 10000, [28 x i8] zeroinitializer }, align 32
@__param_count = internal constant %struct.kernel_param { ptr @___asan_gen_.47, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @count } }, section "__param", align 4
@__UNIQUE_ID_counttype203 = internal constant [19 x i8] c"parmtype=count:int\00", section ".modinfo", align 1
@__UNIQUE_ID_count204 = internal constant [57 x i8] c"parm=count:Number of operations to do (default is 10000)\00", section ".modinfo", align 1
@__UNIQUE_ID_description205 = internal constant [31 x i8] c"description=Stress test module\00", section ".modinfo", align 1
@__UNIQUE_ID_author206 = internal constant [21 x i8] c"author=Adrian Hunter\00", section ".modinfo", align 1
@__UNIQUE_ID_license207 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@mtd_stresstest_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtd_stresstest_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mtd/tests/stresstest.c\00", [33 x i8] zeroinitializer }, align 32
@mtd_stresstest_init._entry_ptr = internal global ptr @mtd_stresstest_init._entry, section ".printk_index", align 4
@mtd_stresstest_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016=================================================\0A\00", [43 x i8] zeroinitializer }, align 32
@mtd_stresstest_init._entry_ptr.5 = internal global ptr @mtd_stresstest_init._entry.3, section ".printk_index", align 4
@mtd_stresstest_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016mtd_stresstest: Please specify a valid mtd-device via module parameter\0A\00", [54 x i8] zeroinitializer }, align 32
@mtd_stresstest_init._entry_ptr.8 = internal global ptr @mtd_stresstest_init._entry.6, section ".printk_index", align 4
@mtd_stresstest_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\012mtd_stresstest: CAREFUL: This test wipes all data on the specified MTD device!\0A\00", [46 x i8] zeroinitializer }, align 32
@mtd_stresstest_init._entry_ptr.11 = internal global ptr @mtd_stresstest_init._entry.9, section ".printk_index", align 4
@mtd_stresstest_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016mtd_stresstest: MTD device: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mtd_stresstest_init._entry_ptr.14 = internal global ptr @mtd_stresstest_init._entry.12, section ".printk_index", align 4
@mtd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mtd_stresstest_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013mtd_stresstest: error: cannot get MTD device\0A\00", [48 x i8] zeroinitializer }, align 32
@mtd_stresstest_init._entry_ptr.17 = internal global ptr @mtd_stresstest_init._entry.15, section ".printk_index", align 4
@mtd_stresstest_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016mtd_stresstest: not NAND flash, assume page size is 512 bytes.\0A\00", [62 x i8] zeroinitializer }, align 32
@mtd_stresstest_init._entry_ptr.20 = internal global ptr @mtd_stresstest_init._entry.18, section ".printk_index", align 4
@pgsize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ebcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mtd_stresstest_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [137 x i8], [55 x i8] } { [137 x i8] c"\016mtd_stresstest: MTD device size %llu, eraseblock size %u, page size %u, count of eraseblocks %u, pages per eraseblock %u, OOB size %u\0A\00", [55 x i8] zeroinitializer }, align 32
@mtd_stresstest_init._entry_ptr.23 = internal global ptr @mtd_stresstest_init._entry.21, section ".printk_index", align 4
@mtd_stresstest_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013mtd_stresstest: error: need at least 2 eraseblocks\0A\00", [42 x i8] zeroinitializer }, align 32
@mtd_stresstest_init._entry_ptr.26 = internal global ptr @mtd_stresstest_init._entry.24, section ".printk_index", align 4
@bufsize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@readbuf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@writebuf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@offsets = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bbt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mtd_stresstest_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016mtd_stresstest: doing operations\0A\00", [60 x i8] zeroinitializer }, align 32
@mtd_stresstest_init._entry_ptr.29 = internal global ptr @mtd_stresstest_init._entry.27, section ".printk_index", align 4
@mtd_stresstest_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016mtd_stresstest: %d operations done\0A\00", [58 x i8] zeroinitializer }, align 32
@mtd_stresstest_init._entry_ptr.32 = internal global ptr @mtd_stresstest_init._entry.30, section ".printk_index", align 4
@mtd_stresstest_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016mtd_stresstest: finished, %d operations done\0A\00", [48 x i8] zeroinitializer }, align 32
@mtd_stresstest_init._entry_ptr.35 = internal global ptr @mtd_stresstest_init._entry.33, section ".printk_index", align 4
@mtd_stresstest_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016mtd_stresstest: error %d occurred\0A\00", [59 x i8] zeroinitializer }, align 32
@mtd_stresstest_init._entry_ptr.38 = internal global ptr @mtd_stresstest_init._entry.36, section ".printk_index", align 4
@mtd_stresstest_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_stresstest_init._entry_ptr.40 = internal global ptr @mtd_stresstest_init._entry.39, section ".printk_index", align 4
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/tests/mtd_test.h\00", [35 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.41, i32 9, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016mtd_stresstest: aborting test due to pending signal!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtdtest_relax\00", [18 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry_ptr = internal global ptr @mtdtest_relax._entry, section ".printk_index", align 4
@___asan_gen_.44 = private constant [4 x i8] c"dev\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 24, i32 12 }
@___asan_gen_.47 = private constant [6 x i8] c"count\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 28, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 142, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 143, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 146, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 147, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 151, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [4 x i8] c"mtd\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 32, i32 25 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 156, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 161, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"pgsize\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 38, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"ebcnt\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 40, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 172, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 179, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [8 x i8] c"bufsize\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 39, i32 12 }
@___asan_gen_.122 = private unnamed_addr constant [8 x i8] c"readbuf\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 34, i32 23 }
@___asan_gen_.125 = private unnamed_addr constant [9 x i8] c"writebuf\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 33, i32 23 }
@___asan_gen_.128 = private unnamed_addr constant [8 x i8] c"offsets\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 36, i32 13 }
@___asan_gen_.131 = private unnamed_addr constant [4 x i8] c"bbt\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 35, i32 23 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 205, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 208, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 217, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 227, i32 3 }
@___asan_gen_.159 = private constant [34 x i8] c"../drivers/mtd/tests/stresstest.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 228, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 7, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [32 x i8] c"../drivers/mtd/tests/mtd_test.h\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 9, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author206, ptr @__UNIQUE_ID_count204, ptr @__UNIQUE_ID_counttype203, ptr @__UNIQUE_ID_description205, ptr @__UNIQUE_ID_dev202, ptr @__UNIQUE_ID_devtype201, ptr @__UNIQUE_ID_license207, ptr @__param_count, ptr @__param_dev, ptr @mtd_stresstest_init._entry, ptr @mtd_stresstest_init._entry.12, ptr @mtd_stresstest_init._entry.15, ptr @mtd_stresstest_init._entry.18, ptr @mtd_stresstest_init._entry.21, ptr @mtd_stresstest_init._entry.24, ptr @mtd_stresstest_init._entry.27, ptr @mtd_stresstest_init._entry.3, ptr @mtd_stresstest_init._entry.30, ptr @mtd_stresstest_init._entry.33, ptr @mtd_stresstest_init._entry.36, ptr @mtd_stresstest_init._entry.39, ptr @mtd_stresstest_init._entry.6, ptr @mtd_stresstest_init._entry.9, ptr @mtd_stresstest_init._entry_ptr, ptr @mtd_stresstest_init._entry_ptr.11, ptr @mtd_stresstest_init._entry_ptr.14, ptr @mtd_stresstest_init._entry_ptr.17, ptr @mtd_stresstest_init._entry_ptr.20, ptr @mtd_stresstest_init._entry_ptr.23, ptr @mtd_stresstest_init._entry_ptr.26, ptr @mtd_stresstest_init._entry_ptr.29, ptr @mtd_stresstest_init._entry_ptr.32, ptr @mtd_stresstest_init._entry_ptr.35, ptr @mtd_stresstest_init._entry_ptr.38, ptr @mtd_stresstest_init._entry_ptr.40, ptr @mtd_stresstest_init._entry_ptr.5, ptr @mtd_stresstest_init._entry_ptr.8, ptr @mtdtest_relax._entry, ptr @mtdtest_relax._entry_ptr, ptr @dev, ptr @count, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @mtd, ptr @.str.16, ptr @.str.19, ptr @pgsize, ptr @ebcnt, ptr @.str.22, ptr @.str.25, ptr @bufsize, ptr @readbuf, ptr @writebuf, ptr @offsets, ptr @bbt, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_stresstest_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_stresstest_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_stresstest_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_stresstest_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_stresstest_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_stresstest_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_stresstest_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pgsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_stresstest_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 137, i32 192, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_stresstest_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bufsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readbuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writebuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offsets to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_stresstest_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_stresstest_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_stresstest_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_stresstest_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_stresstest_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdtest_relax._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  %0 = load i32, ptr @dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %do.end9, label %do.end19

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %cleanup

do.end19:                                         ; preds = %entry
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %0) #10
  %1 = load i32, ptr @dev, align 4
  %call22 = tail call ptr @get_mtd_device(ptr noundef null, i32 noundef %1) #7
  store ptr %call22, ptr @mtd, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end31:                                         ; preds = %do.end19
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %call22, i32 0, i32 4
  %3 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp32 = icmp eq i32 %4, 1
  br i1 %cmp32, label %do.end36, label %if.end31.if.end40_crit_edge

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

do.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %if.end40

if.end40:                                         ; preds = %do.end36, %if.end31.if.end40_crit_edge
  %storemerge = phi i32 [ 512, %do.end36 ], [ %4, %if.end31.if.end40_crit_edge ]
  store i32 %storemerge, ptr @pgsize, align 4
  %5 = load ptr, ptr @mtd, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size, align 8
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %7)
  %cmp210 = icmp ult i64 %7, 4294967296
  br i1 %cmp210, label %if.then214, label %if.else220, !prof !114

if.then214:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %conv215 = trunc i64 %7 to i32
  %div218 = udiv i32 %conv215, %9
  br label %if.end224

if.else220:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %7) #11, !srcloc !115
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  %extract.t487 = trunc i64 %asmresult1.i to i32
  br label %if.end224

if.end224:                                        ; preds = %if.else220, %if.then214
  %tmp.0.off0 = phi i32 [ %div218, %if.then214 ], [ %extract.t487, %if.else220 ]
  store i32 %tmp.0.off0, ptr @ebcnt, align 4
  %div228 = udiv i32 %9, %storemerge
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oobsize, align 4
  %call235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i64 noundef %7, i32 noundef %9, i32 noundef %storemerge, i32 noundef %tmp.0.off0, i32 noundef %div228, i32 noundef %12) #10
  %13 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp236 = icmp slt i32 %13, 2
  br i1 %cmp236, label %out_put_mtd.thread, label %if.end244

out_put_mtd.thread:                               ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #9
  %call243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  %14 = load ptr, ptr @mtd, align 4
  tail call void @put_mtd_device(ptr noundef %14) #7
  br label %do.end306

if.end244:                                        ; preds = %if.end224
  %15 = load ptr, ptr @mtd, align 4
  %erasesize245 = getelementptr inbounds %struct.mtd_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %erasesize245 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %erasesize245, align 8
  %mul246 = shl i32 %17, 1
  store i32 %mul246, ptr @bufsize, align 4
  %call247 = tail call noalias ptr @vmalloc(i32 noundef %mul246) #12
  store ptr %call247, ptr @readbuf, align 4
  %18 = load i32, ptr @bufsize, align 4
  %call248 = tail call noalias ptr @vmalloc(i32 noundef %18) #12
  store ptr %call248, ptr @writebuf, align 4
  %19 = load i32, ptr @ebcnt, align 4
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 4) #7
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %if.end244.kmalloc_array.exit_crit_edge, label %if.end7.i, !prof !116

if.end244.kmalloc_array.exit_crit_edge:           ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmalloc_array.exit

if.end7.i:                                        ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #9
  %22 = extractvalue { i32, i1 } %20, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3264) #12
  br label %kmalloc_array.exit

kmalloc_array.exit:                               ; preds = %if.end7.i, %if.end244.kmalloc_array.exit_crit_edge
  %retval.0.i = phi ptr [ %call8.i, %if.end7.i ], [ null, %if.end244.kmalloc_array.exit_crit_edge ]
  store ptr %retval.0.i, ptr @offsets, align 4
  %23 = load ptr, ptr @readbuf, align 4
  %tobool250.not = icmp eq ptr %23, null
  br i1 %tobool250.not, label %kmalloc_array.exit.out_put_mtd_crit_edge, label %lor.lhs.false

kmalloc_array.exit.out_put_mtd_crit_edge:         ; preds = %kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_mtd

lor.lhs.false:                                    ; preds = %kmalloc_array.exit
  %24 = load ptr, ptr @writebuf, align 4
  %tobool251.not = icmp eq ptr %24, null
  %tobool253.not = icmp eq ptr %retval.0.i, null
  %or.cond = select i1 %tobool251.not, i1 true, i1 %tobool253.not
  br i1 %or.cond, label %lor.lhs.false.out_put_mtd_crit_edge, label %for.cond.preheader

lor.lhs.false.out_put_mtd_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_mtd

for.cond.preheader:                               ; preds = %lor.lhs.false
  %25 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp256491 = icmp sgt i32 %25, 0
  br i1 %cmp256491, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0492 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %26 = load ptr, ptr @mtd, align 4
  %erasesize258 = getelementptr inbounds %struct.mtd_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %erasesize258 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %erasesize258, align 8
  %arrayidx = getelementptr i32, ptr %retval.0.i, i32 %i.0492
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0492, 1
  %30 = load i32, ptr @ebcnt, align 4
  %cmp256 = icmp slt i32 %inc, %30
  br i1 %cmp256, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %31 = load ptr, ptr @writebuf, align 4
  %32 = load i32, ptr @bufsize, align 4
  tail call void @prandom_bytes(ptr noundef %31, i32 noundef %32) #7
  %33 = load i32, ptr @ebcnt, align 4
  %call9.i.i438 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3520) #12
  store ptr %call9.i.i438, ptr @bbt, align 4
  %tobool260.not = icmp eq ptr %call9.i.i438, null
  br i1 %tobool260.not, label %for.end.out_put_mtd_crit_edge, label %if.end262

for.end.out_put_mtd_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_mtd

if.end262:                                        ; preds = %for.end
  %34 = load ptr, ptr @mtd, align 4
  %35 = load i32, ptr @ebcnt, align 4
  %call263 = tail call i32 @mtdtest_scan_for_bad_eraseblocks(ptr noundef %34, ptr noundef nonnull %call9.i.i438, i32 noundef 0, i32 noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263)
  %tobool264.not = icmp eq i32 %call263, 0
  br i1 %tobool264.not, label %do.end269, label %if.end262.out_put_mtd_crit_edge

if.end262.out_put_mtd_crit_edge:                  ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_mtd

do.end269:                                        ; preds = %if.end262
  %call271 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #10
  %36 = load i32, ptr @count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp273493 = icmp sgt i32 %36, 0
  br i1 %cmp273493, label %do.end269.for.body275_crit_edge, label %do.end269.do.end299_crit_edge

do.end269.do.end299_crit_edge:                    ; preds = %do.end269
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end299

do.end269.for.body275_crit_edge:                  ; preds = %do.end269
  br label %for.body275

for.body275:                                      ; preds = %for.inc294.for.body275_crit_edge, %do.end269.for.body275_crit_edge
  %op.0494 = phi i32 [ %inc295, %for.inc294.for.body275_crit_edge ], [ 0, %do.end269.for.body275_crit_edge ]
  %and276 = and i32 %op.0494, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and276)
  %cmp277 = icmp eq i32 %and276, 0
  br i1 %cmp277, label %do.end282, label %for.body275.if.end285_crit_edge

for.body275.if.end285_crit_edge:                  ; preds = %for.body275
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end285

do.end282:                                        ; preds = %for.body275
  call void @__sanitizer_cov_trace_pc() #9
  %call284 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %op.0494) #10
  br label %if.end285

if.end285:                                        ; preds = %do.end282, %for.body275.if.end285_crit_edge
  %call.i = tail call i32 @prandom_u32() #7
  %and.i440 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i440)
  %tobool.not.i = icmp eq i32 %and.i440, 0
  br i1 %tobool.not.i, label %if.end285.again.i.i8.i_crit_edge, label %if.end285.again.i.i.i_crit_edge

if.end285.again.i.i.i_crit_edge:                  ; preds = %if.end285
  br label %again.i.i.i

if.end285.again.i.i8.i_crit_edge:                 ; preds = %if.end285
  br label %again.i.i8.i

again.i.i.i:                                      ; preds = %again.i.i.i.again.i.i.i_crit_edge, %if.end285.again.i.i.i_crit_edge
  %call.i.i.i = tail call i32 @prandom_u32() #7
  %37 = load i32, ptr @ebcnt, align 4
  %sub.i.i.i = add i32 %37, -1
  %rem.i.i.i = urem i32 %call.i.i.i, %sub.i.i.i
  %38 = load ptr, ptr @bbt, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %38, i32 %rem.i.i.i
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i.i, align 1
  %tobool.not.i.i.i441 = icmp eq i8 %40, 0
  br i1 %tobool.not.i.i.i441, label %rand_eb.exit.i.i, label %again.i.i.i.again.i.i.i_crit_edge

again.i.i.i.again.i.i.i_crit_edge:                ; preds = %again.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %again.i.i.i

rand_eb.exit.i.i:                                 ; preds = %again.i.i.i
  %call.i27.i.i = tail call i32 @prandom_u32() #7
  %41 = load i32, ptr @bufsize, align 4
  %rem.i28.i.i = urem i32 %call.i27.i.i, %41
  %call.i29.i.i = tail call i32 @prandom_u32() #7
  %42 = load i32, ptr @bufsize, align 4
  %sub.i30.i.i = sub i32 %42, %rem.i28.i.i
  %rem.i31.i.i = urem i32 %call.i29.i.i, %sub.i30.i.i
  %43 = load ptr, ptr @bbt, align 4
  %add.i.i = add nuw i32 %rem.i.i.i, 1
  %arrayidx.i.i = getelementptr i8, ptr %43, i32 %add.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i.i, label %rand_eb.exit.i.i.do_operation.exit_crit_edge, label %if.then.i.i442

rand_eb.exit.i.i.do_operation.exit_crit_edge:     ; preds = %rand_eb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_operation.exit

if.then.i.i442:                                   ; preds = %rand_eb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = load ptr, ptr @mtd, align 4
  %erasesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %erasesize.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %erasesize.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i28.i.i, i32 %48)
  %cmp.not.i.i = icmp ult i32 %rem.i28.i.i, %48
  %sub.i.i = select i1 %cmp.not.i.i, i32 0, i32 %48
  %spec.select.i.i = sub i32 %rem.i28.i.i, %sub.i.i
  %add5.i.i = add i32 %spec.select.i.i, %rem.i31.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i.i, i32 %48)
  %cmp7.i.i = icmp ugt i32 %add5.i.i, %48
  %sub10.i.i = sub i32 %48, %spec.select.i.i
  %spec.select26.i.i = select i1 %cmp7.i.i, i32 %sub10.i.i, i32 %rem.i31.i.i
  br label %do_operation.exit

again.i.i8.i:                                     ; preds = %again.i.i8.i.again.i.i8.i_crit_edge, %if.end285.again.i.i8.i_crit_edge
  %call.i.i3.i = tail call i32 @prandom_u32() #7
  %49 = load i32, ptr @ebcnt, align 4
  %sub.i.i4.i = add i32 %49, -1
  %rem.i.i5.i = urem i32 %call.i.i3.i, %sub.i.i4.i
  %50 = load ptr, ptr @bbt, align 4
  %arrayidx.i.i6.i = getelementptr i8, ptr %50, i32 %rem.i.i5.i
  %51 = ptrtoint ptr %arrayidx.i.i6.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i.i6.i, align 1
  %tobool.not.i.i7.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i.i7.i, label %rand_eb.exit.i12.i, label %again.i.i8.i.again.i.i8.i_crit_edge

again.i.i8.i.again.i.i8.i_crit_edge:              ; preds = %again.i.i8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %again.i.i8.i

rand_eb.exit.i12.i:                               ; preds = %again.i.i8.i
  %53 = load ptr, ptr @offsets, align 4
  %arrayidx.i9.i = getelementptr i32, ptr %53, i32 %rem.i.i5.i
  %54 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i9.i, align 4
  %56 = load ptr, ptr @mtd, align 4
  %erasesize.i10.i = getelementptr inbounds %struct.mtd_info, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %erasesize.i10.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %erasesize.i10.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %58)
  %cmp.not.i11.i = icmp ult i32 %55, %58
  br i1 %cmp.not.i11.i, label %rand_eb.exit.i12.i.if.end4.i.i444_crit_edge, label %if.then.i14.i

rand_eb.exit.i12.i.if.end4.i.i444_crit_edge:      ; preds = %rand_eb.exit.i12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i444

if.then.i14.i:                                    ; preds = %rand_eb.exit.i12.i
  %call1.i.i = tail call i32 @mtdtest_erase_eraseblock(ptr noundef %56, i32 noundef %rem.i.i5.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i13.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i13.i, label %if.end.i.i443, label %if.then.i14.i.out_put_mtd_crit_edge

if.then.i14.i.out_put_mtd_crit_edge:              ; preds = %if.then.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_mtd

if.end.i.i443:                                    ; preds = %if.then.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = load ptr, ptr @offsets, align 4
  %arrayidx3.i.i = getelementptr i32, ptr %59, i32 %rem.i.i5.i
  %60 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %arrayidx3.i.i, align 4
  br label %if.end4.i.i444

if.end4.i.i444:                                   ; preds = %if.end.i.i443, %rand_eb.exit.i12.i.if.end4.i.i444_crit_edge
  %offs.0.i.i = phi i32 [ 0, %if.end.i.i443 ], [ %55, %rand_eb.exit.i12.i.if.end4.i.i444_crit_edge ]
  %call.i75.i.i = tail call i32 @prandom_u32() #7
  %61 = load i32, ptr @bufsize, align 4
  %sub.i76.i.i = sub i32 %61, %offs.0.i.i
  %rem.i77.i.i = urem i32 %call.i75.i.i, %sub.i76.i.i
  %62 = load i32, ptr @pgsize, align 4
  %add.i15.i = add i32 %rem.i77.i.i, -1
  %sub.i16.i = add i32 %add.i15.i, %62
  %63 = srem i32 %sub.i16.i, %62
  %mul.i17.i = sub i32 %sub.i16.i, %63
  %add6.i.i = add i32 %mul.i17.i, %offs.0.i.i
  %64 = load ptr, ptr @mtd, align 4
  %erasesize7.i.i = getelementptr inbounds %struct.mtd_info, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %erasesize7.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %erasesize7.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i.i, i32 %66)
  %cmp8.i.i = icmp ugt i32 %add6.i.i, %66
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.end4.i.i444.if.end24.i.i_crit_edge

if.end4.i.i444.if.end24.i.i_crit_edge:            ; preds = %if.end4.i.i444
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i

if.then9.i.i:                                     ; preds = %if.end4.i.i444
  %67 = load ptr, ptr @bbt, align 4
  %add10.i.i = add nuw i32 %rem.i.i5.i, 1
  %arrayidx11.i.i = getelementptr i8, ptr %67, i32 %add10.i.i
  %68 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx11.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool12.not.i.i = icmp eq i8 %69, 0
  br i1 %tobool12.not.i.i, label %if.else.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub15.i.i = sub i32 %66, %offs.0.i.i
  br label %if.end24.i.i

if.else.i.i:                                      ; preds = %if.then9.i.i
  %call17.i18.i = tail call i32 @mtdtest_erase_eraseblock(ptr noundef %64, i32 noundef %add10.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i18.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i18.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.else.i.i.out_put_mtd_crit_edge

if.else.i.i.out_put_mtd_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_mtd

if.end20.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = load ptr, ptr @offsets, align 4
  %arrayidx22.i.i = getelementptr i32, ptr %70, i32 %add10.i.i
  %71 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %arrayidx22.i.i, align 4
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.end20.i.i, %if.then13.i.i, %if.end4.i.i444.if.end24.i.i_crit_edge
  %len.0.i19.i = phi i32 [ %sub15.i.i, %if.then13.i.i ], [ %mul.i17.i, %if.end20.i.i ], [ %mul.i17.i, %if.end4.i.i444.if.end24.i.i_crit_edge ]
  %conv.i20.i = sext i32 %rem.i.i5.i to i64
  %72 = load ptr, ptr @mtd, align 4
  %erasesize25.i.i = getelementptr inbounds %struct.mtd_info, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %erasesize25.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %erasesize25.i.i, align 8
  %conv26.i.i = zext i32 %74 to i64
  %mul27.i.i = mul nsw i64 %conv26.i.i, %conv.i20.i
  %conv28.i.i = sext i32 %offs.0.i.i to i64
  %add29.i.i = add nsw i64 %mul27.i.i, %conv28.i.i
  %75 = load ptr, ptr @writebuf, align 4
  %call30.i.i = tail call i32 @mtdtest_write(ptr noundef %72, i64 noundef %add29.i.i, i32 noundef %len.0.i19.i, ptr noundef %75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.end35.i.i, label %if.end24.i.i.out_put_mtd_crit_edge, !prof !114

if.end24.i.i.out_put_mtd_crit_edge:               ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_mtd

if.end35.i.i:                                     ; preds = %if.end24.i.i
  %add36.i.i = add i32 %len.0.i19.i, %offs.0.i.i
  %76 = load ptr, ptr @mtd, align 4
  %erasesize37.i.i = getelementptr inbounds %struct.mtd_info, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %erasesize37.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %erasesize37.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add36.i.i, i32 %78)
  %cmp3878.i.i = icmp ugt i32 %add36.i.i, %78
  br i1 %cmp3878.i.i, label %while.body.lr.ph.i.i, label %if.end35.i.i.do_operation.exit.thread476_crit_edge

if.end35.i.i.do_operation.exit.thread476_crit_edge: ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_operation.exit.thread476

while.body.lr.ph.i.i:                             ; preds = %if.end35.i.i
  %79 = load ptr, ptr @offsets, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %80 = phi i32 [ %78, %while.body.lr.ph.i.i ], [ %83, %while.body.i.i.while.body.i.i_crit_edge ]
  %offs.180.i.i = phi i32 [ %add36.i.i, %while.body.lr.ph.i.i ], [ %sub43.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %eb.079.i.i = phi i32 [ %rem.i.i5.i, %while.body.lr.ph.i.i ], [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %inc.i.i = add i32 %eb.079.i.i, 1
  %arrayidx41.i.i = getelementptr i32, ptr %79, i32 %eb.079.i.i
  %81 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx41.i.i, align 4
  %82 = ptrtoint ptr %erasesize37.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %erasesize37.i.i, align 8
  %sub43.i.i = sub i32 %offs.180.i.i, %83
  %cmp38.i.i = icmp ugt i32 %sub43.i.i, %83
  br i1 %cmp38.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.do_operation.exit.thread476_crit_edge

while.body.i.i.do_operation.exit.thread476_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_operation.exit.thread476

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

do_operation.exit.thread476:                      ; preds = %while.body.i.i.do_operation.exit.thread476_crit_edge, %if.end35.i.i.do_operation.exit.thread476_crit_edge
  %eb.0.lcssa.i.i = phi i32 [ %rem.i.i5.i, %if.end35.i.i.do_operation.exit.thread476_crit_edge ], [ %inc.i.i, %while.body.i.i.do_operation.exit.thread476_crit_edge ]
  %offs.1.lcssa.i.i = phi i32 [ %add36.i.i, %if.end35.i.i.do_operation.exit.thread476_crit_edge ], [ %sub43.i.i, %while.body.i.i.do_operation.exit.thread476_crit_edge ]
  %84 = load ptr, ptr @offsets, align 4
  %arrayidx44.i.i = getelementptr i32, ptr %84, i32 %eb.0.lcssa.i.i
  %85 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %offs.1.lcssa.i.i, ptr %arrayidx44.i.i, align 4
  br label %if.end289

do_operation.exit:                                ; preds = %if.then.i.i442, %rand_eb.exit.i.i.do_operation.exit_crit_edge
  %offs.1.i.i = phi i32 [ %rem.i28.i.i, %rand_eb.exit.i.i.do_operation.exit_crit_edge ], [ %spec.select.i.i, %if.then.i.i442 ]
  %len.0.i.i = phi i32 [ %rem.i31.i.i, %rand_eb.exit.i.i.do_operation.exit_crit_edge ], [ %spec.select26.i.i, %if.then.i.i442 ]
  %conv.i.i = sext i32 %rem.i.i.i to i64
  %86 = load ptr, ptr @mtd, align 4
  %erasesize13.i.i = getelementptr inbounds %struct.mtd_info, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %erasesize13.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %erasesize13.i.i, align 8
  %conv14.i.i = zext i32 %88 to i64
  %mul.i.i = mul nsw i64 %conv14.i.i, %conv.i.i
  %conv15.i.i = sext i32 %offs.1.i.i to i64
  %add16.i.i = add nsw i64 %mul.i.i, %conv15.i.i
  %89 = load ptr, ptr @readbuf, align 4
  %call17.i.i = tail call i32 @mtdtest_read(ptr noundef %86, i64 noundef %add16.i.i, i32 noundef %len.0.i.i, ptr noundef %89) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool287.not = icmp eq i32 %call17.i.i, 0
  br i1 %tobool287.not, label %do_operation.exit.if.end289_crit_edge, label %do_operation.exit.out_put_mtd_crit_edge

do_operation.exit.out_put_mtd_crit_edge:          ; preds = %do_operation.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_mtd

do_operation.exit.if.end289_crit_edge:            ; preds = %do_operation.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end289

if.end289:                                        ; preds = %do_operation.exit.if.end289_crit_edge, %do_operation.exit.thread476
  tail call void @__might_resched(ptr noundef nonnull @.str.41, i32 noundef 7, i32 noundef 0) #7
  %call.i.i = tail call i32 @__cond_resched() #7
  %90 = tail call i32 @llvm.read_register.i32(metadata !104) #7
  %and.i.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %stack.i.i.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %95, align 4
  %98 = and i32 %97, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i.i446 = icmp eq i32 %98, 0
  br i1 %tobool.not.i.i446, label %signal_pending.exit.i, label %if.end289.mtdtest_relax.exit_crit_edge, !prof !114

if.end289.mtdtest_relax.exit_crit_edge:           ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtdtest_relax.exit

signal_pending.exit.i:                            ; preds = %if.end289
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %95, align 4
  %and1.i.i.i.i.i.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i447 = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i447, label %for.inc294, label %signal_pending.exit.i.mtdtest_relax.exit_crit_edge

signal_pending.exit.i.mtdtest_relax.exit_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtdtest_relax.exit

mtdtest_relax.exit:                               ; preds = %signal_pending.exit.i.mtdtest_relax.exit_crit_edge, %if.end289.mtdtest_relax.exit_crit_edge
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #10
  br label %out_put_mtd

for.inc294:                                       ; preds = %signal_pending.exit.i
  %inc295 = add nuw nsw i32 %op.0494, 1
  %101 = load i32, ptr @count, align 4
  %cmp273 = icmp slt i32 %inc295, %101
  br i1 %cmp273, label %for.inc294.for.body275_crit_edge, label %for.inc294.do.end299_crit_edge

for.inc294.do.end299_crit_edge:                   ; preds = %for.inc294
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end299

for.inc294.for.body275_crit_edge:                 ; preds = %for.inc294
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body275

do.end299:                                        ; preds = %for.inc294.do.end299_crit_edge, %do.end269.do.end299_crit_edge
  %op.0.lcssa = phi i32 [ 0, %do.end269.do.end299_crit_edge ], [ %inc295, %for.inc294.do.end299_crit_edge ]
  %call301 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %op.0.lcssa) #10
  br label %out_put_mtd

out_put_mtd:                                      ; preds = %do.end299, %mtdtest_relax.exit, %do_operation.exit.out_put_mtd_crit_edge, %if.end24.i.i.out_put_mtd_crit_edge, %if.else.i.i.out_put_mtd_crit_edge, %if.then.i14.i.out_put_mtd_crit_edge, %if.end262.out_put_mtd_crit_edge, %for.end.out_put_mtd_crit_edge, %lor.lhs.false.out_put_mtd_crit_edge, %kmalloc_array.exit.out_put_mtd_crit_edge
  %err.1 = phi i32 [ %call263, %if.end262.out_put_mtd_crit_edge ], [ -4, %mtdtest_relax.exit ], [ 0, %do.end299 ], [ -12, %for.end.out_put_mtd_crit_edge ], [ -12, %lor.lhs.false.out_put_mtd_crit_edge ], [ -12, %kmalloc_array.exit.out_put_mtd_crit_edge ], [ %call1.i.i, %if.then.i14.i.out_put_mtd_crit_edge ], [ %call17.i18.i, %if.else.i.i.out_put_mtd_crit_edge ], [ %call30.i.i, %if.end24.i.i.out_put_mtd_crit_edge ], [ %call17.i.i, %do_operation.exit.out_put_mtd_crit_edge ]
  %102 = load ptr, ptr @offsets, align 4
  tail call void @kfree(ptr noundef %102) #7
  %103 = load ptr, ptr @bbt, align 4
  tail call void @kfree(ptr noundef %103) #7
  %104 = load ptr, ptr @writebuf, align 4
  tail call void @vfree(ptr noundef %104) #7
  %105 = load ptr, ptr @readbuf, align 4
  tail call void @vfree(ptr noundef %105) #7
  %106 = load ptr, ptr @mtd, align 4
  tail call void @put_mtd_device(ptr noundef %106) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool302.not = icmp eq i32 %err.1, 0
  br i1 %tobool302.not, label %out_put_mtd.cleanup_crit_edge, label %out_put_mtd.do.end306_crit_edge

out_put_mtd.do.end306_crit_edge:                  ; preds = %out_put_mtd
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end306

out_put_mtd.cleanup_crit_edge:                    ; preds = %out_put_mtd
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end306:                                        ; preds = %out_put_mtd.do.end306_crit_edge, %out_put_mtd.thread
  %err.2483 = phi i32 [ -28, %out_put_mtd.thread ], [ %err.1, %out_put_mtd.do.end306_crit_edge ]
  %call308 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %err.2483) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end306, %out_put_mtd.cleanup_crit_edge, %if.then24, %do.end9
  %.str.4.sink = phi ptr [ @.str.16, %if.then24 ], [ @.str.10, %do.end9 ], [ @.str.4, %out_put_mtd.cleanup_crit_edge ], [ @.str.4, %do.end306 ]
  %retval.0 = phi i32 [ %2, %if.then24 ], [ -22, %do.end9 ], [ 0, %out_put_mtd.cleanup_crit_edge ], [ %err.2483, %do.end306 ]
  %call314 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink) #10
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_scan_for_bad_eraseblocks(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mtd_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_erase_eraseblock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103}
!llvm.named.register.sp = !{!104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @__param_dev, !1, !"__param_dev", i1 false, i1 false}
!1 = !{!"../drivers/mtd/tests/stresstest.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_devtype201, !1, !"__UNIQUE_ID_devtype201", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dev202, !4, !"__UNIQUE_ID_dev202", i1 false, i1 false}
!4 = !{!"../drivers/mtd/tests/stresstest.c", i32 26, i32 1}
!5 = !{ptr @__param_count, !6, !"__param_count", i1 false, i1 false}
!6 = !{!"../drivers/mtd/tests/stresstest.c", i32 29, i32 1}
!7 = !{ptr @__UNIQUE_ID_counttype203, !6, !"__UNIQUE_ID_counttype203", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_count204, !9, !"__UNIQUE_ID_count204", i1 false, i1 false}
!9 = !{!"../drivers/mtd/tests/stresstest.c", i32 30, i32 1}
!10 = !{ptr @__UNIQUE_ID_description205, !11, !"__UNIQUE_ID_description205", i1 false, i1 false}
!11 = !{!"../drivers/mtd/tests/stresstest.c", i32 239, i32 1}
!12 = !{ptr @__UNIQUE_ID_author206, !13, !"__UNIQUE_ID_author206", i1 false, i1 false}
!13 = !{!"../drivers/mtd/tests/stresstest.c", i32 240, i32 1}
!14 = !{ptr @__UNIQUE_ID_license207, !15, !"__UNIQUE_ID_license207", i1 false, i1 false}
!15 = !{!"../drivers/mtd/tests/stresstest.c", i32 241, i32 1}
!16 = !{ptr @___asan_gen_.44, !1, !"__param_str_dev", i1 false, i1 false}
!17 = !{ptr @dev, !18, !"dev", i1 false, i1 false}
!18 = !{!"../drivers/mtd/tests/stresstest.c", i32 24, i32 12}
!19 = !{ptr @___asan_gen_.47, !6, !"__param_str_count", i1 false, i1 false}
!20 = !{ptr @count, !21, !"count", i1 false, i1 false}
!21 = !{!"../drivers/mtd/tests/stresstest.c", i32 28, i32 12}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/tests/stresstest.c", i32 142, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mtd_stresstest_init._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @mtd_stresstest_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/tests/stresstest.c", i32 143, i32 2}
!30 = !{ptr @mtd_stresstest_init._entry.3, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtd_stresstest_init._entry_ptr.5, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/tests/stresstest.c", i32 146, i32 3}
!34 = !{ptr @mtd_stresstest_init._entry.6, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mtd_stresstest_init._entry_ptr.8, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/tests/stresstest.c", i32 147, i32 3}
!38 = !{ptr @mtd_stresstest_init._entry.9, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mtd_stresstest_init._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/tests/stresstest.c", i32 151, i32 2}
!42 = !{ptr @mtd_stresstest_init._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtd_stresstest_init._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/tests/stresstest.c", i32 156, i32 3}
!46 = !{ptr @mtd_stresstest_init._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mtd_stresstest_init._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/tests/stresstest.c", i32 161, i32 3}
!50 = !{ptr @mtd_stresstest_init._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mtd_stresstest_init._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/tests/stresstest.c", i32 172, i32 2}
!54 = !{ptr @mtd_stresstest_init._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mtd_stresstest_init._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/tests/stresstest.c", i32 179, i32 3}
!58 = !{ptr @mtd_stresstest_init._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtd_stresstest_init._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/tests/stresstest.c", i32 205, i32 2}
!62 = !{ptr @mtd_stresstest_init._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mtd_stresstest_init._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/tests/stresstest.c", i32 208, i32 4}
!66 = !{ptr @mtd_stresstest_init._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mtd_stresstest_init._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/tests/stresstest.c", i32 217, i32 2}
!70 = !{ptr @mtd_stresstest_init._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mtd_stresstest_init._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/tests/stresstest.c", i32 227, i32 3}
!74 = !{ptr @mtd_stresstest_init._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mtd_stresstest_init._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @mtd_stresstest_init._entry.39, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/mtd/tests/stresstest.c", i32 228, i32 2}
!78 = !{ptr @mtd_stresstest_init._entry_ptr.40, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @mtd, !80, !"mtd", i1 false, i1 false}
!80 = !{!"../drivers/mtd/tests/stresstest.c", i32 32, i32 25}
!81 = !{ptr @pgsize, !82, !"pgsize", i1 false, i1 false}
!82 = !{!"../drivers/mtd/tests/stresstest.c", i32 38, i32 12}
!83 = !{ptr @ebcnt, !84, !"ebcnt", i1 false, i1 false}
!84 = !{!"../drivers/mtd/tests/stresstest.c", i32 40, i32 12}
!85 = distinct !{null, !86, !"pgcnt", i1 false, i1 false}
!86 = !{!"../drivers/mtd/tests/stresstest.c", i32 41, i32 12}
!87 = !{ptr @bufsize, !88, !"bufsize", i1 false, i1 false}
!88 = !{!"../drivers/mtd/tests/stresstest.c", i32 39, i32 12}
!89 = !{ptr @readbuf, !90, !"readbuf", i1 false, i1 false}
!90 = !{!"../drivers/mtd/tests/stresstest.c", i32 34, i32 23}
!91 = !{ptr @writebuf, !92, !"writebuf", i1 false, i1 false}
!92 = !{!"../drivers/mtd/tests/stresstest.c", i32 33, i32 23}
!93 = !{ptr @offsets, !94, !"offsets", i1 false, i1 false}
!94 = !{!"../drivers/mtd/tests/stresstest.c", i32 36, i32 13}
!95 = !{ptr @bbt, !96, !"bbt", i1 false, i1 false}
!96 = !{!"../drivers/mtd/tests/stresstest.c", i32 35, i32 23}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mtd/tests/mtd_test.h", i32 7, i32 2}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/tests/mtd_test.h", i32 9, i32 3}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mtdtest_relax._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @mtdtest_relax._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{!"sp"}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{!"branch_weights", i32 2000, i32 1}
!115 = !{i64 2148201667, i64 2148201947, i64 2148202281, i64 2148202615}
!116 = !{!"branch_weights", i32 1, i32 2000}
