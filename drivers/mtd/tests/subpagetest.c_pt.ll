; ModuleID = '/llk/IR_all_yes/drivers/mtd/tests/subpagetest.c_pt.bc'
source_filename = "../drivers/mtd/tests/subpagetest.c"
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
@__param_dev = internal constant %struct.kernel_param { ptr @___asan_gen_.141, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @dev } }, section "__param", align 4
@__UNIQUE_ID_devtype201 = internal constant [17 x i8] c"parmtype=dev:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dev202 = internal constant [34 x i8] c"parm=dev:MTD device number to use\00", section ".modinfo", align 1
@__UNIQUE_ID_description203 = internal constant [32 x i8] c"description=Subpage test module\00", section ".modinfo", align 1
@__UNIQUE_ID_author204 = internal constant [21 x i8] c"author=Adrian Hunter\00", section ".modinfo", align 1
@__UNIQUE_ID_license205 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@mtd_subpagetest_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtd_subpagetest_init\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mtd/tests/subpagetest.c\00", [32 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr = internal global ptr @mtd_subpagetest_init._entry, section ".printk_index", align 4
@mtd_subpagetest_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016=================================================\0A\00", [43 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.5 = internal global ptr @mtd_subpagetest_init._entry.3, section ".printk_index", align 4
@mtd_subpagetest_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016mtd_subpagetest: Please specify a valid mtd-device via module parameter\0A\00", [53 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.8 = internal global ptr @mtd_subpagetest_init._entry.6, section ".printk_index", align 4
@mtd_subpagetest_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\012mtd_subpagetest: CAREFUL: This test wipes all data on the specified MTD device!\0A\00", [45 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.11 = internal global ptr @mtd_subpagetest_init._entry.9, section ".printk_index", align 4
@mtd_subpagetest_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016mtd_subpagetest: MTD device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.14 = internal global ptr @mtd_subpagetest_init._entry.12, section ".printk_index", align 4
@mtd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mtd_subpagetest_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013mtd_subpagetest: error: cannot get MTD device\0A\00", [47 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.17 = internal global ptr @mtd_subpagetest_init._entry.15, section ".printk_index", align 4
@mtd_subpagetest_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016mtd_subpagetest: this test requires NAND flash\0A\00", [46 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.20 = internal global ptr @mtd_subpagetest_init._entry.18, section ".printk_index", align 4
@subpgsize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ebcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mtd_subpagetest_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [155 x i8], [37 x i8] } { [155 x i8] c"\016mtd_subpagetest: MTD device size %llu, eraseblock size %u, page size %u, subpage size %u, count of eraseblocks %u, pages per eraseblock %u, OOB size %u\0A\00", [37 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.23 = internal global ptr @mtd_subpagetest_init._entry.21, section ".printk_index", align 4
@bufsize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@writebuf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@readbuf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bbt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mtd_subpagetest_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016mtd_subpagetest: writing whole device\0A\00", [55 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.26 = internal global ptr @mtd_subpagetest_init._entry.24, section ".printk_index", align 4
@rnd_state = internal global { %struct.rnd_state, [16 x i8] } zeroinitializer, align 32
@mtd_subpagetest_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016mtd_subpagetest: written up to eraseblock %u\0A\00", [48 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.29 = internal global ptr @mtd_subpagetest_init._entry.27, section ".printk_index", align 4
@mtd_subpagetest_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016mtd_subpagetest: written %u eraseblocks\0A\00", [53 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.32 = internal global ptr @mtd_subpagetest_init._entry.30, section ".printk_index", align 4
@mtd_subpagetest_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016mtd_subpagetest: verifying all eraseblocks\0A\00", [50 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.35 = internal global ptr @mtd_subpagetest_init._entry.33, section ".printk_index", align 4
@mtd_subpagetest_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016mtd_subpagetest: verified up to eraseblock %u\0A\00", [47 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.38 = internal global ptr @mtd_subpagetest_init._entry.36, section ".printk_index", align 4
@mtd_subpagetest_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016mtd_subpagetest: verified %u eraseblocks\0A\00", [52 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.41 = internal global ptr @mtd_subpagetest_init._entry.39, section ".printk_index", align 4
@mtd_subpagetest_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.43 = internal global ptr @mtd_subpagetest_init._entry.42, section ".printk_index", align 4
@mtd_subpagetest_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.45 = internal global ptr @mtd_subpagetest_init._entry.44, section ".printk_index", align 4
@mtd_subpagetest_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.47 = internal global ptr @mtd_subpagetest_init._entry.46, section ".printk_index", align 4
@mtd_subpagetest_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.49 = internal global ptr @mtd_subpagetest_init._entry.48, section ".printk_index", align 4
@mtd_subpagetest_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.51 = internal global ptr @mtd_subpagetest_init._entry.50, section ".printk_index", align 4
@mtd_subpagetest_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.53 = internal global ptr @mtd_subpagetest_init._entry.52, section ".printk_index", align 4
@mtd_subpagetest_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.1, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016mtd_subpagetest: finished with %d errors\0A\00", [52 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.56 = internal global ptr @mtd_subpagetest_init._entry.54, section ".printk_index", align 4
@errcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mtd_subpagetest_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.1, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016mtd_subpagetest: error %d occurred\0A\00", [58 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.59 = internal global ptr @mtd_subpagetest_init._entry.57, section ".printk_index", align 4
@mtd_subpagetest_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_subpagetest_init._entry_ptr.61 = internal global ptr @mtd_subpagetest_init._entry.60, section ".printk_index", align 4
@net_rand_noise = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@write_eraseblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013mtd_subpagetest: error: write failed at %#llx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write_eraseblock\00", [47 x i8] zeroinitializer }, align 32
@write_eraseblock._entry_ptr = internal global ptr @write_eraseblock._entry, section ".printk_index", align 4
@write_eraseblock._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013mtd_subpagetest:   write size: %#x\0A\00", [58 x i8] zeroinitializer }, align 32
@write_eraseblock._entry_ptr.66 = internal global ptr @write_eraseblock._entry.64, section ".printk_index", align 4
@write_eraseblock._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013mtd_subpagetest:   written: %#zx\0A\00", [60 x i8] zeroinitializer }, align 32
@write_eraseblock._entry_ptr.69 = internal global ptr @write_eraseblock._entry.67, section ".printk_index", align 4
@write_eraseblock._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@write_eraseblock._entry_ptr.71 = internal global ptr @write_eraseblock._entry.70, section ".printk_index", align 4
@write_eraseblock._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@write_eraseblock._entry_ptr.73 = internal global ptr @write_eraseblock._entry.72, section ".printk_index", align 4
@write_eraseblock._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@write_eraseblock._entry_ptr.75 = internal global ptr @write_eraseblock._entry.74, section ".printk_index", align 4
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/tests/mtd_test.h\00", [35 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.76, i32 9, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016mtd_subpagetest: aborting test due to pending signal!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtdtest_relax\00", [18 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry_ptr = internal global ptr @mtdtest_relax._entry, section ".printk_index", align 4
@verify_eraseblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016mtd_subpagetest: ECC correction at %#llx\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"verify_eraseblock\00", [46 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr = internal global ptr @verify_eraseblock._entry, section ".printk_index", align 4
@verify_eraseblock._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013mtd_subpagetest: error: read failed at %#llx\0A\00", [48 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.83 = internal global ptr @verify_eraseblock._entry.81, section ".printk_index", align 4
@verify_eraseblock._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013mtd_subpagetest: error: verify failed at %#llx\0A\00", [46 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.86 = internal global ptr @verify_eraseblock._entry.84, section ".printk_index", align 4
@verify_eraseblock._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016mtd_subpagetest: ------------- written----------------\0A\00", [38 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.89 = internal global ptr @verify_eraseblock._entry.87, section ".printk_index", align 4
@verify_eraseblock._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.80, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016mtd_subpagetest: ------------- read ------------------\0A\00", [38 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.92 = internal global ptr @verify_eraseblock._entry.90, section ".printk_index", align 4
@verify_eraseblock._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.80, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016mtd_subpagetest: -------------------------------------\0A\00", [38 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.95 = internal global ptr @verify_eraseblock._entry.93, section ".printk_index", align 4
@verify_eraseblock._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.97 = internal global ptr @verify_eraseblock._entry.96, section ".printk_index", align 4
@verify_eraseblock._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.99 = internal global ptr @verify_eraseblock._entry.98, section ".printk_index", align 4
@verify_eraseblock._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.80, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016mtd_subpagetest: error: verify failed at %#llx\0A\00", [46 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.102 = internal global ptr @verify_eraseblock._entry.100, section ".printk_index", align 4
@verify_eraseblock._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.104 = internal global ptr @verify_eraseblock._entry.103, section ".printk_index", align 4
@verify_eraseblock._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.80, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.106 = internal global ptr @verify_eraseblock._entry.105, section ".printk_index", align 4
@verify_eraseblock._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.80, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.108 = internal global ptr @verify_eraseblock._entry.107, section ".printk_index", align 4
@print_subpage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"print_subpage\00", [18 x i8] zeroinitializer }, align 32
@print_subpage._entry_ptr = internal global ptr @print_subpage._entry, section ".printk_index", align 4
@print_subpage._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@print_subpage._entry_ptr.113 = internal global ptr @print_subpage._entry.111, section ".printk_index", align 4
@verify_all_eraseblocks_ff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016mtd_subpagetest: verifying all eraseblocks for 0xff\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"verify_all_eraseblocks_ff\00", [38 x i8] zeroinitializer }, align 32
@verify_all_eraseblocks_ff._entry_ptr = internal global ptr @verify_all_eraseblocks_ff._entry, section ".printk_index", align 4
@verify_all_eraseblocks_ff._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.115, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_all_eraseblocks_ff._entry_ptr.117 = internal global ptr @verify_all_eraseblocks_ff._entry.116, section ".printk_index", align 4
@verify_all_eraseblocks_ff._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.115, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_all_eraseblocks_ff._entry_ptr.119 = internal global ptr @verify_all_eraseblocks_ff._entry.118, section ".printk_index", align 4
@verify_eraseblock_ff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.120, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"verify_eraseblock_ff\00", [43 x i8] zeroinitializer }, align 32
@verify_eraseblock_ff._entry_ptr = internal global ptr @verify_eraseblock_ff._entry, section ".printk_index", align 4
@verify_eraseblock_ff._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.120, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_eraseblock_ff._entry_ptr.122 = internal global ptr @verify_eraseblock_ff._entry.121, section ".printk_index", align 4
@verify_eraseblock_ff._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.120, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013mtd_subpagetest: error: verify 0xff failed at %#llx\0A\00", [41 x i8] zeroinitializer }, align 32
@verify_eraseblock_ff._entry_ptr.125 = internal global ptr @verify_eraseblock_ff._entry.123, section ".printk_index", align 4
@write_eraseblock2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.126, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"write_eraseblock2\00", [46 x i8] zeroinitializer }, align 32
@write_eraseblock2._entry_ptr = internal global ptr @write_eraseblock2._entry, section ".printk_index", align 4
@write_eraseblock2._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.126, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@write_eraseblock2._entry_ptr.128 = internal global ptr @write_eraseblock2._entry.127, section ".printk_index", align 4
@write_eraseblock2._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.126, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013mtd_subpagetest:   written: %#08zx\0A\00", [58 x i8] zeroinitializer }, align 32
@write_eraseblock2._entry_ptr.131 = internal global ptr @write_eraseblock2._entry.129, section ".printk_index", align 4
@verify_eraseblock2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.132, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"verify_eraseblock2\00", [45 x i8] zeroinitializer }, align 32
@verify_eraseblock2._entry_ptr = internal global ptr @verify_eraseblock2._entry, section ".printk_index", align 4
@verify_eraseblock2._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.132, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_eraseblock2._entry_ptr.134 = internal global ptr @verify_eraseblock2._entry.133, section ".printk_index", align 4
@verify_eraseblock2._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.132, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_eraseblock2._entry_ptr.136 = internal global ptr @verify_eraseblock2._entry.135, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 8]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@___asan_gen_.141 = private constant [4 x i8] c"dev\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 22, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 274, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 275, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 278, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 279, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 283, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [4 x i8] c"mtd\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 26, i32 25 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 288, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 293, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [10 x i8] c"subpgsize\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 31, i32 12 }
@___asan_gen_.198 = private unnamed_addr constant [6 x i8] c"ebcnt\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 33, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 303, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [8 x i8] c"bufsize\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 32, i32 12 }
@___asan_gen_.210 = private unnamed_addr constant [9 x i8] c"writebuf\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 27, i32 23 }
@___asan_gen_.213 = private unnamed_addr constant [8 x i8] c"readbuf\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 28, i32 23 }
@___asan_gen_.216 = private unnamed_addr constant [4 x i8] c"bbt\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 29, i32 23 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 329, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [10 x i8] c"rnd_state\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 36, i32 25 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 338, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 344, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 347, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 355, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 361, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 373, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 381, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 387, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 391, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 399, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 405, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 415, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [7 x i8] c"errcnt\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 35, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 423, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 424, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 52, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 55, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 56, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 66, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 69, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 70, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 7, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [32 x i8] c"../drivers/mtd/tests/mtd_test.h\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 9, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 128, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 132, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 138, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 140, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 142, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 144, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 155, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 159, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 165, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 167, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 169, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 171, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 112, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 113, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 250, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 258, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 264, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 225, i32 5 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 229, i32 5 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 235, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 90, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 93, i32 5 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 95, i32 5 }
@___asan_gen_.459 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 192, i32 5 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 196, i32 5 }
@___asan_gen_.465 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.466 = private constant [35 x i8] c"../drivers/mtd/tests/subpagetest.c\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 202, i32 4 }
@llvm.compiler.used = appending global [171 x ptr] [ptr @__UNIQUE_ID_author204, ptr @__UNIQUE_ID_description203, ptr @__UNIQUE_ID_dev202, ptr @__UNIQUE_ID_devtype201, ptr @__UNIQUE_ID_license205, ptr @__param_dev, ptr @mtd_subpagetest_init._entry, ptr @mtd_subpagetest_init._entry.12, ptr @mtd_subpagetest_init._entry.15, ptr @mtd_subpagetest_init._entry.18, ptr @mtd_subpagetest_init._entry.21, ptr @mtd_subpagetest_init._entry.24, ptr @mtd_subpagetest_init._entry.27, ptr @mtd_subpagetest_init._entry.3, ptr @mtd_subpagetest_init._entry.30, ptr @mtd_subpagetest_init._entry.33, ptr @mtd_subpagetest_init._entry.36, ptr @mtd_subpagetest_init._entry.39, ptr @mtd_subpagetest_init._entry.42, ptr @mtd_subpagetest_init._entry.44, ptr @mtd_subpagetest_init._entry.46, ptr @mtd_subpagetest_init._entry.48, ptr @mtd_subpagetest_init._entry.50, ptr @mtd_subpagetest_init._entry.52, ptr @mtd_subpagetest_init._entry.54, ptr @mtd_subpagetest_init._entry.57, ptr @mtd_subpagetest_init._entry.6, ptr @mtd_subpagetest_init._entry.60, ptr @mtd_subpagetest_init._entry.9, ptr @mtd_subpagetest_init._entry_ptr, ptr @mtd_subpagetest_init._entry_ptr.11, ptr @mtd_subpagetest_init._entry_ptr.14, ptr @mtd_subpagetest_init._entry_ptr.17, ptr @mtd_subpagetest_init._entry_ptr.20, ptr @mtd_subpagetest_init._entry_ptr.23, ptr @mtd_subpagetest_init._entry_ptr.26, ptr @mtd_subpagetest_init._entry_ptr.29, ptr @mtd_subpagetest_init._entry_ptr.32, ptr @mtd_subpagetest_init._entry_ptr.35, ptr @mtd_subpagetest_init._entry_ptr.38, ptr @mtd_subpagetest_init._entry_ptr.41, ptr @mtd_subpagetest_init._entry_ptr.43, ptr @mtd_subpagetest_init._entry_ptr.45, ptr @mtd_subpagetest_init._entry_ptr.47, ptr @mtd_subpagetest_init._entry_ptr.49, ptr @mtd_subpagetest_init._entry_ptr.5, ptr @mtd_subpagetest_init._entry_ptr.51, ptr @mtd_subpagetest_init._entry_ptr.53, ptr @mtd_subpagetest_init._entry_ptr.56, ptr @mtd_subpagetest_init._entry_ptr.59, ptr @mtd_subpagetest_init._entry_ptr.61, ptr @mtd_subpagetest_init._entry_ptr.8, ptr @mtdtest_relax._entry, ptr @mtdtest_relax._entry_ptr, ptr @print_subpage._entry, ptr @print_subpage._entry.111, ptr @print_subpage._entry_ptr, ptr @print_subpage._entry_ptr.113, ptr @verify_all_eraseblocks_ff._entry, ptr @verify_all_eraseblocks_ff._entry.116, ptr @verify_all_eraseblocks_ff._entry.118, ptr @verify_all_eraseblocks_ff._entry_ptr, ptr @verify_all_eraseblocks_ff._entry_ptr.117, ptr @verify_all_eraseblocks_ff._entry_ptr.119, ptr @verify_eraseblock._entry, ptr @verify_eraseblock._entry.100, ptr @verify_eraseblock._entry.103, ptr @verify_eraseblock._entry.105, ptr @verify_eraseblock._entry.107, ptr @verify_eraseblock._entry.81, ptr @verify_eraseblock._entry.84, ptr @verify_eraseblock._entry.87, ptr @verify_eraseblock._entry.90, ptr @verify_eraseblock._entry.93, ptr @verify_eraseblock._entry.96, ptr @verify_eraseblock._entry.98, ptr @verify_eraseblock._entry_ptr, ptr @verify_eraseblock._entry_ptr.102, ptr @verify_eraseblock._entry_ptr.104, ptr @verify_eraseblock._entry_ptr.106, ptr @verify_eraseblock._entry_ptr.108, ptr @verify_eraseblock._entry_ptr.83, ptr @verify_eraseblock._entry_ptr.86, ptr @verify_eraseblock._entry_ptr.89, ptr @verify_eraseblock._entry_ptr.92, ptr @verify_eraseblock._entry_ptr.95, ptr @verify_eraseblock._entry_ptr.97, ptr @verify_eraseblock._entry_ptr.99, ptr @verify_eraseblock2._entry, ptr @verify_eraseblock2._entry.133, ptr @verify_eraseblock2._entry.135, ptr @verify_eraseblock2._entry_ptr, ptr @verify_eraseblock2._entry_ptr.134, ptr @verify_eraseblock2._entry_ptr.136, ptr @verify_eraseblock_ff._entry, ptr @verify_eraseblock_ff._entry.121, ptr @verify_eraseblock_ff._entry.123, ptr @verify_eraseblock_ff._entry_ptr, ptr @verify_eraseblock_ff._entry_ptr.122, ptr @verify_eraseblock_ff._entry_ptr.125, ptr @write_eraseblock._entry, ptr @write_eraseblock._entry.64, ptr @write_eraseblock._entry.67, ptr @write_eraseblock._entry.70, ptr @write_eraseblock._entry.72, ptr @write_eraseblock._entry.74, ptr @write_eraseblock._entry_ptr, ptr @write_eraseblock._entry_ptr.66, ptr @write_eraseblock._entry_ptr.69, ptr @write_eraseblock._entry_ptr.71, ptr @write_eraseblock._entry_ptr.73, ptr @write_eraseblock._entry_ptr.75, ptr @write_eraseblock2._entry, ptr @write_eraseblock2._entry.127, ptr @write_eraseblock2._entry.129, ptr @write_eraseblock2._entry_ptr, ptr @write_eraseblock2._entry_ptr.128, ptr @write_eraseblock2._entry_ptr.131, ptr @dev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @mtd, ptr @.str.16, ptr @.str.19, ptr @subpgsize, ptr @ebcnt, ptr @.str.22, ptr @bufsize, ptr @writebuf, ptr @readbuf, ptr @bbt, ptr @.str.25, ptr @rnd_state, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.55, ptr @errcnt, ptr @.str.58, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.101, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.120, ptr @.str.124, ptr @.str.126, ptr @.str.130, ptr @.str.132], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subpgsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 155, i32 192, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bufsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writebuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readbuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnd_state to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @errcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_subpagetest_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_eraseblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_eraseblock._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_eraseblock._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_eraseblock._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_eraseblock._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_eraseblock._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdtest_relax._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_subpage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_subpage._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_all_eraseblocks_ff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_all_eraseblocks_ff._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_all_eraseblocks_ff._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock_ff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock_ff._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock_ff._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_eraseblock2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_eraseblock2._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_eraseblock2._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock2._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock2._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %read.i704 = alloca i32, align 4
  %written.i672 = alloca i32, align 4
  %read.i = alloca i32, align 4
  %written.i = alloca i32, align 4
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
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  br label %cleanup

do.end19:                                         ; preds = %entry
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %0) #13
  %1 = load i32, ptr @dev, align 4
  %call22 = tail call ptr @get_mtd_device(ptr noundef null, i32 noundef %1) #10
  store ptr %call22, ptr @mtd, align 4
  %cmp.i623 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i623, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call22 to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  br label %cleanup

if.end31:                                         ; preds = %do.end19
  %3 = ptrtoint ptr %call22 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call22, align 8
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %do.end36 [
    i8 8, label %if.end31.if.end39_crit_edge
    i8 4, label %if.end31.if.end39_crit_edge871
  ]

if.end31.if.end39_crit_edge871:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

do.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  br label %out

if.end39:                                         ; preds = %if.end31.if.end39_crit_edge, %if.end31.if.end39_crit_edge871
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %call22, i32 0, i32 4
  %6 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize, align 4
  %subpage_sft = getelementptr inbounds %struct.mtd_info, ptr %call22, i32 0, i32 53
  %8 = ptrtoint ptr %subpage_sft to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %subpage_sft, align 4
  %shr = lshr i32 %7, %9
  store i32 %shr, ptr @subpgsize, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %call22, i32 0, i32 2
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size, align 8
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %call22, i32 0, i32 3
  %12 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %11)
  %cmp210 = icmp ult i64 %11, 4294967296
  br i1 %cmp210, label %if.then214, label %if.else220, !prof !256

if.then214:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %conv215 = trunc i64 %11 to i32
  %div218 = udiv i32 %conv215, %13
  br label %if.end224

if.else220:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %11) #14, !srcloc !257
  %asmresult1.i = extractvalue { i64, i64 } %14, 1
  %extract.t782 = trunc i64 %asmresult1.i to i32
  br label %if.end224

if.end224:                                        ; preds = %if.else220, %if.then214
  %tmp.0.off0 = phi i32 [ %div218, %if.then214 ], [ %extract.t782, %if.else220 ]
  store i32 %tmp.0.off0, ptr @ebcnt, align 4
  %div229 = udiv i32 %13, %7
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %call22, i32 0, i32 6
  %15 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %oobsize, align 4
  %call237 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i64 noundef %11, i32 noundef %13, i32 noundef %7, i32 noundef %shr, i32 noundef %tmp.0.off0, i32 noundef %div229, i32 noundef %16) #13
  %17 = load i32, ptr @subpgsize, align 4
  %mul238 = shl i32 %17, 5
  store i32 %mul238, ptr @bufsize, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul238, i32 noundef 3264) #15
  store ptr %call9.i, ptr @writebuf, align 4
  %tobool240.not = icmp eq ptr %call9.i, null
  br i1 %tobool240.not, label %if.end224.out_crit_edge, label %if.end8.i620

if.end224.out_crit_edge:                          ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8.i620:                                     ; preds = %if.end224
  %18 = load i32, ptr @bufsize, align 4
  %call9.i619 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3264) #15
  store ptr %call9.i619, ptr @readbuf, align 4
  %tobool244.not = icmp eq ptr %call9.i619, null
  br i1 %tobool244.not, label %if.end8.i620.out_crit_edge, label %if.end8.i.i

if.end8.i620.out_crit_edge:                       ; preds = %if.end8.i620
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8.i.i:                                      ; preds = %if.end8.i620
  %19 = load i32, ptr @ebcnt, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #15
  store ptr %call9.i.i, ptr @bbt, align 4
  %tobool248.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool248.not, label %if.end8.i.i.out_crit_edge, label %if.end250

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end250:                                        ; preds = %if.end8.i.i
  %20 = load ptr, ptr @mtd, align 4
  %21 = load i32, ptr @ebcnt, align 4
  %call251 = tail call i32 @mtdtest_scan_for_bad_eraseblocks(ptr noundef %20, ptr noundef nonnull %call9.i.i, i32 noundef 0, i32 noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %if.end254, label %if.end250.out_crit_edge

if.end250.out_crit_edge:                          ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end254:                                        ; preds = %if.end250
  %22 = load ptr, ptr @mtd, align 4
  %23 = load ptr, ptr @bbt, align 4
  %24 = load i32, ptr @ebcnt, align 4
  %call255 = tail call i32 @mtdtest_erase_good_eraseblocks(ptr noundef %22, ptr noundef %23, i32 noundef 0, i32 noundef %24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call255)
  %tobool256.not = icmp eq i32 %call255, 0
  br i1 %tobool256.not, label %do.end261, label %if.end254.out_crit_edge

if.end254.out_crit_edge:                          ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end261:                                        ; preds = %if.end254
  %call263 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  store i32 1025, ptr @rnd_state, align 4
  store i32 1025, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 1), align 4
  store i32 1025, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 2), align 4
  store i32 1025, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 3), align 4
  %25 = tail call i32 @llvm.read_register.i32(metadata !246) #10
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  %add.i10.i = add i32 %30, ptrtoint (ptr @net_rand_noise to i32)
  %31 = inttoptr i32 %add.i10.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %xor.i.i = xor i32 %33, ptrtoint (ptr @rnd_state to i32)
  %add8.i.i = add i32 %xor.i.i, 1025
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %add8.i.i, i32 %add8.i.i, i32 16) #10
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i1.i.i, ptr %31, align 4
  %35 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp264808.not = icmp eq i32 %35, 0
  br i1 %cmp264808.not, label %do.end261.do.end295_crit_edge, label %do.end261.for.body_crit_edge

do.end261.for.body_crit_edge:                     ; preds = %do.end261
  br label %for.body

do.end261.do.end295_crit_edge:                    ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end295

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end261.for.body_crit_edge
  %i.0809 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end261.for.body_crit_edge ]
  %36 = load ptr, ptr @bbt, align 4
  %arrayidx = getelementptr i8, ptr %36, i32 %i.0809
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool266.not = icmp eq i8 %38, 0
  br i1 %tobool266.not, label %if.end268, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end268:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %written.i) #10
  %39 = ptrtoint ptr %written.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %written.i, align 4, !annotation !258
  %conv.i = sext i32 %i.0809 to i64
  %40 = load ptr, ptr @mtd, align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %erasesize.i, align 8
  %conv1.i = zext i32 %42 to i64
  %mul.i = mul nsw i64 %conv1.i, %conv.i
  %43 = load ptr, ptr @writebuf, align 4
  %44 = load i32, ptr @subpgsize, align 4
  call void @prandom_bytes_state(ptr noundef nonnull @rnd_state, ptr noundef %43, i32 noundef %44) #10
  %45 = load ptr, ptr @mtd, align 4
  %46 = load i32, ptr @subpgsize, align 4
  %47 = load ptr, ptr @writebuf, align 4
  %call.i = call i32 @mtd_write(ptr noundef %45, i64 noundef %mul.i, i32 noundef %46, ptr noundef nonnull %written.i, ptr noundef %47) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.end268.do.end.i_crit_edge, !prof !256

if.end268.do.end.i_crit_edge:                     ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.rhs.i:                                        ; preds = %if.end268
  %48 = ptrtoint ptr %written.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %written.i, align 4
  %50 = load i32, ptr @subpgsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %50)
  %cmp.not.i629 = icmp eq i32 %49, %50
  br i1 %cmp.not.i629, label %if.end20.i, label %lor.rhs.i.do.end.i_crit_edge, !prof !256

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %if.end268.do.end.i_crit_edge
  %spec.select = phi i32 [ -1, %lor.rhs.i.do.end.i_crit_edge ], [ %call.i, %if.end268.do.end.i_crit_edge ]
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i64 noundef %mul.i) #13
  %51 = ptrtoint ptr %written.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %written.i, align 4
  %53 = load i32, ptr @subpgsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %53)
  %cmp6.not.i = icmp eq i32 %52, %53
  br i1 %cmp6.not.i, label %do.end.i.write_eraseblock.exit.thread_crit_edge, label %do.end.i.write_eraseblock.exit.thread.sink.split_crit_edge

do.end.i.write_eraseblock.exit.thread.sink.split_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_eraseblock.exit.thread.sink.split

do.end.i.write_eraseblock.exit.thread_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_eraseblock.exit.thread

if.end20.i:                                       ; preds = %lor.rhs.i
  %conv21.i = sext i32 %49 to i64
  %add.i = add nsw i64 %mul.i, %conv21.i
  %54 = load ptr, ptr @writebuf, align 4
  call void @prandom_bytes_state(ptr noundef nonnull @rnd_state, ptr noundef %54, i32 noundef %49) #10
  %55 = load ptr, ptr @mtd, align 4
  %56 = load i32, ptr @subpgsize, align 4
  %57 = load ptr, ptr @writebuf, align 4
  %call22.i = call i32 @mtd_write(ptr noundef %55, i64 noundef %add.i, i32 noundef %56, ptr noundef nonnull %written.i, ptr noundef %57) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %lor.rhs24.i, label %if.end20.i.do.end37.i_crit_edge, !prof !256

if.end20.i.do.end37.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37.i

lor.rhs24.i:                                      ; preds = %if.end20.i
  %58 = ptrtoint ptr %written.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %written.i, align 4
  %60 = load i32, ptr @subpgsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %60)
  %cmp25.not.i = icmp eq i32 %59, %60
  br i1 %cmp25.not.i, label %if.end278, label %lor.rhs24.i.do.end37.i_crit_edge, !prof !256

lor.rhs24.i.do.end37.i_crit_edge:                 ; preds = %lor.rhs24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37.i

do.end37.i:                                       ; preds = %lor.rhs24.i.do.end37.i_crit_edge, %if.end20.i.do.end37.i_crit_edge
  %spec.select780 = phi i32 [ -1, %lor.rhs24.i.do.end37.i_crit_edge ], [ %call22.i, %if.end20.i.do.end37.i_crit_edge ]
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i64 noundef %add.i) #13
  %61 = ptrtoint ptr %written.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %written.i, align 4
  %63 = load i32, ptr @subpgsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %63)
  %cmp40.not.i = icmp eq i32 %62, %63
  br i1 %cmp40.not.i, label %do.end37.i.write_eraseblock.exit.thread_crit_edge, label %do.end37.i.write_eraseblock.exit.thread.sink.split_crit_edge

do.end37.i.write_eraseblock.exit.thread.sink.split_crit_edge: ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_eraseblock.exit.thread.sink.split

do.end37.i.write_eraseblock.exit.thread_crit_edge: ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_eraseblock.exit.thread

write_eraseblock.exit.thread.sink.split:          ; preds = %do.end37.i.write_eraseblock.exit.thread.sink.split_crit_edge, %do.end.i.write_eraseblock.exit.thread.sink.split_crit_edge
  %.sink854 = phi i32 [ %53, %do.end.i.write_eraseblock.exit.thread.sink.split_crit_edge ], [ %63, %do.end37.i.write_eraseblock.exit.thread.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ %spec.select, %do.end.i.write_eraseblock.exit.thread.sink.split_crit_edge ], [ %spec.select780, %do.end37.i.write_eraseblock.exit.thread.sink.split_crit_edge ]
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %.sink854) #13
  %64 = ptrtoint ptr %written.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.sink = load i32, ptr %written.i, align 4
  %call52.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %.sink) #13
  br label %write_eraseblock.exit.thread

write_eraseblock.exit.thread:                     ; preds = %write_eraseblock.exit.thread.sink.split, %do.end37.i.write_eraseblock.exit.thread_crit_edge, %do.end.i.write_eraseblock.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %spec.select, %do.end.i.write_eraseblock.exit.thread_crit_edge ], [ %spec.select780, %do.end37.i.write_eraseblock.exit.thread_crit_edge ], [ %retval.0.i.ph.ph, %write_eraseblock.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %written.i) #10
  br label %out

if.end278:                                        ; preds = %lor.rhs24.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %written.i) #10
  %rem279 = and i32 %i.0809, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem279)
  %cmp280 = icmp eq i32 %rem279, 0
  br i1 %cmp280, label %do.end285, label %if.end278.if.end288_crit_edge

if.end278.if.end288_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end288

do.end285:                                        ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #12
  %call287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %i.0809) #13
  br label %if.end288

if.end288:                                        ; preds = %do.end285, %if.end278.if.end288_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.76, i32 noundef 7, i32 noundef 0) #10
  %call.i.i = call i32 @__cond_resched() #10
  %65 = call i32 @llvm.read_register.i32(metadata !246) #10
  %and.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %stack.i.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  %73 = and i32 %72, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i.i631 = icmp eq i32 %73, 0
  br i1 %tobool.not.i.i631, label %signal_pending.exit.i, label %if.end288.mtdtest_relax.exit_crit_edge, !prof !256

if.end288.mtdtest_relax.exit_crit_edge:           ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit

signal_pending.exit.i:                            ; preds = %if.end288
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %70, align 4
  %and1.i.i.i.i.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i632 = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i632, label %signal_pending.exit.i.for.inc_crit_edge, label %signal_pending.exit.i.mtdtest_relax.exit_crit_edge

signal_pending.exit.i.mtdtest_relax.exit_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit

signal_pending.exit.i.for.inc_crit_edge:          ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

mtdtest_relax.exit:                               ; preds = %signal_pending.exit.i.mtdtest_relax.exit_crit_edge, %if.end288.mtdtest_relax.exit_crit_edge
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #13
  br label %out

for.inc:                                          ; preds = %signal_pending.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0809, 1
  %76 = load i32, ptr @ebcnt, align 4
  %cmp264 = icmp ult i32 %inc, %76
  br i1 %cmp264, label %for.inc.for.body_crit_edge, label %for.inc.do.end295_crit_edge

for.inc.do.end295_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end295

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end295:                                        ; preds = %for.inc.do.end295_crit_edge, %do.end261.do.end295_crit_edge
  %i.0.lcssa = phi i32 [ 0, %do.end261.do.end295_crit_edge ], [ %inc, %for.inc.do.end295_crit_edge ]
  %call297 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %i.0.lcssa) #13
  store i32 1025, ptr @rnd_state, align 4
  store i32 1025, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 1), align 4
  store i32 1025, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 2), align 4
  store i32 1025, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 3), align 4
  %77 = call i32 @llvm.read_register.i32(metadata !246) #10
  %and.i.i.i635 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i635 to ptr
  %cpu.i.i636 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %cpu.i.i636 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cpu.i.i636, align 4
  %arrayidx.i.i637 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx.i.i637 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i.i637, align 4
  %add.i10.i638 = add i32 %82, ptrtoint (ptr @net_rand_noise to i32)
  %83 = inttoptr i32 %add.i10.i638 to ptr
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %xor.i.i639 = xor i32 %85, ptrtoint (ptr @rnd_state to i32)
  %add8.i.i640 = add i32 %xor.i.i639, 1025
  %or.i1.i.i641 = call i32 @llvm.fshl.i32(i32 %add8.i.i640, i32 %add8.i.i640, i32 16) #10
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %or.i1.i.i641, ptr %83, align 4
  %call302 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #13
  %87 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp304811.not = icmp eq i32 %87, 0
  br i1 %cmp304811.not, label %do.end295.do.end340_crit_edge, label %do.end295.for.body306_crit_edge

do.end295.for.body306_crit_edge:                  ; preds = %do.end295
  br label %for.body306

do.end295.do.end340_crit_edge:                    ; preds = %do.end295
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end340

for.body306:                                      ; preds = %for.inc335.for.body306_crit_edge, %do.end295.for.body306_crit_edge
  %i.1812 = phi i32 [ %inc336, %for.inc335.for.body306_crit_edge ], [ 0, %do.end295.for.body306_crit_edge ]
  %88 = load ptr, ptr @bbt, align 4
  %arrayidx307 = getelementptr i8, ptr %88, i32 %i.1812
  %89 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx307, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool308.not = icmp eq i8 %90, 0
  br i1 %tobool308.not, label %if.end310, label %for.body306.for.inc335_crit_edge

for.body306.for.inc335_crit_edge:                 ; preds = %for.body306
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc335

if.end310:                                        ; preds = %for.body306
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read.i) #10
  %91 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %read.i, align 4, !annotation !258
  %conv.i642 = sext i32 %i.1812 to i64
  %92 = load ptr, ptr @mtd, align 4
  %erasesize.i643 = getelementptr inbounds %struct.mtd_info, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %erasesize.i643 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %erasesize.i643, align 8
  %conv1.i644 = zext i32 %94 to i64
  %mul.i645 = mul nsw i64 %conv1.i644, %conv.i642
  %95 = load ptr, ptr @writebuf, align 4
  %96 = load i32, ptr @subpgsize, align 4
  call void @prandom_bytes_state(ptr noundef nonnull @rnd_state, ptr noundef %95, i32 noundef %96) #10
  %97 = load ptr, ptr @readbuf, align 4
  %98 = load i32, ptr @subpgsize, align 4
  %99 = call ptr @memset(ptr %97, i32 0, i32 %98)
  %100 = load ptr, ptr @mtd, align 4
  %call.i646 = call i32 @mtd_read(ptr noundef %100, i64 noundef %mul.i645, i32 noundef %98, ptr noundef nonnull %read.i, ptr noundef %97) #10
  %101 = zext i32 %call.i646 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %call.i646, label %if.end310.verify_eraseblock.exit_crit_edge [
    i32 0, label %lor.rhs.i648
    i32 -117, label %land.lhs.true.i
  ], !prof !259

if.end310.verify_eraseblock.exit_crit_edge:       ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit

lor.rhs.i648:                                     ; preds = %if.end310
  %102 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %read.i, align 4
  %104 = load i32, ptr @subpgsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %104)
  %cmp.not.i647 = icmp eq i32 %103, %104
  br i1 %cmp.not.i647, label %lor.rhs.i648.if.end17.i_crit_edge, label %lor.rhs.i648.verify_eraseblock.exit_crit_edge, !prof !256

lor.rhs.i648.verify_eraseblock.exit_crit_edge:    ; preds = %lor.rhs.i648
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit

lor.rhs.i648.if.end17.i_crit_edge:                ; preds = %lor.rhs.i648
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %if.end310
  %105 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %read.i, align 4
  %107 = load i32, ptr @subpgsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %107)
  %cmp7.i = icmp eq i32 %106, %107
  br i1 %cmp7.i, label %do.end.i649, label %land.lhs.true.i.verify_eraseblock.exit_crit_edge

land.lhs.true.i.verify_eraseblock.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit

do.end.i649:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i64 noundef %mul.i645) #13
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end.i649, %lor.rhs.i648.if.end17.i_crit_edge
  %108 = load ptr, ptr @readbuf, align 4
  %109 = load ptr, ptr @writebuf, align 4
  %110 = load i32, ptr @subpgsize, align 4
  %bcmp.i = call i32 @bcmp(ptr %108, ptr %109, i32 %110) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool19.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool19.not.i, label %if.end17.i.if.end47.i_crit_edge, label %do.end29.i, !prof !256

if.end17.i.if.end47.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.i

do.end29.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i64 noundef %mul.i645) #13
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #13
  %111 = load ptr, ptr @writebuf, align 4
  call fastcc void @print_subpage(ptr noundef %111) #10
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #13
  %112 = load ptr, ptr @readbuf, align 4
  call fastcc void @print_subpage(ptr noundef %112) #10
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #13
  %113 = load i32, ptr @errcnt, align 4
  %add.i651 = add i32 %113, 1
  store i32 %add.i651, ptr @errcnt, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %do.end29.i, %if.end17.i.if.end47.i_crit_edge
  %114 = load i32, ptr @subpgsize, align 4
  %conv48.i = sext i32 %114 to i64
  %add49.i = add nsw i64 %mul.i645, %conv48.i
  %115 = load ptr, ptr @writebuf, align 4
  call void @prandom_bytes_state(ptr noundef nonnull @rnd_state, ptr noundef %115, i32 noundef %114) #10
  %116 = load ptr, ptr @readbuf, align 4
  %117 = load i32, ptr @subpgsize, align 4
  %118 = call ptr @memset(ptr %116, i32 0, i32 %117)
  %119 = load ptr, ptr @mtd, align 4
  %call50.i = call i32 @mtd_read(ptr noundef %119, i64 noundef %add49.i, i32 noundef %117, ptr noundef nonnull %read.i, ptr noundef %116) #10
  %120 = zext i32 %call50.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %call50.i, label %if.end47.i.verify_eraseblock.exit_crit_edge [
    i32 0, label %lor.rhs52.i
    i32 -117, label %land.lhs.true65.i
  ], !prof !259

if.end47.i.verify_eraseblock.exit_crit_edge:      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit

lor.rhs52.i:                                      ; preds = %if.end47.i
  %121 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %read.i, align 4
  %123 = load i32, ptr @subpgsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %123)
  %cmp53.not.i = icmp eq i32 %122, %123
  br i1 %cmp53.not.i, label %lor.rhs52.i.if.end86.i_crit_edge, label %lor.rhs52.i.verify_eraseblock.exit_crit_edge, !prof !256

lor.rhs52.i.verify_eraseblock.exit_crit_edge:     ; preds = %lor.rhs52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit

lor.rhs52.i.if.end86.i_crit_edge:                 ; preds = %lor.rhs52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86.i

land.lhs.true65.i:                                ; preds = %if.end47.i
  %124 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %read.i, align 4
  %126 = load i32, ptr @subpgsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %126)
  %cmp66.i = icmp eq i32 %125, %126
  br i1 %cmp66.i, label %do.end71.i, label %land.lhs.true65.i.verify_eraseblock.exit_crit_edge

land.lhs.true65.i.verify_eraseblock.exit_crit_edge: ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit

do.end71.i:                                       ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #12
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i64 noundef %add49.i) #13
  br label %if.end86.i

if.end86.i:                                       ; preds = %do.end71.i, %lor.rhs52.i.if.end86.i_crit_edge
  %127 = load ptr, ptr @readbuf, align 4
  %128 = load ptr, ptr @writebuf, align 4
  %129 = load i32, ptr @subpgsize, align 4
  %bcmp136.i = call i32 @bcmp(ptr %127, ptr %128, i32 %129) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp136.i)
  %tobool88.not.i = icmp eq i32 %bcmp136.i, 0
  br i1 %tobool88.not.i, label %if.end86.i.verify_eraseblock.exit.thread_crit_edge, label %do.end98.i, !prof !256

if.end86.i.verify_eraseblock.exit.thread_crit_edge: ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit.thread

do.end98.i:                                       ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #12
  %call100.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i64 noundef %add49.i) #13
  %call105.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #13
  %130 = load ptr, ptr @writebuf, align 4
  call fastcc void @print_subpage(ptr noundef %130) #10
  %call110.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #13
  %131 = load ptr, ptr @readbuf, align 4
  call fastcc void @print_subpage(ptr noundef %131) #10
  %call115.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #13
  %132 = load i32, ptr @errcnt, align 4
  %add116.i = add i32 %132, 1
  store i32 %add116.i, ptr @errcnt, align 4
  br label %verify_eraseblock.exit.thread

verify_eraseblock.exit.thread:                    ; preds = %do.end98.i, %if.end86.i.verify_eraseblock.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i) #10
  br label %if.end320

verify_eraseblock.exit:                           ; preds = %land.lhs.true65.i.verify_eraseblock.exit_crit_edge, %lor.rhs52.i.verify_eraseblock.exit_crit_edge, %if.end47.i.verify_eraseblock.exit_crit_edge, %land.lhs.true.i.verify_eraseblock.exit_crit_edge, %lor.rhs.i648.verify_eraseblock.exit_crit_edge, %if.end310.verify_eraseblock.exit_crit_edge
  %mul.i645.sink = phi i64 [ %mul.i645, %land.lhs.true.i.verify_eraseblock.exit_crit_edge ], [ %mul.i645, %lor.rhs.i648.verify_eraseblock.exit_crit_edge ], [ %mul.i645, %if.end310.verify_eraseblock.exit_crit_edge ], [ %add49.i, %land.lhs.true65.i.verify_eraseblock.exit_crit_edge ], [ %add49.i, %lor.rhs52.i.verify_eraseblock.exit_crit_edge ], [ %add49.i, %if.end47.i.verify_eraseblock.exit_crit_edge ]
  %retval.0.i652 = phi i32 [ -117, %land.lhs.true.i.verify_eraseblock.exit_crit_edge ], [ -1, %lor.rhs.i648.verify_eraseblock.exit_crit_edge ], [ %call.i646, %if.end310.verify_eraseblock.exit_crit_edge ], [ -117, %land.lhs.true65.i.verify_eraseblock.exit_crit_edge ], [ -1, %lor.rhs52.i.verify_eraseblock.exit_crit_edge ], [ %call50.i, %if.end47.i.verify_eraseblock.exit_crit_edge ]
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i64 noundef %mul.i645.sink) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i652)
  %tobool312.not = icmp eq i32 %retval.0.i652, 0
  br i1 %tobool312.not, label %verify_eraseblock.exit.if.end320_crit_edge, label %verify_eraseblock.exit.out_crit_edge, !prof !256

verify_eraseblock.exit.out_crit_edge:             ; preds = %verify_eraseblock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

verify_eraseblock.exit.if.end320_crit_edge:       ; preds = %verify_eraseblock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end320

if.end320:                                        ; preds = %verify_eraseblock.exit.if.end320_crit_edge, %verify_eraseblock.exit.thread
  %rem321 = and i32 %i.1812, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem321)
  %cmp322 = icmp eq i32 %rem321, 0
  br i1 %cmp322, label %do.end327, label %if.end320.if.end330_crit_edge

if.end320.if.end330_crit_edge:                    ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end330

do.end327:                                        ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #12
  %call329 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %i.1812) #13
  br label %if.end330

if.end330:                                        ; preds = %do.end327, %if.end320.if.end330_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.76, i32 noundef 7, i32 noundef 0) #10
  %call.i.i653 = call i32 @__cond_resched() #10
  %133 = call i32 @llvm.read_register.i32(metadata !246) #10
  %and.i.i654 = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i654 to ptr
  %task.i655 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %task.i655 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %task.i655, align 8
  %stack.i.i.i656 = getelementptr inbounds %struct.task_struct, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %stack.i.i.i656 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %stack.i.i.i656, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %138, align 4
  %141 = and i32 %140, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool.not.i.i657 = icmp eq i32 %141, 0
  br i1 %tobool.not.i.i657, label %signal_pending.exit.i660, label %if.end330.mtdtest_relax.exit664_crit_edge, !prof !256

if.end330.mtdtest_relax.exit664_crit_edge:        ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit664

signal_pending.exit.i660:                         ; preds = %if.end330
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %138, align 4
  %and1.i.i.i.i.i.i658 = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i658)
  %tobool.not.i659 = icmp eq i32 %and1.i.i.i.i.i.i658, 0
  br i1 %tobool.not.i659, label %signal_pending.exit.i660.for.inc335_crit_edge, label %signal_pending.exit.i660.mtdtest_relax.exit664_crit_edge

signal_pending.exit.i660.mtdtest_relax.exit664_crit_edge: ; preds = %signal_pending.exit.i660
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit664

signal_pending.exit.i660.for.inc335_crit_edge:    ; preds = %signal_pending.exit.i660
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc335

mtdtest_relax.exit664:                            ; preds = %signal_pending.exit.i660.mtdtest_relax.exit664_crit_edge, %if.end330.mtdtest_relax.exit664_crit_edge
  %call4.i661 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #13
  br label %out

for.inc335:                                       ; preds = %signal_pending.exit.i660.for.inc335_crit_edge, %for.body306.for.inc335_crit_edge
  %inc336 = add nuw i32 %i.1812, 1
  %144 = load i32, ptr @ebcnt, align 4
  %cmp304 = icmp ult i32 %inc336, %144
  br i1 %cmp304, label %for.inc335.for.body306_crit_edge, label %for.inc335.do.end340_crit_edge

for.inc335.do.end340_crit_edge:                   ; preds = %for.inc335
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end340

for.inc335.for.body306_crit_edge:                 ; preds = %for.inc335
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body306

do.end340:                                        ; preds = %for.inc335.do.end340_crit_edge, %do.end295.do.end340_crit_edge
  %i.1.lcssa = phi i32 [ 0, %do.end295.do.end340_crit_edge ], [ %inc336, %for.inc335.do.end340_crit_edge ]
  %call342 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %i.1.lcssa) #13
  %145 = load ptr, ptr @mtd, align 4
  %146 = load ptr, ptr @bbt, align 4
  %147 = load i32, ptr @ebcnt, align 4
  %call343 = call i32 @mtdtest_erase_good_eraseblocks(ptr noundef %145, ptr noundef %146, i32 noundef 0, i32 noundef %147) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call343)
  %tobool344.not = icmp eq i32 %call343, 0
  br i1 %tobool344.not, label %if.end346, label %do.end340.out_crit_edge

do.end340.out_crit_edge:                          ; preds = %do.end340
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end346:                                        ; preds = %do.end340
  %call347 = call fastcc i32 @verify_all_eraseblocks_ff()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call347)
  %tobool348.not = icmp eq i32 %call347, 0
  br i1 %tobool348.not, label %if.end350, label %if.end346.out_crit_edge

if.end346.out_crit_edge:                          ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end350:                                        ; preds = %if.end346
  store i32 3075, ptr @rnd_state, align 4
  store i32 3075, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 1), align 4
  store i32 3075, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 2), align 4
  store i32 3075, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 3), align 4
  %148 = call i32 @llvm.read_register.i32(metadata !246) #10
  %and.i.i.i665 = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i.i665 to ptr
  %cpu.i.i666 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %cpu.i.i666 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %cpu.i.i666, align 4
  %arrayidx.i.i667 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %151
  %152 = ptrtoint ptr %arrayidx.i.i667 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx.i.i667, align 4
  %add.i10.i668 = add i32 %153, ptrtoint (ptr @net_rand_noise to i32)
  %154 = inttoptr i32 %add.i10.i668 to ptr
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 4
  %xor.i.i669 = xor i32 %156, ptrtoint (ptr @rnd_state to i32)
  %add8.i.i670 = add i32 %xor.i.i669, 3075
  %or.i1.i.i671 = call i32 @llvm.fshl.i32(i32 %add8.i.i670, i32 %add8.i.i670, i32 16) #10
  %157 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %or.i1.i.i671, ptr %154, align 4
  %call355 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  %158 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp357815.not = icmp eq i32 %158, 0
  br i1 %cmp357815.not, label %if.end350.do.end393_crit_edge, label %if.end350.for.body359_crit_edge

if.end350.for.body359_crit_edge:                  ; preds = %if.end350
  br label %for.body359

if.end350.do.end393_crit_edge:                    ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end393

for.body359:                                      ; preds = %for.inc388.for.body359_crit_edge, %if.end350.for.body359_crit_edge
  %i.2816 = phi i32 [ %inc389.pre-phi, %for.inc388.for.body359_crit_edge ], [ 0, %if.end350.for.body359_crit_edge ]
  %159 = load ptr, ptr @bbt, align 4
  %arrayidx360 = getelementptr i8, ptr %159, i32 %i.2816
  %160 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx360, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool361.not = icmp eq i8 %161, 0
  br i1 %tobool361.not, label %if.end363, label %for.body359.for.inc388_crit_edge

for.body359.for.inc388_crit_edge:                 ; preds = %for.body359
  call void @__sanitizer_cov_trace_pc() #12
  %.pre837 = add nuw i32 %i.2816, 1
  br label %for.inc388

if.end363:                                        ; preds = %for.body359
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %written.i672) #10
  %162 = ptrtoint ptr %written.i672 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -1, ptr %written.i672, align 4, !annotation !258
  %conv.i673 = sext i32 %i.2816 to i64
  %163 = load ptr, ptr @mtd, align 4
  %erasesize.i674 = getelementptr inbounds %struct.mtd_info, ptr %163, i32 0, i32 3
  %164 = ptrtoint ptr %erasesize.i674 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %erasesize.i674, align 8
  %conv1.i675 = zext i32 %165 to i64
  %mul.i676 = mul nsw i64 %conv1.i675, %conv.i673
  %add5.i = add nuw i32 %i.2816, 1
  %conv6.i = sext i32 %add5.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %if.end38.i.for.body.i_crit_edge, %if.end363
  %k.063.i = phi i32 [ 1, %if.end363 ], [ %inc.i, %if.end38.i.for.body.i_crit_edge ]
  %addr.062.i = phi i64 [ %mul.i676, %if.end363 ], [ %add41.i, %if.end38.i.for.body.i_crit_edge ]
  %166 = load i32, ptr @subpgsize, align 4
  %mul3.i = mul i32 %166, %k.063.i
  %conv4.i = sext i32 %mul3.i to i64
  %add.i677 = add i64 %addr.062.i, %conv4.i
  %167 = load ptr, ptr @mtd, align 4
  %erasesize7.i = getelementptr inbounds %struct.mtd_info, ptr %167, i32 0, i32 3
  %168 = ptrtoint ptr %erasesize7.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %erasesize7.i, align 8
  %conv8.i = zext i32 %169 to i64
  %mul9.i = mul nsw i64 %conv8.i, %conv6.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i677, i64 %mul9.i)
  %cmp10.i = icmp sgt i64 %add.i677, %mul9.i
  br i1 %cmp10.i, label %for.body.i.if.end373_crit_edge, label %if.end.i680

for.body.i.if.end373_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end373

if.end.i680:                                      ; preds = %for.body.i
  %170 = load ptr, ptr @writebuf, align 4
  call void @prandom_bytes_state(ptr noundef nonnull @rnd_state, ptr noundef %170, i32 noundef %mul3.i) #10
  %171 = load ptr, ptr @mtd, align 4
  %172 = load i32, ptr @subpgsize, align 4
  %mul13.i = mul i32 %172, %k.063.i
  %173 = load ptr, ptr @writebuf, align 4
  %call.i678 = call i32 @mtd_write(ptr noundef %171, i64 noundef %addr.062.i, i32 noundef %mul13.i, ptr noundef nonnull %written.i672, ptr noundef %173) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i678)
  %tobool.not.i679 = icmp eq i32 %call.i678, 0
  br i1 %tobool.not.i679, label %lor.rhs.i681, label %if.end.i680.do.end.i683_crit_edge, !prof !256

if.end.i680.do.end.i683_crit_edge:                ; preds = %if.end.i680
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i683

lor.rhs.i681:                                     ; preds = %if.end.i680
  %174 = ptrtoint ptr %written.i672 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %written.i672, align 4
  %176 = load i32, ptr @subpgsize, align 4
  %mul14.i = mul i32 %176, %k.063.i
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %mul14.i)
  %cmp15.not.i = icmp eq i32 %175, %mul14.i
  br i1 %cmp15.not.i, label %if.end38.i, label %lor.rhs.i681.do.end.i683_crit_edge, !prof !256

lor.rhs.i681.do.end.i683_crit_edge:               ; preds = %lor.rhs.i681
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i683

do.end.i683:                                      ; preds = %lor.rhs.i681.do.end.i683_crit_edge, %if.end.i680.do.end.i683_crit_edge
  %spec.select.i682 = phi i32 [ %call.i678, %if.end.i680.do.end.i683_crit_edge ], [ -1, %lor.rhs.i681.do.end.i683_crit_edge ]
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i64 noundef %addr.062.i) #13
  %177 = ptrtoint ptr %written.i672 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %written.i672, align 4
  %179 = load i32, ptr @subpgsize, align 4
  %mul21.i = mul i32 %179, %k.063.i
  call void @__sanitizer_cov_trace_cmp4(i32 %178, i32 %mul21.i)
  %cmp22.not.i = icmp eq i32 %178, %mul21.i
  br i1 %cmp22.not.i, label %do.end.i683.write_eraseblock2.exit_crit_edge, label %do.end27.i

do.end.i683.write_eraseblock2.exit_crit_edge:     ; preds = %do.end.i683
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_eraseblock2.exit

do.end27.i:                                       ; preds = %do.end.i683
  call void @__sanitizer_cov_trace_pc() #12
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %mul21.i) #13
  %180 = ptrtoint ptr %written.i672 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %written.i672, align 4
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %181) #13
  br label %write_eraseblock2.exit

if.end38.i:                                       ; preds = %lor.rhs.i681
  %conv40.i = sext i32 %175 to i64
  %add41.i = add i64 %addr.062.i, %conv40.i
  %inc.i = add nuw nsw i32 %k.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 33
  br i1 %exitcond.not.i, label %if.end38.i.if.end373_crit_edge, label %if.end38.i.for.body.i_crit_edge

if.end38.i.for.body.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end38.i.if.end373_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end373

write_eraseblock2.exit:                           ; preds = %do.end27.i, %do.end.i683.write_eraseblock2.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %written.i672) #10
  br label %out

if.end373:                                        ; preds = %if.end38.i.if.end373_crit_edge, %for.body.i.if.end373_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %written.i672) #10
  %rem374 = and i32 %i.2816, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem374)
  %cmp375 = icmp eq i32 %rem374, 0
  br i1 %cmp375, label %do.end380, label %if.end373.if.end383_crit_edge

if.end373.if.end383_crit_edge:                    ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end383

do.end380:                                        ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #12
  %call382 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %i.2816) #13
  br label %if.end383

if.end383:                                        ; preds = %do.end380, %if.end373.if.end383_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.76, i32 noundef 7, i32 noundef 0) #10
  %call.i.i685 = call i32 @__cond_resched() #10
  %182 = call i32 @llvm.read_register.i32(metadata !246) #10
  %and.i.i686 = and i32 %182, -16384
  %183 = inttoptr i32 %and.i.i686 to ptr
  %task.i687 = getelementptr inbounds %struct.thread_info, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %task.i687 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %task.i687, align 8
  %stack.i.i.i688 = getelementptr inbounds %struct.task_struct, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %stack.i.i.i688 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %stack.i.i.i688, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load volatile i32, ptr %187, align 4
  %190 = and i32 %189, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool.not.i.i689 = icmp eq i32 %190, 0
  br i1 %tobool.not.i.i689, label %signal_pending.exit.i692, label %if.end383.mtdtest_relax.exit696_crit_edge, !prof !256

if.end383.mtdtest_relax.exit696_crit_edge:        ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit696

signal_pending.exit.i692:                         ; preds = %if.end383
  %191 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %187, align 4
  %and1.i.i.i.i.i.i690 = and i32 %192, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i690)
  %tobool.not.i691 = icmp eq i32 %and1.i.i.i.i.i.i690, 0
  br i1 %tobool.not.i691, label %signal_pending.exit.i692.for.inc388_crit_edge, label %signal_pending.exit.i692.mtdtest_relax.exit696_crit_edge

signal_pending.exit.i692.mtdtest_relax.exit696_crit_edge: ; preds = %signal_pending.exit.i692
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit696

signal_pending.exit.i692.for.inc388_crit_edge:    ; preds = %signal_pending.exit.i692
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc388

mtdtest_relax.exit696:                            ; preds = %signal_pending.exit.i692.mtdtest_relax.exit696_crit_edge, %if.end383.mtdtest_relax.exit696_crit_edge
  %call4.i693 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #13
  br label %out

for.inc388:                                       ; preds = %signal_pending.exit.i692.for.inc388_crit_edge, %for.body359.for.inc388_crit_edge
  %inc389.pre-phi = phi i32 [ %.pre837, %for.body359.for.inc388_crit_edge ], [ %add5.i, %signal_pending.exit.i692.for.inc388_crit_edge ]
  %193 = load i32, ptr @ebcnt, align 4
  %cmp357 = icmp ult i32 %inc389.pre-phi, %193
  br i1 %cmp357, label %for.inc388.for.body359_crit_edge, label %for.inc388.do.end393_crit_edge

for.inc388.do.end393_crit_edge:                   ; preds = %for.inc388
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end393

for.inc388.for.body359_crit_edge:                 ; preds = %for.inc388
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body359

do.end393:                                        ; preds = %for.inc388.do.end393_crit_edge, %if.end350.do.end393_crit_edge
  %i.2.lcssa = phi i32 [ 0, %if.end350.do.end393_crit_edge ], [ %inc389.pre-phi, %for.inc388.do.end393_crit_edge ]
  %call395 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %i.2.lcssa) #13
  store i32 3075, ptr @rnd_state, align 4
  store i32 3075, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 1), align 4
  store i32 3075, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 2), align 4
  store i32 3075, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 3), align 4
  %194 = call i32 @llvm.read_register.i32(metadata !246) #10
  %and.i.i.i697 = and i32 %194, -16384
  %195 = inttoptr i32 %and.i.i.i697 to ptr
  %cpu.i.i698 = getelementptr inbounds %struct.thread_info, ptr %195, i32 0, i32 3
  %196 = ptrtoint ptr %cpu.i.i698 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %cpu.i.i698, align 4
  %arrayidx.i.i699 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %197
  %198 = ptrtoint ptr %arrayidx.i.i699 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx.i.i699, align 4
  %add.i10.i700 = add i32 %199, ptrtoint (ptr @net_rand_noise to i32)
  %200 = inttoptr i32 %add.i10.i700 to ptr
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %200, align 4
  %xor.i.i701 = xor i32 %202, ptrtoint (ptr @rnd_state to i32)
  %add8.i.i702 = add i32 %xor.i.i701, 3075
  %or.i1.i.i703 = call i32 @llvm.fshl.i32(i32 %add8.i.i702, i32 %add8.i.i702, i32 16) #10
  %203 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %or.i1.i.i703, ptr %200, align 4
  %call400 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #13
  %204 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp402819.not = icmp eq i32 %204, 0
  br i1 %cmp402819.not, label %do.end393.do.end438_crit_edge, label %do.end393.for.body404_crit_edge

do.end393.for.body404_crit_edge:                  ; preds = %do.end393
  br label %for.body404

do.end393.do.end438_crit_edge:                    ; preds = %do.end393
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end438

for.body404:                                      ; preds = %for.inc433.for.body404_crit_edge, %do.end393.for.body404_crit_edge
  %i.3820 = phi i32 [ %inc434.pre-phi, %for.inc433.for.body404_crit_edge ], [ 0, %do.end393.for.body404_crit_edge ]
  %205 = load ptr, ptr @bbt, align 4
  %arrayidx405 = getelementptr i8, ptr %205, i32 %i.3820
  %206 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx405, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool406.not = icmp eq i8 %207, 0
  br i1 %tobool406.not, label %if.end408, label %for.body404.for.inc433_crit_edge

for.body404.for.inc433_crit_edge:                 ; preds = %for.body404
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = add nuw i32 %i.3820, 1
  br label %for.inc433

if.end408:                                        ; preds = %for.body404
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read.i704) #10
  %208 = ptrtoint ptr %read.i704 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 -1, ptr %read.i704, align 4, !annotation !258
  %conv.i705 = sext i32 %i.3820 to i64
  %209 = load ptr, ptr @mtd, align 4
  %erasesize.i706 = getelementptr inbounds %struct.mtd_info, ptr %209, i32 0, i32 3
  %210 = ptrtoint ptr %erasesize.i706 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %erasesize.i706, align 8
  %conv1.i707 = zext i32 %211 to i64
  %mul.i708 = mul nsw i64 %conv1.i707, %conv.i705
  %add5.i709 = add nuw i32 %i.3820, 1
  %conv6.i710 = sext i32 %add5.i709 to i64
  br label %for.body.i718

for.body.i718:                                    ; preds = %if.end52.i.for.body.i718_crit_edge, %if.end408
  %k.084.i = phi i32 [ 1, %if.end408 ], [ %inc.i728, %if.end52.i.for.body.i718_crit_edge ]
  %addr.082.i = phi i64 [ %mul.i708, %if.end408 ], [ %add55.i, %if.end52.i.for.body.i718_crit_edge ]
  %212 = load i32, ptr @subpgsize, align 4
  %mul3.i711 = mul i32 %212, %k.084.i
  %conv4.i712 = sext i32 %mul3.i711 to i64
  %add.i713 = add i64 %addr.082.i, %conv4.i712
  %213 = load ptr, ptr @mtd, align 4
  %erasesize7.i714 = getelementptr inbounds %struct.mtd_info, ptr %213, i32 0, i32 3
  %214 = ptrtoint ptr %erasesize7.i714 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %erasesize7.i714, align 8
  %conv8.i715 = zext i32 %215 to i64
  %mul9.i716 = mul nsw i64 %conv8.i715, %conv6.i710
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i713, i64 %mul9.i716)
  %cmp10.i717 = icmp sgt i64 %add.i713, %mul9.i716
  br i1 %cmp10.i717, label %for.body.i718.verify_eraseblock2.exit.thread_crit_edge, label %if.end.i721

for.body.i718.verify_eraseblock2.exit.thread_crit_edge: ; preds = %for.body.i718
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock2.exit.thread

if.end.i721:                                      ; preds = %for.body.i718
  %216 = load ptr, ptr @writebuf, align 4
  call void @prandom_bytes_state(ptr noundef nonnull @rnd_state, ptr noundef %216, i32 noundef %mul3.i711) #10
  %217 = load ptr, ptr @readbuf, align 4
  %218 = load i32, ptr @subpgsize, align 4
  %mul13.i719 = mul i32 %218, %k.084.i
  %219 = call ptr @memset(ptr %217, i32 0, i32 %mul13.i719)
  %220 = load ptr, ptr @mtd, align 4
  %call.i720 = call i32 @mtd_read(ptr noundef %220, i64 noundef %addr.082.i, i32 noundef %mul13.i719, ptr noundef nonnull %read.i704, ptr noundef %217) #10
  %221 = zext i32 %call.i720 to i64
  call void @__sanitizer_cov_trace_switch(i64 %221, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %call.i720, label %verify_eraseblock2.exit [
    i32 0, label %lor.rhs.i722
    i32 -117, label %land.lhs.true.i723
  ], !prof !259

lor.rhs.i722:                                     ; preds = %if.end.i721
  %222 = ptrtoint ptr %read.i704 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %read.i704, align 4
  %224 = load i32, ptr @subpgsize, align 4
  %mul15.i = mul i32 %224, %k.084.i
  call void @__sanitizer_cov_trace_cmp4(i32 %223, i32 %mul15.i)
  %cmp16.not.i = icmp eq i32 %223, %mul15.i
  br i1 %cmp16.not.i, label %lor.rhs.i722.if.end35.i_crit_edge, label %lor.rhs.i722.verify_eraseblock2.exit.thread774_crit_edge, !prof !256

lor.rhs.i722.verify_eraseblock2.exit.thread774_crit_edge: ; preds = %lor.rhs.i722
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock2.exit.thread774

lor.rhs.i722.if.end35.i_crit_edge:                ; preds = %lor.rhs.i722
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

land.lhs.true.i723:                               ; preds = %if.end.i721
  %225 = ptrtoint ptr %read.i704 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %read.i704, align 4
  %227 = load i32, ptr @subpgsize, align 4
  %mul23.i = mul i32 %227, %k.084.i
  call void @__sanitizer_cov_trace_cmp4(i32 %226, i32 %mul23.i)
  %cmp24.i = icmp eq i32 %226, %mul23.i
  br i1 %cmp24.i, label %do.end.i724, label %land.lhs.true.i723.verify_eraseblock2.exit.thread774_crit_edge

land.lhs.true.i723.verify_eraseblock2.exit.thread774_crit_edge: ; preds = %land.lhs.true.i723
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock2.exit.thread774

do.end.i724:                                      ; preds = %land.lhs.true.i723
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i64 noundef %addr.082.i) #13
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end.i724, %lor.rhs.i722.if.end35.i_crit_edge
  %228 = load ptr, ptr @readbuf, align 4
  %229 = load ptr, ptr @writebuf, align 4
  %230 = load i32, ptr @subpgsize, align 4
  %mul36.i = mul i32 %230, %k.084.i
  %bcmp.i726 = call i32 @bcmp(ptr %228, ptr %229, i32 %mul36.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i726)
  %tobool38.not.i = icmp eq i32 %bcmp.i726, 0
  br i1 %tobool38.not.i, label %if.end35.i.if.end52.i_crit_edge, label %do.end48.i, !prof !256

if.end35.i.if.end52.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

do.end48.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  %call50.i727 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i64 noundef %addr.082.i) #13
  %231 = load i32, ptr @errcnt, align 4
  %add51.i = add i32 %231, 1
  store i32 %add51.i, ptr @errcnt, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end48.i, %if.end35.i.if.end52.i_crit_edge
  %232 = load i32, ptr @subpgsize, align 4
  %mul53.i = mul i32 %232, %k.084.i
  %conv54.i = sext i32 %mul53.i to i64
  %add55.i = add i64 %addr.082.i, %conv54.i
  %inc.i728 = add nuw nsw i32 %k.084.i, 1
  %exitcond.not.i729 = icmp eq i32 %inc.i728, 33
  br i1 %exitcond.not.i729, label %if.end52.i.verify_eraseblock2.exit.thread_crit_edge, label %if.end52.i.for.body.i718_crit_edge

if.end52.i.for.body.i718_crit_edge:               ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i718

if.end52.i.verify_eraseblock2.exit.thread_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock2.exit.thread

verify_eraseblock2.exit.thread:                   ; preds = %if.end52.i.verify_eraseblock2.exit.thread_crit_edge, %for.body.i718.verify_eraseblock2.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i704) #10
  %rem419 = and i32 %i.3820, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem419)
  %cmp420 = icmp eq i32 %rem419, 0
  br i1 %cmp420, label %do.end425, label %verify_eraseblock2.exit.thread.if.end428_crit_edge

verify_eraseblock2.exit.thread.if.end428_crit_edge: ; preds = %verify_eraseblock2.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end428

verify_eraseblock2.exit.thread774:                ; preds = %land.lhs.true.i723.verify_eraseblock2.exit.thread774_crit_edge, %lor.rhs.i722.verify_eraseblock2.exit.thread774_crit_edge
  %spec.select.i725.ph = phi i32 [ -117, %land.lhs.true.i723.verify_eraseblock2.exit.thread774_crit_edge ], [ -1, %lor.rhs.i722.verify_eraseblock2.exit.thread774_crit_edge ]
  %call32.i776 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i64 noundef %addr.082.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i704) #10
  br label %out

verify_eraseblock2.exit:                          ; preds = %if.end.i721
  call void @__sanitizer_cov_trace_pc() #12
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i64 noundef %addr.082.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i704) #10
  br label %out

do.end425:                                        ; preds = %verify_eraseblock2.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  %call427 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %i.3820) #13
  br label %if.end428

if.end428:                                        ; preds = %do.end425, %verify_eraseblock2.exit.thread.if.end428_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.76, i32 noundef 7, i32 noundef 0) #10
  %call.i.i731 = call i32 @__cond_resched() #10
  %233 = call i32 @llvm.read_register.i32(metadata !246) #10
  %and.i.i732 = and i32 %233, -16384
  %234 = inttoptr i32 %and.i.i732 to ptr
  %task.i733 = getelementptr inbounds %struct.thread_info, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %task.i733 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %task.i733, align 8
  %stack.i.i.i734 = getelementptr inbounds %struct.task_struct, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %stack.i.i.i734 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %stack.i.i.i734, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load volatile i32, ptr %238, align 4
  %241 = and i32 %240, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool.not.i.i735 = icmp eq i32 %241, 0
  br i1 %tobool.not.i.i735, label %signal_pending.exit.i738, label %if.end428.mtdtest_relax.exit742_crit_edge, !prof !256

if.end428.mtdtest_relax.exit742_crit_edge:        ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit742

signal_pending.exit.i738:                         ; preds = %if.end428
  %242 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load volatile i32, ptr %238, align 4
  %and1.i.i.i.i.i.i736 = and i32 %243, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i736)
  %tobool.not.i737 = icmp eq i32 %and1.i.i.i.i.i.i736, 0
  br i1 %tobool.not.i737, label %signal_pending.exit.i738.for.inc433_crit_edge, label %signal_pending.exit.i738.mtdtest_relax.exit742_crit_edge

signal_pending.exit.i738.mtdtest_relax.exit742_crit_edge: ; preds = %signal_pending.exit.i738
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit742

signal_pending.exit.i738.for.inc433_crit_edge:    ; preds = %signal_pending.exit.i738
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc433

mtdtest_relax.exit742:                            ; preds = %signal_pending.exit.i738.mtdtest_relax.exit742_crit_edge, %if.end428.mtdtest_relax.exit742_crit_edge
  %call4.i739 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #13
  br label %out

for.inc433:                                       ; preds = %signal_pending.exit.i738.for.inc433_crit_edge, %for.body404.for.inc433_crit_edge
  %inc434.pre-phi = phi i32 [ %.pre, %for.body404.for.inc433_crit_edge ], [ %add5.i709, %signal_pending.exit.i738.for.inc433_crit_edge ]
  %244 = load i32, ptr @ebcnt, align 4
  %cmp402 = icmp ult i32 %inc434.pre-phi, %244
  br i1 %cmp402, label %for.inc433.for.body404_crit_edge, label %for.inc433.do.end438_crit_edge

for.inc433.do.end438_crit_edge:                   ; preds = %for.inc433
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end438

for.inc433.for.body404_crit_edge:                 ; preds = %for.inc433
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body404

do.end438:                                        ; preds = %for.inc433.do.end438_crit_edge, %do.end393.do.end438_crit_edge
  %i.3.lcssa = phi i32 [ 0, %do.end393.do.end438_crit_edge ], [ %inc434.pre-phi, %for.inc433.do.end438_crit_edge ]
  %call440 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %i.3.lcssa) #13
  %245 = load ptr, ptr @mtd, align 4
  %246 = load ptr, ptr @bbt, align 4
  %247 = load i32, ptr @ebcnt, align 4
  %call441 = call i32 @mtdtest_erase_good_eraseblocks(ptr noundef %245, ptr noundef %246, i32 noundef 0, i32 noundef %247) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call441)
  %tobool442.not = icmp eq i32 %call441, 0
  br i1 %tobool442.not, label %if.end444, label %do.end438.out_crit_edge

do.end438.out_crit_edge:                          ; preds = %do.end438
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end444:                                        ; preds = %do.end438
  %call445 = call fastcc i32 @verify_all_eraseblocks_ff()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call445)
  %tobool446.not = icmp eq i32 %call445, 0
  br i1 %tobool446.not, label %do.end451, label %if.end444.out_crit_edge

if.end444.out_crit_edge:                          ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end451:                                        ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #12
  %248 = load i32, ptr @errcnt, align 4
  %call453 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %248) #13
  br label %out

out:                                              ; preds = %do.end451, %if.end444.out_crit_edge, %do.end438.out_crit_edge, %mtdtest_relax.exit742, %verify_eraseblock2.exit, %verify_eraseblock2.exit.thread774, %mtdtest_relax.exit696, %write_eraseblock2.exit, %if.end346.out_crit_edge, %do.end340.out_crit_edge, %mtdtest_relax.exit664, %verify_eraseblock.exit.out_crit_edge, %mtdtest_relax.exit, %write_eraseblock.exit.thread, %if.end254.out_crit_edge, %if.end250.out_crit_edge, %if.end8.i.i.out_crit_edge, %if.end8.i620.out_crit_edge, %if.end224.out_crit_edge, %do.end36
  %err.0 = phi i32 [ %call251, %if.end250.out_crit_edge ], [ %call255, %if.end254.out_crit_edge ], [ -4, %mtdtest_relax.exit ], [ -4, %mtdtest_relax.exit664 ], [ %call343, %do.end340.out_crit_edge ], [ %call347, %if.end346.out_crit_edge ], [ %spec.select.i682, %write_eraseblock2.exit ], [ -4, %mtdtest_relax.exit696 ], [ %call.i720, %verify_eraseblock2.exit ], [ -4, %mtdtest_relax.exit742 ], [ %call441, %do.end438.out_crit_edge ], [ %call445, %if.end444.out_crit_edge ], [ 0, %do.end451 ], [ -12, %if.end8.i.i.out_crit_edge ], [ -12, %if.end8.i620.out_crit_edge ], [ -12, %if.end224.out_crit_edge ], [ 0, %do.end36 ], [ %retval.0.i.ph, %write_eraseblock.exit.thread ], [ %spec.select.i725.ph, %verify_eraseblock2.exit.thread774 ], [ %retval.0.i652, %verify_eraseblock.exit.out_crit_edge ]
  %249 = load ptr, ptr @bbt, align 4
  call void @kfree(ptr noundef %249) #10
  %250 = load ptr, ptr @readbuf, align 4
  call void @kfree(ptr noundef %250) #10
  %251 = load ptr, ptr @writebuf, align 4
  call void @kfree(ptr noundef %251) #10
  %252 = load ptr, ptr @mtd, align 4
  call void @put_mtd_device(ptr noundef %252) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool454.not = icmp eq i32 %err.0, 0
  br i1 %tobool454.not, label %out.do.end464_crit_edge, label %do.end458

out.do.end464_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end464

do.end458:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %call460 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %err.0) #13
  br label %do.end464

do.end464:                                        ; preds = %do.end458, %out.do.end464_crit_edge
  %call466 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end464, %if.then24, %do.end9
  %retval.0 = phi i32 [ -22, %do.end9 ], [ %2, %if.then24 ], [ %err.0, %do.end464 ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
declare dso_local i32 @mtdtest_erase_good_eraseblocks(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @verify_all_eraseblocks_ff() unnamed_addr #5 align 64 {
entry:
  %read.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114) #13
  %0 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp50.not = icmp eq i32 %0, 0
  br i1 %cmp50.not, label %entry.do.end19_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.051 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr @bbt, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %i.051
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read.i) #10
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %read.i, align 4, !annotation !258
  %5 = load ptr, ptr @mtd, align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %erasesize.i, align 8
  %8 = load ptr, ptr @writebuf, align 4
  %9 = load i32, ptr @subpgsize, align 4
  %10 = call ptr @memset(ptr %8, i32 255, i32 %9)
  %11 = load i32, ptr %erasesize.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp56.not.i = icmp ugt i32 %9, %11
  br i1 %cmp56.not.i, label %if.end.verify_eraseblock_ff.exit.thread_crit_edge, label %for.body.preheader.i

if.end.verify_eraseblock_ff.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock_ff.exit.thread

for.body.preheader.i:                             ; preds = %if.end
  %conv1.i = zext i32 %7 to i64
  %conv.i = sext i32 %i.051 to i64
  %mul.i = mul nsw i64 %conv1.i, %conv.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end35.i.for.body.i_crit_edge, %for.body.preheader.i
  %12 = phi i32 [ %27, %if.end35.i.for.body.i_crit_edge ], [ %9, %for.body.preheader.i ]
  %13 = phi ptr [ %28, %if.end35.i.for.body.i_crit_edge ], [ %5, %for.body.preheader.i ]
  %j.059.i = phi i32 [ %inc.i, %if.end35.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %addr.057.i = phi i64 [ %add37.i, %if.end35.i.for.body.i_crit_edge ], [ %mul.i, %for.body.preheader.i ]
  %14 = load ptr, ptr @readbuf, align 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 %12)
  %call.i = call i32 @mtd_read(ptr noundef %13, i64 noundef %addr.057.i, i32 noundef %12, ptr noundef nonnull %read.i, ptr noundef %14) #10
  %16 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %call.i, label %verify_eraseblock_ff.exit [
    i32 0, label %lor.rhs.i
    i32 -117, label %land.lhs.true.i
  ], !prof !259

lor.rhs.i:                                        ; preds = %for.body.i
  %17 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %read.i, align 4
  %19 = load i32, ptr @subpgsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %19)
  %cmp4.not.i = icmp eq i32 %18, %19
  br i1 %cmp4.not.i, label %lor.rhs.i.if.end20.i_crit_edge, label %lor.rhs.i.verify_eraseblock_ff.exit.thread37_crit_edge, !prof !256

lor.rhs.i.verify_eraseblock_ff.exit.thread37_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock_ff.exit.thread37

lor.rhs.i.if.end20.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %20 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %read.i, align 4
  %22 = load i32, ptr @subpgsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %22)
  %cmp10.i = icmp eq i32 %21, %22
  br i1 %cmp10.i, label %do.end.i, label %land.lhs.true.i.verify_eraseblock_ff.exit.thread37_crit_edge

land.lhs.true.i.verify_eraseblock_ff.exit.thread37_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock_ff.exit.thread37

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i64 noundef %addr.057.i) #13
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i, %lor.rhs.i.if.end20.i_crit_edge
  %23 = load ptr, ptr @readbuf, align 4
  %24 = load ptr, ptr @writebuf, align 4
  %25 = load i32, ptr @subpgsize, align 4
  %bcmp.i = call i32 @bcmp(ptr %23, ptr %24, i32 %25) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool22.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end35.i_crit_edge, label %do.end32.i, !prof !256

if.end20.i.if.end35.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

do.end32.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i64 noundef %addr.057.i) #13
  %26 = load i32, ptr @errcnt, align 4
  %add.i = add i32 %26, 1
  store i32 %add.i, ptr @errcnt, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end32.i, %if.end20.i.if.end35.i_crit_edge
  %27 = load i32, ptr @subpgsize, align 4
  %conv36.i = sext i32 %27 to i64
  %add37.i = add i64 %addr.057.i, %conv36.i
  %inc.i = add nuw i32 %j.059.i, 1
  %28 = load ptr, ptr @mtd, align 4
  %erasesize2.i = getelementptr inbounds %struct.mtd_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %erasesize2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %erasesize2.i, align 8
  %div.i = udiv i32 %30, %27
  %cmp.i = icmp ult i32 %inc.i, %div.i
  br i1 %cmp.i, label %if.end35.i.for.body.i_crit_edge, label %if.end35.i.verify_eraseblock_ff.exit.thread_crit_edge

if.end35.i.verify_eraseblock_ff.exit.thread_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock_ff.exit.thread

if.end35.i.for.body.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

verify_eraseblock_ff.exit.thread:                 ; preds = %if.end35.i.verify_eraseblock_ff.exit.thread_crit_edge, %if.end.verify_eraseblock_ff.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i) #10
  %rem = and i32 %i.051, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %do.end9, label %verify_eraseblock_ff.exit.thread.if.end12_crit_edge

verify_eraseblock_ff.exit.thread.if.end12_crit_edge: ; preds = %verify_eraseblock_ff.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

verify_eraseblock_ff.exit.thread37:               ; preds = %land.lhs.true.i.verify_eraseblock_ff.exit.thread37_crit_edge, %lor.rhs.i.verify_eraseblock_ff.exit.thread37_crit_edge
  %spec.select.i.ph = phi i32 [ -117, %land.lhs.true.i.verify_eraseblock_ff.exit.thread37_crit_edge ], [ -1, %lor.rhs.i.verify_eraseblock_ff.exit.thread37_crit_edge ]
  %call18.i39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i64 noundef %addr.057.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i) #10
  br label %cleanup

verify_eraseblock_ff.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i64 noundef %addr.057.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i) #10
  br label %cleanup

do.end9:                                          ; preds = %verify_eraseblock_ff.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %i.051) #13
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %verify_eraseblock_ff.exit.thread.if.end12_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.76, i32 noundef 7, i32 noundef 0) #10
  %call.i.i = call i32 @__cond_resched() #10
  %31 = call i32 @llvm.read_register.i32(metadata !246) #10
  %and.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stack.i.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %39 = and i32 %38, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end12.mtdtest_relax.exit_crit_edge, !prof !256

if.end12.mtdtest_relax.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit

signal_pending.exit.i:                            ; preds = %if.end12
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %36, align 4
  %and1.i.i.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %signal_pending.exit.i.for.inc_crit_edge, label %signal_pending.exit.i.mtdtest_relax.exit_crit_edge

signal_pending.exit.i.mtdtest_relax.exit_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit

signal_pending.exit.i.for.inc_crit_edge:          ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

mtdtest_relax.exit:                               ; preds = %signal_pending.exit.i.mtdtest_relax.exit_crit_edge, %if.end12.mtdtest_relax.exit_crit_edge
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #13
  br label %cleanup

for.inc:                                          ; preds = %signal_pending.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.051, 1
  %42 = load i32, ptr @ebcnt, align 4
  %cmp = icmp ult i32 %inc, %42
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.end19_crit_edge

for.inc.do.end19_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end19:                                         ; preds = %for.inc.do.end19_crit_edge, %entry.do.end19_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.do.end19_crit_edge ], [ %inc, %for.inc.do.end19_crit_edge ]
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %i.0.lcssa) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %mtdtest_relax.exit, %verify_eraseblock_ff.exit, %verify_eraseblock_ff.exit.thread37
  %retval.0 = phi i32 [ 0, %do.end19 ], [ %call.i, %verify_eraseblock_ff.exit ], [ -4, %mtdtest_relax.exit ], [ %spec.select.i.ph, %verify_eraseblock_ff.exit.thread37 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mtd_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_subpage(ptr nocapture noundef readonly %p) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @subpgsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp21 = icmp sgt i32 %0, 0
  br i1 %cmp21, label %entry.for.cond1.preheader_crit_edge, label %entry.for.end11_crit_edge

entry.for.end11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end11

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %do.end8.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %p.addr.023 = phi ptr [ %p.addr.1.lcssa, %do.end8.for.cond1.preheader_crit_edge ], [ %p, %entry.for.cond1.preheader_crit_edge ]
  %i.022 = phi i32 [ %i.1.lcssa, %do.end8.for.cond1.preheader_crit_edge ], [ 0, %entry.for.cond1.preheader_crit_edge ]
  %1 = load i32, ptr @subpgsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.022, i32 %1)
  %cmp215 = icmp slt i32 %i.022, %1
  br i1 %cmp215, label %for.cond1.preheader.do.end_crit_edge, label %for.cond1.preheader.do.end8_crit_edge

for.cond1.preheader.do.end8_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

for.cond1.preheader.do.end_crit_edge:             ; preds = %for.cond1.preheader
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %for.cond1.preheader.do.end_crit_edge
  %p.addr.119 = phi ptr [ %incdec.ptr, %do.end.do.end_crit_edge ], [ %p.addr.023, %for.cond1.preheader.do.end_crit_edge ]
  %i.118 = phi i32 [ %inc, %do.end.do.end_crit_edge ], [ %i.022, %for.cond1.preheader.do.end_crit_edge ]
  %j.017 = phi i32 [ %inc5, %do.end.do.end_crit_edge ], [ 0, %for.cond1.preheader.do.end_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %p.addr.119, i32 1
  %2 = ptrtoint ptr %p.addr.119 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p.addr.119, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %conv) #13
  %inc = add nsw i32 %i.118, 1
  %inc5 = add nuw nsw i32 %j.017, 1
  %4 = load i32, ptr @subpgsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %4)
  %cmp2 = icmp slt i32 %inc, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %j.017)
  %cmp3 = icmp ult i32 %j.017, 31
  %or.cond = select i1 %cmp2, i1 %cmp3, i1 false
  br i1 %or.cond, label %do.end.do.end_crit_edge, label %do.end.do.end8_crit_edge

do.end.do.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end8:                                          ; preds = %do.end.do.end8_crit_edge, %for.cond1.preheader.do.end8_crit_edge
  %i.1.lcssa = phi i32 [ %i.022, %for.cond1.preheader.do.end8_crit_edge ], [ %inc, %do.end.do.end8_crit_edge ]
  %p.addr.1.lcssa = phi ptr [ %p.addr.023, %for.cond1.preheader.do.end8_crit_edge ], [ %incdec.ptr, %do.end.do.end8_crit_edge ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #13
  %5 = load i32, ptr @subpgsize, align 4
  %cmp = icmp slt i32 %i.1.lcssa, %5
  br i1 %cmp, label %do.end8.for.cond1.preheader_crit_edge, label %do.end8.for.end11_crit_edge

do.end8.for.end11_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end11

do.end8.for.cond1.preheader_crit_edge:            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader

for.end11:                                        ; preds = %do.end8.for.end11_crit_edge, %entry.for.end11_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !137, !138, !140, !141, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !178, !179, !181, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !206, !208, !209, !211, !212, !214, !215, !216, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !243, !244}
!llvm.named.register.sp = !{!246}
!llvm.module.flags = !{!247, !248, !249, !250, !251, !252, !253, !254}
!llvm.ident = !{!255}

!0 = !{ptr @__param_dev, !1, !"__param_dev", i1 false, i1 false}
!1 = !{!"../drivers/mtd/tests/subpagetest.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_devtype201, !1, !"__UNIQUE_ID_devtype201", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dev202, !4, !"__UNIQUE_ID_dev202", i1 false, i1 false}
!4 = !{!"../drivers/mtd/tests/subpagetest.c", i32 24, i32 1}
!5 = !{ptr @__UNIQUE_ID_description203, !6, !"__UNIQUE_ID_description203", i1 false, i1 false}
!6 = !{!"../drivers/mtd/tests/subpagetest.c", i32 435, i32 1}
!7 = !{ptr @__UNIQUE_ID_author204, !8, !"__UNIQUE_ID_author204", i1 false, i1 false}
!8 = !{!"../drivers/mtd/tests/subpagetest.c", i32 436, i32 1}
!9 = !{ptr @__UNIQUE_ID_license205, !10, !"__UNIQUE_ID_license205", i1 false, i1 false}
!10 = !{!"../drivers/mtd/tests/subpagetest.c", i32 437, i32 1}
!11 = !{ptr @___asan_gen_.141, !1, !"__param_str_dev", i1 false, i1 false}
!12 = !{ptr @dev, !13, !"dev", i1 false, i1 false}
!13 = !{!"../drivers/mtd/tests/subpagetest.c", i32 22, i32 12}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/tests/subpagetest.c", i32 274, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mtd_subpagetest_init._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @mtd_subpagetest_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/tests/subpagetest.c", i32 275, i32 2}
!22 = !{ptr @mtd_subpagetest_init._entry.3, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mtd_subpagetest_init._entry_ptr.5, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/tests/subpagetest.c", i32 278, i32 3}
!26 = !{ptr @mtd_subpagetest_init._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mtd_subpagetest_init._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/tests/subpagetest.c", i32 279, i32 3}
!30 = !{ptr @mtd_subpagetest_init._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtd_subpagetest_init._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/tests/subpagetest.c", i32 283, i32 2}
!34 = !{ptr @mtd_subpagetest_init._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mtd_subpagetest_init._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/tests/subpagetest.c", i32 288, i32 3}
!38 = !{ptr @mtd_subpagetest_init._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mtd_subpagetest_init._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/tests/subpagetest.c", i32 293, i32 3}
!42 = !{ptr @mtd_subpagetest_init._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtd_subpagetest_init._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/tests/subpagetest.c", i32 303, i32 2}
!46 = !{ptr @mtd_subpagetest_init._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mtd_subpagetest_init._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/tests/subpagetest.c", i32 329, i32 2}
!50 = !{ptr @mtd_subpagetest_init._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mtd_subpagetest_init._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/tests/subpagetest.c", i32 338, i32 4}
!54 = !{ptr @mtd_subpagetest_init._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mtd_subpagetest_init._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/tests/subpagetest.c", i32 344, i32 2}
!58 = !{ptr @mtd_subpagetest_init._entry.30, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtd_subpagetest_init._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/tests/subpagetest.c", i32 347, i32 2}
!62 = !{ptr @mtd_subpagetest_init._entry.33, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mtd_subpagetest_init._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/tests/subpagetest.c", i32 355, i32 4}
!66 = !{ptr @mtd_subpagetest_init._entry.36, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mtd_subpagetest_init._entry_ptr.38, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/tests/subpagetest.c", i32 361, i32 2}
!70 = !{ptr @mtd_subpagetest_init._entry.39, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mtd_subpagetest_init._entry_ptr.41, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @mtd_subpagetest_init._entry.42, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/mtd/tests/subpagetest.c", i32 373, i32 2}
!74 = !{ptr @mtd_subpagetest_init._entry_ptr.43, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @mtd_subpagetest_init._entry.44, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/mtd/tests/subpagetest.c", i32 381, i32 4}
!77 = !{ptr @mtd_subpagetest_init._entry_ptr.45, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @mtd_subpagetest_init._entry.46, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../drivers/mtd/tests/subpagetest.c", i32 387, i32 2}
!80 = !{ptr @mtd_subpagetest_init._entry_ptr.47, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @mtd_subpagetest_init._entry.48, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/mtd/tests/subpagetest.c", i32 391, i32 2}
!83 = !{ptr @mtd_subpagetest_init._entry_ptr.49, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @mtd_subpagetest_init._entry.50, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/mtd/tests/subpagetest.c", i32 399, i32 4}
!86 = !{ptr @mtd_subpagetest_init._entry_ptr.51, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @mtd_subpagetest_init._entry.52, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/mtd/tests/subpagetest.c", i32 405, i32 2}
!89 = !{ptr @mtd_subpagetest_init._entry_ptr.53, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.55, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/tests/subpagetest.c", i32 415, i32 2}
!92 = !{ptr @mtd_subpagetest_init._entry.54, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @mtd_subpagetest_init._entry_ptr.56, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.58, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/tests/subpagetest.c", i32 423, i32 3}
!96 = !{ptr @mtd_subpagetest_init._entry.57, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @mtd_subpagetest_init._entry_ptr.59, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @mtd_subpagetest_init._entry.60, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/mtd/tests/subpagetest.c", i32 424, i32 2}
!100 = !{ptr @mtd_subpagetest_init._entry_ptr.61, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @mtd, !102, !"mtd", i1 false, i1 false}
!102 = !{!"../drivers/mtd/tests/subpagetest.c", i32 26, i32 25}
!103 = !{ptr @subpgsize, !104, !"subpgsize", i1 false, i1 false}
!104 = !{!"../drivers/mtd/tests/subpagetest.c", i32 31, i32 12}
!105 = !{ptr @ebcnt, !106, !"ebcnt", i1 false, i1 false}
!106 = !{!"../drivers/mtd/tests/subpagetest.c", i32 33, i32 12}
!107 = distinct !{null, !108, !"pgcnt", i1 false, i1 false}
!108 = !{!"../drivers/mtd/tests/subpagetest.c", i32 34, i32 12}
!109 = !{ptr @bufsize, !110, !"bufsize", i1 false, i1 false}
!110 = !{!"../drivers/mtd/tests/subpagetest.c", i32 32, i32 12}
!111 = !{ptr @writebuf, !112, !"writebuf", i1 false, i1 false}
!112 = !{!"../drivers/mtd/tests/subpagetest.c", i32 27, i32 23}
!113 = !{ptr @readbuf, !114, !"readbuf", i1 false, i1 false}
!114 = !{!"../drivers/mtd/tests/subpagetest.c", i32 28, i32 23}
!115 = !{ptr @bbt, !116, !"bbt", i1 false, i1 false}
!116 = !{!"../drivers/mtd/tests/subpagetest.c", i32 29, i32 23}
!117 = !{ptr @rnd_state, !118, !"rnd_state", i1 false, i1 false}
!118 = !{!"../drivers/mtd/tests/subpagetest.c", i32 36, i32 25}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mtd/tests/subpagetest.c", i32 52, i32 3}
!121 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @write_eraseblock._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @write_eraseblock._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mtd/tests/subpagetest.c", i32 55, i32 4}
!126 = !{ptr @write_eraseblock._entry.64, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @write_eraseblock._entry_ptr.66, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mtd/tests/subpagetest.c", i32 56, i32 4}
!130 = !{ptr @write_eraseblock._entry.67, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @write_eraseblock._entry_ptr.69, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @write_eraseblock._entry.70, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/mtd/tests/subpagetest.c", i32 66, i32 3}
!134 = !{ptr @write_eraseblock._entry_ptr.71, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @write_eraseblock._entry.72, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/mtd/tests/subpagetest.c", i32 69, i32 4}
!137 = !{ptr @write_eraseblock._entry_ptr.73, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @write_eraseblock._entry.74, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/mtd/tests/subpagetest.c", i32 70, i32 4}
!140 = !{ptr @write_eraseblock._entry_ptr.75, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.76, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mtd/tests/mtd_test.h", i32 7, i32 2}
!143 = !{ptr @.str.77, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mtd/tests/mtd_test.h", i32 9, i32 3}
!145 = !{ptr @.str.78, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @mtdtest_relax._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @mtdtest_relax._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mtd/tests/subpagetest.c", i32 128, i32 4}
!150 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @verify_eraseblock._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @verify_eraseblock._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.82, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mtd/tests/subpagetest.c", i32 132, i32 4}
!155 = !{ptr @verify_eraseblock._entry.81, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @verify_eraseblock._entry_ptr.83, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.85, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mtd/tests/subpagetest.c", i32 138, i32 3}
!159 = !{ptr @verify_eraseblock._entry.84, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @verify_eraseblock._entry_ptr.86, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.88, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mtd/tests/subpagetest.c", i32 140, i32 3}
!163 = !{ptr @verify_eraseblock._entry.87, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @verify_eraseblock._entry_ptr.89, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.91, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mtd/tests/subpagetest.c", i32 142, i32 3}
!167 = !{ptr @verify_eraseblock._entry.90, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @verify_eraseblock._entry_ptr.92, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.94, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mtd/tests/subpagetest.c", i32 144, i32 3}
!171 = !{ptr @verify_eraseblock._entry.93, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @verify_eraseblock._entry_ptr.95, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @verify_eraseblock._entry.96, !174, !"_entry", i1 false, i1 false}
!174 = !{!"../drivers/mtd/tests/subpagetest.c", i32 155, i32 4}
!175 = !{ptr @verify_eraseblock._entry_ptr.97, !174, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @verify_eraseblock._entry.98, !177, !"_entry", i1 false, i1 false}
!177 = !{!"../drivers/mtd/tests/subpagetest.c", i32 159, i32 4}
!178 = !{ptr @verify_eraseblock._entry_ptr.99, !177, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.101, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/mtd/tests/subpagetest.c", i32 165, i32 3}
!181 = !{ptr @verify_eraseblock._entry.100, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @verify_eraseblock._entry_ptr.102, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @verify_eraseblock._entry.103, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../drivers/mtd/tests/subpagetest.c", i32 167, i32 3}
!185 = !{ptr @verify_eraseblock._entry_ptr.104, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @verify_eraseblock._entry.105, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/mtd/tests/subpagetest.c", i32 169, i32 3}
!188 = !{ptr @verify_eraseblock._entry_ptr.106, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @verify_eraseblock._entry.107, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/mtd/tests/subpagetest.c", i32 171, i32 3}
!191 = !{ptr @verify_eraseblock._entry_ptr.108, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.109, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/mtd/tests/subpagetest.c", i32 112, i32 4}
!194 = !{ptr @.str.110, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @print_subpage._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @print_subpage._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.112, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/mtd/tests/subpagetest.c", i32 113, i32 3}
!199 = !{ptr @print_subpage._entry.111, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @print_subpage._entry_ptr.113, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.114, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/mtd/tests/subpagetest.c", i32 250, i32 2}
!203 = !{ptr @.str.115, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @verify_all_eraseblocks_ff._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @verify_all_eraseblocks_ff._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @verify_all_eraseblocks_ff._entry.116, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../drivers/mtd/tests/subpagetest.c", i32 258, i32 4}
!208 = !{ptr @verify_all_eraseblocks_ff._entry_ptr.117, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @verify_all_eraseblocks_ff._entry.118, !210, !"_entry", i1 false, i1 false}
!210 = !{!"../drivers/mtd/tests/subpagetest.c", i32 264, i32 2}
!211 = !{ptr @verify_all_eraseblocks_ff._entry_ptr.119, !210, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.120, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/mtd/tests/subpagetest.c", i32 225, i32 5}
!214 = !{ptr @verify_eraseblock_ff._entry, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @verify_eraseblock_ff._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @verify_eraseblock_ff._entry.121, !217, !"_entry", i1 false, i1 false}
!217 = !{!"../drivers/mtd/tests/subpagetest.c", i32 229, i32 5}
!218 = !{ptr @verify_eraseblock_ff._entry_ptr.122, !217, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.124, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/mtd/tests/subpagetest.c", i32 235, i32 4}
!221 = !{ptr @verify_eraseblock_ff._entry.123, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @verify_eraseblock_ff._entry_ptr.125, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.126, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/mtd/tests/subpagetest.c", i32 90, i32 4}
!225 = !{ptr @write_eraseblock2._entry, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @write_eraseblock2._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @write_eraseblock2._entry.127, !228, !"_entry", i1 false, i1 false}
!228 = !{!"../drivers/mtd/tests/subpagetest.c", i32 93, i32 5}
!229 = !{ptr @write_eraseblock2._entry_ptr.128, !228, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.130, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/mtd/tests/subpagetest.c", i32 95, i32 5}
!232 = !{ptr @write_eraseblock2._entry.129, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @write_eraseblock2._entry_ptr.131, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.132, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/mtd/tests/subpagetest.c", i32 192, i32 5}
!236 = !{ptr @verify_eraseblock2._entry, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @verify_eraseblock2._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @verify_eraseblock2._entry.133, !239, !"_entry", i1 false, i1 false}
!239 = !{!"../drivers/mtd/tests/subpagetest.c", i32 196, i32 5}
!240 = !{ptr @verify_eraseblock2._entry_ptr.134, !239, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @verify_eraseblock2._entry.135, !242, !"_entry", i1 false, i1 false}
!242 = !{!"../drivers/mtd/tests/subpagetest.c", i32 202, i32 4}
!243 = !{ptr @verify_eraseblock2._entry_ptr.136, !242, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @errcnt, !245, !"errcnt", i1 false, i1 false}
!245 = !{!"../drivers/mtd/tests/subpagetest.c", i32 35, i32 12}
!246 = !{!"sp"}
!247 = !{i32 1, !"wchar_size", i32 2}
!248 = !{i32 1, !"min_enum_size", i32 4}
!249 = !{i32 8, !"branch-target-enforcement", i32 0}
!250 = !{i32 8, !"sign-return-address", i32 0}
!251 = !{i32 8, !"sign-return-address-all", i32 0}
!252 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!253 = !{i32 7, !"uwtable", i32 1}
!254 = !{i32 7, !"frame-pointer", i32 2}
!255 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!256 = !{!"branch_weights", i32 2000, i32 1}
!257 = !{i64 2148206968, i64 2148207248, i64 2148207582, i64 2148207916}
!258 = !{!"auto-init"}
!259 = !{!"branch_weights", i32 1, i32 4000, i32 1}
