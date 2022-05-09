; ModuleID = '/llk/IR_all_yes/drivers/mtd/tests/readtest.c_pt.bc'
source_filename = "../drivers/mtd/tests/readtest.c"
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
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
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
@__param_dev = internal constant %struct.kernel_param { ptr @___asan_gen_.52, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @dev } }, section "__param", align 4
@__UNIQUE_ID_devtype201 = internal constant [17 x i8] c"parmtype=dev:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dev202 = internal constant [34 x i8] c"parm=dev:MTD device number to use\00", section ".modinfo", align 1
@__UNIQUE_ID_description203 = internal constant [29 x i8] c"description=Read test module\00", section ".modinfo", align 1
@__UNIQUE_ID_author204 = internal constant [21 x i8] c"author=Adrian Hunter\00", section ".modinfo", align 1
@__UNIQUE_ID_license205 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@mtd_readtest_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtd_readtest_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/tests/readtest.c\00", [35 x i8] zeroinitializer }, align 32
@mtd_readtest_init._entry_ptr = internal global ptr @mtd_readtest_init._entry, section ".printk_index", align 4
@mtd_readtest_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016=================================================\0A\00", [43 x i8] zeroinitializer }, align 32
@mtd_readtest_init._entry_ptr.5 = internal global ptr @mtd_readtest_init._entry.3, section ".printk_index", align 4
@mtd_readtest_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016mtd_readtest: Please specify a valid mtd-device via module parameter\0A\00", [56 x i8] zeroinitializer }, align 32
@mtd_readtest_init._entry_ptr.8 = internal global ptr @mtd_readtest_init._entry.6, section ".printk_index", align 4
@mtd_readtest_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016mtd_readtest: MTD device: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mtd_readtest_init._entry_ptr.11 = internal global ptr @mtd_readtest_init._entry.9, section ".printk_index", align 4
@mtd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mtd_readtest_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013mtd_readtest: error: Cannot get MTD device\0A\00", [50 x i8] zeroinitializer }, align 32
@mtd_readtest_init._entry_ptr.14 = internal global ptr @mtd_readtest_init._entry.12, section ".printk_index", align 4
@mtd_readtest_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016mtd_readtest: not NAND flash, assume page size is 512 bytes.\0A\00", [32 x i8] zeroinitializer }, align 32
@mtd_readtest_init._entry_ptr.17 = internal global ptr @mtd_readtest_init._entry.15, section ".printk_index", align 4
@pgsize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ebcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pgcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mtd_readtest_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [135 x i8], [57 x i8] } { [135 x i8] c"\016mtd_readtest: MTD device size %llu, eraseblock size %u, page size %u, count of eraseblocks %u, pages per eraseblock %u, OOB size %u\0A\00", [57 x i8] zeroinitializer }, align 32
@mtd_readtest_init._entry_ptr.20 = internal global ptr @mtd_readtest_init._entry.18, section ".printk_index", align 4
@iobuf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@iobuf1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bbt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mtd_readtest_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016mtd_readtest: testing page read\0A\00", [61 x i8] zeroinitializer }, align 32
@mtd_readtest_init._entry_ptr.23 = internal global ptr @mtd_readtest_init._entry.21, section ".printk_index", align 4
@mtd_readtest_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016mtd_readtest: finished with errors\0A\00", [58 x i8] zeroinitializer }, align 32
@mtd_readtest_init._entry_ptr.26 = internal global ptr @mtd_readtest_init._entry.24, section ".printk_index", align 4
@mtd_readtest_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016mtd_readtest: finished\0A\00", [38 x i8] zeroinitializer }, align 32
@mtd_readtest_init._entry_ptr.29 = internal global ptr @mtd_readtest_init._entry.27, section ".printk_index", align 4
@mtd_readtest_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016mtd_readtest: error %d occurred\0A\00", [61 x i8] zeroinitializer }, align 32
@mtd_readtest_init._entry_ptr.32 = internal global ptr @mtd_readtest_init._entry.30, section ".printk_index", align 4
@mtd_readtest_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_readtest_init._entry_ptr.34 = internal global ptr @mtd_readtest_init._entry.33, section ".printk_index", align 4
@read_eraseblock_by_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013mtd_readtest: error: read oob failed at %#llx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"read_eraseblock_by_page\00", [40 x i8] zeroinitializer }, align 32
@read_eraseblock_by_page._entry_ptr = internal global ptr @read_eraseblock_by_page._entry, section ".printk_index", align 4
@dump_eraseblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016mtd_readtest: dumping eraseblock %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dump_eraseblock\00", [16 x i8] zeroinitializer }, align 32
@dump_eraseblock._entry_ptr = internal global ptr @dump_eraseblock._entry, section ".printk_index", align 4
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%05x: \00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@dump_eraseblock._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.38, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\012%s\0A\00", [26 x i8] zeroinitializer }, align 32
@dump_eraseblock._entry_ptr.43 = internal global ptr @dump_eraseblock._entry.41, section ".printk_index", align 4
@dump_eraseblock._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.38, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016mtd_readtest: dumping oob from eraseblock %d\0A\00", [48 x i8] zeroinitializer }, align 32
@dump_eraseblock._entry_ptr.46 = internal global ptr @dump_eraseblock._entry.44, section ".printk_index", align 4
@dump_eraseblock._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.38, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dump_eraseblock._entry_ptr.48 = internal global ptr @dump_eraseblock._entry.47, section ".printk_index", align 4
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/tests/mtd_test.h\00", [35 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.49, i32 9, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016mtd_readtest: aborting test due to pending signal!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtdtest_relax\00", [18 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry_ptr = internal global ptr @mtdtest_relax._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@___asan_gen_.52 = private constant [4 x i8] c"dev\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 22, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 118, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 119, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 122, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 126, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [4 x i8] c"mtd\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 26, i32 25 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 131, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 136, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"pgsize\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 31, i32 12 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"ebcnt\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 32, i32 12 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"pgcnt\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 33, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 147, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"iobuf\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 27, i32 23 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"iobuf1\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 28, i32 23 }
@___asan_gen_.121 = private unnamed_addr constant [4 x i8] c"bbt\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 29, i32 23 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 169, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 190, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 192, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 201, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 202, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 63, i32 5 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 85, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 90, i32 19 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 92, i32 20 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 93, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 98, i32 2 }
@___asan_gen_.188 = private constant [32 x i8] c"../drivers/mtd/tests/readtest.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 108, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 7, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [32 x i8] c"../drivers/mtd/tests/mtd_test.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 9, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author204, ptr @__UNIQUE_ID_description203, ptr @__UNIQUE_ID_dev202, ptr @__UNIQUE_ID_devtype201, ptr @__UNIQUE_ID_license205, ptr @__param_dev, ptr @dump_eraseblock._entry, ptr @dump_eraseblock._entry.41, ptr @dump_eraseblock._entry.44, ptr @dump_eraseblock._entry.47, ptr @dump_eraseblock._entry_ptr, ptr @dump_eraseblock._entry_ptr.43, ptr @dump_eraseblock._entry_ptr.46, ptr @dump_eraseblock._entry_ptr.48, ptr @mtd_readtest_init._entry, ptr @mtd_readtest_init._entry.12, ptr @mtd_readtest_init._entry.15, ptr @mtd_readtest_init._entry.18, ptr @mtd_readtest_init._entry.21, ptr @mtd_readtest_init._entry.24, ptr @mtd_readtest_init._entry.27, ptr @mtd_readtest_init._entry.3, ptr @mtd_readtest_init._entry.30, ptr @mtd_readtest_init._entry.33, ptr @mtd_readtest_init._entry.6, ptr @mtd_readtest_init._entry.9, ptr @mtd_readtest_init._entry_ptr, ptr @mtd_readtest_init._entry_ptr.11, ptr @mtd_readtest_init._entry_ptr.14, ptr @mtd_readtest_init._entry_ptr.17, ptr @mtd_readtest_init._entry_ptr.20, ptr @mtd_readtest_init._entry_ptr.23, ptr @mtd_readtest_init._entry_ptr.26, ptr @mtd_readtest_init._entry_ptr.29, ptr @mtd_readtest_init._entry_ptr.32, ptr @mtd_readtest_init._entry_ptr.34, ptr @mtd_readtest_init._entry_ptr.5, ptr @mtd_readtest_init._entry_ptr.8, ptr @mtdtest_relax._entry, ptr @mtdtest_relax._entry_ptr, ptr @read_eraseblock_by_page._entry, ptr @read_eraseblock_by_page._entry_ptr, ptr @dev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @mtd, ptr @.str.13, ptr @.str.16, ptr @pgsize, ptr @ebcnt, ptr @pgcnt, ptr @.str.19, ptr @iobuf, ptr @iobuf1, ptr @bbt, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_readtest_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_readtest_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_readtest_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_readtest_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_readtest_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_readtest_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pgsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pgcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_readtest_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 135, i32 192, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iobuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iobuf1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_readtest_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_readtest_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_readtest_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_readtest_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_readtest_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_eraseblock_by_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_eraseblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_eraseblock._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_eraseblock._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_eraseblock._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdtest_relax._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %line.i = alloca [128 x i8], align 1
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  %0 = load i32, ptr @dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %do.end9, label %do.end14

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %cleanup297

do.end14:                                         ; preds = %entry
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %0) #11
  %1 = load i32, ptr @dev, align 4
  %call17 = tail call ptr @get_mtd_device(ptr noundef null, i32 noundef %1) #8
  store ptr %call17, ptr @mtd, align 4
  %cmp.i424 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i424, label %if.then19, label %if.end26

if.then19:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call17 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  br label %cleanup297

if.end26:                                         ; preds = %do.end14
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %call17, i32 0, i32 4
  %3 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp27 = icmp eq i32 %4, 1
  br i1 %cmp27, label %do.end31, label %if.end26.if.end35_crit_edge

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  br label %if.end35

if.end35:                                         ; preds = %do.end31, %if.end26.if.end35_crit_edge
  %storemerge = phi i32 [ 512, %do.end31 ], [ %4, %if.end26.if.end35_crit_edge ]
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
  %cmp205 = icmp ult i64 %7, 4294967296
  br i1 %cmp205, label %if.then209, label %if.else215, !prof !119

if.then209:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %conv210 = trunc i64 %7 to i32
  %div213 = udiv i32 %conv210, %9
  br label %if.end219

if.else215:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %7) #12, !srcloc !120
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  %extract.t484 = trunc i64 %asmresult1.i to i32
  br label %if.end219

if.end219:                                        ; preds = %if.else215, %if.then209
  %tmp.0.off0 = phi i32 [ %div213, %if.then209 ], [ %extract.t484, %if.else215 ]
  store i32 %tmp.0.off0, ptr @ebcnt, align 4
  %div223 = udiv i32 %9, %storemerge
  store i32 %div223, ptr @pgcnt, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oobsize, align 4
  %call230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i64 noundef %7, i32 noundef %9, i32 noundef %storemerge, i32 noundef %tmp.0.off0, i32 noundef %div223, i32 noundef %12) #11
  %13 = load ptr, ptr @mtd, align 4
  %erasesize231 = getelementptr inbounds %struct.mtd_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %erasesize231 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %erasesize231, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3264) #13
  store ptr %call9.i, ptr @iobuf, align 4
  %tobool233.not = icmp eq ptr %call9.i, null
  br i1 %tobool233.not, label %if.end219.out_crit_edge, label %if.end8.i421

if.end219.out_crit_edge:                          ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8.i421:                                     ; preds = %if.end219
  %16 = load ptr, ptr @mtd, align 4
  %erasesize236 = getelementptr inbounds %struct.mtd_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %erasesize236 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %erasesize236, align 8
  %call9.i420 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3264) #13
  store ptr %call9.i420, ptr @iobuf1, align 4
  %tobool238.not = icmp eq ptr %call9.i420, null
  br i1 %tobool238.not, label %if.end8.i421.out_crit_edge, label %if.end8.i.i

if.end8.i421.out_crit_edge:                       ; preds = %if.end8.i421
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8.i.i:                                      ; preds = %if.end8.i421
  %19 = load i32, ptr @ebcnt, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #13
  store ptr %call9.i.i, ptr @bbt, align 4
  %tobool242.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool242.not, label %if.end8.i.i.out_crit_edge, label %if.end244

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end244:                                        ; preds = %if.end8.i.i
  %20 = load ptr, ptr @mtd, align 4
  %21 = load i32, ptr @ebcnt, align 4
  %call245 = tail call i32 @mtdtest_scan_for_bad_eraseblocks(ptr noundef %20, ptr noundef nonnull %call9.i.i, i32 noundef 0, i32 noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %do.end251, label %if.end244.out_crit_edge

if.end244.out_crit_edge:                          ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end251:                                        ; preds = %if.end244
  %call253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  %22 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp254487 = icmp sgt i32 %22, 0
  br i1 %cmp254487, label %for.body.lr.ph, label %do.end251.do.end280_crit_edge

do.end251.do.end280_crit_edge:                    ; preds = %do.end251
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end280

for.body.lr.ph:                                   ; preds = %do.end251
  %23 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 2
  %25 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %26 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 4
  %27 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %28 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %29 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %err.0492 = phi i32 [ 0, %for.body.lr.ph ], [ %err.2.ph, %for.inc.for.body_crit_edge ]
  %i.0488 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %30 = load ptr, ptr @bbt, align 4
  %arrayidx = getelementptr i8, ptr %30, i32 %i.0488
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool256.not = icmp eq i8 %32, 0
  br i1 %tobool256.not, label %if.end258, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end258:                                        ; preds = %for.body
  %33 = load i32, ptr @pgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp45.i = icmp sgt i32 %33, 0
  br i1 %cmp45.i, label %for.body.lr.ph.i, label %if.end258.if.end265_crit_edge

if.end258.if.end265_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end265

for.body.lr.ph.i:                                 ; preds = %if.end258
  %34 = load ptr, ptr @iobuf1, align 4
  %35 = load ptr, ptr @iobuf, align 4
  %36 = load ptr, ptr @mtd, align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %erasesize.i, align 8
  %conv1.i = zext i32 %38 to i64
  %conv.i = zext i32 %i.0488 to i64
  %mul.i = mul nuw nsw i64 %conv1.i, %conv.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end28.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.050.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end28.i.for.body.i_crit_edge ]
  %oobbuf.049.i = phi ptr [ %34, %for.body.lr.ph.i ], [ %oobbuf.1.i, %if.end28.i.for.body.i_crit_edge ]
  %buf.048.i = phi ptr [ %35, %for.body.lr.ph.i ], [ %add.ptr30.i, %if.end28.i.for.body.i_crit_edge ]
  %addr.047.i = phi i64 [ %mul.i, %for.body.lr.ph.i ], [ %add.i, %if.end28.i.for.body.i_crit_edge ]
  %err.046.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %err.4.i, %if.end28.i.for.body.i_crit_edge ]
  %39 = load i32, ptr @pgsize, align 4
  %40 = call ptr @memset(ptr %buf.048.i, i32 0, i32 %39)
  %41 = load ptr, ptr @mtd, align 4
  %call.i = call i32 @mtdtest_read(ptr noundef %41, i64 noundef %addr.047.i, i32 noundef %39, ptr noundef %buf.048.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.046.i)
  %tobool3.not.i = icmp eq i32 %err.046.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool3.not.i, i1 false
  %err.1.i = select i1 %or.cond.i, i32 %call.i, i32 %err.046.i
  %42 = load ptr, ptr @mtd, align 4
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %oobsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool6.not.i = icmp eq i32 %44, 0
  br i1 %tobool6.not.i, label %for.body.i.if.end28.i_crit_edge, label %if.then7.i

for.body.i.if.end28.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then7.i:                                       ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #8
  %45 = call ptr @memset(ptr %25, i32 255, i32 20)
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %ops.i, align 4
  %47 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %23, align 4
  %48 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %24, align 4
  %49 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %oobsize.i, align 4
  %51 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %25, align 4
  %52 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %26, align 4
  %53 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %27, align 4
  %54 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %28, align 4
  %55 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %oobbuf.049.i, ptr %29, align 4
  %call10.i = call i32 @mtd_read_oob(ptr noundef %42, i64 noundef %addr.047.i, ptr noundef nonnull %ops.i) #8
  %56 = zext i32 %call10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call10.i, label %if.then7.i.do.end.i_crit_edge [
    i32 0, label %if.then7.i.lor.lhs.false.i_crit_edge
    i32 -117, label %if.then7.i.lor.lhs.false.i_crit_edge495
  ]

if.then7.i.lor.lhs.false.i_crit_edge495:          ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

if.then7.i.lor.lhs.false.i_crit_edge:             ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

if.then7.i.do.end.i_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then7.i.lor.lhs.false.i_crit_edge, %if.then7.i.lor.lhs.false.i_crit_edge495
  %57 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %26, align 4
  %59 = load ptr, ptr @mtd, align 4
  %oobsize15.i = getelementptr inbounds %struct.mtd_info, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %oobsize15.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %oobsize15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %61)
  %cmp16.not.i = icmp eq i32 %58, %61
  br i1 %cmp16.not.i, label %lor.lhs.false.i.if.end26.i_crit_edge, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i.if.end26.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then7.i.do.end.i_crit_edge
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i64 noundef %addr.047.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool20.not.i = icmp eq i32 %err.1.i, 0
  %spec.select.i = select i1 %tobool20.not.i, i32 %call10.i, i32 %err.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool23.not.i = icmp eq i32 %spec.select.i, 0
  %spec.store.select.i = select i1 %tobool23.not.i, i32 -22, i32 %spec.select.i
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end.i, %lor.lhs.false.i.if.end26.i_crit_edge
  %err.3.i = phi i32 [ %spec.store.select.i, %do.end.i ], [ %err.1.i, %lor.lhs.false.i.if.end26.i_crit_edge ]
  %62 = load ptr, ptr @mtd, align 4
  %oobsize27.i = getelementptr inbounds %struct.mtd_info, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %oobsize27.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %oobsize27.i, align 4
  %add.ptr.i = getelementptr i8, ptr %oobbuf.049.i, i32 %64
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end26.i, %for.body.i.if.end28.i_crit_edge
  %err.4.i = phi i32 [ %err.3.i, %if.end26.i ], [ %err.1.i, %for.body.i.if.end28.i_crit_edge ]
  %oobbuf.1.i = phi ptr [ %add.ptr.i, %if.end26.i ], [ %oobbuf.049.i, %for.body.i.if.end28.i_crit_edge ]
  %65 = load i32, ptr @pgsize, align 4
  %conv29.i = sext i32 %65 to i64
  %add.i = add i64 %addr.047.i, %conv29.i
  %add.ptr30.i = getelementptr i8, ptr %buf.048.i, i32 %65
  %inc.i = add nuw nsw i32 %i.050.i, 1
  %66 = load i32, ptr @pgcnt, align 4
  %cmp.i429 = icmp slt i32 %inc.i, %66
  br i1 %cmp.i429, label %if.end28.i.for.body.i_crit_edge, label %read_eraseblock_by_page.exit

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

read_eraseblock_by_page.exit:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4.i)
  %tobool260.not = icmp eq i32 %err.4.i, 0
  br i1 %tobool260.not, label %read_eraseblock_by_page.exit.if.end265_crit_edge, label %if.then261

read_eraseblock_by_page.exit.if.end265_crit_edge: ; preds = %read_eraseblock_by_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end265

if.then261:                                       ; preds = %read_eraseblock_by_page.exit
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %line.i) #8
  %67 = call ptr @memset(ptr %line.i, i32 255, i32 128)
  %call.i430 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %i.0488) #11
  %68 = load ptr, ptr @mtd, align 4
  %erasesize.i431 = getelementptr inbounds %struct.mtd_info, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %erasesize.i431 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %erasesize.i431, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp101.i = icmp sgt i32 %70, 0
  br i1 %cmp101.i, label %if.then261.for.body.i432_crit_edge, label %if.then261.for.end17.i_crit_edge

if.then261.for.end17.i_crit_edge:                 ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17.i

if.then261.for.body.i432_crit_edge:               ; preds = %if.then261
  br label %for.body.i432

for.body.i432:                                    ; preds = %do.end11.i.for.body.i432_crit_edge, %if.then261.for.body.i432_crit_edge
  %i.0102.i = phi i32 [ %i.1.lcssa.i, %do.end11.i.for.body.i432_crit_edge ], [ 0, %if.then261.for.body.i432_crit_edge ]
  %call1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %line.i, ptr noundef nonnull @.str.39, i32 noundef %i.0102.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0102.i, i32 %70)
  %cmp496.i = icmp slt i32 %i.0102.i, %70
  br i1 %cmp496.i, label %for.body5.preheader.i, label %for.body.i432.do.end11.i_crit_edge

for.body.i432.do.end11.i_crit_edge:               ; preds = %for.body.i432
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i

for.body5.preheader.i:                            ; preds = %for.body.i432
  %add.ptr.i433 = getelementptr i8, ptr %line.i, i32 %call1.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.body5.preheader.i
  %i.1100.i = phi i32 [ %inc8.i, %for.body5.i.for.body5.i_crit_edge ], [ %i.0102.i, %for.body5.preheader.i ]
  %j.099.i = phi i32 [ %inc.i435, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.body5.preheader.i ]
  %p.098.i = phi ptr [ %add.ptr7.i, %for.body5.i.for.body5.i_crit_edge ], [ %add.ptr.i433, %for.body5.preheader.i ]
  %71 = load ptr, ptr @iobuf, align 4
  %arrayidx.i = getelementptr i8, ptr %71, i32 %i.1100.i
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i, align 1
  %conv.i434 = zext i8 %73 to i32
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.098.i, ptr noundef nonnull @.str.40, i32 noundef %conv.i434) #8
  %add.ptr7.i = getelementptr i8, ptr %p.098.i, i32 %call6.i
  %inc.i435 = add nuw nsw i32 %j.099.i, 1
  %inc8.i = add nsw i32 %i.1100.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %j.099.i)
  %cmp3.i = icmp ult i32 %j.099.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %inc8.i, i32 %70)
  %cmp4.i = icmp slt i32 %inc8.i, %70
  %or.cond.i436 = select i1 %cmp3.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i436, label %for.body5.i.for.body5.i_crit_edge, label %for.body5.i.do.end11.i_crit_edge

for.body5.i.do.end11.i_crit_edge:                 ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5.i

do.end11.i:                                       ; preds = %for.body5.i.do.end11.i_crit_edge, %for.body.i432.do.end11.i_crit_edge
  %i.1.lcssa.i = phi i32 [ %i.0102.i, %for.body.i432.do.end11.i_crit_edge ], [ %inc8.i, %for.body5.i.do.end11.i_crit_edge ]
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull %line.i) #11
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 94, i32 noundef 0) #8
  %call.i.i = call i32 @__cond_resched() #8
  %cmp.i437 = icmp slt i32 %i.1.lcssa.i, %70
  br i1 %cmp.i437, label %do.end11.i.for.body.i432_crit_edge, label %do.end11.i.for.end17.i_crit_edge

do.end11.i.for.end17.i_crit_edge:                 ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17.i

do.end11.i.for.body.i432_crit_edge:               ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i432

for.end17.i:                                      ; preds = %do.end11.i.for.end17.i_crit_edge, %if.then261.for.end17.i_crit_edge
  %74 = load ptr, ptr @mtd, align 4
  %oobsize.i438 = getelementptr inbounds %struct.mtd_info, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %oobsize.i438 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %oobsize.i438, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i439 = icmp eq i32 %76, 0
  br i1 %tobool.not.i439, label %for.end17.i.dump_eraseblock.exit_crit_edge, label %do.end20.i

for.end17.i.dump_eraseblock.exit_crit_edge:       ; preds = %for.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dump_eraseblock.exit

do.end20.i:                                       ; preds = %for.end17.i
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %i.0488) #11
  %77 = load ptr, ptr @mtd, align 4
  %oobsize23.i = getelementptr inbounds %struct.mtd_info, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %oobsize23.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %oobsize23.i, align 4
  %80 = load i32, ptr @pgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp25115.i = icmp sgt i32 %80, 0
  br i1 %cmp25115.i, label %for.cond28.preheader.lr.ph.i, label %do.end20.i.dump_eraseblock.exit_crit_edge

do.end20.i.dump_eraseblock.exit_crit_edge:        ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dump_eraseblock.exit

for.cond28.preheader.lr.ph.i:                     ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp29111.i = icmp sgt i32 %79, 0
  br label %for.cond28.preheader.i

for.cond28.preheader.i:                           ; preds = %for.inc62.i.for.cond28.preheader.i_crit_edge, %for.cond28.preheader.lr.ph.i
  %i.2117.i = phi i32 [ 0, %for.cond28.preheader.lr.ph.i ], [ %i.3.lcssa.i, %for.inc62.i.for.cond28.preheader.i_crit_edge ]
  %pg.0116.i = phi i32 [ 0, %for.cond28.preheader.lr.ph.i ], [ %inc63.i, %for.inc62.i.for.cond28.preheader.i_crit_edge ]
  br i1 %cmp29111.i, label %for.cond28.preheader.i.for.body31.i_crit_edge, label %for.cond28.preheader.i.for.inc62.i_crit_edge

for.cond28.preheader.i.for.inc62.i_crit_edge:     ; preds = %for.cond28.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc62.i

for.cond28.preheader.i.for.body31.i_crit_edge:    ; preds = %for.cond28.preheader.i
  br label %for.body31.i

for.body31.i:                                     ; preds = %do.end55.i.for.body31.i_crit_edge, %for.cond28.preheader.i.for.body31.i_crit_edge
  %i.3113.i = phi i32 [ %i.4.lcssa.i, %do.end55.i.for.body31.i_crit_edge ], [ %i.2117.i, %for.cond28.preheader.i.for.body31.i_crit_edge ]
  %oob.0112.i = phi i32 [ %oob.1.lcssa.i, %do.end55.i.for.body31.i_crit_edge ], [ 0, %for.cond28.preheader.i.for.body31.i_crit_edge ]
  %call34.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %line.i, ptr noundef nonnull @.str.39, i32 noundef %i.3113.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %oob.0112.i, i32 %79)
  %cmp40103.i = icmp slt i32 %oob.0112.i, %79
  br i1 %cmp40103.i, label %for.body43.preheader.i, label %for.body31.i.do.end55.i_crit_edge

for.body31.i.do.end55.i_crit_edge:                ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end55.i

for.body43.preheader.i:                           ; preds = %for.body31.i
  %add.ptr35.i = getelementptr i8, ptr %line.i, i32 %call34.i
  br label %for.body43.i

for.body43.i:                                     ; preds = %for.body43.i.for.body43.i_crit_edge, %for.body43.preheader.i
  %i.4108.i = phi i32 [ %inc51.i, %for.body43.i.for.body43.i_crit_edge ], [ %i.3113.i, %for.body43.preheader.i ]
  %j.1107.i = phi i32 [ %inc49.i, %for.body43.i.for.body43.i_crit_edge ], [ 0, %for.body43.preheader.i ]
  %p32.0106.i = phi ptr [ %add.ptr47.i, %for.body43.i.for.body43.i_crit_edge ], [ %add.ptr35.i, %for.body43.preheader.i ]
  %oob.1105.i = phi i32 [ %inc50.i, %for.body43.i.for.body43.i_crit_edge ], [ %oob.0112.i, %for.body43.preheader.i ]
  %81 = load ptr, ptr @iobuf1, align 4
  %arrayidx44.i = getelementptr i8, ptr %81, i32 %i.4108.i
  %82 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %83 to i32
  %call46.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p32.0106.i, ptr noundef nonnull @.str.40, i32 noundef %conv45.i) #8
  %add.ptr47.i = getelementptr i8, ptr %p32.0106.i, i32 %call46.i
  %inc49.i = add nuw nsw i32 %j.1107.i, 1
  %inc50.i = add nsw i32 %oob.1105.i, 1
  %inc51.i = add i32 %i.4108.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %j.1107.i)
  %cmp37.i = icmp ult i32 %j.1107.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %inc50.i, i32 %79)
  %cmp40.i = icmp slt i32 %inc50.i, %79
  %or.cond94.i = select i1 %cmp37.i, i1 %cmp40.i, i1 false
  br i1 %or.cond94.i, label %for.body43.i.for.body43.i_crit_edge, label %for.body43.i.do.end55.i_crit_edge

for.body43.i.do.end55.i_crit_edge:                ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end55.i

for.body43.i.for.body43.i_crit_edge:              ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43.i

do.end55.i:                                       ; preds = %for.body43.i.do.end55.i_crit_edge, %for.body31.i.do.end55.i_crit_edge
  %oob.1.lcssa.i = phi i32 [ %oob.0112.i, %for.body31.i.do.end55.i_crit_edge ], [ %inc50.i, %for.body43.i.do.end55.i_crit_edge ]
  %i.4.lcssa.i = phi i32 [ %i.3113.i, %for.body31.i.do.end55.i_crit_edge ], [ %inc51.i, %for.body43.i.do.end55.i_crit_edge ]
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull %line.i) #11
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 109, i32 noundef 0) #8
  %call.i95.i = call i32 @__cond_resched() #8
  %cmp29.i = icmp slt i32 %oob.1.lcssa.i, %79
  br i1 %cmp29.i, label %do.end55.i.for.body31.i_crit_edge, label %do.end55.i.for.inc62.i_crit_edge

do.end55.i.for.inc62.i_crit_edge:                 ; preds = %do.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc62.i

do.end55.i.for.body31.i_crit_edge:                ; preds = %do.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31.i

for.inc62.i:                                      ; preds = %do.end55.i.for.inc62.i_crit_edge, %for.cond28.preheader.i.for.inc62.i_crit_edge
  %i.3.lcssa.i = phi i32 [ %i.2117.i, %for.cond28.preheader.i.for.inc62.i_crit_edge ], [ %i.4.lcssa.i, %do.end55.i.for.inc62.i_crit_edge ]
  %inc63.i = add nuw nsw i32 %pg.0116.i, 1
  %84 = load i32, ptr @pgcnt, align 4
  %cmp25.i = icmp slt i32 %inc63.i, %84
  br i1 %cmp25.i, label %for.inc62.i.for.cond28.preheader.i_crit_edge, label %for.inc62.i.dump_eraseblock.exit_crit_edge

for.inc62.i.dump_eraseblock.exit_crit_edge:       ; preds = %for.inc62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dump_eraseblock.exit

for.inc62.i.for.cond28.preheader.i_crit_edge:     ; preds = %for.inc62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond28.preheader.i

dump_eraseblock.exit:                             ; preds = %for.inc62.i.dump_eraseblock.exit_crit_edge, %do.end20.i.dump_eraseblock.exit_crit_edge, %for.end17.i.dump_eraseblock.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %line.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0492)
  %tobool262.not = icmp eq i32 %err.0492, 0
  %spec.select = select i1 %tobool262.not, i32 %err.4.i, i32 %err.0492
  br label %if.end265

if.end265:                                        ; preds = %dump_eraseblock.exit, %read_eraseblock_by_page.exit.if.end265_crit_edge, %if.end258.if.end265_crit_edge
  %err.1 = phi i32 [ %err.0492, %read_eraseblock_by_page.exit.if.end265_crit_edge ], [ %spec.select, %dump_eraseblock.exit ], [ %err.0492, %if.end258.if.end265_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.49, i32 noundef 7, i32 noundef 0) #8
  %call.i.i440 = call i32 @__cond_resched() #8
  %85 = call i32 @llvm.read_register.i32(metadata !109) #8
  %and.i.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %stack.i.i.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %90, align 4
  %93 = and i32 %92, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i.i441 = icmp eq i32 %93, 0
  br i1 %tobool.not.i.i441, label %signal_pending.exit.i, label %if.end265.out.sink.split_crit_edge, !prof !119

if.end265.out.sink.split_crit_edge:               ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

signal_pending.exit.i:                            ; preds = %if.end265
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %90, align 4
  %and1.i.i.i.i.i.i = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i442 = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i442, label %signal_pending.exit.i.for.inc_crit_edge, label %signal_pending.exit.i.out.sink.split_crit_edge

signal_pending.exit.i.out.sink.split_crit_edge:   ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

signal_pending.exit.i.for.inc_crit_edge:          ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %signal_pending.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %err.2.ph = phi i32 [ %err.0492, %for.body.for.inc_crit_edge ], [ %err.1, %signal_pending.exit.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0488, 1
  %96 = load i32, ptr @ebcnt, align 4
  %cmp254 = icmp slt i32 %inc, %96
  br i1 %cmp254, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.ph)
  %tobool270.not = icmp eq i32 %err.2.ph, 0
  br i1 %tobool270.not, label %for.end.do.end280_crit_edge, label %for.end.out.sink.split_crit_edge

for.end.out.sink.split_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

for.end.do.end280_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end280

do.end280:                                        ; preds = %for.end.do.end280_crit_edge, %do.end251.do.end280_crit_edge
  br label %out.sink.split

out.sink.split:                                   ; preds = %do.end280, %for.end.out.sink.split_crit_edge, %signal_pending.exit.i.out.sink.split_crit_edge, %if.end265.out.sink.split_crit_edge
  %.str.50.sink = phi ptr [ @.str.28, %do.end280 ], [ @.str.25, %for.end.out.sink.split_crit_edge ], [ @.str.50, %if.end265.out.sink.split_crit_edge ], [ @.str.50, %signal_pending.exit.i.out.sink.split_crit_edge ]
  %err.3.ph = phi i32 [ 0, %do.end280 ], [ %err.2.ph, %for.end.out.sink.split_crit_edge ], [ -4, %if.end265.out.sink.split_crit_edge ], [ -4, %signal_pending.exit.i.out.sink.split_crit_edge ]
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.50.sink) #11
  br label %out

out:                                              ; preds = %out.sink.split, %if.end244.out_crit_edge, %if.end8.i.i.out_crit_edge, %if.end8.i421.out_crit_edge, %if.end219.out_crit_edge
  %err.3 = phi i32 [ %call245, %if.end244.out_crit_edge ], [ -12, %if.end8.i.i.out_crit_edge ], [ -12, %if.end8.i421.out_crit_edge ], [ -12, %if.end219.out_crit_edge ], [ %err.3.ph, %out.sink.split ]
  %97 = load ptr, ptr @iobuf, align 4
  call void @kfree(ptr noundef %97) #8
  %98 = load ptr, ptr @iobuf1, align 4
  call void @kfree(ptr noundef %98) #8
  %99 = load ptr, ptr @bbt, align 4
  call void @kfree(ptr noundef %99) #8
  %100 = load ptr, ptr @mtd, align 4
  call void @put_mtd_device(ptr noundef %100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool284.not = icmp eq i32 %err.3, 0
  br i1 %tobool284.not, label %out.do.end294_crit_edge, label %do.end288

out.do.end294_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end294

do.end288:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %call290 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %err.3) #11
  br label %do.end294

do.end294:                                        ; preds = %do.end288, %out.do.end294_crit_edge
  %call296 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %cleanup297

cleanup297:                                       ; preds = %do.end294, %if.then19, %do.end9
  %retval.0 = phi i32 [ -22, %do.end9 ], [ %2, %if.then19 ], [ %err.3, %do.end294 ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_scan_for_bad_eraseblocks(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mtd_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !91, !93, !94, !95, !97, !98, !99, !101, !102, !104, !106, !107, !108}
!llvm.named.register.sp = !{!109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__param_dev, !1, !"__param_dev", i1 false, i1 false}
!1 = !{!"../drivers/mtd/tests/readtest.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_devtype201, !1, !"__UNIQUE_ID_devtype201", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dev202, !4, !"__UNIQUE_ID_dev202", i1 false, i1 false}
!4 = !{!"../drivers/mtd/tests/readtest.c", i32 24, i32 1}
!5 = !{ptr @__UNIQUE_ID_description203, !6, !"__UNIQUE_ID_description203", i1 false, i1 false}
!6 = !{!"../drivers/mtd/tests/readtest.c", i32 213, i32 1}
!7 = !{ptr @__UNIQUE_ID_author204, !8, !"__UNIQUE_ID_author204", i1 false, i1 false}
!8 = !{!"../drivers/mtd/tests/readtest.c", i32 214, i32 1}
!9 = !{ptr @__UNIQUE_ID_license205, !10, !"__UNIQUE_ID_license205", i1 false, i1 false}
!10 = !{!"../drivers/mtd/tests/readtest.c", i32 215, i32 1}
!11 = !{ptr @___asan_gen_.52, !1, !"__param_str_dev", i1 false, i1 false}
!12 = !{ptr @dev, !13, !"dev", i1 false, i1 false}
!13 = !{!"../drivers/mtd/tests/readtest.c", i32 22, i32 12}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/tests/readtest.c", i32 118, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mtd_readtest_init._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @mtd_readtest_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/tests/readtest.c", i32 119, i32 2}
!22 = !{ptr @mtd_readtest_init._entry.3, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mtd_readtest_init._entry_ptr.5, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/tests/readtest.c", i32 122, i32 3}
!26 = !{ptr @mtd_readtest_init._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mtd_readtest_init._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/tests/readtest.c", i32 126, i32 2}
!30 = !{ptr @mtd_readtest_init._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtd_readtest_init._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/tests/readtest.c", i32 131, i32 3}
!34 = !{ptr @mtd_readtest_init._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mtd_readtest_init._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/tests/readtest.c", i32 136, i32 3}
!38 = !{ptr @mtd_readtest_init._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mtd_readtest_init._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/tests/readtest.c", i32 147, i32 2}
!42 = !{ptr @mtd_readtest_init._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtd_readtest_init._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/tests/readtest.c", i32 169, i32 2}
!46 = !{ptr @mtd_readtest_init._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mtd_readtest_init._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/tests/readtest.c", i32 190, i32 3}
!50 = !{ptr @mtd_readtest_init._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mtd_readtest_init._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/tests/readtest.c", i32 192, i32 3}
!54 = !{ptr @mtd_readtest_init._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mtd_readtest_init._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/tests/readtest.c", i32 201, i32 3}
!58 = !{ptr @mtd_readtest_init._entry.30, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtd_readtest_init._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @mtd_readtest_init._entry.33, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/mtd/tests/readtest.c", i32 202, i32 2}
!62 = !{ptr @mtd_readtest_init._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @mtd, !64, !"mtd", i1 false, i1 false}
!64 = !{!"../drivers/mtd/tests/readtest.c", i32 26, i32 25}
!65 = !{ptr @pgsize, !66, !"pgsize", i1 false, i1 false}
!66 = !{!"../drivers/mtd/tests/readtest.c", i32 31, i32 12}
!67 = !{ptr @ebcnt, !68, !"ebcnt", i1 false, i1 false}
!68 = !{!"../drivers/mtd/tests/readtest.c", i32 32, i32 12}
!69 = !{ptr @pgcnt, !70, !"pgcnt", i1 false, i1 false}
!70 = !{!"../drivers/mtd/tests/readtest.c", i32 33, i32 12}
!71 = !{ptr @iobuf, !72, !"iobuf", i1 false, i1 false}
!72 = !{!"../drivers/mtd/tests/readtest.c", i32 27, i32 23}
!73 = !{ptr @iobuf1, !74, !"iobuf1", i1 false, i1 false}
!74 = !{!"../drivers/mtd/tests/readtest.c", i32 28, i32 23}
!75 = !{ptr @bbt, !76, !"bbt", i1 false, i1 false}
!76 = !{!"../drivers/mtd/tests/readtest.c", i32 29, i32 23}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/tests/readtest.c", i32 63, i32 5}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @read_eraseblock_by_page._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @read_eraseblock_by_page._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mtd/tests/readtest.c", i32 85, i32 2}
!84 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @dump_eraseblock._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @dump_eraseblock._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/tests/readtest.c", i32 90, i32 19}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/tests/readtest.c", i32 92, i32 20}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mtd/tests/readtest.c", i32 93, i32 3}
!93 = !{ptr @dump_eraseblock._entry.41, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @dump_eraseblock._entry_ptr.43, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/tests/readtest.c", i32 98, i32 2}
!97 = !{ptr @dump_eraseblock._entry.44, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @dump_eraseblock._entry_ptr.46, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @dump_eraseblock._entry.47, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/mtd/tests/readtest.c", i32 108, i32 4}
!101 = !{ptr @dump_eraseblock._entry_ptr.48, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/tests/mtd_test.h", i32 7, i32 2}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mtd/tests/mtd_test.h", i32 9, i32 3}
!106 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @mtdtest_relax._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @mtdtest_relax._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{!"sp"}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"branch_weights", i32 2000, i32 1}
!120 = !{i64 2148201091, i64 2148201371, i64 2148201705, i64 2148202039}
