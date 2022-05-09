; ModuleID = '/llk/IR_all_yes/drivers/mtd/ubi/vmt.c_pt.bc'
source_filename = "../drivers/mtd/ubi/vmt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ubi_vtbl_record = type { i32, i32, i32, i8, i8, i16, [128 x i8], i8, [23 x i8], i32 }
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ubi_fm_pool = type { [256 x i32], i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubi_debug_info = type { i8, i32, i32, i32, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubi_mkvol_req = type { i32, i32, i64, i8, i8, i16, [4 x i8], [128 x i8] }
%struct.ubi_volume = type { %struct.device, %struct.cdev, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, [128 x i8], i32, i32, i64, i64, ptr, ptr, i8, ptr }
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
%struct.ubi_volume_desc = type { ptr, i32 }

@ubi_class = external dso_local global %struct.class, align 4
@volume_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @volume_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ubi_create_volume.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ubi\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubi_create_volume\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mtd/ubi/vmt.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UBI DBG gen (pid %d): search for vacant volume ID\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"out of volume IDs\00", [46 x i8] zeroinitializer }, align 32
@ubi_create_volume.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"UBI DBG gen (pid %d): create device %d, volume %d, %llu bytes, type %d, name %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"volume %d already exists\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"volume \22%s\22 exists (ID %d)\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"not enough PEBs, only %d available\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%d PEBs are corrupted and not used\00", [61 x i8] zeroinitializer }, align 32
@ubi_vol_cdev_operations = external dso_local constant %struct.file_operations, align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_%d\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cannot add device\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot create volume %d, error %d\00", [62 x i8] zeroinitializer }, align 32
@ubi_remove_volume.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubi_remove_volume\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UBI DBG gen (pid %d): remove device %d, volume %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ubi_remove_volume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@ubi_remove_volume._entry_ptr = internal global ptr @ubi_remove_volume._entry, section ".printk_index", align 4
@ubi_remove_volume._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_remove_volume._entry_ptr.17 = internal global ptr @ubi_remove_volume._entry.16, section ".printk_index", align 4
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot remove volume %d, error %d\00", [62 x i8] zeroinitializer }, align 32
@ubi_resize_volume.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubi_resize_volume\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"UBI DBG gen (pid %d): re-size device %d, volume %d to from %d to %d PEBs\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"too small size %d, %d LEBs contain data\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"not enough PEBs: requested %d, available %d\00", [52 x i8] zeroinitializer }, align 32
@ubi_add_volume.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ubi_add_volume\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UBI DBG gen (pid %d): add volume %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"cannot add character device for volume %d, error %d\00", [44 x i8] zeroinitializer }, align 32
@ubi_free_volume.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ubi_free_volume\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"UBI DBG gen (pid %d): free volume %d\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@volume_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @volume_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@volume_dev_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @attr_vol_reserved_ebs, ptr @attr_vol_type, ptr @attr_vol_name, ptr @attr_vol_corrupted, ptr @attr_vol_alignment, ptr @attr_vol_usable_eb_size, ptr @attr_vol_data_bytes, ptr @attr_vol_upd_marker, ptr null], [60 x i8] zeroinitializer }, align 32
@attr_vol_reserved_ebs = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vol_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_vol_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vol_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_vol_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vol_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_vol_corrupted = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vol_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_vol_alignment = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vol_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_vol_usable_eb_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vol_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_vol_data_bytes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vol_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_vol_upd_marker = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vol_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reserved_ebs\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dynamic\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"static\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@vol_attribute_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.34, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vol_attribute_show\00", [45 x i8] zeroinitializer }, align 32
@vol_attribute_show._entry_ptr = internal global ptr @vol_attribute_show._entry, section ".printk_index", align 4
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"corrupted\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alignment\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usable_eb_size\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data_bytes\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"upd_marker\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no volume info, but volume exists\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"negative values\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad alignment\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"alignment is not multiple of min I/O unit\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bad data_pad, has to be %lld\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bad vol_type\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"update marker and corrupted simultaneously\00", [53 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"too large reserved_pebs\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad usable_leb_size, has to be %lld\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"too long volume name, max is %d\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad name_len %lld\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"corrupted dynamic volume\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bad used_ebs\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad last_eb_bytes\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bad used_bytes\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bad skip_check\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"volume info is different\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"self-check failed for volume %d\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.60 = private unnamed_addr constant [18 x i8] c"volume_dev_groups\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 170, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 178, i32 17 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 185, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 192, i32 16 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 201, i32 17 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 213, i32 16 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 216, i32 17 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 275, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 278, i32 16 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 326, i32 15 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 346, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 347, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 348, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 394, i32 15 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 423, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 428, i32 16 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 454, i32 17 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 580, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 588, i32 16 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 621, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"volume_dev_group\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 121, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"volume_dev_attrs\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 110, i32 26 }
@___asan_gen_.153 = private unnamed_addr constant [22 x i8] c"attr_vol_reserved_ebs\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 25, i32 32 }
@___asan_gen_.156 = private unnamed_addr constant [14 x i8] c"attr_vol_type\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 27, i32 32 }
@___asan_gen_.159 = private unnamed_addr constant [14 x i8] c"attr_vol_name\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 29, i32 32 }
@___asan_gen_.162 = private unnamed_addr constant [19 x i8] c"attr_vol_corrupted\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 31, i32 32 }
@___asan_gen_.165 = private unnamed_addr constant [19 x i8] c"attr_vol_alignment\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 33, i32 32 }
@___asan_gen_.168 = private unnamed_addr constant [24 x i8] c"attr_vol_usable_eb_size\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 35, i32 32 }
@___asan_gen_.171 = private unnamed_addr constant [20 x i8] c"attr_vol_data_bytes\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 37, i32 32 }
@___asan_gen_.174 = private unnamed_addr constant [20 x i8] c"attr_vol_upd_marker\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 39, i32 32 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 26, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 76, i32 22 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 81, i32 9 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 83, i32 9 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 84, i32 22 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 94, i32 22 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 104, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 28, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 30, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 32, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 34, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 36, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 38, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 40, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 649, i32 17 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 658, i32 16 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 662, i32 16 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 668, i32 16 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 674, i32 16 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 680, i32 16 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 685, i32 16 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 690, i32 16 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 696, i32 16 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 701, i32 16 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 708, i32 16 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 715, i32 17 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 719, i32 17 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 723, i32 17 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 727, i32 17 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 732, i32 17 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 765, i32 16 }
@___asan_gen_.273 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.274 = private constant [25 x i8] c"../drivers/mtd/ubi/vmt.c\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 773, i32 15 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @ubi_remove_volume._entry, ptr @ubi_remove_volume._entry.16, ptr @ubi_remove_volume._entry_ptr, ptr @ubi_remove_volume._entry_ptr.17, ptr @vol_attribute_show._entry, ptr @vol_attribute_show._entry_ptr, ptr @volume_dev_groups, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @volume_dev_group, ptr @volume_dev_attrs, ptr @attr_vol_reserved_ebs, ptr @attr_vol_type, ptr @attr_vol_name, ptr @attr_vol_corrupted, ptr @attr_vol_alignment, ptr @attr_vol_usable_eb_size, ptr @attr_vol_data_bytes, ptr @attr_vol_upd_marker, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @volume_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_remove_volume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_remove_volume._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @volume_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @volume_dev_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_vol_reserved_ebs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_vol_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_vol_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_vol_corrupted to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_vol_alignment to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_vol_usable_eb_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_vol_data_bytes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_vol_upd_marker to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vol_attribute_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_create_volume(ptr noundef %ubi, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %vtbl_rec = alloca %struct.ubi_vtbl_record, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %req, align 1
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %vtbl_rec) #8
  %2 = call ptr @memset(ptr %vtbl_rec, i32 255, i32 172)
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %3 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1328) #11
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i) #8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %6 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vol_release, ptr %release, align 4
  %dev6 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 1
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev6, ptr %parent, align 8
  %class = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 33
  %8 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ubi_class, ptr %class, align 4
  %groups = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 34
  %9 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @volume_dev_groups, ptr %groups, align 8
  %flags = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %if.end4.if.end12_crit_edge, label %if.then11

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %skip_check = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 25
  %13 = ptrtoint ptr %skip_check to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %skip_check, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %skip_check, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end4.if.end12_crit_edge
  %volumes_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %do.body, label %if.end12.do.body33_crit_edge

if.end12.do.body33_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body33

do.body:                                          ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_create_volume.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_create_volume, %if.then19)) #8
          to label %do.end [label %if.then19], !srcloc !153

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 @llvm.read_register.i32(metadata !143) #8
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_create_volume.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.3, i32 noundef %19) #8
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body
  %vtbl_slots = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  %20 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vtbl_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp22421 = icmp sgt i32 %21, 0
  br i1 %cmp22421, label %do.end.for.body_crit_edge, label %do.end.if.then29_crit_edge

do.end.if.then29_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.0422 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %i.0422
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %tobool24.not = icmp eq ptr %23, null
  br i1 %tobool24.not, label %if.end30, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0422, 1
  %exitcond.not = icmp eq i32 %inc, %21
  br i1 %exitcond.not, label %for.inc.if.then29_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.then29_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.then29:                                        ; preds = %for.inc.if.then29_crit_edge, %do.end.if.then29_crit_edge
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.4) #8
  br label %out_unlock

if.end30:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %req to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %i.0422, ptr %req, align 1
  br label %do.body33

do.body33:                                        ; preds = %if.end30, %if.end12.do.body33_crit_edge
  %vol_id.1 = phi i32 [ %i.0422, %if.end30 ], [ %1, %if.end12.do.body33_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_create_volume.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_create_volume, %if.then45)) #8
          to label %do.end52 [label %if.then45], !srcloc !153

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  %25 = tail call i32 @llvm.read_register.i32(metadata !143) #8
  %and.i405 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i405 to ptr
  %task47 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task47, align 8
  %pid48 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid48, align 8
  %ubi_num = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 2
  %31 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ubi_num, align 8
  %bytes = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 2
  %33 = ptrtoint ptr %bytes to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %bytes, align 1
  %vol_type = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 3
  %35 = ptrtoint ptr %vol_type to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %vol_type, align 1
  %conv49 = sext i8 %36 to i32
  %name = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_create_volume.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.5, i32 noundef %30, i32 noundef %32, i32 noundef %vol_id.1, i64 noundef %34, i32 noundef %conv49, ptr noundef %name) #8
  br label %do.end52

do.end52:                                         ; preds = %if.then45, %do.body33
  %arrayidx54 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %vol_id.1
  %37 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx54, align 4
  %tobool55.not = icmp eq ptr %38, null
  br i1 %tobool55.not, label %for.cond58.preheader, label %if.then56

for.cond58.preheader:                             ; preds = %do.end52
  %vtbl_slots59 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  %39 = ptrtoint ptr %vtbl_slots59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vtbl_slots59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp60423 = icmp sgt i32 %40, 0
  br i1 %cmp60423, label %for.body62.lr.ph, label %for.cond58.preheader.for.end87_crit_edge

for.cond58.preheader.for.end87_crit_edge:         ; preds = %for.cond58.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end87

for.body62.lr.ph:                                 ; preds = %for.cond58.preheader
  %name_len68 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 5
  %name77 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 7
  br label %for.body62

if.then56:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.6, i32 noundef %vol_id.1) #8
  br label %out_unlock

for.body62:                                       ; preds = %for.inc85.for.body62_crit_edge, %for.body62.lr.ph
  %i.1424 = phi i32 [ 0, %for.body62.lr.ph ], [ %inc86, %for.inc85.for.body62_crit_edge ]
  %arrayidx64 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %i.1424
  %41 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx64, align 4
  %tobool65.not = icmp eq ptr %42, null
  br i1 %tobool65.not, label %for.body62.for.inc85_crit_edge, label %land.lhs.true

for.body62.for.inc85_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc85

land.lhs.true:                                    ; preds = %for.body62
  %name_len = getelementptr inbounds %struct.ubi_volume, ptr %42, i32 0, i32 17
  %43 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %name_len, align 8
  %45 = ptrtoint ptr %name_len68 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %name_len68, align 1
  %conv69 = sext i16 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv69)
  %cmp70 = icmp eq i32 %44, %conv69
  br i1 %cmp70, label %land.lhs.true72, label %land.lhs.true.for.inc85_crit_edge

land.lhs.true.for.inc85_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc85

land.lhs.true72:                                  ; preds = %land.lhs.true
  %name75 = getelementptr inbounds %struct.ubi_volume, ptr %42, i32 0, i32 18
  %call79 = tail call i32 @strcmp(ptr noundef %name75, ptr noundef %name77) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then81, label %land.lhs.true72.for.inc85_crit_edge

land.lhs.true72.for.inc85_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc85

if.then81:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.7, ptr noundef %name77, i32 noundef %i.1424) #8
  br label %out_unlock

for.inc85:                                        ; preds = %land.lhs.true72.for.inc85_crit_edge, %land.lhs.true.for.inc85_crit_edge, %for.body62.for.inc85_crit_edge
  %inc86 = add nuw nsw i32 %i.1424, 1
  %exitcond428.not = icmp eq i32 %inc86, %40
  br i1 %exitcond428.not, label %for.inc85.for.end87_crit_edge, label %for.inc85.for.body62_crit_edge

for.inc85.for.body62_crit_edge:                   ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62

for.inc85.for.end87_crit_edge:                    ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end87

for.end87:                                        ; preds = %for.inc85.for.end87_crit_edge, %for.cond58.preheader.for.end87_crit_edge
  %leb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 70
  %47 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %leb_size, align 8
  %alignment = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 1
  %49 = ptrtoint ptr %alignment to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %alignment, align 1
  %rem = srem i32 %48, %50
  %sub = sub i32 %48, %rem
  %usable_leb_size = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 11
  %51 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub, ptr %usable_leb_size, align 4
  %bytes89 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 2
  %52 = ptrtoint ptr %bytes89 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %bytes89, align 1
  %conv91 = sext i32 %sub to i64
  %add = add nsw i64 %conv91, -1
  %sub92 = add i64 %add, %53
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub92)
  %cmp164.i.i = icmp ult i64 %sub92, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !154

if.then168.i.i:                                   ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %sub92 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %sub
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #10
  %54 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub, i64 %sub92) #13, !srcloc !155
  %asmresult1.i.i.i = extractvalue { i64, i64 } %54, 1
  %extract.t413 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t413, %if.else174.i.i ]
  %reserved_pebs = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 9
  %55 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %dividend.addr.0.i.i.off0, ptr %reserved_pebs, align 4
  %avail_pebs = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 10
  %56 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %avail_pebs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %dividend.addr.0.i.i.off0)
  %cmp97 = icmp slt i32 %57, %dividend.addr.0.i.i.off0
  br i1 %cmp97, label %if.then99, label %if.end105

if.then99:                                        ; preds = %div_u64.exit
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.8, i32 noundef %57) #8
  %corr_peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 64
  %58 = ptrtoint ptr %corr_peb_count to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %corr_peb_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool101.not = icmp eq i32 %59, 0
  br i1 %tobool101.not, label %if.then99.out_unlock_crit_edge, label %if.then102

if.then99.out_unlock_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.then102:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.9, i32 noundef %59) #8
  br label %out_unlock

if.end105:                                        ; preds = %div_u64.exit
  %sub108 = sub i32 %57, %dividend.addr.0.i.i.off0
  %60 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub108, ptr %avail_pebs, align 8
  %rsvd_pebs = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 9
  %61 = ptrtoint ptr %rsvd_pebs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rsvd_pebs, align 4
  %add110 = add i32 %62, %dividend.addr.0.i.i.off0
  store i32 %add110, ptr %rsvd_pebs, align 4
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock) #8
  %vol_id112 = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %vol_id112 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %vol_id.1, ptr %vol_id112, align 4
  %64 = ptrtoint ptr %alignment to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %alignment, align 1
  %alignment114 = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 15
  %66 = ptrtoint ptr %alignment114 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %alignment114, align 8
  %67 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %leb_size, align 8
  %rem117 = srem i32 %68, %65
  %data_pad = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 16
  %69 = ptrtoint ptr %data_pad to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %rem117, ptr %data_pad, align 4
  %vol_type118 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 3
  %70 = ptrtoint ptr %vol_type118 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %vol_type118, align 1
  %conv119 = sext i8 %71 to i32
  %vol_type120 = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 10
  %72 = ptrtoint ptr %vol_type120 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv119, ptr %vol_type120, align 8
  %name_len121 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 5
  %73 = ptrtoint ptr %name_len121 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %name_len121, align 1
  %conv122 = sext i16 %74 to i32
  %name_len123 = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 17
  %75 = ptrtoint ptr %name_len123 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv122, ptr %name_len123, align 8
  %name124 = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 18
  %name126 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 7
  %76 = call ptr @memcpy(ptr %name124, ptr %name126, i32 %conv122)
  %ubi129 = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 2
  %77 = ptrtoint ptr %ubi129 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %ubi, ptr %ubi129, align 8
  %call130 = tail call i32 @ubi_wl_flush(ptr noundef %ubi, i32 noundef %vol_id.1, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %if.end105.out_acc_crit_edge

if.end105.out_acc_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_acc

if.end133:                                        ; preds = %if.end105
  %78 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %reserved_pebs, align 4
  %call135 = tail call ptr @ubi_eba_create_table(ptr noundef nonnull %call7.i.i, i32 noundef %79) #8
  %cmp.i = icmp ugt ptr %call135, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then137, label %if.end139

if.then137:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %call135 to i32
  br label %out_acc

if.end139:                                        ; preds = %if.end133
  tail call void @ubi_eba_replace_table(ptr noundef nonnull %call7.i.i, ptr noundef %call135) #8
  %81 = ptrtoint ptr %vol_type120 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vol_type120, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %82)
  %cmp141 = icmp eq i32 %82, 3
  br i1 %cmp141, label %if.then143, label %if.else

if.then143:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %reserved_pebs, align 4
  %used_ebs = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 12
  %85 = ptrtoint ptr %used_ebs to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %used_ebs, align 8
  %86 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %usable_leb_size, align 4
  %last_eb_bytes = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 13
  %88 = ptrtoint ptr %last_eb_bytes to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %last_eb_bytes, align 4
  %conv147 = sext i32 %84 to i64
  %conv149 = sext i32 %87 to i64
  %mul = mul nsw i64 %conv149, %conv147
  %used_bytes = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 14
  %89 = ptrtoint ptr %used_bytes to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %mul, ptr %used_bytes, align 8
  br label %if.end166

if.else:                                          ; preds = %if.end139
  %used_bytes150 = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 14
  %90 = ptrtoint ptr %used_bytes150 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %used_bytes150, align 8
  %92 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %usable_leb_size, align 4
  %last_eb_bytes152 = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %91)
  %cmp164.i = icmp ult i64 %91, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !154

if.then168.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i = trunc i64 %91 to i32
  %conv169.i.frozen = freeze i32 %conv169.i
  %.frozen = freeze i32 %93
  %div172.i = udiv i32 %conv169.i.frozen, %.frozen
  %94 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %conv169.i.frozen, %94
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %95 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %93, i64 %91) #13, !srcloc !155
  %asmresult.i261.i = extractvalue { i64, i64 } %95, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %95, 1
  %shr.i.i407 = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i407 to i32
  %extract.t417 = trunc i64 %asmresult1.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %dividend.addr.0.i.off0 = phi i32 [ %div172.i, %if.then168.i ], [ %extract.t417, %if.else174.i ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %96 = ptrtoint ptr %last_eb_bytes152 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %__rem.0.i, ptr %last_eb_bytes152, align 4
  %used_ebs155 = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 12
  %97 = ptrtoint ptr %used_ebs155 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %dividend.addr.0.i.off0, ptr %used_ebs155, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %cmp157.not = icmp eq i32 %__rem.0.i, 0
  br i1 %cmp157.not, label %if.else162, label %if.then159

if.then159:                                       ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add161 = add i32 %dividend.addr.0.i.off0, 1
  %98 = ptrtoint ptr %used_ebs155 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add161, ptr %used_ebs155, align 8
  br label %if.end166

if.else162:                                       ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %last_eb_bytes152 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %93, ptr %last_eb_bytes152, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.else162, %if.then159, %if.then143
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #8
  %100 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call7.i.i, ptr %arrayidx54, align 4
  %vol_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 4
  %101 = ptrtoint ptr %vol_count to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %vol_count, align 8
  %add170 = add i32 %102, 1
  store i32 %add170, ptr %vol_count, align 8
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock) #8
  %cdev = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 1
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @ubi_vol_cdev_operations) #8
  %owner = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 1, i32 1
  %103 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %owner, align 8
  %dev174 = getelementptr inbounds %struct.cdev, ptr %ubi, i32 0, i32 4
  %104 = ptrtoint ptr %dev174 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dev174, align 8
  %shr = and i32 %105, -1048576
  %add175 = add i32 %vol_id.1, 1
  %or = or i32 %shr, %add175
  %devt = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 29
  %106 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %or, ptr %devt, align 8
  %ubi_name = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 3
  %107 = ptrtoint ptr %vol_id112 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %vol_id112, align 4
  %call180 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.10, ptr noundef %ubi_name, i32 noundef %108) #8
  %call183 = tail call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end186, label %if.then185

if.then185:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.11) #8
  br label %out_mapping

if.end186:                                        ; preds = %if.end166
  %109 = getelementptr inbounds i8, ptr %vtbl_rec, i32 12
  %110 = call ptr @memset(ptr %109, i32 0, i32 160)
  %111 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %reserved_pebs, align 4
  %113 = ptrtoint ptr %vtbl_rec to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %vtbl_rec, align 4
  %114 = ptrtoint ptr %alignment114 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %alignment114, align 8
  %alignment190 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %vtbl_rec, i32 0, i32 1
  %116 = ptrtoint ptr %alignment190 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %alignment190, align 4
  %117 = ptrtoint ptr %data_pad to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %data_pad, align 4
  %data_pad192 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %vtbl_rec, i32 0, i32 2
  %119 = ptrtoint ptr %data_pad192 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %data_pad192, align 4
  %120 = ptrtoint ptr %name_len123 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %name_len123, align 8
  %conv194 = trunc i32 %121 to i16
  %name_len195 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %vtbl_rec, i32 0, i32 5
  %122 = ptrtoint ptr %name_len195 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv194, ptr %name_len195, align 2
  %123 = ptrtoint ptr %vol_type120 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %vol_type120, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %124)
  %cmp197 = icmp eq i32 %124, 3
  %spec.select = select i1 %cmp197, i8 1, i8 2
  %125 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %vtbl_rec, i32 0, i32 3
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %spec.select, ptr %125, align 4
  %skip_check204 = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i, i32 0, i32 25
  %127 = ptrtoint ptr %skip_check204 to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load205 = load i8, ptr %skip_check204, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load205)
  %tobool206.not = icmp sgt i8 %bf.load205, -1
  br i1 %tobool206.not, label %if.end186.if.end212_crit_edge, label %if.then207

if.end186.if.end212_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212

if.then207:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  %flags208 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %vtbl_rec, i32 0, i32 7
  %128 = ptrtoint ptr %flags208 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %flags208, align 4
  %130 = or i8 %129, 2
  store i8 %130, ptr %flags208, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.then207, %if.end186.if.end212_crit_edge
  %name213 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %vtbl_rec, i32 0, i32 6
  %131 = call ptr @memcpy(ptr %name213, ptr %name124, i32 %121)
  %call218 = call i32 @ubi_change_vtbl_record(ptr noundef %ubi, i32 noundef %vol_id.1, ptr noundef nonnull %vtbl_rec) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.end221, label %out_sysfs

if.end221:                                        ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #10
  %call222 = call i32 @ubi_volume_notify(ptr noundef %ubi, ptr noundef nonnull %call7.i.i, i32 noundef 0) #8
  call fastcc void @self_check_volumes(ptr noundef %ubi)
  br label %cleanup

out_sysfs:                                        ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #10
  call void @cdev_device_del(ptr noundef %cdev, ptr noundef nonnull %call7.i.i) #8
  br label %out_mapping

out_mapping:                                      ; preds = %out_sysfs, %if.then185
  %err.0 = phi i32 [ %call183, %if.then185 ], [ %call218, %out_sysfs ]
  call void @_raw_spin_lock(ptr noundef %volumes_lock) #8
  %132 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %arrayidx54, align 4
  %133 = ptrtoint ptr %vol_count to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %vol_count, align 8
  %sub230 = add i32 %134, -1
  store i32 %sub230, ptr %vol_count, align 8
  call void @_raw_spin_unlock(ptr noundef %volumes_lock) #8
  call void @ubi_eba_destroy_table(ptr noundef %call135) #8
  br label %out_acc

out_acc:                                          ; preds = %out_mapping, %if.then137, %if.end105.out_acc_crit_edge
  %err.1 = phi i32 [ %call130, %if.end105.out_acc_crit_edge ], [ %80, %if.then137 ], [ %err.0, %out_mapping ]
  call void @_raw_spin_lock(ptr noundef %volumes_lock) #8
  %135 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %reserved_pebs, align 4
  %137 = ptrtoint ptr %rsvd_pebs to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rsvd_pebs, align 4
  %sub235 = sub i32 %138, %136
  store i32 %sub235, ptr %rsvd_pebs, align 4
  %139 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %avail_pebs, align 8
  %add238 = add i32 %140, %136
  store i32 %add238, ptr %avail_pebs, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %out_acc, %if.then102, %if.then99.out_unlock_crit_edge, %if.then81, %if.then56, %if.then29
  %vol_id.2 = phi i32 [ -1, %if.then29 ], [ %vol_id.1, %if.then56 ], [ %vol_id.1, %if.then81 ], [ %vol_id.1, %out_acc ], [ %vol_id.1, %if.then102 ], [ %vol_id.1, %if.then99.out_unlock_crit_edge ]
  %err.2 = phi i32 [ -23, %if.then29 ], [ -17, %if.then56 ], [ -17, %if.then81 ], [ %err.1, %out_acc ], [ -28, %if.then102 ], [ -28, %if.then99.out_unlock_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %volumes_lock) #8
  call void @put_device(ptr noundef nonnull %call7.i.i) #8
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.12, i32 noundef %vol_id.2, i32 noundef %err.2) #8
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end221, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %out_unlock ], [ 0, %if.end221 ], [ -30, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %vtbl_rec) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vol_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ubi_eba_replace_table(ptr noundef %dev, ptr noundef null) #8
  tail call void @ubi_fastmap_destroy_checkmap(ptr noundef %dev) #8
  tail call void @kfree(ptr noundef %dev) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_wl_flush(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_eba_create_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_eba_replace_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_change_vtbl_record(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_volume_notify(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @self_check_volumes(ptr noundef %ubi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %0 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dbg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %vtbl_slots = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  %1 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vtbl_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp122 = icmp sgt i32 %2, 0
  br i1 %cmp122, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %volumes_lock.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 6
  %vtbl.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 17
  %leb_size.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 70
  %min_io_size.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 67
  %good_peb_count.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 63
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %3 = phi i32 [ %2, %for.body.lr.ph ], [ %56, %for.inc.for.body_crit_edge ]
  %i.0123 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479550, i32 %i.0123)
  %cmp.i.i = icmp ugt i32 %i.0123, 2147479550
  %sub.i.i = add nsw i32 %i.0123, -2147479551
  %add.i.i = add i32 %sub.i.i, %3
  %retval.0.i.i = select i1 %cmp.i.i, i32 %add.i.i, i32 %i.0123
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock.i) #8
  %arrayidx2.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %retval.0.i.i
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %for.body
  %6 = ptrtoint ptr %vtbl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vtbl.i, align 4
  %arrayidx.i = getelementptr %struct.ubi_vtbl_record, ptr %7, i32 %i.0123
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i = icmp eq i32 %9, 0
  br i1 %tobool3.not.i, label %if.then.i.for.inc_crit_edge, label %fail.i

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end6.i:                                        ; preds = %for.body
  %reserved_pebs7.i = getelementptr inbounds %struct.ubi_volume, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %reserved_pebs7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reserved_pebs7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp slt i32 %11, 0
  br i1 %cmp.i, label %if.end6.i.if.then16.i_crit_edge, label %lor.lhs.false.i

if.end6.i.if.then16.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %alignment8.i = getelementptr inbounds %struct.ubi_volume, ptr %5, i32 0, i32 15
  %12 = ptrtoint ptr %alignment8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %alignment8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp9.i = icmp slt i32 %13, 0
  br i1 %cmp9.i, label %lor.lhs.false.i.if.then16.i_crit_edge, label %lor.lhs.false10.i

lor.lhs.false.i.if.then16.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  %data_pad11.i = getelementptr inbounds %struct.ubi_volume, ptr %5, i32 0, i32 16
  %14 = ptrtoint ptr %data_pad11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_pad11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp12.i = icmp slt i32 %15, 0
  br i1 %cmp12.i, label %lor.lhs.false10.i.if.then16.i_crit_edge, label %lor.lhs.false13.i

lor.lhs.false10.i.if.then16.i_crit_edge:          ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

lor.lhs.false13.i:                                ; preds = %lor.lhs.false10.i
  %name_len14.i = getelementptr inbounds %struct.ubi_volume, ptr %5, i32 0, i32 17
  %16 = ptrtoint ptr %name_len14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %name_len14.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp15.i = icmp slt i32 %17, 0
  br i1 %cmp15.i, label %lor.lhs.false13.i.if.then16.i_crit_edge, label %if.end17.i

lor.lhs.false13.i.if.then16.i_crit_edge:          ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

if.then16.i:                                      ; preds = %lor.lhs.false13.i.if.then16.i_crit_edge, %lor.lhs.false10.i.if.then16.i_crit_edge, %lor.lhs.false.i.if.then16.i_crit_edge, %if.end6.i.if.then16.i_crit_edge
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.43) #8
  br label %if.then223.i

if.end17.i:                                       ; preds = %lor.lhs.false13.i
  %18 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %19)
  %cmp19.i = icmp sgt i32 %13, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp22.i = icmp eq i32 %13, 0
  %or.cond.i = or i1 %cmp22.i, %cmp19.i
  br i1 %or.cond.i, label %if.then23.i, label %if.end24.i

if.then23.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.44) #8
  br label %if.then223.i

if.end24.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp27.not.i = icmp eq i32 %13, 1
  br i1 %cmp27.not.i, label %if.end24.i.if.end31.i_crit_edge, label %land.lhs.true.i

if.end24.i.if.end31.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %if.end24.i
  %20 = ptrtoint ptr %min_io_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %min_io_size.i, align 4
  %sub.i = add i32 %21, -1
  %and.i = and i32 %sub.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true.i.if.end31.i_crit_edge, label %if.then30.i

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.45) #8
  br label %if.then223.i

if.end31.i:                                       ; preds = %land.lhs.true.i.if.end31.i_crit_edge, %if.end24.i.if.end31.i_crit_edge
  %rem.i = srem i32 %19, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %rem.i)
  %cmp37.not.i = icmp eq i32 %15, %rem.i
  br i1 %cmp37.not.i, label %if.end40.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv34.i = sext i32 %rem.i to i64
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.46, i64 noundef %conv34.i) #8
  br label %if.then223.i

if.end40.i:                                       ; preds = %if.end31.i
  %vol_type41.i = getelementptr inbounds %struct.ubi_volume, ptr %5, i32 0, i32 10
  %22 = ptrtoint ptr %vol_type41.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vol_type41.i, align 8
  %.off.i = add i32 %23, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end49.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.47) #8
  br label %if.then223.i

if.end49.i:                                       ; preds = %if.end40.i
  %upd_marker50.i = getelementptr inbounds %struct.ubi_volume, ptr %5, i32 0, i32 25
  %24 = ptrtoint ptr %upd_marker50.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i1 = load i8, ptr %upd_marker50.i, align 8
  %25 = and i8 %bf.load.i1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool57.not.i = icmp eq i8 %25, 0
  %26 = and i8 %bf.load.i1, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %26)
  %.not.i = icmp eq i8 %26, 48
  br i1 %.not.i, label %if.then58.i, label %if.end59.i

if.then58.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.48) #8
  br label %if.then223.i

if.end59.i:                                       ; preds = %if.end49.i
  %27 = ptrtoint ptr %good_peb_count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %good_peb_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %28)
  %cmp61.i = icmp sgt i32 %11, %28
  br i1 %cmp61.i, label %if.then63.i, label %if.end64.i

if.then63.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.49) #8
  br label %if.then223.i

if.end64.i:                                       ; preds = %if.end59.i
  %sub67.i = sub i32 %19, %15
  %usable_leb_size.i = getelementptr inbounds %struct.ubi_volume, ptr %5, i32 0, i32 11
  %29 = ptrtoint ptr %usable_leb_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %usable_leb_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %sub67.i)
  %cmp72.not.i = icmp eq i32 %30, %sub67.i
  br i1 %cmp72.not.i, label %if.end75.i, label %if.then74.i

if.then74.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv68.i = sext i32 %sub67.i to i64
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.50, i64 noundef %conv68.i) #8
  br label %if.then223.i

if.end75.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %17)
  %cmp77.i = icmp ugt i32 %17, 127
  br i1 %cmp77.i, label %if.then79.i, label %if.end80.i

if.then79.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.51, i32 noundef 127) #8
  br label %if.then223.i

if.end80.i:                                       ; preds = %if.end75.i
  %name81.i = getelementptr inbounds %struct.ubi_volume, ptr %5, i32 0, i32 18
  %add.i = add nuw nsw i32 %17, 1
  %call83.i = tail call i32 @strnlen(ptr noundef %name81.i, i32 noundef %add.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call83.i, i32 %17)
  %cmp87.not.i = icmp eq i32 %call83.i, %17
  br i1 %cmp87.not.i, label %if.end90.i, label %if.then89.i

if.then89.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv84.i = zext i32 %call83.i to i64
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.52, i64 noundef %conv84.i) #8
  br label %if.then223.i

if.end90.i:                                       ; preds = %if.end80.i
  %used_ebs.i = getelementptr inbounds %struct.ubi_volume, ptr %5, i32 0, i32 12
  %31 = ptrtoint ptr %used_ebs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %used_ebs.i, align 8
  %conv91.i = sext i32 %32 to i64
  %conv93.i = sext i32 %sub67.i to i64
  %mul.i = mul nsw i64 %conv91.i, %conv93.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp95.i = icmp eq i32 %23, 3
  br i1 %cmp95.i, label %if.then97.i, label %if.else.i

if.then97.i:                                      ; preds = %if.end90.i
  br i1 %tobool57.not.i, label %if.end105.i, label %if.then104.i

if.then104.i:                                     ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.53) #8
  br label %if.then223.i

if.end105.i:                                      ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %11)
  %cmp108.not.i = icmp eq i32 %32, %11
  br i1 %cmp108.not.i, label %if.end111.i, label %if.then110.i

if.then110.i:                                     ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.54) #8
  br label %if.then223.i

if.end111.i:                                      ; preds = %if.end105.i
  %last_eb_bytes.i = getelementptr inbounds %struct.ubi_volume, ptr %5, i32 0, i32 13
  %33 = ptrtoint ptr %last_eb_bytes.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %last_eb_bytes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %sub67.i)
  %cmp113.not.i = icmp eq i32 %34, %sub67.i
  br i1 %cmp113.not.i, label %if.end116.i, label %if.then115.i

if.then115.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.55) #8
  br label %if.then223.i

if.end116.i:                                      ; preds = %if.end111.i
  %used_bytes.i = getelementptr inbounds %struct.ubi_volume, ptr %5, i32 0, i32 14
  %35 = ptrtoint ptr %used_bytes.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %used_bytes.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %mul.i)
  %cmp117.not.i = icmp eq i64 %36, %mul.i
  br i1 %cmp117.not.i, label %if.end120.i, label %if.then119.i

if.then119.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.56) #8
  br label %if.then223.i

if.end120.i:                                      ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i1)
  %tobool124.not.i = icmp sgt i8 %bf.load.i1, -1
  br i1 %tobool124.not.i, label %if.end120.i.if.end163.i_crit_edge, label %if.then125.i

if.end120.i.if.end163.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163.i

if.then125.i:                                     ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.57) #8
  br label %if.then223.i

if.else.i:                                        ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp128.i = icmp slt i32 %32, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %11)
  %cmp133.i = icmp sgt i32 %32, %11
  %or.cond355.i = select i1 %cmp128.i, i1 true, i1 %cmp133.i
  br i1 %or.cond355.i, label %if.then135.i, label %if.end136.i

if.then135.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.54) #8
  br label %if.then223.i

if.end136.i:                                      ; preds = %if.else.i
  %last_eb_bytes137.i = getelementptr inbounds %struct.ubi_volume, ptr %5, i32 0, i32 13
  %37 = ptrtoint ptr %last_eb_bytes137.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %last_eb_bytes137.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp138.i = icmp slt i32 %38, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %sub67.i)
  %cmp143.i = icmp sgt i32 %38, %sub67.i
  %or.cond356.i = select i1 %cmp138.i, i1 true, i1 %cmp143.i
  br i1 %or.cond356.i, label %if.then145.i, label %if.end146.i

if.then145.i:                                     ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.55) #8
  br label %if.then223.i

if.end146.i:                                      ; preds = %if.end136.i
  %used_bytes147.i = getelementptr inbounds %struct.ubi_volume, ptr %5, i32 0, i32 14
  %39 = ptrtoint ptr %used_bytes147.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %used_bytes147.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %cmp148.i = icmp slt i64 %40, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %mul.i)
  %cmp152.i = icmp sgt i64 %40, %mul.i
  %or.cond357.i = select i1 %cmp148.i, i1 true, i1 %cmp152.i
  %sub158.i = sub nsw i64 %mul.i, %conv93.i
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %sub158.i)
  %cmp159.i = icmp slt i64 %40, %sub158.i
  %or.cond358.i = select i1 %or.cond357.i, i1 true, i1 %cmp159.i
  br i1 %or.cond358.i, label %if.then161.i, label %if.end146.i.if.end163.i_crit_edge

if.end146.i.if.end163.i_crit_edge:                ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163.i

if.then161.i:                                     ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.56) #8
  br label %if.then223.i

if.end163.i:                                      ; preds = %if.end146.i.if.end163.i_crit_edge, %if.end120.i.if.end163.i_crit_edge
  %41 = ptrtoint ptr %vtbl.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vtbl.i, align 4
  %alignment166.i = getelementptr %struct.ubi_vtbl_record, ptr %42, i32 %i.0123, i32 1
  %43 = ptrtoint ptr %alignment166.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %alignment166.i, align 1
  %data_pad169.i = getelementptr %struct.ubi_vtbl_record, ptr %42, i32 %i.0123, i32 2
  %45 = ptrtoint ptr %data_pad169.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %data_pad169.i, align 1
  %name_len172.i = getelementptr %struct.ubi_vtbl_record, ptr %42, i32 %i.0123, i32 5
  %47 = ptrtoint ptr %name_len172.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %name_len172.i, align 1
  %conv173.i = zext i16 %48 to i32
  %upd_marker176.i = getelementptr %struct.ubi_vtbl_record, ptr %42, i32 %i.0123, i32 4
  %49 = ptrtoint ptr %upd_marker176.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %upd_marker176.i, align 1
  %vol_type184.i = getelementptr %struct.ubi_vtbl_record, ptr %42, i32 %i.0123, i32 3
  %51 = ptrtoint ptr %vol_type184.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %vol_type184.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp186.i = icmp eq i8 %52, 1
  %..i = select i1 %cmp186.i, i32 3, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %13)
  %cmp192.not.i = icmp eq i32 %44, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %15)
  %cmp196.not.i = icmp eq i32 %46, %15
  %or.cond360.i = select i1 %cmp192.not.i, i1 %cmp196.not.i, i1 false
  %bf.lshr201.i = lshr i8 %bf.load.i1, 4
  %bf.clear202.i = and i8 %bf.lshr201.i, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %bf.clear202.i)
  %cmp204.not.i = icmp eq i8 %50, %bf.clear202.i
  %or.cond361.i = select i1 %or.cond360.i, i1 %cmp204.not.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %..i, i32 %23)
  %cmp208.not.i = icmp eq i32 %..i, %23
  %or.cond362.i = select i1 %or.cond361.i, i1 %cmp208.not.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv173.i)
  %cmp212.not.i = icmp eq i32 %17, %conv173.i
  %or.cond363.i = select i1 %or.cond362.i, i1 %cmp212.not.i, i1 false
  br i1 %or.cond363.i, label %lor.lhs.false214.i, label %if.end163.i.if.then219.i_crit_edge

if.end163.i.if.then219.i_crit_edge:               ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then219.i

lor.lhs.false214.i:                               ; preds = %if.end163.i
  %name180.i = getelementptr %struct.ubi_vtbl_record, ptr %42, i32 %i.0123, i32 6
  %call217.i = tail call i32 @strncmp(ptr noundef %name180.i, ptr noundef %name81.i, i32 noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217.i)
  %tobool218.not.i = icmp eq i32 %call217.i, 0
  br i1 %tobool218.not.i, label %lor.lhs.false214.i.for.inc_crit_edge, label %lor.lhs.false214.i.if.then219.i_crit_edge

lor.lhs.false214.i.if.then219.i_crit_edge:        ; preds = %lor.lhs.false214.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then219.i

lor.lhs.false214.i.for.inc_crit_edge:             ; preds = %lor.lhs.false214.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then219.i:                                     ; preds = %lor.lhs.false214.i.if.then219.i_crit_edge, %if.end163.i.if.then219.i_crit_edge
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.58) #8
  br label %if.then223.i

fail.i:                                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.42) #8
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.59, i32 noundef %i.0123) #8
  br label %self_check_volume.exit

if.then223.i:                                     ; preds = %if.then219.i, %if.then161.i, %if.then145.i, %if.then135.i, %if.then125.i, %if.then119.i, %if.then115.i, %if.then110.i, %if.then104.i, %if.then89.i, %if.then79.i, %if.then74.i, %if.then63.i, %if.then58.i, %if.then48.i, %if.then39.i, %if.then30.i, %if.then23.i, %if.then16.i
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.59, i32 noundef %i.0123) #8
  tail call void @ubi_dump_vol_info(ptr noundef nonnull %5) #8
  br label %self_check_volume.exit

self_check_volume.exit:                           ; preds = %if.then223.i, %fail.i
  %53 = ptrtoint ptr %vtbl.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vtbl.i, align 4
  %arrayidx226.i = getelementptr %struct.ubi_vtbl_record, ptr %54, i32 %i.0123
  tail call void @ubi_dump_vtbl_record(ptr noundef %arrayidx226.i, i32 noundef %i.0123) #8
  tail call void @dump_stack() #15
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock.i) #8
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false214.i.for.inc_crit_edge, %if.then.i.for.inc_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock.i) #8
  %inc = add nuw nsw i32 %i.0123, 1
  %55 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %vtbl_slots, align 4
  %cmp = icmp slt i32 %inc, %56
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %self_check_volume.exit, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_eba_destroy_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_remove_volume(ptr nocapture noundef readonly %desc, i32 noundef %no_vtbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %ubi2 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ubi2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ubi2, align 8
  %vol_id3 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %vol_id3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vol_id3, align 4
  %reserved_pebs4 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %reserved_pebs4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reserved_pebs4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_remove_volume.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_remove_volume, %if.then)) #8
          to label %do.body8 [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call i32 @llvm.read_register.i32(metadata !143) #8
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
  %ubi_num = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ubi_num, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_remove_volume.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.14, i32 noundef %13, i32 noundef %15, i32 noundef %5) #8
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  %mode = getelementptr inbounds %struct.ubi_volume_desc, ptr %desc, i32 0, i32 1
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp.not = icmp eq i32 %17, 3
  br i1 %cmp.not, label %do.body8.do.body29_crit_edge, label %do.end20, !prof !154

do.body8.do.body29_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

do.end20:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %18 = tail call i32 @llvm.read_register.i32(metadata !143) #8
  %and.i134 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i134 to ptr
  %task23 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task23, align 8
  %pid24 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid24, align 8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 347, i32 noundef %23) #15
  tail call void @dump_stack() #15
  br label %do.body29

do.body29:                                        ; preds = %do.end20, %do.body8.do.body29_crit_edge
  %arrayidx = getelementptr %struct.ubi_device, ptr %3, i32 0, i32 5, i32 %5
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %cmp30.not = icmp eq ptr %1, %25
  br i1 %cmp30.not, label %do.body29.do.end50_crit_edge, label %do.end42, !prof !154

do.body29.do.end50_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

do.end42:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %26 = tail call i32 @llvm.read_register.i32(metadata !143) #8
  %and.i135 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i135 to ptr
  %task45 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task45, align 8
  %pid46 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid46, align 8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 348, i32 noundef %31) #15
  tail call void @dump_stack() #15
  br label %do.end50

do.end50:                                         ; preds = %do.end42, %do.body29.do.end50_crit_edge
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 69
  %32 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool51.not = icmp eq i32 %33, 0
  br i1 %tobool51.not, label %if.end53, label %do.end50.cleanup_crit_edge

do.end50.cleanup_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end53:                                         ; preds = %do.end50
  %volumes_lock = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #8
  %ref_count = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp54 = icmp sgt i32 %35, 1
  br i1 %cmp54, label %if.end53.out_unlock_crit_edge, label %if.end56

if.end53.out_unlock_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end56:                                         ; preds = %if.end53
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_vtbl)
  %tobool60.not = icmp eq i32 %no_vtbl, 0
  br i1 %tobool60.not, label %if.then61, label %if.end56.if.end66_crit_edge

if.end56.if.end66_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then61:                                        ; preds = %if.end56
  %call62 = tail call i32 @ubi_change_vtbl_record(ptr noundef %3, i32 noundef %5, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then61.if.end66_crit_edge, label %if.then61.out_err_crit_edge

if.then61.out_err_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.then61.if.end66_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.end66:                                         ; preds = %if.then61.if.end66_crit_edge, %if.end56.if.end66_crit_edge
  %37 = ptrtoint ptr %reserved_pebs4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reserved_pebs4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp68137 = icmp sgt i32 %38, 0
  br i1 %cmp68137, label %if.end66.for.body_crit_edge, label %if.end66.for.end_crit_edge

if.end66.for.end_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end66.for.body_crit_edge:                      ; preds = %if.end66
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0138, 1
  %39 = ptrtoint ptr %reserved_pebs4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reserved_pebs4, align 4
  %cmp68 = icmp slt i32 %inc, %40
  br i1 %cmp68, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end66.for.body_crit_edge
  %i.0138 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end66.for.body_crit_edge ]
  %call69 = tail call i32 @ubi_eba_unmap_leb(ptr noundef %3, ptr noundef %1, i32 noundef %i.0138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %for.cond, label %for.body.out_err_crit_edge

for.body.out_err_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end66.for.end_crit_edge
  %cdev = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %1) #8
  tail call void @put_device(ptr noundef %1) #8
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #8
  %rsvd_pebs = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 9
  %41 = ptrtoint ptr %rsvd_pebs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rsvd_pebs, align 4
  %sub = sub i32 %42, %7
  store i32 %sub, ptr %rsvd_pebs, align 4
  %avail_pebs = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 10
  %43 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %avail_pebs, align 8
  %add = add i32 %44, %7
  store i32 %add, ptr %avail_pebs, align 8
  tail call void @ubi_update_reserved(ptr noundef %3) #8
  %vol_count = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 4
  %45 = ptrtoint ptr %vol_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vol_count, align 8
  %sub75 = add i32 %46, -1
  store i32 %sub75, ptr %vol_count, align 8
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock) #8
  %call77 = tail call i32 @ubi_volume_notify(ptr noundef %3, ptr noundef %1, i32 noundef 1) #8
  br i1 %tobool60.not, label %if.then79, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then79:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @self_check_volumes(ptr noundef %3)
  br label %cleanup

out_err:                                          ; preds = %for.body.out_err_crit_edge, %if.then61.out_err_crit_edge
  %err.0 = phi i32 [ %call62, %if.then61.out_err_crit_edge ], [ %call69, %for.body.out_err_crit_edge ]
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %5, i32 noundef %err.0) #8
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #8
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %1, ptr %arrayidx, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %out_err, %if.end53.out_unlock_crit_edge
  %err.1 = phi i32 [ %err.0, %out_err ], [ -16, %if.end53.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then79, %for.end.cleanup_crit_edge, %do.end50.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out_unlock ], [ -30, %do.end50.cleanup_crit_edge ], [ 0, %if.then79 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_unmap_leb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_update_reserved(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_resize_volume(ptr nocapture noundef readonly %desc, i32 noundef %reserved_pebs) local_unnamed_addr #0 align 64 {
entry:
  %vtbl_rec = alloca %struct.ubi_vtbl_record, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %ubi2 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ubi2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ubi2, align 8
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %vtbl_rec) #8
  %4 = call ptr @memset(ptr %vtbl_rec, i32 255, i32 172)
  %vol_id3 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %vol_id3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vol_id3, align 4
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 69
  %7 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_resize_volume.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_resize_volume, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !153

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !143) #8
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid, align 8
  %ubi_num = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ubi_num, align 8
  %reserved_pebs9 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %reserved_pebs9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reserved_pebs9, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_resize_volume.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.20, i32 noundef %14, i32 noundef %16, i32 noundef %6, i32 noundef %18, i32 noundef %reserved_pebs) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %vol_type = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %vol_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vol_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp = icmp eq i32 %20, 4
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true:                                    ; preds = %do.end
  %used_ebs = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %used_ebs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %used_ebs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %reserved_pebs)
  %cmp11 = icmp sgt i32 %22, %reserved_pebs
  br i1 %cmp11, label %if.then12, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %reserved_pebs, i32 noundef %22) #8
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %do.end.if.end14_crit_edge
  %reserved_pebs15 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %reserved_pebs15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reserved_pebs15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %reserved_pebs)
  %cmp16 = icmp eq i32 %24, %reserved_pebs
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = tail call ptr @ubi_eba_create_table(ptr noundef %1, i32 noundef %reserved_pebs) #8
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %volumes_lock = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #8
  %ref_count = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp24 = icmp sgt i32 %27, 1
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock) #8
  br i1 %cmp24, label %if.end23.out_free_crit_edge, label %if.end27

if.end23.out_free_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end27:                                         ; preds = %if.end23
  %28 = ptrtoint ptr %reserved_pebs15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reserved_pebs15, align 4
  %sub = sub i32 %reserved_pebs, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp30 = icmp sgt i32 %sub, 0
  br i1 %cmp30, label %if.then31, label %if.end46

if.then31:                                        ; preds = %if.end27
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #8
  %avail_pebs = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 10
  %30 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %avail_pebs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %sub)
  %cmp33 = icmp slt i32 %31, %sub
  br i1 %cmp33, label %if.then34, label %if.end46.thread

if.then34:                                        ; preds = %if.then31
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %sub, i32 noundef %31) #8
  %corr_peb_count = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 64
  %32 = ptrtoint ptr %corr_peb_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %corr_peb_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool36.not = icmp eq i32 %33, 0
  br i1 %tobool36.not, label %if.then34.if.end39_crit_edge, label %if.then37

if.then34.if.end39_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %33) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then34.if.end39_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock) #8
  br label %out_free

if.end46.thread:                                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %sub43 = sub i32 %31, %sub
  %34 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub43, ptr %avail_pebs, align 8
  %rsvd_pebs = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 9
  %35 = ptrtoint ptr %rsvd_pebs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rsvd_pebs, align 4
  %add = add i32 %36, %sub
  store i32 %add, ptr %rsvd_pebs, align 4
  %37 = ptrtoint ptr %reserved_pebs15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reserved_pebs15, align 4
  tail call void @ubi_eba_copy_table(ptr noundef %1, ptr noundef %call19, i32 noundef %38) #8
  tail call void @ubi_eba_replace_table(ptr noundef %1, ptr noundef %call19) #8
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock) #8
  br label %if.end69

if.end46:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp47 = icmp slt i32 %sub, 0
  br i1 %cmp47, label %for.cond.preheader, label %if.end46.if.end69_crit_edge

if.end46.if.end69_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

for.cond.preheader:                               ; preds = %if.end46
  %sub49 = sub i32 0, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub49)
  %cmp50199 = icmp sgt i32 %sub49, 0
  br i1 %cmp50199, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.then64_crit_edge

for.cond.preheader.if.then64_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then64

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0200, 1
  %exitcond.not = icmp eq i32 %inc, %sub49
  br i1 %exitcond.not, label %for.cond.if.then64_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.if.then64_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then64

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0200 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add51 = add i32 %i.0200, %reserved_pebs
  %call52 = tail call i32 @ubi_eba_unmap_leb(ptr noundef %3, ptr noundef %1, i32 noundef %add51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %for.cond, label %for.body.out_acc_crit_edge

for.body.out_acc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_acc

if.then64:                                        ; preds = %for.cond.if.then64_crit_edge, %for.cond.preheader.if.then64_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #8
  %rsvd_pebs57 = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 9
  %39 = ptrtoint ptr %rsvd_pebs57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rsvd_pebs57, align 4
  %add58 = add i32 %40, %sub
  store i32 %add58, ptr %rsvd_pebs57, align 4
  %avail_pebs59 = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 10
  %41 = ptrtoint ptr %avail_pebs59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %avail_pebs59, align 8
  %sub60 = sub i32 %42, %sub
  store i32 %sub60, ptr %avail_pebs59, align 8
  tail call void @ubi_update_reserved(ptr noundef %3) #8
  tail call void @ubi_eba_copy_table(ptr noundef %1, ptr noundef %call19, i32 noundef %reserved_pebs) #8
  tail call void @ubi_eba_replace_table(ptr noundef %1, ptr noundef %call19) #8
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock) #8
  %call65 = tail call i32 @ubi_wl_flush(ptr noundef %3, i32 noundef %6, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then64.if.end69_crit_edge, label %if.then64.out_acc_crit_edge

if.then64.out_acc_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_acc

if.then64.if.end69_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end69:                                         ; preds = %if.then64.if.end69_crit_edge, %if.end46.if.end69_crit_edge, %if.end46.thread
  %vtbl = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 17
  %43 = ptrtoint ptr %vtbl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vtbl, align 4
  %arrayidx = getelementptr %struct.ubi_vtbl_record, ptr %44, i32 %6
  %45 = call ptr @memcpy(ptr %vtbl_rec, ptr %arrayidx, i32 172)
  %46 = ptrtoint ptr %vtbl_rec to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %reserved_pebs, ptr %vtbl_rec, align 4
  %call71 = call i32 @ubi_change_vtbl_record(ptr noundef %3, i32 noundef %6, ptr noundef nonnull %vtbl_rec) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end69.out_acc_crit_edge

if.end69.out_acc_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_acc

if.end74:                                         ; preds = %if.end69
  %47 = ptrtoint ptr %reserved_pebs15 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %reserved_pebs, ptr %reserved_pebs15, align 4
  %48 = ptrtoint ptr %vol_type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vol_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %cmp77 = icmp eq i32 %49, 3
  br i1 %cmp77, label %if.then78, label %if.end74.if.end83_crit_edge

if.end74.if.end83_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %used_ebs79 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 12
  %50 = ptrtoint ptr %used_ebs79 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %reserved_pebs, ptr %used_ebs79, align 8
  %usable_leb_size = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 11
  %51 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %usable_leb_size, align 4
  %last_eb_bytes = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 13
  %53 = ptrtoint ptr %last_eb_bytes to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %last_eb_bytes, align 4
  %conv = sext i32 %reserved_pebs to i64
  %conv82 = sext i32 %52 to i64
  %mul = mul nsw i64 %conv82, %conv
  %used_bytes = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 14
  %54 = ptrtoint ptr %used_bytes to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %mul, ptr %used_bytes, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.end74.if.end83_crit_edge
  %call84 = call i32 @ubi_volume_notify(ptr noundef %3, ptr noundef %1, i32 noundef 2) #8
  call fastcc void @self_check_volumes(ptr noundef %3)
  br label %cleanup

out_acc:                                          ; preds = %if.end69.out_acc_crit_edge, %if.then64.out_acc_crit_edge, %for.body.out_acc_crit_edge
  %err.0 = phi i32 [ %call65, %if.then64.out_acc_crit_edge ], [ %call71, %if.end69.out_acc_crit_edge ], [ %call52, %for.body.out_acc_crit_edge ]
  br i1 %cmp30, label %if.then88, label %out_acc.out_free_crit_edge

out_acc.out_free_crit_edge:                       ; preds = %out_acc
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then88:                                        ; preds = %out_acc
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_lock(ptr noundef %volumes_lock) #8
  %rsvd_pebs90 = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 9
  %55 = ptrtoint ptr %rsvd_pebs90 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rsvd_pebs90, align 4
  %sub91 = sub i32 %56, %sub
  store i32 %sub91, ptr %rsvd_pebs90, align 4
  %avail_pebs92 = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 10
  %57 = ptrtoint ptr %avail_pebs92 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %avail_pebs92, align 8
  %add93 = add i32 %58, %sub
  store i32 %add93, ptr %avail_pebs92, align 8
  call void @_raw_spin_unlock(ptr noundef %volumes_lock) #8
  br label %out_free

out_free:                                         ; preds = %if.then88, %out_acc.out_free_crit_edge, %if.end39, %if.end23.out_free_crit_edge
  %err.1 = phi i32 [ -28, %if.end39 ], [ %err.0, %if.then88 ], [ %err.0, %out_acc.out_free_crit_edge ], [ -16, %if.end23.out_free_crit_edge ]
  call void @kfree(ptr noundef %call19) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end83, %if.then21, %if.end14.cleanup_crit_edge, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then12 ], [ %25, %if.then21 ], [ %err.1, %out_free ], [ 0, %if.end83 ], [ -30, %entry.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %vtbl_rec) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_eba_copy_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_rename_volumes(ptr noundef %ubi, ptr noundef %rename_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ubi_vtbl_rename_volumes(ptr noundef %ubi, ptr noundef %rename_list) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %rename_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn46 = load ptr, ptr %rename_list, align 4
  %cmp.not48 = icmp eq ptr %.pn46, %rename_list
  br i1 %cmp.not48, label %for.cond.preheader.if.then20_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.then20_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %volumes_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn49 = phi ptr [ %.pn46, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %remove = getelementptr i8, ptr %.pn49, i32 -8
  %1 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %remove, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %for.body
  %desc = getelementptr i8, ptr %.pn49, i32 -4
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc, align 4
  %call3 = tail call i32 @ubi_remove_volume(ptr noundef %4, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.for.inc_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2.for.inc_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %re.050 = getelementptr i8, ptr %.pn49, i32 -140
  %desc7 = getelementptr i8, ptr %.pn49, i32 -4
  %5 = ptrtoint ptr %desc7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc7, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #8
  %9 = ptrtoint ptr %re.050 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %re.050, align 4
  %name_len = getelementptr inbounds %struct.ubi_volume, ptr %8, i32 0, i32 17
  %11 = ptrtoint ptr %name_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %name_len, align 8
  %name = getelementptr inbounds %struct.ubi_volume, ptr %8, i32 0, i32 18
  %new_name = getelementptr i8, ptr %.pn49, i32 -136
  %12 = load i32, ptr %re.050, align 4
  %add = add i32 %12, 1
  %13 = call ptr @memcpy(ptr %name, ptr %new_name, i32 %add)
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock) #8
  %call12 = tail call i32 @ubi_volume_notify(ptr noundef %ubi, ptr noundef %8, i32 noundef 3) #8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then2.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn49, align 4
  %cmp.not = icmp eq ptr %.pn, %rename_list
  br i1 %cmp.not, label %for.inc.if.then20_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.then20_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.then20:                                        ; preds = %for.inc.if.then20_crit_edge, %for.cond.preheader.if.then20_crit_edge
  tail call fastcc void @self_check_volumes(ptr noundef %ubi)
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then20 ], [ %call3, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_vtbl_rename_volumes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_add_volume(ptr noundef %ubi, ptr noundef %vol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vol_id1 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %0 = ptrtoint ptr %vol_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vol_id1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_add_volume.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_add_volume, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !143) #8
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_add_volume.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.24, i32 noundef %7, i32 noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cdev = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 1
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @ubi_vol_cdev_operations) #8
  %owner = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner, align 8
  %dev7 = getelementptr inbounds %struct.cdev, ptr %ubi, i32 0, i32 4
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev7, align 8
  %shr = and i32 %10, -1048576
  %11 = ptrtoint ptr %vol_id1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vol_id1, align 4
  %add = add i32 %12, 1
  %or = or i32 %add, %shr
  %call10 = tail call i32 @cdev_add(ptr noundef %cdev, i32 noundef %or, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.25, i32 noundef %1, i32 noundef %call10) #8
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %release = getelementptr inbounds %struct.device, ptr %vol, i32 0, i32 35
  %13 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @vol_release, ptr %release, align 4
  %dev15 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 1
  %parent = getelementptr inbounds %struct.device, ptr %vol, i32 0, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev15, ptr %parent, align 8
  %devt = getelementptr inbounds %struct.device, ptr %vol, i32 0, i32 29
  %15 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %devt, align 8
  %class = getelementptr inbounds %struct.device, ptr %vol, i32 0, i32 33
  %16 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ubi_class, ptr %class, align 4
  %groups = getelementptr inbounds %struct.device, ptr %vol, i32 0, i32 34
  %17 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @volume_dev_groups, ptr %groups, align 8
  %ubi_name = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 3
  %18 = ptrtoint ptr %vol_id1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vol_id1, align 4
  %call22 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %vol, ptr noundef nonnull @.str.10, ptr noundef %ubi_name, i32 noundef %19) #8
  %call24 = tail call i32 @device_register(ptr noundef %vol) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %out_cdev

if.end27:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @self_check_volumes(ptr noundef %ubi)
  br label %cleanup

out_cdev:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cdev_del(ptr noundef %cdev) #8
  br label %cleanup

cleanup:                                          ; preds = %out_cdev, %if.end27, %if.then12
  %retval.0 = phi i32 [ %call10, %if.then12 ], [ %call24, %out_cdev ], [ 0, %if.end27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_free_volume(ptr nocapture noundef writeonly %ubi, ptr noundef %vol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_free_volume.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_free_volume, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !143) #8
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
  %vol_id = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %6 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vol_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_free_volume.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.27, i32 noundef %5, i32 noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vol_id4 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %8 = ptrtoint ptr %vol_id4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vol_id4, align 4
  %arrayidx = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx, align 4
  %cdev = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 1
  tail call void @cdev_del(ptr noundef %cdev) #8
  tail call void @device_unregister(ptr noundef %vol) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_fastmap_destroy_checkmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vol_attribute_show(ptr noundef %dev, ptr noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ubi1 = getelementptr inbounds %struct.ubi_volume, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %ubi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ubi1, align 8
  %ubi_num = getelementptr inbounds %struct.ubi_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ubi_num, align 8
  %call = tail call ptr @ubi_get_device(i32 noundef %3) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %volumes_lock = getelementptr inbounds %struct.ubi_device, ptr %call, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #8
  %vol_id = getelementptr inbounds %struct.ubi_volume, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vol_id, align 4
  %arrayidx = getelementptr %struct.ubi_device, ptr %call, i32 0, i32 5, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %ref_count = getelementptr inbounds %struct.ubi_volume, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ref_count, align 8
  %add = add i32 %9, 1
  store i32 %add, ptr %ref_count, align 8
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock) #8
  %cmp = icmp eq ptr %attr, @attr_vol_reserved_ebs
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %reserved_pebs = getelementptr inbounds %struct.ubi_volume, ptr %dev, i32 0, i32 9
  %10 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reserved_pebs, align 4
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %11)
  br label %if.end52

if.else:                                          ; preds = %if.end5
  %cmp9 = icmp eq ptr %attr, @attr_vol_type
  br i1 %cmp9, label %if.then10, label %if.else16

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %vol_type = getelementptr inbounds %struct.ubi_volume, ptr %dev, i32 0, i32 10
  %12 = ptrtoint ptr %vol_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vol_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp11 = icmp eq i32 %13, 3
  %.str.30..str.31 = select i1 %cmp11, ptr @.str.30, ptr @.str.31
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, ptr noundef nonnull %.str.30..str.31)
  br label %if.end52

if.else16:                                        ; preds = %if.else
  %cmp17 = icmp eq ptr %attr, @attr_vol_name
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ubi_volume, ptr %dev, i32 0, i32 18
  %call19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, ptr noundef %name)
  br label %if.end52

if.else20:                                        ; preds = %if.else16
  %cmp21 = icmp eq ptr %attr, @attr_vol_corrupted
  br i1 %cmp21, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  %corrupted = getelementptr inbounds %struct.ubi_volume, ptr %dev, i32 0, i32 25
  %14 = ptrtoint ptr %corrupted to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %corrupted, align 8
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %call23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %bf.cast)
  br label %if.end52

if.else24:                                        ; preds = %if.else20
  %cmp25 = icmp eq ptr %attr, @attr_vol_alignment
  br i1 %cmp25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  %alignment = getelementptr inbounds %struct.ubi_volume, ptr %dev, i32 0, i32 15
  %15 = ptrtoint ptr %alignment to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %alignment, align 8
  %call27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %16)
  br label %if.end52

if.else28:                                        ; preds = %if.else24
  %cmp29 = icmp eq ptr %attr, @attr_vol_usable_eb_size
  br i1 %cmp29, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #10
  %usable_leb_size = getelementptr inbounds %struct.ubi_volume, ptr %dev, i32 0, i32 11
  %17 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %usable_leb_size, align 4
  %call31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %18)
  br label %if.end52

if.else32:                                        ; preds = %if.else28
  %cmp33 = icmp eq ptr %attr, @attr_vol_data_bytes
  br i1 %cmp33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #10
  %used_bytes = getelementptr inbounds %struct.ubi_volume, ptr %dev, i32 0, i32 14
  %19 = ptrtoint ptr %used_bytes to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %used_bytes, align 8
  %call35 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.33, i64 noundef %20)
  br label %if.end52

if.else36:                                        ; preds = %if.else32
  %cmp37 = icmp eq ptr %attr, @attr_vol_upd_marker
  br i1 %cmp37, label %if.then38, label %if.else36.if.end52_crit_edge

if.else36.if.end52_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then38:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  %upd_marker = getelementptr inbounds %struct.ubi_volume, ptr %dev, i32 0, i32 25
  %21 = ptrtoint ptr %upd_marker to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load39 = load i8, ptr %upd_marker, align 8
  %bf.lshr40 = lshr i8 %bf.load39, 4
  %bf.clear41 = and i8 %bf.lshr40, 1
  %bf.cast42 = zext i8 %bf.clear41 to i32
  %call43 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %bf.cast42)
  br label %if.end52

if.end52:                                         ; preds = %if.then38, %if.else36.if.end52_crit_edge, %if.then34, %if.then30, %if.then26, %if.then22, %if.then18, %if.then10, %if.then7
  %ret.0 = phi i32 [ %call8, %if.then7 ], [ %call15, %if.then10 ], [ %call19, %if.then18 ], [ %call23, %if.then22 ], [ %call27, %if.then26 ], [ %call31, %if.then30 ], [ %call35, %if.then34 ], [ %call43, %if.then38 ], [ -22, %if.else36.if.end52_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #8
  %22 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ref_count, align 8
  %sub = add i32 %23, -1
  store i32 %sub, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp56 = icmp slt i32 %sub, 0
  br i1 %cmp56, label %do.end, label %if.end52.cleanup.sink.split_crit_edge, !prof !156

if.end52.cleanup.sink.split_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.end:                                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %24 = tail call i32 @llvm.read_register.i32(metadata !143) #8
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid, align 8
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.34, i32 noundef 104, i32 noundef %29) #15
  tail call void @dump_stack() #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %if.end52.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -19, %if.end.cleanup.sink.split_crit_edge ], [ %ret.0, %do.end ], [ %ret.0, %if.end52.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock) #8
  tail call void @ubi_put_device(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_get_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_vol_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_vtbl_record(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind readnone }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !40, !41, !42, !44, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141}
!llvm.named.register.sp = !{!143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/ubi/vmt.c", i32 170, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ubi_create_volume.__UNIQUE_ID_ddebug230, !1, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/ubi/vmt.c", i32 178, i32 17}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/ubi/vmt.c", i32 185, i32 2}
!10 = !{ptr @ubi_create_volume.__UNIQUE_ID_ddebug231, !9, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/ubi/vmt.c", i32 192, i32 16}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mtd/ubi/vmt.c", i32 201, i32 17}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mtd/ubi/vmt.c", i32 213, i32 16}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/ubi/vmt.c", i32 216, i32 17}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mtd/ubi/vmt.c", i32 275, i32 26}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/ubi/vmt.c", i32 278, i32 16}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/ubi/vmt.c", i32 326, i32 15}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/ubi/vmt.c", i32 346, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ubi_remove_volume.__UNIQUE_ID_ddebug232, !26, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/ubi/vmt.c", i32 347, i32 2}
!31 = !{ptr @ubi_remove_volume._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ubi_remove_volume._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ubi_remove_volume._entry.16, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/mtd/ubi/vmt.c", i32 348, i32 2}
!35 = !{ptr @ubi_remove_volume._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/ubi/vmt.c", i32 394, i32 15}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/ubi/vmt.c", i32 423, i32 2}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ubi_resize_volume.__UNIQUE_ID_ddebug233, !39, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/ubi/vmt.c", i32 428, i32 16}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/ubi/vmt.c", i32 454, i32 17}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/ubi/vmt.c", i32 580, i32 2}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ubi_add_volume.__UNIQUE_ID_ddebug234, !47, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/ubi/vmt.c", i32 588, i32 16}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/ubi/vmt.c", i32 621, i32 2}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ubi_free_volume.__UNIQUE_ID_ddebug235, !53, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!56 = !{ptr @volume_dev_groups, !57, !"volume_dev_groups", i1 false, i1 false}
!57 = !{!"../drivers/mtd/ubi/vmt.c", i32 121, i32 1}
!58 = !{ptr @volume_dev_group, !57, !"volume_dev_group", i1 false, i1 false}
!59 = !{ptr @volume_dev_attrs, !60, !"volume_dev_attrs", i1 false, i1 false}
!60 = !{!"../drivers/mtd/ubi/vmt.c", i32 110, i32 26}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/ubi/vmt.c", i32 26, i32 2}
!63 = !{ptr @attr_vol_reserved_ebs, !64, !"attr_vol_reserved_ebs", i1 false, i1 false}
!64 = !{!"../drivers/mtd/ubi/vmt.c", i32 25, i32 32}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/ubi/vmt.c", i32 76, i32 22}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/ubi/vmt.c", i32 81, i32 9}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/ubi/vmt.c", i32 83, i32 9}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/ubi/vmt.c", i32 84, i32 22}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mtd/ubi/vmt.c", i32 94, i32 22}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/ubi/vmt.c", i32 104, i32 2}
!77 = !{ptr @vol_attribute_show._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @vol_attribute_show._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/ubi/vmt.c", i32 28, i32 2}
!81 = !{ptr @attr_vol_type, !82, !"attr_vol_type", i1 false, i1 false}
!82 = !{!"../drivers/mtd/ubi/vmt.c", i32 27, i32 32}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/ubi/vmt.c", i32 30, i32 2}
!85 = !{ptr @attr_vol_name, !86, !"attr_vol_name", i1 false, i1 false}
!86 = !{!"../drivers/mtd/ubi/vmt.c", i32 29, i32 32}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/ubi/vmt.c", i32 32, i32 2}
!89 = !{ptr @attr_vol_corrupted, !90, !"attr_vol_corrupted", i1 false, i1 false}
!90 = !{!"../drivers/mtd/ubi/vmt.c", i32 31, i32 32}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mtd/ubi/vmt.c", i32 34, i32 2}
!93 = !{ptr @attr_vol_alignment, !94, !"attr_vol_alignment", i1 false, i1 false}
!94 = !{!"../drivers/mtd/ubi/vmt.c", i32 33, i32 32}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/ubi/vmt.c", i32 36, i32 2}
!97 = !{ptr @attr_vol_usable_eb_size, !98, !"attr_vol_usable_eb_size", i1 false, i1 false}
!98 = !{!"../drivers/mtd/ubi/vmt.c", i32 35, i32 32}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/ubi/vmt.c", i32 38, i32 2}
!101 = !{ptr @attr_vol_data_bytes, !102, !"attr_vol_data_bytes", i1 false, i1 false}
!102 = !{!"../drivers/mtd/ubi/vmt.c", i32 37, i32 32}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mtd/ubi/vmt.c", i32 40, i32 2}
!105 = !{ptr @attr_vol_upd_marker, !106, !"attr_vol_upd_marker", i1 false, i1 false}
!106 = !{!"../drivers/mtd/ubi/vmt.c", i32 39, i32 32}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/ubi/vmt.c", i32 649, i32 17}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mtd/ubi/vmt.c", i32 658, i32 16}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mtd/ubi/vmt.c", i32 662, i32 16}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mtd/ubi/vmt.c", i32 668, i32 16}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mtd/ubi/vmt.c", i32 674, i32 16}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mtd/ubi/vmt.c", i32 680, i32 16}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mtd/ubi/vmt.c", i32 685, i32 16}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mtd/ubi/vmt.c", i32 690, i32 16}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mtd/ubi/vmt.c", i32 696, i32 16}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mtd/ubi/vmt.c", i32 701, i32 16}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mtd/ubi/vmt.c", i32 708, i32 16}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mtd/ubi/vmt.c", i32 715, i32 17}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mtd/ubi/vmt.c", i32 719, i32 17}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mtd/ubi/vmt.c", i32 723, i32 17}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mtd/ubi/vmt.c", i32 727, i32 17}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mtd/ubi/vmt.c", i32 732, i32 17}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mtd/ubi/vmt.c", i32 765, i32 16}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mtd/ubi/vmt.c", i32 773, i32 15}
!143 = !{!"sp"}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i64 2148782459, i64 2148782464, i64 2148782477, i64 2148782521, i64 2148782555, i64 2148782576}
!154 = !{!"branch_weights", i32 2000, i32 1}
!155 = !{i64 2148053994, i64 2148054274, i64 2148054608, i64 2148054942}
!156 = !{!"branch_weights", i32 1, i32 2000}
