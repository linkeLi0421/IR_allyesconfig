; ModuleID = '/llk/IR_all_yes/drivers/md/dm-ioctl.c_pt.bc'
source_filename = "../drivers/md/dm-ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dm_copy_name_and_uuid\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_copy_name_and_uuid\09\09\09\09"
module asm "\09.long\09__crc_dm_copy_name_and_uuid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_copy_name_and_uuid:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_copy_name_and_uuid\22\09\09\09\09\09"
module asm "__kstrtabns_dm_copy_name_and_uuid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.90 = type { i32, i32, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.hash_cell = type { %struct.rb_node, %struct.rb_node, i8, i8, ptr, ptr, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dm_ioctl = type { [3 x i32], i32, i32, i32, i32, i32, i32, i32, i64, [128 x i8], [129 x i8], [7 x i8] }
%struct.dm_target_spec = type { i64, i64, i32, i32, [16 x i8] }
%struct.mapped_device = type { %struct.mutex, %struct.mutex, %struct.list_head, ptr, i32, %struct.mutex, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, [16 x i8], ptr, ptr, %struct.work_struct, %struct.wait_queue_head, %struct.spinlock, %struct.bio_list, ptr, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, i32, %struct.bio_set, %struct.bio_set, ptr, %struct.hd_geometry, %struct.dm_kobject_holder, i32, %struct.semaphore, %struct.mutex, %struct.dm_stats, ptr, i8, %struct.srcu_struct, i32, ptr, %struct.dm_ima_measurements }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bio_list = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.hlist_node = type { ptr, ptr }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.dm_kobject_holder = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.dm_stats = type { %struct.mutex, %struct.list_head, ptr, i64, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.dm_ima_measurements = type { %struct.dm_ima_device_table_metadata, %struct.dm_ima_device_table_metadata, i32 }
%struct.dm_ima_device_table_metadata = type { ptr, i32, i32, ptr, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
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
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dm_name_list = type { i64, i32, [0 x i8] }
%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.dm_dev_internal = type { %struct.list_head, %struct.refcount_struct, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.dm_target_deps = type { i32, i32, [0 x i64] }
%struct.vers_iter = type { i32, ptr, ptr, ptr, i32 }
%struct.dm_target_msg = type { i64, [0 x i8] }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.dm_target_versions = type { i32, [3 x i32], [0 x i8] }

@__UNIQUE_ID_alias347 = internal constant [31 x i8] c"dm_mod.alias=char-major-10-236\00", section ".modinfo", align 1
@__UNIQUE_ID_alias348 = internal constant [36 x i8] c"dm_mod.alias=devname:mapper/control\00", section ".modinfo", align 1
@_dm_misc = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 236, ptr @.str.21, ptr @_ctl_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @.str.22, i16 0 }, [56 x i8] zeroinitializer }, align 32
@dm_interface_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013device-mapper: ioctl: misc_register failed for control device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dm_interface_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/md/dm-ioctl.c\00", [42 x i8] zeroinitializer }, align 32
@dm_interface_init._entry_ptr = internal global ptr @dm_interface_init._entry, section ".printk_index", align 4
@dm_interface_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 2094, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016device-mapper: ioctl: %d.%d.%d%s initialised: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@dm_interface_init._entry_ptr.5 = internal global ptr @dm_interface_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"-ioctl (2021-03-22)\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dm-devel@redhat.com\00", [44 x i8] zeroinitializer }, align 32
@dm_hash_cells_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.107, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dm_hash_cells_mutex, i64 52), ptr getelementptr (i8, ptr @dm_hash_cells_mutex, i64 52) }, ptr @dm_hash_cells_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.108, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__kstrtab_dm_copy_name_and_uuid = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_copy_name_and_uuid = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_copy_name_and_uuid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_copy_name_and_uuid to i32), ptr @__kstrtab_dm_copy_name_and_uuid, ptr @__kstrtabns_dm_copy_name_and_uuid }, section "___ksymtab_gpl+dm_copy_name_and_uuid", align 4
@dm_early_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 2195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014device-mapper: ioctl: error adding target to table\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dm_early_create\00", [16 x i8] zeroinitializer }, align 32
@dm_early_create._entry_ptr = internal global ptr @dm_early_create._entry, section ".printk_index", align 4
@dm_early_create._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 2208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014device-mapper: ioctl: unable to set up device queue for new table.\0A\00", [58 x i8] zeroinitializer }, align 32
@dm_early_create._entry_ptr.13 = internal global ptr @dm_early_create._entry.11, section ".printk_index", align 4
@dm_early_create._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 2226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016device-mapper: ioctl: %s (%s) is ready\0A\00", [54 x i8] zeroinitializer }, align 32
@dm_early_create._entry_ptr.16 = internal global ptr @dm_early_create._entry.14, section ".printk_index", align 4
@_hash_lock = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @_hash_lock, i64 56), ptr getelementptr (i8, ptr @_hash_lock, i64 56) }, ptr @_hash_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@name_rb_tree = internal global { %struct.rb_root, [28 x i8] } zeroinitializer, align 32
@dm_hash_remove_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014device-mapper: ioctl: remove_all left %d open device(s)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dm_hash_remove_all\00", [45 x i8] zeroinitializer }, align 32
@dm_hash_remove_all._entry_ptr = internal global ptr @dm_hash_remove_all._entry, section ".printk_index", align 4
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_hash_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"_hash_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"device-mapper\00", [18 x i8] zeroinitializer }, align 32
@_ctl_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dm_poll, ptr @dm_ctl_ioctl, ptr null, ptr null, i32 0, ptr @dm_open, ptr null, ptr @dm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mapper/control\00", [17 x i8] zeroinitializer }, align 32
@dm_global_eventq = external dso_local global %struct.wait_queue_head, align 4
@dm_global_event_nr = external dso_local global %struct.atomic_t, align 4
@ctl_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014device-mapper: ioctl: dm_ctl_ioctl: unknown command 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ctl_ioctl\00", [22 x i8] zeroinitializer }, align 32
@ctl_ioctl._entry_ptr = internal global ptr @ctl_ioctl._entry, section ".printk_index", align 4
@ctl_ioctl._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 1992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\013device-mapper: ioctl: ioctl %d tried to output some data but has IOCTL_FLAGS_NO_PARAMS set\0A\00", [34 x i8] zeroinitializer }, align 32
@ctl_ioctl._entry_ptr.27 = internal global ptr @ctl_ioctl._entry.25, section ".printk_index", align 4
@check_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 1813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\014device-mapper: ioctl: ioctl interface mismatch: kernel(%u.%u.%u), user(%u.%u.%u), cmd(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"check_version\00", [18 x i8] zeroinitializer }, align 32
@check_version._entry_ptr = internal global ptr @check_version._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@lookup_ioctl._ioctls = internal constant { [18 x %struct.anon.90], [40 x i8] } { [18 x %struct.anon.90] [%struct.anon.90 zeroinitializer, %struct.anon.90 { i32 1, i32 3, ptr @remove_all }, %struct.anon.90 { i32 2, i32 0, ptr @list_devices }, %struct.anon.90 { i32 3, i32 3, ptr @dev_create }, %struct.anon.90 { i32 4, i32 3, ptr @dev_remove }, %struct.anon.90 { i32 5, i32 2, ptr @dev_rename }, %struct.anon.90 { i32 6, i32 1, ptr @dev_suspend }, %struct.anon.90 { i32 7, i32 1, ptr @dev_status }, %struct.anon.90 { i32 8, i32 0, ptr @dev_wait }, %struct.anon.90 { i32 9, i32 0, ptr @table_load }, %struct.anon.90 { i32 10, i32 1, ptr @table_clear }, %struct.anon.90 { i32 11, i32 0, ptr @table_deps }, %struct.anon.90 { i32 12, i32 0, ptr @table_status }, %struct.anon.90 { i32 13, i32 0, ptr @list_versions }, %struct.anon.90 { i32 14, i32 0, ptr @target_message }, %struct.anon.90 { i32 15, i32 0, ptr @dev_set_geometry }, %struct.anon.90 { i32 -1053229808, i32 1, ptr @dev_arm_poll }, %struct.anon.90 { i32 -1053229807, i32 0, ptr @get_target_version }], [40 x i8] zeroinitializer }, align 32
@dm_get_inactive_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014device-mapper: ioctl: device has been removed from the dev hash table.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dm_get_inactive_table\00", [42 x i8] zeroinitializer }, align 32
@dm_get_inactive_table._entry_ptr = internal global ptr @dm_get_inactive_table._entry, section ".printk_index", align 4
@dev_remove._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@dev_remove.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dm_mod\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dev_remove\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"device-mapper: ioctl: device doesn't appear to be in the dev hash table.\0A\00", [54 x i8] zeroinitializer }, align 32
@dev_remove._rs.39 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dev_remove.descriptor.40 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.37, ptr @.str.2, ptr @.str.41, i8 0, i8 -13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"device-mapper: ioctl: unable to remove open device %s\0A\00", [41 x i8] zeroinitializer }, align 32
@uuid_rb_tree = internal global { %struct.rb_root, [28 x i8] } zeroinitializer, align 32
@dev_rename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 1022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014device-mapper: ioctl: Invalid new mapped device name or uuid string supplied.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dev_rename\00", [21 x i8] zeroinitializer }, align 32
@dev_rename._entry_ptr = internal global ptr @dev_rename._entry, section ".printk_index", align 4
@dm_hash_rename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\014device-mapper: ioctl: Unable to change %s on mapped device %s to one that already exists: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dm_hash_rename\00", [17 x i8] zeroinitializer }, align 32
@dm_hash_rename._entry_ptr = internal global ptr @dm_hash_rename._entry, section ".printk_index", align 4
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uuid\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@dm_hash_rename._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.45, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014device-mapper: ioctl: Unable to rename non-existent device, %s to %s%s\0A\00", [54 x i8] zeroinitializer }, align 32
@dm_hash_rename._entry_ptr.50 = internal global ptr @dm_hash_rename._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uuid \00", [26 x i8] zeroinitializer }, align 32
@dm_hash_rename._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\014device-mapper: ioctl: Unable to change uuid of mapped device %s to %s because uuid is already set to %s\0A\00", [53 x i8] zeroinitializer }, align 32
@dm_hash_rename._entry_ptr.54 = internal global ptr @dm_hash_rename._entry.52, section ".printk_index", align 4
@do_resume._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@do_resume.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.55, ptr @.str.2, ptr @.str.38, i8 1, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"do_resume\00", [22 x i8] zeroinitializer }, align 32
@table_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 1448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014device-mapper: ioctl: can't replace immutable target type %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"table_load\00", [21 x i8] zeroinitializer }, align 32
@table_load._entry_ptr = internal global ptr @table_load._entry, section ".printk_index", align 4
@table_load._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.57, ptr @.str.2, i32 1457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@table_load._entry_ptr.59 = internal global ptr @table_load._entry.58, section ".printk_index", align 4
@table_load._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.57, ptr @.str.2, i32 1462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\014device-mapper: ioctl: can't change device type (old=%u vs new=%u) after initial table load.\0A\00", [33 x i8] zeroinitializer }, align 32
@table_load._entry_ptr.62 = internal global ptr @table_load._entry.60, section ".printk_index", align 4
@table_load._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.57, ptr @.str.2, i32 1473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@table_load._entry_ptr.64 = internal global ptr @table_load._entry.63, section ".printk_index", align 4
@populate_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014device-mapper: ioctl: populate_table: no targets specified\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"populate_table\00", [17 x i8] zeroinitializer }, align 32
@populate_table._entry_ptr = internal global ptr @populate_table._entry, section ".printk_index", align 4
@populate_table._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 1391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014device-mapper: ioctl: unable to find target\0A\00", [49 x i8] zeroinitializer }, align 32
@populate_table._entry_ptr.69 = internal global ptr @populate_table._entry.67, section ".printk_index", align 4
@populate_table._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.66, ptr @.str.2, i32 1400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@populate_table._entry_ptr.71 = internal global ptr @populate_table._entry.70, section ".printk_index", align 4
@table_clear._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@table_clear.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.72, ptr @.str.2, ptr @.str.38, i8 1, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"table_clear\00", [20 x i8] zeroinitializer }, align 32
@target_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 1682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014device-mapper: ioctl: Invalid target message parameters.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"target_message\00", [17 x i8] zeroinitializer }, align 32
@target_message._entry_ptr = internal global ptr @target_message._entry, section ".printk_index", align 4
@target_message._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 1689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014device-mapper: ioctl: Failed to split target message parameters\0A\00", [61 x i8] zeroinitializer }, align 32
@target_message._entry_ptr.77 = internal global ptr @target_message._entry.75, section ".printk_index", align 4
@target_message._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.2, i32 1694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014device-mapper: ioctl: Empty message received.\0A\00", [47 x i8] zeroinitializer }, align 32
@target_message._entry_ptr.80 = internal global ptr @target_message._entry.78, section ".printk_index", align 4
@target_message._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.74, ptr @.str.2, i32 1714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014device-mapper: ioctl: Target message sector outside device.\0A\00", [33 x i8] zeroinitializer }, align 32
@target_message._entry_ptr.83 = internal global ptr @target_message._entry.81, section ".printk_index", align 4
@target_message._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.74, ptr @.str.2, i32 1719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014device-mapper: ioctl: Target type does not support messages\0A\00", [33 x i8] zeroinitializer }, align 32
@target_message._entry_ptr.86 = internal global ptr @target_message._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"@cancel_deferred_remove\00", [40 x i8] zeroinitializer }, align 32
@message_for_md._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 1647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013device-mapper: ioctl: Invalid arguments for @cancel_deferred_remove\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"message_for_md\00", [17 x i8] zeroinitializer }, align 32
@message_for_md._entry_ptr = internal global ptr @message_for_md._entry, section ".printk_index", align 4
@message_for_md._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 1657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013device-mapper: ioctl: Unsupported message sent to DM core: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@message_for_md._entry_ptr.92 = internal global ptr @message_for_md._entry.90, section ".printk_index", align 4
@dev_set_geometry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 1057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014device-mapper: ioctl: Invalid geometry supplied.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dev_set_geometry\00", [47 x i8] zeroinitializer }, align 32
@dev_set_geometry._entry_ptr = internal global ptr @dev_set_geometry._entry, section ".printk_index", align 4
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%lu %lu %lu %lu%c\00", [46 x i8] zeroinitializer }, align 32
@dev_set_geometry._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.94, ptr @.str.2, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014device-mapper: ioctl: Unable to interpret geometry settings.\0A\00", [32 x i8] zeroinitializer }, align 32
@dev_set_geometry._entry_ptr.98 = internal global ptr @dev_set_geometry._entry.96, section ".printk_index", align 4
@dev_set_geometry._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.94, ptr @.str.2, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014device-mapper: ioctl: Geometry exceeds range limits.\0A\00", [40 x i8] zeroinitializer }, align 32
@dev_set_geometry._entry_ptr.101 = internal global ptr @dev_set_geometry._entry.99, section ".printk_index", align 4
@validate_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 1919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014device-mapper: ioctl: name not supplied when creating device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"validate_params\00", [16 x i8] zeroinitializer }, align 32
@validate_params._entry_ptr = internal global ptr @validate_params._entry, section ".printk_index", align 4
@validate_params._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 1923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014device-mapper: ioctl: only supply one of name or uuid, cmd(%u)\0A\00", [62 x i8] zeroinitializer }, align 32
@validate_params._entry_ptr.106 = internal global ptr @validate_params._entry.104, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dm_hash_cells_mutex.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dm_hash_cells_mutex\00", [44 x i8] zeroinitializer }, align 32
@check_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014device-mapper: ioctl: invalid device name\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"check_name\00", [21 x i8] zeroinitializer }, align 32
@check_name._entry_ptr = internal global ptr @check_name._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 13]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.112 = private unnamed_addr constant [9 x i8] c"_dm_misc\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 2069, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 2088, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 2092, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c"dm_hash_cells_mutex\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 2128, i32 29 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 2195, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 2208, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 2226, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [11 x i8] c"_hash_lock\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [13 x i8] c"name_rb_tree\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 60, i32 23 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 370, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 68, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 2071, i32 13 }
@___asan_gen_.190 = private unnamed_addr constant [10 x i8] c"_ctl_fops\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 2059, i32 37 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 2072, i32 14 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1970, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1992, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1809, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 230, i32 6 }
@___asan_gen_.224 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 214, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 156, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [8 x i8] c"_ioctls\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1763, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 775, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 956, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 973, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [13 x i8] c"uuid_rb_tree\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 61, i32 23 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1022, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 436, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 451, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 462, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1130, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1447, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1457, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1461, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1473, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1383, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1391, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1400, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1517, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1682, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1689, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1694, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1714, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1719, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1645, i32 27 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1647, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1657, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1057, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1061, i32 21 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1065, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1071, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1919, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1923, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 73, i32 8 }
@___asan_gen_.451 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.458 = private constant [25 x i8] c"../drivers/md/dm-ioctl.c\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 752, i32 3 }
@llvm.compiler.used = appending global [153 x ptr] [ptr @__UNIQUE_ID_alias347, ptr @__UNIQUE_ID_alias348, ptr @__ksymtab_dm_copy_name_and_uuid, ptr @check_name._entry, ptr @check_name._entry_ptr, ptr @check_version._entry, ptr @check_version._entry_ptr, ptr @ctl_ioctl._entry, ptr @ctl_ioctl._entry.25, ptr @ctl_ioctl._entry_ptr, ptr @ctl_ioctl._entry_ptr.27, ptr @dev_rename._entry, ptr @dev_rename._entry_ptr, ptr @dev_set_geometry._entry, ptr @dev_set_geometry._entry.96, ptr @dev_set_geometry._entry.99, ptr @dev_set_geometry._entry_ptr, ptr @dev_set_geometry._entry_ptr.101, ptr @dev_set_geometry._entry_ptr.98, ptr @dm_early_create._entry, ptr @dm_early_create._entry.11, ptr @dm_early_create._entry.14, ptr @dm_early_create._entry_ptr, ptr @dm_early_create._entry_ptr.13, ptr @dm_early_create._entry_ptr.16, ptr @dm_get_inactive_table._entry, ptr @dm_get_inactive_table._entry_ptr, ptr @dm_hash_remove_all._entry, ptr @dm_hash_remove_all._entry_ptr, ptr @dm_hash_rename._entry, ptr @dm_hash_rename._entry.48, ptr @dm_hash_rename._entry.52, ptr @dm_hash_rename._entry_ptr, ptr @dm_hash_rename._entry_ptr.50, ptr @dm_hash_rename._entry_ptr.54, ptr @dm_interface_init._entry, ptr @dm_interface_init._entry.3, ptr @dm_interface_init._entry_ptr, ptr @dm_interface_init._entry_ptr.5, ptr @message_for_md._entry, ptr @message_for_md._entry.90, ptr @message_for_md._entry_ptr, ptr @message_for_md._entry_ptr.92, ptr @populate_table._entry, ptr @populate_table._entry.67, ptr @populate_table._entry.70, ptr @populate_table._entry_ptr, ptr @populate_table._entry_ptr.69, ptr @populate_table._entry_ptr.71, ptr @table_load._entry, ptr @table_load._entry.58, ptr @table_load._entry.60, ptr @table_load._entry.63, ptr @table_load._entry_ptr, ptr @table_load._entry_ptr.59, ptr @table_load._entry_ptr.62, ptr @table_load._entry_ptr.64, ptr @target_message._entry, ptr @target_message._entry.75, ptr @target_message._entry.78, ptr @target_message._entry.81, ptr @target_message._entry.84, ptr @target_message._entry_ptr, ptr @target_message._entry_ptr.77, ptr @target_message._entry_ptr.80, ptr @target_message._entry_ptr.83, ptr @target_message._entry_ptr.86, ptr @validate_params._entry, ptr @validate_params._entry.104, ptr @validate_params._entry_ptr, ptr @validate_params._entry_ptr.106, ptr @_dm_misc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @dm_hash_cells_mutex, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @_hash_lock, ptr @name_rb_tree, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @_ctl_fops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @lookup_ioctl._ioctls, ptr @.str.33, ptr @.str.34, ptr @dev_remove._rs, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @dev_remove._rs.39, ptr @.str.41, ptr @uuid_rb_tree, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @do_resume._rs, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.61, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @table_clear._rs, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dm_misc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_interface_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_interface_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_hash_cells_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_early_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_early_create._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_early_create._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hash_lock to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @name_rb_tree to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_hash_remove_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctl_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctl_ioctl._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lookup_ioctl._ioctls to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_get_inactive_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_remove._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_remove._rs.39 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uuid_rb_tree to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_rename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_hash_rename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_hash_rename._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_hash_rename._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_resume._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_load._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_load._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_load._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @populate_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @populate_table._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @populate_table._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_clear._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_message._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_message._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_message._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_message._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @message_for_md._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @message_for_md._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_set_geometry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_set_geometry._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_set_geometry._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_params._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_deferred_remove() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @dm_hash_remove_all(i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_hash_remove_all(i1 noundef zeroext %keep_open_devices, i1 noundef zeroext %mark_deferred, i1 noundef zeroext %only_deferred) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @_hash_lock) #17
  %call44 = tail call ptr @rb_first(ptr noundef nonnull @name_rb_tree) #17
  %tobool.not4045 = icmp eq ptr %call44, null
  br i1 %tobool.not4045, label %entry.for.end.thread_crit_edge, label %entry.for.body.lr.ph_crit_edge

entry.for.body.lr.ph_crit_edge:                   ; preds = %entry
  br label %for.body.lr.ph

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.end17.for.body.lr.ph_crit_edge, %entry.for.body.lr.ph_crit_edge
  %call46 = phi ptr [ %call, %if.end17.for.body.lr.ph_crit_edge ], [ %call44, %entry.for.body.lr.ph_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %if.then.for.body_crit_edge, %for.body.lr.ph
  %dev_skipped.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.then.for.body_crit_edge ]
  %n.041 = phi ptr [ %call46, %for.body.lr.ph ], [ %call18, %if.then.for.body_crit_edge ]
  %md3 = getelementptr inbounds %struct.hash_cell, ptr %n.041, i32 0, i32 6
  %0 = ptrtoint ptr %md3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %md3, align 4
  tail call void @dm_get(ptr noundef %1) #17
  br i1 %keep_open_devices, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %call7 = tail call i32 @dm_lock_for_deletion(ptr noundef %1, i1 noundef zeroext %mark_deferred, i1 noundef zeroext %only_deferred) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @dm_put(ptr noundef %1) #17
  %inc = add i32 %dev_skipped.042, 1
  %call18 = tail call ptr @rb_next(ptr noundef nonnull %n.041) #17
  %tobool.not = icmp eq ptr %call18, null
  br i1 %tobool.not, label %for.end, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %n.041.lcssa = phi ptr [ %n.041, %land.lhs.true.if.end_crit_edge ], [ %call46, %for.body.if.end_crit_edge ]
  %call9 = tail call fastcc ptr @__hash_remove(ptr noundef nonnull %n.041.lcssa)
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #17
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dm_sync_table(ptr noundef %1) #17
  tail call void @dm_table_destroy(ptr noundef nonnull %call9) #17
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  tail call void @dm_ima_measure_on_device_remove(ptr noundef %1, i1 noundef zeroext true) #17
  tail call void @dm_put(ptr noundef %1) #17
  br i1 %keep_open_devices, label %if.then16, label %if.else, !prof !224

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dm_destroy(ptr noundef %1) #17
  br label %if.end17

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dm_destroy_immediate(ptr noundef %1) #17
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  tail call void @down_write(ptr noundef nonnull @_hash_lock) #17
  %call = tail call ptr @rb_first(ptr noundef nonnull @name_rb_tree) #17
  %tobool.not40 = icmp eq ptr %call, null
  br i1 %tobool.not40, label %if.end17.for.end.thread_crit_edge, label %if.end17.for.body.lr.ph_crit_edge

if.end17.for.body.lr.ph_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.lr.ph

if.end17.for.end.thread_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.end17.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #17
  br label %if.end23

for.end:                                          ; preds = %if.then
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool19.not = icmp eq i32 %inc, 0
  br i1 %tobool19.not, label %for.end.if.end23_crit_edge, label %do.end

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %inc) #20
  br label %if.end23

if.end23:                                         ; preds = %do.end, %for.end.if.end23_crit_edge, %for.end.thread
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_interface_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @misc_register(ptr noundef nonnull @_dm_misc) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end4, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #20
  br label %cleanup

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 4, i32 noundef 45, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end4, %do.end
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_interface_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @misc_deregister(ptr noundef nonnull @_dm_misc) #17
  tail call fastcc void @dm_hash_remove_all(i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_copy_name_and_uuid(ptr noundef %md, ptr noundef %name, ptr noundef %uuid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %md, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @dm_hash_cells_mutex, i32 noundef 0) #17
  %call = tail call ptr @dm_get_mdptr(ptr noundef nonnull %md) #17
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %md2 = getelementptr inbounds %struct.hash_cell, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %md2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %md2, align 4
  %cmp.not = icmp eq ptr %1, %md
  br i1 %cmp.not, label %if.end4, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end4:                                          ; preds = %lor.lhs.false
  %tobool5.not = icmp eq ptr %name, null
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %name7 = getelementptr inbounds %struct.hash_cell, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name7, align 4
  %call8 = tail call ptr @strcpy(ptr noundef nonnull %name, ptr noundef %3) #21
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %tobool10.not = icmp eq ptr %uuid, null
  br i1 %tobool10.not, label %if.end9.out_crit_edge, label %if.then11

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %uuid12 = getelementptr inbounds %struct.hash_cell, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %uuid12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uuid12, align 4
  %tobool13.not = icmp eq ptr %5, null
  %..str.8 = select i1 %tobool13.not, ptr @.str.8, ptr %5
  %call14 = tail call ptr @strcpy(ptr noundef nonnull %uuid, ptr noundef %..str.8) #21
  br label %out

out:                                              ; preds = %if.then11, %if.end9.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge
  %r.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.end9.out_crit_edge ], [ -6, %lor.lhs.false.out_crit_edge ], [ -6, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @dm_hash_cells_mutex) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %out ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_get_mdptr(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_early_create(ptr noundef %dmi, ptr nocapture noundef readonly %spec_array, ptr nocapture noundef readonly %target_params_array) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  %t = alloca ptr, align 4
  %md = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #17
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !225
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %md) #17
  %1 = ptrtoint ptr %md to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %md, align 4, !annotation !225
  %target_count = getelementptr inbounds %struct.dm_ioctl, ptr %dmi, i32 0, i32 3
  %2 = ptrtoint ptr %target_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.dm_ioctl, ptr %dmi, i32 0, i32 9
  %call.i = tail call ptr @strchr(ptr noundef %name, i32 noundef 47) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end3, label %check_name.exit

check_name.exit:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.dm_ioctl, ptr %dmi, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.if.end8_crit_edge, label %if.then5

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.dm_ioctl, ptr %dmi, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dev, align 8
  %conv.i = trunc i64 %7 to i32
  %and1.i.i = and i32 %conv.i, 255
  %shr2.i.i = lshr i32 %conv.i, 12
  %and3.i.i = and i32 %shr2.i.i, 1048320
  %or.i.i = or i32 %and3.i.i, %and1.i.i
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3.if.end8_crit_edge
  %m.0 = phi i32 [ %or.i.i, %if.then5 ], [ -1, %if.end3.if.end8_crit_edge ]
  %call9 = call i32 @dm_create(i32 noundef %m.0, ptr noundef nonnull %md) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %uuid = getelementptr inbounds %struct.dm_ioctl, ptr %dmi, i32 0, i32 10
  %8 = ptrtoint ptr %uuid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %uuid, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool16.not = icmp eq i8 %9, 0
  %spec.select = select i1 %tobool16.not, ptr null, ptr %uuid
  %10 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %md, align 4
  %call19 = call fastcc i32 @dm_hash_insert(ptr noundef %name, ptr noundef %spec.select, ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end12.err_destroy_dm_crit_edge

if.end12.err_destroy_dm_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_destroy_dm

if.end22:                                         ; preds = %if.end12
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i115 = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i115, i32 3, i32 1
  %14 = ptrtoint ptr %target_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %target_count, align 4
  %16 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %md, align 4
  %call25 = call i32 @dm_table_create(ptr noundef nonnull %t, i32 noundef %spec.store.select.i, i32 noundef %15, ptr noundef %17) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.cond.preheader, label %if.end22.err_hash_remove_crit_edge

if.end22.err_hash_remove_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_hash_remove

for.cond.preheader:                               ; preds = %if.end22
  %18 = ptrtoint ptr %target_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %target_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp121.not = icmp eq i32 %19, 0
  br i1 %cmp121.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0122, 1
  %20 = ptrtoint ptr %target_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %target_count, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0122 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %22 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %t, align 4
  %arrayidx = getelementptr ptr, ptr %spec_array, i32 %i.0122
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %target_type = getelementptr inbounds %struct.dm_target_spec, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %25, align 8
  %length = getelementptr inbounds %struct.dm_target_spec, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %length, align 8
  %arrayidx34 = getelementptr ptr, ptr %target_params_array, i32 %i.0122
  %30 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx34, align 4
  %call35 = call i32 @dm_table_add_target(ptr noundef %23, ptr noundef %target_type, i64 noundef %27, i64 noundef %29, ptr noundef %31) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %for.cond, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #20
  br label %err_destroy_table

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %32 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %t, align 4
  %call40 = call i32 @dm_table_complete(ptr noundef %33) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %for.end.err_destroy_table_crit_edge

for.end.err_destroy_table_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_destroy_table

if.end43:                                         ; preds = %for.end
  %34 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %md, align 4
  %36 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %t, align 4
  %call44 = call i32 @dm_setup_md_queue(ptr noundef %35, ptr noundef %37) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end52, label %do.end49

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #20
  br label %err_destroy_table

if.end52:                                         ; preds = %if.end43
  %38 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %md, align 4
  %call53 = call i32 @dm_suspend(ptr noundef %39, i32 noundef 0) #17
  %40 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %md, align 4
  %42 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %t, align 4
  %call54 = call ptr @dm_swap_table(ptr noundef %41, ptr noundef %43) #17
  %cmp.i = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  %44 = ptrtoint ptr %call54 to i32
  br label %err_destroy_table

if.end58:                                         ; preds = %if.end52
  %45 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %md, align 4
  %call59 = call ptr @dm_disk(ptr noundef %46) #17
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 4
  %and61 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62 = icmp ne i32 %and61, 0
  call void @set_disk_ro(ptr noundef %call59, i1 noundef zeroext %tobool62) #17
  %49 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %md, align 4
  %call64 = call i32 @dm_resume(ptr noundef %50) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %do.end70, label %if.end58.err_destroy_table_crit_edge

if.end58.err_destroy_table_crit_edge:             ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_destroy_table

do.end70:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  %51 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %md, align 4
  %disk = getelementptr inbounds %struct.mapped_device, ptr %52, i32 0, i32 14
  %53 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %disk, align 8
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %54, i32 0, i32 3
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %disk_name, ptr noundef %name) #20
  %55 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %md, align 4
  call void @dm_put(ptr noundef %56) #17
  br label %cleanup

err_destroy_table:                                ; preds = %if.end58.err_destroy_table_crit_edge, %if.then56, %do.end49, %for.end.err_destroy_table_crit_edge, %do.end
  %r.0 = phi i32 [ %call35, %do.end ], [ %call40, %for.end.err_destroy_table_crit_edge ], [ %call44, %do.end49 ], [ %44, %if.then56 ], [ %call64, %if.end58.err_destroy_table_crit_edge ]
  %57 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %t, align 4
  call void @dm_table_destroy(ptr noundef %58) #17
  br label %err_hash_remove

err_hash_remove:                                  ; preds = %err_destroy_table, %if.end22.err_hash_remove_crit_edge
  %r.1 = phi i32 [ %call25, %if.end22.err_hash_remove_crit_edge ], [ %r.0, %err_destroy_table ]
  %n.016.i = load ptr, ptr @name_rb_tree, align 4
  %tobool.not17.i = icmp eq ptr %n.016.i, null
  br i1 %tobool.not17.i, label %err_hash_remove.__get_name_cell.exit_crit_edge, label %err_hash_remove.while.body.i_crit_edge

err_hash_remove.while.body.i_crit_edge:           ; preds = %err_hash_remove
  br label %while.body.i

err_hash_remove.__get_name_cell.exit_crit_edge:   ; preds = %err_hash_remove
  call void @__sanitizer_cov_trace_pc() #19
  br label %__get_name_cell.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %err_hash_remove.while.body.i_crit_edge
  %n.018.i = phi ptr [ %n.0.i, %cleanup.i.while.body.i_crit_edge ], [ %n.016.i, %err_hash_remove.while.body.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.hash_cell, ptr %n.018.i, i32 0, i32 4
  %59 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name.i, align 4
  %call.i116 = call i32 @strcmp(ptr noundef %60, ptr noundef %name) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool1.not.i = icmp eq i32 %call.i116, 0
  br i1 %tobool1.not.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %md.i = getelementptr inbounds %struct.hash_cell, ptr %n.018.i, i32 0, i32 6
  %61 = ptrtoint ptr %md.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %md.i, align 4
  call void @dm_get(ptr noundef %62) #17
  br label %__get_name_cell.exit

cleanup.i:                                        ; preds = %while.body.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %cmp13.i = icmp slt i32 %call.i116, 0
  %cond.in.i = select i1 %cmp13.i, ptr %rb_right.i, ptr %rb_left.i
  %63 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %n.0.i = load ptr, ptr %cond.in.i, align 4
  %tobool.not.i117 = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i117, label %cleanup.i.__get_name_cell.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

cleanup.i.__get_name_cell.exit_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__get_name_cell.exit

__get_name_cell.exit:                             ; preds = %cleanup.i.__get_name_cell.exit_crit_edge, %cleanup.thread.i, %err_hash_remove.__get_name_cell.exit_crit_edge
  %n.015.i = phi ptr [ %n.018.i, %cleanup.thread.i ], [ null, %err_hash_remove.__get_name_cell.exit_crit_edge ], [ null, %cleanup.i.__get_name_cell.exit_crit_edge ]
  %call79 = call fastcc ptr @__hash_remove(ptr noundef %n.015.i)
  %64 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %md, align 4
  call void @dm_put(ptr noundef %65) #17
  br label %err_destroy_dm

err_destroy_dm:                                   ; preds = %__get_name_cell.exit, %if.end12.err_destroy_dm_crit_edge
  %r.2 = phi i32 [ %call19, %if.end12.err_destroy_dm_crit_edge ], [ %r.1, %__get_name_cell.exit ]
  %66 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %md, align 4
  call void @dm_put(ptr noundef %67) #17
  %68 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %md, align 4
  call void @dm_destroy(ptr noundef %69) #17
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_dm, %do.end70, %if.end8.cleanup_crit_edge, %check_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.2, %err_destroy_dm ], [ 0, %do.end70 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %check_name.exit ], [ %call9, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %md) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_create(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dm_hash_insert(ptr noundef %name, ptr noundef %uuid, ptr noundef %md) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 44) #23
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #17
  %name2.i = getelementptr inbounds %struct.hash_cell, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1.i, ptr %name2.i, align 4
  %tobool4.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %tobool7.not.i = icmp eq ptr %uuid, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  %uuid9.i = getelementptr inbounds %struct.hash_cell, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %uuid9.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %uuid9.i, align 8
  br label %if.end

if.else.i:                                        ; preds = %if.end6.i
  %call10.i = tail call noalias ptr @kstrdup(ptr noundef nonnull %uuid, i32 noundef 3264) #17
  %uuid11.i = getelementptr inbounds %struct.hash_cell, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %uuid11.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10.i, ptr %uuid11.i, align 8
  %tobool13.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool13.not.i, label %if.then14.i, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name2.i, align 4
  tail call void @kfree(ptr noundef %5) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

if.end:                                           ; preds = %if.else.i.if.end_crit_edge, %if.then8.i
  %uuid_set.i = getelementptr inbounds %struct.hash_cell, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %uuid_set.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %uuid_set.i, align 1
  %name_set.i = getelementptr inbounds %struct.hash_cell, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %name_set.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %name_set.i, align 8
  %md18.i = getelementptr inbounds %struct.hash_cell, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %md18.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %md, ptr %md18.i, align 4
  %new_map.i = getelementptr inbounds %struct.hash_cell, ptr %call7.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %new_map.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %new_map.i, align 8
  tail call void @down_write(ptr noundef nonnull @_hash_lock) #17
  %n.016.i = load ptr, ptr @name_rb_tree, align 4
  %tobool.not17.i = icmp eq ptr %n.016.i, null
  br i1 %tobool.not17.i, label %if.end.if.end5_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %n.018.i = phi ptr [ %n.0.i, %cleanup.i.while.body.i_crit_edge ], [ %n.016.i, %if.end.while.body.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.hash_cell, ptr %n.018.i, i32 0, i32 4
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %11, ptr noundef %name) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then3, label %cleanup.i

cleanup.i:                                        ; preds = %while.body.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp13.i = icmp slt i32 %call.i, 0
  %cond.in.i = select i1 %cmp13.i, ptr %rb_right.i, ptr %rb_left.i
  %12 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %n.0.i = load ptr, ptr %cond.in.i, align 4
  %tobool.not.i28 = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i28, label %cleanup.i.if.end5_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

cleanup.i.if.end5_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then3:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %md.i = getelementptr inbounds %struct.hash_cell, ptr %n.018.i, i32 0, i32 6
  %13 = ptrtoint ptr %md.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %md.i, align 4
  tail call void @dm_get(ptr noundef %14) #17
  br label %free_cell.exit

if.end5:                                          ; preds = %cleanup.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %15 = ptrtoint ptr %name_set.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %name_set.i, align 8, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %if.end5.__unlink_name.exit.i_crit_edge, label %if.then.i.i

if.end5.__unlink_name.exit.i_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %__unlink_name.exit.i

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %name_set.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %name_set.i, align 8
  tail call void @rb_erase(ptr noundef %call7.i.i, ptr noundef nonnull @name_rb_tree) #17
  br label %__unlink_name.exit.i

__unlink_name.exit.i:                             ; preds = %if.then.i.i, %if.end5.__unlink_name.exit.i_crit_edge
  %18 = ptrtoint ptr %name_set.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %name_set.i, align 8
  %19 = load ptr, ptr @name_rb_tree, align 4
  %tobool.not28.i = icmp eq ptr %19, null
  br i1 %tobool.not28.i, label %__unlink_name.exit.i.__link_name.exit_crit_edge, label %while.body.lr.ph.i

__unlink_name.exit.i.__link_name.exit_crit_edge:  ; preds = %__unlink_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__link_name.exit

while.body.lr.ph.i:                               ; preds = %__unlink_name.exit.i
  %20 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name2.i, align 4
  br label %while.body.i31

while.body.i31:                                   ; preds = %do.end11.i.while.body.i31_crit_edge, %while.body.lr.ph.i
  %22 = phi ptr [ %19, %while.body.lr.ph.i ], [ %26, %do.end11.i.while.body.i31_crit_edge ]
  %name.i29 = getelementptr inbounds %struct.hash_cell, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %name.i29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name.i29, align 4
  %call.i30 = tail call i32 @strcmp(ptr noundef %24, ptr noundef %21) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool2.not.i = icmp eq i32 %call.i30, 0
  br i1 %tobool2.not.i, label %do.body6.i, label %do.end11.i, !prof !227

do.body6.i:                                       ; preds = %while.body.i31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-ioctl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #17, !srcloc !228
  unreachable

do.end11.i:                                       ; preds = %while.body.i31
  %rb_left.i32 = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 2
  %rb_right.i33 = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp25.i = icmp slt i32 %call.i30, 0
  %cond.i = select i1 %cmp25.i, ptr %rb_right.i33, ptr %rb_left.i32
  %25 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cond.i, align 4
  %tobool.not.i34 = icmp eq ptr %26, null
  br i1 %tobool.not.i34, label %while.cond.while.end_crit_edge.i, label %do.end11.i.while.body.i31_crit_edge

do.end11.i.while.body.i31_crit_edge:              ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i31

while.cond.while.end_crit_edge.i:                 ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  %phi.cast.le.i = ptrtoint ptr %22 to i32
  br label %__link_name.exit

__link_name.exit:                                 ; preds = %while.cond.while.end_crit_edge.i, %__unlink_name.exit.i.__link_name.exit_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %__unlink_name.exit.i.__link_name.exit_crit_edge ]
  %n.0.lcssa.i = phi ptr [ %cond.i, %while.cond.while.end_crit_edge.i ], [ @name_rb_tree, %__unlink_name.exit.i.__link_name.exit_crit_edge ]
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rb_left.i.i, align 8
  %30 = ptrtoint ptr %n.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %n.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %call7.i.i, ptr noundef nonnull @name_rb_tree) #17
  br i1 %tobool7.not.i, label %__link_name.exit.if.end13_crit_edge, label %if.then7

__link_name.exit.if.end13_crit_edge:              ; preds = %__link_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then7:                                         ; preds = %__link_name.exit
  %n.015.i35 = load ptr, ptr @uuid_rb_tree, align 4
  %tobool.not16.i = icmp eq ptr %n.015.i35, null
  br i1 %tobool.not16.i, label %if.then7.if.end12_crit_edge, label %if.then7.while.body.i38_crit_edge

if.then7.while.body.i38_crit_edge:                ; preds = %if.then7
  br label %while.body.i38

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

while.body.i38:                                   ; preds = %cleanup.i47.while.body.i38_crit_edge, %if.then7.while.body.i38_crit_edge
  %n.017.i = phi ptr [ %n.0.i45, %cleanup.i47.while.body.i38_crit_edge ], [ %n.015.i35, %if.then7.while.body.i38_crit_edge ]
  %uuid.i = getelementptr i8, ptr %n.017.i, i32 20
  %31 = ptrtoint ptr %uuid.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %uuid.i, align 4
  %call.i36 = tail call i32 @strcmp(ptr noundef %32, ptr noundef nonnull %uuid) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool1.not.i37 = icmp eq i32 %call.i36, 0
  br i1 %tobool1.not.i37, label %__get_uuid_cell.exit, label %cleanup.i47

cleanup.i47:                                      ; preds = %while.body.i38
  %rb_left.i41 = getelementptr inbounds %struct.rb_node, ptr %n.017.i, i32 0, i32 2
  %rb_right.i42 = getelementptr inbounds %struct.rb_node, ptr %n.017.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %cmp13.i43 = icmp slt i32 %call.i36, 0
  %cond.in.i44 = select i1 %cmp13.i43, ptr %rb_right.i42, ptr %rb_left.i41
  %33 = ptrtoint ptr %cond.in.i44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %n.0.i45 = load ptr, ptr %cond.in.i44, align 4
  %tobool.not.i46 = icmp eq ptr %n.0.i45, null
  br i1 %tobool.not.i46, label %cleanup.i47.if.end12_crit_edge, label %cleanup.i47.while.body.i38_crit_edge

cleanup.i47.while.body.i38_crit_edge:             ; preds = %cleanup.i47
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i38

cleanup.i47.if.end12_crit_edge:                   ; preds = %cleanup.i47
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

__get_uuid_cell.exit:                             ; preds = %while.body.i38
  %add.ptr.i = getelementptr i8, ptr %n.017.i, i32 -12
  %md.i39 = getelementptr i8, ptr %n.017.i, i32 24
  %34 = ptrtoint ptr %md.i39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %md.i39, align 4
  tail call void @dm_get(ptr noundef %35) #17
  %tobool9.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool9.not, label %__get_uuid_cell.exit.if.end12_crit_edge, label %if.then10

__get_uuid_cell.exit.if.end12_crit_edge:          ; preds = %__get_uuid_cell.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then10:                                        ; preds = %__get_uuid_cell.exit
  %36 = ptrtoint ptr %name_set.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %name_set.i, align 8, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i49 = icmp eq i8 %37, 0
  br i1 %tobool.not.i49, label %if.then10.free_cell.exit_crit_edge, label %if.then.i

if.then10.free_cell.exit_crit_edge:               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_cell.exit

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  %38 = ptrtoint ptr %name_set.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %name_set.i, align 8
  tail call void @rb_erase(ptr noundef %call7.i.i, ptr noundef nonnull @name_rb_tree) #17
  br label %free_cell.exit

if.end12:                                         ; preds = %__get_uuid_cell.exit.if.end12_crit_edge, %cleanup.i47.if.end12_crit_edge, %if.then7.if.end12_crit_edge
  %39 = ptrtoint ptr %uuid_set.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %uuid_set.i, align 1, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i51 = icmp eq i8 %40, 0
  br i1 %tobool.not.i.i51, label %if.end12.__unlink_uuid.exit.i_crit_edge, label %if.then.i.i52

if.end12.__unlink_uuid.exit.i_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %__unlink_uuid.exit.i

if.then.i.i52:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  %41 = ptrtoint ptr %uuid_set.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %uuid_set.i, align 1
  %uuid_node.i.i = getelementptr inbounds %struct.hash_cell, ptr %call7.i.i, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %uuid_node.i.i, ptr noundef nonnull @uuid_rb_tree) #17
  br label %__unlink_uuid.exit.i

__unlink_uuid.exit.i:                             ; preds = %if.then.i.i52, %if.end12.__unlink_uuid.exit.i_crit_edge
  %42 = ptrtoint ptr %uuid_set.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %uuid_set.i, align 1
  %43 = load ptr, ptr @uuid_rb_tree, align 4
  %tobool.not27.i = icmp eq ptr %43, null
  br i1 %tobool.not27.i, label %__unlink_uuid.exit.i.__link_uuid.exit_crit_edge, label %while.body.lr.ph.i53

__unlink_uuid.exit.i.__link_uuid.exit_crit_edge:  ; preds = %__unlink_uuid.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__link_uuid.exit

while.body.lr.ph.i53:                             ; preds = %__unlink_uuid.exit.i
  %uuid1.i = getelementptr inbounds %struct.hash_cell, ptr %call7.i.i, i32 0, i32 5
  %44 = ptrtoint ptr %uuid1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %uuid1.i, align 8
  br label %while.body.i57

while.body.i57:                                   ; preds = %do.end11.i63.while.body.i57_crit_edge, %while.body.lr.ph.i53
  %46 = phi ptr [ %43, %while.body.lr.ph.i53 ], [ %50, %do.end11.i63.while.body.i57_crit_edge ]
  %uuid.i54 = getelementptr i8, ptr %46, i32 20
  %47 = ptrtoint ptr %uuid.i54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %uuid.i54, align 4
  %call.i55 = tail call i32 @strcmp(ptr noundef %48, ptr noundef %45) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool2.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool2.not.i56, label %do.body6.i58, label %do.end11.i63, !prof !227

do.body6.i58:                                     ; preds = %while.body.i57
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-ioctl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 170, 0\0A.popsection", ""() #17, !srcloc !229
  unreachable

do.end11.i63:                                     ; preds = %while.body.i57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp.i = icmp sgt i32 %call.i55, 0
  %rb_left.i59 = getelementptr inbounds %struct.rb_node, ptr %46, i32 0, i32 2
  %rb_right.i60 = getelementptr inbounds %struct.rb_node, ptr %46, i32 0, i32 1
  %cond.i61 = select i1 %cmp.i, ptr %rb_left.i59, ptr %rb_right.i60
  %49 = ptrtoint ptr %cond.i61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cond.i61, align 4
  %tobool.not.i62 = icmp eq ptr %50, null
  br i1 %tobool.not.i62, label %while.cond.while.end_crit_edge.i65, label %do.end11.i63.while.body.i57_crit_edge

do.end11.i63.while.body.i57_crit_edge:            ; preds = %do.end11.i63
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i57

while.cond.while.end_crit_edge.i65:               ; preds = %do.end11.i63
  call void @__sanitizer_cov_trace_pc() #19
  %phi.cast.le.i64 = ptrtoint ptr %46 to i32
  br label %__link_uuid.exit

__link_uuid.exit:                                 ; preds = %while.cond.while.end_crit_edge.i65, %__unlink_uuid.exit.i.__link_uuid.exit_crit_edge
  %parent.0.lcssa.i66 = phi i32 [ %phi.cast.le.i64, %while.cond.while.end_crit_edge.i65 ], [ 0, %__unlink_uuid.exit.i.__link_uuid.exit_crit_edge ]
  %n.0.lcssa.i67 = phi ptr [ %cond.i61, %while.cond.while.end_crit_edge.i65 ], [ @uuid_rb_tree, %__unlink_uuid.exit.i.__link_uuid.exit_crit_edge ]
  %uuid_node13.i = getelementptr inbounds %struct.hash_cell, ptr %call7.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %uuid_node13.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %parent.0.lcssa.i66, ptr %uuid_node13.i, align 4
  %rb_right.i.i68 = getelementptr inbounds %struct.hash_cell, ptr %call7.i.i, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %rb_right.i.i68 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %rb_right.i.i68, align 8
  %rb_left.i.i69 = getelementptr inbounds %struct.hash_cell, ptr %call7.i.i, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %rb_left.i.i69 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %rb_left.i.i69, align 4
  %54 = ptrtoint ptr %n.0.lcssa.i67 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %uuid_node13.i, ptr %n.0.lcssa.i67, align 4
  tail call void @rb_insert_color(ptr noundef %uuid_node13.i, ptr noundef nonnull @uuid_rb_tree) #17
  br label %if.end13

if.end13:                                         ; preds = %__link_uuid.exit, %__link_name.exit.if.end13_crit_edge
  tail call void @dm_get(ptr noundef %md) #17
  tail call void @mutex_lock_nested(ptr noundef nonnull @dm_hash_cells_mutex, i32 noundef 0) #17
  tail call void @dm_set_mdptr(ptr noundef %md, ptr noundef nonnull %call7.i.i) #17
  tail call void @mutex_unlock(ptr noundef nonnull @dm_hash_cells_mutex) #17
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #17
  br label %cleanup

free_cell.exit:                                   ; preds = %if.then.i, %if.then10.free_cell.exit_crit_edge, %if.then3
  %md.i39.sink = phi ptr [ %md.i, %if.then3 ], [ %md.i39, %if.then10.free_cell.exit_crit_edge ], [ %md.i39, %if.then.i ]
  %55 = ptrtoint ptr %md.i39.sink to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %md.i39.sink, align 4
  tail call void @dm_put(ptr noundef %56) #17
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #17
  %57 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name2.i, align 4
  tail call void @kfree(ptr noundef %58) #17
  %uuid.i72 = getelementptr inbounds %struct.hash_cell, ptr %call7.i.i, i32 0, i32 5
  %59 = ptrtoint ptr %uuid.i72 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %uuid.i72, align 8
  tail call void @kfree(ptr noundef %60) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %free_cell.exit, %if.end13, %if.then14.i, %if.then5.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %free_cell.exit ], [ 0, %if.end13 ], [ -12, %if.then14.i ], [ -12, %if.then5.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_create(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_add_target(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_setup_md_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_swap_table(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_disk_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_disk(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__hash_remove(ptr noundef %hc) unnamed_addr #0 align 64 {
entry:
  %srcu_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx) #17
  %0 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %srcu_idx, align 4, !annotation !225
  %name_set.i = getelementptr inbounds %struct.hash_cell, ptr %hc, i32 0, i32 2
  %1 = ptrtoint ptr %name_set.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %name_set.i, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.__unlink_name.exit_crit_edge, label %if.then.i

entry.__unlink_name.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %__unlink_name.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %name_set.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %name_set.i, align 4
  tail call void @rb_erase(ptr noundef %hc, ptr noundef nonnull @name_rb_tree) #17
  br label %__unlink_name.exit

__unlink_name.exit:                               ; preds = %if.then.i, %entry.__unlink_name.exit_crit_edge
  %uuid_set.i = getelementptr inbounds %struct.hash_cell, ptr %hc, i32 0, i32 3
  %4 = ptrtoint ptr %uuid_set.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %uuid_set.i, align 1, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i18 = icmp eq i8 %5, 0
  br i1 %tobool.not.i18, label %__unlink_name.exit.__unlink_uuid.exit_crit_edge, label %if.then.i19

__unlink_name.exit.__unlink_uuid.exit_crit_edge:  ; preds = %__unlink_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %__unlink_uuid.exit

if.then.i19:                                      ; preds = %__unlink_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %uuid_set.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %uuid_set.i, align 1
  %uuid_node.i = getelementptr inbounds %struct.hash_cell, ptr %hc, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %uuid_node.i, ptr noundef nonnull @uuid_rb_tree) #17
  br label %__unlink_uuid.exit

__unlink_uuid.exit:                               ; preds = %if.then.i19, %__unlink_name.exit.__unlink_uuid.exit_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @dm_hash_cells_mutex, i32 noundef 0) #17
  %md = getelementptr inbounds %struct.hash_cell, ptr %hc, i32 0, i32 6
  %7 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %md, align 4
  tail call void @dm_set_mdptr(ptr noundef %8, ptr noundef null) #17
  tail call void @mutex_unlock(ptr noundef nonnull @dm_hash_cells_mutex) #17
  %9 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %md, align 4
  %call = call ptr @dm_get_live_table(ptr noundef %10, ptr noundef nonnull %srcu_idx) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %__unlink_uuid.exit.if.end_crit_edge, label %if.then

__unlink_uuid.exit.if.end_crit_edge:              ; preds = %__unlink_uuid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %__unlink_uuid.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @dm_table_event(ptr noundef nonnull %call) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %__unlink_uuid.exit.if.end_crit_edge
  %11 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %md, align 4
  %13 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %srcu_idx, align 4
  call void @dm_put_live_table(ptr noundef %12, i32 noundef %14) #17
  %new_map = getelementptr inbounds %struct.hash_cell, ptr %hc, i32 0, i32 7
  %15 = ptrtoint ptr %new_map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %new_map, align 4
  %17 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %md, align 4
  call void @dm_put(ptr noundef %18) #17
  %tobool.not.i20 = icmp eq ptr %hc, null
  br i1 %tobool.not.i20, label %if.end.free_cell.exit_crit_edge, label %if.then.i21

if.end.free_cell.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_cell.exit

if.then.i21:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %name.i = getelementptr inbounds %struct.hash_cell, ptr %hc, i32 0, i32 4
  %19 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name.i, align 4
  call void @kfree(ptr noundef %20) #17
  %uuid.i = getelementptr inbounds %struct.hash_cell, ptr %hc, i32 0, i32 5
  %21 = ptrtoint ptr %uuid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %uuid.i, align 4
  call void @kfree(ptr noundef %22) #17
  call void @kfree(ptr noundef nonnull %hc) #17
  br label %free_cell.exit

free_cell.exit:                                   ; preds = %if.then.i21, %if.end.free_cell.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx) #17
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_lock_for_deletion(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_sync_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_ima_measure_on_device_remove(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_destroy_immediate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_poll(ptr noundef %filp, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %3(ptr noundef %filp, ptr noundef nonnull @dm_global_eventq, ptr noundef nonnull %wait) #17
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @dm_global_event_nr, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dm_global_event_nr to i32))
  %4 = load volatile i32, ptr @dm_global_event_nr, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %1, align 4
  %sub = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp sgt i32 %sub, 0
  %spec.select = zext i1 %cmp to i32
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_ctl_ioctl(ptr noundef %file, i32 noundef %command, i32 noundef %u) #0 align 64 {
entry:
  %version.i.i = alloca [3 x i32], align 4
  %param_kernel.i = alloca %struct.dm_ioctl, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %u to ptr
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %param_kernel.i) #17
  %1 = call ptr @memset(ptr %param_kernel.i, i32 255, i32 312)
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %call.i, label %if.end.i, label %entry.ctl_ioctl.exit_crit_edge

entry.ctl_ioctl.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ctl_ioctl.exit

if.end.i:                                         ; preds = %entry
  %2 = and i32 %command, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 64768, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 64768
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.ctl_ioctl.exit_crit_edge

if.end.i.ctl_ioctl.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ctl_ioctl.exit

if.end2.i:                                        ; preds = %if.end.i
  %and4.i = and i32 %command, 255
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %version.i.i) #17
  %3 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %version.i.i, align 4, !annotation !225
  %4 = getelementptr inbounds [3 x i32], ptr %version.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !225
  %6 = getelementptr inbounds [3 x i32], ptr %version.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !225
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #17
  %call.i.i.i83.i = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i.i83.i, label %if.end2.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end2.i.if.then11.i.i.i.i_crit_edge:            ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end2.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 12, i32 -1226833920) #24
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !224

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %version.i.i, i32 noundef 12) #17
  %9 = call i32 @llvm.read_register.i32(metadata !214) #17
  %and.i.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #6, !srcloc !230
  %and.i.i.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #17, !srcloc !231
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !232
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %version.i.i, ptr noundef %0, i32 noundef 12) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #17, !srcloc !231
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !224

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end2.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i35.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 12, %if.end2.i.if.then11.i.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 12, %res.0.i.i35.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %version.i.i, i32 %sub.i.i.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i35.i.i)
  br label %check_version.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i.i.i.i
  %13 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp.not.i.i = icmp eq i32 %14, 4
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.do.end.i.i_crit_edge

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %16)
  %cmp4.i.i = icmp ugt i32 %16, 45
  br i1 %cmp4.i.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge, label %lor.lhs.false.i.i.if.end8.i.i26.i.i_crit_edge

lor.lhs.false.i.i.if.end8.i.i26.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i.i26.i.i

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %4, align 4
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %6, align 4
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef 4, i32 noundef 45, i32 noundef 0, i32 noundef %14, i32 noundef %18, i32 noundef %20, i32 noundef %and4.i) #20
  br label %if.end8.i.i26.i.i

if.end8.i.i26.i.i:                                ; preds = %do.end.i.i, %lor.lhs.false.i.i.if.end8.i.i26.i.i_crit_edge
  %tobool.not.i = phi i1 [ false, %do.end.i.i ], [ true, %lor.lhs.false.i.i.if.end8.i.i26.i.i_crit_edge ]
  %r.0.i.i = phi i32 [ -22, %do.end.i.i ], [ 0, %lor.lhs.false.i.i.if.end8.i.i26.i.i_crit_edge ]
  %21 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %version.i.i, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 45, ptr %4, align 4
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %6, align 4
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #17
  %call.i.i27.i.i = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i27.i.i, label %if.end8.i.i26.i.i.check_version.exit.thread.i_crit_edge, label %copy_to_user.exit.i.i

if.end8.i.i26.i.i.check_version.exit.thread.i_crit_edge: ; preds = %if.end8.i.i26.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %check_version.exit.thread.i

copy_to_user.exit.i.i:                            ; preds = %if.end8.i.i26.i.i
  %call.i.i.i31.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %version.i.i, i32 noundef 12) #17
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %version.i.i, i32 noundef 12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i)
  %tobool18.not.i.i = icmp eq i32 %call.i12.i.i.i.i, 0
  br i1 %tobool18.not.i.i, label %check_version.exit.i, label %copy_to_user.exit.i.i.check_version.exit.thread.i_crit_edge

copy_to_user.exit.i.i.check_version.exit.thread.i_crit_edge: ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %check_version.exit.thread.i

check_version.exit.thread.i:                      ; preds = %copy_to_user.exit.i.i.check_version.exit.thread.i_crit_edge, %if.end8.i.i26.i.i.check_version.exit.thread.i_crit_edge, %if.then11.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %version.i.i) #17
  br label %ctl_ioctl.exit

check_version.exit.i:                             ; preds = %copy_to_user.exit.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %version.i.i) #17
  br i1 %tobool.not.i, label %if.end7.i, label %check_version.exit.i.ctl_ioctl.exit_crit_edge

check_version.exit.i.ctl_ioctl.exit_crit_edge:    ; preds = %check_version.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ctl_ioctl.exit

if.end7.i:                                        ; preds = %check_version.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %cmp8.i = icmp eq i32 %and4.i, 0
  br i1 %cmp8.i, label %if.end7.i.ctl_ioctl.exit_crit_edge, label %if.end10.i

if.end7.i.ctl_ioctl.exit_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ctl_ioctl.exit

if.end10.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and4.i)
  %cmp.i.i = icmp ugt i32 %and4.i, 17
  br i1 %cmp.i.i, label %do.end.i, label %lookup_ioctl.exit.i, !prof !227

lookup_ioctl.exit.i:                              ; preds = %if.end10.i
  %fn.i.i = getelementptr [18 x %struct.anon.90], ptr @lookup_ioctl._ioctls, i32 0, i32 %and4.i, i32 2
  %24 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fn.i.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #17
  %call.i.i.i87.i = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i.i87.i, label %lookup_ioctl.exit.i.if.then11.i.i.i101.i_crit_edge, label %land.lhs.true.i.i.i90.i

lookup_ioctl.exit.i.if.then11.i.i.i101.i_crit_edge: ; preds = %lookup_ioctl.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i.i101.i

do.end.i:                                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #19
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %command) #20
  br label %ctl_ioctl.exit

land.lhs.true.i.i.i90.i:                          ; preds = %lookup_ioctl.exit.i
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 305, i32 -1226833920) #24, !srcloc !233
  %asmresult.i.i.i88.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i88.i)
  %cmp.i6.i.i89.i = icmp eq i32 %asmresult.i.i.i88.i, 0
  br i1 %cmp.i6.i.i89.i, label %if.end.i.i.i98.i, label %land.lhs.true.i.i.i90.i.if.then11.i.i.i101.i_crit_edge, !prof !224

land.lhs.true.i.i.i90.i.if.then11.i.i.i101.i_crit_edge: ; preds = %land.lhs.true.i.i.i90.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i.i101.i

if.end.i.i.i98.i:                                 ; preds = %land.lhs.true.i.i.i90.i
  %call.i.i.i.i91.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %param_kernel.i, i32 noundef 305) #17
  %27 = call i32 @llvm.read_register.i32(metadata !214) #17
  %and.i.i.i.i.i.i.i92.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i.i92.i to ptr
  %cpu_domain.i.i.i.i.i.i93.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i93.i) #6, !srcloc !230
  %and.i.i.i.i.i94.i = and i32 %29, -13
  %or.i.i.i.i.i95.i = or i32 %and.i.i.i.i.i94.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i95.i) #17, !srcloc !231
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !232
  %call1.i.i.i.i96.i = call i32 @arm_copy_from_user(ptr noundef nonnull %param_kernel.i, ptr noundef %0, i32 noundef 305) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #17, !srcloc !231
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i96.i)
  %tobool4.not.i.i.i97.i = icmp eq i32 %call1.i.i.i.i96.i, 0
  br i1 %tobool4.not.i.i.i97.i, label %if.end.i103.i, label %if.end.i.i.i98.i.if.then11.i.i.i101.i_crit_edge, !prof !224

if.end.i.i.i98.i.if.then11.i.i.i101.i_crit_edge:  ; preds = %if.end.i.i.i98.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i.i101.i

if.then11.i.i.i101.i:                             ; preds = %if.end.i.i.i98.i.if.then11.i.i.i101.i_crit_edge, %land.lhs.true.i.i.i90.i.if.then11.i.i.i101.i_crit_edge, %lookup_ioctl.exit.i.if.then11.i.i.i101.i_crit_edge
  %res.0.i.i92.i.i = phi i32 [ %call1.i.i.i.i96.i, %if.end.i.i.i98.i.if.then11.i.i.i101.i_crit_edge ], [ 305, %lookup_ioctl.exit.i.if.then11.i.i.i101.i_crit_edge ], [ 305, %land.lhs.true.i.i.i90.i.if.then11.i.i.i101.i_crit_edge ]
  %sub.i.i.i99.i = sub i32 305, %res.0.i.i92.i.i
  %add.ptr.i.i.i100.i = getelementptr i8, ptr %param_kernel.i, i32 %sub.i.i.i99.i
  %30 = call ptr @memset(ptr %add.ptr.i.i.i100.i, i32 0, i32 %res.0.i.i92.i.i)
  br label %ctl_ioctl.exit

if.end.i103.i:                                    ; preds = %if.end.i.i.i98.i
  %data_size.i.i = getelementptr inbounds %struct.dm_ioctl, ptr %param_kernel.i, i32 0, i32 1
  %31 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 305, i32 %32)
  %cmp.i102.i = icmp ult i32 %32, 305
  br i1 %cmp.i102.i, label %if.end.i103.i.ctl_ioctl.exit_crit_edge, label %if.end2.i.i

if.end.i103.i.ctl_ioctl.exit_crit_edge:           ; preds = %if.end.i103.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ctl_ioctl.exit

if.end2.i.i:                                      ; preds = %if.end.i103.i
  %flags.i104.i = getelementptr inbounds %struct.dm_ioctl, ptr %param_kernel.i, i32 0, i32 5
  %33 = ptrtoint ptr %flags.i104.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i104.i, align 4
  %and.i.i = and i32 %34, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  %35 = lshr exact i32 %and.i.i, 11
  %36 = lshr i32 195365, %and4.i
  %37 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool5.not.i.not.i = icmp eq i32 %37, 0
  br i1 %tobool5.not.i.not.i, label %if.then6.i.i, label %if.end8.i.i

if.then6.i.i:                                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %38 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 305, ptr %data_size.i.i, align 4
  br label %data_copied.i.i

if.end8.i.i:                                      ; preds = %if.end2.i.i
  %39 = call i32 @llvm.read_register.i32(metadata !214) #17
  %and.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i.i.i, align 8
  %flags1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags1.i.i.i, align 4
  %and.i.i.i = and i32 %44, 524288
  %or.i.i.i = or i32 %44, 524288
  store i32 %or.i.i.i, ptr %flags1.i.i.i, align 4
  %45 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_size.i.i, align 4
  %call.i.i105.i = call noalias ptr @kvmalloc_node(i32 noundef %46, i32 noundef 3296, i32 noundef -1) #25
  %47 = call i32 @llvm.read_register.i32(metadata !214) #17
  %and.i.i81.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i81.i.i to ptr
  %task.i82.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i82.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i82.i.i, align 8
  %flags1.i83.i.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %flags1.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags1.i83.i.i, align 4
  %and.i84.i.i = and i32 %52, -524289
  %or.i85.i.i = or i32 %and.i84.i.i, %and.i.i.i
  store i32 %or.i85.i.i, ptr %flags1.i83.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %call.i.i105.i, null
  br i1 %tobool12.not.i.i, label %if.then13.i.i, label %if.end20.i.i

if.then13.i.i:                                    ; preds = %if.end8.i.i
  br i1 %tobool3.not.i.i, label %if.then13.i.i.if.end19.i.i_crit_edge, label %land.lhs.true.i.i

if.then13.i.i.if.end19.i.i_crit_edge:             ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19.i.i

land.lhs.true.i.i:                                ; preds = %if.then13.i.i
  %53 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data_size.i.i, align 4
  %55 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %54, i32 -1226833920) #24, !srcloc !234
  %asmresult.i = extractvalue { i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.i.clear_user.exit_crit_edge

land.lhs.true.i.i.clear_user.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %clear_user.exit

if.then.i:                                        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %56 = call i32 @llvm.read_register.i32(metadata !214) #17
  %and.i.i.i.i.i1 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i1 to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 4
  %58 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #6, !srcloc !230
  %and.i.i.i2 = and i32 %58, -13
  %or.i.i.i3 = or i32 %and.i.i.i2, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i3) #17, !srcloc !231
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !232
  %call1.i.i = call i32 @arm_clear_user(ptr noundef %0, i32 noundef %54) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #17, !srcloc !231
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !232
  br label %clear_user.exit

clear_user.exit:                                  ; preds = %if.then.i, %land.lhs.true.i.i.clear_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %call1.i.i, %if.then.i ], [ %54, %land.lhs.true.i.i.clear_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool17.not.i.i = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool17.not.i.i, label %clear_user.exit.if.end19.i.i_crit_edge, label %clear_user.exit.ctl_ioctl.exit_crit_edge

clear_user.exit.ctl_ioctl.exit_crit_edge:         ; preds = %clear_user.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %ctl_ioctl.exit

clear_user.exit.if.end19.i.i_crit_edge:           ; preds = %clear_user.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %clear_user.exit.if.end19.i.i_crit_edge, %if.then13.i.i.if.end19.i.i_crit_edge
  br label %ctl_ioctl.exit

if.end20.i.i:                                     ; preds = %if.end8.i.i
  %or.i.i = or i32 %35, 1
  %59 = call ptr @memcpy(ptr %call.i.i105.i, ptr %param_kernel.i, i32 305)
  %data.i.i = getelementptr inbounds %struct.dm_ioctl, ptr %call.i.i105.i, i32 0, i32 11
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 305
  %60 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %data_size.i.i, align 4
  %sub.i.i = add i32 %61, -305
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp9.i.i.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end20.i.i
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.bad.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !224

land.rhs16.i.i.i.i.bad.i.i_crit_edge:             ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #17
  br label %bad.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end20.i.i
  call void @__check_object_size(ptr noundef %data.i.i, i32 noundef %sub.i.i, i1 noundef zeroext false) #17
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #17
  %call.i.i62.i.i = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i62.i.i, label %if.then.i.i.i.i.i.if.end.i.i75.i.i_crit_edge, label %land.lhs.true.i.i65.i.i

if.then.i.i.i.i.i.if.end.i.i75.i.i_crit_edge:     ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i75.i.i

land.lhs.true.i.i65.i.i:                          ; preds = %if.then.i.i.i.i.i
  %62 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr.i.i, i32 %sub.i.i, i32 -1226833920) #24, !srcloc !233
  %asmresult.i.i63.i.i = extractvalue { i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i63.i.i)
  %cmp.i6.i64.i.i = icmp eq i32 %asmresult.i.i63.i.i, 0
  br i1 %cmp.i6.i64.i.i, label %if.then.i7.i72.i.i, label %land.lhs.true.i.i65.i.i.if.end.i.i75.i.i_crit_edge, !prof !224

land.lhs.true.i.i65.i.i.if.end.i.i75.i.i_crit_edge: ; preds = %land.lhs.true.i.i65.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i75.i.i

if.then.i7.i72.i.i:                               ; preds = %land.lhs.true.i.i65.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i66.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %data.i.i, i32 noundef %sub.i.i) #17
  %63 = call i32 @llvm.read_register.i32(metadata !214) #17
  %and.i.i.i.i.i.i67.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i.i67.i.i to ptr
  %cpu_domain.i.i.i.i.i68.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 4
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i68.i.i) #6, !srcloc !230
  %and.i.i.i.i69.i.i = and i32 %65, -13
  %or.i.i.i.i70.i.i = or i32 %and.i.i.i.i69.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i70.i.i) #17, !srcloc !231
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !232
  %call1.i.i.i71.i.i = call i32 @arm_copy_from_user(ptr noundef %data.i.i, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #17, !srcloc !231
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !232
  br label %if.end.i.i75.i.i

if.end.i.i75.i.i:                                 ; preds = %if.then.i7.i72.i.i, %land.lhs.true.i.i65.i.i.if.end.i.i75.i.i_crit_edge, %if.then.i.i.i.i.i.if.end.i.i75.i.i_crit_edge
  %res.0.i.i73.i.i = phi i32 [ %sub.i.i, %if.then.i.i.i.i.i.if.end.i.i75.i.i_crit_edge ], [ %call1.i.i.i71.i.i, %if.then.i7.i72.i.i ], [ %sub.i.i, %land.lhs.true.i.i65.i.i.if.end.i.i75.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i73.i.i)
  %tobool4.not.i.i74.i.i = icmp eq i32 %res.0.i.i73.i.i, 0
  br i1 %tobool4.not.i.i74.i.i, label %if.end.i.i75.i.i.data_copied.i.i_crit_edge, label %if.then11.i.i78.i.i, !prof !224

if.end.i.i75.i.i.data_copied.i.i_crit_edge:       ; preds = %if.end.i.i75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %data_copied.i.i

if.then11.i.i78.i.i:                              ; preds = %if.end.i.i75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i76.i.i = sub i32 %sub.i.i, %res.0.i.i73.i.i
  %add.ptr.i.i77.i.i = getelementptr i8, ptr %data.i.i, i32 %sub.i.i76.i.i
  %66 = call ptr @memset(ptr %add.ptr.i.i77.i.i, i32 0, i32 %res.0.i.i73.i.i)
  br label %bad.i.i

data_copied.i.i:                                  ; preds = %if.end.i.i75.i.i.data_copied.i.i_crit_edge, %if.then6.i.i
  %param_flags.0.i = phi i32 [ %or.i.i, %if.end.i.i75.i.i.data_copied.i.i_crit_edge ], [ %35, %if.then6.i.i ]
  %dmi.0.i.i = phi ptr [ %call.i.i105.i, %if.end.i.i75.i.i.data_copied.i.i_crit_edge ], [ %param_kernel.i, %if.then6.i.i ]
  br i1 %tobool3.not.i.i, label %data_copied.i.i.if.end19.i_crit_edge, label %land.lhs.true27.i.i

data_copied.i.i.if.end19.i_crit_edge:             ; preds = %data_copied.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19.i

land.lhs.true27.i.i:                              ; preds = %data_copied.i.i
  %67 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data_size.i.i, align 4
  %69 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %68, i32 -1226833920) #24, !srcloc !234
  %asmresult.i.i107.i = extractvalue { i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i107.i)
  %cmp.i.i108.i = icmp eq i32 %asmresult.i.i107.i, 0
  br i1 %cmp.i.i108.i, label %if.then.i86.i.i, label %land.lhs.true27.i.i.clear_user.exit.i.i_crit_edge

land.lhs.true27.i.i.clear_user.exit.i.i_crit_edge: ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %clear_user.exit.i.i

if.then.i86.i.i:                                  ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %70 = call i32 @llvm.read_register.i32(metadata !214) #17
  %and.i.i.i.i.i.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 4
  %72 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !230
  %and.i.i.i.i.i = and i32 %72, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #17, !srcloc !231
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !232
  %call1.i.i.i.i = call i32 @arm_clear_user(ptr noundef %0, i32 noundef %68) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #17, !srcloc !231
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !232
  br label %clear_user.exit.i.i

clear_user.exit.i.i:                              ; preds = %if.then.i86.i.i, %land.lhs.true27.i.i.clear_user.exit.i.i_crit_edge
  %n.addr.0.i87.i.i = phi i32 [ %call1.i.i.i.i, %if.then.i86.i.i ], [ %68, %land.lhs.true27.i.i.clear_user.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i87.i.i)
  %tobool30.not.i.i = icmp eq i32 %n.addr.0.i87.i.i, 0
  br i1 %tobool30.not.i.i, label %clear_user.exit.i.i.if.end19.i_crit_edge, label %clear_user.exit.i.i.bad.i.i_crit_edge

clear_user.exit.i.i.bad.i.i_crit_edge:            ; preds = %clear_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad.i.i

clear_user.exit.i.i.if.end19.i_crit_edge:         ; preds = %clear_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19.i

bad.i.i:                                          ; preds = %clear_user.exit.i.i.bad.i.i_crit_edge, %if.then11.i.i78.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.bad.i.i_crit_edge
  %param_flags.1.i = phi i32 [ %or.i.i, %land.rhs16.i.i.i.i.bad.i.i_crit_edge ], [ %or.i.i, %if.then27.i.i.i.i ], [ %param_flags.0.i, %clear_user.exit.i.i.bad.i.i_crit_edge ], [ %or.i.i, %if.then11.i.i78.i.i ]
  %dmi.1.i.i = phi ptr [ %call.i.i105.i, %land.rhs16.i.i.i.i.bad.i.i_crit_edge ], [ %call.i.i105.i, %if.then27.i.i.i.i ], [ %dmi.0.i.i, %clear_user.exit.i.i.bad.i.i_crit_edge ], [ %call.i.i105.i, %if.then11.i.i78.i.i ]
  %and.i88.i.i = and i32 %param_flags.1.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i88.i.i, 0
  br i1 %tobool.not.i.i.i, label %bad.i.i.if.end.i.i109.i_crit_edge, label %if.then.i89.i.i

bad.i.i.if.end.i.i109.i_crit_edge:                ; preds = %bad.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i109.i

if.then.i89.i.i:                                  ; preds = %bad.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %73 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %data_size.i.i, align 4
  %75 = call ptr @memset(ptr %dmi.1.i.i, i32 0, i32 %74)
  br label %if.end.i.i109.i

if.end.i.i109.i:                                  ; preds = %if.then.i89.i.i, %bad.i.i.if.end.i.i109.i_crit_edge
  %and1.i.i.i = and i32 %param_flags.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i.i109.i.ctl_ioctl.exit_crit_edge, label %if.then3.i.i110.i

if.end.i.i109.i.ctl_ioctl.exit_crit_edge:         ; preds = %if.end.i.i109.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ctl_ioctl.exit

if.then3.i.i110.i:                                ; preds = %if.end.i.i109.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @kvfree(ptr noundef nonnull %dmi.1.i.i) #17
  br label %ctl_ioctl.exit

if.end19.i:                                       ; preds = %clear_user.exit.i.i.if.end19.i_crit_edge, %data_copied.i.i.if.end19.i_crit_edge
  %data_size.i = getelementptr inbounds %struct.dm_ioctl, ptr %dmi.0.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data_size.i, align 4
  %flags.i112.i = getelementptr inbounds %struct.dm_ioctl, ptr %dmi.0.i.i, i32 0, i32 5
  %78 = ptrtoint ptr %flags.i112.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i112.i, align 4
  %and6.i.i = and i32 %79, -106753
  store i32 %and6.i.i, ptr %flags.i112.i, align 4
  %trunc.i = trunc i32 %command to i8
  %80 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %if.else.i.i [
    i8 1, label %if.end19.i.if.end23.i_crit_edge
    i8 2, label %if.end19.i.if.end23.i_crit_edge5
    i8 13, label %if.end19.i.if.end23.i_crit_edge6
    i8 3, label %if.then11.i.i
  ]

if.end19.i.if.end23.i_crit_edge6:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23.i

if.end19.i.if.end23.i_crit_edge5:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23.i

if.end19.i.if.end23.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23.i

if.then11.i.i:                                    ; preds = %if.end19.i
  %name.i.i = getelementptr inbounds %struct.dm_ioctl, ptr %dmi.0.i.i, i32 0, i32 9
  %81 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %name.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i.i, label %do.end.i113.i, label %if.then11.i.i.if.end26.i.i_crit_edge

if.then11.i.i.if.end26.i.i_crit_edge:             ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26.i.i

do.end.i113.i:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #20
  br label %out.i

if.else.i.i:                                      ; preds = %if.end19.i
  %uuid.i.i = getelementptr inbounds %struct.dm_ioctl, ptr %dmi.0.i.i, i32 0, i32 10
  %83 = ptrtoint ptr %uuid.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %uuid.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool15.not.i.i = icmp eq i8 %84, 0
  br i1 %tobool15.not.i.i, label %if.else.i.i.if.end26.i.i_crit_edge, label %land.lhs.true.i114.i

if.else.i.i.if.end26.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26.i.i

land.lhs.true.i114.i:                             ; preds = %if.else.i.i
  %name16.i.i = getelementptr inbounds %struct.dm_ioctl, ptr %dmi.0.i.i, i32 0, i32 9
  %85 = ptrtoint ptr %name16.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %name16.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool19.not.i.i = icmp eq i8 %86, 0
  br i1 %tobool19.not.i.i, label %land.lhs.true.i114.i.if.end26.i.i_crit_edge, label %do.end22.i.i

land.lhs.true.i114.i.if.end26.i.i_crit_edge:      ; preds = %land.lhs.true.i114.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26.i.i

do.end22.i.i:                                     ; preds = %land.lhs.true.i114.i
  call void @__sanitizer_cov_trace_pc() #19
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %and4.i) #20
  br label %out.i

if.end26.i.i:                                     ; preds = %land.lhs.true.i114.i.if.end26.i.i_crit_edge, %if.else.i.i.if.end26.i.i_crit_edge, %if.then11.i.i.if.end26.i.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.dm_ioctl, ptr %dmi.0.i.i, i32 0, i32 9, i32 127
  %87 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %arrayidx.i.i, align 1
  %arrayidx29.i.i = getelementptr %struct.dm_ioctl, ptr %dmi.0.i.i, i32 0, i32 10, i32 128
  %88 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %arrayidx29.i.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end26.i.i, %if.end19.i.if.end23.i_crit_edge, %if.end19.i.if.end23.i_crit_edge5, %if.end19.i.if.end23.i_crit_edge6
  %89 = ptrtoint ptr %data_size.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 305, ptr %data_size.i, align 4
  %call25.i = call i32 %25(ptr noundef %file, ptr noundef nonnull %dmi.0.i.i, i32 noundef %77) #17
  %90 = ptrtoint ptr %flags.i112.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags.i112.i, align 4
  %and26.i = and i32 %91, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %tobool5.not.i.not.not.i = xor i1 %tobool5.not.i.not.i, true
  %brmerge.i = select i1 %tobool27.not.i, i1 true, i1 %tobool5.not.i.not.not.i
  br i1 %brmerge.i, label %if.end23.i.if.end44.i_crit_edge, label %do.end41.i, !prof !235

if.end23.i.if.end44.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44.i

do.end41.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %and4.i) #20
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end41.i, %if.end23.i.if.end44.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool45.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool45.not.i, label %land.lhs.true46.i, label %if.end44.i.out.i_crit_edge

if.end44.i.out.i_crit_edge:                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

land.lhs.true46.i:                                ; preds = %if.end44.i
  %92 = lshr i32 262085, %and4.i
  %93 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool48.not.not.i = icmp eq i32 %93, 0
  br i1 %tobool48.not.not.i, label %if.then49.i, label %land.lhs.true46.i.land.lhs.true52.i_crit_edge

land.lhs.true46.i.land.lhs.true52.i_crit_edge:    ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true52.i

if.then49.i:                                      ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @dm_issue_global_event() #17
  br label %land.lhs.true52.i

land.lhs.true52.i:                                ; preds = %if.then49.i, %land.lhs.true46.i.land.lhs.true52.i_crit_edge
  %94 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %data_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp9.i.i.i = icmp slt i32 %95, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %land.lhs.true52.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.out.i_crit_edge, label %if.then27.i.i.i, !prof !224

land.rhs16.i.i.i.out.i_crit_edge:                 ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #17
  br label %out.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true52.i
  call void @__check_object_size(ptr noundef nonnull %dmi.0.i.i, i32 noundef %95, i1 noundef zeroext true) #17
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #17
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %96 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %95, i32 -1226833920) #24, !srcloc !236
  %asmresult.i.i.i = extractvalue { i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %dmi.0.i.i, i32 noundef %95) #17
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %dmi.0.i.i, i32 noundef %95) #17
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %95, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %95, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool55.not.i = icmp eq i32 %n.addr.0.i.i, 0
  %spec.select.i = select i1 %tobool55.not.i, i32 0, i32 -14
  br label %out.i

out.i:                                            ; preds = %copy_to_user.exit.i, %if.then27.i.i.i, %land.rhs16.i.i.i.out.i_crit_edge, %if.end44.i.out.i_crit_edge, %do.end22.i.i, %do.end.i113.i
  %r.0.i = phi i32 [ %call25.i, %if.end44.i.out.i_crit_edge ], [ -22, %do.end.i113.i ], [ -22, %do.end22.i.i ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.out.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  %and.i116.i = and i32 %param_flags.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116.i)
  %tobool.not.i117.i = icmp eq i32 %and.i116.i, 0
  br i1 %tobool.not.i117.i, label %out.i.if.end.i119.i_crit_edge, label %if.then.i118.i

out.i.if.end.i119.i_crit_edge:                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i119.i

if.then.i118.i:                                   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #19
  %97 = call ptr @memset(ptr %dmi.0.i.i, i32 0, i32 %77)
  br label %if.end.i119.i

if.end.i119.i:                                    ; preds = %if.then.i118.i, %out.i.if.end.i119.i_crit_edge
  %and1.i.i = and i32 %param_flags.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i119.i.ctl_ioctl.exit_crit_edge, label %if.then3.i.i

if.end.i119.i.ctl_ioctl.exit_crit_edge:           ; preds = %if.end.i119.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ctl_ioctl.exit

if.then3.i.i:                                     ; preds = %if.end.i119.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @kvfree(ptr noundef nonnull %dmi.0.i.i) #17
  br label %ctl_ioctl.exit

ctl_ioctl.exit:                                   ; preds = %if.then3.i.i, %if.end.i119.i.ctl_ioctl.exit_crit_edge, %if.then3.i.i110.i, %if.end.i.i109.i.ctl_ioctl.exit_crit_edge, %if.end19.i.i, %clear_user.exit.ctl_ioctl.exit_crit_edge, %if.end.i103.i.ctl_ioctl.exit_crit_edge, %if.then11.i.i.i101.i, %do.end.i, %if.end7.i.ctl_ioctl.exit_crit_edge, %check_version.exit.i.ctl_ioctl.exit_crit_edge, %check_version.exit.thread.i, %if.end.i.ctl_ioctl.exit_crit_edge, %entry.ctl_ioctl.exit_crit_edge
  %retval.0.i = phi i32 [ -25, %do.end.i ], [ -13, %entry.ctl_ioctl.exit_crit_edge ], [ -25, %if.end.i.ctl_ioctl.exit_crit_edge ], [ %r.0.i.i, %check_version.exit.i.ctl_ioctl.exit_crit_edge ], [ 0, %if.end7.i.ctl_ioctl.exit_crit_edge ], [ -14, %check_version.exit.thread.i ], [ %r.0.i, %if.end.i119.i.ctl_ioctl.exit_crit_edge ], [ %r.0.i, %if.then3.i.i ], [ -14, %if.then11.i.i.i101.i ], [ -14, %if.then3.i.i110.i ], [ -14, %if.end.i.i109.i.ctl_ioctl.exit_crit_edge ], [ -14, %clear_user.exit.ctl_ioctl.exit_crit_edge ], [ -22, %if.end.i103.i.ctl_ioctl.exit_crit_edge ], [ -12, %if.end19.i.i ]
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %param_kernel.i) #17
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %filp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !224

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #23
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %private_data, align 4
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @dm_global_event_nr, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dm_global_event_nr to i32))
  %2 = load volatile i32, ptr @dm_global_event_nr, align 4
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %2, ptr %call7.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_issue_global_event() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remove_all(ptr nocapture noundef readnone %filp, ptr nocapture noundef %param, i32 noundef %param_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  tail call fastcc void @dm_hash_remove_all(i1 noundef zeroext true, i1 noundef zeroext %tobool, i1 noundef zeroext false)
  %data_size = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 1
  %2 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %data_size, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @list_devices(ptr nocapture noundef readnone %filp, ptr noundef %param, i32 noundef %param_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @_hash_lock) #17
  %call = tail call ptr @rb_first(ptr noundef nonnull @name_rb_tree) #17
  %tobool.not163 = icmp eq ptr %call, null
  br i1 %tobool.not163, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %name = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 9
  %uuid = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 10
  %flags = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.0165 = phi ptr [ %call, %for.body.lr.ph ], [ %call20, %for.inc.for.body_crit_edge ]
  %needed.0164 = phi i32 [ 0, %for.body.lr.ph ], [ %needed.1, %for.inc.for.body_crit_edge ]
  %call2 = tail call fastcc zeroext i1 @filter_device(ptr noundef nonnull %n.0165, ptr noundef %name, ptr noundef %uuid)
  br i1 %call2, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end:                                           ; preds = %for.body
  %name3 = getelementptr inbounds %struct.hash_cell, ptr %n.0165, i32 0, i32 4
  %0 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name3, align 4
  %call4 = tail call i32 @strlen(ptr noundef %1) #21
  %add.i = add i32 %call4, 20
  %and.i = and i32 %add.i, -8
  %add7 = add i32 %needed.0164, 8
  %add9 = add i32 %add7, %and.i
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end.for.inc_crit_edge, label %land.lhs.true

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %uuid11 = getelementptr inbounds %struct.hash_cell, ptr %n.0165, i32 0, i32 5
  %4 = ptrtoint ptr %uuid11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uuid11, align 4
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %land.lhs.true.for.inc_crit_edge, label %if.then13

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %call15 = tail call i32 @strlen(ptr noundef nonnull %5) #21
  %add.i157 = add i32 %call15, 8
  %and.i158 = and i32 %add.i157, -8
  %add18 = add i32 %and.i158, %add9
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %needed.1 = phi i32 [ %add18, %if.then13 ], [ %add9, %land.lhs.true.for.inc_crit_edge ], [ %add9, %if.end.for.inc_crit_edge ], [ %needed.0164, %for.body.for.inc_crit_edge ]
  %call20 = tail call ptr @rb_next(ptr noundef nonnull %n.0165) #17
  %tobool.not = icmp eq ptr %call20, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %needed.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %needed.1, %for.inc.for.end_crit_edge ]
  %add.ptr.i = getelementptr %struct.dm_ioctl, ptr %param, i32 1
  %6 = ptrtoint ptr %add.ptr.i to i32
  %add.i.i.i = add i32 %6, 7
  %and.i.i.i = and i32 %add.i.i.i, -8
  %sub.ptr.rhs.cast.i = ptrtoint ptr %param to i32
  %sub.ptr.sub.i = sub i32 %and.i.i.i, %sub.ptr.rhs.cast.i
  %data_start.i = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 2
  %7 = ptrtoint ptr %data_start.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.ptr.sub.i, ptr %data_start.i, align 8
  %8 = tail call i32 @llvm.usub.sat.i32(i32 %param_size, i32 %sub.ptr.sub.i) #17
  %add.ptr4.i = getelementptr i8, ptr %param, i32 %sub.ptr.sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %needed.0.lcssa)
  %cmp = icmp ult i32 %8, %needed.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp22 = icmp ult i32 %8, 8
  %or.cond = or i1 %cmp22, %cmp
  br i1 %or.cond, label %if.then23, label %if.end25

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %flags24 = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %9 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags24, align 4
  %or = or i32 %10, 256
  store i32 %or, ptr %flags24, align 4
  br label %out

if.end25:                                         ; preds = %for.end
  %add26 = add i32 %needed.0.lcssa, %sub.ptr.sub.i
  %data_size = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 1
  %11 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add26, ptr %data_size, align 4
  %12 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %add.ptr4.i, align 8
  %call27 = tail call ptr @rb_first(ptr noundef nonnull @name_rb_tree) #17
  %tobool29.not167 = icmp eq ptr %call27, null
  br i1 %tobool29.not167, label %if.end25.do.body_crit_edge, label %for.body30.lr.ph

if.end25.do.body_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

for.body30.lr.ph:                                 ; preds = %if.end25
  %name34 = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 9
  %uuid36 = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 10
  %flags65 = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  br label %for.body30

for.body30:                                       ; preds = %cleanup.for.body30_crit_edge, %for.body30.lr.ph
  %n.1170 = phi ptr [ %call27, %for.body30.lr.ph ], [ %call86, %cleanup.for.body30_crit_edge ]
  %old_nl.0169 = phi ptr [ null, %for.body30.lr.ph ], [ %old_nl.1, %cleanup.for.body30_crit_edge ]
  %nl.0168 = phi ptr [ %add.ptr4.i, %for.body30.lr.ph ], [ %nl.1, %cleanup.for.body30_crit_edge ]
  %call38 = tail call fastcc zeroext i1 @filter_device(ptr noundef nonnull %n.1170, ptr noundef %name34, ptr noundef %uuid36)
  br i1 %call38, label %if.end40, label %for.body30.cleanup_crit_edge

for.body30.cleanup_crit_edge:                     ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end40:                                         ; preds = %for.body30
  %tobool41.not = icmp eq ptr %old_nl.0169, null
  br i1 %tobool41.not, label %if.end40.if.end43_crit_edge, label %if.then42

if.end40.if.end43_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  %sub.ptr.lhs.cast = ptrtoint ptr %nl.0168 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %old_nl.0169 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %next = getelementptr inbounds %struct.dm_name_list, ptr %old_nl.0169, i32 0, i32 1
  %13 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub.ptr.sub, ptr %next, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end40.if.end43_crit_edge
  %md = getelementptr inbounds %struct.hash_cell, ptr %n.1170, i32 0, i32 6
  %14 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %md, align 4
  %call44 = tail call ptr @dm_disk(ptr noundef %15) #17
  %16 = ptrtoint ptr %call44 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call44, align 8
  %shl.i = shl i32 %17, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %call44, i32 0, i32 1
  %18 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %19
  %and1.i.i = and i32 %19, 255
  %20 = lshr i32 %or.i, 12
  %shl.i.i = and i32 %20, 1048320
  %and2.i.i = shl i32 %19, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or.i.i = or i32 %shl3.i.i, %and1.i.i
  %or4.i.i = or i32 %or.i.i, %shl.i.i
  %conv.i = zext i32 %or4.i.i to i64
  %21 = ptrtoint ptr %nl.0168 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv.i, ptr %nl.0168, align 8
  %next48 = getelementptr inbounds %struct.dm_name_list, ptr %nl.0168, i32 0, i32 1
  %22 = ptrtoint ptr %next48 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %next48, align 8
  %name49 = getelementptr inbounds %struct.dm_name_list, ptr %nl.0168, i32 0, i32 2
  %name51 = getelementptr inbounds %struct.hash_cell, ptr %n.1170, i32 0, i32 4
  %23 = ptrtoint ptr %name51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name51, align 4
  %call52 = tail call ptr @strcpy(ptr noundef %name49, ptr noundef %24) #21
  %25 = ptrtoint ptr %name51 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name51, align 4
  %call56 = tail call i32 @strlen(ptr noundef %26) #21
  %add.ptr57 = getelementptr %struct.dm_name_list, ptr %nl.0168, i32 0, i32 2, i32 1
  %add.ptr58 = getelementptr i8, ptr %add.ptr57, i32 %call56
  %27 = ptrtoint ptr %add.ptr58 to i32
  %add.i.i = add i32 %27, 7
  %and.i.i = and i32 %add.i.i, -8
  %28 = inttoptr i32 %and.i.i to ptr
  %29 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %md, align 4
  %call61 = tail call i32 @dm_get_event_nr(ptr noundef %30) #17
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call61, ptr %28, align 8
  %arrayidx62 = getelementptr i32, ptr %28, i32 1
  %32 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx62, align 4
  %add.ptr63 = getelementptr i32, ptr %28, i32 2
  %33 = ptrtoint ptr %flags65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags65, align 4
  %and66 = and i32 %34, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end43.cleanup_crit_edge, label %if.then68

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then68:                                        ; preds = %if.end43
  %uuid69 = getelementptr inbounds %struct.hash_cell, ptr %n.1170, i32 0, i32 5
  %35 = ptrtoint ptr %uuid69 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %uuid69, align 4
  %tobool70.not = icmp eq ptr %36, null
  br i1 %tobool70.not, label %if.else, label %if.then71

if.then71:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %arrayidx62, align 4
  %38 = ptrtoint ptr %uuid69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %uuid69, align 4
  %call75 = tail call ptr @strcpy(ptr noundef %add.ptr63, ptr noundef %39) #21
  %40 = ptrtoint ptr %uuid69 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %uuid69, align 4
  %call77 = tail call i32 @strlen(ptr noundef %41) #21
  %add.ptr78 = getelementptr i8, ptr %add.ptr63, i32 1
  %add.ptr79 = getelementptr i8, ptr %add.ptr78, i32 %call77
  %42 = ptrtoint ptr %add.ptr79 to i32
  %add.i.i161 = add i32 %42, 7
  %and.i.i162 = and i32 %add.i.i161, -8
  %43 = inttoptr i32 %and.i.i162 to ptr
  br label %cleanup

if.else:                                          ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #19
  %44 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %arrayidx62, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then71, %if.end43.cleanup_crit_edge, %for.body30.cleanup_crit_edge
  %nl.1 = phi ptr [ %nl.0168, %for.body30.cleanup_crit_edge ], [ %43, %if.then71 ], [ %add.ptr63, %if.else ], [ %add.ptr63, %if.end43.cleanup_crit_edge ]
  %old_nl.1 = phi ptr [ %old_nl.0169, %for.body30.cleanup_crit_edge ], [ %nl.0168, %if.then71 ], [ %nl.0168, %if.else ], [ %nl.0168, %if.end43.cleanup_crit_edge ]
  %call86 = tail call ptr @rb_next(ptr noundef nonnull %n.1170) #17
  %tobool29.not = icmp eq ptr %call86, null
  br i1 %tobool29.not, label %cleanup.do.body_crit_edge, label %cleanup.for.body30_crit_edge

cleanup.for.body30_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body30

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %if.end25.do.body_crit_edge
  %nl.0.lcssa = phi ptr [ %add.ptr4.i, %if.end25.do.body_crit_edge ], [ %nl.1, %cleanup.do.body_crit_edge ]
  %sub.ptr.lhs.cast88 = ptrtoint ptr %nl.0.lcssa to i32
  %sub.ptr.rhs.cast89 = ptrtoint ptr %add.ptr4.i to i32
  %sub.ptr.sub90 = sub i32 %sub.ptr.lhs.cast88, %sub.ptr.rhs.cast89
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub90, i32 %needed.0.lcssa)
  %cmp91.not = icmp eq i32 %sub.ptr.sub90, %needed.0.lcssa
  br i1 %cmp91.not, label %do.body.out_crit_edge, label %do.body95, !prof !224

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

do.body95:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-ioctl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 645, 0\0A.popsection", ""() #17, !srcloc !237
  unreachable

out:                                              ; preds = %do.body.out_crit_edge, %if.then23
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_create(ptr nocapture noundef readnone %filp, ptr noundef %param, i32 noundef %param_size) #0 align 64 {
entry:
  %md = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %md) #17
  %0 = ptrtoint ptr %md to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %md, align 4, !annotation !225
  %name = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 9
  %call.i = tail call ptr @strchr(ptr noundef %name, i32 noundef 47) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end, label %check_name.exit

check_name.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %dev, align 8
  %conv.i = trunc i64 %4 to i32
  %and1.i.i = and i32 %conv.i, 255
  %shr2.i.i = lshr i32 %conv.i, 12
  %and3.i.i = and i32 %shr2.i.i, 1048320
  %or.i.i = or i32 %and3.i.i, %and1.i.i
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %m.0 = phi i32 [ %or.i.i, %if.then2 ], [ -1, %if.end.if.end5_crit_edge ]
  %call6 = call i32 @dm_create(i32 noundef %m.0, ptr noundef nonnull %md) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %uuid = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 10
  %5 = ptrtoint ptr %uuid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %uuid, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool13.not = icmp eq i8 %6, 0
  %spec.select = select i1 %tobool13.not, ptr null, ptr %uuid
  %7 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %md, align 4
  %call16 = call fastcc i32 @dm_hash_insert(ptr noundef %name, ptr noundef %spec.select, ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %md, align 4
  call void @dm_put(ptr noundef %10) #17
  %11 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %md, align 4
  call void @dm_destroy(ptr noundef %12) #17
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and21 = and i32 %14, -65
  store i32 %and21, ptr %flags, align 4
  %15 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %md, align 4
  call fastcc void @__dev_status(ptr noundef %16, ptr noundef %param)
  %17 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %md, align 4
  call void @dm_put(ptr noundef %18) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then18, %if.end5.cleanup_crit_edge, %check_name.exit
  %retval.0 = phi i32 [ %call16, %if.then18 ], [ 0, %if.end19 ], [ -22, %check_name.exit ], [ %call6, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %md) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_remove(ptr nocapture noundef readnone %filp, ptr noundef %param, i32 noundef %param_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @_hash_lock) #17
  %call = tail call fastcc ptr @__find_device_hash_cell(ptr noundef %param)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dev_remove.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dev_remove, %land.lhs.true)) #17
          to label %do.end [label %land.lhs.true], !srcloc !238

land.lhs.true:                                    ; preds = %do.body
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @dev_remove._rs, ptr noundef nonnull @.str.37) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %if.then7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dev_remove.descriptor, ptr noundef nonnull @.str.38) #17
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true.do.end_crit_edge, %do.body
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #17
  br label %cleanup

if.end8:                                          ; preds = %entry
  %md9 = getelementptr inbounds %struct.hash_cell, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %md9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %md9, align 4
  %flags = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10 = icmp ne i32 %and, 0
  %call15 = tail call i32 @dm_lock_for_deletion(ptr noundef %1, i1 noundef zeroext %tobool10, i1 noundef zeroext false) #17
  %4 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %call15, label %if.end8.do.body24_crit_edge [
    i32 0, label %if.end43
    i32 -16, label %land.lhs.true18
  ]

if.end8.do.body24_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body24

land.lhs.true18:                                  ; preds = %if.end8
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and20 = and i32 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true18.do.body24_crit_edge, label %if.then22

land.lhs.true18.do.body24_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body24

if.then22:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #17
  tail call void @dm_put(ptr noundef %1) #17
  br label %cleanup

do.body24:                                        ; preds = %land.lhs.true18.do.body24_crit_edge, %if.end8.do.body24_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dev_remove.descriptor.40, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dev_remove, %land.lhs.true36)) #17
          to label %do.end42 [label %land.lhs.true36], !srcloc !238

land.lhs.true36:                                  ; preds = %do.body24
  %call37 = tail call i32 @___ratelimit(ptr noundef nonnull @dev_remove._rs.39, ptr noundef nonnull @.str.37) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true36.do.end42_crit_edge, label %if.then39

land.lhs.true36.do.end42_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end42

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.hash_cell, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dev_remove.descriptor.40, ptr noundef nonnull @.str.41, ptr noundef %8) #17
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %land.lhs.true36.do.end42_crit_edge, %do.body24
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #17
  tail call void @dm_put(ptr noundef %1) #17
  br label %cleanup

if.end43:                                         ; preds = %if.end8
  %call44 = tail call fastcc ptr @__hash_remove(ptr noundef nonnull %call)
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #17
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.end43.if.end47_crit_edge, label %if.then46

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dm_sync_table(ptr noundef %1) #17
  tail call void @dm_table_destroy(ptr noundef nonnull %call44) #17
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end43.if.end47_crit_edge
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and49 = and i32 %10, -131073
  store i32 %and49, ptr %flags, align 4
  tail call void @dm_ima_measure_on_device_remove(ptr noundef %1, i1 noundef zeroext false) #17
  %event_nr = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 6
  %11 = ptrtoint ptr %event_nr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %event_nr, align 8
  %call50 = tail call i32 @dm_kobject_uevent(ptr noundef %1, i32 noundef 1, i32 noundef %12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %if.end47.if.end54_crit_edge

if.end47.if.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %or = or i32 %14, 8192
  store i32 %or, ptr %flags, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end47.if.end54_crit_edge
  tail call void @dm_put(ptr noundef %1) #17
  tail call void @dm_destroy(ptr noundef %1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end42, %if.then22, %do.end
  %retval.0 = phi i32 [ 0, %if.then22 ], [ %call15, %do.end42 ], [ 0, %if.end54 ], [ -6, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_rename(ptr nocapture noundef readnone %filp, ptr noundef %param, i32 noundef %param_size) #0 align 64 {
entry:
  %srcu_idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data_start = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 2
  %0 = ptrtoint ptr %data_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_start, align 8
  %add.ptr = getelementptr i8, ptr %param, i32 %1
  %flags = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %data = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 11
  %cmp = icmp ult ptr %add.ptr, %data
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %add.ptr1 = getelementptr i8, ptr %param, i32 %param_size
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %lor.lhs.false
  %str.addr.0.i = phi ptr [ %add.ptr, %lor.lhs.false ], [ %incdec.ptr.i, %while.body.i.while.cond.i_crit_edge ]
  %cmp.i = icmp ult ptr %str.addr.0.i, %add.ptr1
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.do.end_crit_edge

while.cond.i.do.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr i8, ptr %str.addr.0.i, i32 1
  %4 = ptrtoint ptr %str.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %str.addr.0.i, align 1
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %lor.lhs.false3, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i

lor.lhs.false3:                                   ; preds = %while.body.i
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %lor.lhs.false3.do.end_crit_edge, label %lor.lhs.false5

lor.lhs.false3.do.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %call6 = tail call i32 @strlen(ptr noundef %add.ptr) #21
  %cond8 = select i1 %tobool.not, i32 127, i32 128
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %cond8)
  %cmp9 = icmp ugt i32 %call6, %cond8
  br i1 %cmp9, label %lor.lhs.false5.do.end_crit_edge, label %if.end

lor.lhs.false5.do.end_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false5.do.end_crit_edge, %lor.lhs.false3.do.end_crit_edge, %while.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  br i1 %tobool.not, label %if.then12, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then12:                                        ; preds = %if.end
  %call.i = tail call ptr @strchr(ptr noundef %add.ptr, i32 noundef 47) #17
  %tobool.not.i42 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i42, label %if.then12.if.end17_crit_edge, label %check_name.exit

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

check_name.exit:                                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #20
  br label %cleanup

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and.i = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i44 = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx.i) #17
  %10 = ptrtoint ptr %srcu_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %srcu_idx.i, align 4, !annotation !225
  %call.i45 = tail call noalias ptr @kstrdup(ptr noundef %add.ptr, i32 noundef 3264) #17
  %tobool1.not.i = icmp eq ptr %call.i45, null
  br i1 %tobool1.not.i, label %if.end17.dm_hash_rename.exit.thread_crit_edge, label %if.end.i

if.end17.dm_hash_rename.exit.thread_crit_edge:    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %dm_hash_rename.exit.thread

if.end.i:                                         ; preds = %if.end17
  tail call void @down_write(ptr noundef nonnull @_hash_lock) #17
  br i1 %tobool.not.i44, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %n.015.i.i = load ptr, ptr @uuid_rb_tree, align 4
  %tobool.not16.i.i = icmp eq ptr %n.015.i.i, null
  br i1 %tobool.not16.i.i, label %if.then4.i.if.end15.i_crit_edge, label %if.then4.i.while.body.i.i_crit_edge

if.then4.i.while.body.i.i_crit_edge:              ; preds = %if.then4.i
  br label %while.body.i.i

if.then4.i.if.end15.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.then4.i.while.body.i.i_crit_edge
  %n.017.i.i = phi ptr [ %n.0.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %n.015.i.i, %if.then4.i.while.body.i.i_crit_edge ]
  %uuid.i.i = getelementptr i8, ptr %n.017.i.i, i32 20
  %11 = ptrtoint ptr %uuid.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %uuid.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %12, ptr noundef %add.ptr) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end7.i, label %cleanup.i.i

cleanup.i.i:                                      ; preds = %while.body.i.i
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.017.i.i, i32 0, i32 2
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.017.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp13.i.i = icmp slt i32 %call.i.i, 0
  %cond.in.i.i = select i1 %cmp13.i.i, ptr %rb_right.i.i, ptr %rb_left.i.i
  %13 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %n.0.i.i = load ptr, ptr %cond.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %n.0.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.if.end15.i_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

cleanup.i.i.if.end15.i_crit_edge:                 ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.i

if.else.i:                                        ; preds = %if.end.i
  %n.016.i.i = load ptr, ptr @name_rb_tree, align 4
  %tobool.not17.i.i = icmp eq ptr %n.016.i.i, null
  br i1 %tobool.not17.i.i, label %if.end15.thread.i, label %if.else.i.while.body.i105.i_crit_edge

if.else.i.while.body.i105.i_crit_edge:            ; preds = %if.else.i
  br label %while.body.i105.i

if.end15.thread.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %name16164.i = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 9
  br label %do.end23.i

while.body.i105.i:                                ; preds = %cleanup.i114.i.while.body.i105.i_crit_edge, %if.else.i.while.body.i105.i_crit_edge
  %n.018.i.i = phi ptr [ %n.0.i112.i, %cleanup.i114.i.while.body.i105.i_crit_edge ], [ %n.016.i.i, %if.else.i.while.body.i105.i_crit_edge ]
  %name.i.i = getelementptr inbounds %struct.hash_cell, ptr %n.018.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i.i, align 4
  %call.i103.i = tail call i32 @strcmp(ptr noundef %15, ptr noundef %add.ptr) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %tobool1.not.i104.i = icmp eq i32 %call.i103.i, 0
  br i1 %tobool1.not.i104.i, label %if.end7.thread156.i, label %cleanup.i114.i

if.end7.thread156.i:                              ; preds = %while.body.i105.i
  call void @__sanitizer_cov_trace_pc() #19
  %md.i106.i = getelementptr inbounds %struct.hash_cell, ptr %n.018.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %md.i106.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %md.i106.i, align 4
  tail call void @dm_get(ptr noundef %17) #17
  br label %do.end.i46

cleanup.i114.i:                                   ; preds = %while.body.i105.i
  %rb_left.i108.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i.i, i32 0, i32 2
  %rb_right.i109.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %cmp13.i110.i = icmp slt i32 %call.i103.i, 0
  %cond.in.i111.i = select i1 %cmp13.i110.i, ptr %rb_right.i109.i, ptr %rb_left.i108.i
  %18 = ptrtoint ptr %cond.in.i111.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %n.0.i112.i = load ptr, ptr %cond.in.i111.i, align 4
  %tobool.not.i113.i = icmp eq ptr %n.0.i112.i, null
  br i1 %tobool.not.i113.i, label %cleanup.i114.i.if.end15.i_crit_edge, label %cleanup.i114.i.while.body.i105.i_crit_edge

cleanup.i114.i.while.body.i105.i_crit_edge:       ; preds = %cleanup.i114.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i105.i

cleanup.i114.i.if.end15.i_crit_edge:              ; preds = %cleanup.i114.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.i

if.end7.i:                                        ; preds = %while.body.i.i
  %add.ptr.i.i = getelementptr i8, ptr %n.017.i.i, i32 -12
  %md.i.i = getelementptr i8, ptr %n.017.i.i, i32 24
  %19 = ptrtoint ptr %md.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %md.i.i, align 4
  tail call void @dm_get(ptr noundef %20) #17
  %tobool8.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end15.i_crit_edge, label %if.end7.i.do.end.i46_crit_edge

if.end7.i.do.end.i46_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i46

if.end7.i.if.end15.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.i

do.end.i46:                                       ; preds = %if.end7.i.do.end.i46_crit_edge, %if.end7.thread156.i
  %cond11.i = phi ptr [ @.str.47, %if.end7.thread156.i ], [ @.str.46, %if.end7.i.do.end.i46_crit_edge ]
  %hc.0159.i = phi ptr [ %n.018.i.i, %if.end7.thread156.i ], [ %add.ptr.i.i, %if.end7.i.do.end.i46_crit_edge ]
  %name.i = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 9
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull %cond11.i, ptr noundef %name.i, ptr noundef %add.ptr) #20
  %md13.i = getelementptr inbounds %struct.hash_cell, ptr %hc.0159.i, i32 0, i32 6
  %21 = ptrtoint ptr %md13.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %md13.i, align 4
  tail call void @dm_put(ptr noundef %22) #17
  br label %dm_hash_rename.exit.thread.sink.split

if.end15.i:                                       ; preds = %if.end7.i.if.end15.i_crit_edge, %cleanup.i114.i.if.end15.i_crit_edge, %cleanup.i.i.if.end15.i_crit_edge, %if.then4.i.if.end15.i_crit_edge
  %n.016.i116.pr.i = load ptr, ptr @name_rb_tree, align 4
  %name16.i = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 9
  %tobool.not17.i117.i = icmp eq ptr %n.016.i116.pr.i, null
  br i1 %tobool.not17.i117.i, label %if.end15.i.do.end23.i_crit_edge, label %if.end15.i.while.body.i122.i_crit_edge

if.end15.i.while.body.i122.i_crit_edge:           ; preds = %if.end15.i
  br label %while.body.i122.i

if.end15.i.do.end23.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end23.i

while.body.i122.i:                                ; preds = %cleanup.i131.i.while.body.i122.i_crit_edge, %if.end15.i.while.body.i122.i_crit_edge
  %n.018.i118.i = phi ptr [ %n.0.i129.i, %cleanup.i131.i.while.body.i122.i_crit_edge ], [ %n.016.i116.pr.i, %if.end15.i.while.body.i122.i_crit_edge ]
  %name.i119.i = getelementptr inbounds %struct.hash_cell, ptr %n.018.i118.i, i32 0, i32 4
  %23 = ptrtoint ptr %name.i119.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name.i119.i, align 4
  %call.i120.i = tail call i32 @strcmp(ptr noundef %24, ptr noundef %name16.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.i)
  %tobool1.not.i121.i = icmp eq i32 %call.i120.i, 0
  br i1 %tobool1.not.i121.i, label %if.end31.i, label %cleanup.i131.i

cleanup.i131.i:                                   ; preds = %while.body.i122.i
  %rb_left.i125.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i118.i, i32 0, i32 2
  %rb_right.i126.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i118.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.i)
  %cmp13.i127.i = icmp slt i32 %call.i120.i, 0
  %cond.in.i128.i = select i1 %cmp13.i127.i, ptr %rb_right.i126.i, ptr %rb_left.i125.i
  %25 = ptrtoint ptr %cond.in.i128.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %n.0.i129.i = load ptr, ptr %cond.in.i128.i, align 4
  %tobool.not.i130.i = icmp eq ptr %n.0.i129.i, null
  br i1 %tobool.not.i130.i, label %cleanup.i131.i.do.end23.i_crit_edge, label %cleanup.i131.i.while.body.i122.i_crit_edge

cleanup.i131.i.while.body.i122.i_crit_edge:       ; preds = %cleanup.i131.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i122.i

cleanup.i131.i.do.end23.i_crit_edge:              ; preds = %cleanup.i131.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end23.i

do.end23.i:                                       ; preds = %cleanup.i131.i.do.end23.i_crit_edge, %if.end15.i.do.end23.i_crit_edge, %if.end15.thread.i
  %name16166.i = phi ptr [ %name16164.i, %if.end15.thread.i ], [ %name16.i, %if.end15.i.do.end23.i_crit_edge ], [ %name16.i, %cleanup.i131.i.do.end23.i_crit_edge ]
  %cond28.i = select i1 %tobool.not.i44, ptr @.str.8, ptr @.str.51
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name16166.i, ptr noundef nonnull %cond28.i, ptr noundef %add.ptr) #20
  br label %dm_hash_rename.exit.thread.sink.split

if.end31.i:                                       ; preds = %while.body.i122.i
  %name.i119.i.le = getelementptr inbounds %struct.hash_cell, ptr %n.018.i118.i, i32 0, i32 4
  %md.i123.i = getelementptr inbounds %struct.hash_cell, ptr %n.018.i118.i, i32 0, i32 6
  %26 = ptrtoint ptr %md.i123.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %md.i123.i, align 4
  tail call void @dm_get(ptr noundef %27) #17
  br i1 %tobool.not.i44, label %if.else48.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end31.i
  %uuid.i = getelementptr inbounds %struct.hash_cell, ptr %n.018.i118.i, i32 0, i32 5
  %28 = ptrtoint ptr %uuid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %uuid.i, align 4
  %tobool33.not.i = icmp eq ptr %29, null
  br i1 %tobool33.not.i, label %if.then47.critedge.i, label %do.end37.i

do.end37.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name16.i, ptr noundef %add.ptr, ptr noundef nonnull %29) #20
  %30 = ptrtoint ptr %md.i123.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %md.i123.i, align 4
  tail call void @dm_put(ptr noundef %31) #17
  br label %dm_hash_rename.exit.thread.sink.split

if.then47.critedge.i:                             ; preds = %land.lhs.true.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @dm_hash_cells_mutex, i32 noundef 0) #17
  %32 = ptrtoint ptr %uuid.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i45, ptr %uuid.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dm_hash_cells_mutex) #17
  %uuid_set.i.i.i.i = getelementptr inbounds %struct.hash_cell, ptr %n.018.i118.i, i32 0, i32 3
  %33 = ptrtoint ptr %uuid_set.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %uuid_set.i.i.i.i, align 1, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i.i.i, label %if.then47.critedge.i.__unlink_uuid.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.then47.critedge.i.__unlink_uuid.exit.i.i.i_crit_edge: ; preds = %if.then47.critedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__unlink_uuid.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then47.critedge.i
  call void @__sanitizer_cov_trace_pc() #19
  %35 = ptrtoint ptr %uuid_set.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %uuid_set.i.i.i.i, align 1
  %uuid_node.i.i.i.i = getelementptr inbounds %struct.hash_cell, ptr %n.018.i118.i, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %uuid_node.i.i.i.i, ptr noundef nonnull @uuid_rb_tree) #17
  br label %__unlink_uuid.exit.i.i.i

__unlink_uuid.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %if.then47.critedge.i.__unlink_uuid.exit.i.i.i_crit_edge
  %36 = ptrtoint ptr %uuid_set.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %uuid_set.i.i.i.i, align 1
  %37 = load ptr, ptr @uuid_rb_tree, align 4
  %tobool.not27.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not27.i.i.i, label %__unlink_uuid.exit.i.i.i.__set_cell_uuid.exit.i_crit_edge, label %while.body.lr.ph.i.i.i

__unlink_uuid.exit.i.i.i.__set_cell_uuid.exit.i_crit_edge: ; preds = %__unlink_uuid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__set_cell_uuid.exit.i

while.body.lr.ph.i.i.i:                           ; preds = %__unlink_uuid.exit.i.i.i
  %38 = ptrtoint ptr %uuid.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %uuid.i, align 4
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %do.end11.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %40 = phi ptr [ %37, %while.body.lr.ph.i.i.i ], [ %44, %do.end11.i.i.i.while.body.i.i.i_crit_edge ]
  %uuid.i.i.i = getelementptr i8, ptr %40, i32 20
  %41 = ptrtoint ptr %uuid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %uuid.i.i.i, align 4
  %call.i.i.i = tail call i32 @strcmp(ptr noundef %42, ptr noundef %39) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %do.body6.i.i.i, label %do.end11.i.i.i, !prof !227

do.body6.i.i.i:                                   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-ioctl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 170, 0\0A.popsection", ""() #17, !srcloc !229
  unreachable

do.end11.i.i.i:                                   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %40, i32 0, i32 2
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %40, i32 0, i32 1
  %cond.i.i.i = select i1 %cmp.i.i.i, ptr %rb_left.i.i.i, ptr %rb_right.i.i.i
  %43 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cond.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i.i, label %while.cond.while.end_crit_edge.i.i.i, label %do.end11.i.i.i.while.body.i.i.i_crit_edge

do.end11.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %do.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i.i

while.cond.while.end_crit_edge.i.i.i:             ; preds = %do.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %phi.cast.le.i.i.i = ptrtoint ptr %40 to i32
  br label %__set_cell_uuid.exit.i

__set_cell_uuid.exit.i:                           ; preds = %while.cond.while.end_crit_edge.i.i.i, %__unlink_uuid.exit.i.i.i.__set_cell_uuid.exit.i_crit_edge
  %parent.0.lcssa.i.i.i = phi i32 [ %phi.cast.le.i.i.i, %while.cond.while.end_crit_edge.i.i.i ], [ 0, %__unlink_uuid.exit.i.i.i.__set_cell_uuid.exit.i_crit_edge ]
  %n.0.lcssa.i.i.i = phi ptr [ %cond.i.i.i, %while.cond.while.end_crit_edge.i.i.i ], [ @uuid_rb_tree, %__unlink_uuid.exit.i.i.i.__set_cell_uuid.exit.i_crit_edge ]
  %uuid_node13.i.i.i = getelementptr inbounds %struct.hash_cell, ptr %n.018.i118.i, i32 0, i32 1
  %45 = ptrtoint ptr %uuid_node13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %parent.0.lcssa.i.i.i, ptr %uuid_node13.i.i.i, align 4
  %rb_right.i.i.i.i = getelementptr inbounds %struct.hash_cell, ptr %n.018.i118.i, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %rb_right.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %rb_right.i.i.i.i, align 4
  %rb_left.i.i.i.i = getelementptr inbounds %struct.hash_cell, ptr %n.018.i118.i, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %rb_left.i.i.i.i, align 4
  %48 = ptrtoint ptr %n.0.lcssa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %uuid_node13.i.i.i, ptr %n.0.lcssa.i.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %uuid_node13.i.i.i, ptr noundef nonnull @uuid_rb_tree) #17
  br label %if.end50.i

if.else48.i:                                      ; preds = %if.end31.i
  %name_set.i.i.i = getelementptr inbounds %struct.hash_cell, ptr %n.018.i118.i, i32 0, i32 2
  %49 = ptrtoint ptr %name_set.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %name_set.i.i.i, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i.i135.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i.i135.i, label %if.else48.i.__unlink_name.exit.i.i_crit_edge, label %if.then.i.i.i

if.else48.i.__unlink_name.exit.i.i_crit_edge:     ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__unlink_name.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #19
  %51 = ptrtoint ptr %name_set.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %name_set.i.i.i, align 4
  tail call void @rb_erase(ptr noundef nonnull %n.018.i118.i, ptr noundef nonnull @name_rb_tree) #17
  br label %__unlink_name.exit.i.i

__unlink_name.exit.i.i:                           ; preds = %if.then.i.i.i, %if.else48.i.__unlink_name.exit.i.i_crit_edge
  %52 = ptrtoint ptr %name.i119.i.le to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name.i119.i.le, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @dm_hash_cells_mutex, i32 noundef 0) #17
  %54 = ptrtoint ptr %name.i119.i.le to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i45, ptr %name.i119.i.le, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dm_hash_cells_mutex) #17
  %55 = ptrtoint ptr %name_set.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %name_set.i.i.i, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i.i.i137.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i.i.i137.i, label %__unlink_name.exit.i.i.__unlink_name.exit.i.i.i_crit_edge, label %if.then.i.i.i138.i

__unlink_name.exit.i.i.__unlink_name.exit.i.i.i_crit_edge: ; preds = %__unlink_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__unlink_name.exit.i.i.i

if.then.i.i.i138.i:                               ; preds = %__unlink_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %57 = ptrtoint ptr %name_set.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %name_set.i.i.i, align 4
  tail call void @rb_erase(ptr noundef nonnull %n.018.i118.i, ptr noundef nonnull @name_rb_tree) #17
  br label %__unlink_name.exit.i.i.i

__unlink_name.exit.i.i.i:                         ; preds = %if.then.i.i.i138.i, %__unlink_name.exit.i.i.__unlink_name.exit.i.i.i_crit_edge
  %58 = ptrtoint ptr %name_set.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %name_set.i.i.i, align 4
  %59 = load ptr, ptr @name_rb_tree, align 4
  %tobool.not28.i.i.i = icmp eq ptr %59, null
  br i1 %tobool.not28.i.i.i, label %__unlink_name.exit.i.i.i.__change_cell_name.exit.i_crit_edge, label %while.body.lr.ph.i.i139.i

__unlink_name.exit.i.i.i.__change_cell_name.exit.i_crit_edge: ; preds = %__unlink_name.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__change_cell_name.exit.i

while.body.lr.ph.i.i139.i:                        ; preds = %__unlink_name.exit.i.i.i
  %60 = ptrtoint ptr %name.i119.i.le to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name.i119.i.le, align 4
  br label %while.body.i.i142.i

while.body.i.i142.i:                              ; preds = %do.end11.i.i147.i.while.body.i.i142.i_crit_edge, %while.body.lr.ph.i.i139.i
  %62 = phi ptr [ %59, %while.body.lr.ph.i.i139.i ], [ %66, %do.end11.i.i147.i.while.body.i.i142.i_crit_edge ]
  %name.i.i.i = getelementptr inbounds %struct.hash_cell, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name.i.i.i, align 4
  %call.i.i140.i = tail call i32 @strcmp(ptr noundef %64, ptr noundef %61) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i140.i)
  %tobool2.not.i.i141.i = icmp eq i32 %call.i.i140.i, 0
  br i1 %tobool2.not.i.i141.i, label %do.body6.i.i143.i, label %do.end11.i.i147.i, !prof !227

do.body6.i.i143.i:                                ; preds = %while.body.i.i142.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-ioctl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #17, !srcloc !228
  unreachable

do.end11.i.i147.i:                                ; preds = %while.body.i.i142.i
  %rb_left.i.i144.i = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 2
  %rb_right.i.i145.i = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i140.i)
  %cmp25.i.i.i = icmp slt i32 %call.i.i140.i, 0
  %cond.i.i146.i = select i1 %cmp25.i.i.i, ptr %rb_right.i.i145.i, ptr %rb_left.i.i144.i
  %65 = ptrtoint ptr %cond.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cond.i.i146.i, align 4
  %tobool.not.i5.i.i = icmp eq ptr %66, null
  br i1 %tobool.not.i5.i.i, label %while.cond.while.end_crit_edge.i.i149.i, label %do.end11.i.i147.i.while.body.i.i142.i_crit_edge

do.end11.i.i147.i.while.body.i.i142.i_crit_edge:  ; preds = %do.end11.i.i147.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i142.i

while.cond.while.end_crit_edge.i.i149.i:          ; preds = %do.end11.i.i147.i
  call void @__sanitizer_cov_trace_pc() #19
  %phi.cast.le.i.i148.i = ptrtoint ptr %62 to i32
  br label %__change_cell_name.exit.i

__change_cell_name.exit.i:                        ; preds = %while.cond.while.end_crit_edge.i.i149.i, %__unlink_name.exit.i.i.i.__change_cell_name.exit.i_crit_edge
  %parent.0.lcssa.i.i150.i = phi i32 [ %phi.cast.le.i.i148.i, %while.cond.while.end_crit_edge.i.i149.i ], [ 0, %__unlink_name.exit.i.i.i.__change_cell_name.exit.i_crit_edge ]
  %n.0.lcssa.i.i151.i = phi ptr [ %cond.i.i146.i, %while.cond.while.end_crit_edge.i.i149.i ], [ @name_rb_tree, %__unlink_name.exit.i.i.i.__change_cell_name.exit.i_crit_edge ]
  %67 = ptrtoint ptr %n.018.i118.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %parent.0.lcssa.i.i150.i, ptr %n.018.i118.i, align 4
  %rb_right.i.i.i152.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i118.i, i32 0, i32 1
  %68 = ptrtoint ptr %rb_right.i.i.i152.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %rb_right.i.i.i152.i, align 4
  %rb_left.i.i.i153.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i118.i, i32 0, i32 2
  %69 = ptrtoint ptr %rb_left.i.i.i153.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %rb_left.i.i.i153.i, align 4
  %70 = ptrtoint ptr %n.0.lcssa.i.i151.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %n.018.i118.i, ptr %n.0.lcssa.i.i151.i, align 4
  tail call void @rb_insert_color(ptr noundef %n.018.i118.i, ptr noundef nonnull @name_rb_tree) #17
  br label %if.end50.i

if.end50.i:                                       ; preds = %__change_cell_name.exit.i, %__set_cell_uuid.exit.i
  %old_name.0.i = phi ptr [ null, %__set_cell_uuid.exit.i ], [ %53, %__change_cell_name.exit.i ]
  %71 = ptrtoint ptr %md.i123.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %md.i123.i, align 4
  %call52.i = call ptr @dm_get_live_table(ptr noundef %72, ptr noundef nonnull %srcu_idx.i) #17
  %tobool53.not.i = icmp eq ptr %call52.i, null
  br i1 %tobool53.not.i, label %if.end50.i.if.end55.i_crit_edge, label %if.then54.i

if.end50.i.if.end55.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end55.i

if.then54.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @dm_table_event(ptr noundef nonnull %call52.i) #17
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then54.i, %if.end50.i.if.end55.i_crit_edge
  %73 = ptrtoint ptr %md.i123.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %md.i123.i, align 4
  %75 = ptrtoint ptr %srcu_idx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %srcu_idx.i, align 4
  call void @dm_put_live_table(ptr noundef %74, i32 noundef %76) #17
  %77 = ptrtoint ptr %md.i123.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %md.i123.i, align 4
  %event_nr.i = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 6
  %79 = ptrtoint ptr %event_nr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %event_nr.i, align 8
  %call58.i = call i32 @dm_kobject_uevent(ptr noundef %78, i32 noundef 2, i32 noundef %80) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.then60.i, label %if.end55.i.dm_hash_rename.exit_crit_edge

if.end55.i.dm_hash_rename.exit_crit_edge:         ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dm_hash_rename.exit

if.then60.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #19
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags, align 4
  %or.i = or i32 %82, 8192
  store i32 %or.i, ptr %flags, align 4
  br label %dm_hash_rename.exit

dm_hash_rename.exit.thread.sink.split:            ; preds = %do.end37.i, %do.end23.i, %do.end.i46
  %retval.0.i47.ph.ph = phi ptr [ inttoptr (i32 -16 to ptr), %do.end.i46 ], [ inttoptr (i32 -22 to ptr), %do.end37.i ], [ inttoptr (i32 -6 to ptr), %do.end23.i ]
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #17
  tail call void @kfree(ptr noundef nonnull %call.i45) #17
  br label %dm_hash_rename.exit.thread

dm_hash_rename.exit.thread:                       ; preds = %dm_hash_rename.exit.thread.sink.split, %if.end17.dm_hash_rename.exit.thread_crit_edge
  %retval.0.i47.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end17.dm_hash_rename.exit.thread_crit_edge ], [ %retval.0.i47.ph.ph, %dm_hash_rename.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx.i) #17
  br label %if.then20

dm_hash_rename.exit:                              ; preds = %if.then60.i, %if.end55.i.dm_hash_rename.exit_crit_edge
  %83 = ptrtoint ptr %md.i123.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %md.i123.i, align 4
  call void @dm_ima_measure_on_device_rename(ptr noundef %84) #17
  call void @up_write(ptr noundef nonnull @_hash_lock) #17
  call void @kfree(ptr noundef %old_name.0.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx.i) #17
  %cmp.i48 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48, label %dm_hash_rename.exit.if.then20_crit_edge, label %if.end22

dm_hash_rename.exit.if.then20_crit_edge:          ; preds = %dm_hash_rename.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then20

if.then20:                                        ; preds = %dm_hash_rename.exit.if.then20_crit_edge, %dm_hash_rename.exit.thread
  %retval.0.i4755 = phi ptr [ %retval.0.i47.ph, %dm_hash_rename.exit.thread ], [ %84, %dm_hash_rename.exit.if.then20_crit_edge ]
  %85 = ptrtoint ptr %retval.0.i4755 to i32
  br label %cleanup

if.end22:                                         ; preds = %dm_hash_rename.exit
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @__dev_status(ptr noundef %84, ptr noundef %param)
  call void @dm_put(ptr noundef %84) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then20, %check_name.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %85, %if.then20 ], [ 0, %if.end22 ], [ -22, %check_name.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_suspend(ptr nocapture noundef readnone %filp, ptr noundef %param, i32 noundef %param_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @down_read(ptr noundef nonnull @_hash_lock) #17
  %call.i.i = tail call fastcc ptr @__find_device_hash_cell(ptr noundef %param) #17
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %find_device.exit.thread.i, label %find_device.exit.i

find_device.exit.thread.i:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #17
  br label %return

find_device.exit.i:                               ; preds = %if.then
  %md1.i.i = getelementptr inbounds %struct.hash_cell, ptr %call.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %md1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %md1.i.i, align 4
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #17
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %find_device.exit.i.return_crit_edge, label %if.end.i

find_device.exit.i.return_crit_edge:              ; preds = %find_device.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end.i:                                         ; preds = %find_device.exit.i
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %call10.i = tail call i32 @dm_suspended_md(ptr noundef nonnull %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end.i.if.end17.i_crit_edge

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.end.i
  %and.i = lshr i32 %5, 10
  %6 = and i32 %and.i, 3
  %7 = xor i32 %6, 1
  %call13.i = tail call i32 @dm_suspend(ptr noundef nonnull %3, i32 noundef %7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then12.i.if.end17.i_crit_edge, label %if.then12.i.out.i_crit_edge

if.then12.i.out.i_crit_edge:                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

if.then12.i.if.end17.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then12.i.if.end17.i_crit_edge, %if.end.i.if.end17.i_crit_edge
  tail call fastcc void @__dev_status(ptr noundef nonnull %3, ptr noundef %param) #17
  br label %out.i

out.i:                                            ; preds = %if.end17.i, %if.then12.i.out.i_crit_edge
  %r.1.i = phi i32 [ 0, %if.end17.i ], [ %call13.i, %if.then12.i.out.i_crit_edge ]
  tail call void @dm_put(ptr noundef nonnull %3) #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call fastcc i32 @do_resume(ptr noundef %param)
  br label %return

return:                                           ; preds = %if.end, %out.i, %find_device.exit.i.return_crit_edge, %find_device.exit.thread.i
  %retval.0 = phi i32 [ %call1, %if.end ], [ %r.1.i, %out.i ], [ -6, %find_device.exit.i.return_crit_edge ], [ -6, %find_device.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_status(ptr nocapture noundef readnone %filp, ptr noundef %param, i32 noundef %param_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @_hash_lock) #17
  %call.i = tail call fastcc ptr @__find_device_hash_cell(ptr noundef %param) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %find_device.exit.thread, label %find_device.exit

find_device.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #17
  br label %cleanup

find_device.exit:                                 ; preds = %entry
  %md1.i = getelementptr inbounds %struct.hash_cell, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %md1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %md1.i, align 4
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #17
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %find_device.exit.cleanup_crit_edge, label %if.end

find_device.exit.cleanup_crit_edge:               ; preds = %find_device.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %find_device.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @__dev_status(ptr noundef nonnull %1, ptr noundef %param)
  tail call void @dm_put(ptr noundef nonnull %1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %find_device.exit.cleanup_crit_edge, %find_device.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -6, %find_device.exit.cleanup_crit_edge ], [ -6, %find_device.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_wait(ptr nocapture noundef readnone %filp, ptr noundef %param, i32 noundef %param_size) #0 align 64 {
entry:
  %srcu_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx) #17
  %0 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %srcu_idx, align 4, !annotation !225
  tail call void @down_read(ptr noundef nonnull @_hash_lock) #17
  %call.i = tail call fastcc ptr @__find_device_hash_cell(ptr noundef %param) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %find_device.exit.thread, label %find_device.exit

find_device.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #17
  br label %cleanup

find_device.exit:                                 ; preds = %entry
  %md1.i = getelementptr inbounds %struct.hash_cell, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %md1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %md1.i, align 4
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #17
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %find_device.exit.cleanup_crit_edge, label %if.end

find_device.exit.cleanup_crit_edge:               ; preds = %find_device.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %find_device.exit
  %event_nr = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 6
  %3 = ptrtoint ptr %event_nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %event_nr, align 8
  %call1 = tail call i32 @dm_wait_event(ptr noundef nonnull %2, i32 noundef %4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end4:                                          ; preds = %if.end
  tail call fastcc void @__dev_status(ptr noundef nonnull %2, ptr noundef %param)
  %flags.i = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i22 = icmp eq i32 %and.i, 0
  %call1.i = call ptr @dm_get_live_table(ptr noundef nonnull %2, ptr noundef nonnull %srcu_idx) #17
  br i1 %tobool.not.i22, label %if.end4.dm_get_live_or_inactive_table.exit_crit_edge, label %cond.true.i

if.end4.dm_get_live_or_inactive_table.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %dm_get_live_or_inactive_table.exit

cond.true.i:                                      ; preds = %if.end4
  call void @down_read(ptr noundef nonnull @_hash_lock) #17
  %call1.i.i = call ptr @dm_get_mdptr(ptr noundef nonnull %2) #17
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.do.end.i.i_crit_edge, label %lor.lhs.false.i.i

cond.true.i.do.end.i.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %cond.true.i
  %md2.i.i = getelementptr inbounds %struct.hash_cell, ptr %call1.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %md2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %md2.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %8, %2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.do.end.i.i_crit_edge, %cond.true.i.do.end.i.i_crit_edge
  %call3.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #20
  br label %dm_get_inactive_table.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %new_map.i.i = getelementptr inbounds %struct.hash_cell, ptr %call1.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %new_map.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %new_map.i.i, align 4
  br label %dm_get_inactive_table.exit.i

dm_get_inactive_table.exit.i:                     ; preds = %if.end.i.i, %do.end.i.i
  %table.0.i.i = phi ptr [ null, %do.end.i.i ], [ %10, %if.end.i.i ]
  call void @up_read(ptr noundef nonnull @_hash_lock) #17
  br label %dm_get_live_or_inactive_table.exit

dm_get_live_or_inactive_table.exit:               ; preds = %dm_get_inactive_table.exit.i, %if.end4.dm_get_live_or_inactive_table.exit_crit_edge
  %cond.i = phi ptr [ %table.0.i.i, %dm_get_inactive_table.exit.i ], [ %call1.i, %if.end4.dm_get_live_or_inactive_table.exit_crit_edge ]
  %tobool6.not = icmp eq ptr %cond.i, null
  br i1 %tobool6.not, label %dm_get_live_or_inactive_table.exit.if.end8_crit_edge, label %if.then7

dm_get_live_or_inactive_table.exit.if.end8_crit_edge: ; preds = %dm_get_live_or_inactive_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.then7:                                         ; preds = %dm_get_live_or_inactive_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @retrieve_status(ptr noundef nonnull %cond.i, ptr noundef %param, i32 noundef %param_size)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %dm_get_live_or_inactive_table.exit.if.end8_crit_edge
  %11 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %srcu_idx, align 4
  call void @dm_put_live_table(ptr noundef nonnull %2, i32 noundef %12) #17
  br label %out

out:                                              ; preds = %if.end8, %if.end.out_crit_edge
  %r.0 = phi i32 [ 0, %if.end8 ], [ -512, %if.end.out_crit_edge ]
  call void @dm_put(ptr noundef nonnull %2) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %find_device.exit.cleanup_crit_edge, %find_device.exit.thread
  %retval.0 = phi i32 [ %r.0, %out ], [ -6, %find_device.exit.cleanup_crit_edge ], [ -6, %find_device.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @table_load(ptr nocapture noundef readnone %filp, ptr noundef %param, i32 noundef %param_size) #0 align 64 {
entry:
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #17
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !225
  tail call void @down_read(ptr noundef nonnull @_hash_lock) #17
  %call.i = tail call fastcc ptr @__find_device_hash_cell(ptr noundef %param) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %find_device.exit.thread, label %find_device.exit

find_device.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #17
  br label %cleanup

find_device.exit:                                 ; preds = %entry
  %md1.i = getelementptr inbounds %struct.hash_cell, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %md1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %md1.i, align 4
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #17
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %find_device.exit.cleanup_crit_edge, label %if.end

find_device.exit.cleanup_crit_edge:               ; preds = %find_device.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %find_device.exit
  %flags.i = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i98 = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i98, i32 3, i32 1
  %target_count = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 3
  %5 = ptrtoint ptr %target_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %target_count, align 4
  %call2 = call i32 @dm_table_create(ptr noundef nonnull %t, i32 noundef %spec.store.select.i, i32 noundef %6, ptr noundef nonnull %2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %err

if.end5:                                          ; preds = %if.end
  call void @dm_lock_md_type(ptr noundef nonnull %2) #17
  %7 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %t, align 4
  %add.ptr.i = getelementptr i8, ptr %param, i32 %param_size
  %9 = ptrtoint ptr %target_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %target_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i99 = icmp eq i32 %10, 0
  br i1 %tobool.not.i99, label %do.end.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end5
  %data_start.i = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 2
  br label %for.body.i

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %call.i100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #20
  br label %err_unlock_md_type

for.body.i:                                       ; preds = %if.end19.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.046.i = phi i32 [ %inc.i, %if.end19.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %next.0.in45.i = phi ptr [ %next20.i, %if.end19.i.for.body.i_crit_edge ], [ %data_start.i, %for.body.preheader.i ]
  %spec.044.i = phi ptr [ %add.ptr.i.i, %if.end19.i.for.body.i_crit_edge ], [ %param, %for.body.preheader.i ]
  %11 = ptrtoint ptr %next.0.in45.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %next.0.i = load i32, ptr %next.0.in45.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %spec.044.i, i32 %next.0.i
  %add.ptr1.i.i = getelementptr %struct.dm_target_spec, ptr %add.ptr.i.i, i32 1
  %add.ptr2.i.i = getelementptr %struct.dm_target_spec, ptr %spec.044.i, i32 1
  %cmp.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr2.i.i
  br i1 %cmp.i.i, label %for.body.i.do.end7.i_crit_edge, label %for.body.i.while.cond.i.i.i_crit_edge

for.body.i.while.cond.i.i.i_crit_edge:            ; preds = %for.body.i
  br label %while.cond.i.i.i

for.body.i.do.end7.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %for.body.i.while.cond.i.i.i_crit_edge
  %str.addr.0.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ %add.ptr1.i.i, %for.body.i.while.cond.i.i.i_crit_edge ]
  %cmp.i.i.i = icmp ult ptr %str.addr.0.i.i.i, %add.ptr.i
  br i1 %cmp.i.i.i, label %while.body.i.i.i, label %while.cond.i.i.i.do.end7.i_crit_edge

while.cond.i.i.i.do.end7.i_crit_edge:             ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %incdec.ptr.i.i.i = getelementptr i8, ptr %str.addr.0.i.i.i, i32 1
  %12 = ptrtoint ptr %str.addr.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %str.addr.0.i.i.i, align 1
  %tobool.not.i.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i.i, label %if.end10.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i.i.i

do.end7.i:                                        ; preds = %while.cond.i.i.i.do.end7.i_crit_edge, %for.body.i.do.end7.i_crit_edge
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #20
  br label %err_unlock_md_type

if.end10.i:                                       ; preds = %while.body.i.i.i
  %target_type.i = getelementptr inbounds %struct.dm_target_spec, ptr %add.ptr.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.i.i, align 8
  %length.i = getelementptr inbounds %struct.dm_target_spec, ptr %add.ptr.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %length.i, align 8
  %call11.i = call i32 @dm_table_add_target(ptr noundef %8, ptr noundef %target_type.i, i64 noundef %15, i64 noundef %17, ptr noundef %add.ptr1.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end19.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #19
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #20
  br label %err_unlock_md_type

if.end19.i:                                       ; preds = %if.end10.i
  %next20.i = getelementptr inbounds %struct.dm_target_spec, ptr %add.ptr.i.i, i32 0, i32 3
  %inc.i = add nuw i32 %i.046.i, 1
  %18 = ptrtoint ptr %target_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %target_count, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %if.end19.i.for.body.i_crit_edge, label %populate_table.exit

if.end19.i.for.body.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

populate_table.exit:                              ; preds = %if.end19.i
  %call21.i = call i32 @dm_table_complete(ptr noundef %8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool7.not = icmp eq i32 %call21.i, 0
  br i1 %tobool7.not, label %if.end9, label %populate_table.exit.err_unlock_md_type_crit_edge

populate_table.exit.err_unlock_md_type_crit_edge: ; preds = %populate_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_unlock_md_type

if.end9:                                          ; preds = %populate_table.exit
  %20 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %t, align 4
  call void @dm_ima_measure_on_table_load(ptr noundef %21, i32 noundef 2) #17
  %call10 = call ptr @dm_get_immutable_target_type(ptr noundef nonnull %2) #17
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %land.lhs.true

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end9
  %22 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %t, align 4
  %call12 = call ptr @dm_table_get_immutable_target_type(ptr noundef %23) #17
  %cmp.not = icmp eq ptr %call10, %call12
  br i1 %cmp.not, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true13

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

land.lhs.true13:                                  ; preds = %land.lhs.true
  %24 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %t, align 4
  %call14 = call ptr @dm_table_get_wildcard_target(ptr noundef %25) #17
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end, label %land.lhs.true13.if.end18_crit_edge

land.lhs.true13.if.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

do.end:                                           ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.target_type, ptr %call10, i32 0, i32 1
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 8
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %27) #20
  br label %err_unlock_md_type

if.end18:                                         ; preds = %land.lhs.true13.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %call19 = call i32 @dm_get_md_type(ptr noundef nonnull %2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end18
  %28 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %t, align 4
  %call22 = call i32 @dm_setup_md_queue(ptr noundef nonnull %2, ptr noundef %29) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.if.end43_crit_edge, label %do.end27

if.then21.if.end43_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

do.end27:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #19
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #20
  br label %err_unlock_md_type

if.else:                                          ; preds = %if.end18
  %call31 = call i32 @dm_get_md_type(ptr noundef nonnull %2) #17
  %30 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %t, align 4
  %call32 = call i32 @dm_table_get_type(ptr noundef %31) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call31, i32 %call32)
  %cmp.i101 = icmp eq i32 %call31, %call32
  br i1 %cmp.i101, label %if.else.if.end43_crit_edge, label %is_valid_type.exit

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

is_valid_type.exit:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call31)
  %cmp1.i = icmp eq i32 %call31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call32)
  %cmp2.i = icmp eq i32 %call32, 3
  %or.cond.i = and i1 %cmp1.i, %cmp2.i
  br i1 %or.cond.i, label %is_valid_type.exit.if.end43_crit_edge, label %do.end37

is_valid_type.exit.if.end43_crit_edge:            ; preds = %is_valid_type.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

do.end37:                                         ; preds = %is_valid_type.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call39 = call i32 @dm_get_md_type(ptr noundef nonnull %2) #17
  %32 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %t, align 4
  %call40 = call i32 @dm_table_get_type(ptr noundef %33) #17
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %call39, i32 noundef %call40) #20
  br label %err_unlock_md_type

if.end43:                                         ; preds = %is_valid_type.exit.if.end43_crit_edge, %if.else.if.end43_crit_edge, %if.then21.if.end43_crit_edge
  call void @dm_unlock_md_type(ptr noundef nonnull %2) #17
  call void @down_write(ptr noundef nonnull @_hash_lock) #17
  %call44 = call ptr @dm_get_mdptr(ptr noundef nonnull %2) #17
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.end43.do.end51_crit_edge, label %lor.lhs.false

if.end43.do.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end51

lor.lhs.false:                                    ; preds = %if.end43
  %md46 = getelementptr inbounds %struct.hash_cell, ptr %call44, i32 0, i32 6
  %34 = ptrtoint ptr %md46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %md46, align 4
  %cmp47.not = icmp eq ptr %35, %2
  br i1 %cmp47.not, label %if.end54, label %lor.lhs.false.do.end51_crit_edge

lor.lhs.false.do.end51_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end51

do.end51:                                         ; preds = %lor.lhs.false.do.end51_crit_edge, %if.end43.do.end51_crit_edge
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #20
  call void @up_write(ptr noundef nonnull @_hash_lock) #17
  br label %err_destroy_table

if.end54:                                         ; preds = %lor.lhs.false
  %new_map = getelementptr inbounds %struct.hash_cell, ptr %call44, i32 0, i32 7
  %36 = ptrtoint ptr %new_map to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %new_map, align 4
  %tobool55.not = icmp eq ptr %37, null
  %38 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %t, align 4
  store ptr %39, ptr %new_map, align 4
  call void @up_write(ptr noundef nonnull @_hash_lock) #17
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i, align 4
  %or = or i32 %41, 64
  store i32 %or, ptr %flags.i, align 4
  call fastcc void @__dev_status(ptr noundef nonnull %2, ptr noundef %param)
  br i1 %tobool55.not, label %if.end54.if.end62_crit_edge, label %if.then61

if.end54.if.end62_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end62

if.then61:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  call void @dm_sync_table(ptr noundef nonnull %2) #17
  call void @dm_table_destroy(ptr noundef nonnull %37) #17
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end54.if.end62_crit_edge
  call void @dm_put(ptr noundef nonnull %2) #17
  br label %cleanup

err_unlock_md_type:                               ; preds = %do.end37, %do.end27, %do.end, %populate_table.exit.err_unlock_md_type_crit_edge, %do.end16.i, %do.end7.i, %do.end.i
  %r.0 = phi i32 [ %call21.i, %populate_table.exit.err_unlock_md_type_crit_edge ], [ %call22, %do.end27 ], [ -22, %do.end37 ], [ -22, %do.end ], [ -22, %do.end.i ], [ %call11.i, %do.end16.i ], [ -22, %do.end7.i ]
  call void @dm_unlock_md_type(ptr noundef nonnull %2) #17
  br label %err_destroy_table

err_destroy_table:                                ; preds = %err_unlock_md_type, %do.end51
  %r.1 = phi i32 [ %r.0, %err_unlock_md_type ], [ -6, %do.end51 ]
  %42 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %t, align 4
  call void @dm_table_destroy(ptr noundef %43) #17
  br label %err

err:                                              ; preds = %err_destroy_table, %if.end.err_crit_edge
  %r.2 = phi i32 [ %call2, %if.end.err_crit_edge ], [ %r.1, %err_destroy_table ]
  call void @dm_put(ptr noundef nonnull %2) #17
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end62, %find_device.exit.cleanup_crit_edge, %find_device.exit.thread
  %retval.0 = phi i32 [ %r.2, %err ], [ 0, %if.end62 ], [ -6, %find_device.exit.cleanup_crit_edge ], [ -6, %find_device.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @table_clear(ptr nocapture noundef readnone %filp, ptr noundef %param, i32 noundef %param_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @_hash_lock) #17
  %call = tail call fastcc ptr @__find_device_hash_cell(ptr noundef %param)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @table_clear.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@table_clear, %land.lhs.true)) #17
          to label %do.end [label %land.lhs.true], !srcloc !238

land.lhs.true:                                    ; preds = %do.body
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @table_clear._rs, ptr noundef nonnull @.str.72) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %if.then7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @table_clear.descriptor, ptr noundef nonnull @.str.38) #17
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true.do.end_crit_edge, %do.body
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #17
  br label %cleanup

if.end8:                                          ; preds = %entry
  %new_map = getelementptr inbounds %struct.hash_cell, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %new_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %new_map, align 4
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %if.end8.if.end13_crit_edge, label %if.then10

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %new_map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %new_map, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %3 = xor i1 %tobool9.not, true
  %flags = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, -65
  store i32 %and, ptr %flags, align 4
  %md14 = getelementptr inbounds %struct.hash_cell, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %md14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %md14, align 4
  tail call fastcc void @__dev_status(ptr noundef %7, ptr noundef %param)
  %8 = ptrtoint ptr %md14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %md14, align 4
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #17
  br i1 %tobool9.not, label %if.end13.if.end18_crit_edge, label %if.then17

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dm_sync_table(ptr noundef %9) #17
  tail call void @dm_table_destroy(ptr noundef nonnull %1) #17
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge
  tail call void @dm_ima_measure_on_table_clear(ptr noundef %9, i1 noundef zeroext %3) #17
  tail call void @dm_put(ptr noundef %9) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -6, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @table_deps(ptr nocapture noundef readnone %filp, ptr noundef %param, i32 noundef %param_size) #0 align 64 {
entry:
  %srcu_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx) #17
  %0 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %srcu_idx, align 4, !annotation !225
  tail call void @down_read(ptr noundef nonnull @_hash_lock) #17
  %call.i = tail call fastcc ptr @__find_device_hash_cell(ptr noundef %param) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %find_device.exit.thread, label %find_device.exit

find_device.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #17
  br label %cleanup

find_device.exit:                                 ; preds = %entry
  %md1.i = getelementptr inbounds %struct.hash_cell, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %md1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %md1.i, align 4
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #17
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %find_device.exit.cleanup_crit_edge, label %if.end

find_device.exit.cleanup_crit_edge:               ; preds = %find_device.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %find_device.exit
  tail call fastcc void @__dev_status(ptr noundef nonnull %2, ptr noundef %param)
  %flags.i = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i15 = icmp eq i32 %and.i, 0
  %call1.i = call ptr @dm_get_live_table(ptr noundef nonnull %2, ptr noundef nonnull %srcu_idx) #17
  br i1 %tobool.not.i15, label %if.end.dm_get_live_or_inactive_table.exit_crit_edge, label %cond.true.i

if.end.dm_get_live_or_inactive_table.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %dm_get_live_or_inactive_table.exit

cond.true.i:                                      ; preds = %if.end
  call void @down_read(ptr noundef nonnull @_hash_lock) #17
  %call1.i.i = call ptr @dm_get_mdptr(ptr noundef nonnull %2) #17
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.do.end.i.i_crit_edge, label %lor.lhs.false.i.i

cond.true.i.do.end.i.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %cond.true.i
  %md2.i.i = getelementptr inbounds %struct.hash_cell, ptr %call1.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %md2.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %md2.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %6, %2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.do.end.i.i_crit_edge, %cond.true.i.do.end.i.i_crit_edge
  %call3.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #20
  br label %dm_get_inactive_table.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %new_map.i.i = getelementptr inbounds %struct.hash_cell, ptr %call1.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %new_map.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %new_map.i.i, align 4
  br label %dm_get_inactive_table.exit.i

dm_get_inactive_table.exit.i:                     ; preds = %if.end.i.i, %do.end.i.i
  %table.0.i.i = phi ptr [ null, %do.end.i.i ], [ %8, %if.end.i.i ]
  call void @up_read(ptr noundef nonnull @_hash_lock) #17
  br label %dm_get_live_or_inactive_table.exit

dm_get_live_or_inactive_table.exit:               ; preds = %dm_get_inactive_table.exit.i, %if.end.dm_get_live_or_inactive_table.exit_crit_edge
  %cond.i = phi ptr [ %table.0.i.i, %dm_get_inactive_table.exit.i ], [ %call1.i, %if.end.dm_get_live_or_inactive_table.exit_crit_edge ]
  %tobool2.not = icmp eq ptr %cond.i, null
  br i1 %tobool2.not, label %dm_get_live_or_inactive_table.exit.if.end4_crit_edge, label %if.then3

dm_get_live_or_inactive_table.exit.if.end4_crit_edge: ; preds = %dm_get_live_or_inactive_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

if.then3:                                         ; preds = %dm_get_live_or_inactive_table.exit
  %add.ptr.i.i = getelementptr %struct.dm_ioctl, ptr %param, i32 1
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  %add.i.i.i.i = add i32 %9, 7
  %and.i.i.i.i = and i32 %add.i.i.i.i, -8
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %param to i32
  %sub.ptr.sub.i.i = sub i32 %and.i.i.i.i, %sub.ptr.rhs.cast.i.i
  %data_start.i.i = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 2
  %10 = ptrtoint ptr %data_start.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.ptr.sub.i.i, ptr %data_start.i.i, align 8
  %call1.i16 = call ptr @dm_table_get_devices(ptr noundef nonnull %cond.i) #17
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then3
  %tmp.0.in.i = phi ptr [ %call1.i16, %if.then3 ], [ %tmp.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %count.0.i = phi i32 [ 0, %if.then3 ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %tmp.0.i = load ptr, ptr %tmp.0.in.i, align 4
  %call2.i = call ptr @dm_table_get_devices(ptr noundef nonnull %cond.i) #17
  %cmp.i.not.i = icmp eq ptr %tmp.0.i, %call2.i
  %inc.i = add i32 %count.0.i, 1
  br i1 %cmp.i.not.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %12 = call i32 @llvm.usub.sat.i32(i32 %param_size, i32 %sub.ptr.sub.i.i) #17
  %add.ptr4.i.i = getelementptr i8, ptr %param, i32 %sub.ptr.sub.i.i
  %13 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count.0.i, i32 8) #17
  %14 = extractvalue { i32, i1 } %13, 1
  %15 = extractvalue { i32, i1 } %13, 0
  %spec.select.i.i = call i32 @llvm.uadd.sat.i32(i32 %15, i32 8) #17
  %retval.0.i.i = select i1 %14, i32 -1, i32 %spec.select.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %retval.0.i.i)
  %cmp.i = icmp ult i32 %12, %retval.0.i.i
  br i1 %cmp.i, label %if.then.i18, label %if.end.i

if.then.i18:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %17, 256
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end4

if.end.i:                                         ; preds = %for.end.i
  %18 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %count.0.i, ptr %add.ptr4.i.i, align 8
  %call7.i = call ptr @dm_table_get_devices(ptr noundef nonnull %cond.i) #17
  %19 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %dd.044.i = load ptr, ptr %call7.i, align 4
  %call1145.i = call ptr @dm_table_get_devices(ptr noundef nonnull %cond.i) #17
  %cmp12.not46.i = icmp eq ptr %dd.044.i, %call1145.i
  br i1 %cmp12.not46.i, label %if.end.i.for.end23.i_crit_edge, label %if.end.i.for.body14.i_crit_edge

if.end.i.for.body14.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body14.i

if.end.i.for.end23.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end23.i

for.body14.i:                                     ; preds = %for.body14.i.for.body14.i_crit_edge, %if.end.i.for.body14.i_crit_edge
  %dd.048.i = phi ptr [ %dd.0.i, %for.body14.i.for.body14.i_crit_edge ], [ %dd.044.i, %if.end.i.for.body14.i_crit_edge ]
  %count.147.i = phi i32 [ %inc16.i, %for.body14.i.for.body14.i_crit_edge ], [ 0, %if.end.i.for.body14.i_crit_edge ]
  %dm_dev.i = getelementptr inbounds %struct.dm_dev_internal, ptr %dd.048.i, i32 0, i32 2
  %20 = ptrtoint ptr %dm_dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dm_dev.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %bd_dev.i = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %bd_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bd_dev.i, align 4
  %and1.i.i.i = and i32 %25, 255
  %26 = lshr i32 %25, 12
  %shl.i.i.i = and i32 %26, 1048320
  %or.i.i.i = or i32 %shl.i.i.i, %and1.i.i.i
  %and2.i.i.i = shl i32 %25, 12
  %shl3.i.i.i = and i32 %and2.i.i.i, -1048576
  %or4.i.i.i = or i32 %or.i.i.i, %shl3.i.i.i
  %conv.i.i = zext i32 %or4.i.i.i to i64
  %inc16.i = add i32 %count.147.i, 1
  %arrayidx.i = getelementptr %struct.dm_target_deps, ptr %add.ptr4.i.i, i32 0, i32 2, i32 %count.147.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv.i.i, ptr %arrayidx.i, align 8
  %28 = ptrtoint ptr %dd.048.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %dd.0.i = load ptr, ptr %dd.048.i, align 4
  %call11.i = call ptr @dm_table_get_devices(ptr noundef nonnull %cond.i) #17
  %cmp12.not.i = icmp eq ptr %dd.0.i, %call11.i
  br i1 %cmp12.not.i, label %for.body14.i.for.end23.i_crit_edge, label %for.body14.i.for.body14.i_crit_edge

for.body14.i.for.body14.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body14.i

for.body14.i.for.end23.i_crit_edge:               ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end23.i

for.end23.i:                                      ; preds = %for.body14.i.for.end23.i_crit_edge, %if.end.i.for.end23.i_crit_edge
  %29 = ptrtoint ptr %data_start.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_start.i.i, align 8
  %add.i = add i32 %30, %retval.0.i.i
  %data_size.i = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 1
  %31 = ptrtoint ptr %data_size.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %data_size.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %for.end23.i, %if.then.i18, %dm_get_live_or_inactive_table.exit.if.end4_crit_edge
  %32 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %srcu_idx, align 4
  call void @dm_put_live_table(ptr noundef nonnull %2, i32 noundef %33) #17
  call void @dm_put(ptr noundef nonnull %2) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %find_device.exit.cleanup_crit_edge, %find_device.exit.thread
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -6, %find_device.exit.cleanup_crit_edge ], [ -6, %find_device.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @table_status(ptr nocapture noundef readnone %filp, ptr noundef %param, i32 noundef %param_size) #0 align 64 {
entry:
  %srcu_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx) #17
  %0 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %srcu_idx, align 4, !annotation !225
  tail call void @down_read(ptr noundef nonnull @_hash_lock) #17
  %call.i = tail call fastcc ptr @__find_device_hash_cell(ptr noundef %param) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %find_device.exit.thread, label %find_device.exit

find_device.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #17
  br label %cleanup

find_device.exit:                                 ; preds = %entry
  %md1.i = getelementptr inbounds %struct.hash_cell, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %md1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %md1.i, align 4
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #17
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %find_device.exit.cleanup_crit_edge, label %if.end

find_device.exit.cleanup_crit_edge:               ; preds = %find_device.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %find_device.exit
  tail call fastcc void @__dev_status(ptr noundef nonnull %2, ptr noundef %param)
  %flags.i = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i15 = icmp eq i32 %and.i, 0
  %call1.i = call ptr @dm_get_live_table(ptr noundef nonnull %2, ptr noundef nonnull %srcu_idx) #17
  br i1 %tobool.not.i15, label %if.end.dm_get_live_or_inactive_table.exit_crit_edge, label %cond.true.i

if.end.dm_get_live_or_inactive_table.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %dm_get_live_or_inactive_table.exit

cond.true.i:                                      ; preds = %if.end
  call void @down_read(ptr noundef nonnull @_hash_lock) #17
  %call1.i.i = call ptr @dm_get_mdptr(ptr noundef nonnull %2) #17
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.do.end.i.i_crit_edge, label %lor.lhs.false.i.i

cond.true.i.do.end.i.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %cond.true.i
  %md2.i.i = getelementptr inbounds %struct.hash_cell, ptr %call1.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %md2.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %md2.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %6, %2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.do.end.i.i_crit_edge, %cond.true.i.do.end.i.i_crit_edge
  %call3.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #20
  br label %dm_get_inactive_table.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %new_map.i.i = getelementptr inbounds %struct.hash_cell, ptr %call1.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %new_map.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %new_map.i.i, align 4
  br label %dm_get_inactive_table.exit.i

dm_get_inactive_table.exit.i:                     ; preds = %if.end.i.i, %do.end.i.i
  %table.0.i.i = phi ptr [ null, %do.end.i.i ], [ %8, %if.end.i.i ]
  call void @up_read(ptr noundef nonnull @_hash_lock) #17
  br label %dm_get_live_or_inactive_table.exit

dm_get_live_or_inactive_table.exit:               ; preds = %dm_get_inactive_table.exit.i, %if.end.dm_get_live_or_inactive_table.exit_crit_edge
  %cond.i = phi ptr [ %table.0.i.i, %dm_get_inactive_table.exit.i ], [ %call1.i, %if.end.dm_get_live_or_inactive_table.exit_crit_edge ]
  %tobool2.not = icmp eq ptr %cond.i, null
  br i1 %tobool2.not, label %dm_get_live_or_inactive_table.exit.if.end4_crit_edge, label %if.then3

dm_get_live_or_inactive_table.exit.if.end4_crit_edge: ; preds = %dm_get_live_or_inactive_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

if.then3:                                         ; preds = %dm_get_live_or_inactive_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @retrieve_status(ptr noundef nonnull %cond.i, ptr noundef %param, i32 noundef %param_size)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %dm_get_live_or_inactive_table.exit.if.end4_crit_edge
  %9 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %srcu_idx, align 4
  call void @dm_put_live_table(ptr noundef nonnull %2, i32 noundef %10) #17
  call void @dm_put(ptr noundef nonnull %2) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %find_device.exit.cleanup_crit_edge, %find_device.exit.thread
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -6, %find_device.exit.cleanup_crit_edge ], [ -6, %find_device.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @list_versions(ptr nocapture noundef readnone %filp, ptr noundef %param, i32 noundef %param_size) #0 align 64 {
entry:
  %needed.i = alloca i32, align 4
  %iter_info.i = alloca %struct.vers_iter, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needed.i) #17
  %0 = ptrtoint ptr %needed.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %needed.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %iter_info.i) #17
  %call6.i = call i32 @dm_target_iterate(ptr noundef nonnull @list_version_get_needed, ptr noundef nonnull %needed.i) #17
  %add.ptr.i.i = getelementptr %struct.dm_ioctl, ptr %param, i32 1
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  %add.i.i.i.i = add i32 %1, 7
  %and.i.i.i.i = and i32 %add.i.i.i.i, -8
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %param to i32
  %sub.ptr.sub.i.i = sub i32 %and.i.i.i.i, %sub.ptr.rhs.cast.i.i
  %data_start.i.i = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 2
  %2 = ptrtoint ptr %data_start.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub.ptr.sub.i.i, ptr %data_start.i.i, align 8
  %3 = call i32 @llvm.usub.sat.i32(i32 %param_size, i32 %sub.ptr.sub.i.i) #17
  %4 = ptrtoint ptr %needed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %needed.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i = icmp ult i32 %3, %5
  br i1 %cmp.i, label %entry.__list_versions.exit_crit_edge, label %if.end10.i

entry.__list_versions.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %__list_versions.exit

if.end10.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr4.i.i = getelementptr i8, ptr %param, i32 %sub.ptr.sub.i.i
  %6 = getelementptr inbounds %struct.vers_iter, ptr %iter_info.i, i32 0, i32 4
  %7 = getelementptr inbounds %struct.vers_iter, ptr %iter_info.i, i32 0, i32 3
  %8 = getelementptr inbounds %struct.vers_iter, ptr %iter_info.i, i32 0, i32 2
  %9 = getelementptr inbounds %struct.vers_iter, ptr %iter_info.i, i32 0, i32 1
  %add.i = add i32 %5, %sub.ptr.sub.i.i
  %data_size.i = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 1
  %10 = ptrtoint ptr %data_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i, ptr %data_size.i, align 4
  %11 = ptrtoint ptr %iter_info.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %param_size, ptr %iter_info.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %8, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr4.i.i, ptr %9, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %6, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %3
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %7, align 4
  %call16.i = call i32 @dm_target_iterate(ptr noundef nonnull @list_version_get_info, ptr noundef nonnull %iter_info.i) #17
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %6, align 4
  br label %__list_versions.exit

__list_versions.exit:                             ; preds = %if.end10.i, %entry.__list_versions.exit_crit_edge
  %.sink56.i = phi i32 [ %17, %if.end10.i ], [ 256, %entry.__list_versions.exit_crit_edge ]
  %flags20.i = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %18 = ptrtoint ptr %flags20.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags20.i, align 4
  %or21.i = or i32 %19, %.sink56.i
  store i32 %or21.i, ptr %flags20.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %iter_info.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needed.i) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_message(ptr nocapture noundef readnone %filp, ptr noundef %param, i32 noundef %param_size) #0 align 64 {
entry:
  %argc = alloca i32, align 4
  %argv = alloca ptr, align 4
  %srcu_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argc) #17
  %0 = ptrtoint ptr %argc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %argc, align 4, !annotation !225
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argv) #17
  %1 = ptrtoint ptr %argv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %argv, align 4, !annotation !225
  %data_start = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 2
  %2 = ptrtoint ptr %data_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_start, align 8
  %add.ptr = getelementptr i8, ptr %param, i32 %3
  %add.ptr.i = getelementptr %struct.dm_ioctl, ptr %param, i32 1
  %4 = ptrtoint ptr %add.ptr.i to i32
  %add.i.i.i = add i32 %4, 7
  %and.i.i.i = and i32 %add.i.i.i, -8
  %sub.ptr.rhs.cast.i = ptrtoint ptr %param to i32
  %sub.ptr.sub.i = sub i32 %and.i.i.i, %sub.ptr.rhs.cast.i
  store i32 %sub.ptr.sub.i, ptr %data_start, align 8
  %5 = tail call i32 @llvm.usub.sat.i32(i32 %param_size, i32 %sub.ptr.sub.i) #17
  %add.ptr4.i = getelementptr i8, ptr %param, i32 %sub.ptr.sub.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx) #17
  %6 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %srcu_idx, align 4, !annotation !225
  tail call void @down_read(ptr noundef nonnull @_hash_lock) #17
  %call.i = tail call fastcc ptr @__find_device_hash_cell(ptr noundef %param) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %find_device.exit.thread, label %find_device.exit

find_device.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #17
  br label %cleanup

find_device.exit:                                 ; preds = %entry
  %md1.i = getelementptr inbounds %struct.hash_cell, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %md1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %md1.i, align 4
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #17
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %find_device.exit.cleanup_crit_edge, label %if.end

find_device.exit.cleanup_crit_edge:               ; preds = %find_device.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %find_device.exit
  %data = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 11
  %cmp = icmp ult ptr %add.ptr, %data
  br i1 %cmp, label %if.end.out.thread_crit_edge, label %lor.lhs.false

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.thread

lor.lhs.false:                                    ; preds = %if.end
  %message = getelementptr inbounds %struct.dm_target_msg, ptr %add.ptr, i32 0, i32 1
  %add.ptr3 = getelementptr i8, ptr %param, i32 %param_size
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %lor.lhs.false
  %str.addr.0.i = phi ptr [ %message, %lor.lhs.false ], [ %incdec.ptr.i, %while.body.i.while.cond.i_crit_edge ]
  %cmp.i = icmp ult ptr %str.addr.0.i, %add.ptr3
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.out.thread_crit_edge

while.cond.i.out.thread_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.thread

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr i8, ptr %str.addr.0.i, i32 1
  %9 = ptrtoint ptr %str.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %str.addr.0.i, align 1
  %tobool.not.i118 = icmp eq i8 %10, 0
  br i1 %tobool.not.i118, label %if.end8, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i

out.thread:                                       ; preds = %while.cond.i.out.thread_crit_edge, %if.end.out.thread_crit_edge
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #20
  br label %if.end76

if.end8:                                          ; preds = %while.body.i
  %call11 = call i32 @dm_split_args(ptr noundef nonnull %argc, ptr noundef nonnull %argv, ptr noundef %message) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #20
  br label %out

if.end19:                                         ; preds = %if.end8
  %11 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool20.not = icmp eq i32 %12, 0
  br i1 %tobool20.not, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #20
  br label %out_argv

if.end27:                                         ; preds = %if.end19
  %13 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %argv, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %18)
  %cmp.not.i = icmp eq i8 %18, 64
  br i1 %cmp.not.i, label %if.end.i, label %if.end27.if.end31_crit_edge

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.end.i:                                         ; preds = %if.end27
  %call.i119 = call i32 @strcasecmp(ptr noundef %16, ptr noundef nonnull @.str.87) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i120 = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i120, label %if.then2.i, label %if.end9.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp3.not.i = icmp eq i32 %12, 1
  br i1 %cmp3.not.i, label %message_for_md.exit, label %do.end.i

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #20
  br label %out_argv

if.end9.i:                                        ; preds = %if.end.i
  %call10.i = call i32 @dm_stats_message(ptr noundef nonnull %8, i32 noundef %12, ptr noundef %14, ptr noundef %add.ptr4.i, i32 noundef %5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 2
  br i1 %cmp11.i, label %if.end9.i.out_argv_crit_edge, label %do.end17.i

if.end9.i.out_argv_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_argv

do.end17.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 4
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %20) #20
  br label %out_argv

message_for_md.exit:                              ; preds = %if.then2.i
  %call8.i = call i32 @dm_cancel_deferred_remove(ptr noundef nonnull %8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call8.i)
  %cmp29 = icmp slt i32 %call8.i, 2
  br i1 %cmp29, label %message_for_md.exit.out_argv_crit_edge, label %message_for_md.exit.if.end31_crit_edge

message_for_md.exit.if.end31_crit_edge:           ; preds = %message_for_md.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

message_for_md.exit.out_argv_crit_edge:           ; preds = %message_for_md.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_argv

if.end31:                                         ; preds = %message_for_md.exit.if.end31_crit_edge, %if.end27.if.end31_crit_edge
  %retval.0.i121137 = phi i32 [ %call8.i, %message_for_md.exit.if.end31_crit_edge ], [ 2, %if.end27.if.end31_crit_edge ]
  %call32 = call ptr @dm_get_live_table(ptr noundef nonnull %8, ptr noundef nonnull %srcu_idx) #17
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end31.out_table_crit_edge, label %if.end35

if.end31.out_table_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_table

if.end35:                                         ; preds = %if.end31
  %call36 = call i32 @dm_deleting_md(ptr noundef nonnull %8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.out_table_crit_edge

if.end35.out_table_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_table

if.end39:                                         ; preds = %if.end35
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr, align 8
  %call40 = call ptr @dm_table_find_target(ptr noundef nonnull %call32, i64 noundef %22) #17
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %do.end45, label %if.else

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #20
  br label %out_table

if.else:                                          ; preds = %if.end39
  %type = getelementptr inbounds %struct.dm_target, ptr %call40, i32 0, i32 1
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %type, align 4
  %message48 = getelementptr inbounds %struct.target_type, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %message48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %message48, align 8
  %tobool49.not = icmp eq ptr %26, null
  br i1 %tobool49.not, label %do.end57, label %if.then50

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %argc, align 4
  %29 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %argv, align 4
  %call53 = call i32 %26(ptr noundef nonnull %call40, i32 noundef %28, ptr noundef %30, ptr noundef %add.ptr4.i, i32 noundef %5) #17
  br label %out_table

do.end57:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #20
  br label %out_table

out_table:                                        ; preds = %do.end57, %if.then50, %do.end45, %if.end35.out_table_crit_edge, %if.end31.out_table_crit_edge
  %r.0 = phi i32 [ %call53, %if.then50 ], [ -22, %do.end57 ], [ -22, %do.end45 ], [ %retval.0.i121137, %if.end31.out_table_crit_edge ], [ -6, %if.end35.out_table_crit_edge ]
  %31 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %srcu_idx, align 4
  call void @dm_put_live_table(ptr noundef nonnull %8, i32 noundef %32) #17
  br label %out_argv

out_argv:                                         ; preds = %out_table, %message_for_md.exit.out_argv_crit_edge, %do.end17.i, %if.end9.i.out_argv_crit_edge, %do.end.i, %do.end24
  %r.1 = phi i32 [ %call8.i, %message_for_md.exit.out_argv_crit_edge ], [ %r.0, %out_table ], [ -22, %do.end24 ], [ %call10.i, %if.end9.i.out_argv_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end17.i ]
  %33 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %argv, align 4
  call void @kfree(ptr noundef %34) #17
  br label %out

out:                                              ; preds = %out_argv, %do.end16
  %r.2 = phi i32 [ %call11, %do.end16 ], [ %r.1, %out_argv ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %r.2)
  %cmp62 = icmp sgt i32 %r.2, -1
  br i1 %cmp62, label %if.end64, label %out.if.end76_crit_edge

out.if.end76_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end76

if.end64:                                         ; preds = %out
  call fastcc void @__dev_status(ptr noundef nonnull %8, ptr noundef %param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %r.2)
  %cmp65 = icmp eq i32 %r.2, 1
  br i1 %cmp65, label %if.then66, label %if.end64.if.end76_crit_edge

if.end64.if.end76_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end76

if.then66:                                        ; preds = %if.end64
  %flags = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %or = or i32 %36, 65536
  store i32 %or, ptr %flags, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %param_size)
  %tobool.not.i122.not = icmp ult i32 %sub.ptr.sub.i, %param_size
  br i1 %tobool.not.i122.not, label %dm_message_test_buffer_overflow.exit, label %if.then66.if.then68_crit_edge

if.then66.if.then68_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then68

dm_message_test_buffer_overflow.exit:             ; preds = %if.then66
  %call.i123 = call i32 @strlen(ptr noundef %add.ptr4.i) #22
  %add.i = add i32 %call.i123, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %5)
  %cmp.i124.not = icmp ult i32 %add.i, %5
  br i1 %cmp.i124.not, label %if.else71, label %dm_message_test_buffer_overflow.exit.if.then68_crit_edge

dm_message_test_buffer_overflow.exit.if.then68_crit_edge: ; preds = %dm_message_test_buffer_overflow.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then68

if.then68:                                        ; preds = %dm_message_test_buffer_overflow.exit.if.then68_crit_edge, %if.then66.if.then68_crit_edge
  %or70 = or i32 %36, 65792
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or70, ptr %flags, align 4
  br label %if.end76

if.else71:                                        ; preds = %dm_message_test_buffer_overflow.exit
  call void @__sanitizer_cov_trace_pc() #19
  %38 = ptrtoint ptr %data_start to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_start, align 8
  %call73 = call i32 @strlen(ptr noundef %add.ptr4.i) #21
  %add = add i32 %39, 1
  %add74 = add i32 %add, %call73
  %data_size = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 1
  %40 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add74, ptr %data_size, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else71, %if.then68, %if.end64.if.end76_crit_edge, %out.if.end76_crit_edge, %out.thread
  %r.3 = phi i32 [ %r.2, %if.end64.if.end76_crit_edge ], [ 0, %if.else71 ], [ 0, %if.then68 ], [ -22, %out.thread ], [ %r.2, %out.if.end76_crit_edge ]
  call void @dm_put(ptr noundef nonnull %8) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %find_device.exit.cleanup_crit_edge, %find_device.exit.thread
  %retval.0 = phi i32 [ %r.3, %if.end76 ], [ -6, %find_device.exit.cleanup_crit_edge ], [ -6, %find_device.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argv) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_set_geometry(ptr nocapture noundef readnone %filp, ptr noundef %param, i32 noundef %param_size) #0 align 64 {
entry:
  %geometry = alloca %struct.hd_geometry, align 8
  %indata = alloca [4 x i32], align 4
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %geometry) #17
  %0 = getelementptr inbounds %struct.hd_geometry, ptr %geometry, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hd_geometry, ptr %geometry, i32 0, i32 2
  %2 = getelementptr inbounds %struct.hd_geometry, ptr %geometry, i32 0, i32 3
  %3 = ptrtoint ptr %geometry to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %geometry, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %indata) #17
  %4 = getelementptr inbounds [4 x i32], ptr %indata, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i32], ptr %indata, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i32], ptr %indata, i32 0, i32 3
  %data_start = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 2
  %7 = call ptr @memset(ptr %indata, i32 255, i32 16)
  %8 = ptrtoint ptr %data_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_start, align 8
  %add.ptr = getelementptr i8, ptr %param, i32 %9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #17
  %10 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %dummy, align 1, !annotation !225
  tail call void @down_read(ptr noundef nonnull @_hash_lock) #17
  %call.i = tail call fastcc ptr @__find_device_hash_cell(ptr noundef %param) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %find_device.exit.thread, label %find_device.exit

find_device.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #17
  br label %cleanup

find_device.exit:                                 ; preds = %entry
  %md1.i = getelementptr inbounds %struct.hash_cell, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %md1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %md1.i, align 4
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #17
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %find_device.exit.cleanup_crit_edge, label %if.end

find_device.exit.cleanup_crit_edge:               ; preds = %find_device.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %find_device.exit
  %data = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 11
  %cmp = icmp ult ptr %add.ptr, %data
  br i1 %cmp, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %add.ptr1 = getelementptr i8, ptr %param, i32 %param_size
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %lor.lhs.false
  %str.addr.0.i = phi ptr [ %add.ptr, %lor.lhs.false ], [ %incdec.ptr.i, %while.body.i.while.cond.i_crit_edge ]
  %cmp.i = icmp ult ptr %str.addr.0.i, %add.ptr1
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.do.end_crit_edge

while.cond.i.do.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr i8, ptr %str.addr.0.i, i32 1
  %13 = ptrtoint ptr %str.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %str.addr.0.i, align 1
  %tobool.not.i62 = icmp eq i8 %14, 0
  br i1 %tobool.not.i62, label %if.end6, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i

do.end:                                           ; preds = %while.cond.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #20
  br label %out

if.end6:                                          ; preds = %while.body.i
  %call14 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr, ptr noundef nonnull @.str.95, ptr noundef nonnull %indata, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 4
  br i1 %cmp15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #20
  br label %out

if.end22:                                         ; preds = %if.end6
  %15 = ptrtoint ptr %indata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %indata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %16)
  %cmp23 = icmp ugt i32 %16, 65535
  br i1 %cmp23, label %if.end22.do.end36_crit_edge, label %lor.lhs.false24

if.end22.do.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end36

lor.lhs.false24:                                  ; preds = %if.end22
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %18)
  %cmp26 = icmp ugt i32 %18, 255
  br i1 %cmp26, label %lor.lhs.false24.do.end36_crit_edge, label %lor.lhs.false27

lor.lhs.false24.do.end36_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end36

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %20)
  %cmp29 = icmp ugt i32 %20, 255
  br i1 %cmp29, label %lor.lhs.false27.do.end36_crit_edge, label %if.end39

lor.lhs.false27.do.end36_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end36

do.end36:                                         ; preds = %lor.lhs.false27.do.end36_crit_edge, %lor.lhs.false24.do.end36_crit_edge, %if.end22.do.end36_crit_edge
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #20
  br label %out

if.end39:                                         ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #19
  %conv = trunc i32 %16 to i16
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv, ptr %1, align 2
  %conv42 = trunc i32 %18 to i8
  %22 = ptrtoint ptr %geometry to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv42, ptr %geometry, align 8
  %conv44 = trunc i32 %20 to i8
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv44, ptr %0, align 1
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %6, align 4
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %2, align 4
  %call46 = call i32 @dm_set_geometry(ptr noundef nonnull %12, ptr noundef nonnull %geometry) #17
  %data_size = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 1
  %27 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %data_size, align 4
  br label %out

out:                                              ; preds = %if.end39, %do.end36, %do.end19, %do.end
  %r.0 = phi i32 [ -22, %do.end ], [ -22, %do.end19 ], [ -22, %do.end36 ], [ %call46, %if.end39 ]
  call void @dm_put(ptr noundef nonnull %12) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %find_device.exit.cleanup_crit_edge, %find_device.exit.thread
  %retval.0 = phi i32 [ %r.0, %out ], [ -6, %find_device.exit.cleanup_crit_edge ], [ -6, %find_device.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %indata) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %geometry) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_arm_poll(ptr nocapture noundef readonly %filp, ptr nocapture noundef readnone %param, i32 noundef %param_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @dm_global_event_nr, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dm_global_event_nr to i32))
  %2 = load volatile i32, ptr @dm_global_event_nr, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %2, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_target_version(ptr nocapture noundef readnone %filp, ptr noundef %param, i32 noundef %param_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 9
  %call = tail call fastcc i32 @__list_versions(ptr noundef %param, i32 noundef %param_size, ptr noundef %name)
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @filter_device(ptr nocapture noundef readonly %hc, ptr nocapture noundef readonly %pfx_name, ptr nocapture noundef readonly %pfx_uuid) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.hash_cell, ptr %hc, i32 0, i32 4
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call i32 @strlen(ptr noundef %1) #21
  %call1 = tail call i32 @strnlen(ptr noundef %pfx_name, i32 noundef 128) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %call)
  %cmp = icmp ugt i32 %call1, %call
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr %1, ptr %pfx_name, i32 %call1) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %uuid = getelementptr inbounds %struct.hash_cell, ptr %hc, i32 0, i32 5
  %2 = ptrtoint ptr %uuid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uuid, align 4
  %tobool5.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool5.not, ptr @.str.8, ptr %3
  %call7 = tail call i32 @strlen(ptr noundef nonnull %spec.select) #21
  %call8 = tail call i32 @strnlen(ptr noundef %pfx_uuid, i32 noundef 129) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %call7)
  %cmp9 = icmp ugt i32 %call8, %call7
  br i1 %cmp9, label %if.end4.cleanup_crit_edge, label %if.end11

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %bcmp29 = tail call i32 @bcmp(ptr nonnull %spec.select, ptr %pfx_uuid, i32 %call8) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp29)
  %tobool13.not = icmp eq i32 %bcmp29, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ], [ %tobool13.not, %if.end11 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_event_nr(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dev_status(ptr noundef %md, ptr nocapture noundef %param) unnamed_addr #0 align 64 {
entry:
  %srcu_idx = alloca i32, align 4
  %srcu_idx42 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_disk(ptr noundef %md) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx) #17
  %0 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %srcu_idx, align 4, !annotation !225
  %flags = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, -262180
  store i32 %and, ptr %flags, align 4
  %call1 = tail call i32 @dm_suspended_md(ptr noundef %md) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %or = or i32 %4, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @dm_suspended_internally_md(ptr noundef %md) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or7 = or i32 %6, 262144
  store i32 %or7, ptr %flags, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %call9 = tail call i32 @dm_test_deferred_remove_flag(ptr noundef %md) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.if.end14_crit_edge, label %if.then11

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or13 = or i32 %8, 131072
  store i32 %or13, ptr %flags, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call, align 8
  %shl.i = shl i32 %10, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %12
  %and1.i.i = and i32 %12, 255
  %13 = lshr i32 %or.i, 12
  %shl.i.i = and i32 %13, 1048320
  %and2.i.i = shl i32 %12, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or.i.i = or i32 %shl3.i.i, %and1.i.i
  %or4.i.i = or i32 %or.i.i, %shl.i.i
  %conv.i = zext i32 %or4.i.i to i64
  %dev = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv.i, ptr %dev, align 8
  %call17 = tail call i32 @dm_open_count(ptr noundef %md) #17
  %open_count = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 4
  %15 = ptrtoint ptr %open_count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call17, ptr %open_count, align 8
  %call18 = tail call i32 @dm_get_event_nr(ptr noundef %md) #17
  %event_nr = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 6
  %16 = ptrtoint ptr %event_nr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call18, ptr %event_nr, align 8
  %target_count = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 3
  %17 = ptrtoint ptr %target_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %target_count, align 4
  %call19 = call ptr @dm_get_live_table(ptr noundef %md, ptr noundef nonnull %srcu_idx) #17
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end14.if.end37_crit_edge, label %if.then21

if.end14.if.end37_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

if.then21:                                        ; preds = %if.end14
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and23 = and i32 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %if.then21.if.end34_crit_edge

if.then21.if.end34_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then25:                                        ; preds = %if.then21
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %call, i32 0, i32 7
  %20 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %part0.i, align 4
  %bd_read_only.i = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %bd_read_only.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bd_read_only.i, align 8, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %get_disk_ro.exit, label %if.then25.if.then28_crit_edge

if.then25.if.then28_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then28

get_disk_ro.exit:                                 ; preds = %if.then25
  %state.i = getelementptr inbounds %struct.gendisk, ptr %call, i32 0, i32 12
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool27.not = icmp eq i32 %26, 0
  br i1 %tobool27.not, label %get_disk_ro.exit.if.end31_crit_edge, label %get_disk_ro.exit.if.then28_crit_edge

get_disk_ro.exit.if.then28_crit_edge:             ; preds = %get_disk_ro.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then28

get_disk_ro.exit.if.end31_crit_edge:              ; preds = %get_disk_ro.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then28:                                        ; preds = %get_disk_ro.exit.if.then28_crit_edge, %if.then25.if.then28_crit_edge
  %or30 = or i32 %19, 1
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or30, ptr %flags, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %get_disk_ro.exit.if.end31_crit_edge
  %call32 = call i32 @dm_table_get_num_targets(ptr noundef nonnull %call19) #17
  %28 = ptrtoint ptr %target_count to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call32, ptr %target_count, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %if.then21.if.end34_crit_edge
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %or36 = or i32 %30, 32
  store i32 %or36, ptr %flags, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end34, %if.end14.if.end37_crit_edge
  %31 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %srcu_idx, align 4
  call void @dm_put_live_table(ptr noundef %md, i32 noundef %32) #17
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %and39 = and i32 %34, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end37.if.end56_crit_edge, label %if.then41

if.end37.if.end56_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56

if.then41:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx42) #17
  %35 = ptrtoint ptr %srcu_idx42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %srcu_idx42, align 4, !annotation !225
  %call.i = call ptr @dm_get_live_table(ptr noundef %md, ptr noundef nonnull %srcu_idx42) #17
  call void @down_read(ptr noundef nonnull @_hash_lock) #17
  %call1.i = call ptr @dm_get_mdptr(ptr noundef %md) #17
  %tobool.not.i85 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i85, label %if.then41.dm_get_inactive_table.exit.thread_crit_edge, label %lor.lhs.false.i

if.then41.dm_get_inactive_table.exit.thread_crit_edge: ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #19
  br label %dm_get_inactive_table.exit.thread

lor.lhs.false.i:                                  ; preds = %if.then41
  %md2.i = getelementptr inbounds %struct.hash_cell, ptr %call1.i, i32 0, i32 6
  %36 = ptrtoint ptr %md2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %md2.i, align 4
  %cmp.not.i = icmp eq ptr %37, %md
  br i1 %cmp.not.i, label %dm_get_inactive_table.exit, label %lor.lhs.false.i.dm_get_inactive_table.exit.thread_crit_edge

lor.lhs.false.i.dm_get_inactive_table.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dm_get_inactive_table.exit.thread

dm_get_inactive_table.exit.thread:                ; preds = %lor.lhs.false.i.dm_get_inactive_table.exit.thread_crit_edge, %if.then41.dm_get_inactive_table.exit.thread_crit_edge
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #20
  call void @up_read(ptr noundef nonnull @_hash_lock) #17
  br label %if.end55

dm_get_inactive_table.exit:                       ; preds = %lor.lhs.false.i
  %new_map.i = getelementptr inbounds %struct.hash_cell, ptr %call1.i, i32 0, i32 7
  %38 = ptrtoint ptr %new_map.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %new_map.i, align 4
  call void @up_read(ptr noundef nonnull @_hash_lock) #17
  %tobool44.not = icmp eq ptr %39, null
  br i1 %tobool44.not, label %dm_get_inactive_table.exit.if.end55_crit_edge, label %if.then45

dm_get_inactive_table.exit.if.end55_crit_edge:    ; preds = %dm_get_inactive_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end55

if.then45:                                        ; preds = %dm_get_inactive_table.exit
  %call46 = call i32 @dm_table_get_mode(ptr noundef nonnull %39) #17
  %and47 = and i32 %call46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then49, label %if.then45.if.end52_crit_edge

if.then45.if.end52_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

if.then49:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %or51 = or i32 %41, 1
  store i32 %or51, ptr %flags, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.then45.if.end52_crit_edge
  %call53 = call i32 @dm_table_get_num_targets(ptr noundef nonnull %39) #17
  %42 = ptrtoint ptr %target_count to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call53, ptr %target_count, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end52, %dm_get_inactive_table.exit.if.end55_crit_edge, %dm_get_inactive_table.exit.thread
  %43 = ptrtoint ptr %srcu_idx42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %srcu_idx42, align 4
  call void @dm_put_live_table(ptr noundef %md, i32 noundef %44) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx42) #17
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end37.if.end56_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_suspended_md(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_suspended_internally_md(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_test_deferred_remove_flag(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_open_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_get_live_table(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_num_targets(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_live_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__find_device_hash_cell(ptr noundef %param) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %uuid = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 10
  %0 = ptrtoint ptr %uuid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %uuid, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %name10 = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 9
  %2 = ptrtoint ptr %name10 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %name10, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool12.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool12.not, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %dev = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool3.not = icmp eq i64 %5, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %n.015.i = load ptr, ptr @uuid_rb_tree, align 4
  %tobool.not16.i = icmp eq ptr %n.015.i, null
  br i1 %tobool.not16.i, label %if.end.cleanup_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %n.017.i = phi ptr [ %n.0.i, %cleanup.i.while.body.i_crit_edge ], [ %n.015.i, %if.end.while.body.i_crit_edge ]
  %uuid.i = getelementptr i8, ptr %n.017.i, i32 20
  %6 = ptrtoint ptr %uuid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uuid.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef %uuid) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %__get_uuid_cell.exit, label %cleanup.i

cleanup.i:                                        ; preds = %while.body.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.017.i, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.017.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp13.i = icmp slt i32 %call.i, 0
  %cond.in.i = select i1 %cmp13.i, ptr %rb_right.i, ptr %rb_left.i
  %8 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %n.0.i = load ptr, ptr %cond.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.cleanup_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

__get_uuid_cell.exit:                             ; preds = %while.body.i
  %add.ptr.i = getelementptr i8, ptr %n.017.i, i32 -12
  %md.i = getelementptr i8, ptr %n.017.i, i32 24
  %9 = ptrtoint ptr %md.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %md.i, align 4
  tail call void @dm_get(ptr noundef %10) #17
  %tobool7.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool7.not, label %__get_uuid_cell.exit.cleanup_crit_edge, label %__get_uuid_cell.exit.if.end36_crit_edge

__get_uuid_cell.exit.if.end36_crit_edge:          ; preds = %__get_uuid_cell.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

__get_uuid_cell.exit.cleanup_crit_edge:           ; preds = %__get_uuid_cell.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %entry
  %dev25 = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 8
  %11 = ptrtoint ptr %dev25 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %dev25, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool26.not = icmp eq i64 %12, 0
  br i1 %tobool12.not, label %if.else24, label %if.then13

if.then13:                                        ; preds = %if.else
  br i1 %tobool26.not, label %if.end17, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end17:                                         ; preds = %if.then13
  %n.016.i = load ptr, ptr @name_rb_tree, align 4
  %tobool.not17.i = icmp eq ptr %n.016.i, null
  br i1 %tobool.not17.i, label %if.end17.cleanup_crit_edge, label %if.end17.while.body.i79_crit_edge

if.end17.while.body.i79_crit_edge:                ; preds = %if.end17
  br label %while.body.i79

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

while.body.i79:                                   ; preds = %cleanup.i88.while.body.i79_crit_edge, %if.end17.while.body.i79_crit_edge
  %n.018.i = phi ptr [ %n.0.i86, %cleanup.i88.while.body.i79_crit_edge ], [ %n.016.i, %if.end17.while.body.i79_crit_edge ]
  %name.i = getelementptr inbounds %struct.hash_cell, ptr %n.018.i, i32 0, i32 4
  %13 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name.i, align 4
  %call.i77 = tail call i32 @strcmp(ptr noundef %14, ptr noundef %name10) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool1.not.i78 = icmp eq i32 %call.i77, 0
  br i1 %tobool1.not.i78, label %__get_name_cell.exit, label %cleanup.i88

cleanup.i88:                                      ; preds = %while.body.i79
  %rb_left.i82 = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 2
  %rb_right.i83 = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp13.i84 = icmp slt i32 %call.i77, 0
  %cond.in.i85 = select i1 %cmp13.i84, ptr %rb_right.i83, ptr %rb_left.i82
  %15 = ptrtoint ptr %cond.in.i85 to i32
  call void @__asan_load4_noabort(i32 %15)
  %n.0.i86 = load ptr, ptr %cond.in.i85, align 4
  %tobool.not.i87 = icmp eq ptr %n.0.i86, null
  br i1 %tobool.not.i87, label %cleanup.i88.cleanup_crit_edge, label %cleanup.i88.while.body.i79_crit_edge

cleanup.i88.while.body.i79_crit_edge:             ; preds = %cleanup.i88
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i79

cleanup.i88.cleanup_crit_edge:                    ; preds = %cleanup.i88
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

__get_name_cell.exit:                             ; preds = %while.body.i79
  call void @__sanitizer_cov_trace_pc() #19
  %md.i80 = getelementptr inbounds %struct.hash_cell, ptr %n.018.i, i32 0, i32 6
  %16 = ptrtoint ptr %md.i80 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %md.i80, align 4
  tail call void @dm_get(ptr noundef %17) #17
  br label %if.end36

if.else24:                                        ; preds = %if.else
  br i1 %tobool26.not, label %if.else24.cleanup_crit_edge, label %if.then27

if.else24.cleanup_crit_edge:                      ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then27:                                        ; preds = %if.else24
  %conv.i.i = trunc i64 %12 to i32
  %and1.i.i.i = and i32 %conv.i.i, 255
  %shr2.i.i.i = lshr i32 %conv.i.i, 12
  %and3.i.i.i = and i32 %shr2.i.i.i, 1048320
  %or.i.i.i = or i32 %and3.i.i.i, %and1.i.i.i
  %18 = shl i32 %conv.i.i, 12
  %shl.i.i.i = and i32 %18, -1048576
  %or4.i.i.i = or i32 %or.i.i.i, %shl.i.i.i
  %call1.i = tail call ptr @dm_get_md(i32 noundef %or4.i.i.i) #17
  %tobool.not.i90 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i90, label %if.then27.cleanup_crit_edge, label %if.end.i

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %if.then27
  %call2.i = tail call ptr @dm_get_mdptr(ptr noundef nonnull %call1.i) #17
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end36_crit_edge

if.end.i.if.end36_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dm_put(ptr noundef nonnull %call1.i) #17
  br label %cleanup

if.end36:                                         ; preds = %if.end.i.if.end36_crit_edge, %__get_name_cell.exit, %__get_uuid_cell.exit.if.end36_crit_edge
  %hc.0 = phi ptr [ %add.ptr.i, %__get_uuid_cell.exit.if.end36_crit_edge ], [ %n.018.i, %__get_name_cell.exit ], [ %call2.i, %if.end.i.if.end36_crit_edge ]
  %name37 = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 9
  %name39 = getelementptr inbounds %struct.hash_cell, ptr %hc.0, i32 0, i32 4
  %19 = ptrtoint ptr %name39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name39, align 4
  %call40 = tail call i32 @strlcpy(ptr noundef %name37, ptr noundef %20, i32 noundef 128) #17
  %uuid41 = getelementptr inbounds %struct.hash_cell, ptr %hc.0, i32 0, i32 5
  %21 = ptrtoint ptr %uuid41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %uuid41, align 4
  %tobool42.not = icmp eq ptr %22, null
  br i1 %tobool42.not, label %if.else48, label %if.then43

if.then43:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  %call47 = tail call i32 @strlcpy(ptr noundef %uuid, ptr noundef nonnull %22, i32 noundef 129) #17
  br label %if.end50

if.else48:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %uuid to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %uuid, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then43
  %new_map = getelementptr inbounds %struct.hash_cell, ptr %hc.0, i32 0, i32 7
  %24 = ptrtoint ptr %new_map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %new_map, align 4
  %tobool51.not = icmp eq ptr %25, null
  %flags54 = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %26 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags54, align 4
  br i1 %tobool51.not, label %if.else53, label %if.then52

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #19
  %or = or i32 %27, 64
  %28 = ptrtoint ptr %flags54 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or, ptr %flags54, align 4
  br label %cleanup

if.else53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #19
  %and = and i32 %27, -65
  %29 = ptrtoint ptr %flags54 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and, ptr %flags54, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else53, %if.then52, %if.then4.i, %if.then27.cleanup_crit_edge, %if.else24.cleanup_crit_edge, %cleanup.i88.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %__get_uuid_cell.exit.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.then.cleanup_crit_edge ], [ null, %__get_uuid_cell.exit.cleanup_crit_edge ], [ null, %if.then13.cleanup_crit_edge ], [ null, %if.else24.cleanup_crit_edge ], [ %hc.0, %if.else53 ], [ %hc.0, %if.then52 ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end17.cleanup_crit_edge ], [ null, %if.then4.i ], [ null, %if.then27.cleanup_crit_edge ], [ null, %cleanup.i88.cleanup_crit_edge ], [ null, %cleanup.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_kobject_uevent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_get_md(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_event(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_ima_measure_on_device_rename(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_resume(ptr noundef %param) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @_hash_lock) #17
  %call = tail call fastcc ptr @__find_device_hash_cell(ptr noundef %param)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_resume.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_resume, %land.lhs.true)) #17
          to label %do.end [label %land.lhs.true], !srcloc !238

land.lhs.true:                                    ; preds = %do.body
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @do_resume._rs, ptr noundef nonnull @.str.55) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %if.then7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_resume.descriptor, ptr noundef nonnull @.str.38) #17
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true.do.end_crit_edge, %do.body
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #17
  br label %cleanup

if.end8:                                          ; preds = %entry
  %md9 = getelementptr inbounds %struct.hash_cell, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %md9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %md9, align 4
  %new_map10 = getelementptr inbounds %struct.hash_cell, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %new_map10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %new_map10, align 4
  store ptr null, ptr %new_map10, align 4
  %flags = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, -65
  store i32 %and, ptr %flags, align 4
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #17
  %tobool12 = icmp ne ptr %3, null
  br i1 %tobool12, label %if.then13, label %if.end8.if.end42_crit_edge

if.end8.if.end42_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42

if.then13:                                        ; preds = %if.end8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %call25 = tail call i32 @dm_suspended_md(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.then13.if.end29_crit_edge

if.then13.if.end29_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then27:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #19
  %and15 = lshr i32 %7, 10
  %8 = and i32 %and15, 3
  %9 = xor i32 %8, 1
  %call28 = tail call i32 @dm_suspend(ptr noundef %1, i32 noundef %9) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then13.if.end29_crit_edge
  %call30 = tail call ptr @dm_swap_table(ptr noundef %1, ptr noundef nonnull %3) #17
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dm_sync_table(ptr noundef %1) #17
  tail call void @dm_table_destroy(ptr noundef nonnull %3) #17
  tail call void @dm_put(ptr noundef %1) #17
  %10 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  %call35 = tail call i32 @dm_table_get_mode(ptr noundef nonnull %3) #17
  %and36 = and i32 %call35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %call40 = tail call ptr @dm_disk(ptr noundef %1) #17
  tail call void @set_disk_ro(ptr noundef %call40, i1 noundef zeroext %tobool37.not) #17
  br label %if.end42

if.end42:                                         ; preds = %if.end34, %if.end8.if.end42_crit_edge
  %old_map.0 = phi ptr [ null, %if.end8.if.end42_crit_edge ], [ %call30, %if.end34 ]
  %call43 = tail call i32 @dm_suspended_md(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end42.if.end58_crit_edge, label %if.then45

if.end42.if.end58_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58

if.then45:                                        ; preds = %if.end42
  %call46 = tail call i32 @dm_resume(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %if.then45.if.end58_crit_edge

if.then45.if.end58_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58

if.then48:                                        ; preds = %if.then45
  tail call void @dm_ima_measure_on_device_resume(ptr noundef %1, i1 noundef zeroext %tobool12) #17
  %event_nr = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 6
  %11 = ptrtoint ptr %event_nr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %event_nr, align 8
  %call51 = tail call i32 @dm_kobject_uevent(ptr noundef %1, i32 noundef 2, i32 noundef %12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %if.then48.if.end58_crit_edge

if.then48.if.end58_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58

if.then53:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %or55 = or i32 %14, 8192
  store i32 %or55, ptr %flags, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.then48.if.end58_crit_edge, %if.then45.if.end58_crit_edge, %if.end42.if.end58_crit_edge
  %r.0 = phi i32 [ %call46, %if.then45.if.end58_crit_edge ], [ 0, %if.then48.if.end58_crit_edge ], [ 0, %if.then53 ], [ 0, %if.end42.if.end58_crit_edge ]
  %tobool59.not = icmp eq ptr %old_map.0, null
  br i1 %tobool59.not, label %if.end58.if.end61_crit_edge, label %if.then60

if.end58.if.end61_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end61

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dm_table_destroy(ptr noundef nonnull %old_map.0) #17
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end58.if.end61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool62.not = icmp eq i32 %r.0, 0
  br i1 %tobool62.not, label %if.then63, label %if.end61.if.end64_crit_edge

if.end61.if.end64_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @__dev_status(ptr noundef %1, ptr noundef %param)
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end61.if.end64_crit_edge
  tail call void @dm_put(ptr noundef %1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then32, %do.end
  %retval.0 = phi i32 [ %10, %if.then32 ], [ %r.0, %if.end64 ], [ -6, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_ima_measure_on_device_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_wait_event(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @retrieve_status(ptr noundef %table, ptr noundef %param, i32 noundef %param_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.dm_ioctl, ptr %param, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  %add.i.i.i = add i32 %0, 7
  %and.i.i.i = and i32 %add.i.i.i, -8
  %sub.ptr.rhs.cast.i = ptrtoint ptr %param to i32
  %sub.ptr.sub.i = sub i32 %and.i.i.i, %sub.ptr.rhs.cast.i
  %data_start.i = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 2
  %1 = ptrtoint ptr %data_start.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sub.ptr.sub.i, ptr %data_start.i, align 8
  %2 = tail call i32 @llvm.usub.sat.i32(i32 %param_size, i32 %sub.ptr.sub.i) #17
  %flags = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = lshr i32 %4, 18
  %5 = and i32 %and2, 2
  %type.0 = select i1 %tobool.not, i32 %5, i32 1
  %call7 = tail call i32 @dm_table_get_num_targets(ptr noundef %table) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp109.not = icmp eq i32 %call7, 0
  br i1 %cmp109.not, label %entry.if.end57_crit_edge, label %for.body.lr.ph

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr4.i = getelementptr i8, ptr %param, i32 %sub.ptr.sub.i
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr4.i to i32
  %sub.ptr.sub.neg = add i32 %2, %sub.ptr.rhs.cast
  %call8123 = tail call ptr @dm_table_get_target(ptr noundef %table, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %2)
  %cmp9125 = icmp ult i32 %2, 41
  br i1 %cmp9125, label %for.body.lr.ph.for.end.sink.split_crit_edge, label %for.body.lr.ph.if.end12_crit_edge

for.body.lr.ph.if.end12_crit_edge:                ; preds = %for.body.lr.ph
  br label %if.end12

for.body.lr.ph.for.end.sink.split_crit_edge:      ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.sink.split

for.body:                                         ; preds = %for.inc
  %6 = inttoptr i32 %and.i.i to ptr
  %call8 = tail call ptr @dm_table_get_target(ptr noundef %table, i32 noundef %inc) #17
  %sub = sub i32 %sub.ptr.sub.neg, %and.i.i
  %cmp9 = icmp ult i32 %sub, 41
  br i1 %cmp9, label %for.body.for.end.sink.split_crit_edge, label %for.body.if.end12_crit_edge

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

for.body.for.end.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.sink.split

if.end12:                                         ; preds = %for.body.if.end12_crit_edge, %for.body.lr.ph.if.end12_crit_edge
  %call8130 = phi ptr [ %call8, %for.body.if.end12_crit_edge ], [ %call8123, %for.body.lr.ph.if.end12_crit_edge ]
  %i.0110129 = phi i32 [ %inc, %for.body.if.end12_crit_edge ], [ 0, %for.body.lr.ph.if.end12_crit_edge ]
  %outptr.0111128 = phi ptr [ %6, %for.body.if.end12_crit_edge ], [ %add.ptr4.i, %for.body.lr.ph.if.end12_crit_edge ]
  %used.0112127 = phi i32 [ %add49, %for.body.if.end12_crit_edge ], [ 0, %for.body.lr.ph.if.end12_crit_edge ]
  %status_flags.0113126 = phi i32 [ %status_flags.2, %for.body.if.end12_crit_edge ], [ 0, %for.body.lr.ph.if.end12_crit_edge ]
  %status = getelementptr inbounds %struct.dm_target_spec, ptr %outptr.0111128, i32 0, i32 2
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %status, align 8
  %begin = getelementptr inbounds %struct.dm_target, ptr %call8130, i32 0, i32 2
  %8 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %begin, align 8
  %10 = ptrtoint ptr %outptr.0111128 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %outptr.0111128, align 8
  %len13 = getelementptr inbounds %struct.dm_target, ptr %call8130, i32 0, i32 3
  %11 = ptrtoint ptr %len13 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %len13, align 8
  %length = getelementptr inbounds %struct.dm_target_spec, ptr %outptr.0111128, i32 0, i32 1
  %13 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %length, align 8
  %target_type = getelementptr inbounds %struct.dm_target_spec, ptr %outptr.0111128, i32 0, i32 4
  %type14 = getelementptr inbounds %struct.dm_target, ptr %call8130, i32 0, i32 1
  %14 = ptrtoint ptr %type14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type14, align 4
  %name = getelementptr inbounds %struct.target_type, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 8
  %call15 = tail call ptr @strncpy(ptr noundef %target_type, ptr noundef %17, i32 noundef 15)
  %add.ptr = getelementptr i8, ptr %outptr.0111128, i32 40
  %sub.ptr.lhs.cast16 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub18.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast16
  %sub19 = add i32 %sub.ptr.sub18.neg, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19)
  %cmp20 = icmp eq i32 %sub19, 0
  br i1 %cmp20, label %if.end12.for.end.sink.split_crit_edge, label %if.end24

if.end12.for.end.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.sink.split

if.end24:                                         ; preds = %if.end12
  %18 = ptrtoint ptr %type14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %type14, align 4
  %status26 = getelementptr inbounds %struct.target_type, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %status26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %status26, align 4
  %tobool27.not = icmp eq ptr %21, null
  br i1 %tobool27.not, label %if.else37, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and30 = lshr i32 %23, 11
  %24 = and i32 %and30, 1
  %25 = or i32 %24, %status_flags.0113126
  tail call void %21(ptr noundef %call8130, i32 noundef %type.0, i32 noundef %25, ptr noundef %add.ptr, i32 noundef %sub19) #17
  br label %if.end38

if.else37:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %add.ptr, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %if.then28
  %status_flags.2 = phi i32 [ %25, %if.then28 ], [ %status_flags.0113126, %if.else37 ]
  %call39 = tail call i32 @strlen(ptr noundef %add.ptr) #21
  %add = add i32 %call39, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub19)
  %cmp40 = icmp eq i32 %add, %sub19
  br i1 %cmp40, label %if.end38.for.end.sink.split_crit_edge, label %for.inc

if.end38.for.end.sink.split_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.sink.split

for.inc:                                          ; preds = %if.end38
  %add.ptr45 = getelementptr i8, ptr %add.ptr, i32 %add
  %27 = ptrtoint ptr %data_start.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_start.i, align 8
  %sub.ptr.lhs.cast46 = ptrtoint ptr %add.ptr45 to i32
  %sub.ptr.sub48 = sub i32 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast
  %add49 = add i32 %sub.ptr.sub48, %28
  %add.i.i = add i32 %sub.ptr.lhs.cast46, 7
  %and.i.i = and i32 %add.i.i, -8
  %sub.ptr.sub53 = sub i32 %and.i.i, %sub.ptr.rhs.cast
  %next = getelementptr inbounds %struct.dm_target_spec, ptr %outptr.0111128, i32 0, i32 3
  %29 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub.ptr.sub53, ptr %next, align 4
  %inc = add nuw i32 %i.0110129, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %call7)
  %exitcond.not = icmp eq i32 %inc, %call7
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end.sink.split:                               ; preds = %if.end38.for.end.sink.split_crit_edge, %if.end12.for.end.sink.split_crit_edge, %for.body.for.end.sink.split_crit_edge, %for.body.lr.ph.for.end.sink.split_crit_edge
  %used.0112.lcssa = phi i32 [ 0, %for.body.lr.ph.for.end.sink.split_crit_edge ], [ %add49, %for.body.for.end.sink.split_crit_edge ], [ %used.0112127, %if.end12.for.end.sink.split_crit_edge ], [ %used.0112127, %if.end38.for.end.sink.split_crit_edge ]
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %or43 = or i32 %31, 256
  store i32 %or43, ptr %flags, align 4
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %for.inc.for.end_crit_edge
  %used.0108 = phi i32 [ %used.0112.lcssa, %for.end.sink.split ], [ %add49, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %used.0108)
  %tobool55.not = icmp eq i32 %used.0108, 0
  br i1 %tobool55.not, label %for.end.if.end57_crit_edge, label %if.then56

for.end.if.end57_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57

if.then56:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %data_size = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 1
  %32 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %used.0108, ptr %data_size, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %for.end.if.end57_crit_edge, %entry.if.end57_crit_edge
  %target_count = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 3
  %33 = ptrtoint ptr %target_count to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call7, ptr %target_count, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_target(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_lock_md_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_ima_measure_on_table_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_get_immutable_target_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_immutable_target_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_wildcard_target(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_md_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unlock_md_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_ima_measure_on_table_clear(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_devices(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__list_versions(ptr noundef %param, i32 noundef %param_size, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  %needed = alloca i32, align 4
  %iter_info = alloca %struct.vers_iter, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needed) #17
  %0 = ptrtoint ptr %needed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %needed, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %iter_info) #17
  %1 = getelementptr inbounds %struct.vers_iter, ptr %iter_info, i32 0, i32 1
  %2 = getelementptr inbounds %struct.vers_iter, ptr %iter_info, i32 0, i32 2
  %3 = getelementptr inbounds %struct.vers_iter, ptr %iter_info, i32 0, i32 3
  %4 = getelementptr inbounds %struct.vers_iter, ptr %iter_info, i32 0, i32 4
  %tobool.not = icmp eq ptr %name, null
  %5 = call ptr @memset(ptr %iter_info, i32 255, i32 20)
  br i1 %tobool.not, label %if.then5, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @dm_get_target_type(ptr noundef nonnull %name) #17
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.else

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call6 = call i32 @dm_target_iterate(ptr noundef nonnull @list_version_get_needed, ptr noundef nonnull %needed) #17
  br label %if.end7

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %needed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %needed, align 4
  %name.i = getelementptr inbounds %struct.target_type, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i, align 8
  %call.i = tail call i32 @strlen(ptr noundef %9) #22
  %add1.i = add i32 %7, 23
  %add2.i = add i32 %add1.i, %call.i
  %10 = ptrtoint ptr %needed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add2.i, ptr %needed, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %tt.052 = phi ptr [ %call, %if.else ], [ null, %if.then5 ]
  %add.ptr.i = getelementptr %struct.dm_ioctl, ptr %param, i32 1
  %11 = ptrtoint ptr %add.ptr.i to i32
  %add.i.i.i = add i32 %11, 7
  %and.i.i.i = and i32 %add.i.i.i, -8
  %sub.ptr.rhs.cast.i = ptrtoint ptr %param to i32
  %sub.ptr.sub.i = sub i32 %and.i.i.i, %sub.ptr.rhs.cast.i
  %data_start.i = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 2
  %12 = ptrtoint ptr %data_start.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.ptr.sub.i, ptr %data_start.i, align 8
  %13 = call i32 @llvm.usub.sat.i32(i32 %param_size, i32 %sub.ptr.sub.i) #17
  %add.ptr4.i = getelementptr i8, ptr %param, i32 %sub.ptr.sub.i
  %14 = ptrtoint ptr %needed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %needed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp = icmp ult i32 %13, %15
  br i1 %cmp, label %if.end7.out_crit_edge, label %if.end10

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end10:                                         ; preds = %if.end7
  %add = add i32 %15, %sub.ptr.sub.i
  %data_size = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 1
  %16 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %data_size, align 4
  %17 = ptrtoint ptr %iter_info to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %param_size, ptr %iter_info, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %2, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr4.i, ptr %1, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %4, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr4.i, i32 %13
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %3, align 4
  br i1 %tobool.not, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %call16 = call i32 @dm_target_iterate(ptr noundef nonnull @list_version_get_info, ptr noundef nonnull %iter_info) #17
  br label %if.end18

if.else17:                                        ; preds = %if.end10
  %add.ptr.i42 = getelementptr i8, ptr %add.ptr4.i, i32 12
  %name.i43 = getelementptr inbounds %struct.target_type, ptr %tt.052, i32 0, i32 1
  %22 = ptrtoint ptr %name.i43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i43, align 8
  %call.i44 = call i32 @strlen(ptr noundef %23) #22
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i42, i32 %call.i44
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 1
  %cmp.i = icmp ugt ptr %add.ptr2.i, %add.ptr
  br i1 %cmp.i, label %if.then.i, label %if.end7.i

if.then.i:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #19
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 256, ptr %4, align 4
  br label %if.end18

if.end7.i:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #19
  %version.i = getelementptr inbounds %struct.target_type, ptr %tt.052, i32 0, i32 3
  %25 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %version.i, align 8
  %version9.i = getelementptr inbounds %struct.dm_target_versions, ptr %add.ptr4.i, i32 0, i32 1
  %27 = ptrtoint ptr %version9.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %version9.i, align 4
  %arrayidx12.i = getelementptr %struct.target_type, ptr %tt.052, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx12.i, align 4
  %arrayidx15.i = getelementptr %struct.dm_target_versions, ptr %add.ptr4.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr %struct.target_type, ptr %tt.052, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx17.i, align 8
  %33 = ptrtoint ptr %add.ptr.i42 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %add.ptr.i42, align 4
  %34 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %add.ptr4.i, align 4
  %name24.i = getelementptr %struct.dm_target_versions, ptr %add.ptr4.i, i32 0, i32 2
  %35 = ptrtoint ptr %name.i43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name.i43, align 8
  %call26.i = call ptr @strcpy(ptr noundef %name24.i, ptr noundef %36) #22
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr4.i, ptr %2, align 4
  %38 = ptrtoint ptr %name.i43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name.i43, align 8
  %call31.i = call i32 @strlen(ptr noundef %39) #22
  %add.ptr32.i = getelementptr i8, ptr %name24.i, i32 %call31.i
  %add.ptr33.i = getelementptr i8, ptr %add.ptr32.i, i32 1
  %40 = ptrtoint ptr %add.ptr33.i to i32
  %add.i.i.i47 = add i32 %40, 7
  %and.i.i.i48 = and i32 %add.i.i.i47, -8
  %41 = inttoptr i32 %and.i.i.i48 to ptr
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %1, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end7.i, %if.then.i, %if.then15
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %4, align 4
  br label %out

out:                                              ; preds = %if.end18, %if.end7.out_crit_edge
  %.sink56 = phi i32 [ %44, %if.end18 ], [ 256, %if.end7.out_crit_edge ]
  %flags20 = getelementptr inbounds %struct.dm_ioctl, ptr %param, i32 0, i32 5
  %45 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags20, align 4
  %or21 = or i32 %46, %.sink56
  store i32 %or21, ptr %flags20, align 4
  br i1 %tobool.not, label %out.cleanup_crit_edge, label %if.then23

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then23:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  call void @dm_put_target_type(ptr noundef nonnull %tt.052) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %out.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %iter_info) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needed) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_get_target_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_target_iterate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @list_version_get_needed(ptr nocapture noundef readonly %tt, ptr nocapture noundef %needed_param) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %needed_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %needed_param, align 4
  %add = add i32 %1, 16
  store i32 %add, ptr %needed_param, align 4
  %name = getelementptr inbounds %struct.target_type, ptr %tt, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %call = tail call i32 @strlen(ptr noundef %3) #21
  %add1 = add i32 %1, 23
  %add2 = add i32 %add1, %call
  %4 = ptrtoint ptr %needed_param to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add2, ptr %needed_param, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @list_version_get_info(ptr nocapture noundef readonly %tt, ptr nocapture noundef %param) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %vers = getelementptr inbounds %struct.vers_iter, ptr %param, i32 0, i32 1
  %0 = ptrtoint ptr %vers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vers, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %name = getelementptr inbounds %struct.target_type, ptr %tt, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %call = tail call i32 @strlen(ptr noundef %3) #21
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %call
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 1
  %end = getelementptr inbounds %struct.vers_iter, ptr %param, i32 0, i32 3
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.vers_iter, ptr %param, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 256, ptr %flags, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %old_vers = getelementptr inbounds %struct.vers_iter, ptr %param, i32 0, i32 2
  %7 = ptrtoint ptr %old_vers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %old_vers, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.ptr.sub, ptr %8, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %version = getelementptr inbounds %struct.target_type, ptr %tt, i32 0, i32 3
  %10 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %version, align 8
  %12 = ptrtoint ptr %vers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vers, align 4
  %version9 = getelementptr inbounds %struct.dm_target_versions, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %version9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %version9, align 4
  %arrayidx12 = getelementptr %struct.target_type, ptr %tt, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx12, align 4
  %17 = load ptr, ptr %vers, align 4
  %arrayidx15 = getelementptr %struct.dm_target_versions, ptr %17, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %arrayidx15, align 4
  %arrayidx17 = getelementptr %struct.target_type, ptr %tt, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx17, align 8
  %21 = load ptr, ptr %vers, align 4
  %arrayidx20 = getelementptr %struct.dm_target_versions, ptr %21, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %arrayidx20, align 4
  %23 = load ptr, ptr %vers, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %23, align 4
  %25 = load ptr, ptr %vers, align 4
  %name24 = getelementptr inbounds %struct.dm_target_versions, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 8
  %call26 = tail call ptr @strcpy(ptr noundef %name24, ptr noundef %27) #21
  %28 = ptrtoint ptr %vers to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vers, align 4
  %30 = ptrtoint ptr %old_vers to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %old_vers, align 4
  %incdec.ptr = getelementptr %struct.dm_target_versions, ptr %29, i32 1
  store ptr %incdec.ptr, ptr %vers, align 4
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 8
  %call31 = tail call i32 @strlen(ptr noundef %32) #21
  %add.ptr32 = getelementptr i8, ptr %incdec.ptr, i32 %call31
  %add.ptr33 = getelementptr i8, ptr %add.ptr32, i32 1
  %33 = ptrtoint ptr %add.ptr33 to i32
  %add.i.i = add i32 %33, 7
  %and.i.i = and i32 %add.i.i, -8
  %34 = inttoptr i32 %and.i.i to ptr
  %35 = ptrtoint ptr %vers to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %vers, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_target_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_split_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_deleting_md(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_find_target(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cancel_deferred_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_stats_message(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_set_geometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_set_mdptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nobuiltin }
attributes #22 = { nobuiltin nounwind }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { nounwind readnone }
attributes #25 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97, !98, !100, !101, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !128, !129, !130, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !186, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213}
!llvm.named.register.sp = !{!214}
!llvm.module.flags = !{!215, !216, !217, !218, !219, !220, !221, !222}
!llvm.ident = !{!223}

!0 = !{ptr @__UNIQUE_ID_alias347, !1, !"__UNIQUE_ID_alias347", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-ioctl.c", i32 2076, i32 1}
!2 = !{ptr @__UNIQUE_ID_alias348, !3, !"__UNIQUE_ID_alias348", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-ioctl.c", i32 2077, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-ioctl.c", i32 2088, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dm_interface_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @dm_interface_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-ioctl.c", i32 2092, i32 2}
!12 = !{ptr @dm_interface_init._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @dm_interface_init._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/md/dm-ioctl.c", i32 2128, i32 29}
!18 = !{ptr @__ksymtab_dm_copy_name_and_uuid, !19, !"__ksymtab_dm_copy_name_and_uuid", i1 false, i1 false}
!19 = !{!"../drivers/md/dm-ioctl.c", i32 2135, i32 1}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/md/dm-ioctl.c", i32 2195, i32 4}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @dm_early_create._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @dm_early_create._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-ioctl.c", i32 2208, i32 3}
!27 = !{ptr @dm_early_create._entry.11, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @dm_early_create._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/md/dm-ioctl.c", i32 2226, i32 2}
!31 = !{ptr @dm_early_create._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @dm_early_create._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/md/dm-ioctl.c", i32 370, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @dm_hash_remove_all._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @dm_hash_remove_all._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/md/dm-ioctl.c", i32 68, i32 8}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @_hash_lock, !39, !"_hash_lock", i1 false, i1 false}
!42 = !{ptr @name_rb_tree, !43, !"name_rb_tree", i1 false, i1 false}
!43 = !{!"../drivers/md/dm-ioctl.c", i32 60, i32 23}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/md/dm-ioctl.c", i32 2071, i32 13}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/md/dm-ioctl.c", i32 2072, i32 14}
!48 = !{ptr @_dm_misc, !49, !"_dm_misc", i1 false, i1 false}
!49 = !{!"../drivers/md/dm-ioctl.c", i32 2069, i32 26}
!50 = !{ptr @_ctl_fops, !51, !"_ctl_fops", i1 false, i1 false}
!51 = !{!"../drivers/md/dm-ioctl.c", i32 2059, i32 37}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/md/dm-ioctl.c", i32 1970, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ctl_ioctl._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ctl_ioctl._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/md/dm-ioctl.c", i32 1992, i32 3}
!59 = !{ptr @ctl_ioctl._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ctl_ioctl._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/dm-ioctl.c", i32 1809, i32 3}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @check_version._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @check_version._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!73 = !{ptr @lookup_ioctl._ioctls, !74, !"_ioctls", i1 false, i1 false}
!74 = !{!"../drivers/md/dm-ioctl.c", i32 1763, i32 4}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/md/dm-ioctl.c", i32 775, i32 3}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @dm_get_inactive_table._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @dm_get_inactive_table._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/md/dm-ioctl.c", i32 956, i32 3}
!82 = !{ptr @dev_remove._rs, !81, !"_rs", i1 false, i1 false}
!83 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @dev_remove.descriptor, !81, !"descriptor", i1 false, i1 false}
!87 = !{ptr @dev_remove._rs.39, !88, !"_rs", i1 false, i1 false}
!88 = !{!"../drivers/md/dm-ioctl.c", i32 973, i32 3}
!89 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @dev_remove.descriptor.40, !88, !"descriptor", i1 false, i1 false}
!91 = !{ptr @uuid_rb_tree, !92, !"uuid_rb_tree", i1 false, i1 false}
!92 = !{!"../drivers/md/dm-ioctl.c", i32 61, i32 23}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/md/dm-ioctl.c", i32 1022, i32 3}
!95 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @dev_rename._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @dev_rename._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/md/dm-ioctl.c", i32 436, i32 3}
!100 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @dm_hash_rename._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @dm_hash_rename._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/md/dm-ioctl.c", i32 451, i32 3}
!107 = !{ptr @dm_hash_rename._entry.48, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @dm_hash_rename._entry_ptr.50, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/md/dm-ioctl.c", i32 462, i32 3}
!112 = !{ptr @dm_hash_rename._entry.52, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @dm_hash_rename._entry_ptr.54, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @do_resume._rs, !115, !"_rs", i1 false, i1 false}
!115 = !{!"../drivers/md/dm-ioctl.c", i32 1130, i32 3}
!116 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @do_resume.descriptor, !115, !"descriptor", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/md/dm-ioctl.c", i32 1447, i32 3}
!120 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @table_load._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @table_load._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @table_load._entry.58, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/md/dm-ioctl.c", i32 1457, i32 4}
!125 = !{ptr @table_load._entry_ptr.59, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/md/dm-ioctl.c", i32 1461, i32 3}
!128 = !{ptr @table_load._entry.60, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @table_load._entry_ptr.62, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @table_load._entry.63, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../drivers/md/dm-ioctl.c", i32 1473, i32 3}
!132 = !{ptr @table_load._entry_ptr.64, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/md/dm-ioctl.c", i32 1383, i32 3}
!135 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @populate_table._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @populate_table._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/md/dm-ioctl.c", i32 1391, i32 4}
!140 = !{ptr @populate_table._entry.67, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @populate_table._entry_ptr.69, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @populate_table._entry.70, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/md/dm-ioctl.c", i32 1400, i32 4}
!144 = !{ptr @populate_table._entry_ptr.71, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @table_clear._rs, !146, !"_rs", i1 false, i1 false}
!146 = !{!"../drivers/md/dm-ioctl.c", i32 1517, i32 3}
!147 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @table_clear.descriptor, !146, !"descriptor", i1 false, i1 false}
!149 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/md/dm-ioctl.c", i32 1682, i32 3}
!151 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @target_message._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @target_message._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/md/dm-ioctl.c", i32 1689, i32 3}
!156 = !{ptr @target_message._entry.75, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @target_message._entry_ptr.77, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/md/dm-ioctl.c", i32 1694, i32 3}
!160 = !{ptr @target_message._entry.78, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @target_message._entry_ptr.80, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.82, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/md/dm-ioctl.c", i32 1714, i32 3}
!164 = !{ptr @target_message._entry.81, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @target_message._entry_ptr.83, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.85, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/md/dm-ioctl.c", i32 1719, i32 3}
!168 = !{ptr @target_message._entry.84, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @target_message._entry_ptr.86, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/md/dm-ioctl.c", i32 1645, i32 27}
!172 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/md/dm-ioctl.c", i32 1647, i32 4}
!174 = !{ptr @.str.89, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @message_for_md._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @message_for_md._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.91, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/md/dm-ioctl.c", i32 1657, i32 2}
!179 = !{ptr @message_for_md._entry.90, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @message_for_md._entry_ptr.92, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.93, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/md/dm-ioctl.c", i32 1057, i32 3}
!183 = !{ptr @.str.94, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @dev_set_geometry._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @dev_set_geometry._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.95, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/md/dm-ioctl.c", i32 1061, i32 21}
!188 = !{ptr @.str.97, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/md/dm-ioctl.c", i32 1065, i32 3}
!190 = !{ptr @dev_set_geometry._entry.96, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @dev_set_geometry._entry_ptr.98, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.100, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/md/dm-ioctl.c", i32 1071, i32 3}
!194 = !{ptr @dev_set_geometry._entry.99, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @dev_set_geometry._entry_ptr.101, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.102, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/md/dm-ioctl.c", i32 1919, i32 4}
!198 = !{ptr @.str.103, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @validate_params._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @validate_params._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.105, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/md/dm-ioctl.c", i32 1923, i32 3}
!203 = !{ptr @validate_params._entry.104, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @validate_params._entry_ptr.106, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.107, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/md/dm-ioctl.c", i32 73, i32 8}
!207 = !{ptr @.str.108, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @dm_hash_cells_mutex, !206, !"dm_hash_cells_mutex", i1 false, i1 false}
!209 = !{ptr @.str.109, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/md/dm-ioctl.c", i32 752, i32 3}
!211 = !{ptr @.str.110, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @check_name._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @check_name._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{!"sp"}
!215 = !{i32 1, !"wchar_size", i32 2}
!216 = !{i32 1, !"min_enum_size", i32 4}
!217 = !{i32 8, !"branch-target-enforcement", i32 0}
!218 = !{i32 8, !"sign-return-address", i32 0}
!219 = !{i32 8, !"sign-return-address-all", i32 0}
!220 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!221 = !{i32 7, !"uwtable", i32 1}
!222 = !{i32 7, !"frame-pointer", i32 2}
!223 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!224 = !{!"branch_weights", i32 2000, i32 1}
!225 = !{!"auto-init"}
!226 = !{i8 0, i8 2}
!227 = !{!"branch_weights", i32 1, i32 2000}
!228 = !{i64 2155896082, i64 2155896568, i64 2155896119, i64 2155896175, i64 2155896209, i64 2155896233, i64 2155896274, i64 2155896295, i64 2155896323, i64 2155896357}
!229 = !{i64 2155898826, i64 2155899312, i64 2155898863, i64 2155898919, i64 2155898953, i64 2155898977, i64 2155899018, i64 2155899039, i64 2155899067, i64 2155899101}
!230 = !{i64 4770328}
!231 = !{i64 4770525}
!232 = !{i64 2152255758}
!233 = !{i64 2152274773, i64 2152274798}
!234 = !{i64 2152271575, i64 2152271600}
!235 = !{!"branch_weights", i32 4004000, i32 1}
!236 = !{i64 2152275454, i64 2152275479}
!237 = !{i64 2155915461, i64 2155915947, i64 2155915498, i64 2155915554, i64 2155915588, i64 2155915612, i64 2155915653, i64 2155915674, i64 2155915702, i64 2155915736}
!238 = !{i64 2148305535, i64 2148305540, i64 2148305553, i64 2148305597, i64 2148305631, i64 2148305652}
