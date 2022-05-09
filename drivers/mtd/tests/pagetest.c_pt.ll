; ModuleID = '/llk/IR_all_yes/drivers/mtd/tests/pagetest.c_pt.bc'
source_filename = "../drivers/mtd/tests/pagetest.c"
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
%struct.rnd_state = type { i32, i32, i32, i32 }
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
@__param_dev = internal constant %struct.kernel_param { ptr @___asan_gen_.135, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @dev } }, section "__param", align 4
@__UNIQUE_ID_devtype201 = internal constant [17 x i8] c"parmtype=dev:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dev202 = internal constant [34 x i8] c"parm=dev:MTD device number to use\00", section ".modinfo", align 1
@__UNIQUE_ID_description203 = internal constant [27 x i8] c"description=NAND page test\00", section ".modinfo", align 1
@__UNIQUE_ID_author204 = internal constant [21 x i8] c"author=Adrian Hunter\00", section ".modinfo", align 1
@__UNIQUE_ID_license205 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@mtd_pagetest_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtd_pagetest_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/tests/pagetest.c\00", [35 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr = internal global ptr @mtd_pagetest_init._entry, section ".printk_index", align 4
@mtd_pagetest_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016=================================================\0A\00", [43 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.5 = internal global ptr @mtd_pagetest_init._entry.3, section ".printk_index", align 4
@mtd_pagetest_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016mtd_pagetest: Please specify a valid mtd-device via module parameter\0A\00", [56 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.8 = internal global ptr @mtd_pagetest_init._entry.6, section ".printk_index", align 4
@mtd_pagetest_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\012mtd_pagetest: CAREFUL: This test wipes all data on the specified MTD device!\0A\00", [48 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.11 = internal global ptr @mtd_pagetest_init._entry.9, section ".printk_index", align 4
@mtd_pagetest_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016mtd_pagetest: MTD device: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.14 = internal global ptr @mtd_pagetest_init._entry.12, section ".printk_index", align 4
@mtd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mtd_pagetest_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013mtd_pagetest: error: cannot get MTD device\0A\00", [50 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.17 = internal global ptr @mtd_pagetest_init._entry.15, section ".printk_index", align 4
@mtd_pagetest_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016mtd_pagetest: this test requires NAND flash\0A\00", [49 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.20 = internal global ptr @mtd_pagetest_init._entry.18, section ".printk_index", align 4
@ebcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pgcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pgsize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mtd_pagetest_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [135 x i8], [57 x i8] } { [135 x i8] c"\016mtd_pagetest: MTD device size %llu, eraseblock size %u, page size %u, count of eraseblocks %u, pages per eraseblock %u, OOB size %u\0A\00", [57 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.23 = internal global ptr @mtd_pagetest_init._entry.21, section ".printk_index", align 4
@bufsize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@writebuf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@twopages = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@boundary = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bbt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mtd_pagetest_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016mtd_pagetest: erasing whole device\0A\00", [58 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.26 = internal global ptr @mtd_pagetest_init._entry.24, section ".printk_index", align 4
@mtd_pagetest_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016mtd_pagetest: erased %u eraseblocks\0A\00", [57 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.29 = internal global ptr @mtd_pagetest_init._entry.27, section ".printk_index", align 4
@rnd_state = internal global { %struct.rnd_state, [16 x i8] } zeroinitializer, align 32
@mtd_pagetest_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016mtd_pagetest: writing whole device\0A\00", [58 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.32 = internal global ptr @mtd_pagetest_init._entry.30, section ".printk_index", align 4
@mtd_pagetest_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016mtd_pagetest: written up to eraseblock %u\0A\00", [51 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.35 = internal global ptr @mtd_pagetest_init._entry.33, section ".printk_index", align 4
@mtd_pagetest_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016mtd_pagetest: written %u eraseblocks\0A\00", [56 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.38 = internal global ptr @mtd_pagetest_init._entry.36, section ".printk_index", align 4
@mtd_pagetest_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016mtd_pagetest: verifying all eraseblocks\0A\00", [53 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.41 = internal global ptr @mtd_pagetest_init._entry.39, section ".printk_index", align 4
@mtd_pagetest_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.1, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016mtd_pagetest: verified up to eraseblock %u\0A\00", [50 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.44 = internal global ptr @mtd_pagetest_init._entry.42, section ".printk_index", align 4
@mtd_pagetest_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.1, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016mtd_pagetest: verified %u eraseblocks\0A\00", [55 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.47 = internal global ptr @mtd_pagetest_init._entry.45, section ".printk_index", align 4
@mtd_pagetest_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016mtd_pagetest: skipping erasecrosstest, 2 erase blocks needed\0A\00", [32 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.50 = internal global ptr @mtd_pagetest_init._entry.48, section ".printk_index", align 4
@mtd_pagetest_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016mtd_pagetest: finished with %d errors\0A\00", [55 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.53 = internal global ptr @mtd_pagetest_init._entry.51, section ".printk_index", align 4
@errcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mtd_pagetest_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.1, ptr @.str.2, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016mtd_pagetest: error %d occurred\0A\00", [61 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.56 = internal global ptr @mtd_pagetest_init._entry.54, section ".printk_index", align 4
@mtd_pagetest_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_pagetest_init._entry_ptr.58 = internal global ptr @mtd_pagetest_init._entry.57, section ".printk_index", align 4
@net_rand_noise = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/tests/mtd_test.h\00", [35 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.59, i32 9, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016mtd_pagetest: aborting test due to pending signal!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtdtest_relax\00", [18 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry_ptr = internal global ptr @mtdtest_relax._entry, section ".printk_index", align 4
@verify_eraseblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013mtd_pagetest: error: verify failed at %#llx\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"verify_eraseblock\00", [46 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr = internal global ptr @verify_eraseblock._entry, section ".printk_index", align 4
@verify_eraseblock._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.65 = internal global ptr @verify_eraseblock._entry.64, section ".printk_index", align 4
@crosstest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016mtd_pagetest: crosstest\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"crosstest\00", [22 x i8] zeroinitializer }, align 32
@crosstest._entry_ptr = internal global ptr @crosstest._entry, section ".printk_index", align 4
@crosstest._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016mtd_pagetest: reading page at %#llx\0A\00", [57 x i8] zeroinitializer }, align 32
@crosstest._entry_ptr.70 = internal global ptr @crosstest._entry.68, section ".printk_index", align 4
@crosstest._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@crosstest._entry_ptr.72 = internal global ptr @crosstest._entry.71, section ".printk_index", align 4
@crosstest._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@crosstest._entry_ptr.74 = internal global ptr @crosstest._entry.73, section ".printk_index", align 4
@crosstest._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.67, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016mtd_pagetest: verifying pages read at %#llx match\0A\00", [43 x i8] zeroinitializer }, align 32
@crosstest._entry_ptr.77 = internal global ptr @crosstest._entry.75, section ".printk_index", align 4
@crosstest._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.67, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013mtd_pagetest: verify failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@crosstest._entry_ptr.80 = internal global ptr @crosstest._entry.78, section ".printk_index", align 4
@crosstest._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.67, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016mtd_pagetest: crosstest ok\0A\00", [34 x i8] zeroinitializer }, align 32
@crosstest._entry_ptr.83 = internal global ptr @crosstest._entry.81, section ".printk_index", align 4
@erasecrosstest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016mtd_pagetest: erasecrosstest\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"erasecrosstest\00", [17 x i8] zeroinitializer }, align 32
@erasecrosstest._entry_ptr = internal global ptr @erasecrosstest._entry, section ".printk_index", align 4
@erasecrosstest._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016mtd_pagetest: erasing block %d\0A\00", [62 x i8] zeroinitializer }, align 32
@erasecrosstest._entry_ptr.88 = internal global ptr @erasecrosstest._entry.86, section ".printk_index", align 4
@erasecrosstest._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016mtd_pagetest: writing 1st page of block %d\0A\00", [50 x i8] zeroinitializer }, align 32
@erasecrosstest._entry_ptr.91 = internal global ptr @erasecrosstest._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"There is no data like this!\00", [36 x i8] zeroinitializer }, align 32
@erasecrosstest._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.85, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016mtd_pagetest: reading 1st page of block %d\0A\00", [50 x i8] zeroinitializer }, align 32
@erasecrosstest._entry_ptr.95 = internal global ptr @erasecrosstest._entry.93, section ".printk_index", align 4
@erasecrosstest._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.85, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016mtd_pagetest: verifying 1st page of block %d\0A\00", [48 x i8] zeroinitializer }, align 32
@erasecrosstest._entry_ptr.98 = internal global ptr @erasecrosstest._entry.96, section ".printk_index", align 4
@erasecrosstest._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.85, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@erasecrosstest._entry_ptr.100 = internal global ptr @erasecrosstest._entry.99, section ".printk_index", align 4
@erasecrosstest._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@erasecrosstest._entry_ptr.102 = internal global ptr @erasecrosstest._entry.101, section ".printk_index", align 4
@erasecrosstest._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@erasecrosstest._entry_ptr.104 = internal global ptr @erasecrosstest._entry.103, section ".printk_index", align 4
@erasecrosstest._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@erasecrosstest._entry_ptr.106 = internal global ptr @erasecrosstest._entry.105, section ".printk_index", align 4
@erasecrosstest._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.85, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@erasecrosstest._entry_ptr.108 = internal global ptr @erasecrosstest._entry.107, section ".printk_index", align 4
@erasecrosstest._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.85, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@erasecrosstest._entry_ptr.110 = internal global ptr @erasecrosstest._entry.109, section ".printk_index", align 4
@erasecrosstest._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.85, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@erasecrosstest._entry_ptr.112 = internal global ptr @erasecrosstest._entry.111, section ".printk_index", align 4
@erasecrosstest._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.85, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016mtd_pagetest: erasecrosstest ok\0A\00", [61 x i8] zeroinitializer }, align 32
@erasecrosstest._entry_ptr.115 = internal global ptr @erasecrosstest._entry.113, section ".printk_index", align 4
@erasetest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016mtd_pagetest: erasetest\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"erasetest\00", [22 x i8] zeroinitializer }, align 32
@erasetest._entry_ptr = internal global ptr @erasetest._entry, section ".printk_index", align 4
@erasetest._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.117, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@erasetest._entry_ptr.119 = internal global ptr @erasetest._entry.118, section ".printk_index", align 4
@erasetest._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.117, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@erasetest._entry_ptr.121 = internal global ptr @erasetest._entry.120, section ".printk_index", align 4
@erasetest._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.117, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@erasetest._entry_ptr.123 = internal global ptr @erasetest._entry.122, section ".printk_index", align 4
@erasetest._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.117, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@erasetest._entry_ptr.125 = internal global ptr @erasetest._entry.124, section ".printk_index", align 4
@erasetest._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.117, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016mtd_pagetest: verifying 1st page of block %d is all 0xff\0A\00", [36 x i8] zeroinitializer }, align 32
@erasetest._entry_ptr.128 = internal global ptr @erasetest._entry.126, section ".printk_index", align 4
@erasetest._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.117, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013mtd_pagetest: verifying all 0xff failed at %d\0A\00", [47 x i8] zeroinitializer }, align 32
@erasetest._entry_ptr.131 = internal global ptr @erasetest._entry.129, section ".printk_index", align 4
@erasetest._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.117, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016mtd_pagetest: erasetest ok\0A\00", [34 x i8] zeroinitializer }, align 32
@erasetest._entry_ptr.134 = internal global ptr @erasetest._entry.132, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 8]
@___asan_gen_.135 = private constant [4 x i8] c"dev\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 24, i32 12 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 325, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 326, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 329, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 330, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 334, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [4 x i8] c"mtd\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 28, i32 25 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 339, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 344, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [6 x i8] c"ebcnt\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 36, i32 12 }
@___asan_gen_.192 = private unnamed_addr constant [6 x i8] c"pgcnt\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 37, i32 12 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"pgsize\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 34, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 354, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [8 x i8] c"bufsize\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 35, i32 12 }
@___asan_gen_.207 = private unnamed_addr constant [9 x i8] c"writebuf\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 30, i32 23 }
@___asan_gen_.210 = private unnamed_addr constant [9 x i8] c"twopages\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 29, i32 23 }
@___asan_gen_.213 = private unnamed_addr constant [9 x i8] c"boundary\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 31, i32 23 }
@___asan_gen_.216 = private unnamed_addr constant [4 x i8] c"bbt\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 32, i32 23 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 380, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 384, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [10 x i8] c"rnd_state\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 39, i32 25 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 388, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 396, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 402, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 406, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 414, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 420, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 431, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 438, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [7 x i8] c"errcnt\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 38, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 447, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 448, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 7, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [32 x i8] c"../drivers/mtd/tests/mtd_test.h\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 9, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 79, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 102, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 117, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 151, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 160, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 169, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 177, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 180, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 183, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 194, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 207, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 212, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 214, i32 19 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 219, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 225, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 227, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 232, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 237, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 244, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 249, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 255, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 257, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 263, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 272, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 281, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 286, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 292, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 297, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 302, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 306, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.457 = private constant [32 x i8] c"../drivers/mtd/tests/pagetest.c\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 314, i32 3 }
@llvm.compiler.used = appending global [165 x ptr] [ptr @__UNIQUE_ID_author204, ptr @__UNIQUE_ID_description203, ptr @__UNIQUE_ID_dev202, ptr @__UNIQUE_ID_devtype201, ptr @__UNIQUE_ID_license205, ptr @__param_dev, ptr @crosstest._entry, ptr @crosstest._entry.68, ptr @crosstest._entry.71, ptr @crosstest._entry.73, ptr @crosstest._entry.75, ptr @crosstest._entry.78, ptr @crosstest._entry.81, ptr @crosstest._entry_ptr, ptr @crosstest._entry_ptr.70, ptr @crosstest._entry_ptr.72, ptr @crosstest._entry_ptr.74, ptr @crosstest._entry_ptr.77, ptr @crosstest._entry_ptr.80, ptr @crosstest._entry_ptr.83, ptr @erasecrosstest._entry, ptr @erasecrosstest._entry.101, ptr @erasecrosstest._entry.103, ptr @erasecrosstest._entry.105, ptr @erasecrosstest._entry.107, ptr @erasecrosstest._entry.109, ptr @erasecrosstest._entry.111, ptr @erasecrosstest._entry.113, ptr @erasecrosstest._entry.86, ptr @erasecrosstest._entry.89, ptr @erasecrosstest._entry.93, ptr @erasecrosstest._entry.96, ptr @erasecrosstest._entry.99, ptr @erasecrosstest._entry_ptr, ptr @erasecrosstest._entry_ptr.100, ptr @erasecrosstest._entry_ptr.102, ptr @erasecrosstest._entry_ptr.104, ptr @erasecrosstest._entry_ptr.106, ptr @erasecrosstest._entry_ptr.108, ptr @erasecrosstest._entry_ptr.110, ptr @erasecrosstest._entry_ptr.112, ptr @erasecrosstest._entry_ptr.115, ptr @erasecrosstest._entry_ptr.88, ptr @erasecrosstest._entry_ptr.91, ptr @erasecrosstest._entry_ptr.95, ptr @erasecrosstest._entry_ptr.98, ptr @erasetest._entry, ptr @erasetest._entry.118, ptr @erasetest._entry.120, ptr @erasetest._entry.122, ptr @erasetest._entry.124, ptr @erasetest._entry.126, ptr @erasetest._entry.129, ptr @erasetest._entry.132, ptr @erasetest._entry_ptr, ptr @erasetest._entry_ptr.119, ptr @erasetest._entry_ptr.121, ptr @erasetest._entry_ptr.123, ptr @erasetest._entry_ptr.125, ptr @erasetest._entry_ptr.128, ptr @erasetest._entry_ptr.131, ptr @erasetest._entry_ptr.134, ptr @mtd_pagetest_init._entry, ptr @mtd_pagetest_init._entry.12, ptr @mtd_pagetest_init._entry.15, ptr @mtd_pagetest_init._entry.18, ptr @mtd_pagetest_init._entry.21, ptr @mtd_pagetest_init._entry.24, ptr @mtd_pagetest_init._entry.27, ptr @mtd_pagetest_init._entry.3, ptr @mtd_pagetest_init._entry.30, ptr @mtd_pagetest_init._entry.33, ptr @mtd_pagetest_init._entry.36, ptr @mtd_pagetest_init._entry.39, ptr @mtd_pagetest_init._entry.42, ptr @mtd_pagetest_init._entry.45, ptr @mtd_pagetest_init._entry.48, ptr @mtd_pagetest_init._entry.51, ptr @mtd_pagetest_init._entry.54, ptr @mtd_pagetest_init._entry.57, ptr @mtd_pagetest_init._entry.6, ptr @mtd_pagetest_init._entry.9, ptr @mtd_pagetest_init._entry_ptr, ptr @mtd_pagetest_init._entry_ptr.11, ptr @mtd_pagetest_init._entry_ptr.14, ptr @mtd_pagetest_init._entry_ptr.17, ptr @mtd_pagetest_init._entry_ptr.20, ptr @mtd_pagetest_init._entry_ptr.23, ptr @mtd_pagetest_init._entry_ptr.26, ptr @mtd_pagetest_init._entry_ptr.29, ptr @mtd_pagetest_init._entry_ptr.32, ptr @mtd_pagetest_init._entry_ptr.35, ptr @mtd_pagetest_init._entry_ptr.38, ptr @mtd_pagetest_init._entry_ptr.41, ptr @mtd_pagetest_init._entry_ptr.44, ptr @mtd_pagetest_init._entry_ptr.47, ptr @mtd_pagetest_init._entry_ptr.5, ptr @mtd_pagetest_init._entry_ptr.50, ptr @mtd_pagetest_init._entry_ptr.53, ptr @mtd_pagetest_init._entry_ptr.56, ptr @mtd_pagetest_init._entry_ptr.58, ptr @mtd_pagetest_init._entry_ptr.8, ptr @mtdtest_relax._entry, ptr @mtdtest_relax._entry_ptr, ptr @verify_eraseblock._entry, ptr @verify_eraseblock._entry.64, ptr @verify_eraseblock._entry_ptr, ptr @verify_eraseblock._entry_ptr.65, ptr @dev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @mtd, ptr @.str.16, ptr @.str.19, ptr @ebcnt, ptr @pgcnt, ptr @pgsize, ptr @.str.22, ptr @bufsize, ptr @writebuf, ptr @twopages, ptr @boundary, ptr @bbt, ptr @.str.25, ptr @.str.28, ptr @rnd_state, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @errcnt, ptr @.str.55, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.127, ptr @.str.130, ptr @.str.133], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pgcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pgsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 135, i32 192, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bufsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writebuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twopages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boundary to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnd_state to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @errcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pagetest_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdtest_relax._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crosstest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crosstest._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crosstest._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crosstest._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crosstest._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crosstest._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crosstest._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasecrosstest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasecrosstest._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasecrosstest._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasecrosstest._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasecrosstest._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasecrosstest._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasecrosstest._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasecrosstest._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasecrosstest._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasecrosstest._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasecrosstest._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasecrosstest._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasecrosstest._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasetest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasetest._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasetest._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasetest._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasetest._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasetest._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasetest._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erasetest._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  %0 = load i32, ptr @dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %do.end9, label %do.end19

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %cleanup

do.end19:                                         ; preds = %entry
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %0) #13
  %1 = load i32, ptr @dev, align 4
  %call22 = tail call ptr @get_mtd_device(ptr noundef null, i32 noundef %1) #10
  store ptr %call22, ptr @mtd, align 4
  %cmp.i550 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i550, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end31:                                         ; preds = %do.end19
  %3 = ptrtoint ptr %call22 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call22, align 8
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %do.end36 [
    i8 8, label %if.end31.if.end39_crit_edge
    i8 4, label %if.end31.if.end39_crit_edge644
  ]

if.end31.if.end39_crit_edge644:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

do.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  br label %out

if.end39:                                         ; preds = %if.end31.if.end39_crit_edge, %if.end31.if.end39_crit_edge644
  %size = getelementptr inbounds %struct.mtd_info, ptr %call22, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size, align 8
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %call22, i32 0, i32 3
  %8 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %7)
  %cmp209 = icmp ult i64 %7, 4294967296
  br i1 %cmp209, label %if.then213, label %if.else219, !prof !246

if.then213:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %conv214 = trunc i64 %7 to i32
  %div217 = udiv i32 %conv214, %9
  br label %if.end223

if.else219:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %7) #14, !srcloc !247
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  %extract.t607 = trunc i64 %asmresult1.i to i32
  br label %if.end223

if.end223:                                        ; preds = %if.else219, %if.then213
  %tmp.0.off0 = phi i32 [ %div217, %if.then213 ], [ %extract.t607, %if.else219 ]
  store i32 %tmp.0.off0, ptr @ebcnt, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %call22, i32 0, i32 4
  %11 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %writesize, align 4
  %div227 = udiv i32 %9, %12
  store i32 %div227, ptr @pgcnt, align 4
  store i32 %12, ptr @pgsize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %call22, i32 0, i32 6
  %13 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %oobsize, align 4
  %call235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i64 noundef %7, i32 noundef %9, i32 noundef %12, i32 noundef %tmp.0.off0, i32 noundef %div227, i32 noundef %14) #13
  %15 = load i32, ptr @pgsize, align 4
  %mul236 = shl i32 %15, 1
  store i32 %mul236, ptr @bufsize, align 4
  %16 = load ptr, ptr @mtd, align 4
  %erasesize237 = getelementptr inbounds %struct.mtd_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %erasesize237 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %erasesize237, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3264) #15
  store ptr %call9.i, ptr @writebuf, align 4
  %tobool239.not = icmp eq ptr %call9.i, null
  br i1 %tobool239.not, label %if.end223.out_crit_edge, label %if.end8.i518

if.end223.out_crit_edge:                          ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8.i518:                                     ; preds = %if.end223
  %19 = load i32, ptr @bufsize, align 4
  %call9.i517 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3264) #15
  store ptr %call9.i517, ptr @twopages, align 4
  %tobool243.not = icmp eq ptr %call9.i517, null
  br i1 %tobool243.not, label %if.end8.i518.out_crit_edge, label %if.end8.i547

if.end8.i518.out_crit_edge:                       ; preds = %if.end8.i518
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8.i547:                                     ; preds = %if.end8.i518
  %20 = load i32, ptr @bufsize, align 4
  %call9.i546 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #15
  store ptr %call9.i546, ptr @boundary, align 4
  %tobool247.not = icmp eq ptr %call9.i546, null
  br i1 %tobool247.not, label %if.end8.i547.out_crit_edge, label %if.end8.i.i

if.end8.i547.out_crit_edge:                       ; preds = %if.end8.i547
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8.i.i:                                      ; preds = %if.end8.i547
  %21 = load i32, ptr @ebcnt, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #15
  store ptr %call9.i.i, ptr @bbt, align 4
  %tobool251.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool251.not, label %if.end8.i.i.out_crit_edge, label %if.end253

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end253:                                        ; preds = %if.end8.i.i
  %22 = load ptr, ptr @mtd, align 4
  %23 = load i32, ptr @ebcnt, align 4
  %call254 = tail call i32 @mtdtest_scan_for_bad_eraseblocks(ptr noundef %22, ptr noundef nonnull %call9.i.i, i32 noundef 0, i32 noundef %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %do.end260, label %if.end253.out_crit_edge

if.end253.out_crit_edge:                          ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end260:                                        ; preds = %if.end253
  %call262 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  %24 = load ptr, ptr @mtd, align 4
  %25 = load ptr, ptr @bbt, align 4
  %26 = load i32, ptr @ebcnt, align 4
  %call263 = tail call i32 @mtdtest_erase_good_eraseblocks(ptr noundef %24, ptr noundef %25, i32 noundef 0, i32 noundef %26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263)
  %tobool264.not = icmp eq i32 %call263, 0
  br i1 %tobool264.not, label %do.end269, label %do.end260.out_crit_edge

do.end260.out_crit_edge:                          ; preds = %do.end260
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end269:                                        ; preds = %do.end260
  %27 = load i32, ptr @ebcnt, align 4
  %call271 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %27) #13
  tail call fastcc void @prandom_seed_state()
  %call276 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #13
  %28 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp277618.not = icmp eq i32 %28, 0
  br i1 %cmp277618.not, label %do.end269.do.end302_crit_edge, label %do.end269.for.body_crit_edge

do.end269.for.body_crit_edge:                     ; preds = %do.end269
  br label %for.body

do.end269.do.end302_crit_edge:                    ; preds = %do.end269
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end302

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end269.for.body_crit_edge
  %i.0619 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end269.for.body_crit_edge ]
  %29 = load ptr, ptr @bbt, align 4
  %arrayidx = getelementptr i8, ptr %29, i32 %i.0619
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool279.not = icmp eq i8 %31, 0
  br i1 %tobool279.not, label %if.end281, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end281:                                        ; preds = %for.body
  %conv.i = sext i32 %i.0619 to i64
  %32 = load ptr, ptr @mtd, align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %erasesize.i, align 8
  %conv1.i = zext i32 %34 to i64
  %mul.i = mul nsw i64 %conv1.i, %conv.i
  %35 = load ptr, ptr @writebuf, align 4
  tail call void @prandom_bytes_state(ptr noundef nonnull @rnd_state, ptr noundef %35, i32 noundef %34) #10
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 46, i32 noundef 0) #10
  %call.i.i = tail call i32 @__cond_resched() #10
  %36 = load ptr, ptr @mtd, align 4
  %erasesize3.i = getelementptr inbounds %struct.mtd_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %erasesize3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %erasesize3.i, align 8
  %39 = load ptr, ptr @writebuf, align 4
  %call4.i = tail call i32 @mtdtest_write(ptr noundef %36, i64 noundef %mul.i, i32 noundef %38, ptr noundef %39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool283.not = icmp eq i32 %call4.i, 0
  br i1 %tobool283.not, label %if.end285, label %if.end281.out_crit_edge

if.end281.out_crit_edge:                          ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end285:                                        ; preds = %if.end281
  %rem286 = and i32 %i.0619, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem286)
  %cmp287 = icmp eq i32 %rem286, 0
  br i1 %cmp287, label %do.end292, label %if.end285.if.end295_crit_edge

if.end285.if.end295_crit_edge:                    ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end295

do.end292:                                        ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #12
  %call294 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %i.0619) #13
  br label %if.end295

if.end295:                                        ; preds = %do.end292, %if.end285.if.end295_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.59, i32 noundef 7, i32 noundef 0) #10
  %call.i.i556 = tail call i32 @__cond_resched() #10
  %40 = tail call i32 @llvm.read_register.i32(metadata !236) #10
  %and.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stack.i.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %48 = and i32 %47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i557 = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i557, label %signal_pending.exit.i, label %if.end295.mtdtest_relax.exit_crit_edge, !prof !246

if.end295.mtdtest_relax.exit_crit_edge:           ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit

signal_pending.exit.i:                            ; preds = %if.end295
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %45, align 4
  %and1.i.i.i.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %signal_pending.exit.i.for.inc_crit_edge, label %signal_pending.exit.i.mtdtest_relax.exit_crit_edge

signal_pending.exit.i.mtdtest_relax.exit_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit

signal_pending.exit.i.for.inc_crit_edge:          ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

mtdtest_relax.exit:                               ; preds = %signal_pending.exit.i.mtdtest_relax.exit_crit_edge, %if.end295.mtdtest_relax.exit_crit_edge
  %call4.i558 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #13
  br label %out

for.inc:                                          ; preds = %signal_pending.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0619, 1
  %51 = load i32, ptr @ebcnt, align 4
  %cmp277 = icmp ult i32 %inc, %51
  br i1 %cmp277, label %for.inc.for.body_crit_edge, label %for.inc.do.end302_crit_edge

for.inc.do.end302_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end302

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end302:                                        ; preds = %for.inc.do.end302_crit_edge, %do.end269.do.end302_crit_edge
  %i.0.lcssa = phi i32 [ 0, %do.end269.do.end302_crit_edge ], [ %inc, %for.inc.do.end302_crit_edge ]
  %call304 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %i.0.lcssa) #13
  tail call fastcc void @prandom_seed_state()
  %call309 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #13
  %52 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp311621.not = icmp eq i32 %52, 0
  br i1 %cmp311621.not, label %do.end302.do.end341_crit_edge, label %do.end302.for.body313_crit_edge

do.end302.for.body313_crit_edge:                  ; preds = %do.end302
  br label %for.body313

do.end302.do.end341_crit_edge:                    ; preds = %do.end302
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end341

for.body313:                                      ; preds = %for.inc336.for.body313_crit_edge, %do.end302.for.body313_crit_edge
  %53 = phi i32 [ %124, %for.inc336.for.body313_crit_edge ], [ %52, %do.end302.for.body313_crit_edge ]
  %i.1622 = phi i32 [ %inc337, %for.inc336.for.body313_crit_edge ], [ 0, %do.end302.for.body313_crit_edge ]
  %54 = load ptr, ptr @bbt, align 4
  %arrayidx314 = getelementptr i8, ptr %54, i32 %i.1622
  %55 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx314, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool315.not = icmp eq i8 %56, 0
  br i1 %tobool315.not, label %if.end317, label %for.body313.for.inc336_crit_edge

for.body313.for.inc336_crit_edge:                 ; preds = %for.body313
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc336

if.end317:                                        ; preds = %for.body313
  %conv.i559 = sext i32 %i.1622 to i64
  %57 = load ptr, ptr @mtd, align 4
  %erasesize.i560 = getelementptr inbounds %struct.mtd_info, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %erasesize.i560 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %erasesize.i560, align 8
  %conv1.i561 = zext i32 %59 to i64
  %mul.i562 = mul nsw i64 %conv1.i561, %conv.i559
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp134.i = icmp sgt i32 %53, 0
  br i1 %cmp134.i, label %if.end317.land.rhs.i564_crit_edge, label %for.end.thread.i

if.end317.land.rhs.i564_crit_edge:                ; preds = %if.end317
  br label %land.rhs.i564

for.end.thread.i:                                 ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #12
  %size155.i = getelementptr inbounds %struct.mtd_info, ptr %57, i32 0, i32 2
  %60 = ptrtoint ptr %size155.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %size155.i, align 8
  br label %for.end21.i

land.rhs.i564:                                    ; preds = %for.body.i.land.rhs.i564_crit_edge, %if.end317.land.rhs.i564_crit_edge
  %addr0.0136.i = phi i64 [ %add.i, %for.body.i.land.rhs.i564_crit_edge ], [ 0, %if.end317.land.rhs.i564_crit_edge ]
  %i.0135.i = phi i32 [ %inc.i, %for.body.i.land.rhs.i564_crit_edge ], [ 0, %if.end317.land.rhs.i564_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %54, i32 %i.0135.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i563 = icmp eq i8 %63, 0
  br i1 %tobool.not.i563, label %land.rhs.i564.land.rhs9.lr.ph.i_crit_edge, label %for.body.i

land.rhs.i564.land.rhs9.lr.ph.i_crit_edge:        ; preds = %land.rhs.i564
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs9.lr.ph.i

for.body.i:                                       ; preds = %land.rhs.i564
  %add.i = add nuw nsw i64 %addr0.0136.i, %conv1.i561
  %inc.i = add nuw nsw i32 %i.0135.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %53
  br i1 %exitcond.not.i, label %for.body.i.land.rhs9.lr.ph.i_crit_edge, label %for.body.i.land.rhs.i564_crit_edge

for.body.i.land.rhs.i564_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i564

for.body.i.land.rhs9.lr.ph.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs9.lr.ph.i

land.rhs9.lr.ph.i:                                ; preds = %for.body.i.land.rhs9.lr.ph.i_crit_edge, %land.rhs.i564.land.rhs9.lr.ph.i_crit_edge
  %addr0.0.lcssa.i = phi i64 [ %addr0.0136.i, %land.rhs.i564.land.rhs9.lr.ph.i_crit_edge ], [ %add.i, %for.body.i.land.rhs9.lr.ph.i_crit_edge ]
  %size.i = getelementptr inbounds %struct.mtd_info, ptr %57, i32 0, i32 2
  %64 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %size.i, align 8
  br label %land.rhs9.i

land.rhs9.i:                                      ; preds = %for.body15.i.land.rhs9.i_crit_edge, %land.rhs9.lr.ph.i
  %addrn.0142.i = phi i64 [ %65, %land.rhs9.lr.ph.i ], [ %sub18.i, %for.body15.i.land.rhs9.i_crit_edge ]
  %i.1141.i = phi i32 [ 0, %land.rhs9.lr.ph.i ], [ %inc20.i, %for.body15.i.land.rhs9.i_crit_edge ]
  %66 = xor i32 %i.1141.i, -1
  %sub10.i = add i32 %53, %66
  %arrayidx11.i = getelementptr i8, ptr %54, i32 %sub10.i
  %67 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool13.not.i = icmp eq i8 %68, 0
  br i1 %tobool13.not.i, label %land.rhs9.i.for.end21.i_crit_edge, label %for.body15.i

land.rhs9.i.for.end21.i_crit_edge:                ; preds = %land.rhs9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21.i

for.body15.i:                                     ; preds = %land.rhs9.i
  %sub18.i = sub i64 %addrn.0142.i, %conv1.i561
  %inc20.i = add nuw nsw i32 %i.1141.i, 1
  %exitcond153.not.i = icmp eq i32 %inc20.i, %53
  br i1 %exitcond153.not.i, label %for.body15.i.for.end21.i_crit_edge, label %for.body15.i.land.rhs9.i_crit_edge

for.body15.i.land.rhs9.i_crit_edge:               ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs9.i

for.body15.i.for.end21.i_crit_edge:               ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21.i

for.end21.i:                                      ; preds = %for.body15.i.for.end21.i_crit_edge, %land.rhs9.i.for.end21.i_crit_edge, %for.end.thread.i
  %addr0.0.lcssa156.i = phi i64 [ 0, %for.end.thread.i ], [ %addr0.0.lcssa.i, %land.rhs9.i.for.end21.i_crit_edge ], [ %addr0.0.lcssa.i, %for.body15.i.for.end21.i_crit_edge ]
  %addrn.0.lcssa.i = phi i64 [ %61, %for.end.thread.i ], [ %sub18.i, %for.body15.i.for.end21.i_crit_edge ], [ %addrn.0142.i, %land.rhs9.i.for.end21.i_crit_edge ]
  %69 = load ptr, ptr @writebuf, align 4
  tail call void @prandom_bytes_state(ptr noundef nonnull @rnd_state, ptr noundef %69, i32 noundef %59) #10
  %70 = load i32, ptr @pgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp25146.not.i = icmp eq i32 %70, 1
  br i1 %cmp25146.not.i, label %for.end21.i.for.end50.i_crit_edge, label %for.end21.i.for.body27.i_crit_edge

for.end21.i.for.body27.i_crit_edge:               ; preds = %for.end21.i
  br label %for.body27.i

for.end21.i.for.end50.i_crit_edge:                ; preds = %for.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end50.i

for.body27.i:                                     ; preds = %for.inc46.i.for.body27.i_crit_edge, %for.end21.i.for.body27.i_crit_edge
  %j.0148.i = phi i32 [ %inc47.i, %for.inc46.i.for.body27.i_crit_edge ], [ 0, %for.end21.i.for.body27.i_crit_edge ]
  %addr.0147.i = phi i64 [ %add49.i, %for.inc46.i.for.body27.i_crit_edge ], [ %mul.i562, %for.end21.i.for.body27.i_crit_edge ]
  %71 = load ptr, ptr @mtd, align 4
  %72 = load i32, ptr @bufsize, align 4
  %73 = load ptr, ptr @twopages, align 4
  %call.i = tail call i32 @mtdtest_read(ptr noundef %71, i64 noundef %addr0.0.lcssa156.i, i32 noundef %72, ptr noundef %73) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool28.not.i, label %if.end.i565, label %for.body27.i.out_crit_edge

for.body27.i.out_crit_edge:                       ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i565:                                      ; preds = %for.body27.i
  %74 = load ptr, ptr @mtd, align 4
  %75 = load i32, ptr @bufsize, align 4
  %conv29.i = sext i32 %75 to i64
  %sub30.i = sub i64 %addrn.0.lcssa.i, %conv29.i
  %76 = load ptr, ptr @twopages, align 4
  %call31.i = tail call i32 @mtdtest_read(ptr noundef %74, i64 noundef %sub30.i, i32 noundef %75, ptr noundef %76) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end.i565.out_crit_edge

if.end.i565.out_crit_edge:                        ; preds = %if.end.i565
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end34.i:                                       ; preds = %if.end.i565
  %77 = load ptr, ptr @twopages, align 4
  %78 = load i32, ptr @bufsize, align 4
  %79 = call ptr @memset(ptr %77, i32 0, i32 %78)
  %80 = load ptr, ptr @mtd, align 4
  %call35.i = tail call i32 @mtdtest_read(ptr noundef %80, i64 noundef %addr.0147.i, i32 noundef %78, ptr noundef %77) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end34.i.for.end50.i_crit_edge

if.end34.i.for.end50.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end50.i

if.end38.i:                                       ; preds = %if.end34.i
  %81 = load ptr, ptr @twopages, align 4
  %82 = load ptr, ptr @writebuf, align 4
  %83 = load i32, ptr @pgsize, align 4
  %mul39.i = mul i32 %83, %j.0148.i
  %add.ptr.i = getelementptr i8, ptr %82, i32 %mul39.i
  %84 = load i32, ptr @bufsize, align 4
  %bcmp129.i = tail call i32 @bcmp(ptr %81, ptr %add.ptr.i, i32 %84) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp129.i)
  %tobool41.not.i = icmp eq i32 %bcmp129.i, 0
  br i1 %tobool41.not.i, label %if.end38.i.for.inc46.i_crit_edge, label %do.end.i566

if.end38.i.for.inc46.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc46.i

do.end.i566:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i64 noundef %addr.0147.i) #13
  %85 = load i32, ptr @errcnt, align 4
  %add44.i = add i32 %85, 1
  store i32 %add44.i, ptr @errcnt, align 4
  br label %for.inc46.i

for.inc46.i:                                      ; preds = %do.end.i566, %if.end38.i.for.inc46.i_crit_edge
  %inc47.i = add nuw i32 %j.0148.i, 1
  %86 = load i32, ptr @pgsize, align 4
  %conv48.i = sext i32 %86 to i64
  %add49.i = add i64 %addr.0147.i, %conv48.i
  %87 = load i32, ptr @pgcnt, align 4
  %sub24.i = add i32 %87, -1
  %cmp25.i = icmp ult i32 %inc47.i, %sub24.i
  br i1 %cmp25.i, label %for.inc46.i.for.body27.i_crit_edge, label %for.inc46.i.for.end50.i_crit_edge

for.inc46.i.for.end50.i_crit_edge:                ; preds = %for.inc46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end50.i

for.inc46.i.for.body27.i_crit_edge:               ; preds = %for.inc46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body27.i

for.end50.i:                                      ; preds = %for.inc46.i.for.end50.i_crit_edge, %if.end34.i.for.end50.i_crit_edge, %for.end21.i.for.end50.i_crit_edge
  %addr.0.lcssa.i = phi i64 [ %mul.i562, %for.end21.i.for.end50.i_crit_edge ], [ %add49.i, %for.inc46.i.for.end50.i_crit_edge ], [ %addr.0147.i, %if.end34.i.for.end50.i_crit_edge ]
  %err.1.i = phi i32 [ 0, %for.end21.i.for.end50.i_crit_edge ], [ 0, %for.inc46.i.for.end50.i_crit_edge ], [ %call35.i, %if.end34.i.for.end50.i_crit_edge ]
  %88 = load i32, ptr @pgsize, align 4
  %conv51.i = sext i32 %88 to i64
  %.neg.i = mul nsw i64 %conv51.i, -2
  %sub54.i = add i64 %.neg.i, %addrn.0.lcssa.i
  call void @__sanitizer_cov_trace_cmp8(i64 %addr.0.lcssa.i, i64 %sub54.i)
  %cmp55.not.i = icmp sgt i64 %addr.0.lcssa.i, %sub54.i
  br i1 %cmp55.not.i, label %for.end50.i.verify_eraseblock.exit_crit_edge, label %land.lhs.true.i

for.end50.i.verify_eraseblock.exit_crit_edge:     ; preds = %for.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit

land.lhs.true.i:                                  ; preds = %for.end50.i
  %89 = load ptr, ptr @bbt, align 4
  %add57.i = add nuw i32 %i.1622, 1
  %arrayidx58.i = getelementptr i8, ptr %89, i32 %add57.i
  %90 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx58.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool59.not.i = icmp eq i8 %91, 0
  br i1 %tobool59.not.i, label %if.then60.i, label %land.lhs.true.i.verify_eraseblock.exit_crit_edge

land.lhs.true.i.verify_eraseblock.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit

if.then60.i:                                      ; preds = %land.lhs.true.i
  %old_state.sroa.0.0.copyload.i = load i32, ptr @rnd_state, align 4
  %old_state.sroa.5.0.copyload.i = load i32, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 1), align 4
  %old_state.sroa.6.0.copyload.i = load i32, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 2), align 4
  %old_state.sroa.7.0.copyload.i = load i32, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 3), align 4
  %92 = load ptr, ptr @mtd, align 4
  %93 = load i32, ptr @bufsize, align 4
  %94 = load ptr, ptr @twopages, align 4
  %call61.i = tail call i32 @mtdtest_read(ptr noundef %92, i64 noundef %addr0.0.lcssa156.i, i32 noundef %93, ptr noundef %94) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %if.then60.i.out_crit_edge

if.then60.i.out_crit_edge:                        ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end64.i:                                       ; preds = %if.then60.i
  %95 = load ptr, ptr @mtd, align 4
  %96 = load i32, ptr @bufsize, align 4
  %conv65.i = sext i32 %96 to i64
  %sub66.i = sub i64 %addrn.0.lcssa.i, %conv65.i
  %97 = load ptr, ptr @twopages, align 4
  %call67.i = tail call i32 @mtdtest_read(ptr noundef %95, i64 noundef %sub66.i, i32 noundef %96, ptr noundef %97) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.end70.i, label %if.end64.i.out_crit_edge

if.end64.i.out_crit_edge:                         ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end70.i:                                       ; preds = %if.end64.i
  %98 = load ptr, ptr @twopages, align 4
  %99 = load i32, ptr @bufsize, align 4
  %100 = call ptr @memset(ptr %98, i32 0, i32 %99)
  %101 = load ptr, ptr @mtd, align 4
  %call71.i = tail call i32 @mtdtest_read(ptr noundef %101, i64 noundef %addr.0.lcssa.i, i32 noundef %99, ptr noundef %98) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.end74.i, label %if.end70.i.out_crit_edge

if.end70.i.out_crit_edge:                         ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end74.i:                                       ; preds = %if.end70.i
  %102 = load ptr, ptr @boundary, align 4
  %103 = load ptr, ptr @writebuf, align 4
  %104 = load ptr, ptr @mtd, align 4
  %erasesize75.i = getelementptr inbounds %struct.mtd_info, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %erasesize75.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %erasesize75.i, align 8
  %add.ptr76.i = getelementptr i8, ptr %103, i32 %106
  %107 = load i32, ptr @pgsize, align 4
  %idx.neg.i = sub i32 0, %107
  %add.ptr77.i = getelementptr i8, ptr %add.ptr76.i, i32 %idx.neg.i
  %108 = call ptr @memcpy(ptr %102, ptr %add.ptr77.i, i32 %107)
  %add.ptr78.i = getelementptr i8, ptr %102, i32 %107
  tail call void @prandom_bytes_state(ptr noundef nonnull @rnd_state, ptr noundef %add.ptr78.i, i32 noundef %107) #10
  %109 = load ptr, ptr @twopages, align 4
  %110 = load ptr, ptr @boundary, align 4
  %111 = load i32, ptr @bufsize, align 4
  %bcmp.i = tail call i32 @bcmp(ptr %109, ptr %110, i32 %111) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool80.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool80.not.i, label %if.end74.i.verify_eraseblock.exit.thread601_crit_edge, label %do.end84.i

if.end74.i.verify_eraseblock.exit.thread601_crit_edge: ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit.thread601

do.end84.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i64 noundef %addr.0.lcssa.i) #13
  %112 = load i32, ptr @errcnt, align 4
  %add87.i = add i32 %112, 1
  store i32 %add87.i, ptr @errcnt, align 4
  br label %verify_eraseblock.exit.thread601

verify_eraseblock.exit.thread601:                 ; preds = %do.end84.i, %if.end74.i.verify_eraseblock.exit.thread601_crit_edge
  store i32 %old_state.sroa.0.0.copyload.i, ptr @rnd_state, align 4
  store i32 %old_state.sroa.5.0.copyload.i, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 1), align 4
  store i32 %old_state.sroa.6.0.copyload.i, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 2), align 4
  store i32 %old_state.sroa.7.0.copyload.i, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 3), align 4
  br label %if.end321

verify_eraseblock.exit:                           ; preds = %land.lhs.true.i.verify_eraseblock.exit_crit_edge, %for.end50.i.verify_eraseblock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool319.not = icmp eq i32 %err.1.i, 0
  br i1 %tobool319.not, label %verify_eraseblock.exit.if.end321_crit_edge, label %verify_eraseblock.exit.out_crit_edge

verify_eraseblock.exit.out_crit_edge:             ; preds = %verify_eraseblock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

verify_eraseblock.exit.if.end321_crit_edge:       ; preds = %verify_eraseblock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end321

if.end321:                                        ; preds = %verify_eraseblock.exit.if.end321_crit_edge, %verify_eraseblock.exit.thread601
  %rem322 = and i32 %i.1622, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem322)
  %cmp323 = icmp eq i32 %rem322, 0
  br i1 %cmp323, label %do.end328, label %if.end321.if.end331_crit_edge

if.end321.if.end331_crit_edge:                    ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end331

do.end328:                                        ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #12
  %call330 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %i.1622) #13
  br label %if.end331

if.end331:                                        ; preds = %do.end328, %if.end321.if.end331_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.59, i32 noundef 7, i32 noundef 0) #10
  %call.i.i568 = tail call i32 @__cond_resched() #10
  %113 = tail call i32 @llvm.read_register.i32(metadata !236) #10
  %and.i.i569 = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i569 to ptr
  %task.i570 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %task.i570 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task.i570, align 8
  %stack.i.i.i571 = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %stack.i.i.i571 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %stack.i.i.i571, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %118, align 4
  %121 = and i32 %120, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i.i572 = icmp eq i32 %121, 0
  br i1 %tobool.not.i.i572, label %signal_pending.exit.i575, label %if.end331.mtdtest_relax.exit579_crit_edge, !prof !246

if.end331.mtdtest_relax.exit579_crit_edge:        ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit579

signal_pending.exit.i575:                         ; preds = %if.end331
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %118, align 4
  %and1.i.i.i.i.i.i573 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i573)
  %tobool.not.i574 = icmp eq i32 %and1.i.i.i.i.i.i573, 0
  br i1 %tobool.not.i574, label %signal_pending.exit.i575.for.inc336_crit_edge, label %signal_pending.exit.i575.mtdtest_relax.exit579_crit_edge

signal_pending.exit.i575.mtdtest_relax.exit579_crit_edge: ; preds = %signal_pending.exit.i575
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit579

signal_pending.exit.i575.for.inc336_crit_edge:    ; preds = %signal_pending.exit.i575
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc336

mtdtest_relax.exit579:                            ; preds = %signal_pending.exit.i575.mtdtest_relax.exit579_crit_edge, %if.end331.mtdtest_relax.exit579_crit_edge
  %call4.i576 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #13
  br label %out

for.inc336:                                       ; preds = %signal_pending.exit.i575.for.inc336_crit_edge, %for.body313.for.inc336_crit_edge
  %inc337 = add nuw i32 %i.1622, 1
  %124 = load i32, ptr @ebcnt, align 4
  %cmp311 = icmp ult i32 %inc337, %124
  br i1 %cmp311, label %for.inc336.for.body313_crit_edge, label %for.inc336.do.end341_crit_edge

for.inc336.do.end341_crit_edge:                   ; preds = %for.inc336
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end341

for.inc336.for.body313_crit_edge:                 ; preds = %for.inc336
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body313

do.end341:                                        ; preds = %for.inc336.do.end341_crit_edge, %do.end302.do.end341_crit_edge
  %i.1.lcssa = phi i32 [ 0, %do.end302.do.end341_crit_edge ], [ %inc337, %for.inc336.do.end341_crit_edge ]
  %call343 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %i.1.lcssa) #13
  %call344 = tail call fastcc i32 @crosstest()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call344)
  %tobool345.not = icmp eq i32 %call344, 0
  br i1 %tobool345.not, label %if.end347, label %do.end341.out_crit_edge

do.end341.out_crit_edge:                          ; preds = %do.end341
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end347:                                        ; preds = %do.end341
  %125 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %125)
  %cmp348 = icmp sgt i32 %125, 1
  br i1 %cmp348, label %if.then350, label %do.end358

if.then350:                                       ; preds = %if.end347
  %call351 = tail call fastcc i32 @erasecrosstest()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call351)
  %tobool352.not = icmp eq i32 %call351, 0
  br i1 %tobool352.not, label %if.then350.if.end361_crit_edge, label %if.then350.out_crit_edge

if.then350.out_crit_edge:                         ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then350.if.end361_crit_edge:                   ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end361

do.end358:                                        ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #12
  %call360 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #13
  br label %if.end361

if.end361:                                        ; preds = %do.end358, %if.then350.if.end361_crit_edge
  %call362 = tail call fastcc i32 @erasetest()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call362)
  %tobool363.not = icmp eq i32 %call362, 0
  br i1 %tobool363.not, label %do.end368, label %if.end361.out_crit_edge

if.end361.out_crit_edge:                          ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end368:                                        ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #12
  %126 = load i32, ptr @errcnt, align 4
  %call370 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %126) #13
  br label %out

out:                                              ; preds = %do.end368, %if.end361.out_crit_edge, %if.then350.out_crit_edge, %do.end341.out_crit_edge, %mtdtest_relax.exit579, %verify_eraseblock.exit.out_crit_edge, %if.end70.i.out_crit_edge, %if.end64.i.out_crit_edge, %if.then60.i.out_crit_edge, %if.end.i565.out_crit_edge, %for.body27.i.out_crit_edge, %mtdtest_relax.exit, %if.end281.out_crit_edge, %do.end260.out_crit_edge, %if.end253.out_crit_edge, %if.end8.i.i.out_crit_edge, %if.end8.i547.out_crit_edge, %if.end8.i518.out_crit_edge, %if.end223.out_crit_edge, %do.end36
  %err.0 = phi i32 [ %call254, %if.end253.out_crit_edge ], [ %call263, %do.end260.out_crit_edge ], [ -4, %mtdtest_relax.exit ], [ -4, %mtdtest_relax.exit579 ], [ %call344, %do.end341.out_crit_edge ], [ %call351, %if.then350.out_crit_edge ], [ %call362, %if.end361.out_crit_edge ], [ 0, %do.end368 ], [ -12, %if.end8.i.i.out_crit_edge ], [ -12, %if.end8.i547.out_crit_edge ], [ -12, %if.end8.i518.out_crit_edge ], [ -12, %if.end223.out_crit_edge ], [ 0, %do.end36 ], [ %call31.i, %if.end.i565.out_crit_edge ], [ %call.i, %for.body27.i.out_crit_edge ], [ %call71.i, %if.end70.i.out_crit_edge ], [ %call67.i, %if.end64.i.out_crit_edge ], [ %call61.i, %if.then60.i.out_crit_edge ], [ %err.1.i, %verify_eraseblock.exit.out_crit_edge ], [ %call4.i, %if.end281.out_crit_edge ]
  %127 = load ptr, ptr @bbt, align 4
  tail call void @kfree(ptr noundef %127) #10
  %128 = load ptr, ptr @boundary, align 4
  tail call void @kfree(ptr noundef %128) #10
  %129 = load ptr, ptr @twopages, align 4
  tail call void @kfree(ptr noundef %129) #10
  %130 = load ptr, ptr @writebuf, align 4
  tail call void @kfree(ptr noundef %130) #10
  %131 = load ptr, ptr @mtd, align 4
  tail call void @put_mtd_device(ptr noundef %131) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool371.not = icmp eq i32 %err.0, 0
  br i1 %tobool371.not, label %out.cleanup_crit_edge, label %do.end375

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end375:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %call377 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %err.0) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end375, %out.cleanup_crit_edge, %if.then24, %do.end9
  %.str.4.sink = phi ptr [ @.str.16, %if.then24 ], [ @.str.10, %do.end9 ], [ @.str.4, %out.cleanup_crit_edge ], [ @.str.4, %do.end375 ]
  %retval.0 = phi i32 [ %2, %if.then24 ], [ -22, %do.end9 ], [ %err.0, %out.cleanup_crit_edge ], [ %err.0, %do.end375 ]
  %call383 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink) #13
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_scan_for_bad_eraseblocks(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_erase_good_eraseblocks(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @prandom_seed_state() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1025, ptr @rnd_state, align 4
  store i32 1025, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 1), align 4
  store i32 1025, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 2), align 4
  store i32 1025, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 3), align 4
  %0 = tail call i32 @llvm.read_register.i32(metadata !236) #10
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @net_rand_noise to i32)
  %6 = inttoptr i32 %add.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %xor.i = xor i32 %8, ptrtoint (ptr @rnd_state to i32)
  %add8.i = add i32 %xor.i, 1025
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add8.i, i32 %add8.i, i32 16) #10
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i.i, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crosstest() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #13
  %0 = load i32, ptr @pgsize, align 4
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 4) #10
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !248

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %4 = load i32, ptr @pgsize, align 4
  %add.ptr = getelementptr i8, ptr %call8.i.i, i32 %4
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %4
  %add.ptr3 = getelementptr i8, ptr %add.ptr2, i32 %4
  %5 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp149 = icmp sgt i32 %5, 0
  br i1 %cmp149, label %land.rhs.lr.ph, label %for.end.thread

for.end.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = load ptr, ptr @mtd, align 4
  %size162 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %size162 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size162, align 8
  br label %for.end21

land.rhs.lr.ph:                                   ; preds = %if.end
  %9 = load ptr, ptr @bbt, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0151 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.body.land.rhs_crit_edge ]
  %addr0.0150 = phi i64 [ 0, %land.rhs.lr.ph ], [ %add, %for.body.land.rhs_crit_edge ]
  %arrayidx = getelementptr i8, ptr %9, i32 %i.0151
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %12 = load ptr, ptr @mtd, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %erasesize, align 8
  %conv5 = zext i32 %14 to i64
  %add = add i64 %addr0.0150, %conv5
  %inc = add nuw nsw i32 %i.0151, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %addr0.0.lcssa = phi i64 [ %addr0.0150, %land.rhs.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %15 = load ptr, ptr @mtd, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size, align 8
  br i1 %cmp149, label %land.rhs9.lr.ph, label %for.end.for.end21_crit_edge

for.end.for.end21_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

land.rhs9.lr.ph:                                  ; preds = %for.end
  %18 = load ptr, ptr @bbt, align 4
  %erasesize16 = getelementptr inbounds %struct.mtd_info, ptr %15, i32 0, i32 3
  br label %land.rhs9

land.rhs9:                                        ; preds = %for.body15.land.rhs9_crit_edge, %land.rhs9.lr.ph
  %i.1157 = phi i32 [ 0, %land.rhs9.lr.ph ], [ %inc20, %for.body15.land.rhs9_crit_edge ]
  %addrn.0156 = phi i64 [ %17, %land.rhs9.lr.ph ], [ %sub18, %for.body15.land.rhs9_crit_edge ]
  %19 = xor i32 %i.1157, -1
  %sub10 = add i32 %5, %19
  %arrayidx11 = getelementptr i8, ptr %18, i32 %sub10
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool13.not = icmp eq i8 %21, 0
  br i1 %tobool13.not, label %land.rhs9.for.end21_crit_edge, label %for.body15

land.rhs9.for.end21_crit_edge:                    ; preds = %land.rhs9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

for.body15:                                       ; preds = %land.rhs9
  %22 = ptrtoint ptr %erasesize16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %erasesize16, align 8
  %conv17 = zext i32 %23 to i64
  %sub18 = sub i64 %addrn.0156, %conv17
  %inc20 = add nuw nsw i32 %i.1157, 1
  %exitcond160.not = icmp eq i32 %inc20, %5
  br i1 %exitcond160.not, label %for.body15.for.end21_crit_edge, label %for.body15.land.rhs9_crit_edge

for.body15.land.rhs9_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs9

for.body15.for.end21_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

for.end21:                                        ; preds = %for.body15.for.end21_crit_edge, %land.rhs9.for.end21_crit_edge, %for.end.for.end21_crit_edge, %for.end.thread
  %24 = phi ptr [ %15, %for.end.for.end21_crit_edge ], [ %6, %for.end.thread ], [ %15, %for.body15.for.end21_crit_edge ], [ %15, %land.rhs9.for.end21_crit_edge ]
  %addr0.0.lcssa163 = phi i64 [ %addr0.0.lcssa, %for.end.for.end21_crit_edge ], [ 0, %for.end.thread ], [ %addr0.0.lcssa, %for.body15.for.end21_crit_edge ], [ %addr0.0.lcssa, %land.rhs9.for.end21_crit_edge ]
  %addrn.0.lcssa = phi i64 [ %17, %for.end.for.end21_crit_edge ], [ %8, %for.end.thread ], [ %addrn.0156, %land.rhs9.for.end21_crit_edge ], [ %sub18, %for.body15.for.end21_crit_edge ]
  %conv22 = sext i32 %4 to i64
  %.neg = mul nsw i64 %conv22, -2
  %sub25 = add i64 %addrn.0.lcssa, %.neg
  %call26 = tail call i32 @mtdtest_read(ptr noundef %24, i64 noundef %sub25, i32 noundef %4, ptr noundef nonnull %call8.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %for.end21.cleanup.sink.split_crit_edge

for.end21.cleanup.sink.split_crit_edge:           ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end29:                                         ; preds = %for.end21
  %25 = load i32, ptr @pgsize, align 4
  %conv30 = sext i32 %25 to i64
  %.neg142 = mul nsw i64 %conv30, -2
  %sub33 = sub i64 %addrn.0.lcssa, %conv30
  %sub35 = add i64 %sub33, %.neg142
  %26 = load ptr, ptr @mtd, align 4
  %call36 = tail call i32 @mtdtest_read(ptr noundef %26, i64 noundef %sub35, i32 noundef %25, ptr noundef nonnull %call8.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end29.cleanup.sink.split_crit_edge

if.end29.cleanup.sink.split_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end39:                                         ; preds = %if.end29
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i64 noundef %addr0.0.lcssa163) #13
  %27 = load ptr, ptr @mtd, align 4
  %28 = load i32, ptr @pgsize, align 4
  %call45 = tail call i32 @mtdtest_read(ptr noundef %27, i64 noundef %addr0.0.lcssa163, i32 noundef %28, ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end39.cleanup.sink.split_crit_edge

if.end39.cleanup.sink.split_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end48:                                         ; preds = %if.end39
  %29 = load i32, ptr @pgsize, align 4
  %conv49 = sext i32 %29 to i64
  %sub50 = sub i64 %addrn.0.lcssa, %conv49
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i64 noundef %sub50) #13
  %30 = load ptr, ptr @mtd, align 4
  %31 = load i32, ptr @pgsize, align 4
  %call56 = tail call i32 @mtdtest_read(ptr noundef %30, i64 noundef %sub50, i32 noundef %31, ptr noundef %add.ptr2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end48.cleanup.sink.split_crit_edge

if.end48.cleanup.sink.split_crit_edge:            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end59:                                         ; preds = %if.end48
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i64 noundef %addr0.0.lcssa163) #13
  %32 = load ptr, ptr @mtd, align 4
  %33 = load i32, ptr @pgsize, align 4
  %call65 = tail call i32 @mtdtest_read(ptr noundef %32, i64 noundef %addr0.0.lcssa163, i32 noundef %33, ptr noundef %add.ptr3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %do.end71, label %if.end59.cleanup.sink.split_crit_edge

if.end59.cleanup.sink.split_crit_edge:            ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.end71:                                         ; preds = %if.end59
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i64 noundef %addr0.0.lcssa163) #13
  %34 = load i32, ptr @pgsize, align 4
  %bcmp = tail call i32 @bcmp(ptr %add.ptr, ptr %add.ptr3, i32 %34) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool75.not = icmp eq i32 %bcmp, 0
  br i1 %tobool75.not, label %do.end87, label %do.end79

do.end79:                                         ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #12
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #13
  %35 = load i32, ptr @errcnt, align 4
  %add82 = add i32 %35, 1
  store i32 %add82, ptr @errcnt, align 4
  br label %cleanup.sink.split

do.end87:                                         ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #12
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end87, %do.end79, %if.end59.cleanup.sink.split_crit_edge, %if.end48.cleanup.sink.split_crit_edge, %if.end39.cleanup.sink.split_crit_edge, %if.end29.cleanup.sink.split_crit_edge, %for.end21.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call26, %for.end21.cleanup.sink.split_crit_edge ], [ %call36, %if.end29.cleanup.sink.split_crit_edge ], [ %call45, %if.end39.cleanup.sink.split_crit_edge ], [ %call56, %if.end48.cleanup.sink.split_crit_edge ], [ %call65, %if.end59.cleanup.sink.split_crit_edge ], [ 0, %do.end87 ], [ 0, %do.end79 ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @erasecrosstest() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @twopages, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #13
  %1 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp157 = icmp sgt i32 %1, 0
  br i1 %cmp157, label %land.rhs.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %2 = load ptr, ptr @bbt, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0160 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.body.land.rhs_crit_edge ]
  %addr0.0158 = phi i64 [ 0, %land.rhs.lr.ph ], [ %add, %for.body.land.rhs_crit_edge ]
  %arrayidx = getelementptr i8, ptr %2, i32 %i.0160
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %5 = load ptr, ptr @mtd, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %erasesize, align 8
  %conv1 = zext i32 %7 to i64
  %add = add i64 %addr0.0158, %conv1
  %inc = add nuw nsw i32 %i.0160, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  %addr0.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ], [ %addr0.0158, %land.rhs.for.end_crit_edge ]
  %ebnum.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %1, %for.body.for.end_crit_edge ], [ %i.0160, %land.rhs.for.end_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %land.rhs4.while.cond_crit_edge, %for.end
  %ebnum2.0.in = phi i32 [ %1, %for.end ], [ %ebnum2.0, %land.rhs4.while.cond_crit_edge ]
  %ebnum2.0 = add i32 %ebnum2.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ebnum2.0)
  %tobool3.not = icmp eq i32 %ebnum2.0, 0
  br i1 %tobool3.not, label %while.cond.do.end12_crit_edge, label %land.rhs4

while.cond.do.end12_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.rhs4:                                        ; preds = %while.cond
  %8 = load ptr, ptr @bbt, align 4
  %arrayidx5 = getelementptr i8, ptr %8, i32 %ebnum2.0
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5, align 1
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %land.rhs4.do.end12_crit_edge, label %land.rhs4.while.cond_crit_edge

land.rhs4.while.cond_crit_edge:                   ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

land.rhs4.do.end12_crit_edge:                     ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

do.end12:                                         ; preds = %land.rhs4.do.end12_crit_edge, %while.cond.do.end12_crit_edge
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %ebnum.0.lcssa) #13
  %11 = load ptr, ptr @mtd, align 4
  %call15 = tail call i32 @mtdtest_erase_eraseblock(ptr noundef %11, i32 noundef %ebnum.0.lcssa) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.end19, label %do.end12.cleanup_crit_edge

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end19:                                         ; preds = %do.end12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %ebnum.0.lcssa) #13
  %12 = load ptr, ptr @writebuf, align 4
  %13 = load i32, ptr @pgsize, align 4
  tail call void @prandom_bytes_state(ptr noundef nonnull @rnd_state, ptr noundef %12, i32 noundef %13) #10
  %14 = load ptr, ptr @writebuf, align 4
  %15 = call ptr @memcpy(ptr %14, ptr @.str.92, i32 28)
  %16 = load ptr, ptr @mtd, align 4
  %17 = load i32, ptr @pgsize, align 4
  %call23 = tail call i32 @mtdtest_write(ptr noundef %16, i64 noundef %addr0.0.lcssa, i32 noundef %17, ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end29, label %do.end19.cleanup_crit_edge

do.end19.cleanup_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end29:                                         ; preds = %do.end19
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %ebnum.0.lcssa) #13
  %18 = load i32, ptr @pgsize, align 4
  %19 = call ptr @memset(ptr %0, i32 0, i32 %18)
  %20 = load ptr, ptr @mtd, align 4
  %call32 = tail call i32 @mtdtest_read(ptr noundef %20, i64 noundef %addr0.0.lcssa, i32 noundef %18, ptr noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.end38, label %do.end29.cleanup_crit_edge

do.end29.cleanup_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end38:                                         ; preds = %do.end29
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %ebnum.0.lcssa) #13
  %21 = load ptr, ptr @writebuf, align 4
  %22 = load i32, ptr @pgsize, align 4
  %bcmp = tail call i32 @bcmp(ptr %21, ptr %0, i32 %22) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool42.not = icmp eq i32 %bcmp, 0
  br i1 %tobool42.not, label %do.end53, label %do.end46

do.end46:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #13
  %23 = load i32, ptr @errcnt, align 4
  %add49 = add i32 %23, 1
  store i32 %add49, ptr @errcnt, align 4
  br label %cleanup

do.end53:                                         ; preds = %do.end38
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %ebnum.0.lcssa) #13
  %24 = load ptr, ptr @mtd, align 4
  %call56 = tail call i32 @mtdtest_erase_eraseblock(ptr noundef %24, i32 noundef %ebnum.0.lcssa) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %do.end62, label %do.end53.cleanup_crit_edge

do.end53.cleanup_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end62:                                         ; preds = %do.end53
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %ebnum.0.lcssa) #13
  %25 = load ptr, ptr @writebuf, align 4
  %26 = load i32, ptr @pgsize, align 4
  tail call void @prandom_bytes_state(ptr noundef nonnull @rnd_state, ptr noundef %25, i32 noundef %26) #10
  %27 = load ptr, ptr @writebuf, align 4
  %28 = call ptr @memcpy(ptr %27, ptr @.str.92, i32 28)
  %29 = load ptr, ptr @mtd, align 4
  %30 = load i32, ptr @pgsize, align 4
  %call66 = tail call i32 @mtdtest_write(ptr noundef %29, i64 noundef %addr0.0.lcssa, i32 noundef %30, ptr noundef %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %do.end72, label %do.end62.cleanup_crit_edge

do.end62.cleanup_crit_edge:                       ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end72:                                         ; preds = %do.end62
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %ebnum2.0) #13
  %31 = load ptr, ptr @mtd, align 4
  %call75 = tail call i32 @mtdtest_erase_eraseblock(ptr noundef %31, i32 noundef %ebnum2.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %do.end81, label %do.end72.cleanup_crit_edge

do.end72.cleanup_crit_edge:                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end81:                                         ; preds = %do.end72
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %ebnum.0.lcssa) #13
  %32 = load i32, ptr @pgsize, align 4
  %33 = call ptr @memset(ptr %0, i32 0, i32 %32)
  %34 = load ptr, ptr @mtd, align 4
  %call84 = tail call i32 @mtdtest_read(ptr noundef %34, i64 noundef %addr0.0.lcssa, i32 noundef %32, ptr noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %do.end90, label %do.end81.cleanup_crit_edge

do.end81.cleanup_crit_edge:                       ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end90:                                         ; preds = %do.end81
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %ebnum.0.lcssa) #13
  %35 = load ptr, ptr @writebuf, align 4
  %36 = load i32, ptr @pgsize, align 4
  %bcmp156 = tail call i32 @bcmp(ptr %35, ptr %0, i32 %36) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp156)
  %tobool94.not = icmp eq i32 %bcmp156, 0
  br i1 %tobool94.not, label %do.end107, label %do.end98

do.end98:                                         ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #12
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #13
  %37 = load i32, ptr @errcnt, align 4
  %add101 = add i32 %37, 1
  store i32 %add101, ptr @errcnt, align 4
  br label %cleanup

do.end107:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #12
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end107, %do.end98, %do.end81.cleanup_crit_edge, %do.end72.cleanup_crit_edge, %do.end62.cleanup_crit_edge, %do.end53.cleanup_crit_edge, %do.end46, %do.end29.cleanup_crit_edge, %do.end19.cleanup_crit_edge, %do.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end46 ], [ -1, %do.end98 ], [ 0, %do.end107 ], [ %call15, %do.end12.cleanup_crit_edge ], [ %call23, %do.end19.cleanup_crit_edge ], [ %call32, %do.end29.cleanup_crit_edge ], [ %call56, %do.end53.cleanup_crit_edge ], [ %call66, %do.end62.cleanup_crit_edge ], [ %call75, %do.end72.cleanup_crit_edge ], [ %call84, %do.end81.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @erasetest() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #13
  %0 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp99 = icmp sgt i32 %0, 0
  br i1 %cmp99, label %land.rhs.lr.ph, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

land.rhs.lr.ph:                                   ; preds = %entry
  %1 = load ptr, ptr @bbt, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0102 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.body.land.rhs_crit_edge ]
  %addr0.0100 = phi i64 [ 0, %land.rhs.lr.ph ], [ %add, %for.body.land.rhs_crit_edge ]
  %arrayidx = getelementptr i8, ptr %1, i32 %i.0102
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.rhs.do.end5_crit_edge, label %for.body

land.rhs.do.end5_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

for.body:                                         ; preds = %land.rhs
  %4 = load ptr, ptr @mtd, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %erasesize, align 8
  %conv1 = zext i32 %6 to i64
  %add = add i64 %addr0.0100, %conv1
  %inc = add nuw nsw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.body.do.end5_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.body.do.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end5:                                          ; preds = %for.body.do.end5_crit_edge, %land.rhs.do.end5_crit_edge, %entry.do.end5_crit_edge
  %addr0.0.lcssa = phi i64 [ 0, %entry.do.end5_crit_edge ], [ %addr0.0100, %land.rhs.do.end5_crit_edge ], [ %add, %for.body.do.end5_crit_edge ]
  %ebnum.0.lcssa = phi i32 [ 0, %entry.do.end5_crit_edge ], [ %i.0102, %land.rhs.do.end5_crit_edge ], [ %0, %for.body.do.end5_crit_edge ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %ebnum.0.lcssa) #13
  %7 = load ptr, ptr @mtd, align 4
  %call8 = tail call i32 @mtdtest_erase_eraseblock(ptr noundef %7, i32 noundef %ebnum.0.lcssa) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end12, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end12:                                         ; preds = %do.end5
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %ebnum.0.lcssa) #13
  %8 = load ptr, ptr @writebuf, align 4
  %9 = load i32, ptr @pgsize, align 4
  tail call void @prandom_bytes_state(ptr noundef nonnull @rnd_state, ptr noundef %8, i32 noundef %9) #10
  %10 = load ptr, ptr @mtd, align 4
  %11 = load i32, ptr @pgsize, align 4
  %12 = load ptr, ptr @writebuf, align 4
  %call15 = tail call i32 @mtdtest_write(ptr noundef %10, i64 noundef %addr0.0.lcssa, i32 noundef %11, ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.end21, label %do.end12.cleanup_crit_edge

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end21:                                         ; preds = %do.end12
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %ebnum.0.lcssa) #13
  %13 = load ptr, ptr @mtd, align 4
  %call24 = tail call i32 @mtdtest_erase_eraseblock(ptr noundef %13, i32 noundef %ebnum.0.lcssa) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end30, label %do.end21.cleanup_crit_edge

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end30:                                         ; preds = %do.end21
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %ebnum.0.lcssa) #13
  %14 = load ptr, ptr @mtd, align 4
  %15 = load i32, ptr @pgsize, align 4
  %16 = load ptr, ptr @twopages, align 4
  %call33 = tail call i32 @mtdtest_read(ptr noundef %14, i64 noundef %addr0.0.lcssa, i32 noundef %15, ptr noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.end39, label %do.end30.cleanup_crit_edge

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end39:                                         ; preds = %do.end30
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %ebnum.0.lcssa) #13
  %17 = load i32, ptr @pgsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp43106 = icmp sgt i32 %17, 0
  br i1 %cmp43106, label %for.body45.lr.ph, label %do.end39.land.lhs.true.critedge_crit_edge

do.end39.land.lhs.true.critedge_crit_edge:        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.critedge

for.body45.lr.ph:                                 ; preds = %do.end39
  %18 = load ptr, ptr @twopages, align 4
  br label %for.body45

for.body45:                                       ; preds = %for.inc58.for.body45_crit_edge, %for.body45.lr.ph
  %i.1107 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc59, %for.inc58.for.body45_crit_edge ]
  %arrayidx46 = getelementptr i8, ptr %18, i32 %i.1107
  %19 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp48.not = icmp eq i8 %20, -1
  br i1 %cmp48.not, label %for.inc58, label %do.end53

do.end53:                                         ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #12
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %i.1107) #13
  %21 = load i32, ptr @errcnt, align 4
  %add56 = add i32 %21, 1
  store i32 %add56, ptr @errcnt, align 4
  br label %cleanup

for.inc58:                                        ; preds = %for.body45
  %inc59 = add nuw nsw i32 %i.1107, 1
  %exitcond109.not = icmp eq i32 %inc59, %17
  br i1 %exitcond109.not, label %for.inc58.land.lhs.true.critedge_crit_edge, label %for.inc58.for.body45_crit_edge

for.inc58.for.body45_crit_edge:                   ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45

for.inc58.land.lhs.true.critedge_crit_edge:       ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.critedge

land.lhs.true.critedge:                           ; preds = %for.inc58.land.lhs.true.critedge_crit_edge, %do.end39.land.lhs.true.critedge_crit_edge
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #13
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true.critedge, %do.end53, %do.end30.cleanup_crit_edge, %do.end21.cleanup_crit_edge, %do.end12.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end5.cleanup_crit_edge ], [ %call15, %do.end12.cleanup_crit_edge ], [ %call24, %do.end21.cleanup_crit_edge ], [ %call33, %do.end30.cleanup_crit_edge ], [ 0, %do.end53 ], [ 0, %land.lhs.true.critedge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mtd_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_erase_eraseblock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !174, !175, !176, !178, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !205, !207, !208, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234}
!llvm.named.register.sp = !{!236}
!llvm.module.flags = !{!237, !238, !239, !240, !241, !242, !243, !244}
!llvm.ident = !{!245}

!0 = !{ptr @__param_dev, !1, !"__param_dev", i1 false, i1 false}
!1 = !{!"../drivers/mtd/tests/pagetest.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_devtype201, !1, !"__UNIQUE_ID_devtype201", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dev202, !4, !"__UNIQUE_ID_dev202", i1 false, i1 false}
!4 = !{!"../drivers/mtd/tests/pagetest.c", i32 26, i32 1}
!5 = !{ptr @__UNIQUE_ID_description203, !6, !"__UNIQUE_ID_description203", i1 false, i1 false}
!6 = !{!"../drivers/mtd/tests/pagetest.c", i32 459, i32 1}
!7 = !{ptr @__UNIQUE_ID_author204, !8, !"__UNIQUE_ID_author204", i1 false, i1 false}
!8 = !{!"../drivers/mtd/tests/pagetest.c", i32 460, i32 1}
!9 = !{ptr @__UNIQUE_ID_license205, !10, !"__UNIQUE_ID_license205", i1 false, i1 false}
!10 = !{!"../drivers/mtd/tests/pagetest.c", i32 461, i32 1}
!11 = !{ptr @___asan_gen_.135, !1, !"__param_str_dev", i1 false, i1 false}
!12 = !{ptr @dev, !13, !"dev", i1 false, i1 false}
!13 = !{!"../drivers/mtd/tests/pagetest.c", i32 24, i32 12}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/tests/pagetest.c", i32 325, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mtd_pagetest_init._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @mtd_pagetest_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/tests/pagetest.c", i32 326, i32 2}
!22 = !{ptr @mtd_pagetest_init._entry.3, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mtd_pagetest_init._entry_ptr.5, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/tests/pagetest.c", i32 329, i32 3}
!26 = !{ptr @mtd_pagetest_init._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mtd_pagetest_init._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/tests/pagetest.c", i32 330, i32 3}
!30 = !{ptr @mtd_pagetest_init._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtd_pagetest_init._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/tests/pagetest.c", i32 334, i32 2}
!34 = !{ptr @mtd_pagetest_init._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mtd_pagetest_init._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/tests/pagetest.c", i32 339, i32 3}
!38 = !{ptr @mtd_pagetest_init._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mtd_pagetest_init._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/tests/pagetest.c", i32 344, i32 3}
!42 = !{ptr @mtd_pagetest_init._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtd_pagetest_init._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/tests/pagetest.c", i32 354, i32 2}
!46 = !{ptr @mtd_pagetest_init._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mtd_pagetest_init._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/tests/pagetest.c", i32 380, i32 2}
!50 = !{ptr @mtd_pagetest_init._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mtd_pagetest_init._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/tests/pagetest.c", i32 384, i32 2}
!54 = !{ptr @mtd_pagetest_init._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mtd_pagetest_init._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/tests/pagetest.c", i32 388, i32 2}
!58 = !{ptr @mtd_pagetest_init._entry.30, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtd_pagetest_init._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/tests/pagetest.c", i32 396, i32 4}
!62 = !{ptr @mtd_pagetest_init._entry.33, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mtd_pagetest_init._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/tests/pagetest.c", i32 402, i32 2}
!66 = !{ptr @mtd_pagetest_init._entry.36, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mtd_pagetest_init._entry_ptr.38, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/tests/pagetest.c", i32 406, i32 2}
!70 = !{ptr @mtd_pagetest_init._entry.39, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mtd_pagetest_init._entry_ptr.41, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/tests/pagetest.c", i32 414, i32 4}
!74 = !{ptr @mtd_pagetest_init._entry.42, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mtd_pagetest_init._entry_ptr.44, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/tests/pagetest.c", i32 420, i32 2}
!78 = !{ptr @mtd_pagetest_init._entry.45, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mtd_pagetest_init._entry_ptr.47, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.49, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/tests/pagetest.c", i32 431, i32 3}
!82 = !{ptr @mtd_pagetest_init._entry.48, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @mtd_pagetest_init._entry_ptr.50, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.52, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/tests/pagetest.c", i32 438, i32 2}
!86 = !{ptr @mtd_pagetest_init._entry.51, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @mtd_pagetest_init._entry_ptr.53, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.55, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/tests/pagetest.c", i32 447, i32 3}
!90 = !{ptr @mtd_pagetest_init._entry.54, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @mtd_pagetest_init._entry_ptr.56, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @mtd_pagetest_init._entry.57, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/mtd/tests/pagetest.c", i32 448, i32 2}
!94 = !{ptr @mtd_pagetest_init._entry_ptr.58, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @mtd, !96, !"mtd", i1 false, i1 false}
!96 = !{!"../drivers/mtd/tests/pagetest.c", i32 28, i32 25}
!97 = !{ptr @ebcnt, !98, !"ebcnt", i1 false, i1 false}
!98 = !{!"../drivers/mtd/tests/pagetest.c", i32 36, i32 12}
!99 = !{ptr @pgcnt, !100, !"pgcnt", i1 false, i1 false}
!100 = !{!"../drivers/mtd/tests/pagetest.c", i32 37, i32 12}
!101 = !{ptr @pgsize, !102, !"pgsize", i1 false, i1 false}
!102 = !{!"../drivers/mtd/tests/pagetest.c", i32 34, i32 12}
!103 = !{ptr @bufsize, !104, !"bufsize", i1 false, i1 false}
!104 = !{!"../drivers/mtd/tests/pagetest.c", i32 35, i32 12}
!105 = !{ptr @writebuf, !106, !"writebuf", i1 false, i1 false}
!106 = !{!"../drivers/mtd/tests/pagetest.c", i32 30, i32 23}
!107 = !{ptr @twopages, !108, !"twopages", i1 false, i1 false}
!108 = !{!"../drivers/mtd/tests/pagetest.c", i32 29, i32 23}
!109 = !{ptr @boundary, !110, !"boundary", i1 false, i1 false}
!110 = !{!"../drivers/mtd/tests/pagetest.c", i32 31, i32 23}
!111 = !{ptr @bbt, !112, !"bbt", i1 false, i1 false}
!112 = !{!"../drivers/mtd/tests/pagetest.c", i32 32, i32 23}
!113 = !{ptr @rnd_state, !114, !"rnd_state", i1 false, i1 false}
!114 = !{!"../drivers/mtd/tests/pagetest.c", i32 39, i32 25}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mtd/tests/mtd_test.h", i32 7, i32 2}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mtd/tests/mtd_test.h", i32 9, i32 3}
!119 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @mtdtest_relax._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @mtdtest_relax._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mtd/tests/pagetest.c", i32 79, i32 4}
!124 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @verify_eraseblock._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @verify_eraseblock._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @verify_eraseblock._entry.64, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/mtd/tests/pagetest.c", i32 102, i32 4}
!129 = !{ptr @verify_eraseblock._entry_ptr.65, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mtd/tests/pagetest.c", i32 117, i32 2}
!132 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @crosstest._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @crosstest._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mtd/tests/pagetest.c", i32 151, i32 2}
!137 = !{ptr @crosstest._entry.68, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @crosstest._entry_ptr.70, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @crosstest._entry.71, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../drivers/mtd/tests/pagetest.c", i32 160, i32 2}
!141 = !{ptr @crosstest._entry_ptr.72, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @crosstest._entry.73, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/mtd/tests/pagetest.c", i32 169, i32 2}
!144 = !{ptr @crosstest._entry_ptr.74, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mtd/tests/pagetest.c", i32 177, i32 2}
!147 = !{ptr @crosstest._entry.75, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @crosstest._entry_ptr.77, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mtd/tests/pagetest.c", i32 180, i32 3}
!151 = !{ptr @crosstest._entry.78, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @crosstest._entry_ptr.80, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.82, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mtd/tests/pagetest.c", i32 183, i32 3}
!155 = !{ptr @crosstest._entry.81, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @crosstest._entry_ptr.83, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.84, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mtd/tests/pagetest.c", i32 194, i32 2}
!159 = !{ptr @.str.85, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @erasecrosstest._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @erasecrosstest._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.87, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mtd/tests/pagetest.c", i32 207, i32 2}
!164 = !{ptr @erasecrosstest._entry.86, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @erasecrosstest._entry_ptr.88, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.90, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/mtd/tests/pagetest.c", i32 212, i32 2}
!168 = !{ptr @erasecrosstest._entry.89, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @erasecrosstest._entry_ptr.91, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.92, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mtd/tests/pagetest.c", i32 214, i32 19}
!172 = !{ptr @.str.94, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mtd/tests/pagetest.c", i32 219, i32 2}
!174 = !{ptr @erasecrosstest._entry.93, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @erasecrosstest._entry_ptr.95, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.97, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/mtd/tests/pagetest.c", i32 225, i32 2}
!178 = !{ptr @erasecrosstest._entry.96, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @erasecrosstest._entry_ptr.98, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @erasecrosstest._entry.99, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../drivers/mtd/tests/pagetest.c", i32 227, i32 3}
!182 = !{ptr @erasecrosstest._entry_ptr.100, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @erasecrosstest._entry.101, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../drivers/mtd/tests/pagetest.c", i32 232, i32 2}
!185 = !{ptr @erasecrosstest._entry_ptr.102, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @erasecrosstest._entry.103, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/mtd/tests/pagetest.c", i32 237, i32 2}
!188 = !{ptr @erasecrosstest._entry_ptr.104, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @erasecrosstest._entry.105, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/mtd/tests/pagetest.c", i32 244, i32 2}
!191 = !{ptr @erasecrosstest._entry_ptr.106, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @erasecrosstest._entry.107, !193, !"_entry", i1 false, i1 false}
!193 = !{!"../drivers/mtd/tests/pagetest.c", i32 249, i32 2}
!194 = !{ptr @erasecrosstest._entry_ptr.108, !193, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @erasecrosstest._entry.109, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/mtd/tests/pagetest.c", i32 255, i32 2}
!197 = !{ptr @erasecrosstest._entry_ptr.110, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @erasecrosstest._entry.111, !199, !"_entry", i1 false, i1 false}
!199 = !{!"../drivers/mtd/tests/pagetest.c", i32 257, i32 3}
!200 = !{ptr @erasecrosstest._entry_ptr.112, !199, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.114, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/mtd/tests/pagetest.c", i32 263, i32 3}
!203 = !{ptr @erasecrosstest._entry.113, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @erasecrosstest._entry_ptr.115, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.116, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/mtd/tests/pagetest.c", i32 272, i32 2}
!207 = !{ptr @.str.117, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @erasetest._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @erasetest._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @erasetest._entry.118, !211, !"_entry", i1 false, i1 false}
!211 = !{!"../drivers/mtd/tests/pagetest.c", i32 281, i32 2}
!212 = !{ptr @erasetest._entry_ptr.119, !211, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @erasetest._entry.120, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/mtd/tests/pagetest.c", i32 286, i32 2}
!215 = !{ptr @erasetest._entry_ptr.121, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @erasetest._entry.122, !217, !"_entry", i1 false, i1 false}
!217 = !{!"../drivers/mtd/tests/pagetest.c", i32 292, i32 2}
!218 = !{ptr @erasetest._entry_ptr.123, !217, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @erasetest._entry.124, !220, !"_entry", i1 false, i1 false}
!220 = !{!"../drivers/mtd/tests/pagetest.c", i32 297, i32 2}
!221 = !{ptr @erasetest._entry_ptr.125, !220, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.127, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/mtd/tests/pagetest.c", i32 302, i32 2}
!224 = !{ptr @erasetest._entry.126, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @erasetest._entry_ptr.128, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.130, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/mtd/tests/pagetest.c", i32 306, i32 4}
!228 = !{ptr @erasetest._entry.129, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @erasetest._entry_ptr.131, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.133, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/mtd/tests/pagetest.c", i32 314, i32 3}
!232 = !{ptr @erasetest._entry.132, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @erasetest._entry_ptr.134, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @errcnt, !235, !"errcnt", i1 false, i1 false}
!235 = !{!"../drivers/mtd/tests/pagetest.c", i32 38, i32 12}
!236 = !{!"sp"}
!237 = !{i32 1, !"wchar_size", i32 2}
!238 = !{i32 1, !"min_enum_size", i32 4}
!239 = !{i32 8, !"branch-target-enforcement", i32 0}
!240 = !{i32 8, !"sign-return-address", i32 0}
!241 = !{i32 8, !"sign-return-address-all", i32 0}
!242 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!243 = !{i32 7, !"uwtable", i32 1}
!244 = !{i32 7, !"frame-pointer", i32 2}
!245 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!246 = !{!"branch_weights", i32 2000, i32 1}
!247 = !{i64 2147983088, i64 2147983368, i64 2147983702, i64 2147984036}
!248 = !{!"branch_weights", i32 1, i32 2000}
