; ModuleID = '/llk/IR_all_yes/drivers/mtd/tests/oobtest.c_pt.bc'
source_filename = "../drivers/mtd/tests/oobtest.c"
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
@__param_dev = internal constant %struct.kernel_param { ptr @___asan_gen_.189, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @dev } }, section "__param", align 4
@__UNIQUE_ID_devtype201 = internal constant [17 x i8] c"parmtype=dev:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dev202 = internal constant [34 x i8] c"parm=dev:MTD device number to use\00", section ".modinfo", align 1
@bitflip_limit = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_bitflip_limit = internal constant %struct.kernel_param { ptr @___asan_gen_.192, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @bitflip_limit } }, section "__param", align 4
@__UNIQUE_ID_bitflip_limittype203 = internal constant [27 x i8] c"parmtype=bitflip_limit:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bitflip_limit204 = internal constant [50 x i8] c"parm=bitflip_limit:Max. allowed bitflips per page\00", section ".modinfo", align 1
@__UNIQUE_ID_description205 = internal constant [36 x i8] c"description=Out-of-band test module\00", section ".modinfo", align 1
@__UNIQUE_ID_author206 = internal constant [21 x i8] c"author=Adrian Hunter\00", section ".modinfo", align 1
@__UNIQUE_ID_license207 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@mtd_oobtest_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtd_oobtest_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mtd/tests/oobtest.c\00", [36 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr = internal global ptr @mtd_oobtest_init._entry, section ".printk_index", align 4
@mtd_oobtest_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016=================================================\0A\00", [43 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.5 = internal global ptr @mtd_oobtest_init._entry.3, section ".printk_index", align 4
@mtd_oobtest_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016mtd_oobtest: Please specify a valid mtd-device via module parameter\0A\00", [57 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.8 = internal global ptr @mtd_oobtest_init._entry.6, section ".printk_index", align 4
@mtd_oobtest_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\012mtd_oobtest: CAREFUL: This test wipes all data on the specified MTD device!\0A\00", [49 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.11 = internal global ptr @mtd_oobtest_init._entry.9, section ".printk_index", align 4
@mtd_oobtest_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016mtd_oobtest: MTD device: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.14 = internal global ptr @mtd_oobtest_init._entry.12, section ".printk_index", align 4
@mtd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mtd_oobtest_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013mtd_oobtest: error: cannot get MTD device\0A\00", [51 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.17 = internal global ptr @mtd_oobtest_init._entry.15, section ".printk_index", align 4
@mtd_oobtest_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016mtd_oobtest: this test requires NAND flash\0A\00", [50 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.20 = internal global ptr @mtd_oobtest_init._entry.18, section ".printk_index", align 4
@ebcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pgcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mtd_oobtest_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"\016mtd_oobtest: MTD device size %llu, eraseblock size %u, page size %u, count of eraseblocks %u, pages per eraseblock %u, OOB size %u\0A\00", [58 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.23 = internal global ptr @mtd_oobtest_init._entry.21, section ".printk_index", align 4
@readbuf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@writebuf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bbt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@use_offset = internal global { i32, [28 x i8] } zeroinitializer, align 32
@use_len = internal global { i32, [28 x i8] } zeroinitializer, align 32
@use_len_max = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vary_offset = internal global { i1, [31 x i8] } zeroinitializer, align 32
@mtd_oobtest_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016mtd_oobtest: test 1 of 5\0A\00", [36 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.26 = internal global ptr @mtd_oobtest_init._entry.24, section ".printk_index", align 4
@rnd_state = internal global { %struct.rnd_state, [16 x i8] } zeroinitializer, align 32
@mtd_oobtest_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016mtd_oobtest: test 2 of 5\0A\00", [36 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.29 = internal global ptr @mtd_oobtest_init._entry.27, section ".printk_index", align 4
@mtd_oobtest_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016mtd_oobtest: verifying all eraseblocks\0A\00", [54 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.32 = internal global ptr @mtd_oobtest_init._entry.30, section ".printk_index", align 4
@mtd_oobtest_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016mtd_oobtest: verified up to eraseblock %u\0A\00", [51 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.35 = internal global ptr @mtd_oobtest_init._entry.33, section ".printk_index", align 4
@mtd_oobtest_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016mtd_oobtest: verified %u eraseblocks\0A\00", [56 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.38 = internal global ptr @mtd_oobtest_init._entry.36, section ".printk_index", align 4
@mtd_oobtest_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016mtd_oobtest: test 3 of 5\0A\00", [36 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.41 = internal global ptr @mtd_oobtest_init._entry.39, section ".printk_index", align 4
@mtd_oobtest_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.1, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016mtd_oobtest: test 4 of 5\0A\00", [36 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.44 = internal global ptr @mtd_oobtest_init._entry.42, section ".printk_index", align 4
@mtd_oobtest_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.1, ptr @.str.2, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016mtd_oobtest: attempting to start write past end of OOB\0A\00", [38 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.47 = internal global ptr @mtd_oobtest_init._entry.45, section ".printk_index", align 4
@mtd_oobtest_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016mtd_oobtest: an error is expected...\0A\00", [56 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.50 = internal global ptr @mtd_oobtest_init._entry.48, section ".printk_index", align 4
@mtd_oobtest_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016mtd_oobtest: error occurred as expected\0A\00", [53 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.53 = internal global ptr @mtd_oobtest_init._entry.51, section ".printk_index", align 4
@mtd_oobtest_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.1, ptr @.str.2, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013mtd_oobtest: error: can write past end of OOB\0A\00", [47 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.56 = internal global ptr @mtd_oobtest_init._entry.54, section ".printk_index", align 4
@errcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mtd_oobtest_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.1, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016mtd_oobtest: attempting to start read past end of OOB\0A\00", [39 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.59 = internal global ptr @mtd_oobtest_init._entry.57, section ".printk_index", align 4
@mtd_oobtest_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.61 = internal global ptr @mtd_oobtest_init._entry.60, section ".printk_index", align 4
@mtd_oobtest_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.63 = internal global ptr @mtd_oobtest_init._entry.62, section ".printk_index", align 4
@mtd_oobtest_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.1, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013mtd_oobtest: error: can read past end of OOB\0A\00", [48 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.66 = internal global ptr @mtd_oobtest_init._entry.64, section ".printk_index", align 4
@mtd_oobtest_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.1, ptr @.str.2, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016mtd_oobtest: skipping end of device tests because last block is bad\0A\00", [57 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.69 = internal global ptr @mtd_oobtest_init._entry.67, section ".printk_index", align 4
@mtd_oobtest_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.1, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016mtd_oobtest: attempting to write past end of device\0A\00", [41 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.72 = internal global ptr @mtd_oobtest_init._entry.70, section ".printk_index", align 4
@mtd_oobtest_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.74 = internal global ptr @mtd_oobtest_init._entry.73, section ".printk_index", align 4
@mtd_oobtest_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.76 = internal global ptr @mtd_oobtest_init._entry.75, section ".printk_index", align 4
@mtd_oobtest_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.1, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013mtd_oobtest: error: wrote past end of device\0A\00", [48 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.79 = internal global ptr @mtd_oobtest_init._entry.77, section ".printk_index", align 4
@mtd_oobtest_init._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.1, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016mtd_oobtest: attempting to read past end of device\0A\00", [42 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.82 = internal global ptr @mtd_oobtest_init._entry.80, section ".printk_index", align 4
@mtd_oobtest_init._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.84 = internal global ptr @mtd_oobtest_init._entry.83, section ".printk_index", align 4
@mtd_oobtest_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.86 = internal global ptr @mtd_oobtest_init._entry.85, section ".printk_index", align 4
@mtd_oobtest_init._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.1, ptr @.str.2, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013mtd_oobtest: error: read past end of device\0A\00", [49 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.89 = internal global ptr @mtd_oobtest_init._entry.87, section ".printk_index", align 4
@mtd_oobtest_init._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.1, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.91 = internal global ptr @mtd_oobtest_init._entry.90, section ".printk_index", align 4
@mtd_oobtest_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.93 = internal global ptr @mtd_oobtest_init._entry.92, section ".printk_index", align 4
@mtd_oobtest_init._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.95 = internal global ptr @mtd_oobtest_init._entry.94, section ".printk_index", align 4
@mtd_oobtest_init._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.1, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.97 = internal global ptr @mtd_oobtest_init._entry.96, section ".printk_index", align 4
@mtd_oobtest_init._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.1, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.99 = internal global ptr @mtd_oobtest_init._entry.98, section ".printk_index", align 4
@mtd_oobtest_init._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.101 = internal global ptr @mtd_oobtest_init._entry.100, section ".printk_index", align 4
@mtd_oobtest_init._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.103 = internal global ptr @mtd_oobtest_init._entry.102, section ".printk_index", align 4
@mtd_oobtest_init._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.1, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.105 = internal global ptr @mtd_oobtest_init._entry.104, section ".printk_index", align 4
@mtd_oobtest_init._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.1, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016mtd_oobtest: test 5 of 5\0A\00", [36 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.108 = internal global ptr @mtd_oobtest_init._entry.106, section ".printk_index", align 4
@mtd_oobtest_init._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.1, ptr @.str.2, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016mtd_oobtest: writing OOBs of whole device\0A\00", [51 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.111 = internal global ptr @mtd_oobtest_init._entry.109, section ".printk_index", align 4
@mtd_oobtest_init._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.1, ptr @.str.2, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016mtd_oobtest: written up to eraseblock %u\0A\00", [52 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.114 = internal global ptr @mtd_oobtest_init._entry.112, section ".printk_index", align 4
@mtd_oobtest_init._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.1, ptr @.str.2, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016mtd_oobtest: written %u eraseblocks\0A\00", [57 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.117 = internal global ptr @mtd_oobtest_init._entry.115, section ".printk_index", align 4
@mtd_oobtest_init._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.119 = internal global ptr @mtd_oobtest_init._entry.118, section ".printk_index", align 4
@mtd_oobtest_init._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.1, ptr @.str.2, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013mtd_oobtest: error: verify failed at %#llx\0A\00", [50 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.122 = internal global ptr @mtd_oobtest_init._entry.120, section ".printk_index", align 4
@mtd_oobtest_init._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.1, ptr @.str.2, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013mtd_oobtest: error: too many errors\0A\00", [57 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.125 = internal global ptr @mtd_oobtest_init._entry.123, section ".printk_index", align 4
@mtd_oobtest_init._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.127 = internal global ptr @mtd_oobtest_init._entry.126, section ".printk_index", align 4
@mtd_oobtest_init._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.129 = internal global ptr @mtd_oobtest_init._entry.128, section ".printk_index", align 4
@mtd_oobtest_init._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.1, ptr @.str.2, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016mtd_oobtest: finished with %d errors\0A\00", [56 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.132 = internal global ptr @mtd_oobtest_init._entry.130, section ".printk_index", align 4
@mtd_oobtest_init._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.1, ptr @.str.2, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016mtd_oobtest: error %d occurred\0A\00", [62 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.135 = internal global ptr @mtd_oobtest_init._entry.133, section ".printk_index", align 4
@mtd_oobtest_init._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_oobtest_init._entry_ptr.137 = internal global ptr @mtd_oobtest_init._entry.136, section ".printk_index", align 4
@net_rand_noise = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@write_whole_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.138, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"write_whole_device\00", [45 x i8] zeroinitializer }, align 32
@write_whole_device._entry_ptr = internal global ptr @write_whole_device._entry, section ".printk_index", align 4
@write_whole_device._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.138, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@write_whole_device._entry_ptr.140 = internal global ptr @write_whole_device._entry.139, section ".printk_index", align 4
@write_whole_device._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.138, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@write_whole_device._entry_ptr.142 = internal global ptr @write_whole_device._entry.141, section ".printk_index", align 4
@write_eraseblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013mtd_oobtest: error: writeoob failed at %#llx\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write_eraseblock\00", [47 x i8] zeroinitializer }, align 32
@write_eraseblock._entry_ptr = internal global ptr @write_eraseblock._entry, section ".printk_index", align 4
@write_eraseblock._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013mtd_oobtest: error: use_len %d, use_offset %d\0A\00", [47 x i8] zeroinitializer }, align 32
@write_eraseblock._entry_ptr.147 = internal global ptr @write_eraseblock._entry.145, section ".printk_index", align 4
@verify_all_eraseblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.148, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"verify_all_eraseblocks\00", [41 x i8] zeroinitializer }, align 32
@verify_all_eraseblocks._entry_ptr = internal global ptr @verify_all_eraseblocks._entry, section ".printk_index", align 4
@verify_all_eraseblocks._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.148, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_all_eraseblocks._entry_ptr.150 = internal global ptr @verify_all_eraseblocks._entry.149, section ".printk_index", align 4
@verify_all_eraseblocks._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.148, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_all_eraseblocks._entry_ptr.152 = internal global ptr @verify_all_eraseblocks._entry.151, section ".printk_index", align 4
@verify_eraseblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013mtd_oobtest: error: readoob failed at %#llx\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"verify_eraseblock\00", [46 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr = internal global ptr @verify_eraseblock._entry, section ".printk_index", align 4
@verify_eraseblock._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.154, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.156 = internal global ptr @verify_eraseblock._entry.155, section ".printk_index", align 4
@verify_eraseblock._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.154, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.158 = internal global ptr @verify_eraseblock._entry.157, section ".printk_index", align 4
@verify_eraseblock._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.154, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016mtd_oobtest: ignoring error as within bitflip_limit\0A\00", [41 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.161 = internal global ptr @verify_eraseblock._entry.159, section ".printk_index", align 4
@verify_eraseblock._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.163 = internal global ptr @verify_eraseblock._entry.162, section ".printk_index", align 4
@verify_eraseblock._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.154, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.165 = internal global ptr @verify_eraseblock._entry.164, section ".printk_index", align 4
@verify_eraseblock._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.154, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.167 = internal global ptr @verify_eraseblock._entry.166, section ".printk_index", align 4
@verify_eraseblock._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.154, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016mtd_oobtest: ignoring errors as within bitflip limit\0A\00", [40 x i8] zeroinitializer }, align 32
@verify_eraseblock._entry_ptr.170 = internal global ptr @verify_eraseblock._entry.168, section ".printk_index", align 4
@memffshow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016mtd_oobtest: error @addr[0x%lx:0x%lx] 0x%x -> 0xff diff 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"memffshow\00", [22 x i8] zeroinitializer }, align 32
@memffshow._entry_ptr = internal global ptr @memffshow._entry, section ".printk_index", align 4
@verify_eraseblock_in_one_go._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.173, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"verify_eraseblock_in_one_go\00", [36 x i8] zeroinitializer }, align 32
@verify_eraseblock_in_one_go._entry_ptr = internal global ptr @verify_eraseblock_in_one_go._entry, section ".printk_index", align 4
@verify_eraseblock_in_one_go._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.173, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_eraseblock_in_one_go._entry_ptr.175 = internal global ptr @verify_eraseblock_in_one_go._entry.174, section ".printk_index", align 4
@verify_eraseblock_in_one_go._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.173, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_eraseblock_in_one_go._entry_ptr.177 = internal global ptr @verify_eraseblock_in_one_go._entry.176, section ".printk_index", align 4
@verify_eraseblock_in_one_go._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.173, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@verify_eraseblock_in_one_go._entry_ptr.179 = internal global ptr @verify_eraseblock_in_one_go._entry.178, section ".printk_index", align 4
@.str.180 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/tests/mtd_test.h\00", [35 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.180, i32 9, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016mtd_oobtest: aborting test due to pending signal!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtdtest_relax\00", [18 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry_ptr = internal global ptr @mtdtest_relax._entry, section ".printk_index", align 4
@memcmpshowoffset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016mtd_oobtest: error @addr[0x%lx:0x%lx] 0x%x -> 0x%x diff 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"memcmpshowoffset\00", [47 x i8] zeroinitializer }, align 32
@memcmpshowoffset._entry_ptr = internal global ptr @memcmpshowoffset._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 8]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@___asan_gen_.189 = private constant [4 x i8] c"dev\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 24, i32 12 }
@___asan_gen_.192 = private constant [14 x i8] c"bitflip_limit\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 25, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 344, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 345, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 348, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 349, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 353, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [4 x i8] c"mtd\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 31, i32 25 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 358, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 363, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [6 x i8] c"ebcnt\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 36, i32 12 }
@___asan_gen_.249 = private unnamed_addr constant [6 x i8] c"pgcnt\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 37, i32 12 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 372, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [8 x i8] c"readbuf\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 32, i32 23 }
@___asan_gen_.261 = private unnamed_addr constant [9 x i8] c"writebuf\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 33, i32 23 }
@___asan_gen_.264 = private unnamed_addr constant [4 x i8] c"bbt\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 34, i32 23 }
@___asan_gen_.267 = private unnamed_addr constant [11 x i8] c"use_offset\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 39, i32 12 }
@___asan_gen_.270 = private unnamed_addr constant [8 x i8] c"use_len\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 40, i32 12 }
@___asan_gen_.273 = private unnamed_addr constant [12 x i8] c"use_len_max\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 41, i32 12 }
@___asan_gen_.276 = private unnamed_addr constant [12 x i8] c"vary_offset\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 399, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [10 x i8] c"rnd_state\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 43, i32 25 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 419, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 432, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 440, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 446, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 452, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 485, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 504, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 505, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 508, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 510, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [7 x i8] c"errcnt\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 38, i32 12 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 523, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 524, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 530, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 532, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 537, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 549, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 550, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 553, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 555, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 568, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 569, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 575, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 577, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 594, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 595, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 598, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 600, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 613, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 614, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 620, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 622, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 628, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 637, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 659, i32 5 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 668, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 672, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 694, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 699, i32 5 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 704, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 710, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 712, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 719, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 720, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 94, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 102, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 108, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 75, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 77, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 318, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 326, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 332, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 188, i32 4 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 198, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 202, i32 5 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 206, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 225, i32 5 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 244, i32 5 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 248, i32 6 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 252, i32 5 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 155, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 287, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 298, i32 4 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 302, i32 5 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 306, i32 4 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 7, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant [32 x i8] c"../drivers/mtd/tests/mtd_test.h\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 9, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.610 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.611 = private constant [31 x i8] c"../drivers/mtd/tests/oobtest.c\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.611, i32 127, i32 4 }
@llvm.compiler.used = appending global [226 x ptr] [ptr @__UNIQUE_ID_author206, ptr @__UNIQUE_ID_bitflip_limit204, ptr @__UNIQUE_ID_bitflip_limittype203, ptr @__UNIQUE_ID_description205, ptr @__UNIQUE_ID_dev202, ptr @__UNIQUE_ID_devtype201, ptr @__UNIQUE_ID_license207, ptr @__param_bitflip_limit, ptr @__param_dev, ptr @memcmpshowoffset._entry, ptr @memcmpshowoffset._entry_ptr, ptr @memffshow._entry, ptr @memffshow._entry_ptr, ptr @mtd_oobtest_init._entry, ptr @mtd_oobtest_init._entry.100, ptr @mtd_oobtest_init._entry.102, ptr @mtd_oobtest_init._entry.104, ptr @mtd_oobtest_init._entry.106, ptr @mtd_oobtest_init._entry.109, ptr @mtd_oobtest_init._entry.112, ptr @mtd_oobtest_init._entry.115, ptr @mtd_oobtest_init._entry.118, ptr @mtd_oobtest_init._entry.12, ptr @mtd_oobtest_init._entry.120, ptr @mtd_oobtest_init._entry.123, ptr @mtd_oobtest_init._entry.126, ptr @mtd_oobtest_init._entry.128, ptr @mtd_oobtest_init._entry.130, ptr @mtd_oobtest_init._entry.133, ptr @mtd_oobtest_init._entry.136, ptr @mtd_oobtest_init._entry.15, ptr @mtd_oobtest_init._entry.18, ptr @mtd_oobtest_init._entry.21, ptr @mtd_oobtest_init._entry.24, ptr @mtd_oobtest_init._entry.27, ptr @mtd_oobtest_init._entry.3, ptr @mtd_oobtest_init._entry.30, ptr @mtd_oobtest_init._entry.33, ptr @mtd_oobtest_init._entry.36, ptr @mtd_oobtest_init._entry.39, ptr @mtd_oobtest_init._entry.42, ptr @mtd_oobtest_init._entry.45, ptr @mtd_oobtest_init._entry.48, ptr @mtd_oobtest_init._entry.51, ptr @mtd_oobtest_init._entry.54, ptr @mtd_oobtest_init._entry.57, ptr @mtd_oobtest_init._entry.6, ptr @mtd_oobtest_init._entry.60, ptr @mtd_oobtest_init._entry.62, ptr @mtd_oobtest_init._entry.64, ptr @mtd_oobtest_init._entry.67, ptr @mtd_oobtest_init._entry.70, ptr @mtd_oobtest_init._entry.73, ptr @mtd_oobtest_init._entry.75, ptr @mtd_oobtest_init._entry.77, ptr @mtd_oobtest_init._entry.80, ptr @mtd_oobtest_init._entry.83, ptr @mtd_oobtest_init._entry.85, ptr @mtd_oobtest_init._entry.87, ptr @mtd_oobtest_init._entry.9, ptr @mtd_oobtest_init._entry.90, ptr @mtd_oobtest_init._entry.92, ptr @mtd_oobtest_init._entry.94, ptr @mtd_oobtest_init._entry.96, ptr @mtd_oobtest_init._entry.98, ptr @mtd_oobtest_init._entry_ptr, ptr @mtd_oobtest_init._entry_ptr.101, ptr @mtd_oobtest_init._entry_ptr.103, ptr @mtd_oobtest_init._entry_ptr.105, ptr @mtd_oobtest_init._entry_ptr.108, ptr @mtd_oobtest_init._entry_ptr.11, ptr @mtd_oobtest_init._entry_ptr.111, ptr @mtd_oobtest_init._entry_ptr.114, ptr @mtd_oobtest_init._entry_ptr.117, ptr @mtd_oobtest_init._entry_ptr.119, ptr @mtd_oobtest_init._entry_ptr.122, ptr @mtd_oobtest_init._entry_ptr.125, ptr @mtd_oobtest_init._entry_ptr.127, ptr @mtd_oobtest_init._entry_ptr.129, ptr @mtd_oobtest_init._entry_ptr.132, ptr @mtd_oobtest_init._entry_ptr.135, ptr @mtd_oobtest_init._entry_ptr.137, ptr @mtd_oobtest_init._entry_ptr.14, ptr @mtd_oobtest_init._entry_ptr.17, ptr @mtd_oobtest_init._entry_ptr.20, ptr @mtd_oobtest_init._entry_ptr.23, ptr @mtd_oobtest_init._entry_ptr.26, ptr @mtd_oobtest_init._entry_ptr.29, ptr @mtd_oobtest_init._entry_ptr.32, ptr @mtd_oobtest_init._entry_ptr.35, ptr @mtd_oobtest_init._entry_ptr.38, ptr @mtd_oobtest_init._entry_ptr.41, ptr @mtd_oobtest_init._entry_ptr.44, ptr @mtd_oobtest_init._entry_ptr.47, ptr @mtd_oobtest_init._entry_ptr.5, ptr @mtd_oobtest_init._entry_ptr.50, ptr @mtd_oobtest_init._entry_ptr.53, ptr @mtd_oobtest_init._entry_ptr.56, ptr @mtd_oobtest_init._entry_ptr.59, ptr @mtd_oobtest_init._entry_ptr.61, ptr @mtd_oobtest_init._entry_ptr.63, ptr @mtd_oobtest_init._entry_ptr.66, ptr @mtd_oobtest_init._entry_ptr.69, ptr @mtd_oobtest_init._entry_ptr.72, ptr @mtd_oobtest_init._entry_ptr.74, ptr @mtd_oobtest_init._entry_ptr.76, ptr @mtd_oobtest_init._entry_ptr.79, ptr @mtd_oobtest_init._entry_ptr.8, ptr @mtd_oobtest_init._entry_ptr.82, ptr @mtd_oobtest_init._entry_ptr.84, ptr @mtd_oobtest_init._entry_ptr.86, ptr @mtd_oobtest_init._entry_ptr.89, ptr @mtd_oobtest_init._entry_ptr.91, ptr @mtd_oobtest_init._entry_ptr.93, ptr @mtd_oobtest_init._entry_ptr.95, ptr @mtd_oobtest_init._entry_ptr.97, ptr @mtd_oobtest_init._entry_ptr.99, ptr @mtdtest_relax._entry, ptr @mtdtest_relax._entry_ptr, ptr @verify_all_eraseblocks._entry, ptr @verify_all_eraseblocks._entry.149, ptr @verify_all_eraseblocks._entry.151, ptr @verify_all_eraseblocks._entry_ptr, ptr @verify_all_eraseblocks._entry_ptr.150, ptr @verify_all_eraseblocks._entry_ptr.152, ptr @verify_eraseblock._entry, ptr @verify_eraseblock._entry.155, ptr @verify_eraseblock._entry.157, ptr @verify_eraseblock._entry.159, ptr @verify_eraseblock._entry.162, ptr @verify_eraseblock._entry.164, ptr @verify_eraseblock._entry.166, ptr @verify_eraseblock._entry.168, ptr @verify_eraseblock._entry_ptr, ptr @verify_eraseblock._entry_ptr.156, ptr @verify_eraseblock._entry_ptr.158, ptr @verify_eraseblock._entry_ptr.161, ptr @verify_eraseblock._entry_ptr.163, ptr @verify_eraseblock._entry_ptr.165, ptr @verify_eraseblock._entry_ptr.167, ptr @verify_eraseblock._entry_ptr.170, ptr @verify_eraseblock_in_one_go._entry, ptr @verify_eraseblock_in_one_go._entry.174, ptr @verify_eraseblock_in_one_go._entry.176, ptr @verify_eraseblock_in_one_go._entry.178, ptr @verify_eraseblock_in_one_go._entry_ptr, ptr @verify_eraseblock_in_one_go._entry_ptr.175, ptr @verify_eraseblock_in_one_go._entry_ptr.177, ptr @verify_eraseblock_in_one_go._entry_ptr.179, ptr @write_eraseblock._entry, ptr @write_eraseblock._entry.145, ptr @write_eraseblock._entry_ptr, ptr @write_eraseblock._entry_ptr.147, ptr @write_whole_device._entry, ptr @write_whole_device._entry.139, ptr @write_whole_device._entry.141, ptr @write_whole_device._entry_ptr, ptr @write_whole_device._entry_ptr.140, ptr @write_whole_device._entry_ptr.142, ptr @dev, ptr @bitflip_limit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @mtd, ptr @.str.16, ptr @.str.19, ptr @ebcnt, ptr @pgcnt, ptr @.str.22, ptr @readbuf, ptr @writebuf, ptr @bbt, ptr @use_offset, ptr @use_len, ptr @use_len_max, ptr @vary_offset, ptr @.str.25, ptr @rnd_state, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @errcnt, ptr @.str.58, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.78, ptr @.str.81, ptr @.str.88, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.121, ptr @.str.124, ptr @.str.131, ptr @.str.134, ptr @.str.138, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.153, ptr @.str.154, ptr @.str.160, ptr @.str.169, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitflip_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pgcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readbuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writebuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_len to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_len_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vary_offset to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnd_state to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @errcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_oobtest_init._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_whole_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_whole_device._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_whole_device._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_eraseblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_eraseblock._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_all_eraseblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_all_eraseblocks._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_all_eraseblocks._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memffshow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock_in_one_go._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock_in_one_go._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock_in_one_go._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_eraseblock_in_one_go._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdtest_relax._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memcmpshowoffset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #10
  %0 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %4 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %6 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %7 = call ptr @memset(ptr %ops, i32 255, i32 32)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  %8 = load i32, ptr @dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %do.end9, label %do.end19

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  br label %cleanup805

do.end19:                                         ; preds = %entry
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %8) #13
  %9 = load i32, ptr @dev, align 4
  %call22 = tail call ptr @get_mtd_device(ptr noundef null, i32 noundef %9) #10
  store ptr %call22, ptr @mtd, align 4
  %cmp.i991 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i991, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call22 to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  br label %cleanup805

if.end31:                                         ; preds = %do.end19
  %11 = ptrtoint ptr %call22 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call22, align 8
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %do.end36 [
    i8 8, label %if.end31.if.end39_crit_edge
    i8 4, label %if.end31.if.end39_crit_edge1144
  ]

if.end31.if.end39_crit_edge1144:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

do.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  br label %out

if.end39:                                         ; preds = %if.end31.if.end39_crit_edge, %if.end31.if.end39_crit_edge1144
  %size = getelementptr inbounds %struct.mtd_info, ptr %call22, i32 0, i32 2
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %size, align 8
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %call22, i32 0, i32 3
  %16 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %15)
  %cmp209 = icmp ult i64 %15, 4294967296
  br i1 %cmp209, label %if.then213, label %if.else219, !prof !335

if.then213:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %conv214 = trunc i64 %15 to i32
  %div217 = udiv i32 %conv214, %17
  br label %if.end223

if.else219:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 %15) #14, !srcloc !336
  %asmresult1.i = extractvalue { i64, i64 } %18, 1
  %extract.t1087 = trunc i64 %asmresult1.i to i32
  br label %if.end223

if.end223:                                        ; preds = %if.else219, %if.then213
  %tmp.0.off0 = phi i32 [ %div217, %if.then213 ], [ %extract.t1087, %if.else219 ]
  store i32 %tmp.0.off0, ptr @ebcnt, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %call22, i32 0, i32 4
  %19 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %writesize, align 4
  %div227 = udiv i32 %17, %20
  store i32 %div227, ptr @pgcnt, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %call22, i32 0, i32 6
  %21 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oobsize, align 4
  %call235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i64 noundef %15, i32 noundef %17, i32 noundef %20, i32 noundef %tmp.0.off0, i32 noundef %div227, i32 noundef %22) #13
  %23 = load ptr, ptr @mtd, align 4
  %erasesize236 = getelementptr inbounds %struct.mtd_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %erasesize236 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %erasesize236, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3264) #15
  store ptr %call9.i, ptr @readbuf, align 4
  %tobool238.not = icmp eq ptr %call9.i, null
  br i1 %tobool238.not, label %if.end223.out_crit_edge, label %if.end8.i988

if.end223.out_crit_edge:                          ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8.i988:                                     ; preds = %if.end223
  %26 = load ptr, ptr @mtd, align 4
  %erasesize241 = getelementptr inbounds %struct.mtd_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %erasesize241 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %erasesize241, align 8
  %call9.i987 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3264) #15
  store ptr %call9.i987, ptr @writebuf, align 4
  %tobool243.not = icmp eq ptr %call9.i987, null
  br i1 %tobool243.not, label %if.end8.i988.out_crit_edge, label %if.end8.i.i

if.end8.i988.out_crit_edge:                       ; preds = %if.end8.i988
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8.i.i:                                      ; preds = %if.end8.i988
  %29 = load i32, ptr @ebcnt, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #15
  store ptr %call9.i.i, ptr @bbt, align 4
  %tobool247.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool247.not, label %if.end8.i.i.out_crit_edge, label %if.end249

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end249:                                        ; preds = %if.end8.i.i
  %30 = load ptr, ptr @mtd, align 4
  %31 = load i32, ptr @ebcnt, align 4
  %call250 = tail call i32 @mtdtest_scan_for_bad_eraseblocks(ptr noundef %30, ptr noundef nonnull %call9.i.i, i32 noundef 0, i32 noundef %31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %if.end253, label %if.end249.out_crit_edge

if.end249.out_crit_edge:                          ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end253:                                        ; preds = %if.end249
  store i32 0, ptr @use_offset, align 4
  %32 = load ptr, ptr @mtd, align 4
  %oobavail = getelementptr inbounds %struct.mtd_info, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %oobavail, align 8
  store i32 %34, ptr @use_len, align 4
  store i32 %34, ptr @use_len_max, align 4
  store i1 false, ptr @vary_offset, align 4
  %call259 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  %35 = load ptr, ptr @mtd, align 4
  %36 = load ptr, ptr @bbt, align 4
  %37 = load i32, ptr @ebcnt, align 4
  %call260 = tail call i32 @mtdtest_erase_good_eraseblocks(ptr noundef %35, ptr noundef %36, i32 noundef 0, i32 noundef %37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %if.end263, label %if.end253.out_crit_edge

if.end253.out_crit_edge:                          ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end263:                                        ; preds = %if.end253
  store i32 1025, ptr @rnd_state, align 4
  store i32 1025, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 1), align 4
  store i32 1025, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 2), align 4
  store i32 1025, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 3), align 4
  %38 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i, align 4
  %add.i10.i = add i32 %43, ptrtoint (ptr @net_rand_noise to i32)
  %44 = inttoptr i32 %add.i10.i to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %xor.i.i = xor i32 %46, ptrtoint (ptr @rnd_state to i32)
  %add8.i.i = add i32 %xor.i.i, 1025
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %add8.i.i, i32 %add8.i.i, i32 16) #10
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i1.i.i, ptr %44, align 4
  %call264 = tail call fastcc i32 @write_whole_device()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %if.end267, label %if.end263.out_crit_edge

if.end263.out_crit_edge:                          ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end267:                                        ; preds = %if.end263
  store i32 1025, ptr @rnd_state, align 4
  store i32 1025, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 1), align 4
  store i32 1025, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 2), align 4
  store i32 1025, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 3), align 4
  %48 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i997 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i997 to ptr
  %cpu.i.i998 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %cpu.i.i998 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu.i.i998, align 4
  %arrayidx.i.i999 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx.i.i999 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i999, align 4
  %add.i10.i1000 = add i32 %53, ptrtoint (ptr @net_rand_noise to i32)
  %54 = inttoptr i32 %add.i10.i1000 to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %xor.i.i1001 = xor i32 %56, ptrtoint (ptr @rnd_state to i32)
  %add8.i.i1002 = add i32 %xor.i.i1001, 1025
  %or.i1.i.i1003 = tail call i32 @llvm.fshl.i32(i32 %add8.i.i1002, i32 %add8.i.i1002, i32 16) #10
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or.i1.i.i1003, ptr %54, align 4
  %call268 = tail call fastcc i32 @verify_all_eraseblocks()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268)
  %tobool269.not = icmp eq i32 %call268, 0
  br i1 %tobool269.not, label %do.end274, label %if.end267.out_crit_edge

if.end267.out_crit_edge:                          ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end274:                                        ; preds = %if.end267
  %call276 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  %58 = load ptr, ptr @mtd, align 4
  %59 = load ptr, ptr @bbt, align 4
  %60 = load i32, ptr @ebcnt, align 4
  %call277 = tail call i32 @mtdtest_erase_good_eraseblocks(ptr noundef %58, ptr noundef %59, i32 noundef 0, i32 noundef %60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277)
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %if.end280, label %do.end274.out_crit_edge

do.end274.out_crit_edge:                          ; preds = %do.end274
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end280:                                        ; preds = %do.end274
  store i32 3075, ptr @rnd_state, align 4
  store i32 3075, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 1), align 4
  store i32 3075, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 2), align 4
  store i32 3075, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 3), align 4
  %61 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i1004 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i1004 to ptr
  %cpu.i.i1005 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %cpu.i.i1005 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu.i.i1005, align 4
  %arrayidx.i.i1006 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx.i.i1006 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i1006, align 4
  %add.i10.i1007 = add i32 %66, ptrtoint (ptr @net_rand_noise to i32)
  %67 = inttoptr i32 %add.i10.i1007 to ptr
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %xor.i.i1008 = xor i32 %69, ptrtoint (ptr @rnd_state to i32)
  %add8.i.i1009 = add i32 %xor.i.i1008, 3075
  %or.i1.i.i1010 = tail call i32 @llvm.fshl.i32(i32 %add8.i.i1009, i32 %add8.i.i1009, i32 16) #10
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or.i1.i.i1010, ptr %67, align 4
  %call281 = tail call fastcc i32 @write_whole_device()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call281)
  %tobool282.not = icmp eq i32 %call281, 0
  br i1 %tobool282.not, label %if.end284, label %if.end280.out_crit_edge

if.end280.out_crit_edge:                          ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end284:                                        ; preds = %if.end280
  store i32 3075, ptr @rnd_state, align 4
  store i32 3075, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 1), align 4
  store i32 3075, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 2), align 4
  store i32 3075, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 3), align 4
  %71 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i1011 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i1011 to ptr
  %cpu.i.i1012 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %cpu.i.i1012 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cpu.i.i1012, align 4
  %arrayidx.i.i1013 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx.i.i1013 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i.i1013, align 4
  %add.i10.i1014 = add i32 %76, ptrtoint (ptr @net_rand_noise to i32)
  %77 = inttoptr i32 %add.i10.i1014 to ptr
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %xor.i.i1015 = xor i32 %79, ptrtoint (ptr @rnd_state to i32)
  %add8.i.i1016 = add i32 %xor.i.i1015, 3075
  %or.i1.i.i1017 = tail call i32 @llvm.fshl.i32(i32 %add8.i.i1016, i32 %add8.i.i1016, i32 16) #10
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or.i1.i.i1017, ptr %77, align 4
  %call289 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #13
  %81 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp2901102.not = icmp eq i32 %81, 0
  br i1 %cmp2901102.not, label %if.end284.do.end315_crit_edge, label %for.body.lr.ph

if.end284.do.end315_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end315

for.body.lr.ph:                                   ; preds = %if.end284
  %82 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 1
  %83 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 2
  %84 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %85 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 4
  %86 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %87 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %88 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.01103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %89 = load ptr, ptr @bbt, align 4
  %arrayidx = getelementptr i8, ptr %89, i32 %i.01103
  %90 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool292.not = icmp eq i8 %91, 0
  br i1 %tobool292.not, label %if.end294, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end294:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #10
  %conv.i = sext i32 %i.01103 to i64
  %92 = load ptr, ptr @mtd, align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %erasesize.i, align 8
  %conv1.i = zext i32 %94 to i64
  %mul.i = mul nsw i64 %conv1.i, %conv.i
  %oobavail.i = getelementptr inbounds %struct.mtd_info, ptr %92, i32 0, i32 7
  %95 = ptrtoint ptr %oobavail.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %oobavail.i, align 8
  %97 = load i32, ptr @pgcnt, align 4
  %mul2.i = mul i32 %97, %96
  %98 = load ptr, ptr @writebuf, align 4
  call void @prandom_bytes_state(ptr noundef nonnull @rnd_state, ptr noundef %98, i32 noundef %mul2.i) #10
  %99 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %ops.i, align 4
  %100 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %82, align 4
  %101 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %83, align 4
  %102 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %mul2.i, ptr %84, align 4
  %103 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %85, align 4
  %104 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %86, align 4
  %105 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %87, align 4
  %106 = load ptr, ptr @readbuf, align 4
  %107 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %88, align 4
  %108 = load ptr, ptr @mtd, align 4
  %call.i = call i32 @mtd_read_oob(ptr noundef %108, i64 noundef %mul.i, ptr noundef nonnull %ops.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call.i)
  %cmp.i.not.i = icmp eq i32 %call.i, -117
  %spec.select.i = select i1 %cmp.i.not.i, i32 0, i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool7.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i, label %if.end294.verify_eraseblock_in_one_go.exit_crit_edge

if.end294.verify_eraseblock_in_one_go.exit_crit_edge: ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock_in_one_go.exit

lor.lhs.false.i:                                  ; preds = %if.end294
  %109 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %mul2.i)
  %cmp.not.i1018 = icmp eq i32 %110, %mul2.i
  br i1 %cmp.not.i1018, label %for.cond.preheader.i, label %lor.lhs.false.i.verify_eraseblock_in_one_go.exit_crit_edge

lor.lhs.false.i.verify_eraseblock_in_one_go.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock_in_one_go.exit

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %111 = load i32, ptr @pgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp1478.i = icmp sgt i32 %111, 0
  br i1 %cmp1478.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.verify_eraseblock_in_one_go.exit.thread_crit_edge

for.cond.preheader.i.verify_eraseblock_in_one_go.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock_in_one_go.exit.thread

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.not92.i.i = icmp eq i32 %96, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %addr.081.i = phi i64 [ %mul.i, %for.body.lr.ph.i ], [ %add48.i, %for.inc.i.for.body.i_crit_edge ]
  %i.079.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %cmp.not92.i.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  %112 = load ptr, ptr @writebuf, align 4
  %mul16.i = mul i32 %i.079.i, %96
  %add.ptr18.i = getelementptr i8, ptr %112, i32 %mul16.i
  %113 = load ptr, ptr @readbuf, align 4
  %add.ptr.i = getelementptr i8, ptr %113, i32 %mul16.i
  %conv2.i.i = trunc i64 %addr.081.i to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %count.addr.097.i.i = phi i32 [ %96, %for.body.lr.ph.i.i ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %bitflips.096.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %bitflips.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.095.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %su2.094.i.i = phi ptr [ %add.ptr18.i, %for.body.lr.ph.i.i ], [ %incdec.ptr67.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %su1.093.i.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %114 = ptrtoint ptr %su1.093.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %su1.093.i.i, align 1
  %116 = ptrtoint ptr %su2.094.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %su2.094.i.i, align 1
  %xor86.i.i = xor i8 %117, %115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor86.i.i)
  %tobool.not.i.i1020 = icmp eq i8 %xor86.i.i, 0
  br i1 %tobool.not.i.i1020, label %for.body.i.i.for.inc.i.i_crit_edge, label %do.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %xor.i.i1019 = zext i8 %xor86.i.i to i32
  %conv1.i.i = zext i8 %117 to i32
  %conv.i72.i = zext i8 %115 to i32
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, i32 noundef %conv2.i.i, i32 noundef %i.095.i.i, i32 noundef %conv.i72.i, i32 noundef %conv1.i.i, i32 noundef %xor.i.i1019) #13
  %call.i.i.i = call i32 @__sw_hweight8(i32 noundef %xor.i.i1019) #10
  %add66.i.i = add i32 %call.i.i.i, %bitflips.096.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %bitflips.1.i.i = phi i32 [ %add66.i.i, %do.end.i.i ], [ %bitflips.096.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %su1.093.i.i, i32 1
  %incdec.ptr67.i.i = getelementptr i8, ptr %su2.094.i.i, i32 1
  %dec.i.i = add i32 %count.addr.097.i.i, -1
  %inc.i.i = add nuw i32 %i.095.i.i, 1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %memcmpshowoffset.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

memcmpshowoffset.exit.i:                          ; preds = %for.inc.i.i
  %118 = load i32, ptr @bitflip_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bitflips.1.i.i, i32 %118)
  %cmp20.i = icmp ugt i32 %bitflips.1.i.i, %118
  br i1 %cmp20.i, label %do.end25.i, label %if.else.i

do.end25.i:                                       ; preds = %memcmpshowoffset.exit.i
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i64 noundef %addr.081.i) #13
  %119 = load i32, ptr @errcnt, align 4
  %add28.i = add i32 %119, 1
  store i32 %add28.i, ptr @errcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %add28.i)
  %cmp29.i = icmp sgt i32 %add28.i, 1000
  br i1 %cmp29.i, label %verify_eraseblock_in_one_go.exit.thread1078, label %do.end25.i.for.inc.i_crit_edge

do.end25.i.for.inc.i_crit_edge:                   ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

verify_eraseblock_in_one_go.exit.thread1078:      ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  br label %out

if.else.i:                                        ; preds = %memcmpshowoffset.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitflips.1.i.i)
  %tobool38.not.i = icmp eq i32 %bitflips.1.i.i, 0
  br i1 %tobool38.not.i, label %if.else.i.for.inc.i_crit_edge, label %do.end42.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end42.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end42.i, %if.else.i.for.inc.i_crit_edge, %do.end25.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.079.i, 1
  %120 = load ptr, ptr @mtd, align 4
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %120, i32 0, i32 4
  %121 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %writesize.i, align 4
  %conv47.i = zext i32 %122 to i64
  %add48.i = add i64 %addr.081.i, %conv47.i
  %123 = load i32, ptr @pgcnt, align 4
  %cmp14.i = icmp slt i32 %inc.i, %123
  br i1 %cmp14.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.verify_eraseblock_in_one_go.exit.thread_crit_edge

for.inc.i.verify_eraseblock_in_one_go.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock_in_one_go.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

verify_eraseblock_in_one_go.exit.thread:          ; preds = %for.inc.i.verify_eraseblock_in_one_go.exit.thread_crit_edge, %for.cond.preheader.i.verify_eraseblock_in_one_go.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  br label %if.end298

verify_eraseblock_in_one_go.exit:                 ; preds = %lor.lhs.false.i.verify_eraseblock_in_one_go.exit_crit_edge, %if.end294.verify_eraseblock_in_one_go.exit_crit_edge
  %spec.select71.i = phi i32 [ %spec.select.i, %if.end294.verify_eraseblock_in_one_go.exit_crit_edge ], [ -1, %lor.lhs.false.i.verify_eraseblock_in_one_go.exit_crit_edge ]
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i64 noundef %mul.i) #13
  %124 = load i32, ptr @errcnt, align 4
  %add.i = add i32 %124, 1
  store i32 %add.i, ptr @errcnt, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select71.i)
  %tobool296.not = icmp eq i32 %spec.select71.i, 0
  br i1 %tobool296.not, label %verify_eraseblock_in_one_go.exit.if.end298_crit_edge, label %verify_eraseblock_in_one_go.exit.out_crit_edge

verify_eraseblock_in_one_go.exit.out_crit_edge:   ; preds = %verify_eraseblock_in_one_go.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

verify_eraseblock_in_one_go.exit.if.end298_crit_edge: ; preds = %verify_eraseblock_in_one_go.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end298

if.end298:                                        ; preds = %verify_eraseblock_in_one_go.exit.if.end298_crit_edge, %verify_eraseblock_in_one_go.exit.thread
  %rem299 = and i32 %i.01103, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem299)
  %cmp300 = icmp eq i32 %rem299, 0
  br i1 %cmp300, label %do.end305, label %if.end298.if.end308_crit_edge

if.end298.if.end308_crit_edge:                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end308

do.end305:                                        ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #12
  %call307 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %i.01103) #13
  br label %if.end308

if.end308:                                        ; preds = %do.end305, %if.end298.if.end308_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.180, i32 noundef 7, i32 noundef 0) #10
  %call.i.i1021 = call i32 @__cond_resched() #10
  %125 = call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %stack.i.i.i, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %130, align 4
  %133 = and i32 %132, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i.i1022 = icmp eq i32 %133, 0
  br i1 %tobool.not.i.i1022, label %signal_pending.exit.i, label %if.end308.mtdtest_relax.exit_crit_edge, !prof !335

if.end308.mtdtest_relax.exit_crit_edge:           ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit

signal_pending.exit.i:                            ; preds = %if.end308
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %130, align 4
  %and1.i.i.i.i.i.i = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %signal_pending.exit.i.for.inc_crit_edge, label %signal_pending.exit.i.mtdtest_relax.exit_crit_edge

signal_pending.exit.i.mtdtest_relax.exit_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit

signal_pending.exit.i.for.inc_crit_edge:          ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

mtdtest_relax.exit:                               ; preds = %signal_pending.exit.i.mtdtest_relax.exit_crit_edge, %if.end308.mtdtest_relax.exit_crit_edge
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #13
  br label %out

for.inc:                                          ; preds = %signal_pending.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.01103, 1
  %136 = load i32, ptr @ebcnt, align 4
  %cmp290 = icmp ult i32 %inc, %136
  br i1 %cmp290, label %for.inc.for.body_crit_edge, label %for.inc.do.end315_crit_edge

for.inc.do.end315_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end315

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end315:                                        ; preds = %for.inc.do.end315_crit_edge, %if.end284.do.end315_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end284.do.end315_crit_edge ], [ %inc, %for.inc.do.end315_crit_edge ]
  %call317 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %i.0.lcssa) #13
  %call322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #13
  %137 = load ptr, ptr @mtd, align 4
  %138 = load ptr, ptr @bbt, align 4
  %139 = load i32, ptr @ebcnt, align 4
  %call323 = call i32 @mtdtest_erase_good_eraseblocks(ptr noundef %137, ptr noundef %138, i32 noundef 0, i32 noundef %139) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323)
  %tobool324.not = icmp eq i32 %call323, 0
  br i1 %tobool324.not, label %if.end326, label %do.end315.out_crit_edge

do.end315.out_crit_edge:                          ; preds = %do.end315
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end326:                                        ; preds = %do.end315
  store i32 0, ptr @use_offset, align 4
  %140 = load ptr, ptr @mtd, align 4
  %oobavail327 = getelementptr inbounds %struct.mtd_info, ptr %140, i32 0, i32 7
  %141 = ptrtoint ptr %oobavail327 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %oobavail327, align 8
  store i32 %142, ptr @use_len, align 4
  store i32 %142, ptr @use_len_max, align 4
  store i1 true, ptr @vary_offset, align 4
  store i32 5125, ptr @rnd_state, align 4
  store i32 5125, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 1), align 4
  store i32 5125, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 2), align 4
  store i32 5125, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 3), align 4
  %143 = call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i1025 = and i32 %143, -16384
  %144 = inttoptr i32 %and.i.i.i1025 to ptr
  %cpu.i.i1026 = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %cpu.i.i1026 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cpu.i.i1026, align 4
  %arrayidx.i.i1027 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %146
  %147 = ptrtoint ptr %arrayidx.i.i1027 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.i.i1027, align 4
  %add.i10.i1028 = add i32 %148, ptrtoint (ptr @net_rand_noise to i32)
  %149 = inttoptr i32 %add.i10.i1028 to ptr
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 4
  %xor.i.i1029 = xor i32 %151, ptrtoint (ptr @rnd_state to i32)
  %add8.i.i1030 = add i32 %xor.i.i1029, 5125
  %or.i1.i.i1031 = call i32 @llvm.fshl.i32(i32 %add8.i.i1030, i32 %add8.i.i1030, i32 16) #10
  %152 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %or.i1.i.i1031, ptr %149, align 4
  %call329 = call fastcc i32 @write_whole_device()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call329)
  %tobool330.not = icmp eq i32 %call329, 0
  br i1 %tobool330.not, label %if.end332, label %if.end326.out_crit_edge

if.end326.out_crit_edge:                          ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end332:                                        ; preds = %if.end326
  store i32 0, ptr @use_offset, align 4
  %153 = load ptr, ptr @mtd, align 4
  %oobavail333 = getelementptr inbounds %struct.mtd_info, ptr %153, i32 0, i32 7
  %154 = ptrtoint ptr %oobavail333 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %oobavail333, align 8
  store i32 %155, ptr @use_len, align 4
  store i32 %155, ptr @use_len_max, align 4
  store i1 true, ptr @vary_offset, align 4
  store i32 5125, ptr @rnd_state, align 4
  store i32 5125, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 1), align 4
  store i32 5125, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 2), align 4
  store i32 5125, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 3), align 4
  %156 = call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i1032 = and i32 %156, -16384
  %157 = inttoptr i32 %and.i.i.i1032 to ptr
  %cpu.i.i1033 = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 3
  %158 = ptrtoint ptr %cpu.i.i1033 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %cpu.i.i1033, align 4
  %arrayidx.i.i1034 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %159
  %160 = ptrtoint ptr %arrayidx.i.i1034 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx.i.i1034, align 4
  %add.i10.i1035 = add i32 %161, ptrtoint (ptr @net_rand_noise to i32)
  %162 = inttoptr i32 %add.i10.i1035 to ptr
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 4
  %xor.i.i1036 = xor i32 %164, ptrtoint (ptr @rnd_state to i32)
  %add8.i.i1037 = add i32 %xor.i.i1036, 5125
  %or.i1.i.i1038 = call i32 @llvm.fshl.i32(i32 %add8.i.i1037, i32 %add8.i.i1037, i32 16) #10
  %165 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %or.i1.i.i1038, ptr %162, align 4
  %call335 = call fastcc i32 @verify_all_eraseblocks()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call335)
  %tobool336.not = icmp eq i32 %call335, 0
  br i1 %tobool336.not, label %if.end338, label %if.end332.out_crit_edge

if.end332.out_crit_edge:                          ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end338:                                        ; preds = %if.end332
  store i32 0, ptr @use_offset, align 4
  %166 = load ptr, ptr @mtd, align 4
  %oobavail339 = getelementptr inbounds %struct.mtd_info, ptr %166, i32 0, i32 7
  %167 = ptrtoint ptr %oobavail339 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %oobavail339, align 8
  store i32 %168, ptr @use_len, align 4
  store i32 %168, ptr @use_len_max, align 4
  store i1 false, ptr @vary_offset, align 4
  %call345 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #13
  %169 = load ptr, ptr @mtd, align 4
  %170 = load ptr, ptr @bbt, align 4
  %171 = load i32, ptr @ebcnt, align 4
  %call346 = call i32 @mtdtest_erase_good_eraseblocks(ptr noundef %169, ptr noundef %170, i32 noundef 0, i32 noundef %171) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call346)
  %tobool347.not = icmp eq i32 %call346, 0
  br i1 %tobool347.not, label %for.cond350.preheader, label %if.end338.out_crit_edge

if.end338.out_crit_edge:                          ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond350.preheader:                            ; preds = %if.end338
  %172 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp3511105.not = icmp eq i32 %172, 0
  br i1 %cmp3511105.not, label %for.cond350.preheader.for.end362_crit_edge, label %land.rhs.lr.ph

for.cond350.preheader.for.end362_crit_edge:       ; preds = %for.cond350.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end362

land.rhs.lr.ph:                                   ; preds = %for.cond350.preheader
  %173 = load ptr, ptr @bbt, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.body356.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.11107 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc361, %for.body356.land.rhs_crit_edge ]
  %addr0.01106 = phi i64 [ 0, %land.rhs.lr.ph ], [ %add359, %for.body356.land.rhs_crit_edge ]
  %arrayidx353 = getelementptr i8, ptr %173, i32 %i.11107
  %174 = ptrtoint ptr %arrayidx353 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx353, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool355.not = icmp eq i8 %175, 0
  br i1 %tobool355.not, label %land.rhs.for.end362_crit_edge, label %for.body356

land.rhs.for.end362_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end362

for.body356:                                      ; preds = %land.rhs
  %176 = load ptr, ptr @mtd, align 4
  %erasesize357 = getelementptr inbounds %struct.mtd_info, ptr %176, i32 0, i32 3
  %177 = ptrtoint ptr %erasesize357 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %erasesize357, align 8
  %conv358 = zext i32 %178 to i64
  %add359 = add i64 %addr0.01106, %conv358
  %inc361 = add nuw i32 %i.11107, 1
  %exitcond.not = icmp eq i32 %inc361, %172
  br i1 %exitcond.not, label %for.body356.for.end362_crit_edge, label %for.body356.land.rhs_crit_edge

for.body356.land.rhs_crit_edge:                   ; preds = %for.body356
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.body356.for.end362_crit_edge:                 ; preds = %for.body356
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end362

for.end362:                                       ; preds = %for.body356.for.end362_crit_edge, %land.rhs.for.end362_crit_edge, %for.cond350.preheader.for.end362_crit_edge
  %addr0.0.lcssa = phi i64 [ 0, %for.cond350.preheader.for.end362_crit_edge ], [ %add359, %for.body356.for.end362_crit_edge ], [ %addr0.01106, %land.rhs.for.end362_crit_edge ]
  %179 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 1, ptr %ops, align 4
  %180 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %0, align 4
  %181 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %1, align 4
  %182 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 1, ptr %2, align 4
  %183 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %3, align 4
  %184 = load ptr, ptr @mtd, align 4
  %oobavail363 = getelementptr inbounds %struct.mtd_info, ptr %184, i32 0, i32 7
  %185 = ptrtoint ptr %oobavail363 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %oobavail363, align 8
  %187 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %4, align 4
  %188 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr null, ptr %5, align 4
  %189 = load ptr, ptr @writebuf, align 4
  %190 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %189, ptr %6, align 4
  %call368 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #13
  %call373 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #13
  %191 = load ptr, ptr @mtd, align 4
  %call374 = call i32 @mtd_write_oob(ptr noundef %191, i64 noundef %addr0.0.lcssa, ptr noundef nonnull %ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call374)
  %tobool375.not = icmp eq i32 %call374, 0
  br i1 %tobool375.not, label %do.end385, label %do.end379

do.end379:                                        ; preds = %for.end362
  call void @__sanitizer_cov_trace_pc() #12
  %call381 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #13
  br label %if.end389

do.end385:                                        ; preds = %for.end362
  call void @__sanitizer_cov_trace_pc() #12
  %call387 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #13
  %192 = load i32, ptr @errcnt, align 4
  %add388 = add i32 %192, 1
  store i32 %add388, ptr @errcnt, align 4
  br label %if.end389

if.end389:                                        ; preds = %do.end385, %do.end379
  %193 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 1, ptr %ops, align 4
  %194 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %0, align 4
  %195 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %1, align 4
  %196 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 1, ptr %2, align 4
  %197 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %3, align 4
  %198 = load ptr, ptr @mtd, align 4
  %oobavail395 = getelementptr inbounds %struct.mtd_info, ptr %198, i32 0, i32 7
  %199 = ptrtoint ptr %oobavail395 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %oobavail395, align 8
  %201 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %4, align 4
  %202 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr null, ptr %5, align 4
  %203 = load ptr, ptr @readbuf, align 4
  %204 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %203, ptr %6, align 4
  %call403 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #13
  %call408 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #13
  %205 = load ptr, ptr @mtd, align 4
  %call409 = call i32 @mtd_read_oob(ptr noundef %205, i64 noundef %addr0.0.lcssa, ptr noundef nonnull %ops) #10
  %206 = zext i32 %call409 to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %call409, label %do.end418 [
    i32 -117, label %if.end389.do.end424_crit_edge
    i32 0, label %if.end389.do.end424_crit_edge1145
  ]

if.end389.do.end424_crit_edge1145:                ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end424

if.end389.do.end424_crit_edge:                    ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end424

do.end418:                                        ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #12
  %call420 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #13
  br label %if.end428

do.end424:                                        ; preds = %if.end389.do.end424_crit_edge, %if.end389.do.end424_crit_edge1145
  %call426 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #13
  %207 = load i32, ptr @errcnt, align 4
  %add427 = add i32 %207, 1
  store i32 %add427, ptr @errcnt, align 4
  br label %if.end428

if.end428:                                        ; preds = %do.end424, %do.end418
  %208 = load ptr, ptr @bbt, align 4
  %209 = load i32, ptr @ebcnt, align 4
  %sub429 = add i32 %209, -1
  %arrayidx430 = getelementptr i8, ptr %208, i32 %sub429
  %210 = ptrtoint ptr %arrayidx430 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx430, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool431.not = icmp eq i8 %211, 0
  br i1 %tobool431.not, label %if.else438, label %do.end435

do.end435:                                        ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #12
  %call437 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #13
  br label %do.end613

if.else438:                                       ; preds = %if.end428
  %212 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 1, ptr %ops, align 4
  %213 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 0, ptr %0, align 4
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 0, ptr %1, align 4
  %215 = load ptr, ptr @mtd, align 4
  %oobavail442 = getelementptr inbounds %struct.mtd_info, ptr %215, i32 0, i32 7
  %216 = ptrtoint ptr %oobavail442 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %oobavail442, align 8
  %add443 = add i32 %217, 1
  %218 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %add443, ptr %2, align 4
  %219 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 0, ptr %3, align 4
  %220 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %4, align 4
  %221 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr null, ptr %5, align 4
  %222 = load ptr, ptr @writebuf, align 4
  %223 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %222, ptr %6, align 4
  %call453 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #13
  %call458 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #13
  %224 = load ptr, ptr @mtd, align 4
  %size459 = getelementptr inbounds %struct.mtd_info, ptr %224, i32 0, i32 2
  %225 = ptrtoint ptr %size459 to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %size459, align 8
  %writesize460 = getelementptr inbounds %struct.mtd_info, ptr %224, i32 0, i32 4
  %227 = ptrtoint ptr %writesize460 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %writesize460, align 4
  %conv461 = zext i32 %228 to i64
  %sub462 = sub i64 %226, %conv461
  %call463 = call i32 @mtd_write_oob(ptr noundef %224, i64 noundef %sub462, ptr noundef nonnull %ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call463)
  %tobool464.not = icmp eq i32 %call463, 0
  br i1 %tobool464.not, label %do.end474, label %do.end468

do.end468:                                        ; preds = %if.else438
  call void @__sanitizer_cov_trace_pc() #12
  %call470 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #13
  br label %if.end478

do.end474:                                        ; preds = %if.else438
  call void @__sanitizer_cov_trace_pc() #12
  %call476 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #13
  %229 = load i32, ptr @errcnt, align 4
  %add477 = add i32 %229, 1
  store i32 %add477, ptr @errcnt, align 4
  br label %if.end478

if.end478:                                        ; preds = %do.end474, %do.end468
  %230 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 1, ptr %ops, align 4
  %231 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 0, ptr %0, align 4
  %232 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 0, ptr %1, align 4
  %233 = load ptr, ptr @mtd, align 4
  %oobavail482 = getelementptr inbounds %struct.mtd_info, ptr %233, i32 0, i32 7
  %234 = ptrtoint ptr %oobavail482 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %oobavail482, align 8
  %add483 = add i32 %235, 1
  %236 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %add483, ptr %2, align 4
  %237 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %3, align 4
  %238 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 0, ptr %4, align 4
  %239 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr null, ptr %5, align 4
  %240 = load ptr, ptr @readbuf, align 4
  %241 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %240, ptr %6, align 4
  %call493 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #13
  %call498 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #13
  %242 = load ptr, ptr @mtd, align 4
  %size499 = getelementptr inbounds %struct.mtd_info, ptr %242, i32 0, i32 2
  %243 = ptrtoint ptr %size499 to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %size499, align 8
  %writesize500 = getelementptr inbounds %struct.mtd_info, ptr %242, i32 0, i32 4
  %245 = ptrtoint ptr %writesize500 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %writesize500, align 4
  %conv501 = zext i32 %246 to i64
  %sub502 = sub i64 %244, %conv501
  %call503 = call i32 @mtd_read_oob(ptr noundef %242, i64 noundef %sub502, ptr noundef nonnull %ops) #10
  %247 = zext i32 %call503 to i64
  call void @__sanitizer_cov_trace_switch(i64 %247, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %call503, label %do.end512 [
    i32 -117, label %if.end478.do.end518_crit_edge
    i32 0, label %if.end478.do.end518_crit_edge1146
  ]

if.end478.do.end518_crit_edge1146:                ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end518

if.end478.do.end518_crit_edge:                    ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end518

do.end512:                                        ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #12
  %call514 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #13
  br label %if.end522

do.end518:                                        ; preds = %if.end478.do.end518_crit_edge, %if.end478.do.end518_crit_edge1146
  %call520 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #13
  %248 = load i32, ptr @errcnt, align 4
  %add521 = add i32 %248, 1
  store i32 %add521, ptr @errcnt, align 4
  br label %if.end522

if.end522:                                        ; preds = %do.end518, %do.end512
  %249 = load ptr, ptr @mtd, align 4
  %250 = load i32, ptr @ebcnt, align 4
  %sub523 = add i32 %250, -1
  %call524 = call i32 @mtdtest_erase_eraseblock(ptr noundef %249, i32 noundef %sub523) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call524)
  %tobool525.not = icmp eq i32 %call524, 0
  br i1 %tobool525.not, label %if.end527, label %if.end522.out_crit_edge

if.end522.out_crit_edge:                          ; preds = %if.end522
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end527:                                        ; preds = %if.end522
  %251 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 1, ptr %ops, align 4
  %252 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 0, ptr %0, align 4
  %253 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 0, ptr %1, align 4
  %254 = load ptr, ptr @mtd, align 4
  %oobavail531 = getelementptr inbounds %struct.mtd_info, ptr %254, i32 0, i32 7
  %255 = ptrtoint ptr %oobavail531 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %oobavail531, align 8
  %257 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %256, ptr %2, align 4
  %258 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 0, ptr %3, align 4
  %259 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 1, ptr %4, align 4
  %260 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr null, ptr %5, align 4
  %261 = load ptr, ptr @writebuf, align 4
  %262 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %261, ptr %6, align 4
  %call541 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #13
  %call546 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #13
  %263 = load ptr, ptr @mtd, align 4
  %size547 = getelementptr inbounds %struct.mtd_info, ptr %263, i32 0, i32 2
  %264 = ptrtoint ptr %size547 to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %size547, align 8
  %writesize548 = getelementptr inbounds %struct.mtd_info, ptr %263, i32 0, i32 4
  %266 = ptrtoint ptr %writesize548 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %writesize548, align 4
  %conv549 = zext i32 %267 to i64
  %sub550 = sub i64 %265, %conv549
  %call551 = call i32 @mtd_write_oob(ptr noundef %263, i64 noundef %sub550, ptr noundef nonnull %ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call551)
  %tobool552.not = icmp eq i32 %call551, 0
  br i1 %tobool552.not, label %do.end562, label %do.end556

do.end556:                                        ; preds = %if.end527
  call void @__sanitizer_cov_trace_pc() #12
  %call558 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #13
  br label %if.end566

do.end562:                                        ; preds = %if.end527
  call void @__sanitizer_cov_trace_pc() #12
  %call564 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #13
  %268 = load i32, ptr @errcnt, align 4
  %add565 = add i32 %268, 1
  store i32 %add565, ptr @errcnt, align 4
  br label %if.end566

if.end566:                                        ; preds = %do.end562, %do.end556
  %269 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 1, ptr %ops, align 4
  %270 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 0, ptr %0, align 4
  %271 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 0, ptr %1, align 4
  %272 = load ptr, ptr @mtd, align 4
  %oobavail570 = getelementptr inbounds %struct.mtd_info, ptr %272, i32 0, i32 7
  %273 = ptrtoint ptr %oobavail570 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %oobavail570, align 8
  %275 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %274, ptr %2, align 4
  %276 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 0, ptr %3, align 4
  %277 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 1, ptr %4, align 4
  %278 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr null, ptr %5, align 4
  %279 = load ptr, ptr @readbuf, align 4
  %280 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %279, ptr %6, align 4
  %call580 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #13
  %call585 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #13
  %281 = load ptr, ptr @mtd, align 4
  %size586 = getelementptr inbounds %struct.mtd_info, ptr %281, i32 0, i32 2
  %282 = ptrtoint ptr %size586 to i32
  call void @__asan_load8_noabort(i32 %282)
  %283 = load i64, ptr %size586, align 8
  %writesize587 = getelementptr inbounds %struct.mtd_info, ptr %281, i32 0, i32 4
  %284 = ptrtoint ptr %writesize587 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %writesize587, align 4
  %conv588 = zext i32 %285 to i64
  %sub589 = sub i64 %283, %conv588
  %call590 = call i32 @mtd_read_oob(ptr noundef %281, i64 noundef %sub589, ptr noundef nonnull %ops) #10
  %286 = zext i32 %call590 to i64
  call void @__sanitizer_cov_trace_switch(i64 %286, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %call590, label %do.end599 [
    i32 -117, label %if.end566.do.end605_crit_edge
    i32 0, label %if.end566.do.end605_crit_edge1147
  ]

if.end566.do.end605_crit_edge1147:                ; preds = %if.end566
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end605

if.end566.do.end605_crit_edge:                    ; preds = %if.end566
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end605

do.end599:                                        ; preds = %if.end566
  call void @__sanitizer_cov_trace_pc() #12
  %call601 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #13
  br label %do.end613

do.end605:                                        ; preds = %if.end566.do.end605_crit_edge, %if.end566.do.end605_crit_edge1147
  %call607 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #13
  %287 = load i32, ptr @errcnt, align 4
  %add608 = add i32 %287, 1
  store i32 %add608, ptr @errcnt, align 4
  br label %do.end613

do.end613:                                        ; preds = %do.end605, %do.end599, %do.end435
  %call615 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #13
  %288 = load ptr, ptr @mtd, align 4
  %289 = load ptr, ptr @bbt, align 4
  %290 = load i32, ptr @ebcnt, align 4
  %call616 = call i32 @mtdtest_erase_good_eraseblocks(ptr noundef %288, ptr noundef %289, i32 noundef 0, i32 noundef %290) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call616)
  %tobool617.not = icmp eq i32 %call616, 0
  br i1 %tobool617.not, label %if.end619, label %do.end613.out_crit_edge

do.end613.out_crit_edge:                          ; preds = %do.end613
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end619:                                        ; preds = %do.end613
  store i32 11275, ptr @rnd_state, align 4
  store i32 11275, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 1), align 4
  store i32 11275, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 2), align 4
  store i32 11275, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 3), align 4
  %291 = call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i1045 = and i32 %291, -16384
  %292 = inttoptr i32 %and.i.i.i1045 to ptr
  %cpu.i.i1046 = getelementptr inbounds %struct.thread_info, ptr %292, i32 0, i32 3
  %293 = ptrtoint ptr %cpu.i.i1046 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %cpu.i.i1046, align 4
  %arrayidx.i.i1047 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %294
  %295 = ptrtoint ptr %arrayidx.i.i1047 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %arrayidx.i.i1047, align 4
  %add.i10.i1048 = add i32 %296, ptrtoint (ptr @net_rand_noise to i32)
  %297 = inttoptr i32 %add.i10.i1048 to ptr
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %297, align 4
  %xor.i.i1049 = xor i32 %299, ptrtoint (ptr @rnd_state to i32)
  %add8.i.i1050 = add i32 %xor.i.i1049, 11275
  %or.i1.i.i1051 = call i32 @llvm.fshl.i32(i32 %add8.i.i1050, i32 %add8.i.i1050, i32 16) #10
  %300 = ptrtoint ptr %297 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %or.i1.i.i1051, ptr %297, align 4
  %call624 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110) #13
  %301 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %301)
  %cmp6271113.not = icmp eq i32 %301, 1
  br i1 %cmp6271113.not, label %if.end619.do.end693_crit_edge, label %if.end619.for.body629_crit_edge

if.end619.for.body629_crit_edge:                  ; preds = %if.end619
  br label %for.body629

if.end619.do.end693_crit_edge:                    ; preds = %if.end619
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end693

for.body629:                                      ; preds = %for.inc688.for.body629_crit_edge, %if.end619.for.body629_crit_edge
  %i.21114 = phi i32 [ %add634, %for.inc688.for.body629_crit_edge ], [ 0, %if.end619.for.body629_crit_edge ]
  %302 = load ptr, ptr @mtd, align 4
  %oobavail630 = getelementptr inbounds %struct.mtd_info, ptr %302, i32 0, i32 7
  %303 = ptrtoint ptr %oobavail630 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %oobavail630, align 8
  %305 = load ptr, ptr @bbt, align 4
  %arrayidx631 = getelementptr i8, ptr %305, i32 %i.21114
  %306 = ptrtoint ptr %arrayidx631 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx631, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %tobool633.not = icmp eq i8 %307, 0
  %add634 = add nuw i32 %i.21114, 1
  br i1 %tobool633.not, label %lor.lhs.false, label %for.body629.for.inc688_crit_edge

for.body629.for.inc688_crit_edge:                 ; preds = %for.body629
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc688

lor.lhs.false:                                    ; preds = %for.body629
  %arrayidx635 = getelementptr i8, ptr %305, i32 %add634
  %308 = ptrtoint ptr %arrayidx635 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %arrayidx635, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %309)
  %tobool637.not = icmp eq i8 %309, 0
  br i1 %tobool637.not, label %if.end639, label %lor.lhs.false.for.inc688_crit_edge

lor.lhs.false.for.inc688_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc688

if.end639:                                        ; preds = %lor.lhs.false
  %conv641 = zext i32 %add634 to i64
  %erasesize642 = getelementptr inbounds %struct.mtd_info, ptr %302, i32 0, i32 3
  %310 = ptrtoint ptr %erasesize642 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %erasesize642, align 8
  %conv643 = zext i32 %311 to i64
  %mul644 = mul nuw i64 %conv643, %conv641
  %writesize645 = getelementptr inbounds %struct.mtd_info, ptr %302, i32 0, i32 4
  %312 = ptrtoint ptr %writesize645 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %writesize645, align 4
  %conv646 = zext i32 %313 to i64
  %sub647 = sub i64 %mul644, %conv646
  %314 = load ptr, ptr @writebuf, align 4
  %mul648 = shl i32 %304, 1
  call void @prandom_bytes_state(ptr noundef nonnull @rnd_state, ptr noundef %314, i32 noundef %mul648) #10
  %rem666 = and i32 %i.21114, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem666)
  %cmp667 = icmp eq i32 %rem666, 0
  br label %for.body652

for.body652:                                      ; preds = %if.end679.for.body652_crit_edge, %if.end639
  %addr.01111 = phi i64 [ %sub647, %if.end639 ], [ %add682, %if.end679.for.body652_crit_edge ]
  %cmp650 = phi i1 [ true, %if.end639 ], [ false, %if.end679.for.body652_crit_edge ]
  %pg.01110 = phi i32 [ 0, %if.end639 ], [ 1, %if.end679.for.body652_crit_edge ]
  %315 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 1, ptr %ops, align 4
  %316 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 0, ptr %0, align 4
  %317 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 0, ptr %1, align 4
  %318 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %304, ptr %2, align 4
  %319 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 0, ptr %3, align 4
  %320 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 0, ptr %4, align 4
  %321 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr null, ptr %5, align 4
  %322 = load ptr, ptr @writebuf, align 4
  %mul660 = mul nuw nsw i32 %pg.01110, %304
  %add.ptr = getelementptr i8, ptr %322, i32 %mul660
  %323 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %add.ptr, ptr %6, align 4
  %324 = load ptr, ptr @mtd, align 4
  %call662 = call i32 @mtd_write_oob(ptr noundef %324, i64 noundef %addr.01111, ptr noundef nonnull %ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call662)
  %tobool663.not = icmp eq i32 %call662, 0
  br i1 %tobool663.not, label %if.end665, label %for.body652.out_crit_edge

for.body652.out_crit_edge:                        ; preds = %for.body652
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end665:                                        ; preds = %for.body652
  br i1 %cmp667, label %do.end672, label %if.end665.if.end675_crit_edge

if.end665.if.end675_crit_edge:                    ; preds = %if.end665
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end675

do.end672:                                        ; preds = %if.end665
  call void @__sanitizer_cov_trace_pc() #12
  %call674 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i32 noundef %i.21114) #13
  br label %if.end675

if.end675:                                        ; preds = %do.end672, %if.end665.if.end675_crit_edge
  %call676 = call fastcc i32 @mtdtest_relax()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call676)
  %tobool677.not = icmp eq i32 %call676, 0
  br i1 %tobool677.not, label %if.end679, label %if.end675.out_crit_edge

if.end675.out_crit_edge:                          ; preds = %if.end675
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end679:                                        ; preds = %if.end675
  %325 = load ptr, ptr @mtd, align 4
  %writesize680 = getelementptr inbounds %struct.mtd_info, ptr %325, i32 0, i32 4
  %326 = ptrtoint ptr %writesize680 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %writesize680, align 4
  %conv681 = zext i32 %327 to i64
  %add682 = add i64 %addr.01111, %conv681
  br i1 %cmp650, label %if.end679.for.body652_crit_edge, label %if.end679.for.inc688_crit_edge

if.end679.for.inc688_crit_edge:                   ; preds = %if.end679
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc688

if.end679.for.body652_crit_edge:                  ; preds = %if.end679
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body652

for.inc688:                                       ; preds = %if.end679.for.inc688_crit_edge, %lor.lhs.false.for.inc688_crit_edge, %for.body629.for.inc688_crit_edge
  %328 = load i32, ptr @ebcnt, align 4
  %sub626 = add i32 %328, -1
  %cmp627 = icmp ult i32 %add634, %sub626
  br i1 %cmp627, label %for.inc688.for.body629_crit_edge, label %for.inc688.do.end693_crit_edge

for.inc688.do.end693_crit_edge:                   ; preds = %for.inc688
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end693

for.inc688.for.body629_crit_edge:                 ; preds = %for.inc688
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body629

do.end693:                                        ; preds = %for.inc688.do.end693_crit_edge, %if.end619.do.end693_crit_edge
  %i.2.lcssa = phi i32 [ 0, %if.end619.do.end693_crit_edge ], [ %add634, %for.inc688.do.end693_crit_edge ]
  %call695 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %i.2.lcssa) #13
  store i32 11275, ptr @rnd_state, align 4
  store i32 11275, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 1), align 4
  store i32 11275, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 2), align 4
  store i32 11275, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd_state, i32 0, i32 3), align 4
  %329 = call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i1052 = and i32 %329, -16384
  %330 = inttoptr i32 %and.i.i.i1052 to ptr
  %cpu.i.i1053 = getelementptr inbounds %struct.thread_info, ptr %330, i32 0, i32 3
  %331 = ptrtoint ptr %cpu.i.i1053 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %cpu.i.i1053, align 4
  %arrayidx.i.i1054 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %332
  %333 = ptrtoint ptr %arrayidx.i.i1054 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %arrayidx.i.i1054, align 4
  %add.i10.i1055 = add i32 %334, ptrtoint (ptr @net_rand_noise to i32)
  %335 = inttoptr i32 %add.i10.i1055 to ptr
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %335, align 4
  %xor.i.i1056 = xor i32 %337, ptrtoint (ptr @rnd_state to i32)
  %add8.i.i1057 = add i32 %xor.i.i1056, 11275
  %or.i1.i.i1058 = call i32 @llvm.fshl.i32(i32 %add8.i.i1057, i32 %add8.i.i1057, i32 16) #10
  %338 = ptrtoint ptr %335 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %or.i1.i.i1058, ptr %335, align 4
  %call700 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #13
  %339 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %339)
  %cmp7031118.not = icmp eq i32 %339, 1
  br i1 %cmp7031118.not, label %do.end693.do.end784_crit_edge, label %do.end693.for.body705_crit_edge

do.end693.for.body705_crit_edge:                  ; preds = %do.end693
  br label %for.body705

do.end693.do.end784_crit_edge:                    ; preds = %do.end693
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end784

for.body705:                                      ; preds = %for.inc779.for.body705_crit_edge, %do.end693.for.body705_crit_edge
  %i.31119 = phi i32 [ %add710, %for.inc779.for.body705_crit_edge ], [ 0, %do.end693.for.body705_crit_edge ]
  %340 = load ptr, ptr @bbt, align 4
  %arrayidx706 = getelementptr i8, ptr %340, i32 %i.31119
  %341 = ptrtoint ptr %arrayidx706 to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %arrayidx706, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %342)
  %tobool708.not = icmp eq i8 %342, 0
  %add710 = add nuw i32 %i.31119, 1
  br i1 %tobool708.not, label %lor.lhs.false709, label %for.body705.for.inc779_crit_edge

for.body705.for.inc779_crit_edge:                 ; preds = %for.body705
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc779

lor.lhs.false709:                                 ; preds = %for.body705
  %arrayidx711 = getelementptr i8, ptr %340, i32 %add710
  %343 = ptrtoint ptr %arrayidx711 to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %arrayidx711, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %344)
  %tobool713.not = icmp eq i8 %344, 0
  br i1 %tobool713.not, label %if.end715, label %lor.lhs.false709.for.inc779_crit_edge

lor.lhs.false709.for.inc779_crit_edge:            ; preds = %lor.lhs.false709
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc779

if.end715:                                        ; preds = %lor.lhs.false709
  %345 = load ptr, ptr @writebuf, align 4
  %346 = load ptr, ptr @mtd, align 4
  %oobavail716 = getelementptr inbounds %struct.mtd_info, ptr %346, i32 0, i32 7
  %347 = ptrtoint ptr %oobavail716 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %oobavail716, align 8
  %mul717 = shl i32 %348, 1
  call void @prandom_bytes_state(ptr noundef nonnull @rnd_state, ptr noundef %345, i32 noundef %mul717) #10
  %conv719 = zext i32 %add710 to i64
  %349 = load ptr, ptr @mtd, align 4
  %erasesize720 = getelementptr inbounds %struct.mtd_info, ptr %349, i32 0, i32 3
  %350 = ptrtoint ptr %erasesize720 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %erasesize720, align 8
  %conv721 = zext i32 %351 to i64
  %mul722 = mul nuw i64 %conv721, %conv719
  %writesize723 = getelementptr inbounds %struct.mtd_info, ptr %349, i32 0, i32 4
  %352 = ptrtoint ptr %writesize723 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %writesize723, align 4
  %conv724 = zext i32 %353 to i64
  %sub725 = sub i64 %mul722, %conv724
  %354 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 1, ptr %ops, align 4
  %355 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 0, ptr %0, align 4
  %356 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 0, ptr %1, align 4
  %oobavail729 = getelementptr inbounds %struct.mtd_info, ptr %349, i32 0, i32 7
  %357 = ptrtoint ptr %oobavail729 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %oobavail729, align 8
  %mul730 = shl i32 %358, 1
  %359 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %mul730, ptr %2, align 4
  %360 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 0, ptr %3, align 4
  %361 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 0, ptr %4, align 4
  %362 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr null, ptr %5, align 4
  %363 = load ptr, ptr @readbuf, align 4
  %364 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %364)
  store ptr %363, ptr %6, align 4
  %call736 = call i32 @mtd_read_oob(ptr noundef %349, i64 noundef %sub725, ptr noundef nonnull %ops) #10
  %365 = zext i32 %call736 to i64
  call void @__sanitizer_cov_trace_switch(i64 %365, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %call736, label %if.end715.out_crit_edge [
    i32 -117, label %if.end715.if.end743_crit_edge
    i32 0, label %if.end715.if.end743_crit_edge1148
  ]

if.end715.if.end743_crit_edge1148:                ; preds = %if.end715
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end743

if.end715.if.end743_crit_edge:                    ; preds = %if.end715
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end743

if.end715.out_crit_edge:                          ; preds = %if.end715
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end743:                                        ; preds = %if.end715.if.end743_crit_edge, %if.end715.if.end743_crit_edge1148
  %366 = load ptr, ptr @readbuf, align 4
  %367 = load ptr, ptr @writebuf, align 4
  %368 = load ptr, ptr @mtd, align 4
  %oobavail744 = getelementptr inbounds %struct.mtd_info, ptr %368, i32 0, i32 7
  %369 = ptrtoint ptr %oobavail744 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %oobavail744, align 8
  %mul745 = shl i32 %370, 1
  %call746 = call fastcc i32 @memcmpshowoffset(i64 noundef %sub725, i64 noundef 0, ptr noundef %366, ptr noundef %367, i32 noundef %mul745)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call746)
  %tobool747.not = icmp eq i32 %call746, 0
  br i1 %tobool747.not, label %if.end743.if.end764_crit_edge, label %do.end751

if.end743.if.end764_crit_edge:                    ; preds = %if.end743
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end764

do.end751:                                        ; preds = %if.end743
  %call753 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i64 noundef %sub725) #13
  %371 = load i32, ptr @errcnt, align 4
  %add754 = add i32 %371, 1
  store i32 %add754, ptr @errcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %add754)
  %cmp755 = icmp sgt i32 %add754, 1000
  br i1 %cmp755, label %if.then757, label %do.end751.if.end764_crit_edge

do.end751.if.end764_crit_edge:                    ; preds = %do.end751
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end764

if.then757:                                       ; preds = %do.end751
  call void @__sanitizer_cov_trace_pc() #12
  %call762 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #13
  br label %out

if.end764:                                        ; preds = %do.end751.if.end764_crit_edge, %if.end743.if.end764_crit_edge
  %rem765 = and i32 %i.31119, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem765)
  %cmp766 = icmp eq i32 %rem765, 0
  br i1 %cmp766, label %do.end771, label %if.end764.if.end774_crit_edge

if.end764.if.end774_crit_edge:                    ; preds = %if.end764
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end774

do.end771:                                        ; preds = %if.end764
  call void @__sanitizer_cov_trace_pc() #12
  %call773 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %i.31119) #13
  br label %if.end774

if.end774:                                        ; preds = %do.end771, %if.end764.if.end774_crit_edge
  %call775 = call fastcc i32 @mtdtest_relax()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call775)
  %tobool776.not = icmp eq i32 %call775, 0
  br i1 %tobool776.not, label %if.end774.for.inc779_crit_edge, label %if.end774.out_crit_edge

if.end774.out_crit_edge:                          ; preds = %if.end774
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end774.for.inc779_crit_edge:                   ; preds = %if.end774
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc779

for.inc779:                                       ; preds = %if.end774.for.inc779_crit_edge, %lor.lhs.false709.for.inc779_crit_edge, %for.body705.for.inc779_crit_edge
  %372 = load i32, ptr @ebcnt, align 4
  %sub702 = add i32 %372, -1
  %cmp703 = icmp ult i32 %add710, %sub702
  br i1 %cmp703, label %for.inc779.for.body705_crit_edge, label %for.inc779.do.end784_crit_edge

for.inc779.do.end784_crit_edge:                   ; preds = %for.inc779
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end784

for.inc779.for.body705_crit_edge:                 ; preds = %for.inc779
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body705

do.end784:                                        ; preds = %for.inc779.do.end784_crit_edge, %do.end693.do.end784_crit_edge
  %i.3.lcssa = phi i32 [ 0, %do.end693.do.end784_crit_edge ], [ %add710, %for.inc779.do.end784_crit_edge ]
  %call786 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %i.3.lcssa) #13
  %373 = load i32, ptr @errcnt, align 4
  %call791 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %373) #13
  br label %out

out:                                              ; preds = %do.end784, %if.end774.out_crit_edge, %if.then757, %if.end715.out_crit_edge, %if.end675.out_crit_edge, %for.body652.out_crit_edge, %do.end613.out_crit_edge, %if.end522.out_crit_edge, %if.end338.out_crit_edge, %if.end332.out_crit_edge, %if.end326.out_crit_edge, %do.end315.out_crit_edge, %mtdtest_relax.exit, %verify_eraseblock_in_one_go.exit.out_crit_edge, %verify_eraseblock_in_one_go.exit.thread1078, %if.end280.out_crit_edge, %do.end274.out_crit_edge, %if.end267.out_crit_edge, %if.end263.out_crit_edge, %if.end253.out_crit_edge, %if.end249.out_crit_edge, %if.end8.i.i.out_crit_edge, %if.end8.i988.out_crit_edge, %if.end223.out_crit_edge, %do.end36
  %err.9 = phi i32 [ %call250, %if.end249.out_crit_edge ], [ %call260, %if.end253.out_crit_edge ], [ %call264, %if.end263.out_crit_edge ], [ %call268, %if.end267.out_crit_edge ], [ %call277, %do.end274.out_crit_edge ], [ %call281, %if.end280.out_crit_edge ], [ -4, %mtdtest_relax.exit ], [ %call323, %do.end315.out_crit_edge ], [ %call329, %if.end326.out_crit_edge ], [ %call335, %if.end332.out_crit_edge ], [ %call346, %if.end338.out_crit_edge ], [ %call616, %do.end613.out_crit_edge ], [ -22, %if.then757 ], [ 0, %do.end784 ], [ %call524, %if.end522.out_crit_edge ], [ -12, %if.end8.i.i.out_crit_edge ], [ -12, %if.end8.i988.out_crit_edge ], [ -12, %if.end223.out_crit_edge ], [ 0, %do.end36 ], [ -1, %verify_eraseblock_in_one_go.exit.thread1078 ], [ %call775, %if.end774.out_crit_edge ], [ %call736, %if.end715.out_crit_edge ], [ %call676, %if.end675.out_crit_edge ], [ %call662, %for.body652.out_crit_edge ], [ %spec.select71.i, %verify_eraseblock_in_one_go.exit.out_crit_edge ]
  %374 = load ptr, ptr @bbt, align 4
  call void @kfree(ptr noundef %374) #10
  %375 = load ptr, ptr @writebuf, align 4
  call void @kfree(ptr noundef %375) #10
  %376 = load ptr, ptr @readbuf, align 4
  call void @kfree(ptr noundef %376) #10
  %377 = load ptr, ptr @mtd, align 4
  call void @put_mtd_device(ptr noundef %377) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.9)
  %tobool792.not = icmp eq i32 %err.9, 0
  br i1 %tobool792.not, label %out.do.end802_crit_edge, label %do.end796

out.do.end802_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end802

do.end796:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %call798 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %err.9) #13
  br label %do.end802

do.end802:                                        ; preds = %do.end796, %out.do.end802_crit_edge
  %call804 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %cleanup805

cleanup805:                                       ; preds = %do.end802, %if.then24, %do.end9
  %retval.0 = phi i32 [ -22, %do.end9 ], [ %10, %if.then24 ], [ %err.9, %do.end802 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #10
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
define internal fastcc i32 @write_whole_device() unnamed_addr #5 align 64 {
entry:
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110) #13
  %0 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp42.not = icmp eq i32 %0, 0
  br i1 %cmp42.not, label %entry.do.end19_crit_edge, label %for.body.lr.ph

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %4 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 4
  %5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %6 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %7 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = load ptr, ptr @bbt, align 4
  %arrayidx = getelementptr i8, ptr %8, i32 %i.043
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #10
  %11 = load ptr, ptr @mtd, align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %erasesize.i, align 8
  %14 = load ptr, ptr @writebuf, align 4
  %15 = load i32, ptr @use_len_max, align 4
  %16 = load i32, ptr @pgcnt, align 4
  %mul2.i = mul i32 %16, %15
  call void @prandom_bytes_state(ptr noundef nonnull @rnd_state, ptr noundef %14, i32 noundef %mul2.i) #10
  %17 = load i32, ptr @pgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp32.i = icmp sgt i32 %17, 0
  br i1 %cmp32.i, label %for.body.preheader.i, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.body.preheader.i:                             ; preds = %if.end
  %conv1.i = zext i32 %13 to i64
  %conv.i = sext i32 %i.043 to i64
  %mul.i = mul nsw i64 %conv1.i, %conv.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.034.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %addr.033.i = phi i64 [ %add20.i, %for.inc.i.for.body.i_crit_edge ], [ %mul.i, %for.body.preheader.i ]
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %ops.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %1, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %2, align 4
  %21 = load i32, ptr @use_len, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %3, align 4
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %4, align 4
  %24 = load i32, ptr @use_offset, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %5, align 4
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %6, align 4
  %27 = load ptr, ptr @writebuf, align 4
  %28 = load i32, ptr @use_len_max, align 4
  %mul4.i = mul i32 %28, %i.034.i
  %add.ptr.i = getelementptr i8, ptr %27, i32 %mul4.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %24
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr5.i, ptr %7, align 4
  %30 = load ptr, ptr @mtd, align 4
  %call.i = call i32 @mtd_write_oob(ptr noundef %30, i64 noundef %addr.033.i, ptr noundef nonnull %ops.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.i.write_eraseblock.exit_crit_edge

for.body.i.write_eraseblock.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_eraseblock.exit

lor.lhs.false.i:                                  ; preds = %for.body.i
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %4, align 4
  %33 = load i32, ptr @use_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %33)
  %cmp7.not.i = icmp eq i32 %32, %33
  br i1 %cmp7.not.i, label %if.end.i, label %lor.lhs.false.i.write_eraseblock.exit_crit_edge

lor.lhs.false.i.write_eraseblock.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_eraseblock.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %.b.i = load i1, ptr @vary_offset, align 4
  br i1 %.b.i, label %if.then17.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then17.i:                                      ; preds = %if.end.i
  %sub.i.i = add i32 %32, -1
  store i32 %sub.i.i, ptr @use_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then17.i.for.inc.i_crit_edge

if.then17.i.for.inc.i_crit_edge:                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = load i32, ptr @use_offset, align 4
  %add.i.i = add i32 %34, 1
  %35 = load i32, ptr @use_len_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %35)
  %cmp1.not.i.i = icmp slt i32 %add.i.i, %35
  %spec.store.select.i.i = select i1 %cmp1.not.i.i, i32 %add.i.i, i32 0
  store i32 %spec.store.select.i.i, ptr @use_offset, align 4
  %sub3.i.i = sub i32 %35, %spec.store.select.i.i
  store i32 %sub3.i.i, ptr @use_len, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %if.then17.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %36 = load ptr, ptr @mtd, align 4
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %writesize.i, align 4
  %conv19.i = zext i32 %38 to i64
  %add20.i = add i64 %addr.033.i, %conv19.i
  %39 = load i32, ptr @pgcnt, align 4
  %cmp.i = icmp slt i32 %inc.i, %39
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end4_crit_edge

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

write_eraseblock.exit:                            ; preds = %lor.lhs.false.i.write_eraseblock.exit_crit_edge, %for.body.i.write_eraseblock.exit_crit_edge
  %spec.select.i = phi i32 [ %call.i, %for.body.i.write_eraseblock.exit_crit_edge ], [ -1, %lor.lhs.false.i.write_eraseblock.exit_crit_edge ]
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, i64 noundef %addr.033.i) #13
  %40 = load i32, ptr @use_len, align 4
  %41 = load i32, ptr @use_offset, align 4
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %40, i32 noundef %41) #13
  %42 = load i32, ptr @errcnt, align 4
  %add.i = add i32 %42, 1
  store i32 %add.i, ptr @errcnt, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  br label %cleanup

if.end4:                                          ; preds = %for.inc.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  %rem = and i32 %i.043, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %do.end9, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i32 noundef %i.043) #13
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.end4.if.end12_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.180, i32 noundef 7, i32 noundef 0) #10
  %call.i.i = call i32 @__cond_resched() #10
  %43 = call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %stack.i.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %51 = and i32 %50, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end12.mtdtest_relax.exit_crit_edge, !prof !335

if.end12.mtdtest_relax.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit

signal_pending.exit.i:                            ; preds = %if.end12
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %48, align 4
  %and1.i.i.i.i.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i32 = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i32, label %signal_pending.exit.i.for.inc_crit_edge, label %signal_pending.exit.i.mtdtest_relax.exit_crit_edge

signal_pending.exit.i.mtdtest_relax.exit_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit

signal_pending.exit.i.for.inc_crit_edge:          ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

mtdtest_relax.exit:                               ; preds = %signal_pending.exit.i.mtdtest_relax.exit_crit_edge, %if.end12.mtdtest_relax.exit_crit_edge
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #13
  br label %cleanup

for.inc:                                          ; preds = %signal_pending.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.043, 1
  %54 = load i32, ptr @ebcnt, align 4
  %cmp = icmp ult i32 %inc, %54
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.end19_crit_edge

for.inc.do.end19_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end19:                                         ; preds = %for.inc.do.end19_crit_edge, %entry.do.end19_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.do.end19_crit_edge ], [ %inc, %for.inc.do.end19_crit_edge ]
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %i.0.lcssa) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %mtdtest_relax.exit, %write_eraseblock.exit
  %retval.0 = phi i32 [ 0, %do.end19 ], [ %spec.select.i, %write_eraseblock.exit ], [ -4, %mtdtest_relax.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @verify_all_eraseblocks() unnamed_addr #5 align 64 {
entry:
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #13
  %0 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp52.not = icmp eq i32 %0, 0
  br i1 %cmp52.not, label %entry.do.end19_crit_edge, label %for.body.lr.ph

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %4 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 4
  %5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %6 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %7 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = load ptr, ptr @bbt, align 4
  %arrayidx = getelementptr i8, ptr %8, i32 %i.053
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #10
  %11 = load ptr, ptr @mtd, align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %erasesize.i, align 8
  %14 = load ptr, ptr @writebuf, align 4
  %15 = load i32, ptr @use_len_max, align 4
  %16 = load i32, ptr @pgcnt, align 4
  %mul2.i = mul i32 %16, %15
  call void @prandom_bytes_state(ptr noundef nonnull @rnd_state, ptr noundef %14, i32 noundef %mul2.i) #10
  %17 = load i32, ptr @pgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp297.i = icmp sgt i32 %17, 0
  br i1 %cmp297.i, label %for.body.preheader.i, label %if.end.verify_eraseblock.exit.thread_crit_edge

if.end.verify_eraseblock.exit.thread_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit.thread

for.body.preheader.i:                             ; preds = %if.end
  %conv1.i = zext i32 %13 to i64
  %conv.i = sext i32 %i.053 to i64
  %mul.i = mul nsw i64 %conv1.i, %conv.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0301.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %addr.0298.i = phi i64 [ %add129.i, %for.inc.i.for.body.i_crit_edge ], [ %mul.i, %for.body.preheader.i ]
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %ops.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %1, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %2, align 4
  %21 = load i32, ptr @use_len, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %3, align 4
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %4, align 4
  %24 = load i32, ptr @use_offset, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %5, align 4
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %6, align 4
  %27 = load ptr, ptr @readbuf, align 4
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %7, align 4
  %29 = load ptr, ptr @mtd, align 4
  %call.i = call i32 @mtd_read_oob(ptr noundef %29, i64 noundef %addr.0298.i, ptr noundef nonnull %ops.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call.i)
  %cmp.i.not.i = icmp eq i32 %call.i, -117
  %spec.select.i = select i1 %cmp.i.not.i, i32 0, i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool5.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i, label %for.body.i.verify_eraseblock.exit_crit_edge

for.body.i.verify_eraseblock.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit

lor.lhs.false.i:                                  ; preds = %for.body.i
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %4, align 4
  %32 = load i32, ptr @use_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %32)
  %cmp7.not.i = icmp eq i32 %31, %32
  br i1 %cmp7.not.i, label %if.end12.i, label %lor.lhs.false.i.verify_eraseblock.exit_crit_edge

lor.lhs.false.i.verify_eraseblock.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit

if.end12.i:                                       ; preds = %lor.lhs.false.i
  %33 = load i32, ptr @use_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.not92.i.i = icmp eq i32 %31, 0
  br i1 %cmp.not92.i.i, label %if.end12.i.if.end42.i_crit_edge, label %for.body.lr.ph.i.i

if.end12.i.if.end42.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

for.body.lr.ph.i.i:                               ; preds = %if.end12.i
  %34 = load ptr, ptr @writebuf, align 4
  %35 = load i32, ptr @use_len_max, align 4
  %mul13.i = mul i32 %35, %i.0301.i
  %add.ptr.i = getelementptr i8, ptr %34, i32 %mul13.i
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i, i32 %33
  %36 = load ptr, ptr @readbuf, align 4
  %conv2.i.i = trunc i64 %addr.0298.i to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %count.addr.097.i.i = phi i32 [ %31, %for.body.lr.ph.i.i ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %bitflips.096.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %bitflips.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.095.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %su2.094.i.i = phi ptr [ %add.ptr14.i, %for.body.lr.ph.i.i ], [ %incdec.ptr67.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %su1.093.i.i = phi ptr [ %36, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %37 = ptrtoint ptr %su1.093.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %su1.093.i.i, align 1
  %39 = ptrtoint ptr %su2.094.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %su2.094.i.i, align 1
  %xor86.i.i = xor i8 %40, %38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor86.i.i)
  %tobool.not.i.i = icmp eq i8 %xor86.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %do.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %xor.i.i = zext i8 %xor86.i.i to i32
  %conv1.i.i = zext i8 %40 to i32
  %conv.i167.i = zext i8 %38 to i32
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, i32 noundef %conv2.i.i, i32 noundef %i.095.i.i, i32 noundef %conv.i167.i, i32 noundef %conv1.i.i, i32 noundef %xor.i.i) #13
  %call.i.i.i = call i32 @__sw_hweight8(i32 noundef %xor.i.i) #10
  %add66.i.i = add i32 %call.i.i.i, %bitflips.096.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %bitflips.1.i.i = phi i32 [ %add66.i.i, %do.end.i.i ], [ %bitflips.096.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %su1.093.i.i, i32 1
  %incdec.ptr67.i.i = getelementptr i8, ptr %su2.094.i.i, i32 1
  %dec.i.i = add i32 %count.addr.097.i.i, -1
  %inc.i.i = add nuw i32 %i.095.i.i, 1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %memcmpshowoffset.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

memcmpshowoffset.exit.i:                          ; preds = %for.inc.i.i
  %41 = load i32, ptr @bitflip_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bitflips.1.i.i, i32 %41)
  %cmp16.i = icmp ugt i32 %bitflips.1.i.i, %41
  br i1 %cmp16.i, label %do.end21.i, label %if.else.i

do.end21.i:                                       ; preds = %memcmpshowoffset.exit.i
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i64 noundef %addr.0298.i) #13
  %42 = load i32, ptr @errcnt, align 4
  %add24.i = add i32 %42, 1
  store i32 %add24.i, ptr @errcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %add24.i)
  %cmp25.i = icmp sgt i32 %add24.i, 1000
  br i1 %cmp25.i, label %do.end21.i.verify_eraseblock.exit.thread39_crit_edge, label %do.end21.i.if.end42thread-pre-split.i_crit_edge

do.end21.i.if.end42thread-pre-split.i_crit_edge:  ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42thread-pre-split.i

do.end21.i.verify_eraseblock.exit.thread39_crit_edge: ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit.thread39

if.else.i:                                        ; preds = %memcmpshowoffset.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitflips.1.i.i)
  %tobool34.not.i = icmp eq i32 %bitflips.1.i.i, 0
  br i1 %tobool34.not.i, label %if.else.i.if.end42thread-pre-split.i_crit_edge, label %do.end38.i

if.else.i.if.end42thread-pre-split.i_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42thread-pre-split.i

do.end38.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #13
  br label %if.end42thread-pre-split.i

if.end42thread-pre-split.i:                       ; preds = %do.end38.i, %if.else.i.if.end42thread-pre-split.i_crit_edge, %do.end21.i.if.end42thread-pre-split.i_crit_edge
  %.pr.i = load i32, ptr @use_offset, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end42thread-pre-split.i, %if.end12.i.if.end42.i_crit_edge
  %43 = phi i32 [ %.pr.i, %if.end42thread-pre-split.i ], [ %33, %if.end12.i.if.end42.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp43.not.i = icmp eq i32 %43, 0
  br i1 %cmp43.not.i, label %lor.lhs.false45.i, label %if.end42.i.if.then48.i_crit_edge

if.end42.i.if.then48.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48.i

lor.lhs.false45.i:                                ; preds = %if.end42.i
  %44 = load i32, ptr @use_len, align 4
  %45 = load ptr, ptr @mtd, align 4
  %oobavail.i = getelementptr inbounds %struct.mtd_info, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %oobavail.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %oobavail.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %47)
  %cmp46.i = icmp ult i32 %44, %47
  br i1 %cmp46.i, label %lor.lhs.false45.i.if.then48.i_crit_edge, label %lor.lhs.false45.i.if.end124.i_crit_edge

lor.lhs.false45.i.if.end124.i_crit_edge:          ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124.i

lor.lhs.false45.i.if.then48.i_crit_edge:          ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48.i

if.then48.i:                                      ; preds = %lor.lhs.false45.i.if.then48.i_crit_edge, %if.end42.i.if.then48.i_crit_edge
  %48 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %ops.i, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %1, align 4
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %2, align 4
  %51 = load ptr, ptr @mtd, align 4
  %oobavail52.i = getelementptr inbounds %struct.mtd_info, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %oobavail52.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %oobavail52.i, align 8
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %3, align 4
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %4, align 4
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %5, align 4
  %57 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %6, align 4
  %58 = load ptr, ptr @readbuf, align 4
  %59 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %7, align 4
  %call58.i = call i32 @mtd_read_oob(ptr noundef %51, i64 noundef %addr.0298.i, ptr noundef nonnull %ops.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call58.i)
  %cmp.i168.not.i = icmp eq i32 %call58.i, -117
  %spec.select165.i = select i1 %cmp.i168.not.i, i32 0, i32 %call58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select165.i)
  %tobool63.not.i = icmp eq i32 %spec.select165.i, 0
  br i1 %tobool63.not.i, label %lor.lhs.false64.i, label %if.then48.i.verify_eraseblock.exit_crit_edge

if.then48.i.verify_eraseblock.exit_crit_edge:     ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit

lor.lhs.false64.i:                                ; preds = %if.then48.i
  %60 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %4, align 4
  %62 = load ptr, ptr @mtd, align 4
  %oobavail66.i = getelementptr inbounds %struct.mtd_info, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %oobavail66.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %oobavail66.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %64)
  %cmp67.not.i = icmp eq i32 %61, %64
  br i1 %cmp67.not.i, label %if.end81.i, label %lor.lhs.false64.i.verify_eraseblock.exit_crit_edge

lor.lhs.false64.i.verify_eraseblock.exit_crit_edge: ; preds = %lor.lhs.false64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit

if.end81.i:                                       ; preds = %lor.lhs.false64.i
  %65 = load i32, ptr @use_offset, align 4
  %66 = load i32, ptr @use_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.not92.i170.i = icmp eq i32 %66, 0
  br i1 %cmp.not92.i170.i, label %if.end81.i.memcmpshowoffset.exit209.i_crit_edge, label %for.body.lr.ph.i172.i

if.end81.i.memcmpshowoffset.exit209.i_crit_edge:  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %memcmpshowoffset.exit209.i

for.body.lr.ph.i172.i:                            ; preds = %if.end81.i
  %67 = load ptr, ptr @writebuf, align 4
  %68 = load i32, ptr @use_len_max, align 4
  %mul84.i = mul i32 %68, %i.0301.i
  %add.ptr85.i = getelementptr i8, ptr %67, i32 %mul84.i
  %add.ptr86.i = getelementptr i8, ptr %add.ptr85.i, i32 %65
  %69 = load ptr, ptr @readbuf, align 4
  %add.ptr83.i = getelementptr i8, ptr %69, i32 %65
  %conv2.i171.i = trunc i64 %addr.0298.i to i32
  br label %for.body.i181.i

for.body.i181.i:                                  ; preds = %for.inc.i207.i.for.body.i181.i_crit_edge, %for.body.lr.ph.i172.i
  %count.addr.097.i173.i = phi i32 [ %66, %for.body.lr.ph.i172.i ], [ %dec.i204.i, %for.inc.i207.i.for.body.i181.i_crit_edge ]
  %bitflips.096.i174.i = phi i32 [ 0, %for.body.lr.ph.i172.i ], [ %bitflips.1.i201.i, %for.inc.i207.i.for.body.i181.i_crit_edge ]
  %i.095.i175.i = phi i32 [ 0, %for.body.lr.ph.i172.i ], [ %inc.i205.i, %for.inc.i207.i.for.body.i181.i_crit_edge ]
  %su2.094.i176.i = phi ptr [ %add.ptr86.i, %for.body.lr.ph.i172.i ], [ %incdec.ptr67.i203.i, %for.inc.i207.i.for.body.i181.i_crit_edge ]
  %su1.093.i177.i = phi ptr [ %add.ptr83.i, %for.body.lr.ph.i172.i ], [ %incdec.ptr.i202.i, %for.inc.i207.i.for.body.i181.i_crit_edge ]
  %70 = ptrtoint ptr %su1.093.i177.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %su1.093.i177.i, align 1
  %72 = ptrtoint ptr %su2.094.i176.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %su2.094.i176.i, align 1
  %xor86.i178.i = xor i8 %73, %71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor86.i178.i)
  %tobool.not.i180.i = icmp eq i8 %xor86.i178.i, 0
  br i1 %tobool.not.i180.i, label %for.body.i181.i.for.inc.i207.i_crit_edge, label %do.end.i185.i

for.body.i181.i.for.inc.i207.i_crit_edge:         ; preds = %for.body.i181.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i207.i

do.end.i185.i:                                    ; preds = %for.body.i181.i
  call void @__sanitizer_cov_trace_pc() #12
  %xor.i179.i = zext i8 %xor86.i178.i to i32
  %conv1.i182.i = zext i8 %73 to i32
  %conv.i183.i = zext i8 %71 to i32
  %add.i.i = add i32 %i.095.i175.i, %65
  %call.i184.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, i32 noundef %conv2.i171.i, i32 noundef %add.i.i, i32 noundef %conv.i183.i, i32 noundef %conv1.i182.i, i32 noundef %xor.i179.i) #13
  %call.i.i196.i = call i32 @__sw_hweight8(i32 noundef %xor.i179.i) #10
  %add66.i199.i = add i32 %call.i.i196.i, %bitflips.096.i174.i
  br label %for.inc.i207.i

for.inc.i207.i:                                   ; preds = %do.end.i185.i, %for.body.i181.i.for.inc.i207.i_crit_edge
  %bitflips.1.i201.i = phi i32 [ %add66.i199.i, %do.end.i185.i ], [ %bitflips.096.i174.i, %for.body.i181.i.for.inc.i207.i_crit_edge ]
  %incdec.ptr.i202.i = getelementptr i8, ptr %su1.093.i177.i, i32 1
  %incdec.ptr67.i203.i = getelementptr i8, ptr %su2.094.i176.i, i32 1
  %dec.i204.i = add i32 %count.addr.097.i173.i, -1
  %inc.i205.i = add nuw i32 %i.095.i175.i, 1
  %cmp.not.i206.i = icmp eq i32 %dec.i204.i, 0
  br i1 %cmp.not.i206.i, label %memcmpshowoffset.exit209thread-pre-split.i, label %for.inc.i207.i.for.body.i181.i_crit_edge

for.inc.i207.i.for.body.i181.i_crit_edge:         ; preds = %for.inc.i207.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i181.i

memcmpshowoffset.exit209thread-pre-split.i:       ; preds = %for.inc.i207.i
  call void @__sanitizer_cov_trace_pc() #12
  %.pr309.i = load i32, ptr @use_offset, align 4
  br label %memcmpshowoffset.exit209.i

memcmpshowoffset.exit209.i:                       ; preds = %memcmpshowoffset.exit209thread-pre-split.i, %if.end81.i.memcmpshowoffset.exit209.i_crit_edge
  %74 = phi i32 [ %.pr309.i, %memcmpshowoffset.exit209thread-pre-split.i ], [ %65, %if.end81.i.memcmpshowoffset.exit209.i_crit_edge ]
  %bitflips.0.lcssa.i208.i = phi i32 [ %bitflips.1.i201.i, %memcmpshowoffset.exit209thread-pre-split.i ], [ 0, %if.end81.i.memcmpshowoffset.exit209.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.not81.i.i = icmp eq i32 %74, 0
  br i1 %cmp.not81.i.i, label %memcmpshowoffset.exit209.i.memffshow.exit.i_crit_edge, label %for.body.lr.ph.i211.i

memcmpshowoffset.exit209.i.memffshow.exit.i_crit_edge: ; preds = %memcmpshowoffset.exit209.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %memffshow.exit.i

for.body.lr.ph.i211.i:                            ; preds = %memcmpshowoffset.exit209.i
  %75 = load ptr, ptr @readbuf, align 4
  %conv1.i210.i = trunc i64 %addr.0298.i to i32
  br label %for.body.i215.i

for.body.i215.i:                                  ; preds = %for.inc.i229.i.for.body.i215.i_crit_edge, %for.body.lr.ph.i211.i
  %count.addr.085.i.i = phi i32 [ %74, %for.body.lr.ph.i211.i ], [ %dec.i226.i, %for.inc.i229.i.for.body.i215.i_crit_edge ]
  %bitflips.084.i.i = phi i32 [ 0, %for.body.lr.ph.i211.i ], [ %bitflips.1.i224.i, %for.inc.i229.i.for.body.i215.i_crit_edge ]
  %i.083.i.i = phi i32 [ 0, %for.body.lr.ph.i211.i ], [ %inc.i227.i, %for.inc.i229.i.for.body.i215.i_crit_edge ]
  %su1.082.i.i = phi ptr [ %75, %for.body.lr.ph.i211.i ], [ %incdec.ptr.i225.i, %for.inc.i229.i.for.body.i215.i_crit_edge ]
  %76 = ptrtoint ptr %su1.082.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %su1.082.i.i, align 1
  %conv.i212.i = zext i8 %77 to i32
  %xor.i213.i = xor i32 %conv.i212.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i213.i)
  %tobool.not.i214.i = icmp eq i32 %xor.i213.i, 0
  br i1 %tobool.not.i214.i, label %for.body.i215.i.for.inc.i229.i_crit_edge, label %do.end.i217.i

for.body.i215.i.for.inc.i229.i_crit_edge:         ; preds = %for.body.i215.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i229.i

do.end.i217.i:                                    ; preds = %for.body.i215.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i216.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, i32 noundef %conv1.i210.i, i32 noundef %i.083.i.i, i32 noundef %conv.i212.i, i32 noundef %xor.i213.i) #13
  %call.i.i219.i = call i32 @__sw_hweight8(i32 noundef %xor.i213.i) #10
  %add64.i222.i = add i32 %call.i.i219.i, %bitflips.084.i.i
  br label %for.inc.i229.i

for.inc.i229.i:                                   ; preds = %do.end.i217.i, %for.body.i215.i.for.inc.i229.i_crit_edge
  %bitflips.1.i224.i = phi i32 [ %add64.i222.i, %do.end.i217.i ], [ %bitflips.084.i.i, %for.body.i215.i.for.inc.i229.i_crit_edge ]
  %incdec.ptr.i225.i = getelementptr i8, ptr %su1.082.i.i, i32 1
  %dec.i226.i = add i32 %count.addr.085.i.i, -1
  %inc.i227.i = add nuw i32 %i.083.i.i, 1
  %cmp.not.i228.i = icmp eq i32 %dec.i226.i, 0
  br i1 %cmp.not.i228.i, label %for.inc.i229.i.memffshow.exit.i_crit_edge, label %for.inc.i229.i.for.body.i215.i_crit_edge

for.inc.i229.i.for.body.i215.i_crit_edge:         ; preds = %for.inc.i229.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i215.i

for.inc.i229.i.memffshow.exit.i_crit_edge:        ; preds = %for.inc.i229.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %memffshow.exit.i

memffshow.exit.i:                                 ; preds = %for.inc.i229.i.memffshow.exit.i_crit_edge, %memcmpshowoffset.exit209.i.memffshow.exit.i_crit_edge
  %bitflips.0.lcssa.i230.i = phi i32 [ 0, %memcmpshowoffset.exit209.i.memffshow.exit.i_crit_edge ], [ %bitflips.1.i224.i, %for.inc.i229.i.memffshow.exit.i_crit_edge ]
  %add89.i = add i32 %bitflips.0.lcssa.i230.i, %bitflips.0.lcssa.i208.i
  %78 = load i32, ptr @use_offset, align 4
  %79 = load i32, ptr @use_len, align 4
  %add90.i = add i32 %79, %78
  %80 = load ptr, ptr @mtd, align 4
  %oobavail93.i = getelementptr inbounds %struct.mtd_info, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %oobavail93.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %oobavail93.i, align 8
  %sub.i = sub i32 %82, %add90.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.not81.i231.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not81.i231.i, label %memffshow.exit.i.memffshow.exit279.i_crit_edge, label %for.body.lr.ph.i233.i

memffshow.exit.i.memffshow.exit279.i_crit_edge:   ; preds = %memffshow.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %memffshow.exit279.i

for.body.lr.ph.i233.i:                            ; preds = %memffshow.exit.i
  %83 = load ptr, ptr @readbuf, align 4
  %add.ptr92.i = getelementptr i8, ptr %83, i32 %add90.i
  %conv1.i232.i = trunc i64 %addr.0298.i to i32
  br label %for.body.i241.i

for.body.i241.i:                                  ; preds = %for.inc.i277.i.for.body.i241.i_crit_edge, %for.body.lr.ph.i233.i
  %count.addr.085.i234.i = phi i32 [ %sub.i, %for.body.lr.ph.i233.i ], [ %dec.i274.i, %for.inc.i277.i.for.body.i241.i_crit_edge ]
  %bitflips.084.i235.i = phi i32 [ 0, %for.body.lr.ph.i233.i ], [ %bitflips.1.i272.i, %for.inc.i277.i.for.body.i241.i_crit_edge ]
  %i.083.i236.i = phi i32 [ 0, %for.body.lr.ph.i233.i ], [ %inc.i275.i, %for.inc.i277.i.for.body.i241.i_crit_edge ]
  %su1.082.i237.i = phi ptr [ %add.ptr92.i, %for.body.lr.ph.i233.i ], [ %incdec.ptr.i273.i, %for.inc.i277.i.for.body.i241.i_crit_edge ]
  %84 = ptrtoint ptr %su1.082.i237.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %su1.082.i237.i, align 1
  %conv.i238.i = zext i8 %85 to i32
  %xor.i239.i = xor i32 %conv.i238.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i239.i)
  %tobool.not.i240.i = icmp eq i32 %xor.i239.i, 0
  br i1 %tobool.not.i240.i, label %for.body.i241.i.for.inc.i277.i_crit_edge, label %do.end.i244.i

for.body.i241.i.for.inc.i277.i_crit_edge:         ; preds = %for.body.i241.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i277.i

do.end.i244.i:                                    ; preds = %for.body.i241.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i242.i = add i32 %i.083.i236.i, %add90.i
  %call.i243.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, i32 noundef %conv1.i232.i, i32 noundef %add.i242.i, i32 noundef %conv.i238.i, i32 noundef %xor.i239.i) #13
  %call.i.i267.i = call i32 @__sw_hweight8(i32 noundef %xor.i239.i) #10
  %add64.i270.i = add i32 %call.i.i267.i, %bitflips.084.i235.i
  br label %for.inc.i277.i

for.inc.i277.i:                                   ; preds = %do.end.i244.i, %for.body.i241.i.for.inc.i277.i_crit_edge
  %bitflips.1.i272.i = phi i32 [ %add64.i270.i, %do.end.i244.i ], [ %bitflips.084.i235.i, %for.body.i241.i.for.inc.i277.i_crit_edge ]
  %incdec.ptr.i273.i = getelementptr i8, ptr %su1.082.i237.i, i32 1
  %dec.i274.i = add i32 %count.addr.085.i234.i, -1
  %inc.i275.i = add nuw i32 %i.083.i236.i, 1
  %cmp.not.i276.i = icmp eq i32 %dec.i274.i, 0
  br i1 %cmp.not.i276.i, label %for.inc.i277.i.memffshow.exit279.i_crit_edge, label %for.inc.i277.i.for.body.i241.i_crit_edge

for.inc.i277.i.for.body.i241.i_crit_edge:         ; preds = %for.inc.i277.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i241.i

for.inc.i277.i.memffshow.exit279.i_crit_edge:     ; preds = %for.inc.i277.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %memffshow.exit279.i

memffshow.exit279.i:                              ; preds = %for.inc.i277.i.memffshow.exit279.i_crit_edge, %memffshow.exit.i.memffshow.exit279.i_crit_edge
  %bitflips.0.lcssa.i278.i = phi i32 [ 0, %memffshow.exit.i.memffshow.exit279.i_crit_edge ], [ %bitflips.1.i272.i, %for.inc.i277.i.memffshow.exit279.i_crit_edge ]
  %add95.i = add i32 %add89.i, %bitflips.0.lcssa.i278.i
  %86 = load i32, ptr @bitflip_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add95.i, i32 %86)
  %cmp96.i = icmp ugt i32 %add95.i, %86
  br i1 %cmp96.i, label %do.end101.i, label %if.else114.i

do.end101.i:                                      ; preds = %memffshow.exit279.i
  %call103.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i64 noundef %addr.0298.i) #13
  %87 = load i32, ptr @errcnt, align 4
  %add104.i = add i32 %87, 1
  store i32 %add104.i, ptr @errcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %add104.i)
  %cmp105.i = icmp sgt i32 %add104.i, 1000
  br i1 %cmp105.i, label %do.end101.i.verify_eraseblock.exit.thread39_crit_edge, label %do.end101.i.if.end124.i_crit_edge

do.end101.i.if.end124.i_crit_edge:                ; preds = %do.end101.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124.i

do.end101.i.verify_eraseblock.exit.thread39_crit_edge: ; preds = %do.end101.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit.thread39

if.else114.i:                                     ; preds = %memffshow.exit279.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add95.i)
  %tobool115.not.i = icmp eq i32 %add95.i, 0
  br i1 %tobool115.not.i, label %if.else114.i.if.end124.i_crit_edge, label %do.end119.i

if.else114.i.if.end124.i_crit_edge:               ; preds = %if.else114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124.i

do.end119.i:                                      ; preds = %if.else114.i
  call void @__sanitizer_cov_trace_pc() #12
  %call121.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169) #13
  br label %if.end124.i

if.end124.i:                                      ; preds = %do.end119.i, %if.else114.i.if.end124.i_crit_edge, %do.end101.i.if.end124.i_crit_edge, %lor.lhs.false45.i.if.end124.i_crit_edge
  %.b.i = load i1, ptr @vary_offset, align 4
  br i1 %.b.i, label %if.then126.i, label %if.end124.i.for.inc.i_crit_edge

if.end124.i.for.inc.i_crit_edge:                  ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then126.i:                                     ; preds = %if.end124.i
  %88 = load i32, ptr @use_len, align 4
  %sub.i.i = add i32 %88, -1
  store i32 %sub.i.i, ptr @use_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i280.i = icmp slt i32 %sub.i.i, 1
  br i1 %cmp.i280.i, label %if.then.i.i, label %if.then126.i.for.inc.i_crit_edge

if.then126.i.for.inc.i_crit_edge:                 ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #12
  %89 = load i32, ptr @use_offset, align 4
  %add.i281.i = add i32 %89, 1
  %90 = load i32, ptr @use_len_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i281.i, i32 %90)
  %cmp1.not.i.i = icmp slt i32 %add.i281.i, %90
  %spec.store.select.i.i = select i1 %cmp1.not.i.i, i32 %add.i281.i, i32 0
  store i32 %spec.store.select.i.i, ptr @use_offset, align 4
  %sub3.i.i = sub i32 %90, %spec.store.select.i.i
  store i32 %sub3.i.i, ptr @use_len, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %if.then126.i.for.inc.i_crit_edge, %if.end124.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0301.i, 1
  %91 = load ptr, ptr @mtd, align 4
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %writesize.i, align 4
  %conv128.i = zext i32 %93 to i64
  %add129.i = add i64 %addr.0298.i, %conv128.i
  %94 = load i32, ptr @pgcnt, align 4
  %cmp.i = icmp slt i32 %inc.i, %94
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.verify_eraseblock.exit.thread_crit_edge

for.inc.i.verify_eraseblock.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_eraseblock.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

verify_eraseblock.exit.thread:                    ; preds = %for.inc.i.verify_eraseblock.exit.thread_crit_edge, %if.end.verify_eraseblock.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  br label %if.end4

verify_eraseblock.exit.thread39:                  ; preds = %do.end101.i.verify_eraseblock.exit.thread39_crit_edge, %do.end21.i.verify_eraseblock.exit.thread39_crit_edge
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  br label %cleanup

verify_eraseblock.exit:                           ; preds = %lor.lhs.false64.i.verify_eraseblock.exit_crit_edge, %if.then48.i.verify_eraseblock.exit_crit_edge, %lor.lhs.false.i.verify_eraseblock.exit_crit_edge, %for.body.i.verify_eraseblock.exit_crit_edge
  %retval.3.i = phi i32 [ %spec.select.i, %for.body.i.verify_eraseblock.exit_crit_edge ], [ -1, %lor.lhs.false.i.verify_eraseblock.exit_crit_edge ], [ %spec.select165.i, %if.then48.i.verify_eraseblock.exit_crit_edge ], [ -1, %lor.lhs.false64.i.verify_eraseblock.exit_crit_edge ]
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i64 noundef %addr.0298.i) #13
  %storemerge.in = load i32, ptr @errcnt, align 4
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr @errcnt, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.3.i)
  %tobool2.not = icmp eq i32 %retval.3.i, 0
  br i1 %tobool2.not, label %verify_eraseblock.exit.if.end4_crit_edge, label %verify_eraseblock.exit.cleanup_crit_edge

verify_eraseblock.exit.cleanup_crit_edge:         ; preds = %verify_eraseblock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

verify_eraseblock.exit.if.end4_crit_edge:         ; preds = %verify_eraseblock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %verify_eraseblock.exit.if.end4_crit_edge, %verify_eraseblock.exit.thread
  %rem = and i32 %i.053, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %do.end9, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %i.053) #13
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.end4.if.end12_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.180, i32 noundef 7, i32 noundef 0) #10
  %call.i.i32 = call i32 @__cond_resched() #10
  %95 = call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i33 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i33 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %stack.i.i.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %100, align 4
  %103 = and i32 %102, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i.i34 = icmp eq i32 %103, 0
  br i1 %tobool.not.i.i34, label %signal_pending.exit.i, label %if.end12.mtdtest_relax.exit_crit_edge, !prof !335

if.end12.mtdtest_relax.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdtest_relax.exit

signal_pending.exit.i:                            ; preds = %if.end12
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %100, align 4
  %and1.i.i.i.i.i.i = and i32 %105, 1
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
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #13
  br label %cleanup

for.inc:                                          ; preds = %signal_pending.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.053, 1
  %106 = load i32, ptr @ebcnt, align 4
  %cmp = icmp ult i32 %inc, %106
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.end19_crit_edge

for.inc.do.end19_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end19:                                         ; preds = %for.inc.do.end19_crit_edge, %entry.do.end19_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.do.end19_crit_edge ], [ %inc, %for.inc.do.end19_crit_edge ]
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %i.0.lcssa) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %mtdtest_relax.exit, %verify_eraseblock.exit.cleanup_crit_edge, %verify_eraseblock.exit.thread39
  %retval.0 = phi i32 [ 0, %do.end19 ], [ -4, %mtdtest_relax.exit ], [ -1, %verify_eraseblock.exit.thread39 ], [ %retval.3.i, %verify_eraseblock.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtdtest_relax() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_resched(ptr noundef nonnull @.str.180, i32 noundef 7, i32 noundef 0) #10
  %call.i = tail call i32 @__cond_resched() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %entry.do.end_crit_edge, !prof !335

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

signal_pending.exit:                              ; preds = %entry
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not, label %signal_pending.exit.return_crit_edge, label %signal_pending.exit.do.end_crit_edge

signal_pending.exit.do.end_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

signal_pending.exit.return_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %signal_pending.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #13
  br label %return

return:                                           ; preds = %do.end, %signal_pending.exit.return_crit_edge
  %retval.0 = phi i32 [ -4, %do.end ], [ 0, %signal_pending.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_erase_eraseblock(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @memcmpshowoffset(i64 noundef %addr, i64 noundef %offset, ptr nocapture noundef readonly %cs, ptr nocapture noundef readonly %ct, i32 noundef %count) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not92 = icmp eq i32 %count, 0
  br i1 %cmp.not92, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv2 = trunc i64 %addr to i32
  %conv3 = trunc i64 %offset to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %count.addr.097 = phi i32 [ %count, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %bitflips.096 = phi i32 [ 0, %for.body.lr.ph ], [ %bitflips.1, %for.inc.for.body_crit_edge ]
  %i.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %su2.094 = phi ptr [ %ct, %for.body.lr.ph ], [ %incdec.ptr67, %for.inc.for.body_crit_edge ]
  %su1.093 = phi ptr [ %cs, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %su1.093 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %su1.093, align 1
  %2 = ptrtoint ptr %su2.094 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %su2.094, align 1
  %xor86 = xor i8 %3, %1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor86)
  %tobool.not = icmp eq i8 %xor86, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %xor = zext i8 %xor86 to i32
  %conv1 = zext i8 %3 to i32
  %conv = zext i8 %1 to i32
  %add = add i32 %i.095, %conv3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, i32 noundef %conv2, i32 noundef %add, i32 noundef %conv, i32 noundef %conv1, i32 noundef %xor) #13
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %xor) #10
  %add66 = add i32 %call.i, %bitflips.096
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %bitflips.1 = phi i32 [ %add66, %do.end ], [ %bitflips.096, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %su1.093, i32 1
  %incdec.ptr67 = getelementptr i8, ptr %su2.094, i32 1
  %dec = add i32 %count.addr.097, -1
  %inc = add nuw i32 %i.095, 1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %bitflips.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %bitflips.1, %for.inc.for.end_crit_edge ]
  ret i32 %bitflips.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mtd_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !144, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !239, !240, !242, !243, !245, !246, !248, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !264, !265, !267, !268, !269, !270, !272, !273, !275, !276, !278, !279, !280, !282, !283, !285, !286, !288, !289, !291, !292, !293, !295, !296, !297, !298, !300, !301, !302, !304, !305, !307, !308, !310, !311, !313, !315, !316, !317, !318, !320, !322, !323, !324}
!llvm.named.register.sp = !{!325}
!llvm.module.flags = !{!326, !327, !328, !329, !330, !331, !332, !333}
!llvm.ident = !{!334}

!0 = !{ptr @__param_dev, !1, !"__param_dev", i1 false, i1 false}
!1 = !{!"../drivers/mtd/tests/oobtest.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_devtype201, !1, !"__UNIQUE_ID_devtype201", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dev202, !4, !"__UNIQUE_ID_dev202", i1 false, i1 false}
!4 = !{!"../drivers/mtd/tests/oobtest.c", i32 27, i32 1}
!5 = !{ptr @__param_bitflip_limit, !6, !"__param_bitflip_limit", i1 false, i1 false}
!6 = !{!"../drivers/mtd/tests/oobtest.c", i32 28, i32 1}
!7 = !{ptr @__UNIQUE_ID_bitflip_limittype203, !6, !"__UNIQUE_ID_bitflip_limittype203", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_bitflip_limit204, !9, !"__UNIQUE_ID_bitflip_limit204", i1 false, i1 false}
!9 = !{!"../drivers/mtd/tests/oobtest.c", i32 29, i32 1}
!10 = !{ptr @__UNIQUE_ID_description205, !11, !"__UNIQUE_ID_description205", i1 false, i1 false}
!11 = !{!"../drivers/mtd/tests/oobtest.c", i32 731, i32 1}
!12 = !{ptr @__UNIQUE_ID_author206, !13, !"__UNIQUE_ID_author206", i1 false, i1 false}
!13 = !{!"../drivers/mtd/tests/oobtest.c", i32 732, i32 1}
!14 = !{ptr @__UNIQUE_ID_license207, !15, !"__UNIQUE_ID_license207", i1 false, i1 false}
!15 = !{!"../drivers/mtd/tests/oobtest.c", i32 733, i32 1}
!16 = !{ptr @bitflip_limit, !17, !"bitflip_limit", i1 false, i1 false}
!17 = !{!"../drivers/mtd/tests/oobtest.c", i32 25, i32 12}
!18 = !{ptr @___asan_gen_.189, !1, !"__param_str_dev", i1 false, i1 false}
!19 = !{ptr @dev, !20, !"dev", i1 false, i1 false}
!20 = !{!"../drivers/mtd/tests/oobtest.c", i32 24, i32 12}
!21 = !{ptr @___asan_gen_.192, !6, !"__param_str_bitflip_limit", i1 false, i1 false}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/tests/oobtest.c", i32 344, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mtd_oobtest_init._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @mtd_oobtest_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/tests/oobtest.c", i32 345, i32 2}
!30 = !{ptr @mtd_oobtest_init._entry.3, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtd_oobtest_init._entry_ptr.5, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/tests/oobtest.c", i32 348, i32 3}
!34 = !{ptr @mtd_oobtest_init._entry.6, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mtd_oobtest_init._entry_ptr.8, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/tests/oobtest.c", i32 349, i32 3}
!38 = !{ptr @mtd_oobtest_init._entry.9, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mtd_oobtest_init._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/tests/oobtest.c", i32 353, i32 2}
!42 = !{ptr @mtd_oobtest_init._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtd_oobtest_init._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/tests/oobtest.c", i32 358, i32 3}
!46 = !{ptr @mtd_oobtest_init._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mtd_oobtest_init._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/tests/oobtest.c", i32 363, i32 3}
!50 = !{ptr @mtd_oobtest_init._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mtd_oobtest_init._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/tests/oobtest.c", i32 372, i32 2}
!54 = !{ptr @mtd_oobtest_init._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mtd_oobtest_init._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/tests/oobtest.c", i32 399, i32 2}
!58 = !{ptr @mtd_oobtest_init._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtd_oobtest_init._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/tests/oobtest.c", i32 419, i32 2}
!62 = !{ptr @mtd_oobtest_init._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mtd_oobtest_init._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/tests/oobtest.c", i32 432, i32 2}
!66 = !{ptr @mtd_oobtest_init._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mtd_oobtest_init._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/tests/oobtest.c", i32 440, i32 4}
!70 = !{ptr @mtd_oobtest_init._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mtd_oobtest_init._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/tests/oobtest.c", i32 446, i32 2}
!74 = !{ptr @mtd_oobtest_init._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mtd_oobtest_init._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/tests/oobtest.c", i32 452, i32 2}
!78 = !{ptr @mtd_oobtest_init._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mtd_oobtest_init._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/tests/oobtest.c", i32 485, i32 2}
!82 = !{ptr @mtd_oobtest_init._entry.42, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @mtd_oobtest_init._entry_ptr.44, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/tests/oobtest.c", i32 504, i32 2}
!86 = !{ptr @mtd_oobtest_init._entry.45, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @mtd_oobtest_init._entry_ptr.47, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/tests/oobtest.c", i32 505, i32 2}
!90 = !{ptr @mtd_oobtest_init._entry.48, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @mtd_oobtest_init._entry_ptr.50, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mtd/tests/oobtest.c", i32 508, i32 3}
!94 = !{ptr @mtd_oobtest_init._entry.51, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @mtd_oobtest_init._entry_ptr.53, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mtd/tests/oobtest.c", i32 510, i32 3}
!98 = !{ptr @mtd_oobtest_init._entry.54, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @mtd_oobtest_init._entry_ptr.56, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.58, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mtd/tests/oobtest.c", i32 523, i32 2}
!102 = !{ptr @mtd_oobtest_init._entry.57, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @mtd_oobtest_init._entry_ptr.59, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @mtd_oobtest_init._entry.60, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/mtd/tests/oobtest.c", i32 524, i32 2}
!106 = !{ptr @mtd_oobtest_init._entry_ptr.61, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @mtd_oobtest_init._entry.62, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/mtd/tests/oobtest.c", i32 530, i32 3}
!109 = !{ptr @mtd_oobtest_init._entry_ptr.63, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.65, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mtd/tests/oobtest.c", i32 532, i32 3}
!112 = !{ptr @mtd_oobtest_init._entry.64, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @mtd_oobtest_init._entry_ptr.66, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.68, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/tests/oobtest.c", i32 537, i32 3}
!116 = !{ptr @mtd_oobtest_init._entry.67, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @mtd_oobtest_init._entry_ptr.69, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.71, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mtd/tests/oobtest.c", i32 549, i32 3}
!120 = !{ptr @mtd_oobtest_init._entry.70, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @mtd_oobtest_init._entry_ptr.72, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @mtd_oobtest_init._entry.73, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/mtd/tests/oobtest.c", i32 550, i32 3}
!124 = !{ptr @mtd_oobtest_init._entry_ptr.74, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @mtd_oobtest_init._entry.75, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/mtd/tests/oobtest.c", i32 553, i32 4}
!127 = !{ptr @mtd_oobtest_init._entry_ptr.76, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.78, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mtd/tests/oobtest.c", i32 555, i32 4}
!130 = !{ptr @mtd_oobtest_init._entry.77, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @mtd_oobtest_init._entry_ptr.79, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.81, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/tests/oobtest.c", i32 568, i32 3}
!134 = !{ptr @mtd_oobtest_init._entry.80, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @mtd_oobtest_init._entry_ptr.82, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @mtd_oobtest_init._entry.83, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../drivers/mtd/tests/oobtest.c", i32 569, i32 3}
!138 = !{ptr @mtd_oobtest_init._entry_ptr.84, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @mtd_oobtest_init._entry.85, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../drivers/mtd/tests/oobtest.c", i32 575, i32 4}
!141 = !{ptr @mtd_oobtest_init._entry_ptr.86, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.88, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mtd/tests/oobtest.c", i32 577, i32 4}
!144 = !{ptr @mtd_oobtest_init._entry.87, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @mtd_oobtest_init._entry_ptr.89, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @mtd_oobtest_init._entry.90, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../drivers/mtd/tests/oobtest.c", i32 594, i32 3}
!148 = !{ptr @mtd_oobtest_init._entry_ptr.91, !147, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @mtd_oobtest_init._entry.92, !150, !"_entry", i1 false, i1 false}
!150 = !{!"../drivers/mtd/tests/oobtest.c", i32 595, i32 3}
!151 = !{ptr @mtd_oobtest_init._entry_ptr.93, !150, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @mtd_oobtest_init._entry.94, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../drivers/mtd/tests/oobtest.c", i32 598, i32 4}
!154 = !{ptr @mtd_oobtest_init._entry_ptr.95, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @mtd_oobtest_init._entry.96, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../drivers/mtd/tests/oobtest.c", i32 600, i32 4}
!157 = !{ptr @mtd_oobtest_init._entry_ptr.97, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @mtd_oobtest_init._entry.98, !159, !"_entry", i1 false, i1 false}
!159 = !{!"../drivers/mtd/tests/oobtest.c", i32 613, i32 3}
!160 = !{ptr @mtd_oobtest_init._entry_ptr.99, !159, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @mtd_oobtest_init._entry.100, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../drivers/mtd/tests/oobtest.c", i32 614, i32 3}
!163 = !{ptr @mtd_oobtest_init._entry_ptr.101, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @mtd_oobtest_init._entry.102, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/mtd/tests/oobtest.c", i32 620, i32 4}
!166 = !{ptr @mtd_oobtest_init._entry_ptr.103, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @mtd_oobtest_init._entry.104, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../drivers/mtd/tests/oobtest.c", i32 622, i32 4}
!169 = !{ptr @mtd_oobtest_init._entry_ptr.105, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.107, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mtd/tests/oobtest.c", i32 628, i32 2}
!172 = !{ptr @mtd_oobtest_init._entry.106, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @mtd_oobtest_init._entry_ptr.108, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.110, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mtd/tests/oobtest.c", i32 637, i32 2}
!176 = !{ptr @mtd_oobtest_init._entry.109, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @mtd_oobtest_init._entry_ptr.111, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.113, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/mtd/tests/oobtest.c", i32 659, i32 5}
!180 = !{ptr @mtd_oobtest_init._entry.112, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @mtd_oobtest_init._entry_ptr.114, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.116, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mtd/tests/oobtest.c", i32 668, i32 2}
!184 = !{ptr @mtd_oobtest_init._entry.115, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @mtd_oobtest_init._entry_ptr.117, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @mtd_oobtest_init._entry.118, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/mtd/tests/oobtest.c", i32 672, i32 2}
!188 = !{ptr @mtd_oobtest_init._entry_ptr.119, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.121, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mtd/tests/oobtest.c", i32 694, i32 4}
!191 = !{ptr @mtd_oobtest_init._entry.120, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @mtd_oobtest_init._entry_ptr.122, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.124, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mtd/tests/oobtest.c", i32 699, i32 5}
!195 = !{ptr @mtd_oobtest_init._entry.123, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @mtd_oobtest_init._entry_ptr.125, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @mtd_oobtest_init._entry.126, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/mtd/tests/oobtest.c", i32 704, i32 4}
!199 = !{ptr @mtd_oobtest_init._entry_ptr.127, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @mtd_oobtest_init._entry.128, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/mtd/tests/oobtest.c", i32 710, i32 2}
!202 = !{ptr @mtd_oobtest_init._entry_ptr.129, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.131, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/mtd/tests/oobtest.c", i32 712, i32 2}
!205 = !{ptr @mtd_oobtest_init._entry.130, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @mtd_oobtest_init._entry_ptr.132, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.134, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/mtd/tests/oobtest.c", i32 719, i32 3}
!209 = !{ptr @mtd_oobtest_init._entry.133, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @mtd_oobtest_init._entry_ptr.135, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @mtd_oobtest_init._entry.136, !212, !"_entry", i1 false, i1 false}
!212 = !{!"../drivers/mtd/tests/oobtest.c", i32 720, i32 2}
!213 = !{ptr @mtd_oobtest_init._entry_ptr.137, !212, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @mtd, !215, !"mtd", i1 false, i1 false}
!215 = !{!"../drivers/mtd/tests/oobtest.c", i32 31, i32 25}
!216 = !{ptr @ebcnt, !217, !"ebcnt", i1 false, i1 false}
!217 = !{!"../drivers/mtd/tests/oobtest.c", i32 36, i32 12}
!218 = !{ptr @pgcnt, !219, !"pgcnt", i1 false, i1 false}
!219 = !{!"../drivers/mtd/tests/oobtest.c", i32 37, i32 12}
!220 = !{ptr @readbuf, !221, !"readbuf", i1 false, i1 false}
!221 = !{!"../drivers/mtd/tests/oobtest.c", i32 32, i32 23}
!222 = !{ptr @writebuf, !223, !"writebuf", i1 false, i1 false}
!223 = !{!"../drivers/mtd/tests/oobtest.c", i32 33, i32 23}
!224 = !{ptr @bbt, !225, !"bbt", i1 false, i1 false}
!225 = !{!"../drivers/mtd/tests/oobtest.c", i32 34, i32 23}
!226 = !{ptr @use_offset, !227, !"use_offset", i1 false, i1 false}
!227 = !{!"../drivers/mtd/tests/oobtest.c", i32 39, i32 12}
!228 = !{ptr @use_len, !229, !"use_len", i1 false, i1 false}
!229 = !{!"../drivers/mtd/tests/oobtest.c", i32 40, i32 12}
!230 = !{ptr @use_len_max, !231, !"use_len_max", i1 false, i1 false}
!231 = !{!"../drivers/mtd/tests/oobtest.c", i32 41, i32 12}
!232 = distinct !{null, !233, !"vary_offset", i1 false, i1 false}
!233 = !{!"../drivers/mtd/tests/oobtest.c", i32 42, i32 12}
!234 = !{ptr @rnd_state, !235, !"rnd_state", i1 false, i1 false}
!235 = !{!"../drivers/mtd/tests/oobtest.c", i32 43, i32 25}
!236 = !{ptr @.str.138, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/mtd/tests/oobtest.c", i32 94, i32 2}
!238 = !{ptr @write_whole_device._entry, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @write_whole_device._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @write_whole_device._entry.139, !241, !"_entry", i1 false, i1 false}
!241 = !{!"../drivers/mtd/tests/oobtest.c", i32 102, i32 4}
!242 = !{ptr @write_whole_device._entry_ptr.140, !241, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @write_whole_device._entry.141, !244, !"_entry", i1 false, i1 false}
!244 = !{!"../drivers/mtd/tests/oobtest.c", i32 108, i32 2}
!245 = !{ptr @write_whole_device._entry_ptr.142, !244, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.143, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/mtd/tests/oobtest.c", i32 75, i32 4}
!248 = !{ptr @.str.144, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @write_eraseblock._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @write_eraseblock._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.146, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/mtd/tests/oobtest.c", i32 77, i32 4}
!253 = !{ptr @write_eraseblock._entry.145, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @write_eraseblock._entry_ptr.147, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.148, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/mtd/tests/oobtest.c", i32 318, i32 2}
!257 = !{ptr @verify_all_eraseblocks._entry, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @verify_all_eraseblocks._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @verify_all_eraseblocks._entry.149, !260, !"_entry", i1 false, i1 false}
!260 = !{!"../drivers/mtd/tests/oobtest.c", i32 326, i32 4}
!261 = !{ptr @verify_all_eraseblocks._entry_ptr.150, !260, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @verify_all_eraseblocks._entry.151, !263, !"_entry", i1 false, i1 false}
!263 = !{!"../drivers/mtd/tests/oobtest.c", i32 332, i32 2}
!264 = !{ptr @verify_all_eraseblocks._entry_ptr.152, !263, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.153, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/mtd/tests/oobtest.c", i32 188, i32 4}
!267 = !{ptr @.str.154, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @verify_eraseblock._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @verify_eraseblock._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @verify_eraseblock._entry.155, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../drivers/mtd/tests/oobtest.c", i32 198, i32 4}
!272 = !{ptr @verify_eraseblock._entry_ptr.156, !271, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @verify_eraseblock._entry.157, !274, !"_entry", i1 false, i1 false}
!274 = !{!"../drivers/mtd/tests/oobtest.c", i32 202, i32 5}
!275 = !{ptr @verify_eraseblock._entry_ptr.158, !274, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.160, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/mtd/tests/oobtest.c", i32 206, i32 4}
!278 = !{ptr @verify_eraseblock._entry.159, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @verify_eraseblock._entry_ptr.161, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @verify_eraseblock._entry.162, !281, !"_entry", i1 false, i1 false}
!281 = !{!"../drivers/mtd/tests/oobtest.c", i32 225, i32 5}
!282 = !{ptr @verify_eraseblock._entry_ptr.163, !281, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @verify_eraseblock._entry.164, !284, !"_entry", i1 false, i1 false}
!284 = !{!"../drivers/mtd/tests/oobtest.c", i32 244, i32 5}
!285 = !{ptr @verify_eraseblock._entry_ptr.165, !284, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @verify_eraseblock._entry.166, !287, !"_entry", i1 false, i1 false}
!287 = !{!"../drivers/mtd/tests/oobtest.c", i32 248, i32 6}
!288 = !{ptr @verify_eraseblock._entry_ptr.167, !287, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.169, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/mtd/tests/oobtest.c", i32 252, i32 5}
!291 = !{ptr @verify_eraseblock._entry.168, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @verify_eraseblock._entry_ptr.170, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.171, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/mtd/tests/oobtest.c", i32 155, i32 4}
!295 = !{ptr @.str.172, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @memffshow._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @memffshow._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.173, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/mtd/tests/oobtest.c", i32 287, i32 3}
!300 = !{ptr @verify_eraseblock_in_one_go._entry, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @verify_eraseblock_in_one_go._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @verify_eraseblock_in_one_go._entry.174, !303, !"_entry", i1 false, i1 false}
!303 = !{!"../drivers/mtd/tests/oobtest.c", i32 298, i32 4}
!304 = !{ptr @verify_eraseblock_in_one_go._entry_ptr.175, !303, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @verify_eraseblock_in_one_go._entry.176, !306, !"_entry", i1 false, i1 false}
!306 = !{!"../drivers/mtd/tests/oobtest.c", i32 302, i32 5}
!307 = !{ptr @verify_eraseblock_in_one_go._entry_ptr.177, !306, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @verify_eraseblock_in_one_go._entry.178, !309, !"_entry", i1 false, i1 false}
!309 = !{!"../drivers/mtd/tests/oobtest.c", i32 306, i32 4}
!310 = !{ptr @verify_eraseblock_in_one_go._entry_ptr.179, !309, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.180, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/mtd/tests/mtd_test.h", i32 7, i32 2}
!313 = !{ptr @.str.181, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/mtd/tests/mtd_test.h", i32 9, i32 3}
!315 = !{ptr @.str.182, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @mtdtest_relax._entry, !314, !"_entry", i1 false, i1 false}
!317 = !{ptr @mtdtest_relax._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @errcnt, !319, !"errcnt", i1 false, i1 false}
!319 = !{!"../drivers/mtd/tests/oobtest.c", i32 38, i32 12}
!320 = !{ptr @.str.183, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/mtd/tests/oobtest.c", i32 127, i32 4}
!322 = !{ptr @.str.184, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @memcmpshowoffset._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @memcmpshowoffset._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{!"sp"}
!326 = !{i32 1, !"wchar_size", i32 2}
!327 = !{i32 1, !"min_enum_size", i32 4}
!328 = !{i32 8, !"branch-target-enforcement", i32 0}
!329 = !{i32 8, !"sign-return-address", i32 0}
!330 = !{i32 8, !"sign-return-address-all", i32 0}
!331 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!332 = !{i32 7, !"uwtable", i32 1}
!333 = !{i32 7, !"frame-pointer", i32 2}
!334 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!335 = !{!"branch_weights", i32 2000, i32 1}
!336 = !{i64 2147990097, i64 2147990377, i64 2147990711, i64 2147991045}
