; ModuleID = '/llk/IR_all_yes/drivers/mtd/ubi/gluebi.c_pt.bc'
source_filename = "../drivers/mtd/ubi/gluebi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.ubi_notification = type { %struct.ubi_device_info, %struct.ubi_volume_info }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.70 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.70 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.gluebi_device = type { %struct.mtd_info, i32, ptr, i32, i32, %struct.list_head }
%struct.erase_info = type { i64, i64, i64 }

@gluebi_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @gluebi_devices, ptr @gluebi_devices }, [24 x i8] zeroinitializer }, align 32
@ubi_gluebi_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\013gluebi (pid %d): %s: error %d while removing gluebi MTD device %d, UBI device %d, volume %d - ignoring\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ubi_gluebi_exit\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mtd/ubi/gluebi.c\00", [39 x i8] zeroinitializer }, align 32
@ubi_gluebi_exit._entry_ptr = internal global ptr @ubi_gluebi_exit._entry, section ".printk_index", align 4
@gluebi_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @gluebi_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_gluebi__230_496_ubi_gluebi_init6 = internal global ptr @ubi_gluebi_init, section ".initcall6.init", align 4
@__exitcall_ubi_gluebi_exit = internal global ptr @ubi_gluebi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description231 = internal constant [56 x i8] c"gluebi.description=MTD emulation layer over UBI volumes\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [44 x i8] c"gluebi.author=Artem Bityutskiy, Joern Engel\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [35 x i8] c"gluebi.file=drivers/mtd/ubi/gluebi\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [19 x i8] c"gluebi.license=GPL\00", section ".modinfo", align 1
@devices_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @devices_mutex, i64 52), ptr getelementptr (i8, ptr @devices_mutex, i64 52) }, ptr @devices_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@gluebi_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013gluebi (pid %d): %s: gluebi MTD device %d form UBI device %d volume %d already exists\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gluebi_create\00", [18 x i8] zeroinitializer }, align 32
@gluebi_create._entry_ptr = internal global ptr @gluebi_create._entry, section ".printk_index", align 4
@gluebi_create._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gluebi (pid %d): %s: cannot add MTD device\0A\00", [50 x i8] zeroinitializer }, align 32
@gluebi_create._entry_ptr.7 = internal global ptr @gluebi_create._entry.5, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"devices_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"devices_mutex\00", [18 x i8] zeroinitializer }, align 32
@gluebi_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013gluebi (pid %d): %s: got remove notification for unknown UBI device %d volume %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gluebi_remove\00", [18 x i8] zeroinitializer }, align 32
@gluebi_remove._entry_ptr = internal global ptr @gluebi_remove._entry, section ".printk_index", align 4
@gluebi_remove._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013gluebi (pid %d): %s: cannot remove fake MTD device %d, UBI device %d, volume %d, error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@gluebi_remove._entry_ptr.14 = internal global ptr @gluebi_remove._entry.12, section ".printk_index", align 4
@gluebi_resized._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013gluebi (pid %d): %s: got update notification for unknown UBI device %d volume %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gluebi_resized\00", [17 x i8] zeroinitializer }, align 32
@gluebi_resized._entry_ptr = internal global ptr @gluebi_resized._entry, section ".printk_index", align 4
@gluebi_updated._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.17, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gluebi_updated\00", [17 x i8] zeroinitializer }, align 32
@gluebi_updated._entry_ptr = internal global ptr @gluebi_updated._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"gluebi_devices\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 53, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 487, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"gluebi_notifier\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 468, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"devices_mutex\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 323, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 328, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 54, i32 8 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 357, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 371, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 429, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [28 x i8] c"../drivers/mtd/ubi/gluebi.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 402, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_ubi_gluebi_exit, ptr @__initcall__kmod_gluebi__230_496_ubi_gluebi_init6, ptr @gluebi_create._entry, ptr @gluebi_create._entry.5, ptr @gluebi_create._entry_ptr, ptr @gluebi_create._entry_ptr.7, ptr @gluebi_remove._entry, ptr @gluebi_remove._entry.12, ptr @gluebi_remove._entry_ptr, ptr @gluebi_remove._entry_ptr.14, ptr @gluebi_resized._entry, ptr @gluebi_resized._entry_ptr, ptr @gluebi_updated._entry, ptr @gluebi_updated._entry_ptr, ptr @ubi_gluebi_exit, ptr @ubi_gluebi_exit._entry, ptr @ubi_gluebi_exit._entry_ptr, ptr @gluebi_devices, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @gluebi_notifier, ptr @devices_mutex, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gluebi_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_gluebi_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gluebi_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gluebi_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gluebi_create._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gluebi_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gluebi_remove._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gluebi_resized._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gluebi_updated._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ubi_gluebi_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @gluebi_devices, align 4
  %cmp.not27 = icmp eq ptr %0, @gluebi_devices
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in28 = phi ptr [ %.pn30, %if.end.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %gluebi.029 = getelementptr i8, ptr %.pn.in28, i32 -1424
  %1 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn30 = load ptr, ptr %.pn.in28, align 8
  %call = tail call i32 @mtd_device_unregister(ptr noundef %gluebi.029) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %index = getelementptr i8, ptr %.pn.in28, i32 -1364
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %ubi_num = getelementptr i8, ptr %.pn.in28, i32 -8
  %10 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ubi_num, align 8
  %vol_id = getelementptr i8, ptr %.pn.in28, i32 -4
  %12 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vol_id, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %7, ptr noundef nonnull @.str.1, i32 noundef %call, i32 noundef %9, i32 noundef %11, i32 noundef %13) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %name = getelementptr i8, ptr %.pn.in28, i32 -1368
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 8
  tail call void @kfree(ptr noundef %15) #7
  tail call void @kfree(ptr noundef %gluebi.029) #7
  %cmp.not = icmp eq ptr %.pn30, @gluebi_devices
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %call14 = tail call i32 @ubi_unregister_volume_notifier(ptr noundef nonnull @gluebi_notifier) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_unregister_volume_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ubi_gluebi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ubi_register_volume_notifier(ptr noundef nonnull @gluebi_notifier, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gluebi_notify(ptr nocapture noundef readnone %nb, i32 noundef %l, ptr nocapture noundef readonly %ns_ptr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %l to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %l, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
    i32 4, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %vi = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1432) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %name.i = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1, i32 11
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 4
  %name_len.i = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %name_len.i, align 8
  %add.i = add i32 %5, 1
  %call2.i = tail call ptr @kmemdup(ptr noundef %3, i32 noundef %add.i, i32 noundef 3264) #7
  %name3.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 13
  %6 = ptrtoint ptr %name3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2.i, ptr %name3.i, align 8
  %tobool5.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %sw.epilog

if.end7.i:                                        ; preds = %if.end.i
  %vol_id.i = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %vol_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vol_id.i, align 4
  %vol_id8.i = getelementptr inbounds %struct.gluebi_device, ptr %call7.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %vol_id8.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %vol_id8.i, align 4
  %10 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vi, align 8
  %ubi_num9.i = getelementptr inbounds %struct.gluebi_device, ptr %call7.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %ubi_num9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ubi_num9.i, align 8
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 7, ptr %call7.i.i.i, align 8
  %ro_mode.i = getelementptr inbounds %struct.ubi_device_info, ptr %ns_ptr, i32 0, i32 5
  %14 = ptrtoint ptr %ro_mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ro_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not.i = icmp eq i32 %15, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end7.i.if.end12.i_crit_edge

if.end7.i.if.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1024, ptr %flags.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end7.i.if.end12.i_crit_edge
  %owner.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 55
  %17 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %owner.i, align 4
  %min_io_size.i = getelementptr inbounds %struct.ubi_device_info, ptr %ns_ptr, i32 0, i32 3
  %18 = ptrtoint ptr %min_io_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %min_io_size.i, align 4
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %writesize.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %writesize.i, align 4
  %usable_leb_size.i = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1, i32 9
  %21 = ptrtoint ptr %usable_leb_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usable_leb_size.i, align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %erasesize.i, align 8
  %_read.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 24
  %24 = ptrtoint ptr %_read.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @gluebi_read, ptr %_read.i, align 4
  %_write.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 25
  %25 = ptrtoint ptr %_write.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @gluebi_write, ptr %_write.i, align 8
  %_erase.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 21
  %26 = ptrtoint ptr %_erase.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @gluebi_erase, ptr %_erase.i, align 8
  %_get_device.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 48
  %27 = ptrtoint ptr %_get_device.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @gluebi_get_device, ptr %_get_device.i, align 4
  %_put_device.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 49
  %28 = ptrtoint ptr %_put_device.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @gluebi_put_device, ptr %_put_device.i, align 8
  %vol_type.i = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1, i32 5
  %29 = ptrtoint ptr %vol_type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vol_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp.i = icmp eq i32 %30, 3
  br i1 %cmp.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = sext i32 %22 to i64
  %size.i = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i, align 8
  %conv15.i = sext i32 %32 to i64
  %mul.i = mul nsw i64 %conv15.i, %conv.i
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %used_bytes.i = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %used_bytes.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %used_bytes.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then13.i
  %.sink.i = phi i64 [ %mul.i, %if.then13.i ], [ %34, %if.else.i ]
  %35 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %.sink.i, ptr %35, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #7
  %37 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vi, align 8
  %39 = ptrtoint ptr %vol_id.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vol_id.i, align 4
  %.pn15.i.i = load ptr, ptr @gluebi_devices, align 4
  %cmp.not16.i.i = icmp eq ptr %.pn15.i.i, @gluebi_devices
  br i1 %cmp.not16.i.i, label %if.end18.i.if.end29.i_crit_edge, label %if.end18.i.for.body.i.i_crit_edge

if.end18.i.for.body.i.i_crit_edge:                ; preds = %if.end18.i
  br label %for.body.i.i

if.end18.i.if.end29.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end18.i.for.body.i.i_crit_edge
  %.pn17.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn15.i.i, %if.end18.i.for.body.i.i_crit_edge ]
  %ubi_num1.i.i = getelementptr i8, ptr %.pn17.i.i, i32 -8
  %41 = ptrtoint ptr %ubi_num1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ubi_num1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %38)
  %cmp2.i.i = icmp eq i32 %42, %38
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %vol_id3.i.i = getelementptr i8, ptr %.pn17.i.i, i32 -4
  %43 = ptrtoint ptr %vol_id3.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vol_id3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %40)
  %cmp4.i.i = icmp eq i32 %44, %40
  br i1 %cmp4.i.i, label %find_gluebi_nolock.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %45 = ptrtoint ptr %.pn17.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i.i = load ptr, ptr %.pn17.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @gluebi_devices
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end29.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.if.end29.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

find_gluebi_nolock.exit.i:                        ; preds = %land.lhs.true.i.i
  %gluebi.0.le.i.i = getelementptr i8, ptr %.pn17.i.i, i32 -1424
  %tobool22.not.i = icmp eq ptr %gluebi.0.le.i.i, null
  br i1 %tobool22.not.i, label %find_gluebi_nolock.exit.i.if.end29.i_crit_edge, label %do.end.i

find_gluebi_nolock.exit.i.if.end29.i_crit_edge:   ; preds = %find_gluebi_nolock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

do.end.i:                                         ; preds = %find_gluebi_nolock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 68
  %50 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pid.i, align 8
  %index.i = getelementptr i8, ptr %.pn17.i.i, i32 -1364
  %52 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index.i, align 4
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %51, ptr noundef nonnull @.str.4, i32 noundef %53, i32 noundef %38, i32 noundef %40) #10
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end.i, %find_gluebi_nolock.exit.i.if.end29.i_crit_edge, %for.inc.i.i.if.end29.i_crit_edge, %if.end18.i.if.end29.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #7
  %call30.i = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %call7.i.i.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end42.i, label %do.end35.i

do.end35.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i1.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i1.i to ptr
  %task38.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task38.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task38.i, align 8
  %pid39.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 68
  %58 = ptrtoint ptr %pid39.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pid39.i, align 8
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %59, ptr noundef nonnull @.str.4) #10
  %60 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name3.i, align 8
  tail call void @kfree(ptr noundef %61) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %sw.epilog

if.end42.i:                                       ; preds = %if.end29.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #7
  %list.i = getelementptr inbounds %struct.gluebi_device, ptr %call7.i.i.i, i32 0, i32 5
  %62 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gluebi_devices, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %62, ptr noundef nonnull @gluebi_devices) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end42.i.list_add_tail.exit.i_crit_edge

if.end42.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %list.i, ptr getelementptr inbounds (%struct.list_head, ptr @gluebi_devices, i32 0, i32 1), align 4
  %63 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @gluebi_devices, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.gluebi_device, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %64 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %62, ptr %prev3.i.i.i, align 4
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %list.i, ptr %62, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end42.i.list_add_tail.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %vi2 = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #7
  %66 = ptrtoint ptr %vi2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vi2, align 8
  %vol_id.i14 = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %vol_id.i14 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vol_id.i14, align 4
  %.pn15.i.i15 = load ptr, ptr @gluebi_devices, align 4
  %cmp.not16.i.i16 = icmp eq ptr %.pn15.i.i15, @gluebi_devices
  br i1 %cmp.not16.i.i16, label %sw.bb1.do.end.i33_crit_edge, label %sw.bb1.for.body.i.i20_crit_edge

sw.bb1.for.body.i.i20_crit_edge:                  ; preds = %sw.bb1
  br label %for.body.i.i20

sw.bb1.do.end.i33_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i33

for.body.i.i20:                                   ; preds = %for.inc.i.i26.for.body.i.i20_crit_edge, %sw.bb1.for.body.i.i20_crit_edge
  %.pn17.i.i17 = phi ptr [ %.pn.i.i24, %for.inc.i.i26.for.body.i.i20_crit_edge ], [ %.pn15.i.i15, %sw.bb1.for.body.i.i20_crit_edge ]
  %ubi_num1.i.i18 = getelementptr i8, ptr %.pn17.i.i17, i32 -8
  %70 = ptrtoint ptr %ubi_num1.i.i18 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ubi_num1.i.i18, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %67)
  %cmp2.i.i19 = icmp eq i32 %71, %67
  br i1 %cmp2.i.i19, label %land.lhs.true.i.i23, label %for.body.i.i20.for.inc.i.i26_crit_edge

for.body.i.i20.for.inc.i.i26_crit_edge:           ; preds = %for.body.i.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i26

land.lhs.true.i.i23:                              ; preds = %for.body.i.i20
  %vol_id3.i.i21 = getelementptr i8, ptr %.pn17.i.i17, i32 -4
  %72 = ptrtoint ptr %vol_id3.i.i21 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %vol_id3.i.i21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %69)
  %cmp4.i.i22 = icmp eq i32 %73, %69
  br i1 %cmp4.i.i22, label %find_gluebi_nolock.exit.i29, label %land.lhs.true.i.i23.for.inc.i.i26_crit_edge

land.lhs.true.i.i23.for.inc.i.i26_crit_edge:      ; preds = %land.lhs.true.i.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i26

for.inc.i.i26:                                    ; preds = %land.lhs.true.i.i23.for.inc.i.i26_crit_edge, %for.body.i.i20.for.inc.i.i26_crit_edge
  %74 = ptrtoint ptr %.pn17.i.i17 to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pn.i.i24 = load ptr, ptr %.pn17.i.i17, align 4
  %cmp.not.i.i25 = icmp eq ptr %.pn.i.i24, @gluebi_devices
  br i1 %cmp.not.i.i25, label %for.inc.i.i26.do.end.i33_crit_edge, label %for.inc.i.i26.for.body.i.i20_crit_edge

for.inc.i.i26.for.body.i.i20_crit_edge:           ; preds = %for.inc.i.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i20

for.inc.i.i26.do.end.i33_crit_edge:               ; preds = %for.inc.i.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i33

find_gluebi_nolock.exit.i29:                      ; preds = %land.lhs.true.i.i23
  %ubi_num1.i.i18.le = getelementptr i8, ptr %.pn17.i.i17, i32 -8
  %vol_id3.i.i21.le = getelementptr i8, ptr %.pn17.i.i17, i32 -4
  %gluebi.0.le.i.i27 = getelementptr i8, ptr %.pn17.i.i17, i32 -1424
  %tobool.not.i28 = icmp eq ptr %gluebi.0.le.i.i27, null
  br i1 %tobool.not.i28, label %find_gluebi_nolock.exit.i29.do.end.i33_crit_edge, label %if.else.i35

find_gluebi_nolock.exit.i29.do.end.i33_crit_edge: ; preds = %find_gluebi_nolock.exit.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i33

do.end.i33:                                       ; preds = %find_gluebi_nolock.exit.i29.do.end.i33_crit_edge, %for.inc.i.i26.do.end.i33_crit_edge, %sw.bb1.do.end.i33_crit_edge
  %75 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i30 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i30 to ptr
  %task.i31 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %task.i31 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task.i31, align 8
  %pid.i32 = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 68
  %79 = ptrtoint ptr %pid.i32 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pid.i32, align 8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %80, ptr noundef nonnull @.str.11, i32 noundef %67, i32 noundef %69) #10
  br label %if.end8.i

if.else.i35:                                      ; preds = %find_gluebi_nolock.exit.i29
  %refcnt.i = getelementptr i8, ptr %.pn17.i.i17, i32 -16
  %81 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %refcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool5.not.i34 = icmp eq i32 %82, 0
  br i1 %tobool5.not.i34, label %if.else7.i, label %if.else.i35.if.end8.i_crit_edge

if.else.i35.if.end8.i_crit_edge:                  ; preds = %if.else.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.else7.i:                                       ; preds = %if.else.i35
  %call.i.i.i36 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn17.i.i17) #7
  br i1 %call.i.i.i36, label %if.end.i.i.i37, label %if.else7.i.list_del.exit.i_crit_edge

if.else7.i.list_del.exit.i_crit_edge:             ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i37:                                   ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn17.i.i17, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i.i.i, align 4
  %85 = ptrtoint ptr %.pn17.i.i17 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %.pn17.i.i17, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev1.i.i.i.i, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %86, ptr %84, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i37, %if.else7.i.list_del.exit.i_crit_edge
  %89 = ptrtoint ptr %.pn17.i.i17 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn17.i.i17, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn17.i.i17, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #7
  %call13.i = tail call i32 @mtd_device_unregister(ptr noundef nonnull %gluebi.0.le.i.i27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end27.i, label %do.end18.i

if.end8.i:                                        ; preds = %if.else.i35.if.end8.i_crit_edge, %do.end.i33
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #7
  br label %sw.epilog

do.end18.i:                                       ; preds = %list_del.exit.i
  %91 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i1.i38 = and i32 %91, -16384
  %92 = inttoptr i32 %and.i1.i38 to ptr
  %task21.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %task21.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task21.i, align 8
  %pid22.i = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 68
  %95 = ptrtoint ptr %pid22.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pid22.i, align 8
  %index.i39 = getelementptr i8, ptr %.pn17.i.i17, i32 -1364
  %97 = ptrtoint ptr %index.i39 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %index.i39, align 4
  %99 = ptrtoint ptr %ubi_num1.i.i18.le to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ubi_num1.i.i18.le, align 8
  %101 = ptrtoint ptr %vol_id3.i.i21.le to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %vol_id3.i.i21.le, align 4
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %96, ptr noundef nonnull @.str.11, i32 noundef %98, i32 noundef %100, i32 noundef %102, i32 noundef %call13.i) #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #7
  %103 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gluebi_devices, i32 0, i32 1), align 4
  %call.i.i2.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn17.i.i17, ptr noundef %103, ptr noundef nonnull @gluebi_devices) #7
  br i1 %call.i.i2.i, label %if.end.i.i3.i, label %do.end18.i.list_add_tail.exit.i40_crit_edge

do.end18.i.list_add_tail.exit.i40_crit_edge:      ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i40

if.end.i.i3.i:                                    ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %.pn17.i.i17, ptr getelementptr inbounds (%struct.list_head, ptr @gluebi_devices, i32 0, i32 1), align 4
  %104 = ptrtoint ptr %.pn17.i.i17 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @gluebi_devices, ptr %.pn17.i.i17, align 4
  %105 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %103, ptr %prev.i.i, align 4
  %106 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %.pn17.i.i17, ptr %103, align 4
  br label %list_add_tail.exit.i40

list_add_tail.exit.i40:                           ; preds = %if.end.i.i3.i, %do.end18.i.list_add_tail.exit.i40_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #7
  br label %sw.epilog

if.end27.i:                                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i41 = getelementptr i8, ptr %.pn17.i.i17, i32 -1368
  %107 = ptrtoint ptr %name.i41 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %name.i41, align 8
  tail call void @kfree(ptr noundef %108) #7
  tail call void @kfree(ptr noundef nonnull %gluebi.0.le.i.i27) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %vi5 = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #7
  %109 = ptrtoint ptr %vi5 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %vi5, align 8
  %vol_id.i42 = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1, i32 1
  %111 = ptrtoint ptr %vol_id.i42 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %vol_id.i42, align 4
  %.pn15.i.i43 = load ptr, ptr @gluebi_devices, align 4
  %cmp.not16.i.i44 = icmp eq ptr %.pn15.i.i43, @gluebi_devices
  br i1 %cmp.not16.i.i44, label %sw.bb4.if.then.i_crit_edge, label %sw.bb4.for.body.i.i48_crit_edge

sw.bb4.for.body.i.i48_crit_edge:                  ; preds = %sw.bb4
  br label %for.body.i.i48

sw.bb4.if.then.i_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.body.i.i48:                                   ; preds = %for.inc.i.i54.for.body.i.i48_crit_edge, %sw.bb4.for.body.i.i48_crit_edge
  %.pn17.i.i45 = phi ptr [ %.pn.i.i52, %for.inc.i.i54.for.body.i.i48_crit_edge ], [ %.pn15.i.i43, %sw.bb4.for.body.i.i48_crit_edge ]
  %ubi_num1.i.i46 = getelementptr i8, ptr %.pn17.i.i45, i32 -8
  %113 = ptrtoint ptr %ubi_num1.i.i46 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ubi_num1.i.i46, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %110)
  %cmp2.i.i47 = icmp eq i32 %114, %110
  br i1 %cmp2.i.i47, label %land.lhs.true.i.i51, label %for.body.i.i48.for.inc.i.i54_crit_edge

for.body.i.i48.for.inc.i.i54_crit_edge:           ; preds = %for.body.i.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i54

land.lhs.true.i.i51:                              ; preds = %for.body.i.i48
  %vol_id3.i.i49 = getelementptr i8, ptr %.pn17.i.i45, i32 -4
  %115 = ptrtoint ptr %vol_id3.i.i49 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %vol_id3.i.i49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %112)
  %cmp4.i.i50 = icmp eq i32 %116, %112
  br i1 %cmp4.i.i50, label %find_gluebi_nolock.exit.i57, label %land.lhs.true.i.i51.for.inc.i.i54_crit_edge

land.lhs.true.i.i51.for.inc.i.i54_crit_edge:      ; preds = %land.lhs.true.i.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i54

for.inc.i.i54:                                    ; preds = %land.lhs.true.i.i51.for.inc.i.i54_crit_edge, %for.body.i.i48.for.inc.i.i54_crit_edge
  %117 = ptrtoint ptr %.pn17.i.i45 to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pn.i.i52 = load ptr, ptr %.pn17.i.i45, align 4
  %cmp.not.i.i53 = icmp eq ptr %.pn.i.i52, @gluebi_devices
  br i1 %cmp.not.i.i53, label %for.inc.i.i54.if.then.i_crit_edge, label %for.inc.i.i54.for.body.i.i48_crit_edge

for.inc.i.i54.for.body.i.i48_crit_edge:           ; preds = %for.inc.i.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i48

for.inc.i.i54.if.then.i_crit_edge:                ; preds = %for.inc.i.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

find_gluebi_nolock.exit.i57:                      ; preds = %land.lhs.true.i.i51
  %gluebi.0.le.i.i55 = getelementptr i8, ptr %.pn17.i.i45, i32 -1424
  %tobool.not.i56 = icmp eq ptr %gluebi.0.le.i.i55, null
  br i1 %tobool.not.i56, label %find_gluebi_nolock.exit.i57.if.then.i_crit_edge, label %if.end.i64

find_gluebi_nolock.exit.i57.if.then.i_crit_edge:  ; preds = %find_gluebi_nolock.exit.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %find_gluebi_nolock.exit.i57.if.then.i_crit_edge, %for.inc.i.i54.if.then.i_crit_edge, %sw.bb4.if.then.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #7
  %118 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i58 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i58 to ptr
  %task.i59 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %task.i59 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %task.i59, align 8
  %pid.i60 = getelementptr inbounds %struct.task_struct, ptr %121, i32 0, i32 68
  %122 = ptrtoint ptr %pid.i60 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %pid.i60, align 8
  %124 = ptrtoint ptr %vi5 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %vi5, align 8
  %126 = ptrtoint ptr %vol_id.i42 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %vol_id.i42, align 4
  %call4.i61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %123, ptr noundef nonnull @.str.16, i32 noundef %125, i32 noundef %127) #10
  br label %sw.epilog

if.end.i64:                                       ; preds = %find_gluebi_nolock.exit.i57
  call void @__sanitizer_cov_trace_pc() #9
  %used_bytes.i62 = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1, i32 3
  %128 = ptrtoint ptr %used_bytes.i62 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %used_bytes.i62, align 8
  %size.i63 = getelementptr i8, ptr %.pn17.i.i45, i32 -1416
  %130 = ptrtoint ptr %size.i63 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %129, ptr %size.i63, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %vi8 = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #7
  %131 = ptrtoint ptr %vi8 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %vi8, align 8
  %vol_id.i65 = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1, i32 1
  %133 = ptrtoint ptr %vol_id.i65 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %vol_id.i65, align 4
  %.pn15.i.i66 = load ptr, ptr @gluebi_devices, align 4
  %cmp.not16.i.i67 = icmp eq ptr %.pn15.i.i66, @gluebi_devices
  br i1 %cmp.not16.i.i67, label %sw.bb7.if.then.i85_crit_edge, label %sw.bb7.for.body.i.i71_crit_edge

sw.bb7.for.body.i.i71_crit_edge:                  ; preds = %sw.bb7
  br label %for.body.i.i71

sw.bb7.if.then.i85_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i85

for.body.i.i71:                                   ; preds = %for.inc.i.i77.for.body.i.i71_crit_edge, %sw.bb7.for.body.i.i71_crit_edge
  %.pn17.i.i68 = phi ptr [ %.pn.i.i75, %for.inc.i.i77.for.body.i.i71_crit_edge ], [ %.pn15.i.i66, %sw.bb7.for.body.i.i71_crit_edge ]
  %ubi_num1.i.i69 = getelementptr i8, ptr %.pn17.i.i68, i32 -8
  %135 = ptrtoint ptr %ubi_num1.i.i69 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %ubi_num1.i.i69, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %132)
  %cmp2.i.i70 = icmp eq i32 %136, %132
  br i1 %cmp2.i.i70, label %land.lhs.true.i.i74, label %for.body.i.i71.for.inc.i.i77_crit_edge

for.body.i.i71.for.inc.i.i77_crit_edge:           ; preds = %for.body.i.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i77

land.lhs.true.i.i74:                              ; preds = %for.body.i.i71
  %vol_id3.i.i72 = getelementptr i8, ptr %.pn17.i.i68, i32 -4
  %137 = ptrtoint ptr %vol_id3.i.i72 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %vol_id3.i.i72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %134)
  %cmp4.i.i73 = icmp eq i32 %138, %134
  br i1 %cmp4.i.i73, label %find_gluebi_nolock.exit.i80, label %land.lhs.true.i.i74.for.inc.i.i77_crit_edge

land.lhs.true.i.i74.for.inc.i.i77_crit_edge:      ; preds = %land.lhs.true.i.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i77

for.inc.i.i77:                                    ; preds = %land.lhs.true.i.i74.for.inc.i.i77_crit_edge, %for.body.i.i71.for.inc.i.i77_crit_edge
  %139 = ptrtoint ptr %.pn17.i.i68 to i32
  call void @__asan_load4_noabort(i32 %139)
  %.pn.i.i75 = load ptr, ptr %.pn17.i.i68, align 4
  %cmp.not.i.i76 = icmp eq ptr %.pn.i.i75, @gluebi_devices
  br i1 %cmp.not.i.i76, label %for.inc.i.i77.if.then.i85_crit_edge, label %for.inc.i.i77.for.body.i.i71_crit_edge

for.inc.i.i77.for.body.i.i71_crit_edge:           ; preds = %for.inc.i.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i71

for.inc.i.i77.if.then.i85_crit_edge:              ; preds = %for.inc.i.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i85

find_gluebi_nolock.exit.i80:                      ; preds = %land.lhs.true.i.i74
  %gluebi.0.le.i.i78 = getelementptr i8, ptr %.pn17.i.i68, i32 -1424
  %tobool.not.i79 = icmp eq ptr %gluebi.0.le.i.i78, null
  br i1 %tobool.not.i79, label %find_gluebi_nolock.exit.i80.if.then.i85_crit_edge, label %if.end.i88

find_gluebi_nolock.exit.i80.if.then.i85_crit_edge: ; preds = %find_gluebi_nolock.exit.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i85

if.then.i85:                                      ; preds = %find_gluebi_nolock.exit.i80.if.then.i85_crit_edge, %for.inc.i.i77.if.then.i85_crit_edge, %sw.bb7.if.then.i85_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #7
  %140 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i81 = and i32 %140, -16384
  %141 = inttoptr i32 %and.i.i81 to ptr
  %task.i82 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %task.i82 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %task.i82, align 8
  %pid.i83 = getelementptr inbounds %struct.task_struct, ptr %143, i32 0, i32 68
  %144 = ptrtoint ptr %pid.i83 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pid.i83, align 8
  %146 = ptrtoint ptr %vi8 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %vi8, align 8
  %148 = ptrtoint ptr %vol_id.i65 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %vol_id.i65, align 4
  %call4.i84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %145, ptr noundef nonnull @.str.17, i32 noundef %147, i32 noundef %149) #10
  br label %sw.epilog

if.end.i88:                                       ; preds = %find_gluebi_nolock.exit.i80
  %vol_type.i86 = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1, i32 5
  %150 = ptrtoint ptr %vol_type.i86 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %vol_type.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %151)
  %cmp.i87 = icmp eq i32 %151, 4
  br i1 %cmp.i87, label %if.then5.i, label %if.end.i88.if.end6.i_crit_edge

if.end.i88.if.end6.i_crit_edge:                   ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #9
  %used_bytes.i89 = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1, i32 3
  %152 = ptrtoint ptr %used_bytes.i89 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %used_bytes.i89, align 8
  %size.i90 = getelementptr i8, ptr %.pn17.i.i68, i32 -1416
  %154 = ptrtoint ptr %size.i90 to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %153, ptr %size.i90, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i88.if.end6.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end6.i, %if.then.i85, %if.end.i64, %if.then.i, %if.end27.i, %list_add_tail.exit.i40, %if.end8.i, %list_add_tail.exit.i, %do.end35.i, %if.then6.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gluebi_read(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %0 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %from)
  %cmp164.i = icmp ult i64 %from, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !62

if.then168.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i = trunc i64 %from to i32
  %.frozen = freeze i32 %1
  %div172.i = udiv i32 %conv169.i, %.frozen
  %2 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %conv169.i, %2
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %from) #12, !srcloc !63
  %asmresult.i261.i = extractvalue { i64, i64 } %3, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %3, 1
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %extract.t36 = trunc i64 %asmresult1.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %dividend.addr.0.i.off0 = phi i32 [ %div172.i, %if.then168.i ], [ %extract.t36, %if.else174.i ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not38 = icmp eq i32 %len, 0
  br i1 %tobool.not38, label %div_u64_rem.exit.while.end_crit_edge, label %while.body.lr.ph

div_u64_rem.exit.while.end_crit_edge:             ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %div_u64_rem.exit
  %desc = getelementptr inbounds %struct.gluebi_device, ptr %mtd, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.042 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr8, %cleanup.while.body_crit_edge ]
  %bytes_left.041 = phi i32 [ %len, %while.body.lr.ph ], [ %sub7, %cleanup.while.body_crit_edge ]
  %lnum.040 = phi i32 [ %dividend.addr.0.i.off0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %offs.039 = phi i32 [ %__rem.0.i, %while.body.lr.ph ], [ 0, %cleanup.while.body_crit_edge ]
  %4 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %erasesize, align 8
  %sub = sub i32 %5, %offs.039
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %bytes_left.041)
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc, align 4
  %call.i = tail call i32 @ubi_leb_read(ptr noundef %8, i32 noundef %lnum.040, ptr noundef %buf.addr.042, i32 noundef %offs.039, i32 noundef %6, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %cleanup, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup:                                          ; preds = %while.body
  %add = add i32 %lnum.040, 1
  %sub7 = sub i32 %bytes_left.041, %6
  %add.ptr8 = getelementptr i8, ptr %buf.addr.042, i32 %6
  %tobool.not = icmp eq i32 %sub7, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %div_u64_rem.exit.while.end_crit_edge
  %bytes_left.0.lcssa = phi i32 [ 0, %div_u64_rem.exit.while.end_crit_edge ], [ %bytes_left.041, %while.body.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ]
  %err.1 = phi i32 [ 0, %div_u64_rem.exit.while.end_crit_edge ], [ %call.i, %while.body.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ]
  %sub9 = sub i32 %len, %bytes_left.0.lcssa
  %9 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub9, ptr %retlen, align 4
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gluebi_write(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %0 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %to)
  %cmp164.i = icmp ult i64 %to, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !62

if.then168.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i = trunc i64 %to to i32
  %.frozen = freeze i32 %1
  %div172.i = udiv i32 %conv169.i, %.frozen
  %2 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %conv169.i, %2
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %to) #12, !srcloc !63
  %asmresult.i261.i = extractvalue { i64, i64 } %3, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %3, 1
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %extract.t46 = trunc i64 %asmresult1.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %dividend.addr.0.i.off0 = phi i32 [ %div172.i, %if.then168.i ], [ %extract.t46, %if.else174.i ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  %rem = urem i32 %len, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %lor.lhs.false, label %div_u64_rem.exit.cleanup16_crit_edge

div_u64_rem.exit.cleanup16_crit_edge:             ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup16

lor.lhs.false:                                    ; preds = %div_u64_rem.exit
  %rem2 = urem i32 %__rem.0.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem2)
  %tobool3.not = icmp eq i32 %rem2, 0
  br i1 %tobool3.not, label %while.cond.preheader, label %lor.lhs.false.cleanup16_crit_edge

lor.lhs.false.cleanup16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup16

while.cond.preheader:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool4.not48 = icmp eq i32 %len, 0
  br i1 %tobool4.not48, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %desc = getelementptr inbounds %struct.gluebi_device, ptr %mtd, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.052 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr14, %cleanup.while.body_crit_edge ]
  %bytes_left.051 = phi i32 [ %len, %while.body.lr.ph ], [ %sub13, %cleanup.while.body_crit_edge ]
  %lnum.050 = phi i32 [ %dividend.addr.0.i.off0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %offs.049 = phi i32 [ %__rem.0.i, %while.body.lr.ph ], [ 0, %cleanup.while.body_crit_edge ]
  %6 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %erasesize, align 8
  %sub = sub i32 %7, %offs.049
  %8 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %bytes_left.051)
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 4
  %call9 = tail call i32 @ubi_leb_write(ptr noundef %10, i32 noundef %lnum.050, ptr noundef %buf.addr.052, i32 noundef %offs.049, i32 noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup:                                          ; preds = %while.body
  %add = add i32 %lnum.050, 1
  %sub13 = sub i32 %bytes_left.051, %8
  %add.ptr14 = getelementptr i8, ptr %buf.addr.052, i32 %8
  %tobool4.not = icmp eq i32 %sub13, 0
  br i1 %tobool4.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %bytes_left.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %bytes_left.051, %while.body.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ]
  %err.1 = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %call9, %while.body.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ]
  %sub15 = sub i32 %len, %bytes_left.0.lcssa
  %11 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub15, ptr %retlen, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %while.end, %lor.lhs.false.cleanup16_crit_edge, %div_u64_rem.exit.cleanup16_crit_edge
  %retval.0 = phi i32 [ %err.1, %while.end ], [ -22, %lor.lhs.false.cleanup16_crit_edge ], [ -22, %div_u64_rem.exit.cleanup16_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gluebi_erase(ptr nocapture noundef readonly %mtd, ptr nocapture noundef %instr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %instr, align 8
  %writesize_shift.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 9
  %2 = ptrtoint ptr %writesize_shift.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize_shift.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %mtd_mod_by_ws.exit.thread

if.end.i:                                         ; preds = %entry
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %4 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %1)
  %cmp171.i = icmp ult i64 %1, 4294967296
  br i1 %cmp171.i, label %if.then175.i, label %if.else181.i, !prof !62

if.then175.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv176.i = trunc i64 %1 to i32
  %rem177.i = urem i32 %conv176.i, %5
  br label %mtd_mod_by_ws.exit

if.else181.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 %1) #12, !srcloc !63
  %asmresult.i270.i = extractvalue { i64, i64 } %6, 0
  %shr.i.i = lshr i64 %asmresult.i270.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %mtd_mod_by_ws.exit

mtd_mod_by_ws.exit:                               ; preds = %if.else181.i, %if.then175.i
  %retval.0.i = phi i32 [ %rem177.i, %if.then175.i ], [ %conv.i.i, %if.else181.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end.i48, label %mtd_mod_by_ws.exit.cleanup_crit_edge

mtd_mod_by_ws.exit.cleanup_crit_edge:             ; preds = %mtd_mod_by_ws.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mtd_mod_by_ws.exit.thread:                        ; preds = %entry
  %writesize_mask.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 11
  %7 = ptrtoint ptr %writesize_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize_mask.i, align 8
  %9 = trunc i64 %1 to i32
  %conv1.i = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %tobool.not334 = icmp eq i32 %conv1.i, 0
  br i1 %tobool.not334, label %if.then.i43, label %mtd_mod_by_ws.exit.thread.cleanup_crit_edge

mtd_mod_by_ws.exit.thread.cleanup_crit_edge:      ; preds = %mtd_mod_by_ws.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i43:                                      ; preds = %mtd_mod_by_ws.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %len335 = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %10 = ptrtoint ptr %len335 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %len335, align 8
  %writesize_mask.i41 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 11
  %12 = ptrtoint ptr %writesize_mask.i41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %writesize_mask.i41, align 8
  %14 = trunc i64 %11 to i32
  %conv1.i42 = and i32 %13, %14
  br label %mtd_mod_by_ws.exit166

if.end.i48:                                       ; preds = %mtd_mod_by_ws.exit
  %len = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %len, align 8
  %17 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %writesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %16)
  %cmp171.i156 = icmp ult i64 %16, 4294967296
  br i1 %cmp171.i156, label %if.then175.i160, label %if.else181.i164, !prof !62

if.then175.i160:                                  ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  %conv176.i158 = trunc i64 %16 to i32
  %rem177.i159 = urem i32 %conv176.i158, %18
  br label %mtd_mod_by_ws.exit166

if.else181.i164:                                  ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %16) #12, !srcloc !63
  %asmresult.i270.i161 = extractvalue { i64, i64 } %19, 0
  %shr.i.i162 = lshr i64 %asmresult.i270.i161, 32
  %conv.i.i163 = trunc i64 %shr.i.i162 to i32
  br label %mtd_mod_by_ws.exit166

mtd_mod_by_ws.exit166:                            ; preds = %if.else181.i164, %if.then175.i160, %if.then.i43
  %20 = phi i64 [ %11, %if.then.i43 ], [ %16, %if.then175.i160 ], [ %16, %if.else181.i164 ]
  %retval.0.i165 = phi i32 [ %conv1.i42, %if.then.i43 ], [ %rem177.i159, %if.then175.i160 ], [ %conv.i.i163, %if.else181.i164 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i165)
  %tobool2.not = icmp eq i32 %retval.0.i165, 0
  br i1 %tobool2.not, label %if.end, label %mtd_mod_by_ws.exit166.cleanup_crit_edge

mtd_mod_by_ws.exit166.cleanup_crit_edge:          ; preds = %mtd_mod_by_ws.exit166
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mtd_mod_by_ws.exit166
  %erasesize_shift.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 8
  %21 = ptrtoint ptr %erasesize_shift.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %erasesize_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i167 = icmp eq i32 %22, 0
  br i1 %tobool.not.i167, label %if.end.i172, label %if.then.i212

if.end.i172:                                      ; preds = %if.end
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %23 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %erasesize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %1)
  %cmp172.i = icmp ult i64 %1, 4294967296
  br i1 %cmp172.i, label %if.then176.i, label %if.else182.i, !prof !62

if.then176.i:                                     ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #9
  %conv177.i = trunc i64 %1 to i32
  %div180.i = udiv i32 %conv177.i, %24
  br label %if.end.i217

if.else182.i:                                     ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #9
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %1) #12, !srcloc !63
  %asmresult1.i.i = extractvalue { i64, i64 } %25, 1
  %extract.t297.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end.i217

if.then.i212:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sh_prom.i = zext i32 %22 to i64
  %shr.i = lshr i64 %1, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %shr.i210 = lshr i64 %20, %sh_prom.i
  %conv.i211 = trunc i64 %shr.i210 to i32
  br label %mtd_div_by_eb.exit332

if.end.i217:                                      ; preds = %if.else182.i, %if.then176.i
  %retval.0.i206.ph = phi i32 [ %extract.t297.i, %if.else182.i ], [ %div180.i, %if.then176.i ]
  %26 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %erasesize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %20)
  %cmp172.i323 = icmp ult i64 %20, 4294967296
  br i1 %cmp172.i323, label %if.then176.i327, label %if.else182.i330, !prof !62

if.then176.i327:                                  ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #9
  %conv177.i325 = trunc i64 %20 to i32
  %div180.i326 = udiv i32 %conv177.i325, %27
  br label %mtd_div_by_eb.exit332

if.else182.i330:                                  ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #9
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %27, i64 %20) #12, !srcloc !63
  %asmresult1.i.i328 = extractvalue { i64, i64 } %28, 1
  %extract.t297.i329 = trunc i64 %asmresult1.i.i328 to i32
  br label %mtd_div_by_eb.exit332

mtd_div_by_eb.exit332:                            ; preds = %if.else182.i330, %if.then176.i327, %if.then.i212
  %retval.0.i206337 = phi i32 [ %conv.i, %if.then.i212 ], [ %retval.0.i206.ph, %if.then176.i327 ], [ %retval.0.i206.ph, %if.else182.i330 ]
  %retval.0.i331 = phi i32 [ %conv.i211, %if.then.i212 ], [ %div180.i326, %if.then176.i327 ], [ %extract.t297.i329, %if.else182.i330 ]
  %sub = add i32 %retval.0.i331, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp341 = icmp sgt i32 %sub, 0
  br i1 %cmp341, label %for.body.lr.ph, label %mtd_div_by_eb.exit332.for.end_crit_edge

mtd_div_by_eb.exit332.for.end_crit_edge:          ; preds = %mtd_div_by_eb.exit332
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %mtd_div_by_eb.exit332
  %desc = getelementptr inbounds %struct.gluebi_device, ptr %mtd, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0342 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %29 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %desc, align 4
  %add = add i32 %i.0342, %retval.0.i206337
  %call7 = tail call i32 @ubi_leb_unmap(ptr noundef %30, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.inc, label %for.body.out_err_crit_edge

for.body.out_err_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0342, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %mtd_div_by_eb.exit332.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %mtd_div_by_eb.exit332.for.end_crit_edge ], [ %sub, %for.inc.for.end_crit_edge ]
  %desc11 = getelementptr inbounds %struct.gluebi_device, ptr %mtd, i32 0, i32 2
  %31 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %desc11, align 4
  %add12 = add i32 %i.0.lcssa, %retval.0.i206337
  %call13 = tail call i32 @ubi_leb_erase(ptr noundef %32, i32 noundef %add12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.end.cleanup_crit_edge, label %for.end.out_err_crit_edge

for.end.out_err_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

out_err:                                          ; preds = %for.end.out_err_crit_edge, %for.body.out_err_crit_edge
  %err.0 = phi i32 [ %call13, %for.end.out_err_crit_edge ], [ %call7, %for.body.out_err_crit_edge ]
  %conv = sext i32 %retval.0.i206337 to i64
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %33 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %erasesize, align 8
  %conv17 = zext i32 %34 to i64
  %mul = mul nsw i64 %conv17, %conv
  %fail_addr = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 2
  %35 = ptrtoint ptr %fail_addr to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %mul, ptr %fail_addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %out_err, %for.end.cleanup_crit_edge, %mtd_mod_by_ws.exit166.cleanup_crit_edge, %mtd_mod_by_ws.exit.thread.cleanup_crit_edge, %mtd_mod_by_ws.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_err ], [ -22, %mtd_mod_by_ws.exit166.cleanup_crit_edge ], [ -22, %mtd_mod_by_ws.exit.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -22, %mtd_mod_by_ws.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gluebi_get_device(ptr nocapture noundef %mtd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #7
  %refcnt = getelementptr inbounds %struct.gluebi_device, ptr %mtd, i32 0, i32 1
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw i32 %3, 1
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %refcnt, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #7
  br label %cleanup

if.end3:                                          ; preds = %entry
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 2
  %ubi_num = getelementptr inbounds %struct.gluebi_device, ptr %mtd, i32 0, i32 3
  %5 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ubi_num, align 8
  %vol_id = getelementptr inbounds %struct.gluebi_device, ptr %mtd, i32 0, i32 4
  %7 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vol_id, align 4
  %call = tail call ptr @ubi_open_volume(i32 noundef %6, i32 noundef %8, i32 noundef %spec.store.select) #7
  %desc = getelementptr inbounds %struct.gluebi_device, ptr %mtd, i32 0, i32 2
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %desc, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #7
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %refcnt, align 8
  %add11 = add i32 %14, 1
  store i32 %add11, ptr %refcnt, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ %12, %if.then6 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gluebi_put_device(ptr nocapture noundef %mtd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #7
  %refcnt = getelementptr inbounds %struct.gluebi_device, ptr %mtd, i32 0, i32 1
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 8
  %sub = add i32 %1, -1
  store i32 %sub, ptr %refcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %desc = getelementptr inbounds %struct.gluebi_device, ptr %mtd, i32 0, i32 2
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  tail call void @ubi_close_volume(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_erase(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_open_volume(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_close_volume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_register_volume_notifier(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/ubi/gluebi.c", i32 487, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ubi_gluebi_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ubi_gluebi_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_gluebi__230_496_ubi_gluebi_init6, !7, !"__initcall__kmod_gluebi__230_496_ubi_gluebi_init6", i1 false, i1 false}
!7 = !{!"../drivers/mtd/ubi/gluebi.c", i32 496, i32 1}
!8 = !{ptr @__exitcall_ubi_gluebi_exit, !9, !"__exitcall_ubi_gluebi_exit", i1 false, i1 false}
!9 = !{!"../drivers/mtd/ubi/gluebi.c", i32 497, i32 1}
!10 = !{ptr @__UNIQUE_ID_description231, !11, !"__UNIQUE_ID_description231", i1 false, i1 false}
!11 = !{!"../drivers/mtd/ubi/gluebi.c", i32 498, i32 1}
!12 = !{ptr @__UNIQUE_ID_author232, !13, !"__UNIQUE_ID_author232", i1 false, i1 false}
!13 = !{!"../drivers/mtd/ubi/gluebi.c", i32 499, i32 1}
!14 = !{ptr @__UNIQUE_ID_file233, !15, !"__UNIQUE_ID_file233", i1 false, i1 false}
!15 = !{!"../drivers/mtd/ubi/gluebi.c", i32 500, i32 1}
!16 = !{ptr @__UNIQUE_ID_license234, !15, !"__UNIQUE_ID_license234", i1 false, i1 false}
!17 = !{ptr @gluebi_devices, !18, !"gluebi_devices", i1 false, i1 false}
!18 = !{!"../drivers/mtd/ubi/gluebi.c", i32 53, i32 8}
!19 = !{ptr @gluebi_notifier, !20, !"gluebi_notifier", i1 false, i1 false}
!20 = !{!"../drivers/mtd/ubi/gluebi.c", i32 468, i32 30}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/ubi/gluebi.c", i32 323, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @gluebi_create._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @gluebi_create._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/ubi/gluebi.c", i32 328, i32 3}
!28 = !{ptr @gluebi_create._entry.5, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @gluebi_create._entry_ptr.7, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/ubi/gluebi.c", i32 54, i32 8}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @devices_mutex, !31, !"devices_mutex", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/ubi/gluebi.c", i32 357, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @gluebi_remove._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @gluebi_remove._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/ubi/gluebi.c", i32 371, i32 3}
!41 = !{ptr @gluebi_remove._entry.12, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @gluebi_remove._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/ubi/gluebi.c", i32 429, i32 3}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @gluebi_resized._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @gluebi_resized._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/ubi/gluebi.c", i32 402, i32 3}
!50 = !{ptr @gluebi_updated._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @gluebi_updated._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{!"sp"}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2148442107, i64 2148442387, i64 2148442721, i64 2148443055}
