; ModuleID = '/llk/IR_all_yes/drivers/mtd/ubi/build.c_pt.bc'
source_filename = "../drivers/mtd/ubi/build.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.class_attribute = type { %struct.attribute, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtd_dev_param = type { [64 x i8], i32, i32, i32 }
%struct.ubi_notification = type { %struct.ubi_device_info, %struct.ubi_volume_info }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ubi_fm_pool = type { [256 x i32], i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.ubi_debug_info = type { i8, i32, i32, i32, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.ubi_volume_desc = type { ptr, i32 }
%struct.ubi_vtbl_record = type { i32, i32, i32, i8, i8, i16, [128 x i8], i8, [23 x i8], i32 }
%struct.ubi_volume = type { %struct.device, %struct.cdev, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, [128 x i8], i32, i32, i64, i64, ptr, ptr, i8, ptr }
%struct.path = type { ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ubi_devices_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@ubi_devices_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ubi_devices_mutex, i64 52), ptr getelementptr (i8, ptr @ubi_devices_mutex, i64 52) }, ptr @ubi_devices_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubi_devices_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ubi\00", [28 x i8] zeroinitializer }, align 32
@ubi_class_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ubi_class_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ubi_class = dso_local global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.2, ptr null, ptr @ubi_class_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to write a new fastmap: %i\00", [62 x i8] zeroinitializer }, align 32
@ubi_notifiers = external dso_local global %struct.blocking_notifier_head, align 4
@ubi_devices = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@ubi_devices_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.55, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ubi_get_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ubi_get_device\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/mtd/ubi/build.c\00", [40 x i8] zeroinitializer }, align 32
@ubi_get_device._entry_ptr = internal global ptr @ubi_get_device._entry, section ".printk_index", align 4
@ubi_get_by_major._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.7, ptr @.str.6, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubi_get_by_major\00", [47 x i8] zeroinitializer }, align 32
@ubi_get_by_major._entry_ptr = internal global ptr @ubi_get_by_major._entry, section ".printk_index", align 4
@ubi_attach_mtd_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.6, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ubi: mtd%d is already attached to ubi%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ubi_attach_mtd_dev\00", [45 x i8] zeroinitializer }, align 32
@ubi_attach_mtd_dev._entry_ptr = internal global ptr @ubi_attach_mtd_dev._entry, section ".printk_index", align 4
@ubi_attach_mtd_dev._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.6, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013ubi: refuse attaching mtd%d - it is already emulated on top of UBI\0A\00", [58 x i8] zeroinitializer }, align 32
@ubi_attach_mtd_dev._entry_ptr.12 = internal global ptr @ubi_attach_mtd_dev._entry.10, section ".printk_index", align 4
@ubi_attach_mtd_dev._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.6, i32 875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013ubi: refuse attaching mtd%d - MLC NAND is not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@ubi_attach_mtd_dev._entry_ptr.15 = internal global ptr @ubi_attach_mtd_dev._entry.13, section ".printk_index", align 4
@ubi_attach_mtd_dev._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.6, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ubi: only %d UBI devices may be created\0A\00", [53 x i8] zeroinitializer }, align 32
@ubi_attach_mtd_dev._entry_ptr.18 = internal global ptr @ubi_attach_mtd_dev._entry.16, section ".printk_index", align 4
@ubi_attach_mtd_dev._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.6, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013ubi: ubi%i already exists\0A\00", [35 x i8] zeroinitializer }, align 32
@ubi_attach_mtd_dev._entry_ptr.21 = internal global ptr @ubi_attach_mtd_dev._entry.19, section ".printk_index", align 4
@ubi_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ubi_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@fm_autoconvert = internal global { i8, [31 x i8] } zeroinitializer, align 32
@fm_debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"More than %i PEBs are needed for fastmap, sorry.\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"default fastmap pool size: %d\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"default fastmap WL pool size: %d\00", [63 x i8] zeroinitializer }, align 32
@ubi_attach_mtd_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ubi->buf_mutex\00", [16 x i8] zeroinitializer }, align 32
@ubi_attach_mtd_dev.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ubi->ckvol_mutex\00", [46 x i8] zeroinitializer }, align 32
@ubi_attach_mtd_dev.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ubi->device_mutex\00", [45 x i8] zeroinitializer }, align 32
@ubi_attach_mtd_dev.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ubi->volumes_lock\00", [45 x i8] zeroinitializer }, align 32
@ubi_attach_mtd_dev.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ubi->fm_protect\00", [47 x i8] zeroinitializer }, align 32
@ubi_attach_mtd_dev.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ubi->fm_eba_sem\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"attaching mtd%d\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to attach mtd%d, error %d\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot spawn \22%s\22, error %d\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"attached mtd%d (name \22%s\22, size %llu MiB)\00", [54 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"PEB size: %d bytes (%d KiB), LEB size: %d bytes\00", [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"min./max. I/O unit sizes: %d/%d, sub-page size %d\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"VID header offset: %d (aligned %d), data offset: %d\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"good PEBs: %d, bad PEBs: %d, corrupted PEBs: %d\00", [48 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"user volume: %d, internal volumes: %d, max. volumes count: %d\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"max/mean erase counter: %d/%d, WL threshold: %d, image sequence number: %u\00", [53 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"available PEBs: %d, total reserved PEBs: %d, PEBs reserved for bad PEB handling: %d\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s reference count %d, destroy anyway\00", [58 x i8] zeroinitializer }, align 32
@ubi_detach_mtd_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.49, ptr @.str.6, i32 1087, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ubi_detach_mtd_dev\00", [45 x i8] zeroinitializer }, align 32
@ubi_detach_mtd_dev._entry_ptr = internal global ptr @ubi_detach_mtd_dev._entry, section ".printk_index", align 4
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"detaching mtd%d\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtd%d is detached\00", [46 x i8] zeroinitializer }, align 32
@__initcall__kmod_ubi__251_1305_ubi_init7 = internal global ptr @ubi_init, section ".initcall7.init", align 4
@ubi_wl_entry_slab = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ubi_ctrl_cdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.120, ptr @ubi_ctrl_cdev_operations, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ubi_exit = internal global ptr @ubi_exit, section ".exitcall.exit", align 4
@__param_str_mtd = internal constant [8 x i8] c"ubi.mtd\00", align 1
@__param_ops_mtd = internal constant %struct.kernel_param_ops { i32 0, ptr @ubi_mtd_param_parse, ptr null, ptr null }, align 4
@__param_mtd = internal constant %struct.kernel_param { ptr @__param_str_mtd, ptr null, ptr @__param_ops_mtd, i16 256, i8 -1, i8 0, %union.anon.68 zeroinitializer }, section "__param", align 4
@__UNIQUE_ID_mtd252 = internal constant [1237 x i8] c"ubi.parm=mtd:MTD devices to attach. Parameter format: mtd=<name|num|path>[,<vid_hdr_offs>[,max_beb_per1024[,ubi_num]]].\0AMultiple \22mtd\22 parameters may be specified.\0AMTD devices may be specified by their number, name, or path to the MTD character device node.\0AOptional \22vid_hdr_offs\22 parameter specifies UBI VID header position to be used by UBI. (default value if 0)\0AOptional \22max_beb_per1024\22 parameter specifies the maximum expected bad eraseblock per 1024 eraseblocks. (default value (20) if 0)\0AOptional \22ubi_num\22 parameter specifies UBI device number which have to be assigned to the newly created UBI device (assigned automatically by default)\0A\0AExample 1: mtd=/dev/mtd0 - attach MTD device /dev/mtd0.\0AExample 2: mtd=content,1984 mtd=4 - attach MTD device with name \22content\22 using VID header offset 1984, and MTD device number 4 with default VID header offset.\0AExample 3: mtd=/dev/mtd1,0,25 - attach MTD device /dev/mtd1 using default VID header offset and reserve 25*nand_size_in_blocks/1024 erase blocks for bad block handling.\0AExample 4: mtd=/dev/mtd1,0,0,5 - attach MTD device /dev/mtd1 to UBI 5 and using default values for the other fields.\0A\09(e.g. if the NAND *chipset* has 4096 PEB, 100 will be reserved for this UBI device).\00", section ".modinfo", align 1
@__param_str_fm_autoconvert = internal constant [19 x i8] c"ubi.fm_autoconvert\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_fm_autoconvert = internal constant %struct.kernel_param { ptr @__param_str_fm_autoconvert, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @fm_autoconvert } }, section "__param", align 4
@__UNIQUE_ID_fm_autoconverttype253 = internal constant [33 x i8] c"ubi.parmtype=fm_autoconvert:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_fm_autoconvert254 = internal constant [104 x i8] c"ubi.parm=fm_autoconvert:Set this parameter to enable fastmap automatically on images without a fastmap.\00", section ".modinfo", align 1
@__param_str_fm_debug = internal constant [13 x i8] c"ubi.fm_debug\00", align 1
@__param_fm_debug = internal constant %struct.kernel_param { ptr @__param_str_fm_debug, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @fm_debug } }, section "__param", align 4
@__UNIQUE_ID_fm_debugtype255 = internal constant [27 x i8] c"ubi.parmtype=fm_debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_fm_debug256 = internal constant [115 x i8] c"ubi.parm=fm_debug:Set this parameter to enable fastmap debugging by default. Warning, this will make fastmap slow!\00", section ".modinfo", align 1
@__UNIQUE_ID_version257 = internal constant [14 x i8] c"ubi.version=1\00", section ".modinfo", align 1
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.2, ptr @.str.53 }, section "__modver", align 4
@__UNIQUE_ID_description258 = internal constant [44 x i8] c"ubi.description=UBI - Unsorted Block Images\00", section ".modinfo", align 1
@__UNIQUE_ID_author259 = internal constant [28 x i8] c"ubi.author=Artem Bityutskiy\00", section ".modinfo", align 1
@__UNIQUE_ID_file260 = internal constant [29 x i8] c"ubi.file=drivers/mtd/ubi/ubi\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [16 x i8] c"ubi.license=GPL\00", section ".modinfo", align 1
@ubi_class_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ubi_class_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ubi_class_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @class_attr_version, ptr null], [24 x i8] zeroinitializer }, align 32
@class_attr_version = internal global { %struct.class_attribute, [36 x i8] } { %struct.class_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubi_devices_lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ubi_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ubi_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ubi_dev_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dev_eraseblock_size, ptr @dev_avail_eraseblocks, ptr @dev_total_eraseblocks, ptr @dev_volumes_count, ptr @dev_max_ec, ptr @dev_reserved_for_bad, ptr @dev_bad_peb_count, ptr @dev_max_vol_count, ptr @dev_min_io_size, ptr @dev_bgt_enabled, ptr @dev_mtd_num, ptr @dev_ro_mode, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_eraseblock_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dev_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_avail_eraseblocks = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dev_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_total_eraseblocks = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dev_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_volumes_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dev_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_max_ec = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dev_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_reserved_for_bad = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dev_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_bad_peb_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dev_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_max_vol_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dev_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_min_io_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dev_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_bgt_enabled = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dev_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_mtd_num = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dev_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_ro_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dev_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"eraseblock_size\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"avail_eraseblocks\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"total_eraseblocks\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"volumes_count\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"max_ec\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reserved_for_bad\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad_peb_count\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max_vol_count\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"min_io_size\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bgt_enabled\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtd_num\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ro_mode\00", [24 x i8] zeroinitializer }, align 32
@io_init.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.68, ptr @.str.6, ptr @.str.69, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"io_init\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UBI DBG gen (pid %d): sizeof(struct ubi_ainf_peb) %zu\0A\00", [41 x i8] zeroinitializer }, align 32
@io_init.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.68, ptr @.str.6, ptr @.str.70, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UBI DBG gen (pid %d): sizeof(struct ubi_wl_entry) %zu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"multiple regions, not implemented\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"min. I/O unit (%d) is not power of 2\00", [59 x i8] zeroinitializer }, align 32
@io_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.68, ptr @.str.6, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@io_init._entry_ptr = internal global ptr @io_init._entry, section ".printk_index", align 4
@io_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.68, ptr @.str.6, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@io_init._entry_ptr.74 = internal global ptr @io_init._entry.73, section ".printk_index", align 4
@io_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.68, ptr @.str.6, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@io_init._entry_ptr.76 = internal global ptr @io_init._entry.75, section ".printk_index", align 4
@.str.77 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"bad write buffer size %d for %d min. I/O unit\00", [50 x i8] zeroinitializer }, align 32
@io_init.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.68, ptr @.str.6, ptr @.str.78, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBI DBG gen (pid %d): min_io_size      %d\0A\00", [53 x i8] zeroinitializer }, align 32
@io_init.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.68, ptr @.str.6, ptr @.str.79, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBI DBG gen (pid %d): max_write_size   %d\0A\00", [53 x i8] zeroinitializer }, align 32
@io_init.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.68, ptr @.str.6, ptr @.str.80, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBI DBG gen (pid %d): hdrs_min_io_size %d\0A\00", [53 x i8] zeroinitializer }, align 32
@io_init.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.68, ptr @.str.6, ptr @.str.81, i8 0, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBI DBG gen (pid %d): ec_hdr_alsize    %d\0A\00", [53 x i8] zeroinitializer }, align 32
@io_init.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.68, ptr @.str.6, ptr @.str.82, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBI DBG gen (pid %d): vid_hdr_alsize   %d\0A\00", [53 x i8] zeroinitializer }, align 32
@io_init.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.68, ptr @.str.6, ptr @.str.83, i8 0, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBI DBG gen (pid %d): vid_hdr_offset   %d\0A\00", [53 x i8] zeroinitializer }, align 32
@io_init.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.68, ptr @.str.6, ptr @.str.84, i8 0, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBI DBG gen (pid %d): vid_hdr_aloffset %d\0A\00", [53 x i8] zeroinitializer }, align 32
@io_init.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.68, ptr @.str.6, ptr @.str.85, i8 0, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBI DBG gen (pid %d): vid_hdr_shift    %d\0A\00", [53 x i8] zeroinitializer }, align 32
@io_init.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.68, ptr @.str.6, ptr @.str.86, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBI DBG gen (pid %d): leb_start        %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unaligned VID header shift %d\00", [34 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"bad VID header (%d) or data offsets (%d)\00", [55 x i8] zeroinitializer }, align 32
@io_init.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.68, ptr @.str.6, ptr @.str.89, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBI DBG gen (pid %d): max_erroneous    %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"EC and VID headers are in the same minimal I/O unit, switch to read-only mode\00", [50 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"MTD device %d is write-protected, attach in read-only mode\00", [37 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"skip auto-resize because of R/O mode\00", [59 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cannot clean auto-resize flag for volume %d\00", [52 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot auto-resize volume %d\00", [35 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"volume %d (\22%s\22) re-sized from %d to %d LEBs\00", [51 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubi%d\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cannot register UBI character devices\00", [58 x i8] zeroinitializer }, align 32
@uif_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.98, ptr @.str.6, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uif_init\00", [23 x i8] zeroinitializer }, align 32
@uif_init._entry_ptr = internal global ptr @uif_init._entry, section ".printk_index", align 4
@ubi_cdev_operations = external dso_local constant %struct.file_operations, align 4
@uif_init.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.98, ptr @.str.6, ptr @.str.99, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"UBI DBG gen (pid %d): %s major is %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot add volume %d\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot initialize UBI %s, error %d\00", [61 x i8] zeroinitializer }, align 32
@mtd_devs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ubi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.6, i32 1204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013UBI error: too many MTD devices, maximum is %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ubi_init\00", [23 x i8] zeroinitializer }, align 32
@ubi_init._entry_ptr = internal global ptr @ubi_init._entry, section ".printk_index", align 4
@ubi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ubi_init._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.6, i32 1215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013UBI error: cannot register device\0A\00", [59 x i8] zeroinitializer }, align 32
@ubi_init._entry_ptr.106 = internal global ptr @ubi_init._entry.104, section ".printk_index", align 4
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubi_wl_entry_slab\00", [46 x i8] zeroinitializer }, align 32
@mtd_dev_param = internal global { [32 x %struct.mtd_dev_param], [608 x i8] } zeroinitializer, align 32
@ubi_init._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.103, ptr @.str.6, i32 1243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013UBI error: cannot open mtd %s, error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@ubi_init._entry_ptr.110 = internal global ptr @ubi_init._entry.108, section ".printk_index", align 4
@ubi_init._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.103, ptr @.str.6, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013UBI error: cannot attach mtd%d\0A\00", [62 x i8] zeroinitializer }, align 32
@ubi_init._entry_ptr.113 = internal global ptr @ubi_init._entry.111, section ".printk_index", align 4
@ubi_init._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.103, ptr @.str.6, i32 1279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013UBI error: block: cannot initialize, error %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ubi_init._entry_ptr.116 = internal global ptr @ubi_init._entry.114, section ".printk_index", align 4
@ubi_init._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.103, ptr @.str.6, i32 1302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013UBI error: cannot initialize UBI, error %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ubi_init._entry_ptr.119 = internal global ptr @ubi_init._entry.117, section ".printk_index", align 4
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ubi_ctrl\00", [23 x i8] zeroinitializer }, align 32
@ubi_ctrl_cdev_operations = external dso_local constant %struct.file_operations, align 4
@ubi_mtd_param_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.6, i32 1385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013UBI error: too many parameters, max. is %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ubi_mtd_param_parse\00", [44 x i8] zeroinitializer }, align 32
@ubi_mtd_param_parse._entry_ptr = internal global ptr @ubi_mtd_param_parse._entry, section ".printk_index", align 4
@ubi_mtd_param_parse._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.6, i32 1392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013UBI error: parameter \22%s\22 is too long, max. is %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ubi_mtd_param_parse._entry_ptr.125 = internal global ptr @ubi_mtd_param_parse._entry.123, section ".printk_index", align 4
@ubi_mtd_param_parse._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.122, ptr @.str.6, i32 1397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014UBI warning: empty 'mtd=' parameter - ignored\0A\00", [47 x i8] zeroinitializer }, align 32
@ubi_mtd_param_parse._entry_ptr.128 = internal global ptr @ubi_mtd_param_parse._entry.126, section ".printk_index", align 4
@.str.129 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@ubi_mtd_param_parse._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.122, ptr @.str.6, i32 1411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013UBI error: too many arguments at \22%s\22\0A\00", [55 x i8] zeroinitializer }, align 32
@ubi_mtd_param_parse._entry_ptr.132 = internal global ptr @ubi_mtd_param_parse._entry.130, section ".printk_index", align 4
@ubi_mtd_param_parse._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.122, ptr @.str.6, i32 1432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013UBI error: bad value for max_beb_per1024 parameter: %s\00", [39 x i8] zeroinitializer }, align 32
@ubi_mtd_param_parse._entry_ptr.135 = internal global ptr @ubi_mtd_param_parse._entry.133, section ".printk_index", align 4
@ubi_mtd_param_parse._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.122, ptr @.str.6, i32 1443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013UBI error: bad value for ubi_num parameter: %s\00", [47 x i8] zeroinitializer }, align 32
@ubi_mtd_param_parse._entry_ptr.138 = internal global ptr @ubi_mtd_param_parse._entry.136, section ".printk_index", align 4
@bytes_str_to_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.6, i32 1340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013UBI error: incorrect bytes count: \22%s\22\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bytes_str_to_int\00", [47 x i8] zeroinitializer }, align 32
@bytes_str_to_int._entry_ptr = internal global ptr @bytes_str_to_int._entry, section ".printk_index", align 4
@bytes_str_to_int._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.6, i32 1357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bytes_str_to_int._entry_ptr.142 = internal global ptr @bytes_str_to_int._entry.141, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 8]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 64]
@__sancov_gen_cov_switch_values.144 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 71, i64 75, i64 77]
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"ubi_devices_mutex\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 89, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 111, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"ubi_class_groups\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [10 x i8] c"ubi_class\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 110, i32 14 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 170, i32 17 }
@___asan_gen_.166 = private unnamed_addr constant [12 x i8] c"ubi_devices\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 86, i32 27 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"ubi_devices_lock\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 261, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 298, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 845, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 860, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 874, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 885, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 895, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant [15 x i8] c"ubi_dev_groups\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [15 x i8] c"fm_autoconvert\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 71, i32 13 }
@___asan_gen_.229 = private unnamed_addr constant [9 x i8] c"fm_debug\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 72, i32 13 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 934, i32 16 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 939, i32 15 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 940, i32 15 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 945, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 946, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 947, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 948, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 949, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 950, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 952, i32 15 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 971, i32 16 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 993, i32 20 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 996, i32 16 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1001, i32 15 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1003, i32 15 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1005, i32 15 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1007, i32 15 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1009, i32 15 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1011, i32 15 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1014, i32 15 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1017, i32 15 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1081, i32 16 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1087, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1089, i32 15 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1116, i32 15 }
@___asan_gen_.328 = private unnamed_addr constant [18 x i8] c"ubi_wl_entry_slab\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 76, i32 20 }
@___asan_gen_.331 = private unnamed_addr constant [14 x i8] c"ubi_ctrl_cdev\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 79, i32 26 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1473, i32 1 }
@___asan_gen_.340 = private unnamed_addr constant [16 x i8] c"ubi_class_group\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 107, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant [16 x i8] c"ubi_class_attrs\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 103, i32 26 }
@___asan_gen_.346 = private unnamed_addr constant [19 x i8] c"class_attr_version\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 101, i32 8 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 99, i32 22 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 92, i32 8 }
@___asan_gen_.355 = private unnamed_addr constant [14 x i8] c"ubi_dev_group\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 404, i32 1 }
@___asan_gen_.358 = private unnamed_addr constant [14 x i8] c"ubi_dev_attrs\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 389, i32 26 }
@___asan_gen_.361 = private unnamed_addr constant [20 x i8] c"dev_eraseblock_size\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 120, i32 32 }
@___asan_gen_.364 = private unnamed_addr constant [22 x i8] c"dev_avail_eraseblocks\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 122, i32 32 }
@___asan_gen_.367 = private unnamed_addr constant [22 x i8] c"dev_total_eraseblocks\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 124, i32 32 }
@___asan_gen_.370 = private unnamed_addr constant [18 x i8] c"dev_volumes_count\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 126, i32 32 }
@___asan_gen_.373 = private unnamed_addr constant [11 x i8] c"dev_max_ec\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 128, i32 32 }
@___asan_gen_.376 = private unnamed_addr constant [21 x i8] c"dev_reserved_for_bad\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 130, i32 32 }
@___asan_gen_.379 = private unnamed_addr constant [18 x i8] c"dev_bad_peb_count\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 132, i32 32 }
@___asan_gen_.382 = private unnamed_addr constant [18 x i8] c"dev_max_vol_count\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 134, i32 32 }
@___asan_gen_.385 = private unnamed_addr constant [16 x i8] c"dev_min_io_size\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 136, i32 32 }
@___asan_gen_.388 = private unnamed_addr constant [16 x i8] c"dev_bgt_enabled\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 138, i32 32 }
@___asan_gen_.391 = private unnamed_addr constant [12 x i8] c"dev_mtd_num\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 140, i32 32 }
@___asan_gen_.394 = private unnamed_addr constant [12 x i8] c"dev_ro_mode\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 142, i32 32 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 121, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 123, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 125, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 127, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 129, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 131, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 133, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 135, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 137, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 139, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 141, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 143, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 598, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 599, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 611, i32 16 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 644, i32 16 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 649, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 650, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 651, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 661, i32 16 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 670, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 671, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 672, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 673, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 674, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 691, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 692, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 693, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 694, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 698, i32 16 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 708, i32 16 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 720, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 728, i32 17 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 735, i32 16 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 768, i32 17 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 789, i32 17 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 796, i32 17 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 803, i32 15 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 442, i32 25 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 454, i32 16 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 460, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 462, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 474, i32 18 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 486, i32 15 }
@___asan_gen_.535 = private unnamed_addr constant [9 x i8] c"mtd_devs\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 65, i32 12 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1203, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1209, i32 8 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1215, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1219, i32 40 }
@___asan_gen_.559 = private unnamed_addr constant [14 x i8] c"mtd_dev_param\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 68, i32 29 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1242, i32 4 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1255, i32 4 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1279, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1302, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 81, i32 10 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1384, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1391, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1397, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1408, i32 29 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1411, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1431, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1442, i32 4 }
@___asan_gen_.637 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1340, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.641 = private constant [27 x i8] c"../drivers/mtd/ubi/build.c\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1357, i32 3 }
@llvm.compiler.used = appending global [209 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_file260, ptr @__UNIQUE_ID_fm_autoconvert254, ptr @__UNIQUE_ID_fm_autoconverttype253, ptr @__UNIQUE_ID_fm_debug256, ptr @__UNIQUE_ID_fm_debugtype255, ptr @__UNIQUE_ID_license261, ptr @__UNIQUE_ID_mtd252, ptr @__UNIQUE_ID_version257, ptr @__exitcall_ubi_exit, ptr @__initcall__kmod_ubi__251_1305_ubi_init7, ptr @__modver_attr, ptr @__param_fm_autoconvert, ptr @__param_fm_debug, ptr @__param_mtd, ptr @bytes_str_to_int._entry, ptr @bytes_str_to_int._entry.141, ptr @bytes_str_to_int._entry_ptr, ptr @bytes_str_to_int._entry_ptr.142, ptr @io_init._entry, ptr @io_init._entry.73, ptr @io_init._entry.75, ptr @io_init._entry_ptr, ptr @io_init._entry_ptr.74, ptr @io_init._entry_ptr.76, ptr @ubi_attach_mtd_dev._entry, ptr @ubi_attach_mtd_dev._entry.10, ptr @ubi_attach_mtd_dev._entry.13, ptr @ubi_attach_mtd_dev._entry.16, ptr @ubi_attach_mtd_dev._entry.19, ptr @ubi_attach_mtd_dev._entry_ptr, ptr @ubi_attach_mtd_dev._entry_ptr.12, ptr @ubi_attach_mtd_dev._entry_ptr.15, ptr @ubi_attach_mtd_dev._entry_ptr.18, ptr @ubi_attach_mtd_dev._entry_ptr.21, ptr @ubi_detach_mtd_dev._entry, ptr @ubi_detach_mtd_dev._entry_ptr, ptr @ubi_exit, ptr @ubi_get_by_major._entry, ptr @ubi_get_by_major._entry_ptr, ptr @ubi_get_device._entry, ptr @ubi_get_device._entry_ptr, ptr @ubi_init._entry, ptr @ubi_init._entry.104, ptr @ubi_init._entry.108, ptr @ubi_init._entry.111, ptr @ubi_init._entry.114, ptr @ubi_init._entry.117, ptr @ubi_init._entry_ptr, ptr @ubi_init._entry_ptr.106, ptr @ubi_init._entry_ptr.110, ptr @ubi_init._entry_ptr.113, ptr @ubi_init._entry_ptr.116, ptr @ubi_init._entry_ptr.119, ptr @ubi_mtd_param_parse._entry, ptr @ubi_mtd_param_parse._entry.123, ptr @ubi_mtd_param_parse._entry.126, ptr @ubi_mtd_param_parse._entry.130, ptr @ubi_mtd_param_parse._entry.133, ptr @ubi_mtd_param_parse._entry.136, ptr @ubi_mtd_param_parse._entry_ptr, ptr @ubi_mtd_param_parse._entry_ptr.125, ptr @ubi_mtd_param_parse._entry_ptr.128, ptr @ubi_mtd_param_parse._entry_ptr.132, ptr @ubi_mtd_param_parse._entry_ptr.135, ptr @ubi_mtd_param_parse._entry_ptr.138, ptr @uif_init._entry, ptr @uif_init._entry_ptr, ptr @.str, ptr @ubi_devices_mutex, ptr @.str.1, ptr @.str.2, ptr @ubi_class_groups, ptr @ubi_class, ptr @.str.3, ptr @ubi_devices, ptr @ubi_devices_lock, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @ubi_dev_groups, ptr @fm_autoconvert, ptr @fm_debug, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @ubi_attach_mtd_dev.__key, ptr @.str.25, ptr @ubi_attach_mtd_dev.__key.26, ptr @.str.27, ptr @ubi_attach_mtd_dev.__key.28, ptr @.str.29, ptr @ubi_attach_mtd_dev.__key.30, ptr @.str.31, ptr @ubi_attach_mtd_dev.__key.32, ptr @.str.33, ptr @ubi_attach_mtd_dev.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @ubi_wl_entry_slab, ptr @ubi_ctrl_cdev, ptr @.str.52, ptr @.str.53, ptr @ubi_class_group, ptr @ubi_class_attrs, ptr @class_attr_version, ptr @.str.54, ptr @.str.55, ptr @ubi_dev_group, ptr @ubi_dev_attrs, ptr @dev_eraseblock_size, ptr @dev_avail_eraseblocks, ptr @dev_total_eraseblocks, ptr @dev_volumes_count, ptr @dev_max_ec, ptr @dev_reserved_for_bad, ptr @dev_bad_peb_count, ptr @dev_max_vol_count, ptr @dev_min_io_size, ptr @dev_bgt_enabled, ptr @dev_mtd_num, ptr @dev_ro_mode, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @mtd_devs, ptr @.str.102, ptr @.str.103, ptr @ubi_init.__key, ptr @.str.105, ptr @.str.107, ptr @mtd_dev_param, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.139, ptr @.str.140], section "llvm.metadata"
@0 = internal global [166 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_devices_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_class_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_devices to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_devices_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_get_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_get_by_major._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_attach_mtd_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_attach_mtd_dev._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_attach_mtd_dev._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_attach_mtd_dev._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_attach_mtd_dev._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_autoconvert to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_attach_mtd_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_attach_mtd_dev.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_attach_mtd_dev.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_attach_mtd_dev.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_attach_mtd_dev.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_attach_mtd_dev.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_detach_mtd_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_wl_entry_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_ctrl_cdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_class_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_class_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_attr_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_dev_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_eraseblock_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_avail_eraseblocks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_total_eraseblocks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_volumes_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_max_ec to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_reserved_for_bad to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_bad_peb_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_max_vol_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_min_io_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_bgt_enabled to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_mtd_num to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_ro_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uif_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_devs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_init._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_dev_param to i32), i32 2432, i32 3040, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_init._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_init._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_init._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_init._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_mtd_param_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_mtd_param_parse._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_mtd_param_parse._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_mtd_param_parse._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_mtd_param_parse._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_mtd_param_parse._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bytes_str_to_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bytes_str_to_int._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_volume_notify(ptr noundef %ubi, ptr noundef %vol, i32 noundef %ntype) local_unnamed_addr #0 align 64 {
entry:
  %nt = alloca %struct.ubi_notification, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %nt) #13
  %0 = call ptr @memset(ptr %nt, i32 255, i32 96)
  call void @ubi_do_get_device_info(ptr noundef %ubi, ptr noundef nonnull %nt) #13
  %vi = getelementptr inbounds %struct.ubi_notification, ptr %nt, i32 0, i32 1
  call void @ubi_do_get_volume_info(ptr noundef %ubi, ptr noundef %vol, ptr noundef %vi) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %ntype)
  %switch = icmp ult i32 %ntype, 4
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call = call i32 @ubi_update_fastmap(ptr noundef %ubi) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.3, i32 noundef %call) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %call1 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @ubi_notifiers, i32 noundef %ntype, ptr noundef nonnull %nt) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %nt) #13
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_do_get_device_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_do_get_volume_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_update_fastmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_notify_all(ptr noundef %ubi, i32 noundef %ntype, ptr noundef %nb) local_unnamed_addr #0 align 64 {
entry:
  %nt = alloca %struct.ubi_notification, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %nt) #13
  %0 = call ptr @memset(ptr %nt, i32 255, i32 96)
  call void @ubi_do_get_device_info(ptr noundef %ubi, ptr noundef nonnull %nt) #13
  %device_mutex = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %device_mutex, i32 noundef 0) #13
  %vtbl_slots = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  %1 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vtbl_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp21 = icmp sgt i32 %2, 0
  br i1 %cmp21, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vi = getelementptr inbounds %struct.ubi_notification, ptr %nt, i32 0, i32 1
  %tobool3.not = icmp eq ptr %nb, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %count.023 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1, %for.inc.for.body_crit_edge ]
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %i.022
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @ubi_do_get_volume_info(ptr noundef %ubi, ptr noundef nonnull %4, ptr noundef %vi) #13
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nb, align 4
  %call = call i32 %6(ptr noundef nonnull %nb, i32 noundef %ntype, ptr noundef nonnull %nt) #13
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @ubi_notifiers, i32 noundef %ntype, ptr noundef nonnull %nt) #13
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %add = add i32 %count.023, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %for.body.for.inc_crit_edge
  %count.1 = phi i32 [ %add, %if.end6 ], [ %count.023, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.022, 1
  %7 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vtbl_slots, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %count.1, %for.inc.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %device_mutex) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %nt) #13
  ret i32 %count.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_enumerate_volumes(ptr noundef %nb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %count.08 = phi i32 [ 0, %entry ], [ %count.1, %cleanup.for.body_crit_edge ]
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @ubi_notify_all(ptr noundef nonnull %1, i32 noundef 0, ptr noundef %nb)
  %add = add i32 %call, %count.08
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %count.1 = phi i32 [ %add, %if.end ], [ %count.08, %for.body.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  ret i32 %count.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubi_get_device(i32 noundef %ubi_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubi_devices_lock) #13
  %arrayidx = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %ubi_num
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %do.body

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

do.body:                                          ; preds = %entry
  %ref_count = getelementptr inbounds %struct.ubi_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %do.end, label %do.body.do.end8_crit_edge, !prof !371

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %4 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 261, i32 noundef %9) #16
  tail call void @dump_stack() #16
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %10 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ref_count, align 4
  %add = add i32 %11, 1
  store i32 %add, ptr %ref_count, align 4
  %dev = getelementptr inbounds %struct.ubi_device, ptr %1, i32 0, i32 1
  %call10 = tail call ptr @get_device(ptr noundef %dev) #13
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %entry.if.end11_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubi_devices_lock) #13
  ret ptr %1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_put_device(ptr noundef %ubi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubi_devices_lock) #13
  %ref_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 7
  %0 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_count, align 4
  %sub = add i32 %1, -1
  store i32 %sub, ptr %ref_count, align 4
  %dev = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 1
  tail call void @put_device(ptr noundef %dev) #13
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubi_devices_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubi_get_by_major(i32 noundef %major) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubi_devices_lock) #13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %i.023
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %dev = getelementptr inbounds %struct.cdev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %major)
  %cmp1 = icmp eq i32 %shr, %major
  br i1 %cmp1, label %do.body, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body:                                          ; preds = %land.lhs.true
  %ref_count = getelementptr inbounds %struct.ubi_device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %do.end, label %do.body.do.end10_crit_edge, !prof !371

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %6 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i32 noundef 298, i32 noundef %11) #16
  tail call void @dump_stack() #16
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %12 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ref_count, align 4
  %add = add i32 %13, 1
  store i32 %add, ptr %ref_count, align 4
  %dev12 = getelementptr inbounds %struct.ubi_device, ptr %1, i32 0, i32 1
  %call13 = tail call ptr @get_device(ptr noundef %dev12) #13
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end10
  %retval.0 = phi ptr [ %1, %do.end10 ], [ null, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubi_devices_lock) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_major2num(i32 noundef %major) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubi_devices_lock) #13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %i.013
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %dev = getelementptr inbounds %struct.cdev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %major)
  %cmp1 = icmp eq i32 %shr, %major
  br i1 %cmp1, label %cleanup, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

cleanup:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %ubi_num2 = getelementptr inbounds %struct.ubi_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ubi_num2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ubi_num2, align 8
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup
  %ubi_num.2 = phi i32 [ %5, %cleanup ], [ -19, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubi_devices_lock) #13
  ret i32 %ubi_num.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_free_all_volumes(ptr nocapture noundef %ubi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vtbl_slots.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  %0 = ptrtoint ptr %vtbl_slots.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vtbl_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %1)
  %cmp21.i = icmp ult i32 %1, 2147483647
  br i1 %cmp21.i, label %entry.for.body.i_crit_edge, label %entry.ubi_free_volumes_from.exit_crit_edge

entry.ubi_free_volumes_from.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ubi_free_volumes_from.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %i.022.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubi_eba_replace_table(ptr noundef nonnull %3, ptr noundef null) #13
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void @ubi_fastmap_destroy_checkmap(ptr noundef %5) #13
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %7) #13
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %9 = ptrtoint ptr %vtbl_slots.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vtbl_slots.i, align 4
  %add.i = add i32 %10, 1
  %cmp.i = icmp slt i32 %inc.i, %add.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ubi_free_volumes_from.exit_crit_edge

for.inc.i.ubi_free_volumes_from.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ubi_free_volumes_from.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

ubi_free_volumes_from.exit:                       ; preds = %for.inc.i.ubi_free_volumes_from.exit_crit_edge, %entry.ubi_free_volumes_from.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_free_internal_volumes(ptr nocapture noundef %ubi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vtbl_slots = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  %0 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vtbl_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %1)
  %cmp21.i.not = icmp eq i32 %1, 2147483647
  br i1 %cmp21.i.not, label %entry.ubi_free_volumes_from.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ubi_free_volumes_from.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ubi_free_volumes_from.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %i.022.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubi_eba_replace_table(ptr noundef nonnull %3, ptr noundef null) #13
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void @ubi_fastmap_destroy_checkmap(ptr noundef %5) #13
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %7) #13
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nsw i32 %i.022.i, 1
  %9 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vtbl_slots, align 4
  %add.i = add i32 %10, 1
  %cmp.i = icmp slt i32 %inc.i, %add.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ubi_free_volumes_from.exit_crit_edge

for.inc.i.ubi_free_volumes_from.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ubi_free_volumes_from.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

ubi_free_volumes_from.exit:                       ; preds = %for.inc.i.ubi_free_volumes_from.exit_crit_edge, %entry.ubi_free_volumes_from.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_attach_mtd_dev(ptr noundef %mtd, i32 noundef %ubi_num, i32 noundef %vid_hdr_offset, i32 noundef %max_beb_per1024) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %max_beb_per1024)
  %0 = icmp ugt i32 %max_beb_per1024, 768
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_beb_per1024)
  %tobool.not = icmp eq i32 %max_beb_per1024, 0
  %spec.store.select = select i1 %tobool.not, i32 20, i32 %max_beb_per1024
  %index = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0494 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %i.0494
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %2, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %mtd6 = getelementptr inbounds %struct.ubi_device, ptr %2, i32 0, i32 79
  %5 = ptrtoint ptr %mtd6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mtd6, align 4
  %index7 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %index7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp8 = icmp eq i32 %4, %8
  br i1 %cmp8, label %do.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %4, i32 noundef %i.0494) #16
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0494, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  %9 = ptrtoint ptr %mtd to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mtd, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %for.end.if.end35_crit_edge [
    i8 7, label %do.end17
    i8 8, label %land.lhs.true26
  ]

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end17:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %13) #16
  br label %cleanup

land.lhs.true26:                                  ; preds = %for.end
  %flags = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %do.end31, label %land.lhs.true26.if.end35_crit_edge

land.lhs.true26.if.end35_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end31:                                         ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %17) #16
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true26.if.end35_crit_edge, %for.end.if.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ubi_num)
  %cmp36 = icmp eq i32 %ubi_num, -1
  br i1 %cmp36, label %if.end35.for.body42_crit_edge, label %if.else

if.end35.for.body42_crit_edge:                    ; preds = %if.end35
  br label %for.body42

for.body42:                                       ; preds = %for.inc47.for.body42_crit_edge, %if.end35.for.body42_crit_edge
  %ubi_num.addr.0496 = phi i32 [ %inc48, %for.inc47.for.body42_crit_edge ], [ 0, %if.end35.for.body42_crit_edge ]
  %arrayidx43 = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %ubi_num.addr.0496
  %18 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx43, align 4
  %tobool44.not = icmp eq ptr %19, null
  br i1 %tobool44.not, label %for.body42.if.end72_crit_edge, label %for.inc47

for.body42.if.end72_crit_edge:                    ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

for.inc47:                                        ; preds = %for.body42
  %inc48 = add nuw nsw i32 %ubi_num.addr.0496, 1
  %exitcond499.not = icmp eq i32 %inc48, 32
  br i1 %exitcond499.not, label %do.end55, label %for.inc47.for.body42_crit_edge

for.inc47.for.body42_crit_edge:                   ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body42

do.end55:                                         ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #15
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef 32) #16
  br label %cleanup

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %ubi_num)
  %cmp59 = icmp sgt i32 %ubi_num, 31
  br i1 %cmp59, label %if.else.cleanup_crit_edge, label %if.end62

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end62:                                         ; preds = %if.else
  %arrayidx63 = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %ubi_num
  %20 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx63, align 4
  %tobool64.not = icmp eq ptr %21, null
  br i1 %tobool64.not, label %if.end62.if.end72_crit_edge, label %do.end68

if.end62.if.end72_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %ubi_num) #16
  br label %cleanup

if.end72:                                         ; preds = %if.end62.if.end72_crit_edge, %for.body42.if.end72_crit_edge
  %ubi_num.addr.1 = phi i32 [ %ubi_num, %if.end62.if.end72_crit_edge ], [ %ubi_num.addr.0496, %for.body42.if.end72_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 5048) #17
  %tobool74.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool74.not, label %if.end72.cleanup_crit_edge, label %if.end76

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end76:                                         ; preds = %if.end72
  %dev = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 1
  tail call void @device_initialize(ptr noundef %dev) #13
  %release = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 1, i32 35
  %23 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dev_release, ptr %release, align 4
  %class = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 1, i32 33
  %24 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ubi_class, ptr %class, align 4
  %groups = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 1, i32 34
  %25 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ubi_dev_groups, ptr %groups, align 8
  %mtd80 = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 79
  %26 = ptrtoint ptr %mtd80 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %mtd, ptr %mtd80, align 4
  %ubi_num81 = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %ubi_num81 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %ubi_num.addr.1, ptr %ubi_num81, align 8
  %vid_hdr_offset82 = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 74
  %28 = ptrtoint ptr %vid_hdr_offset82 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %vid_hdr_offset, ptr %vid_hdr_offset82, align 8
  %autoresize_vol_id = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 14
  %29 = ptrtoint ptr %autoresize_vol_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %autoresize_vol_id, align 8
  %size = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 27, i32 2
  %30 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %size, align 8
  %used = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 27, i32 1
  %31 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %used, align 4
  %size84 = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 28, i32 2
  %32 = ptrtoint ptr %size84 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %size84, align 4
  %used86 = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 28, i32 1
  %33 = ptrtoint ptr %used86 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %used86, align 8
  %size88 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %34 = ptrtoint ptr %size88 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %size88, align 8
  %erasesize_shift.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 8
  %36 = ptrtoint ptr %erasesize_shift.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %erasesize_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  %sh_prom.i = zext i32 %37 to i64
  %shr.i = lshr i64 %35, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  br label %mtd_div_by_eb.exit

if.end.i:                                         ; preds = %if.end76
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %38 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %erasesize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %35)
  %cmp172.i = icmp ult i64 %35, 4294967296
  br i1 %cmp172.i, label %if.then176.i, label %if.else182.i, !prof !372

if.then176.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv177.i = trunc i64 %35 to i32
  %div180.i = udiv i32 %conv177.i, %39
  br label %mtd_div_by_eb.exit

if.else182.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %40 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %39, i64 %35) #18, !srcloc !373
  %asmresult1.i.i = extractvalue { i64, i64 } %40, 1
  %extract.t296.i = trunc i64 %asmresult1.i.i to i32
  br label %mtd_div_by_eb.exit

mtd_div_by_eb.exit:                               ; preds = %if.else182.i, %if.then176.i, %if.then.i
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ %div180.i, %if.then176.i ], [ %extract.t296.i, %if.else182.i ]
  %div = sdiv i32 %retval.0.i, 100
  %mul = mul nsw i32 %div, 5
  %41 = tail call i32 @llvm.smin.i32(i32 %mul, i32 256)
  %max_size = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 27, i32 3
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 8)
  %43 = ptrtoint ptr %max_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %max_size, align 4
  %div108489490491 = lshr i32 %42, 1
  %max_size110 = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 28, i32 3
  %44 = ptrtoint ptr %max_size110 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div108489490491, ptr %max_size110, align 8
  %45 = load i8, ptr @fm_autoconvert, align 1, !range !374
  %46 = xor i8 %45, 1
  %47 = zext i8 %46 to i32
  %fm_disabled = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 25
  %48 = ptrtoint ptr %fm_disabled to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %fm_disabled, align 4
  %49 = load i8, ptr @fm_debug, align 1, !range !374
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool112.not = icmp eq i8 %49, 0
  br i1 %tobool112.not, label %mtd_div_by_eb.exit.if.end114_crit_edge, label %if.then113

mtd_div_by_eb.exit.if.end114_crit_edge:           ; preds = %mtd_div_by_eb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

if.then113:                                       ; preds = %mtd_div_by_eb.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dbg.i = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 83
  %50 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i = load i8, ptr %dbg.i, align 4
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %dbg.i, align 4
  %51 = ptrtoint ptr %fm_disabled to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr = load i32, ptr %fm_disabled, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %mtd_div_by_eb.exit.if.end114_crit_edge
  %52 = phi i32 [ %.pr, %if.then113 ], [ %47, %mtd_div_by_eb.exit.if.end114_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool116.not = icmp eq i32 %52, 0
  br i1 %tobool116.not, label %land.lhs.true117, label %if.end114.if.end126_crit_edge

if.end114.if.end126_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126

land.lhs.true117:                                 ; preds = %if.end114
  %53 = ptrtoint ptr %mtd80 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mtd80, align 4
  %size119 = getelementptr inbounds %struct.mtd_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %size119 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %size119, align 8
  %erasesize_shift.i361 = getelementptr inbounds %struct.mtd_info, ptr %54, i32 0, i32 8
  %57 = ptrtoint ptr %erasesize_shift.i361 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %erasesize_shift.i361, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i362 = icmp eq i32 %58, 0
  br i1 %tobool.not.i362, label %if.end.i371, label %if.then.i366

if.then.i366:                                     ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #15
  %sh_prom.i363 = zext i32 %58 to i64
  %shr.i364 = lshr i64 %56, %sh_prom.i363
  %conv.i365 = trunc i64 %shr.i364 to i32
  br label %mtd_div_by_eb.exit486

if.end.i371:                                      ; preds = %land.lhs.true117
  %erasesize.i367 = getelementptr inbounds %struct.mtd_info, ptr %54, i32 0, i32 3
  %59 = ptrtoint ptr %erasesize.i367 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %erasesize.i367, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %56)
  %cmp172.i477 = icmp ult i64 %56, 4294967296
  br i1 %cmp172.i477, label %if.then176.i481, label %if.else182.i484, !prof !372

if.then176.i481:                                  ; preds = %if.end.i371
  call void @__sanitizer_cov_trace_pc() #15
  %conv177.i479 = trunc i64 %56 to i32
  %div180.i480 = udiv i32 %conv177.i479, %60
  br label %mtd_div_by_eb.exit486

if.else182.i484:                                  ; preds = %if.end.i371
  call void @__sanitizer_cov_trace_pc() #15
  %61 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %60, i64 %56) #18, !srcloc !373
  %asmresult1.i.i482 = extractvalue { i64, i64 } %61, 1
  %extract.t296.i483 = trunc i64 %asmresult1.i.i482 to i32
  br label %mtd_div_by_eb.exit486

mtd_div_by_eb.exit486:                            ; preds = %if.else182.i484, %if.then176.i481, %if.then.i366
  %retval.0.i485 = phi i32 [ %conv.i365, %if.then.i366 ], [ %div180.i480, %if.then176.i481 ], [ %extract.t296.i483, %if.else182.i484 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %retval.0.i485)
  %cmp122 = icmp slt i32 %retval.0.i485, 65
  br i1 %cmp122, label %if.then124, label %mtd_div_by_eb.exit486.if.end126_crit_edge

mtd_div_by_eb.exit486.if.end126_crit_edge:        ; preds = %mtd_div_by_eb.exit486
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126

if.then124:                                       ; preds = %mtd_div_by_eb.exit486
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.22, i32 noundef 64) #13
  %62 = ptrtoint ptr %fm_disabled to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %fm_disabled, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %mtd_div_by_eb.exit486.if.end126_crit_edge, %if.end114.if.end126_crit_edge
  %63 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_size, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.23, i32 noundef %64) #13
  %65 = ptrtoint ptr %max_size110 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_size110, align 8
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.24, i32 noundef %66) #13
  %buf_mutex = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 81
  tail call void @__mutex_init(ptr noundef %buf_mutex, ptr noundef nonnull @.str.25, ptr noundef nonnull @ubi_attach_mtd_dev.__key) #13
  %ckvol_mutex = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 82
  tail call void @__mutex_init(ptr noundef %ckvol_mutex, ptr noundef nonnull @.str.27, ptr noundef nonnull @ubi_attach_mtd_dev.__key.26) #13
  %device_mutex = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %device_mutex, ptr noundef nonnull @.str.29, ptr noundef nonnull @ubi_attach_mtd_dev.__key.28) #13
  %volumes_lock = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %volumes_lock, ptr noundef nonnull @.str.31, ptr noundef nonnull @ubi_attach_mtd_dev.__key.30, i16 noundef signext 3) #13
  %fm_protect = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 30
  tail call void @__init_rwsem(ptr noundef %fm_protect, ptr noundef nonnull @.str.33, ptr noundef nonnull @ubi_attach_mtd_dev.__key.32) #13
  %fm_eba_sem = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 29
  tail call void @__init_rwsem(ptr noundef %fm_eba_sem, ptr noundef nonnull @.str.35, ptr noundef nonnull @ubi_attach_mtd_dev.__key.34) #13
  %67 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.36, i32 noundef %68) #13
  %call151 = tail call fastcc i32 @io_init(ptr noundef nonnull %call7.i.i, i32 noundef %spec.store.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end154, label %if.end126.out_free_crit_edge

if.end126.out_free_crit_edge:                     ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end154:                                        ; preds = %if.end126
  %peb_size = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 61
  %69 = ptrtoint ptr %peb_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %peb_size, align 4
  %call155 = tail call noalias ptr @vmalloc(i32 noundef %70) #19
  %peb_buf = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 80
  %71 = ptrtoint ptr %peb_buf to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call155, ptr %peb_buf, align 8
  %tobool157.not = icmp eq ptr %call155, null
  br i1 %tobool157.not, label %if.end154.out_free_crit_edge, label %if.end159

if.end154.out_free_crit_edge:                     ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end159:                                        ; preds = %if.end154
  %call160 = tail call i32 @ubi_calc_fm_size(ptr noundef nonnull %call7.i.i) #13
  %fm_size = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 32
  %72 = ptrtoint ptr %fm_size to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call160, ptr %fm_size, align 8
  %call162 = tail call noalias ptr @vzalloc(i32 noundef %call160) #19
  %fm_buf = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 31
  %73 = ptrtoint ptr %fm_buf to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call162, ptr %fm_buf, align 4
  %tobool164.not = icmp eq ptr %call162, null
  br i1 %tobool164.not, label %if.end159.out_free_crit_edge, label %if.end166

if.end159.out_free_crit_edge:                     ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end166:                                        ; preds = %if.end159
  %call167 = tail call i32 @ubi_attach(ptr noundef nonnull %call7.i.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.end171, label %if.then169

if.then169:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.37, i32 noundef %75, i32 noundef %call167) #13
  br label %out_free

if.end171:                                        ; preds = %if.end166
  %76 = ptrtoint ptr %autoresize_vol_id to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %autoresize_vol_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %cmp173.not = icmp eq i32 %77, -1
  br i1 %cmp173.not, label %if.end171.if.end181_crit_edge, label %if.then175

if.end171.if.end181_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end181

if.then175:                                       ; preds = %if.end171
  %call177 = tail call fastcc i32 @autoresize(ptr noundef nonnull %call7.i.i, i32 noundef %77)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.then175.if.end181_crit_edge, label %if.then175.out_detach_crit_edge

if.then175.out_detach_crit_edge:                  ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_detach

if.then175.if.end181_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end181

if.end181:                                        ; preds = %if.then175.if.end181_crit_edge, %if.end171.if.end181_crit_edge
  %arrayidx182 = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %ubi_num.addr.1
  %78 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i, ptr %arrayidx182, align 4
  %call183 = tail call fastcc i32 @uif_init(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end186, label %if.end181.out_detach_crit_edge

if.end181.out_detach_crit_edge:                   ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_detach

if.end186:                                        ; preds = %if.end181
  %call187 = tail call i32 @ubi_debugfs_init_dev(ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end190, label %if.end186.out_uif_crit_edge

if.end186.out_uif_crit_edge:                      ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_uif

if.end190:                                        ; preds = %if.end186
  %bgt_name = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 58
  %call191 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @ubi_thread, ptr noundef nonnull %call7.i.i, i32 noundef -1, ptr noundef nonnull @.str.38, ptr noundef %bgt_name) #13
  %bgt_thread = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 56
  %79 = ptrtoint ptr %bgt_thread to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call191, ptr %bgt_thread, align 4
  %cmp.i487 = icmp ugt ptr %call191, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i487, label %if.then194, label %if.end199

if.then194:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #15
  %80 = ptrtoint ptr %call191 to i32
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.39, ptr noundef %bgt_name, i32 noundef %80) #13
  tail call void @ubi_debugfs_exit_dev(ptr noundef nonnull %call7.i.i) #13
  br label %out_uif

if.end199:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #15
  %81 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %index, align 4
  %name = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %83 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name, align 8
  %flash_size = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 59
  %85 = ptrtoint ptr %flash_size to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %flash_size, align 8
  %shr = ashr i64 %86, 20
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.40, i32 noundef %82, ptr noundef %84, i64 noundef %shr) #13
  %87 = ptrtoint ptr %peb_size to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %peb_size, align 4
  %shr203 = ashr i32 %88, 10
  %leb_size = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 70
  %89 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %leb_size, align 8
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.41, i32 noundef %88, i32 noundef %shr203, i32 noundef %90) #13
  %min_io_size = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 67
  %91 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %min_io_size, align 4
  %max_write_size = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 78
  %93 = ptrtoint ptr %max_write_size to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_write_size, align 8
  %hdrs_min_io_size = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 68
  %95 = ptrtoint ptr %hdrs_min_io_size to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %hdrs_min_io_size, align 8
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.42, i32 noundef %92, i32 noundef %94, i32 noundef %96) #13
  %97 = ptrtoint ptr %vid_hdr_offset82 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %vid_hdr_offset82, align 8
  %vid_hdr_aloffset = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 75
  %99 = ptrtoint ptr %vid_hdr_aloffset to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %vid_hdr_aloffset, align 4
  %leb_start = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 71
  %101 = ptrtoint ptr %leb_start to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %leb_start, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.43, i32 noundef %98, i32 noundef %100, i32 noundef %102) #13
  %good_peb_count = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 63
  %103 = ptrtoint ptr %good_peb_count to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %good_peb_count, align 4
  %bad_peb_count = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 62
  %105 = ptrtoint ptr %bad_peb_count to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bad_peb_count, align 8
  %corr_peb_count = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 64
  %107 = ptrtoint ptr %corr_peb_count to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %corr_peb_count, align 8
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.44, i32 noundef %104, i32 noundef %106, i32 noundef %108) #13
  %vol_count = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 4
  %109 = ptrtoint ptr %vol_count to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %vol_count, align 8
  %sub = add i32 %110, -1
  %vtbl_slots = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 15
  %111 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %vtbl_slots, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.45, i32 noundef %sub, i32 noundef 1, i32 noundef %112) #13
  %max_ec = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 19
  %113 = ptrtoint ptr %max_ec to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %max_ec, align 4
  %mean_ec = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 20
  %115 = ptrtoint ptr %mean_ec to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %mean_ec, align 8
  %image_seq = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 8
  %117 = ptrtoint ptr %image_seq to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %image_seq, align 8
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.46, i32 noundef %114, i32 noundef %116, i32 noundef 4096, i32 noundef %118) #13
  %avail_pebs = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 10
  %119 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %avail_pebs, align 8
  %rsvd_pebs = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 9
  %121 = ptrtoint ptr %rsvd_pebs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rsvd_pebs, align 4
  %beb_rsvd_pebs = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 11
  %123 = ptrtoint ptr %beb_rsvd_pebs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %beb_rsvd_pebs, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.47, i32 noundef %120, i32 noundef %122, i32 noundef %124) #13
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #13
  %thread_enabled = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 57
  %125 = ptrtoint ptr %thread_enabled to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %thread_enabled, align 8
  %126 = ptrtoint ptr %bgt_thread to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bgt_thread, align 4
  %call206 = tail call i32 @wake_up_process(ptr noundef %127) #13
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #13
  %call208 = tail call i32 @ubi_notify_all(ptr noundef nonnull %call7.i.i, i32 noundef 0, ptr noundef null)
  br label %cleanup

out_uif:                                          ; preds = %if.then194, %if.end186.out_uif_crit_edge
  %err.0 = phi i32 [ %call187, %if.end186.out_uif_crit_edge ], [ %80, %if.then194 ]
  tail call fastcc void @uif_close(ptr noundef nonnull %call7.i.i)
  br label %out_detach

out_detach:                                       ; preds = %out_uif, %if.end181.out_detach_crit_edge, %if.then175.out_detach_crit_edge
  %err.1 = phi i32 [ %call177, %if.then175.out_detach_crit_edge ], [ %call183, %if.end181.out_detach_crit_edge ], [ %err.0, %out_uif ]
  %arrayidx209 = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %ubi_num.addr.1
  %128 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %arrayidx209, align 4
  tail call void @ubi_wl_close(ptr noundef nonnull %call7.i.i) #13
  tail call void @ubi_free_all_volumes(ptr noundef nonnull %call7.i.i)
  %vtbl = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 17
  %129 = ptrtoint ptr %vtbl to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %vtbl, align 4
  tail call void @vfree(ptr noundef %130) #13
  br label %out_free

out_free:                                         ; preds = %out_detach, %if.then169, %if.end159.out_free_crit_edge, %if.end154.out_free_crit_edge, %if.end126.out_free_crit_edge
  %err.2 = phi i32 [ %call151, %if.end126.out_free_crit_edge ], [ %call167, %if.then169 ], [ %err.1, %out_detach ], [ -12, %if.end159.out_free_crit_edge ], [ -12, %if.end154.out_free_crit_edge ]
  %peb_buf210 = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 80
  %131 = ptrtoint ptr %peb_buf210 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %peb_buf210, align 8
  tail call void @vfree(ptr noundef %132) #13
  %fm_buf211 = getelementptr inbounds %struct.ubi_device, ptr %call7.i.i, i32 0, i32 31
  %133 = ptrtoint ptr %fm_buf211 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %fm_buf211, align 4
  tail call void @vfree(ptr noundef %134) #13
  tail call void @put_device(ptr noundef %dev) #13
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end199, %if.end72.cleanup_crit_edge, %do.end68, %if.else.cleanup_crit_edge, %do.end55, %do.end31, %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %do.end ], [ -22, %do.end17 ], [ -23, %do.end55 ], [ %err.2, %out_free ], [ %ubi_num.addr.1, %if.end199 ], [ -17, %do.end68 ], [ -22, %do.end31 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -12, %if.end72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -160
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @io_init(ptr noundef %ubi, i32 noundef %max_beb_per1024) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @io_init.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@io_init, %if.then)) #13
          to label %do.body4 [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @io_init.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.69, i32 noundef %5, i32 noundef 48) #13
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @io_init.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@io_init, %if.then16)) #13
          to label %do.end21 [label %if.then16], !srcloc !375

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #15
  %6 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i557 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i557 to ptr
  %task18 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task18, align 8
  %pid19 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid19, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @io_init.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.70, i32 noundef %11, i32 noundef 20) #13
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %do.body4
  %mtd = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 79
  %12 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mtd, align 4
  %numeraseregions = getelementptr inbounds %struct.mtd_info, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %numeraseregions, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.71) #13
  br label %return

if.end23:                                         ; preds = %do.end21
  %vid_hdr_offset = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 74
  %16 = ptrtoint ptr %vid_hdr_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vid_hdr_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp24 = icmp slt i32 %17, 0
  br i1 %cmp24, label %if.end23.return_crit_edge, label %if.end26

if.end23.return_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end26:                                         ; preds = %if.end23
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %erasesize, align 8
  %peb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 61
  %20 = ptrtoint ptr %peb_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %peb_size, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %13, i32 0, i32 2
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %size, align 8
  %erasesize_shift.i = getelementptr inbounds %struct.mtd_info, ptr %13, i32 0, i32 8
  %23 = ptrtoint ptr %erasesize_shift.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %erasesize_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %sh_prom.i = zext i32 %24 to i64
  %shr.i = lshr i64 %22, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  br label %mtd_div_by_eb.exit

if.end.i:                                         ; preds = %if.end26
  %25 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %22)
  %cmp172.i = icmp ult i64 %22, 4294967296
  br i1 %cmp172.i, label %if.then176.i, label %if.else182.i, !prof !372

if.then176.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv177.i = trunc i64 %22 to i32
  %div180.i = udiv i32 %conv177.i, %26
  br label %mtd_div_by_eb.exit

if.else182.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %26, i64 %22) #18, !srcloc !373
  %asmresult1.i.i = extractvalue { i64, i64 } %27, 1
  %extract.t296.i = trunc i64 %asmresult1.i.i to i32
  br label %mtd_div_by_eb.exit

mtd_div_by_eb.exit:                               ; preds = %if.else182.i, %if.then176.i, %if.then.i
  %retval.0.i558 = phi i32 [ %conv.i, %if.then.i ], [ %div180.i, %if.then176.i ], [ %extract.t296.i, %if.else182.i ]
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %28 = ptrtoint ptr %peb_count to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i558, ptr %peb_count, align 8
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %size, align 8
  %flash_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 59
  %31 = ptrtoint ptr %flash_size to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %flash_size, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %mtd_div_by_eb.exit
  %mtd.addr.0.i.i = phi ptr [ %13, %mtd_div_by_eb.exit ], [ %33, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %32 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %mtd_can_have_bb.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i

mtd_can_have_bb.exit:                             ; preds = %while.cond.i.i
  %_block_isbad.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 42
  %34 = ptrtoint ptr %_block_isbad.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %_block_isbad.i, align 4
  %tobool.i.not = icmp eq ptr %35, null
  br i1 %tobool.i.not, label %mtd_can_have_bb.exit.if.end38_crit_edge, label %if.then36

mtd_can_have_bb.exit.if.end38_crit_edge:          ; preds = %mtd_can_have_bb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then36:                                        ; preds = %mtd_can_have_bb.exit
  %bad_allowed = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 77
  %36 = ptrtoint ptr %bad_allowed to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %bad_allowed, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %bad_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_beb_per1024)
  %tobool.not.i559 = icmp eq i32 %max_beb_per1024, 0
  br i1 %tobool.not.i559, label %if.then.i560, label %if.end4.i

if.then.i560:                                     ; preds = %if.then36
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %size, align 8
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i.while.cond.i.i.i_crit_edge, %if.then.i560
  %mtd.addr.0.i.i.i = phi ptr [ %13, %if.then.i560 ], [ %40, %while.cond.i.i.i.while.cond.i.i.i_crit_edge ]
  %parent.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i.i, i32 0, i32 62
  %39 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.i, label %mtd_get_master.exit.i.i, label %while.cond.i.i.i.while.cond.i.i.i_crit_edge

while.cond.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i.i

mtd_get_master.exit.i.i:                          ; preds = %while.cond.i.i.i
  %conv.i561 = trunc i64 %38 to i32
  %_max_bad_blocks.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i.i, i32 0, i32 44
  %41 = ptrtoint ptr %_max_bad_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %_max_bad_blocks.i.i, align 4
  %tobool.not.i.i562 = icmp eq ptr %42, null
  br i1 %tobool.not.i.i562, label %mtd_get_master.exit.i.i.mtd_max_bad_blocks.exit.thread.i_crit_edge, label %if.end5.i.i563

mtd_get_master.exit.i.i.mtd_max_bad_blocks.exit.thread.i_crit_edge: ; preds = %mtd_get_master.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mtd_max_bad_blocks.exit.thread.i

if.end5.i.i563:                                   ; preds = %mtd_get_master.exit.i.i
  %parent1.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %13, i32 0, i32 62
  %43 = ptrtoint ptr %parent1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent1.i.i.i, align 4
  %tobool.not2.i.i.i = icmp eq ptr %44, null
  br i1 %tobool.not2.i.i.i, label %if.end5.i.i563.mtd_max_bad_blocks.exit.i_crit_edge, label %if.end5.i.i563.while.body.i.i.i_crit_edge

if.end5.i.i563.while.body.i.i.i_crit_edge:        ; preds = %if.end5.i.i563
  br label %while.body.i.i.i

if.end5.i.i563.mtd_max_bad_blocks.exit.i_crit_edge: ; preds = %if.end5.i.i563
  call void @__sanitizer_cov_trace_pc() #15
  br label %mtd_max_bad_blocks.exit.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.end5.i.i563.while.body.i.i.i_crit_edge
  %45 = phi ptr [ %49, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %44, %if.end5.i.i563.while.body.i.i.i_crit_edge ]
  %ofs.addr.04.i.i.i = phi i64 [ %add.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %if.end5.i.i563.while.body.i.i.i_crit_edge ]
  %mtd.addr.03.i.i.i = phi ptr [ %45, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %13, %if.end5.i.i563.while.body.i.i.i_crit_edge ]
  %offset.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.03.i.i.i, i32 0, i32 64, i32 0, i32 1
  %46 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %offset.i.i.i, align 8
  %add.i.i.i = add i64 %47, %ofs.addr.04.i.i.i
  %parent.i1.i.i = getelementptr inbounds %struct.mtd_info, ptr %45, i32 0, i32 62
  %48 = ptrtoint ptr %parent.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent.i1.i.i, align 4
  %tobool.not.i2.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i2.i.i, label %while.body.i.i.i.mtd_max_bad_blocks.exit.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i.i

while.body.i.i.i.mtd_max_bad_blocks.exit.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mtd_max_bad_blocks.exit.i

mtd_max_bad_blocks.exit.i:                        ; preds = %while.body.i.i.i.mtd_max_bad_blocks.exit.i_crit_edge, %if.end5.i.i563.mtd_max_bad_blocks.exit.i_crit_edge
  %ofs.addr.0.lcssa.i.i.i = phi i64 [ 0, %if.end5.i.i563.mtd_max_bad_blocks.exit.i_crit_edge ], [ %add.i.i.i, %while.body.i.i.i.mtd_max_bad_blocks.exit.i_crit_edge ]
  %call8.i.i = tail call i32 %42(ptr noundef %mtd.addr.0.i.i.i, i64 noundef %ofs.addr.0.lcssa.i.i.i, i32 noundef %conv.i561) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp.i564 = icmp slt i32 %call8.i.i, 0
  br i1 %cmp.i564, label %mtd_max_bad_blocks.exit.i.mtd_max_bad_blocks.exit.thread.i_crit_edge, label %mtd_max_bad_blocks.exit.i.get_bad_peb_limit.exit_crit_edge

mtd_max_bad_blocks.exit.i.get_bad_peb_limit.exit_crit_edge: ; preds = %mtd_max_bad_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_bad_peb_limit.exit

mtd_max_bad_blocks.exit.i.mtd_max_bad_blocks.exit.thread.i_crit_edge: ; preds = %mtd_max_bad_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mtd_max_bad_blocks.exit.thread.i

mtd_max_bad_blocks.exit.thread.i:                 ; preds = %mtd_max_bad_blocks.exit.i.mtd_max_bad_blocks.exit.thread.i_crit_edge, %mtd_get_master.exit.i.i.mtd_max_bad_blocks.exit.thread.i_crit_edge
  br label %get_bad_peb_limit.exit

if.end4.i:                                        ; preds = %if.then36
  %call6.i = tail call i64 @mtd_get_device_size(ptr noundef %13) #13
  %50 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mtd, align 4
  %erasesize_shift.i.i = getelementptr inbounds %struct.mtd_info, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %erasesize_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %erasesize_shift.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i43.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i43.i, label %if.end.i45.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %sh_prom.i.i = zext i32 %53 to i64
  %shr.i.i = lshr i64 %call6.i, %sh_prom.i.i
  %conv.i44.i = trunc i64 %shr.i.i to i32
  br label %mtd_div_by_eb.exit.i

if.end.i45.i:                                     ; preds = %if.end4.i
  %erasesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %51, i32 0, i32 3
  %54 = ptrtoint ptr %erasesize.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %erasesize.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %call6.i)
  %cmp172.i.i = icmp ult i64 %call6.i, 4294967296
  br i1 %cmp172.i.i, label %if.then176.i.i, label %if.else182.i.i, !prof !372

if.then176.i.i:                                   ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv177.i.i = trunc i64 %call6.i to i32
  %div180.i.i = udiv i32 %conv177.i.i, %55
  br label %mtd_div_by_eb.exit.i

if.else182.i.i:                                   ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #15
  %56 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %55, i64 %call6.i) #18, !srcloc !373
  %asmresult1.i.i.i = extractvalue { i64, i64 } %56, 1
  %extract.t296.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %mtd_div_by_eb.exit.i

mtd_div_by_eb.exit.i:                             ; preds = %if.else182.i.i, %if.then176.i.i, %if.then.i.i
  %retval.0.i47.i = phi i32 [ %conv.i44.i, %if.then.i.i ], [ %div180.i.i, %if.then176.i.i ], [ %extract.t296.i.i, %if.else182.i.i ]
  %retval.0.i47.i.frozen = freeze i32 %retval.0.i47.i
  %div.i565 = sdiv i32 %retval.0.i47.i.frozen, 1024
  %57 = mul i32 %div.i565, 1024
  %rem9.i.decomposed = sub i32 %retval.0.i47.i.frozen, %57
  %mul.i566 = mul i32 %div.i565, %max_beb_per1024
  %mul10.i = mul i32 %rem9.i.decomposed, %max_beb_per1024
  %div11.i = sdiv i32 %mul10.i, 1024
  %add.i567 = add i32 %div11.i, %mul.i566
  %add.i567.frozen = freeze i32 %add.i567
  %div13.i = sdiv i32 %add.i567.frozen, %max_beb_per1024
  %58 = mul i32 %div13.i, %max_beb_per1024
  %rem15.i.decomposed = sub i32 %add.i567.frozen, %58
  %mul17.i = shl i32 %div13.i, 10
  %mul18.i = shl i32 %rem15.i.decomposed, 10
  %div19.i = sdiv i32 %mul18.i, %max_beb_per1024
  %add20.i = add i32 %div19.i, %mul17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add20.i, i32 %retval.0.i47.i)
  %cmp21.i = icmp slt i32 %add20.i, %retval.0.i47.i
  %add24.i = zext i1 %cmp21.i to i32
  %spec.select.i = add i32 %add.i567, %add24.i
  br label %get_bad_peb_limit.exit

get_bad_peb_limit.exit:                           ; preds = %mtd_div_by_eb.exit.i, %mtd_max_bad_blocks.exit.thread.i, %mtd_max_bad_blocks.exit.i.get_bad_peb_limit.exit_crit_edge
  %retval.0.i568 = phi i32 [ %spec.select.i, %mtd_div_by_eb.exit.i ], [ 0, %mtd_max_bad_blocks.exit.thread.i ], [ %call8.i.i, %mtd_max_bad_blocks.exit.i.get_bad_peb_limit.exit_crit_edge ]
  %bad_peb_limit = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 13
  %59 = ptrtoint ptr %bad_peb_limit to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i568, ptr %bad_peb_limit, align 4
  br label %if.end38

if.end38:                                         ; preds = %get_bad_peb_limit.exit, %mtd_can_have_bb.exit.if.end38_crit_edge
  %60 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mtd, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %63)
  %cmp40 = icmp eq i8 %63, 3
  br i1 %cmp40, label %if.then42, label %if.end38.if.end46_crit_edge

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %nor_flash = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 77
  %64 = ptrtoint ptr %nor_flash to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load43 = load i8, ptr %nor_flash, align 4
  %bf.set45 = or i8 %bf.load43, 64
  store i8 %bf.set45, ptr %nor_flash, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end38.if.end46_crit_edge
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %61, i32 0, i32 4
  %65 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %writesize, align 4
  %min_io_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 67
  %67 = ptrtoint ptr %min_io_size to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %min_io_size, align 4
  %68 = load i32, ptr %writesize, align 4
  %subpage_sft = getelementptr inbounds %struct.mtd_info, ptr %61, i32 0, i32 53
  %69 = ptrtoint ptr %subpage_sft to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %subpage_sft, align 4
  %shr = lshr i32 %68, %70
  %hdrs_min_io_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 68
  %71 = ptrtoint ptr %hdrs_min_io_size to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %shr, ptr %hdrs_min_io_size, align 8
  %72 = tail call i32 @llvm.ctpop.i32(i32 %66) #13, !range !376
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %do.body56, label %if.then53

if.then53:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.72, i32 noundef %66) #13
  br label %return

do.body56:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp58 = icmp slt i32 %shr, 1
  br i1 %cmp58, label %do.end70, label %do.body56.do.body78_crit_edge, !prof !371

do.body56.do.body78_crit_edge:                    ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body78

do.end70:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #15
  %74 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i569 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i569 to ptr
  %task73 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task73, align 8
  %pid74 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 68
  %78 = ptrtoint ptr %pid74 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pid74, align 8
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.68, i32 noundef 649, i32 noundef %79) #16
  tail call void @dump_stack() #16
  br label %do.body78

do.body78:                                        ; preds = %do.end70, %do.body56.do.body78_crit_edge
  %80 = ptrtoint ptr %hdrs_min_io_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %hdrs_min_io_size, align 8
  %82 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %min_io_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp81.not = icmp sgt i32 %81, %83
  br i1 %cmp81.not, label %do.end93, label %do.body78.do.body101_crit_edge, !prof !371

do.body78.do.body101_crit_edge:                   ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body101

do.end93:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #15
  %84 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i570 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i570 to ptr
  %task96 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %task96 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %task96, align 8
  %pid97 = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 68
  %88 = ptrtoint ptr %pid97 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pid97, align 8
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.68, i32 noundef 650, i32 noundef %89) #16
  tail call void @dump_stack() #16
  br label %do.body101

do.body101:                                       ; preds = %do.end93, %do.body78.do.body101_crit_edge
  %90 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %min_io_size, align 4
  %92 = ptrtoint ptr %hdrs_min_io_size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %hdrs_min_io_size, align 8
  %rem = srem i32 %91, %93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp104.not = icmp eq i32 %rem, 0
  br i1 %cmp104.not, label %do.body101.do.end123_crit_edge, label %do.end116, !prof !372

do.body101.do.end123_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end123

do.end116:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #15
  %94 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i571 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i571 to ptr
  %task119 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %task119 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %task119, align 8
  %pid120 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 68
  %98 = ptrtoint ptr %pid120 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pid120, align 8
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.68, i32 noundef 651, i32 noundef %99) #16
  tail call void @dump_stack() #16
  br label %do.end123

do.end123:                                        ; preds = %do.end116, %do.body101.do.end123_crit_edge
  %100 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mtd, align 4
  %writebufsize = getelementptr inbounds %struct.mtd_info, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %writebufsize to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %writebufsize, align 8
  %max_write_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 78
  %104 = ptrtoint ptr %max_write_size to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %max_write_size, align 8
  %105 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %min_io_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %106)
  %cmp127 = icmp slt i32 %103, %106
  br i1 %cmp127, label %do.end123.if.then136_crit_edge, label %lor.lhs.false

do.end123.if.then136_crit_edge:                   ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then136

lor.lhs.false:                                    ; preds = %do.end123
  %rem131 = srem i32 %103, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem131)
  %tobool132.not = icmp eq i32 %rem131, 0
  %107 = tail call i32 @llvm.ctpop.i32(i32 %103) #13, !range !376
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %108 = icmp eq i32 %107, 1
  %109 = and i1 %108, %tobool132.not
  br i1 %109, label %if.end139, label %lor.lhs.false.if.then136_crit_edge

lor.lhs.false.if.then136_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then136

if.then136:                                       ; preds = %lor.lhs.false.if.then136_crit_edge, %do.end123.if.then136_crit_edge
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.77, i32 noundef %103, i32 noundef %106) #13
  br label %return

if.end139:                                        ; preds = %lor.lhs.false
  %110 = ptrtoint ptr %hdrs_min_io_size to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %hdrs_min_io_size, align 8
  %add = add i32 %111, 63
  %neg = sub i32 0, %111
  %and = and i32 %add, %neg
  %ec_hdr_alsize = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 72
  %112 = ptrtoint ptr %ec_hdr_alsize to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %and, ptr %ec_hdr_alsize, align 8
  %vid_hdr_alsize = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %113 = ptrtoint ptr %vid_hdr_alsize to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %and, ptr %vid_hdr_alsize, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @io_init.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@io_init, %if.then162)) #13
          to label %do.body169 [label %if.then162], !srcloc !375

if.then162:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  %114 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i576 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i576 to ptr
  %task164 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %task164 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %task164, align 8
  %pid165 = getelementptr inbounds %struct.task_struct, ptr %117, i32 0, i32 68
  %118 = ptrtoint ptr %pid165 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pid165, align 8
  %120 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %min_io_size, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @io_init.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.78, i32 noundef %119, i32 noundef %121) #13
  br label %do.body169

do.body169:                                       ; preds = %if.then162, %if.end139
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @io_init.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@io_init, %if.then181)) #13
          to label %do.body188 [label %if.then181], !srcloc !375

if.then181:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #15
  %122 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i577 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i577 to ptr
  %task183 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %task183 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %task183, align 8
  %pid184 = getelementptr inbounds %struct.task_struct, ptr %125, i32 0, i32 68
  %126 = ptrtoint ptr %pid184 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pid184, align 8
  %128 = ptrtoint ptr %max_write_size to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %max_write_size, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @io_init.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.79, i32 noundef %127, i32 noundef %129) #13
  br label %do.body188

do.body188:                                       ; preds = %if.then181, %do.body169
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @io_init.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@io_init, %if.then200)) #13
          to label %do.body207 [label %if.then200], !srcloc !375

if.then200:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #15
  %130 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i578 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i578 to ptr
  %task202 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %task202 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %task202, align 8
  %pid203 = getelementptr inbounds %struct.task_struct, ptr %133, i32 0, i32 68
  %134 = ptrtoint ptr %pid203 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pid203, align 8
  %136 = ptrtoint ptr %hdrs_min_io_size to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %hdrs_min_io_size, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @io_init.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.80, i32 noundef %135, i32 noundef %137) #13
  br label %do.body207

do.body207:                                       ; preds = %if.then200, %do.body188
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @io_init.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@io_init, %if.then219)) #13
          to label %do.body226 [label %if.then219], !srcloc !375

if.then219:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #15
  %138 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i579 = and i32 %138, -16384
  %139 = inttoptr i32 %and.i579 to ptr
  %task221 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %task221 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %task221, align 8
  %pid222 = getelementptr inbounds %struct.task_struct, ptr %141, i32 0, i32 68
  %142 = ptrtoint ptr %pid222 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %pid222, align 8
  %144 = ptrtoint ptr %ec_hdr_alsize to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ec_hdr_alsize, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @io_init.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.81, i32 noundef %143, i32 noundef %145) #13
  br label %do.body226

do.body226:                                       ; preds = %if.then219, %do.body207
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @io_init.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@io_init, %if.then238)) #13
          to label %do.end244 [label %if.then238], !srcloc !375

if.then238:                                       ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #15
  %146 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i580 = and i32 %146, -16384
  %147 = inttoptr i32 %and.i580 to ptr
  %task240 = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %task240 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %task240, align 8
  %pid241 = getelementptr inbounds %struct.task_struct, ptr %149, i32 0, i32 68
  %150 = ptrtoint ptr %pid241 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %pid241, align 8
  %152 = ptrtoint ptr %vid_hdr_alsize to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %vid_hdr_alsize, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @io_init.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.82, i32 noundef %151, i32 noundef %153) #13
  br label %do.end244

do.end244:                                        ; preds = %if.then238, %do.body226
  %154 = ptrtoint ptr %vid_hdr_offset to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %vid_hdr_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp246 = icmp eq i32 %155, 0
  br i1 %cmp246, label %if.then248, label %if.else

if.then248:                                       ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #15
  %156 = ptrtoint ptr %ec_hdr_alsize to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %ec_hdr_alsize, align 8
  %158 = ptrtoint ptr %vid_hdr_offset to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %vid_hdr_offset, align 8
  br label %if.end260

if.else:                                          ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #15
  %159 = ptrtoint ptr %hdrs_min_io_size to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %hdrs_min_io_size, align 8
  %neg254 = sub i32 0, %160
  %and255 = and i32 %155, %neg254
  %sub259 = sub i32 %155, %and255
  %vid_hdr_shift = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %161 = ptrtoint ptr %vid_hdr_shift to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %sub259, ptr %vid_hdr_shift, align 8
  br label %if.end260

if.end260:                                        ; preds = %if.else, %if.then248
  %and255.sink = phi i32 [ %157, %if.then248 ], [ %and255, %if.else ]
  %162 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 75
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %and255.sink, ptr %162, align 4
  %164 = ptrtoint ptr %vid_hdr_offset to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %vid_hdr_offset, align 8
  %leb_start = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 71
  %166 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %min_io_size, align 4
  %sub265 = add i32 %165, 63
  %add266 = add i32 %sub265, %167
  %neg269 = sub i32 0, %167
  %and270 = and i32 %add266, %neg269
  %168 = ptrtoint ptr %leb_start to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %and270, ptr %leb_start, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @io_init.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@io_init, %if.then284)) #13
          to label %do.body291 [label %if.then284], !srcloc !375

if.then284:                                       ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #15
  %169 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i581 = and i32 %169, -16384
  %170 = inttoptr i32 %and.i581 to ptr
  %task286 = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %task286 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %task286, align 8
  %pid287 = getelementptr inbounds %struct.task_struct, ptr %172, i32 0, i32 68
  %173 = ptrtoint ptr %pid287 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %pid287, align 8
  %175 = ptrtoint ptr %vid_hdr_offset to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %vid_hdr_offset, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @io_init.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.83, i32 noundef %174, i32 noundef %176) #13
  br label %do.body291

do.body291:                                       ; preds = %if.then284, %if.end260
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @io_init.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@io_init, %if.then303)) #13
          to label %do.body310 [label %if.then303], !srcloc !375

if.then303:                                       ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #15
  %177 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i582 = and i32 %177, -16384
  %178 = inttoptr i32 %and.i582 to ptr
  %task305 = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %task305 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %task305, align 8
  %pid306 = getelementptr inbounds %struct.task_struct, ptr %180, i32 0, i32 68
  %181 = ptrtoint ptr %pid306 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %pid306, align 8
  %183 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %162, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @io_init.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.84, i32 noundef %182, i32 noundef %184) #13
  br label %do.body310

do.body310:                                       ; preds = %if.then303, %do.body291
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @io_init.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@io_init, %if.then322)) #13
          to label %do.body329 [label %if.then322], !srcloc !375

if.then322:                                       ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #15
  %185 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i583 = and i32 %185, -16384
  %186 = inttoptr i32 %and.i583 to ptr
  %task324 = getelementptr inbounds %struct.thread_info, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %task324 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %task324, align 8
  %pid325 = getelementptr inbounds %struct.task_struct, ptr %188, i32 0, i32 68
  %189 = ptrtoint ptr %pid325 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %pid325, align 8
  %vid_hdr_shift326 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %191 = ptrtoint ptr %vid_hdr_shift326 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %vid_hdr_shift326, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @io_init.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.85, i32 noundef %190, i32 noundef %192) #13
  br label %do.body329

do.body329:                                       ; preds = %if.then322, %do.body310
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @io_init.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@io_init, %if.then341)) #13
          to label %do.end347 [label %if.then341], !srcloc !375

if.then341:                                       ; preds = %do.body329
  call void @__sanitizer_cov_trace_pc() #15
  %193 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i584 = and i32 %193, -16384
  %194 = inttoptr i32 %and.i584 to ptr
  %task343 = getelementptr inbounds %struct.thread_info, ptr %194, i32 0, i32 2
  %195 = ptrtoint ptr %task343 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %task343, align 8
  %pid344 = getelementptr inbounds %struct.task_struct, ptr %196, i32 0, i32 68
  %197 = ptrtoint ptr %pid344 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %pid344, align 8
  %199 = ptrtoint ptr %leb_start to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %leb_start, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @io_init.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.86, i32 noundef %198, i32 noundef %200) #13
  br label %do.end347

do.end347:                                        ; preds = %if.then341, %do.body329
  %vid_hdr_shift348 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %201 = ptrtoint ptr %vid_hdr_shift348 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %vid_hdr_shift348, align 8
  %203 = and i32 %202, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool350.not = icmp eq i32 %203, 0
  br i1 %tobool350.not, label %if.end353, label %if.then351

if.then351:                                       ; preds = %do.end347
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.87, i32 noundef %202) #13
  br label %return

if.end353:                                        ; preds = %do.end347
  %204 = ptrtoint ptr %vid_hdr_offset to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %vid_hdr_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %205)
  %cmp355 = icmp ult i32 %205, 64
  br i1 %cmp355, label %if.end353.if.then375_crit_edge, label %lor.lhs.false357

if.end353.if.then375_crit_edge:                   ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then375

lor.lhs.false357:                                 ; preds = %if.end353
  %206 = ptrtoint ptr %leb_start to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %leb_start, align 4
  %add360 = add i32 %205, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %add360)
  %cmp361 = icmp ult i32 %207, %add360
  br i1 %cmp361, label %lor.lhs.false357.if.then375_crit_edge, label %lor.lhs.false363

lor.lhs.false357.if.then375_crit_edge:            ; preds = %lor.lhs.false357
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then375

lor.lhs.false363:                                 ; preds = %lor.lhs.false357
  %208 = ptrtoint ptr %peb_size to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %peb_size, align 4
  %sub366 = add i32 %209, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %sub366)
  %cmp367 = icmp ugt i32 %207, %sub366
  br i1 %cmp367, label %lor.lhs.false363.if.then375_crit_edge, label %lor.lhs.false369

lor.lhs.false363.if.then375_crit_edge:            ; preds = %lor.lhs.false363
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then375

lor.lhs.false369:                                 ; preds = %lor.lhs.false363
  %210 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %min_io_size, align 4
  %sub372 = add i32 %211, -1
  %and373 = and i32 %sub372, %207
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and373)
  %tobool374.not = icmp eq i32 %and373, 0
  br i1 %tobool374.not, label %if.end378, label %lor.lhs.false369.if.then375_crit_edge

lor.lhs.false369.if.then375_crit_edge:            ; preds = %lor.lhs.false369
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then375

if.then375:                                       ; preds = %lor.lhs.false369.if.then375_crit_edge, %lor.lhs.false363.if.then375_crit_edge, %lor.lhs.false357.if.then375_crit_edge, %if.end353.if.then375_crit_edge
  %212 = ptrtoint ptr %leb_start to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %leb_start, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.88, i32 noundef %205, i32 noundef %213) #13
  br label %return

if.end378:                                        ; preds = %lor.lhs.false369
  %214 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %peb_count, align 8
  %div = sdiv i32 %215, 10
  %max_erroneous = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %215)
  %cmp381 = icmp slt i32 %215, 160
  %spec.select = select i1 %cmp381, i32 16, i32 %div
  %216 = ptrtoint ptr %max_erroneous to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %spec.select, ptr %max_erroneous, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @io_init.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@io_init, %if.then398)) #13
          to label %do.end404 [label %if.then398], !srcloc !375

if.then398:                                       ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #15
  %217 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i585 = and i32 %217, -16384
  %218 = inttoptr i32 %and.i585 to ptr
  %task400 = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 2
  %219 = ptrtoint ptr %task400 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %task400, align 8
  %pid401 = getelementptr inbounds %struct.task_struct, ptr %220, i32 0, i32 68
  %221 = ptrtoint ptr %pid401 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %pid401, align 8
  %223 = ptrtoint ptr %max_erroneous to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %max_erroneous, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @io_init.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.89, i32 noundef %222, i32 noundef %224) #13
  br label %do.end404

do.end404:                                        ; preds = %if.then398, %if.end378
  %225 = ptrtoint ptr %vid_hdr_offset to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %vid_hdr_offset, align 8
  %add406 = add i32 %226, 64
  %227 = ptrtoint ptr %hdrs_min_io_size to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %hdrs_min_io_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add406, i32 %228)
  %cmp408.not = icmp ugt i32 %add406, %228
  br i1 %cmp408.not, label %do.end404.if.end411_crit_edge, label %if.then410

do.end404.if.end411_crit_edge:                    ; preds = %do.end404
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end411

if.then410:                                       ; preds = %do.end404
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.90) #13
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %229 = ptrtoint ptr %ro_mode to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 1, ptr %ro_mode, align 4
  br label %if.end411

if.end411:                                        ; preds = %if.then410, %do.end404.if.end411_crit_edge
  %230 = ptrtoint ptr %peb_size to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %peb_size, align 4
  %232 = ptrtoint ptr %leb_start to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %leb_start, align 4
  %sub414 = sub i32 %231, %233
  %leb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 70
  %234 = ptrtoint ptr %leb_size to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %sub414, ptr %leb_size, align 8
  %235 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %mtd, align 4
  %flags = getelementptr inbounds %struct.mtd_info, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %flags, align 4
  %and416 = and i32 %238, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and416)
  %tobool417.not = icmp eq i32 %and416, 0
  br i1 %tobool417.not, label %if.then418, label %if.end411.return_crit_edge

if.end411.return_crit_edge:                       ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then418:                                       ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #15
  %index = getelementptr inbounds %struct.mtd_info, ptr %236, i32 0, i32 14
  %239 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.91, i32 noundef %240) #13
  %ro_mode420 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %241 = ptrtoint ptr %ro_mode420 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 1, ptr %ro_mode420, align 4
  br label %return

return:                                           ; preds = %if.then418, %if.end411.return_crit_edge, %if.then375, %if.then351, %if.then136, %if.then53, %if.end23.return_crit_edge, %if.then22
  %retval.0 = phi i32 [ -22, %if.then22 ], [ -22, %if.then136 ], [ -22, %if.then351 ], [ -22, %if.then375 ], [ -22, %if.then53 ], [ -22, %if.end23.return_crit_edge ], [ 0, %if.then418 ], [ 0, %if.end411.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_calc_fm_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_attach(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @autoresize(ptr noundef %ubi, i32 noundef %vol_id) unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ubi_volume_desc, align 4
  %vtbl_rec = alloca %struct.ubi_vtbl_record, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc) #13
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %desc, align 4, !annotation !377
  %1 = getelementptr inbounds %struct.ubi_volume_desc, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !377
  %arrayidx = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %vol_id
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %reserved_pebs = getelementptr inbounds %struct.ubi_volume, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reserved_pebs, align 4
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %7 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.92) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %vtbl = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 17
  %9 = ptrtoint ptr %vtbl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vtbl, align 4
  %flags = getelementptr %struct.ubi_vtbl_record, ptr %10, i32 %vol_id, i32 7
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags, align 1
  %13 = and i8 %12, -2
  store i8 %13, ptr %flags, align 1
  %avail_pebs = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 10
  %14 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %avail_pebs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %vtbl_rec) #13
  %16 = ptrtoint ptr %vtbl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vtbl, align 4
  %arrayidx6 = getelementptr %struct.ubi_vtbl_record, ptr %17, i32 %vol_id
  %18 = call ptr @memcpy(ptr %vtbl_rec, ptr %arrayidx6, i32 172)
  %call = call i32 @ubi_change_vtbl_record(ptr noundef %ubi, i32 noundef %vol_id, ptr noundef nonnull %vtbl_rec) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end16.thread52, label %if.end16

if.end16.thread52:                                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %vtbl_rec) #13
  br label %if.end19

if.else:                                          ; preds = %if.end
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %4, ptr %desc, align 4
  %add = add i32 %15, %6
  %call12 = call i32 @ubi_resize_volume(ptr noundef nonnull %desc, i32 noundef %add) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.else.if.end19_crit_edge, label %if.end16.thread49

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.end16.thread49:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.94, i32 noundef %vol_id) #13
  br label %cleanup

if.end16:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.93, i32 noundef %vol_id) #13
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %vtbl_rec) #13
  br label %cleanup

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.end16.thread52
  %name = getelementptr inbounds %struct.ubi_volume, ptr %4, i32 0, i32 18
  %20 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reserved_pebs, align 4
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.95, i32 noundef %vol_id, ptr noundef %name, i32 noundef %6, i32 noundef %21) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end16, %if.end16.thread49, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end19 ], [ %call, %if.end16 ], [ %call12, %if.end16.thread49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uif_init(ptr noundef %ubi) unnamed_addr #0 align 64 {
entry:
  %dev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #13
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dev, align 4, !annotation !377
  %ubi_name = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 3
  %ubi_num = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 2
  %1 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ubi_num, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %ubi_name, ptr noundef nonnull @.str.96, i32 noundef %2)
  %vtbl_slots = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  %3 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vtbl_slots, align 4
  %add = add i32 %4, 1
  %call3 = call i32 @alloc_chrdev_region(ptr noundef nonnull %dev, i32 noundef 0, i32 noundef %add, ptr noundef %ubi_name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.97) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 1
  %devt = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 1, i32 29
  %7 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %devt, align 8
  %and = and i32 %6, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end.do.end14_crit_edge, label %do.end, !prof !372

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.98, i32 noundef 460, i32 noundef %13) #16
  call void @dump_stack() #16
  br label %do.end14

do.end14:                                         ; preds = %do.end, %if.end.do.end14_crit_edge
  call void @cdev_init(ptr noundef %ubi, ptr noundef nonnull @ubi_cdev_operations) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uif_init.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uif_init, %if.then25)) #13
          to label %do.end33 [label %if.then25], !srcloc !375

if.then25:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #15
  %14 = call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i98 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i98 to ptr
  %task27 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task27, align 8
  %pid28 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid28, align 8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dev, align 4
  %shr = lshr i32 %21, 20
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @uif_init.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.99, i32 noundef %19, ptr noundef %ubi_name, i32 noundef %shr) #13
  br label %do.end33

do.end33:                                         ; preds = %if.then25, %do.end14
  %owner = getelementptr inbounds %struct.cdev, ptr %ubi, i32 0, i32 1
  %22 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %owner, align 8
  %23 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ubi_num, align 8
  %call37 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev4, ptr noundef nonnull @.str.96, i32 noundef %24) #13
  %call40 = call i32 @cdev_device_add(ptr noundef %ubi, ptr noundef %dev4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %for.cond.preheader, label %do.end33.out_unreg_crit_edge

do.end33.out_unreg_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unreg

for.cond.preheader:                               ; preds = %do.end33
  %25 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vtbl_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp45101 = icmp sgt i32 %26, 0
  br i1 %cmp45101, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0102 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %i.0102
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %tobool46.not = icmp eq ptr %28, null
  br i1 %tobool46.not, label %for.body.for.inc_crit_edge, label %if.then47

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then47:                                        ; preds = %for.body
  %call50 = call i32 @ubi_add_volume(ptr noundef %ubi, ptr noundef nonnull %28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then47.for.inc_crit_edge, label %if.then52

if.then47.for.inc_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then52:                                        ; preds = %if.then47
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.100, i32 noundef %i.0102) #13
  %29 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vtbl_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp9.i = icmp sgt i32 %30, 0
  br i1 %cmp9.i, label %if.then52.for.body.i_crit_edge, label %if.then52.kill_volumes.exit_crit_edge

if.then52.kill_volumes.exit_crit_edge:            ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %kill_volumes.exit

if.then52.for.body.i_crit_edge:                   ; preds = %if.then52
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then52.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then52.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %i.010.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @ubi_free_volume(ptr noundef %ubi, ptr noundef nonnull %32) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %33 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vtbl_slots, align 4
  %cmp.i = icmp slt i32 %inc.i, %34
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.kill_volumes.exit_crit_edge

for.inc.i.kill_volumes.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kill_volumes.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

kill_volumes.exit:                                ; preds = %for.inc.i.kill_volumes.exit_crit_edge, %if.then52.kill_volumes.exit_crit_edge
  call void @cdev_device_del(ptr noundef %ubi, ptr noundef %dev4) #13
  br label %out_unreg

for.inc:                                          ; preds = %if.then47.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0102, 1
  %35 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vtbl_slots, align 4
  %cmp45 = icmp slt i32 %inc, %36
  br i1 %cmp45, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

out_unreg:                                        ; preds = %kill_volumes.exit, %do.end33.out_unreg_crit_edge
  %err.0 = phi i32 [ %call40, %do.end33.out_unreg_crit_edge ], [ %call50, %kill_volumes.exit ]
  %dev58 = getelementptr inbounds %struct.cdev, ptr %ubi, i32 0, i32 4
  %37 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dev58, align 8
  %39 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vtbl_slots, align 4
  %add60 = add i32 %40, 1
  call void @unregister_chrdev_region(i32 noundef %38, i32 noundef %add60) #13
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.101, ptr noundef %ubi_name, i32 noundef %err.0) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unreg, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %err.0, %out_unreg ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_debugfs_init_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_thread(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_debugfs_exit_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uif_close(ptr noundef %ubi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vtbl_slots.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  %0 = ptrtoint ptr %vtbl_slots.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vtbl_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.i = icmp sgt i32 %1, 0
  br i1 %cmp9.i, label %entry.for.body.i_crit_edge, label %entry.kill_volumes.exit_crit_edge

entry.kill_volumes.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kill_volumes.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %i.010.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubi_free_volume(ptr noundef %ubi, ptr noundef nonnull %3) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %4 = ptrtoint ptr %vtbl_slots.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vtbl_slots.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %5
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.kill_volumes.exit_crit_edge

for.inc.i.kill_volumes.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kill_volumes.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

kill_volumes.exit:                                ; preds = %for.inc.i.kill_volumes.exit_crit_edge, %entry.kill_volumes.exit_crit_edge
  %dev = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %ubi, ptr noundef %dev) #13
  %dev2 = getelementptr inbounds %struct.cdev, ptr %ubi, i32 0, i32 4
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev2, align 8
  %8 = ptrtoint ptr %vtbl_slots.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vtbl_slots.i, align 4
  %add = add i32 %9, 1
  tail call void @unregister_chrdev_region(i32 noundef %7, i32 noundef %add) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_wl_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_detach_mtd_dev(i32 noundef %ubi_num, i32 noundef %anyway) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %ubi_num)
  %0 = icmp ugt i32 %ubi_num, 31
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubi_devices_lock) #13
  %arrayidx.i = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %ubi_num
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %ubi_get_device.exit.thread, label %do.body.i

ubi_get_device.exit.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubi_devices_lock) #13
  br label %cleanup

do.body.i:                                        ; preds = %if.end
  %ref_count.i = getelementptr inbounds %struct.ubi_device, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ref_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %do.end.i, label %do.body.i.if.end3_crit_edge, !prof !371

do.body.i.if.end3_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %5 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid.i, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 261, i32 noundef %10) #16
  tail call void @dump_stack() #16
  br label %if.end3

if.end3:                                          ; preds = %do.end.i, %do.body.i.if.end3_crit_edge
  %11 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ref_count.i, align 4
  %add.i = add i32 %12, 1
  store i32 %add.i, ptr %ref_count.i, align 4
  %dev.i = getelementptr inbounds %struct.ubi_device, ptr %2, i32 0, i32 1
  %call10.i = tail call ptr @get_device(ptr noundef %dev.i) #13
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubi_devices_lock) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubi_devices_lock) #13
  tail call void @put_device(ptr noundef %dev.i) #13
  %13 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ref_count.i, align 4
  %sub = add i32 %14, -1
  store i32 %sub, ptr %ref_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool5.not = icmp eq i32 %sub, 0
  br i1 %tobool5.not, label %if.end3.if.end11_crit_edge, label %if.then6

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %anyway)
  %tobool7.not = icmp eq i32 %anyway, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubi_devices_lock) #13
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %ubi_name = getelementptr inbounds %struct.ubi_device, ptr %2, i32 0, i32 3
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef nonnull %2, ptr noundef nonnull @.str.48, ptr noundef %ubi_name, i32 noundef %sub) #13
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %if.end3.if.end11_crit_edge
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubi_devices_lock) #13
  %ubi_num12 = getelementptr inbounds %struct.ubi_device, ptr %2, i32 0, i32 2
  %16 = ptrtoint ptr %ubi_num12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ubi_num12, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %ubi_num)
  %cmp13.not = icmp eq i32 %17, %ubi_num
  br i1 %cmp13.not, label %if.end11.do.end23_crit_edge, label %do.end, !prof !372

if.end11.do.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %18 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid, align 8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49, i32 noundef 1087, i32 noundef %23) #16
  tail call void @dump_stack() #16
  br label %do.end23

do.end23:                                         ; preds = %do.end, %if.end11.do.end23_crit_edge
  %call24 = tail call i32 @ubi_notify_all(ptr noundef nonnull %2, i32 noundef 1, ptr noundef null)
  %mtd = getelementptr inbounds %struct.ubi_device, ptr %2, i32 0, i32 79
  %24 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mtd, align 4
  %index = getelementptr inbounds %struct.mtd_info, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %2, ptr noundef nonnull @.str.50, i32 noundef %27) #13
  %dbg.i = getelementptr inbounds %struct.ubi_device, ptr %2, i32 0, i32 83
  %28 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %dbg.i, align 4
  %29 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool26.not = icmp eq i8 %29, 0
  br i1 %tobool26.not, label %if.then27, label %do.end23.if.end29_crit_edge

do.end23.if.end29_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then27:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = tail call i32 @ubi_update_fastmap(ptr noundef nonnull %2) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %do.end23.if.end29_crit_edge
  %bgt_thread = getelementptr inbounds %struct.ubi_device, ptr %2, i32 0, i32 56
  %30 = ptrtoint ptr %bgt_thread to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bgt_thread, align 4
  %tobool30.not = icmp eq ptr %31, null
  br i1 %tobool30.not, label %if.end29.if.end34_crit_edge, label %if.then31

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %call33 = tail call i32 @kthread_stop(ptr noundef nonnull %31) #13
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end29.if.end34_crit_edge
  %fm_work = getelementptr inbounds %struct.ubi_device, ptr %2, i32 0, i32 33
  %call35 = tail call zeroext i1 @cancel_work_sync(ptr noundef %fm_work) #13
  tail call void @ubi_debugfs_exit_dev(ptr noundef nonnull %2) #13
  %vtbl_slots.i.i = getelementptr inbounds %struct.ubi_device, ptr %2, i32 0, i32 15
  %32 = ptrtoint ptr %vtbl_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vtbl_slots.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp9.i.i = icmp sgt i32 %33, 0
  br i1 %cmp9.i.i, label %if.end34.for.body.i.i_crit_edge, label %if.end34.uif_close.exit_crit_edge

if.end34.uif_close.exit_crit_edge:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %uif_close.exit

if.end34.for.body.i.i_crit_edge:                  ; preds = %if.end34
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end34.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end34.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ubi_device, ptr %2, i32 0, i32 5, i32 %i.010.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubi_free_volume(ptr noundef %2, ptr noundef nonnull %35) #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %36 = ptrtoint ptr %vtbl_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vtbl_slots.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %37
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.uif_close.exit_crit_edge

for.inc.i.i.uif_close.exit_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %uif_close.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

uif_close.exit:                                   ; preds = %for.inc.i.i.uif_close.exit_crit_edge, %if.end34.uif_close.exit_crit_edge
  tail call void @cdev_device_del(ptr noundef %2, ptr noundef %dev.i) #13
  %dev2.i = getelementptr inbounds %struct.cdev, ptr %2, i32 0, i32 4
  %38 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dev2.i, align 8
  %40 = ptrtoint ptr %vtbl_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vtbl_slots.i.i, align 4
  %add.i71 = add i32 %41, 1
  tail call void @unregister_chrdev_region(i32 noundef %39, i32 noundef %add.i71) #13
  tail call void @ubi_wl_close(ptr noundef %2) #13
  %42 = ptrtoint ptr %vtbl_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vtbl_slots.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %43)
  %cmp21.i.not.i = icmp eq i32 %43, 2147483647
  br i1 %cmp21.i.not.i, label %uif_close.exit.ubi_free_internal_volumes.exit_crit_edge, label %uif_close.exit.for.body.i.i74_crit_edge

uif_close.exit.for.body.i.i74_crit_edge:          ; preds = %uif_close.exit
  br label %for.body.i.i74

uif_close.exit.ubi_free_internal_volumes.exit_crit_edge: ; preds = %uif_close.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ubi_free_internal_volumes.exit

for.body.i.i74:                                   ; preds = %for.inc.i.i77.for.body.i.i74_crit_edge, %uif_close.exit.for.body.i.i74_crit_edge
  %i.022.i.i = phi i32 [ %inc.i.i75, %for.inc.i.i77.for.body.i.i74_crit_edge ], [ %43, %uif_close.exit.for.body.i.i74_crit_edge ]
  %arrayidx.i.i72 = getelementptr %struct.ubi_device, ptr %2, i32 0, i32 5, i32 %i.022.i.i
  %44 = ptrtoint ptr %arrayidx.i.i72 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i72, align 4
  %tobool.not.i.i73 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i73, label %for.body.i.i74.for.inc.i.i77_crit_edge, label %if.end.i.i

for.body.i.i74.for.inc.i.i77_crit_edge:           ; preds = %for.body.i.i74
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i77

if.end.i.i:                                       ; preds = %for.body.i.i74
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubi_eba_replace_table(ptr noundef nonnull %45, ptr noundef null) #13
  %46 = ptrtoint ptr %arrayidx.i.i72 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i72, align 4
  tail call void @ubi_fastmap_destroy_checkmap(ptr noundef %47) #13
  %48 = ptrtoint ptr %arrayidx.i.i72 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i72, align 4
  tail call void @kfree(ptr noundef %49) #13
  %50 = ptrtoint ptr %arrayidx.i.i72 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %arrayidx.i.i72, align 4
  br label %for.inc.i.i77

for.inc.i.i77:                                    ; preds = %if.end.i.i, %for.body.i.i74.for.inc.i.i77_crit_edge
  %inc.i.i75 = add nsw i32 %i.022.i.i, 1
  %51 = ptrtoint ptr %vtbl_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vtbl_slots.i.i, align 4
  %add.i.i = add i32 %52, 1
  %cmp.i.i76 = icmp slt i32 %inc.i.i75, %add.i.i
  br i1 %cmp.i.i76, label %for.inc.i.i77.for.body.i.i74_crit_edge, label %for.inc.i.i77.ubi_free_internal_volumes.exit_crit_edge

for.inc.i.i77.ubi_free_internal_volumes.exit_crit_edge: ; preds = %for.inc.i.i77
  call void @__sanitizer_cov_trace_pc() #15
  br label %ubi_free_internal_volumes.exit

for.inc.i.i77.for.body.i.i74_crit_edge:           ; preds = %for.inc.i.i77
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i74

ubi_free_internal_volumes.exit:                   ; preds = %for.inc.i.i77.ubi_free_internal_volumes.exit_crit_edge, %uif_close.exit.ubi_free_internal_volumes.exit_crit_edge
  %vtbl = getelementptr inbounds %struct.ubi_device, ptr %2, i32 0, i32 17
  %53 = ptrtoint ptr %vtbl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vtbl, align 4
  tail call void @vfree(ptr noundef %54) #13
  %peb_buf = getelementptr inbounds %struct.ubi_device, ptr %2, i32 0, i32 80
  %55 = ptrtoint ptr %peb_buf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %peb_buf, align 8
  tail call void @vfree(ptr noundef %56) #13
  %fm_buf = getelementptr inbounds %struct.ubi_device, ptr %2, i32 0, i32 31
  %57 = ptrtoint ptr %fm_buf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fm_buf, align 4
  tail call void @vfree(ptr noundef %58) #13
  %59 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mtd, align 4
  %index37 = getelementptr inbounds %struct.mtd_info, ptr %60, i32 0, i32 14
  %61 = ptrtoint ptr %index37 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %index37, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %2, ptr noundef nonnull @.str.51, i32 noundef %62) #13
  %63 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mtd, align 4
  tail call void @put_mtd_device(ptr noundef %64) #13
  tail call void @put_device(ptr noundef %dev.i) #13
  br label %cleanup

cleanup:                                          ; preds = %ubi_free_internal_volumes.exit, %if.then8, %ubi_get_device.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ubi_free_internal_volumes.exit ], [ -16, %if.then8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %ubi_get_device.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mtd_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ubi_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mtd_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %cmp = icmp sgt i32 %0, 32
  br i1 %cmp, label %do.end6, label %if.end

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef 32) #16
  br label %cleanup80

if.end:                                           ; preds = %entry
  %call8 = tail call i32 @__class_register(ptr noundef nonnull @ubi_class, ptr noundef nonnull @ubi_init.__key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.cleanup80_crit_edge, label %if.end11

if.end.cleanup80_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @misc_register(ptr noundef nonnull @ubi_ctrl_cdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #16
  br label %out

if.end19:                                         ; preds = %if.end11
  %call20 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.107, i32 noundef 20, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  store ptr %call20, ptr @ubi_wl_entry_slab, align 4
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.out_dev_unreg_crit_edge, label %if.end23

if.end19.out_dev_unreg_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dev_unreg

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @ubi_debugfs_init() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %for.cond.preheader, label %out_slab

for.cond.preheader:                               ; preds = %if.end23
  %1 = load i32, ptr @mtd_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp28102 = icmp sgt i32 %1, 0
  br i1 %cmp28102, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0103 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %i.0103
  tail call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 1237, i32 noundef 0) #13
  %call.i = tail call i32 @__cond_resched() #13
  %call31 = tail call fastcc ptr @open_mtd_device(ptr noundef %arrayidx) #20
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %if.end42

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %call31 to i32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %arrayidx, i32 noundef %2) #16
  br label %cleanup

if.end42:                                         ; preds = %for.body
  tail call void @mutex_lock_nested(ptr noundef nonnull @ubi_devices_mutex, i32 noundef 0) #13
  %ubi_num = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %i.0103, i32 1
  %3 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ubi_num, align 4
  %vid_hdr_offs = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %i.0103, i32 2
  %5 = ptrtoint ptr %vid_hdr_offs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vid_hdr_offs, align 4
  %max_beb_per1024 = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %i.0103, i32 3
  %7 = ptrtoint ptr %max_beb_per1024 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_beb_per1024, align 4
  %call43 = tail call i32 @ubi_attach_mtd_dev(ptr noundef %call31, i32 noundef %4, i32 noundef %6, i32 noundef %8)
  tail call void @mutex_unlock(ptr noundef nonnull @ubi_devices_mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end48, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  %index = getelementptr inbounds %struct.mtd_info, ptr %call31, i32 0, i32 14
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %10) #16
  tail call void @put_mtd_device(ptr noundef %call31) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %if.end42.cleanup_crit_edge, %if.then33
  %inc = add nuw nsw i32 %i.0103, 1
  %11 = load i32, ptr @mtd_devs, align 4
  %cmp28 = icmp slt i32 %inc, %11
  br i1 %cmp28, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call53 = tail call i32 @ubiblock_init() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %for.end.cleanup80_crit_edge, label %do.end58

for.end.cleanup80_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

do.end58:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %call53) #16
  br label %cleanup80

out_slab:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %12 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %12) #13
  br label %out_dev_unreg

out_dev_unreg:                                    ; preds = %out_slab, %if.end19.out_dev_unreg_crit_edge
  %err.0 = phi i32 [ %call24, %out_slab ], [ -12, %if.end19.out_dev_unreg_crit_edge ]
  tail call void @misc_deregister(ptr noundef nonnull @ubi_ctrl_cdev) #13
  br label %out

out:                                              ; preds = %out_dev_unreg, %do.end16
  %err.1 = phi i32 [ %call12, %do.end16 ], [ %err.0, %out_dev_unreg ]
  tail call void @class_unregister(ptr noundef nonnull @ubi_class) #13
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %err.1) #16
  br label %cleanup80

cleanup80:                                        ; preds = %out, %do.end58, %for.end.cleanup80_crit_edge, %if.end.cleanup80_crit_edge, %do.end6
  %retval.0 = phi i32 [ -22, %do.end6 ], [ %err.1, %out ], [ %call8, %if.end.cleanup80_crit_edge ], [ 0, %do.end58 ], [ 0, %for.end.cleanup80_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ubi_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubiblock_exit() #13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @ubi_devices_mutex, i32 noundef 0) #13
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %ubi_num = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ubi_num, align 8
  %call = tail call i32 @ubi_detach_mtd_dev(i32 noundef %5, i32 noundef 1)
  tail call void @mutex_unlock(ptr noundef nonnull @ubi_devices_mutex) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubi_debugfs_exit() #13
  %6 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %6) #13
  tail call void @misc_deregister(ptr noundef nonnull @ubi_ctrl_cdev) #13
  tail call void @class_unregister(ptr noundef nonnull @ubi_class) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubiblock_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_debugfs_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_show(ptr nocapture noundef readnone %class, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.54, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_eba_replace_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_fastmap_destroy_checkmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_attribute_show(ptr nocapture noundef readonly %dev, ptr noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ubi_num = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ubi_num, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubi_devices_lock) #13
  %arrayidx.i = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %do.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body.i:                                        ; preds = %entry
  %ref_count.i = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ref_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %do.end.i, label %do.body.i.if.end_crit_edge, !prof !371

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %6 = tail call i32 @llvm.read_register.i32(metadata !361) #13
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid.i, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 261, i32 noundef %11) #16
  tail call void @dump_stack() #16
  br label %if.end

if.end:                                           ; preds = %do.end.i, %do.body.i.if.end_crit_edge
  %12 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ref_count.i, align 4
  %add.i = add i32 %13, 1
  store i32 %add.i, ptr %ref_count.i, align 4
  %dev.i = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 1
  %call10.i = tail call ptr @get_device(ptr noundef %dev.i) #13
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubi_devices_lock) #13
  %cmp = icmp eq ptr %attr, @dev_eraseblock_size
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %leb_size = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 70
  %14 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %leb_size, align 8
  br label %if.end58.sink.split

if.else:                                          ; preds = %if.end
  %cmp3 = icmp eq ptr %attr, @dev_avail_eraseblocks
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %avail_pebs = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %avail_pebs, align 8
  br label %if.end58.sink.split

if.else6:                                         ; preds = %if.else
  %cmp7 = icmp eq ptr %attr, @dev_total_eraseblocks
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #15
  %good_peb_count = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 63
  %18 = ptrtoint ptr %good_peb_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %good_peb_count, align 4
  br label %if.end58.sink.split

if.else10:                                        ; preds = %if.else6
  %cmp11 = icmp eq ptr %attr, @dev_volumes_count
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #15
  %vol_count = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %vol_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vol_count, align 8
  %sub = add i32 %21, -1
  br label %if.end58.sink.split

if.else14:                                        ; preds = %if.else10
  %cmp15 = icmp eq ptr %attr, @dev_max_ec
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #15
  %max_ec = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 19
  %22 = ptrtoint ptr %max_ec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_ec, align 4
  br label %if.end58.sink.split

if.else18:                                        ; preds = %if.else14
  %cmp19 = icmp eq ptr %attr, @dev_reserved_for_bad
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #15
  %beb_rsvd_pebs = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 11
  %24 = ptrtoint ptr %beb_rsvd_pebs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %beb_rsvd_pebs, align 4
  br label %if.end58.sink.split

if.else22:                                        ; preds = %if.else18
  %cmp23 = icmp eq ptr %attr, @dev_bad_peb_count
  br i1 %cmp23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #15
  %bad_peb_count = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 62
  %26 = ptrtoint ptr %bad_peb_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bad_peb_count, align 8
  br label %if.end58.sink.split

if.else26:                                        ; preds = %if.else22
  %cmp27 = icmp eq ptr %attr, @dev_max_vol_count
  br i1 %cmp27, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #15
  %vtbl_slots = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 15
  %28 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vtbl_slots, align 4
  br label %if.end58.sink.split

if.else30:                                        ; preds = %if.else26
  %cmp31 = icmp eq ptr %attr, @dev_min_io_size
  br i1 %cmp31, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #15
  %min_io_size = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 67
  %30 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %min_io_size, align 4
  br label %if.end58.sink.split

if.else34:                                        ; preds = %if.else30
  %cmp35 = icmp eq ptr %attr, @dev_bgt_enabled
  br i1 %cmp35, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #15
  %thread_enabled = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 57
  %32 = ptrtoint ptr %thread_enabled to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %thread_enabled, align 8
  br label %if.end58.sink.split

if.else38:                                        ; preds = %if.else34
  %cmp39 = icmp eq ptr %attr, @dev_mtd_num
  br i1 %cmp39, label %if.then40, label %if.else42

if.then40:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #15
  %mtd = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 79
  %34 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mtd, align 4
  %index = getelementptr inbounds %struct.mtd_info, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index, align 4
  br label %if.end58.sink.split

if.else42:                                        ; preds = %if.else38
  %cmp43 = icmp eq ptr %attr, @dev_ro_mode
  br i1 %cmp43, label %if.then44, label %if.else42.if.end58_crit_edge

if.else42.if.end58_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then44:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #15
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 69
  %38 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ro_mode, align 4
  br label %if.end58.sink.split

if.end58.sink.split:                              ; preds = %if.then44, %if.then40, %if.then36, %if.then32, %if.then28, %if.then24, %if.then20, %if.then16, %if.then12, %if.then8, %if.then4, %if.then1
  %.sink = phi i32 [ %17, %if.then4 ], [ %sub, %if.then12 ], [ %25, %if.then20 ], [ %29, %if.then28 ], [ %33, %if.then36 ], [ %39, %if.then44 ], [ %37, %if.then40 ], [ %31, %if.then32 ], [ %27, %if.then24 ], [ %23, %if.then16 ], [ %19, %if.then8 ], [ %15, %if.then1 ]
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.54, i32 noundef %.sink)
  br label %if.end58

if.end58:                                         ; preds = %if.end58.sink.split, %if.else42.if.end58_crit_edge
  %ret.0 = phi i32 [ -22, %if.else42.if.end58_crit_edge ], [ %call5, %if.end58.sink.split ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubi_devices_lock) #13
  %40 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ref_count.i, align 4
  %sub.i = add i32 %41, -1
  store i32 %sub.i, ptr %ref_count.i, align 4
  tail call void @put_device(ptr noundef %dev.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end58 ], [ -19, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubi_devices_lock) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mtd_get_device_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_change_vtbl_record(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_resize_volume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_add_volume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_free_volume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_debugfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @open_mtd_device(ptr noundef %mtd_dev) unnamed_addr #5 section ".init.text" align 64 {
entry:
  %endp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #13
  %0 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp, align 4, !annotation !377
  %call = call i32 @simple_strtoul(ptr noundef %mtd_dev, ptr noundef nonnull %endp, i32 noundef 0) #13
  %1 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %endp, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not = icmp ne i8 %4, 0
  %cmp2 = icmp eq ptr %2, %mtd_dev
  %or.cond = or i1 %cmp2, %cmp.not
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call ptr @get_mtd_device_nm(ptr noundef %mtd_dev) #13
  %cmp6 = icmp eq ptr %call4, inttoptr (i32 -19 to ptr)
  br i1 %cmp6, label %if.then8, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = call fastcc ptr @open_mtd_by_chdev(ptr noundef %mtd_dev) #20
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = call ptr @get_mtd_device(ptr noundef null, i32 noundef %call) #13
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8, %if.then.if.end11_crit_edge
  %mtd.0 = phi ptr [ %call9, %if.then8 ], [ %call4, %if.then.if.end11_crit_edge ], [ %call10, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #13
  ret ptr %mtd.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubiblock_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device_nm(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @open_mtd_by_chdev(ptr noundef %mtd_dev) unnamed_addr #5 section ".init.text" align 64 {
entry:
  %path = alloca %struct.path, align 4
  %stat = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #13
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !377
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !377
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat) #13
  %3 = call ptr @memset(ptr %stat, i32 255, i32 144)
  %call = call i32 @kern_path(ptr noundef %mtd_dev, i32 noundef 1, ptr noundef nonnull %path) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @vfs_getattr(ptr noundef nonnull %path, ptr noundef nonnull %stat, i32 noundef 1, i32 noundef 0) #13
  call void @path_put(ptr noundef nonnull %path) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %rdev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 8
  %6 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rdev, align 4
  %shr.mask = and i32 %7, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 94371840, i32 %shr.mask)
  %cmp.not = icmp eq i32 %shr.mask, 94371840
  br i1 %cmp.not, label %lor.lhs.false, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end6
  %mode = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode, align 4
  %10 = and i16 %9, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %10)
  %cmp7 = icmp eq i16 %10, 8192
  %and14 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %or.cond = select i1 %cmp7, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %if.end18, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %and13 = lshr i32 %7, 1
  %div27 = and i32 %and13, 524287
  %call19 = call ptr @get_mtd_device(ptr noundef null, i32 noundef %div27) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %lor.lhs.false.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4, %if.then
  %retval.0 = phi ptr [ %4, %if.then ], [ %5, %if.then4 ], [ %call19, %if.end18 ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubi_mtd_param_parse(ptr noundef %val, ptr nocapture noundef readnone %kp) #0 align 64 {
entry:
  %endp.i = alloca ptr, align 4
  %buf = alloca [64 x i8], align 1
  %pbuf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #13
  %0 = call ptr @memset(ptr %buf, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbuf) #13
  %1 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %pbuf, align 4
  %tobool.not = icmp eq ptr %val, null
  br i1 %tobool.not, label %entry.cleanup86_crit_edge, label %if.end

entry.cleanup86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup86

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @mtd_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %cmp = icmp eq i32 %2, 32
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef 32) #16
  br label %cleanup86

if.end2:                                          ; preds = %if.end
  %call3 = call i32 @strnlen(ptr noundef nonnull %val, i32 noundef 64) #21
  %3 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %call3, label %if.end19 [
    i32 64, label %do.end8
    i32 0, label %do.end16
  ]

do.end8:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull %val, i32 noundef 64) #16
  br label %cleanup86

do.end16:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #16
  br label %cleanup86

if.end19:                                         ; preds = %if.end2
  %call20 = call ptr @strcpy(ptr noundef nonnull %buf, ptr noundef nonnull %val) #21
  %sub = add i32 %call3, -1
  %arrayidx21 = getelementptr [64 x i8], ptr %buf, i32 0, i32 %sub
  %4 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp22 = icmp eq i8 %5, 10
  br i1 %cmp22, label %if.then24, label %if.end19.if.end27_crit_edge

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx21, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end19.if.end27_crit_edge
  %call30 = call ptr @strsep(ptr noundef nonnull %pbuf, ptr noundef nonnull @.str.129) #13
  %call30.1 = call ptr @strsep(ptr noundef nonnull %pbuf, ptr noundef nonnull @.str.129) #13
  %call30.2 = call ptr @strsep(ptr noundef nonnull %pbuf, ptr noundef nonnull @.str.129) #13
  %call30.3 = call ptr @strsep(ptr noundef nonnull %pbuf, ptr noundef nonnull @.str.129) #13
  %7 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pbuf, align 4
  %tobool32.not = icmp eq ptr %8, null
  br i1 %tobool32.not, label %if.end39, label %do.end36

do.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull %val) #16
  br label %cleanup86

if.end39:                                         ; preds = %if.end27
  %9 = load i32, ptr @mtd_devs, align 4
  %arrayidx40 = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %9
  %call43 = call ptr @strcpy(ptr noundef %arrayidx40, ptr noundef %call30) #21
  %tobool45.not = icmp eq ptr %call30.1, null
  br i1 %tobool45.not, label %if.end39.if.end54_crit_edge, label %if.then46

if.end39.if.end54_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then46:                                        ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp.i) #13
  %10 = ptrtoint ptr %endp.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp.i, align 4, !annotation !377
  %call.i = call i32 @simple_strtoul(ptr noundef nonnull %call30.1, ptr noundef nonnull %endp.i, i32 noundef 0) #13
  %11 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %endp.i, align 4
  %cmp.i = icmp eq ptr %12, %call30.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %call.i)
  %cmp1.i = icmp ugt i32 %call.i, 2147483646
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp1.i
  br i1 %or.cond.i, label %if.then46.bytes_str_to_int.exit.thread_crit_edge, label %if.end.i

if.then46.bytes_str_to_int.exit.thread_crit_edge: ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %bytes_str_to_int.exit.thread

if.end.i:                                         ; preds = %if.then46
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %14, label %if.end.i.bytes_str_to_int.exit.thread_crit_edge [
    i8 71, label %sw.bb.i
    i8 77, label %if.end.i.sw.bb3.i_crit_edge
    i8 75, label %if.end.i.bytes_str_to_int.exit_crit_edge
    i8 0, label %bytes_str_to_int.exit.thread123
  ]

if.end.i.bytes_str_to_int.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bytes_str_to_int.exit

if.end.i.sw.bb3.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3.i

if.end.i.bytes_str_to_int.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bytes_str_to_int.exit.thread

bytes_str_to_int.exit.thread123:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #13
  %vid_hdr_offs125 = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %9, i32 2
  %16 = ptrtoint ptr %vid_hdr_offs125 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i, ptr %vid_hdr_offs125, align 4
  br label %if.end54

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul.i = shl i32 %call.i, 10
  br label %sw.bb3.i

sw.bb3.i:                                         ; preds = %sw.bb.i, %if.end.i.sw.bb3.i_crit_edge
  %result.0.i = phi i32 [ %call.i, %if.end.i.sw.bb3.i_crit_edge ], [ %mul.i, %sw.bb.i ]
  %mul4.i = shl i32 %result.0.i, 10
  br label %bytes_str_to_int.exit

bytes_str_to_int.exit.thread:                     ; preds = %if.end.i.bytes_str_to_int.exit.thread_crit_edge, %if.then46.bytes_str_to_int.exit.thread_crit_edge
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull %call30.1) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #13
  %vid_hdr_offs121 = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %9, i32 2
  %17 = ptrtoint ptr %vid_hdr_offs121 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -22, ptr %vid_hdr_offs121, align 4
  br label %cleanup86

bytes_str_to_int.exit:                            ; preds = %sw.bb3.i, %if.end.i.bytes_str_to_int.exit_crit_edge
  %result.1.i = phi i32 [ %call.i, %if.end.i.bytes_str_to_int.exit_crit_edge ], [ %mul4.i, %sw.bb3.i ]
  %mul6.i = shl i32 %result.1.i, 10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #13
  %vid_hdr_offs = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %9, i32 2
  %18 = ptrtoint ptr %vid_hdr_offs to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul6.i, ptr %vid_hdr_offs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul6.i)
  %cmp49 = icmp slt i32 %mul6.i, 0
  br i1 %cmp49, label %bytes_str_to_int.exit.cleanup86_crit_edge, label %bytes_str_to_int.exit.if.end54_crit_edge

bytes_str_to_int.exit.if.end54_crit_edge:         ; preds = %bytes_str_to_int.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

bytes_str_to_int.exit.cleanup86_crit_edge:        ; preds = %bytes_str_to_int.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup86

if.end54:                                         ; preds = %bytes_str_to_int.exit.if.end54_crit_edge, %bytes_str_to_int.exit.thread123, %if.end39.if.end54_crit_edge
  %tobool56.not = icmp eq ptr %call30.2, null
  br i1 %tobool56.not, label %if.end54.if.end67_crit_edge, label %if.then57

if.end54.if.end67_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.then57:                                        ; preds = %if.end54
  %max_beb_per1024 = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %9, i32 3
  %call58 = call i32 @kstrtoint(ptr noundef nonnull %call30.2, i32 noundef 10, ptr noundef %max_beb_per1024) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then57.if.end67_crit_edge, label %do.end63

if.then57.if.end67_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

do.end63:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull %call30.2) #16
  br label %cleanup86

if.end67:                                         ; preds = %if.then57.if.end67_crit_edge, %if.end54.if.end67_crit_edge
  %tobool69.not = icmp eq ptr %call30.3, null
  %ubi_num84 = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %9, i32 1
  br i1 %tobool69.not, label %if.else, label %if.then70

if.then70:                                        ; preds = %if.end67
  %call72 = call i32 @kstrtoint(ptr noundef nonnull %call30.3, i32 noundef 10, ptr noundef %ubi_num84) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then70.if.end85_crit_edge, label %do.end77

if.then70.if.end85_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

do.end77:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull %call30.3) #16
  br label %cleanup86

if.else:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %ubi_num84 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %ubi_num84, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else, %if.then70.if.end85_crit_edge
  %20 = load i32, ptr @mtd_devs, align 4
  %add = add i32 %20, 1
  store i32 %add, ptr @mtd_devs, align 4
  br label %cleanup86

cleanup86:                                        ; preds = %if.end85, %do.end77, %do.end63, %bytes_str_to_int.exit.cleanup86_crit_edge, %bytes_str_to_int.exit.thread, %do.end36, %do.end16, %do.end8, %do.end, %entry.cleanup86_crit_edge
  %retval.3 = phi i32 [ -22, %do.end ], [ -22, %do.end8 ], [ 0, %do.end16 ], [ -22, %do.end36 ], [ 0, %if.end85 ], [ -22, %entry.cleanup86_crit_edge ], [ %mul6.i, %bytes_str_to_int.exit.cleanup86_crit_edge ], [ -22, %do.end63 ], [ -22, %do.end77 ], [ -22, %bytes_str_to_int.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbuf) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #13
  ret i32 %retval.3
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold }
attributes #21 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !110, !112, !114, !115, !117, !119, !120, !121, !122, !124, !126, !128, !129, !131, !133, !135, !137, !139, !140, !142, !144, !146, !148, !149, !151, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !205, !206, !208, !209, !211, !213, !215, !216, !218, !219, !221, !222, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247, !248, !250, !251, !253, !255, !257, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !277, !278, !280, !281, !283, !285, !287, !288, !289, !290, !292, !294, !295, !296, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !314, !316, !318, !320, !322, !323, !324, !326, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !341, !342, !343, !345, !346, !347, !349, !350, !351, !353, !354, !355, !356, !358, !359, !360}
!llvm.named.register.sp = !{!361}
!llvm.module.flags = !{!362, !363, !364, !365, !366, !367, !368, !369}
!llvm.ident = !{!370}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/ubi/build.c", i32 89, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ubi_devices_mutex, !1, !"ubi_devices_mutex", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/ubi/build.c", i32 111, i32 11}
!6 = !{ptr @ubi_class, !7, !"ubi_class", i1 false, i1 false}
!7 = !{!"../drivers/mtd/ubi/build.c", i32 110, i32 14}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/ubi/build.c", i32 170, i32 17}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/ubi/build.c", i32 261, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ubi_get_device._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @ubi_get_device._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/ubi/build.c", i32 298, i32 4}
!18 = !{ptr @ubi_get_by_major._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ubi_get_by_major._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/ubi/build.c", i32 845, i32 4}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ubi_attach_mtd_dev._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @ubi_attach_mtd_dev._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/ubi/build.c", i32 860, i32 3}
!27 = !{ptr @ubi_attach_mtd_dev._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ubi_attach_mtd_dev._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/ubi/build.c", i32 874, i32 3}
!31 = !{ptr @ubi_attach_mtd_dev._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ubi_attach_mtd_dev._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/ubi/build.c", i32 885, i32 4}
!35 = !{ptr @ubi_attach_mtd_dev._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ubi_attach_mtd_dev._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/ubi/build.c", i32 895, i32 4}
!39 = !{ptr @ubi_attach_mtd_dev._entry.19, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ubi_attach_mtd_dev._entry_ptr.21, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/ubi/build.c", i32 934, i32 16}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/ubi/build.c", i32 939, i32 15}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/ubi/build.c", i32 940, i32 15}
!47 = !{ptr @ubi_attach_mtd_dev.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/mtd/ubi/build.c", i32 945, i32 2}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ubi_attach_mtd_dev.__key.26, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/mtd/ubi/build.c", i32 946, i32 2}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ubi_attach_mtd_dev.__key.28, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/mtd/ubi/build.c", i32 947, i32 2}
!55 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ubi_attach_mtd_dev.__key.30, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/mtd/ubi/build.c", i32 948, i32 2}
!58 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ubi_attach_mtd_dev.__key.32, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/mtd/ubi/build.c", i32 949, i32 2}
!61 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ubi_attach_mtd_dev.__key.34, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/mtd/ubi/build.c", i32 950, i32 2}
!64 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/ubi/build.c", i32 952, i32 15}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/ubi/build.c", i32 971, i32 16}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/ubi/build.c", i32 993, i32 20}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/ubi/build.c", i32 996, i32 16}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mtd/ubi/build.c", i32 1001, i32 15}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/ubi/build.c", i32 1003, i32 15}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/ubi/build.c", i32 1005, i32 15}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/ubi/build.c", i32 1007, i32 15}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mtd/ubi/build.c", i32 1009, i32 15}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/ubi/build.c", i32 1011, i32 15}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mtd/ubi/build.c", i32 1014, i32 15}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/ubi/build.c", i32 1017, i32 15}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/ubi/build.c", i32 1081, i32 16}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mtd/ubi/build.c", i32 1087, i32 2}
!93 = !{ptr @ubi_detach_mtd_dev._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ubi_detach_mtd_dev._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/ubi/build.c", i32 1089, i32 15}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mtd/ubi/build.c", i32 1116, i32 15}
!99 = !{ptr @__initcall__kmod_ubi__251_1305_ubi_init7, !100, !"__initcall__kmod_ubi__251_1305_ubi_init7", i1 false, i1 false}
!100 = !{!"../drivers/mtd/ubi/build.c", i32 1305, i32 1}
!101 = !{ptr @__exitcall_ubi_exit, !102, !"__exitcall_ubi_exit", i1 false, i1 false}
!102 = !{!"../drivers/mtd/ubi/build.c", i32 1324, i32 1}
!103 = !{ptr @__param_mtd, !104, !"__param_mtd", i1 false, i1 false}
!104 = !{!"../drivers/mtd/ubi/build.c", i32 1453, i32 1}
!105 = !{ptr @__UNIQUE_ID_mtd252, !106, !"__UNIQUE_ID_mtd252", i1 false, i1 false}
!106 = !{!"../drivers/mtd/ubi/build.c", i32 1454, i32 1}
!107 = !{ptr @__param_fm_autoconvert, !108, !"__param_fm_autoconvert", i1 false, i1 false}
!108 = !{!"../drivers/mtd/ubi/build.c", i32 1468, i32 1}
!109 = !{ptr @__UNIQUE_ID_fm_autoconverttype253, !108, !"__UNIQUE_ID_fm_autoconverttype253", i1 false, i1 false}
!110 = !{ptr @__UNIQUE_ID_fm_autoconvert254, !111, !"__UNIQUE_ID_fm_autoconvert254", i1 false, i1 false}
!111 = !{!"../drivers/mtd/ubi/build.c", i32 1469, i32 1}
!112 = !{ptr @__param_fm_debug, !113, !"__param_fm_debug", i1 false, i1 false}
!113 = !{!"../drivers/mtd/ubi/build.c", i32 1470, i32 1}
!114 = !{ptr @__UNIQUE_ID_fm_debugtype255, !113, !"__UNIQUE_ID_fm_debugtype255", i1 false, i1 false}
!115 = !{ptr @__UNIQUE_ID_fm_debug256, !116, !"__UNIQUE_ID_fm_debug256", i1 false, i1 false}
!116 = !{!"../drivers/mtd/ubi/build.c", i32 1471, i32 1}
!117 = !{ptr @__UNIQUE_ID_version257, !118, !"__UNIQUE_ID_version257", i1 false, i1 false}
!118 = !{!"../drivers/mtd/ubi/build.c", i32 1473, i32 1}
!119 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @__modver_attr, !118, !"__modver_attr", i1 false, i1 false}
!122 = !{ptr @__UNIQUE_ID_description258, !123, !"__UNIQUE_ID_description258", i1 false, i1 false}
!123 = !{!"../drivers/mtd/ubi/build.c", i32 1474, i32 1}
!124 = !{ptr @__UNIQUE_ID_author259, !125, !"__UNIQUE_ID_author259", i1 false, i1 false}
!125 = !{!"../drivers/mtd/ubi/build.c", i32 1475, i32 1}
!126 = !{ptr @__UNIQUE_ID_file260, !127, !"__UNIQUE_ID_file260", i1 false, i1 false}
!127 = !{!"../drivers/mtd/ubi/build.c", i32 1476, i32 1}
!128 = !{ptr @__UNIQUE_ID_license261, !127, !"__UNIQUE_ID_license261", i1 false, i1 false}
!129 = !{ptr @fm_autoconvert, !130, !"fm_autoconvert", i1 false, i1 false}
!130 = !{!"../drivers/mtd/ubi/build.c", i32 71, i32 13}
!131 = !{ptr @fm_debug, !132, !"fm_debug", i1 false, i1 false}
!132 = !{!"../drivers/mtd/ubi/build.c", i32 72, i32 13}
!133 = !{ptr @ubi_wl_entry_slab, !134, !"ubi_wl_entry_slab", i1 false, i1 false}
!134 = !{!"../drivers/mtd/ubi/build.c", i32 76, i32 20}
!135 = !{ptr @ubi_devices, !136, !"ubi_devices", i1 false, i1 false}
!136 = !{!"../drivers/mtd/ubi/build.c", i32 86, i32 27}
!137 = !{ptr @ubi_class_groups, !138, !"ubi_class_groups", i1 false, i1 false}
!138 = !{!"../drivers/mtd/ubi/build.c", i32 107, i32 1}
!139 = !{ptr @ubi_class_group, !138, !"ubi_class_group", i1 false, i1 false}
!140 = !{ptr @ubi_class_attrs, !141, !"ubi_class_attrs", i1 false, i1 false}
!141 = !{!"../drivers/mtd/ubi/build.c", i32 103, i32 26}
!142 = !{ptr @class_attr_version, !143, !"class_attr_version", i1 false, i1 false}
!143 = !{!"../drivers/mtd/ubi/build.c", i32 101, i32 8}
!144 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mtd/ubi/build.c", i32 99, i32 22}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mtd/ubi/build.c", i32 92, i32 8}
!148 = !{ptr @ubi_devices_lock, !147, !"ubi_devices_lock", i1 false, i1 false}
!149 = !{ptr @ubi_dev_groups, !150, !"ubi_dev_groups", i1 false, i1 false}
!150 = !{!"../drivers/mtd/ubi/build.c", i32 404, i32 1}
!151 = !{ptr @ubi_dev_group, !150, !"ubi_dev_group", i1 false, i1 false}
!152 = !{ptr @ubi_dev_attrs, !153, !"ubi_dev_attrs", i1 false, i1 false}
!153 = !{!"../drivers/mtd/ubi/build.c", i32 389, i32 26}
!154 = !{ptr @.str.56, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mtd/ubi/build.c", i32 121, i32 2}
!156 = !{ptr @dev_eraseblock_size, !157, !"dev_eraseblock_size", i1 false, i1 false}
!157 = !{!"../drivers/mtd/ubi/build.c", i32 120, i32 32}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mtd/ubi/build.c", i32 123, i32 2}
!160 = !{ptr @dev_avail_eraseblocks, !161, !"dev_avail_eraseblocks", i1 false, i1 false}
!161 = !{!"../drivers/mtd/ubi/build.c", i32 122, i32 32}
!162 = !{ptr @.str.58, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mtd/ubi/build.c", i32 125, i32 2}
!164 = !{ptr @dev_total_eraseblocks, !165, !"dev_total_eraseblocks", i1 false, i1 false}
!165 = !{!"../drivers/mtd/ubi/build.c", i32 124, i32 32}
!166 = !{ptr @.str.59, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/mtd/ubi/build.c", i32 127, i32 2}
!168 = !{ptr @dev_volumes_count, !169, !"dev_volumes_count", i1 false, i1 false}
!169 = !{!"../drivers/mtd/ubi/build.c", i32 126, i32 32}
!170 = !{ptr @.str.60, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mtd/ubi/build.c", i32 129, i32 2}
!172 = !{ptr @dev_max_ec, !173, !"dev_max_ec", i1 false, i1 false}
!173 = !{!"../drivers/mtd/ubi/build.c", i32 128, i32 32}
!174 = !{ptr @.str.61, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mtd/ubi/build.c", i32 131, i32 2}
!176 = !{ptr @dev_reserved_for_bad, !177, !"dev_reserved_for_bad", i1 false, i1 false}
!177 = !{!"../drivers/mtd/ubi/build.c", i32 130, i32 32}
!178 = !{ptr @.str.62, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/mtd/ubi/build.c", i32 133, i32 2}
!180 = !{ptr @dev_bad_peb_count, !181, !"dev_bad_peb_count", i1 false, i1 false}
!181 = !{!"../drivers/mtd/ubi/build.c", i32 132, i32 32}
!182 = !{ptr @.str.63, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mtd/ubi/build.c", i32 135, i32 2}
!184 = !{ptr @dev_max_vol_count, !185, !"dev_max_vol_count", i1 false, i1 false}
!185 = !{!"../drivers/mtd/ubi/build.c", i32 134, i32 32}
!186 = !{ptr @.str.64, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/mtd/ubi/build.c", i32 137, i32 2}
!188 = !{ptr @dev_min_io_size, !189, !"dev_min_io_size", i1 false, i1 false}
!189 = !{!"../drivers/mtd/ubi/build.c", i32 136, i32 32}
!190 = !{ptr @.str.65, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/mtd/ubi/build.c", i32 139, i32 2}
!192 = !{ptr @dev_bgt_enabled, !193, !"dev_bgt_enabled", i1 false, i1 false}
!193 = !{!"../drivers/mtd/ubi/build.c", i32 138, i32 32}
!194 = !{ptr @.str.66, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/mtd/ubi/build.c", i32 141, i32 2}
!196 = !{ptr @dev_mtd_num, !197, !"dev_mtd_num", i1 false, i1 false}
!197 = !{!"../drivers/mtd/ubi/build.c", i32 140, i32 32}
!198 = !{ptr @.str.67, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/mtd/ubi/build.c", i32 143, i32 2}
!200 = !{ptr @dev_ro_mode, !201, !"dev_ro_mode", i1 false, i1 false}
!201 = !{!"../drivers/mtd/ubi/build.c", i32 142, i32 32}
!202 = !{ptr @.str.68, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/mtd/ubi/build.c", i32 598, i32 2}
!204 = !{ptr @.str.69, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @io_init.__UNIQUE_ID_ddebug233, !203, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!206 = !{ptr @.str.70, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/mtd/ubi/build.c", i32 599, i32 2}
!208 = !{ptr @io_init.__UNIQUE_ID_ddebug234, !207, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!209 = !{ptr @.str.71, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/mtd/ubi/build.c", i32 611, i32 16}
!211 = !{ptr @.str.72, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/mtd/ubi/build.c", i32 644, i32 16}
!213 = !{ptr @io_init._entry, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/mtd/ubi/build.c", i32 649, i32 2}
!215 = !{ptr @io_init._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @io_init._entry.73, !217, !"_entry", i1 false, i1 false}
!217 = !{!"../drivers/mtd/ubi/build.c", i32 650, i32 2}
!218 = !{ptr @io_init._entry_ptr.74, !217, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @io_init._entry.75, !220, !"_entry", i1 false, i1 false}
!220 = !{!"../drivers/mtd/ubi/build.c", i32 651, i32 2}
!221 = !{ptr @io_init._entry_ptr.76, !220, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.77, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/mtd/ubi/build.c", i32 661, i32 16}
!224 = !{ptr @.str.78, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/mtd/ubi/build.c", i32 670, i32 2}
!226 = !{ptr @io_init.__UNIQUE_ID_ddebug235, !225, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!227 = !{ptr @.str.79, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/mtd/ubi/build.c", i32 671, i32 2}
!229 = !{ptr @io_init.__UNIQUE_ID_ddebug236, !228, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!230 = !{ptr @.str.80, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/mtd/ubi/build.c", i32 672, i32 2}
!232 = !{ptr @io_init.__UNIQUE_ID_ddebug237, !231, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!233 = !{ptr @.str.81, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/mtd/ubi/build.c", i32 673, i32 2}
!235 = !{ptr @io_init.__UNIQUE_ID_ddebug238, !234, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!236 = !{ptr @.str.82, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/mtd/ubi/build.c", i32 674, i32 2}
!238 = !{ptr @io_init.__UNIQUE_ID_ddebug239, !237, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!239 = !{ptr @.str.83, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/mtd/ubi/build.c", i32 691, i32 2}
!241 = !{ptr @io_init.__UNIQUE_ID_ddebug240, !240, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!242 = !{ptr @.str.84, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/mtd/ubi/build.c", i32 692, i32 2}
!244 = !{ptr @io_init.__UNIQUE_ID_ddebug241, !243, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!245 = !{ptr @.str.85, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/mtd/ubi/build.c", i32 693, i32 2}
!247 = !{ptr @io_init.__UNIQUE_ID_ddebug242, !246, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!248 = !{ptr @.str.86, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/mtd/ubi/build.c", i32 694, i32 2}
!250 = !{ptr @io_init.__UNIQUE_ID_ddebug243, !249, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!251 = !{ptr @.str.87, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/mtd/ubi/build.c", i32 698, i32 16}
!253 = !{ptr @.str.88, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/mtd/ubi/build.c", i32 708, i32 16}
!255 = !{ptr @.str.89, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/mtd/ubi/build.c", i32 720, i32 2}
!257 = !{ptr @io_init.__UNIQUE_ID_ddebug244, !256, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!258 = !{ptr @.str.90, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/mtd/ubi/build.c", i32 728, i32 17}
!260 = !{ptr @.str.91, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/mtd/ubi/build.c", i32 735, i32 16}
!262 = !{ptr @.str.92, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/mtd/ubi/build.c", i32 768, i32 17}
!264 = !{ptr @.str.93, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/mtd/ubi/build.c", i32 789, i32 17}
!266 = !{ptr @.str.94, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/mtd/ubi/build.c", i32 796, i32 17}
!268 = !{ptr @.str.95, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/mtd/ubi/build.c", i32 803, i32 15}
!270 = !{ptr @.str.96, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/mtd/ubi/build.c", i32 442, i32 25}
!272 = !{ptr @.str.97, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/mtd/ubi/build.c", i32 454, i32 16}
!274 = !{ptr @.str.98, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/mtd/ubi/build.c", i32 460, i32 2}
!276 = !{ptr @uif_init._entry, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @uif_init._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.99, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/mtd/ubi/build.c", i32 462, i32 2}
!280 = !{ptr @uif_init.__UNIQUE_ID_ddebug232, !279, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!281 = !{ptr @.str.100, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/mtd/ubi/build.c", i32 474, i32 18}
!283 = !{ptr @.str.101, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/mtd/ubi/build.c", i32 486, i32 15}
!285 = !{ptr @.str.102, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/mtd/ubi/build.c", i32 1203, i32 3}
!287 = !{ptr @.str.103, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @ubi_init._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @ubi_init._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @ubi_init.__key, !291, !"__key", i1 false, i1 false}
!291 = !{!"../drivers/mtd/ubi/build.c", i32 1209, i32 8}
!292 = !{ptr @.str.105, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/mtd/ubi/build.c", i32 1215, i32 3}
!294 = !{ptr @ubi_init._entry.104, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @ubi_init._entry_ptr.106, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.107, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/mtd/ubi/build.c", i32 1219, i32 40}
!298 = !{ptr @.str.109, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/mtd/ubi/build.c", i32 1242, i32 4}
!300 = !{ptr @ubi_init._entry.108, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @ubi_init._entry_ptr.110, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.112, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/mtd/ubi/build.c", i32 1255, i32 4}
!304 = !{ptr @ubi_init._entry.111, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @ubi_init._entry_ptr.113, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.115, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/mtd/ubi/build.c", i32 1279, i32 3}
!308 = !{ptr @ubi_init._entry.114, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @ubi_init._entry_ptr.116, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.118, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/mtd/ubi/build.c", i32 1302, i32 2}
!312 = !{ptr @ubi_init._entry.117, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @ubi_init._entry_ptr.119, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @mtd_devs, !315, !"mtd_devs", i1 false, i1 false}
!315 = !{!"../drivers/mtd/ubi/build.c", i32 65, i32 12}
!316 = !{ptr @mtd_dev_param, !317, !"mtd_dev_param", i1 false, i1 false}
!317 = !{!"../drivers/mtd/ubi/build.c", i32 68, i32 29}
!318 = !{ptr @.str.120, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/mtd/ubi/build.c", i32 81, i32 10}
!320 = !{ptr @ubi_ctrl_cdev, !321, !"ubi_ctrl_cdev", i1 false, i1 false}
!321 = !{!"../drivers/mtd/ubi/build.c", i32 79, i32 26}
!322 = !{ptr @__param_str_mtd, !104, !"__param_str_mtd", i1 false, i1 false}
!323 = !{ptr @__param_ops_mtd, !104, !"__param_ops_mtd", i1 false, i1 false}
!324 = !{ptr @.str.121, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/mtd/ubi/build.c", i32 1384, i32 3}
!326 = !{ptr @.str.122, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @ubi_mtd_param_parse._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @ubi_mtd_param_parse._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.124, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/mtd/ubi/build.c", i32 1391, i32 3}
!331 = !{ptr @ubi_mtd_param_parse._entry.123, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @ubi_mtd_param_parse._entry_ptr.125, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.127, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/mtd/ubi/build.c", i32 1397, i32 3}
!335 = !{ptr @ubi_mtd_param_parse._entry.126, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @ubi_mtd_param_parse._entry_ptr.128, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.129, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/mtd/ubi/build.c", i32 1408, i32 29}
!339 = !{ptr @.str.131, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/mtd/ubi/build.c", i32 1411, i32 3}
!341 = !{ptr @ubi_mtd_param_parse._entry.130, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @ubi_mtd_param_parse._entry_ptr.132, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.134, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/mtd/ubi/build.c", i32 1431, i32 4}
!345 = !{ptr @ubi_mtd_param_parse._entry.133, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @ubi_mtd_param_parse._entry_ptr.135, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.137, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/mtd/ubi/build.c", i32 1442, i32 4}
!349 = !{ptr @ubi_mtd_param_parse._entry.136, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @ubi_mtd_param_parse._entry_ptr.138, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.139, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/mtd/ubi/build.c", i32 1340, i32 3}
!353 = !{ptr @.str.140, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @bytes_str_to_int._entry, !352, !"_entry", i1 false, i1 false}
!355 = !{ptr @bytes_str_to_int._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @bytes_str_to_int._entry.141, !357, !"_entry", i1 false, i1 false}
!357 = !{!"../drivers/mtd/ubi/build.c", i32 1357, i32 3}
!358 = !{ptr @bytes_str_to_int._entry_ptr.142, !357, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @__param_str_fm_autoconvert, !108, !"__param_str_fm_autoconvert", i1 false, i1 false}
!360 = !{ptr @__param_str_fm_debug, !113, !"__param_str_fm_debug", i1 false, i1 false}
!361 = !{!"sp"}
!362 = !{i32 1, !"wchar_size", i32 2}
!363 = !{i32 1, !"min_enum_size", i32 4}
!364 = !{i32 8, !"branch-target-enforcement", i32 0}
!365 = !{i32 8, !"sign-return-address", i32 0}
!366 = !{i32 8, !"sign-return-address-all", i32 0}
!367 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!368 = !{i32 7, !"uwtable", i32 1}
!369 = !{i32 7, !"frame-pointer", i32 2}
!370 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!371 = !{!"branch_weights", i32 1, i32 2000}
!372 = !{!"branch_weights", i32 2000, i32 1}
!373 = !{i64 2148227954, i64 2148228234, i64 2148228568, i64 2148228902}
!374 = !{i8 0, i8 2}
!375 = !{i64 2148994907, i64 2148994912, i64 2148994925, i64 2148994969, i64 2148995003, i64 2148995024}
!376 = !{i32 0, i32 33}
!377 = !{!"auto-init"}
