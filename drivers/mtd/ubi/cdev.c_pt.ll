; ModuleID = '/llk/IR_all_yes/drivers/mtd/ubi/cdev.c_pt.bc'
source_filename = "../drivers/mtd/ubi/cdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ubi_volume = type { %struct.device, %struct.cdev, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, [128 x i8], i32, i32, i64, i64, ptr, ptr, i8, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
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
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.ubi_fm_pool = type { [256 x i32], i32, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubi_debug_info = type { i8, i32, i32, i32, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubi_leb_change_req = type { i32, i32, i8, [7 x i8] }
%struct.ubi_map_req = type { i32, i8, [3 x i8] }
%struct.ubi_set_vol_prop_req = type { i8, [7 x i8], i64 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ubi_volume_desc = type { ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.73 = type { ptr }
%struct.ubi_mkvol_req = type { i32, i32, i64, i8, i8, i16, [4 x i8], [128 x i8] }
%struct.ubi_rsvol_req = type <{ i64, i32 }>
%struct.ubi_attach_req = type { i32, i32, i32, i16, [10 x i8] }
%struct.ubi_rnvol_req = type { i32, [12 x i8], [32 x %struct.anon.77] }
%struct.anon.77 = type { i32, i16, [2 x i8], [128 x i8] }
%struct.ubi_rename_entry = type { i32, [128 x i8], i32, ptr, %struct.list_head }

@ubi_vol_cdev_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @vol_cdev_llseek, ptr @vol_cdev_read, ptr @vol_cdev_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vol_cdev_ioctl, ptr null, ptr null, i32 0, ptr @vol_cdev_open, ptr null, ptr @vol_cdev_release, ptr @vol_cdev_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ubi_cdev_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ubi_cdev_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ubi_ctrl_cdev_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ctrl_cdev_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"updating\00", [23 x i8] zeroinitializer }, align 32
@vol_cdev_read.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ubi\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vol_cdev_read\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mtd/ubi/cdev.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"UBI DBG gen (pid %d): read %zd bytes from offset %lld of volume %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"damaged volume, update marker is set\00", [59 x i8] zeroinitializer }, align 32
@vol_cdev_read.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"UBI DBG gen (pid %d): read from corrupted volume %d\0A\00", [43 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"cannot accept more %zd bytes of data, error %d\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"volume %d on UBI device %d is corrupted\00", [56 x i8] zeroinitializer }, align 32
@vol_cdev_direct_write.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vol_cdev_direct_write\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"UBI DBG gen (pid %d): requested: write %zd bytes to offset %lld of volume %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unaligned position\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unaligned write length\00", [41 x i8] zeroinitializer }, align 32
@revoke_exclusive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"revoke_exclusive\00", [47 x i8] zeroinitializer }, align 32
@revoke_exclusive._entry_ptr = internal global ptr @revoke_exclusive._entry, section ".printk_index", align 4
@revoke_exclusive._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@revoke_exclusive._entry_ptr.19 = internal global ptr @revoke_exclusive._entry.18, section ".printk_index", align 4
@vol_cdev_ioctl.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vol_cdev_ioctl\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"UBI DBG gen (pid %d): erase LEB %d:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@get_exclusive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.22, ptr @.str.3, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_exclusive\00", [18 x i8] zeroinitializer }, align 32
@get_exclusive._entry_ptr = internal global ptr @get_exclusive._entry, section ".printk_index", align 4
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%d users for volume %d\00", [41 x i8] zeroinitializer }, align 32
@vol_cdev_open.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vol_cdev_open\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"UBI DBG gen (pid %d): open device %d, volume %d, mode %d\0A\00", [38 x i8] zeroinitializer }, align 32
@vol_cdev_release.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vol_cdev_release\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"UBI DBG gen (pid %d): release device %d, volume %d, mode %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"update of volume %d not finished, volume is damaged\00", [44 x i8] zeroinitializer }, align 32
@vol_cdev_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.26, ptr @.str.3, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vol_cdev_release._entry_ptr = internal global ptr @vol_cdev_release._entry, section ".printk_index", align 4
@vol_cdev_release.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.3, ptr @.str.29, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"UBI DBG gen (pid %d): only %lld of %lld bytes received for atomic LEB change for volume %d:%d, cancel\0A\00", [57 x i8] zeroinitializer }, align 32
@ubi_cdev_ioctl.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ubi_cdev_ioctl\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UBI DBG gen (pid %d): create volume\0A\00", [59 x i8] zeroinitializer }, align 32
@ubi_cdev_ioctl.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.32, i8 0, i8 -36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UBI DBG gen (pid %d): remove volume\0A\00", [59 x i8] zeroinitializer }, align 32
@ubi_cdev_ioctl.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.33, i8 0, i8 -28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"UBI DBG gen (pid %d): re-size volume\0A\00", [58 x i8] zeroinitializer }, align 32
@ubi_cdev_ioctl.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.34, i8 0, i8 -20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"UBI DBG gen (pid %d): re-name volumes\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bad volume creation request\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"duplicated volume id %d\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"duplicated volume name \22%s\22\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot open volume %d, error %d\00", [32 x i8] zeroinitializer }, align 32
@rename_volumes.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rename_volumes\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"UBI DBG gen (pid %d): will rename volume %d from \22%s\22 to \22%s\22\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot open volume \22%s\22, error %d\00", [62 x i8] zeroinitializer }, align 32
@rename_volumes.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.3, ptr @.str.42, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBI DBG gen (pid %d): will remove volume %d, name \22%s\22\0A\00", [40 x i8] zeroinitializer }, align 32
@ctrl_cdev_ioctl.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 -2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ctrl_cdev_ioctl\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UBI DBG gen (pid %d): attach MTD device\0A\00", [55 x i8] zeroinitializer }, align 32
@ubi_devices_mutex = external dso_local global %struct.mutex, align 4
@ctrl_cdev_ioctl.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.3, ptr @.str.45, i8 1, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UBI DBG gen (pid %d): detach MTD device\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 20232, i64 1074024193, i64 1074024194, i64 1074024196, i64 1074286336, i64 1074286339, i64 1074810630, i64 1082150663, i64 2147766021]
@__sancov_gen_cov_switch_values.46 = internal global [8 x i64] [i64 6, i64 32, i64 1074032385, i64 1074032388, i64 1074032389, i64 1074556674, i64 1083731712, i64 1360031491]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 1074032449, i64 1075343168]
@___asan_gen_.48 = private unnamed_addr constant [24 x i8] c"ubi_vol_cdev_operations\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1082, i32 30 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"ubi_cdev_operations\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1095, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant [25 x i8] c"ubi_ctrl_cdev_operations\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1103, i32 30 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 150, i32 21 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 181, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 189, i32 21 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 196, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 230, i32 6 }
@___asan_gen_.82 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 214, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 174, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 340, i32 16 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 366, i32 18 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 261, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 269, i32 16 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 278, i32 16 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 76, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 77, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 484, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 51, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 53, i32 21 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 106, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 122, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 126, i32 22 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 128, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 132, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 852, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 881, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 913, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 945, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 645, i32 15 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 711, i32 18 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 716, i32 18 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 739, i32 17 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 756, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 799, i32 17 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 814, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1019, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.199 = private constant [26 x i8] c"../drivers/mtd/ubi/cdev.c\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1060, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @get_exclusive._entry, ptr @get_exclusive._entry_ptr, ptr @revoke_exclusive._entry, ptr @revoke_exclusive._entry.18, ptr @revoke_exclusive._entry_ptr, ptr @revoke_exclusive._entry_ptr.19, ptr @vol_cdev_release._entry, ptr @vol_cdev_release._entry_ptr, ptr @ubi_vol_cdev_operations, ptr @ubi_cdev_operations, ptr @ubi_ctrl_cdev_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_vol_cdev_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_cdev_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_ctrl_cdev_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @revoke_exclusive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @revoke_exclusive._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_exclusive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vol_cdev_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vol_cdev_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %origin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %updating = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %updating, align 8
  %5 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ubi = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ubi, align 8
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %7, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %used_bytes = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %used_bytes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %used_bytes, align 8
  %call = tail call i64 @fixed_size_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %origin, i64 noundef %9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ -16, %if.then ], [ %call, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vol_cdev_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %offp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ubi2 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ubi2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ubi2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vol_cdev_read.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vol_cdev_read, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = tail call i32 @llvm.read_register.i32(metadata !109) #10
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
  %12 = ptrtoint ptr %offp to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offp, align 8
  %vol_id = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vol_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vol_cdev_read.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.4, i32 noundef %11, i32 noundef %count, i64 noundef %13, i32 noundef %15) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %updating = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 25
  %16 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %updating, align 8
  %17 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not = icmp eq i8 %17, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %ubi2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ubi2, align 8
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %19, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %20 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool14.not = icmp eq i8 %20, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %ubi2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ubi2, align 8
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %22, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %23 = ptrtoint ptr %offp to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %offp, align 8
  %used_bytes = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 14
  %25 = ptrtoint ptr %used_bytes to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %used_bytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %26)
  %cmp = icmp eq i64 %24, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp18 = icmp eq i32 %count, 0
  %or.cond = or i1 %cmp18, %cmp
  br i1 %or.cond, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %27 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool25.not = icmp eq i8 %27, 0
  br i1 %tobool25.not, label %if.end20.if.end47_crit_edge, label %do.body27

if.end20.if.end47_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

do.body27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vol_cdev_read.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vol_cdev_read, %if.then39)) #10
          to label %if.end47 [label %if.then39], !srcloc !119

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  %28 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i188 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i188 to ptr
  %task41 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task41, align 8
  %pid42 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid42, align 8
  %vol_id43 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 3
  %34 = ptrtoint ptr %vol_id43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vol_id43, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vol_cdev_read.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.6, i32 noundef %33, i32 noundef %35) #10
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %do.body27, %if.end20.if.end47_crit_edge
  %36 = ptrtoint ptr %offp to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %offp, align 8
  %conv = zext i32 %count to i64
  %add = add i64 %37, %conv
  %38 = ptrtoint ptr %used_bytes to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %used_bytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %39)
  %cmp49 = icmp sgt i64 %add, %39
  %sub = sub i64 %39, %37
  %conv53 = trunc i64 %sub to i32
  %count.addr.0 = select i1 %cmp49, i32 %conv53, i32 %count
  %usable_leb_size = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 11
  %40 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %usable_leb_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.0, i32 %41)
  %cmp55 = icmp ult i32 %count.addr.0, %41
  br i1 %cmp55, label %if.then57, label %if.end47.if.end62_crit_edge

if.end47.if.end62_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then57:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %min_io_size = getelementptr inbounds %struct.ubi_device, ptr %5, i32 0, i32 67
  %42 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %min_io_size, align 4
  %sub58 = add i32 %count.addr.0, -1
  %add59 = add i32 %sub58, %43
  %neg = sub i32 0, %43
  %and = and i32 %add59, %neg
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %if.end47.if.end62_crit_edge
  %tbuf_size.0 = phi i32 [ %and, %if.then57 ], [ %41, %if.end47.if.end62_crit_edge ]
  %call63 = tail call noalias ptr @vmalloc(i32 noundef %tbuf_size.0) #13
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %if.end62.cleanup_crit_edge, label %if.end66

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  %44 = tail call i32 @llvm.umin.i32(i32 %count.addr.0, i32 %tbuf_size.0)
  %45 = ptrtoint ptr %offp to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %offp, align 8
  %47 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %usable_leb_size, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %46)
  %cmp164.i = icmp ult i64 %46, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !120

if.then168.i:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i = trunc i64 %46 to i32
  %conv169.i.frozen = freeze i32 %conv169.i
  %.frozen = freeze i32 %48
  %div172.i = udiv i32 %conv169.i.frozen, %.frozen
  %49 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %conv169.i.frozen, %49
  br label %do.body72.preheader

if.else174.i:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %50 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %48, i64 %46) #14, !srcloc !121
  %asmresult.i261.i = extractvalue { i64, i64 } %50, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %50, 1
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %extract.t204 = trunc i64 %asmresult1.i.i to i32
  br label %do.body72.preheader

do.body72.preheader:                              ; preds = %if.else174.i, %if.then168.i
  %off.0.ph = phi i32 [ %conv.i.i, %if.else174.i ], [ %rem170.i.decomposed, %if.then168.i ]
  %lnum.0.ph = phi i32 [ %extract.t204, %if.else174.i ], [ %div172.i, %if.then168.i ]
  br label %do.body72

do.body72:                                        ; preds = %if.end102.do.body72_crit_edge, %do.body72.preheader
  %off.0 = phi i32 [ %off.1, %if.end102.do.body72_crit_edge ], [ %off.0.ph, %do.body72.preheader ]
  %lnum.0 = phi i32 [ %lnum.1, %if.end102.do.body72_crit_edge ], [ %lnum.0.ph, %do.body72.preheader ]
  %len.0 = phi i32 [ %58, %if.end102.do.body72_crit_edge ], [ %44, %do.body72.preheader ]
  %count.addr.1 = phi i32 [ %sub96, %if.end102.do.body72_crit_edge ], [ %count.addr.0, %do.body72.preheader ]
  %buf.addr.0 = phi ptr [ %add.ptr, %if.end102.do.body72_crit_edge ], [ %buf, %do.body72.preheader ]
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 212, i32 noundef 0) #10
  %call.i = tail call i32 @__cond_resched() #10
  %add75 = add i32 %len.0, %off.0
  %51 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %usable_leb_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add75, i32 %52)
  %cmp77.not = icmp slt i32 %add75, %52
  %sub81 = sub i32 %52, %off.0
  %spec.select = select i1 %cmp77.not, i32 %len.0, i32 %sub81
  %call83 = tail call i32 @ubi_eba_read_leb(ptr noundef %5, ptr noundef %3, i32 noundef %lnum.0, ptr noundef nonnull %call63, i32 noundef %off.0, i32 noundef %spec.select, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %do.body72.do.end111.thread_crit_edge

do.body72.do.end111.thread_crit_edge:             ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end111.thread

if.end86:                                         ; preds = %do.body72
  %add87 = add i32 %spec.select, %off.0
  %53 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %usable_leb_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add87, i32 %54)
  %cmp89 = icmp eq i32 %add87, %54
  %sub94 = select i1 %cmp89, i32 %54, i32 0
  %off.1 = sub i32 %add87, %sub94
  %add92 = zext i1 %cmp89 to i32
  %lnum.1 = add i32 %lnum.0, %add92
  %sub96 = sub i32 %count.addr.1, %spec.select
  %conv97 = sext i32 %spec.select to i64
  %55 = ptrtoint ptr %offp to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %offp, align 8
  %add98 = add i64 %56, %conv97
  store i64 %add98, ptr %offp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9.i.i = icmp slt i32 %spec.select, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end86
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.do.end111.thread_crit_edge, label %if.then27.i.i, !prof !120

land.rhs16.i.i.do.end111.thread_crit_edge:        ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end111.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %do.end111.thread

if.then.i.i.i:                                    ; preds = %if.end86
  tail call void @__check_object_size(ptr noundef nonnull %call63, i32 noundef %spec.select, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %57 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 %spec.select, i32 -1226833920) #14, !srcloc !122
  %asmresult.i.i = extractvalue { i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call63, i32 noundef %spec.select) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf.addr.0, ptr noundef nonnull %call63, i32 noundef %spec.select) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %spec.select, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %spec.select, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool100.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool100.not, label %if.end102, label %copy_to_user.exit.do.end111.thread_crit_edge

copy_to_user.exit.do.end111.thread_crit_edge:     ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end111.thread

if.end102:                                        ; preds = %copy_to_user.exit
  %add.ptr = getelementptr i8, ptr %buf.addr.0, i32 %spec.select
  %58 = tail call i32 @llvm.umin.i32(i32 %sub96, i32 %tbuf_size.0)
  %tobool110.not = icmp eq i32 %sub96, 0
  br i1 %tobool110.not, label %59, label %if.end102.do.body72_crit_edge

if.end102.do.body72_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body72

do.end111.thread:                                 ; preds = %copy_to_user.exit.do.end111.thread_crit_edge, %if.then27.i.i, %land.rhs16.i.i.do.end111.thread_crit_edge, %do.body72.do.end111.thread_crit_edge
  %err.0.ph = phi i32 [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.do.end111.thread_crit_edge ], [ %call83, %do.body72.do.end111.thread_crit_edge ], [ -14, %copy_to_user.exit.do.end111.thread_crit_edge ]
  tail call void @vfree(ptr noundef nonnull %call63) #10
  br label %cleanup

59:                                               ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vfree(ptr noundef nonnull %call63) #10
  br label %cleanup

cleanup:                                          ; preds = %59, %do.end111.thread, %if.end62.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then15, %if.then7
  %retval.0 = phi i32 [ -16, %if.then7 ], [ -9, %if.then15 ], [ 0, %if.end17.cleanup_crit_edge ], [ -12, %if.end62.cleanup_crit_edge ], [ %count.addr.0, %59 ], [ %err.0.ph, %do.end111.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vol_cdev_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %offp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ubi2 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ubi2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ubi2, align 8
  %updating = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %updating, align 8
  %7 = and i8 %bf.load, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @vol_cdev_direct_write(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %offp)
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 @ubi_more_update_data(ptr noundef %5, ptr noundef %3, ptr noundef %buf, i32 noundef %count) #10
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 @ubi_more_leb_change_data(ptr noundef %5, ptr noundef %3, ptr noundef %buf, i32 noundef %count) #10
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  %err.0 = phi i32 [ %call15, %if.then14 ], [ %call16, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  br i1 %cmp, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef %count, i32 noundef %err.0) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool20.not = icmp eq i32 %err.0, 0
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.then21

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  %10 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load23 = load i8, ptr %updating, align 8
  %11 = and i8 %bf.load23, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool27.not = icmp eq i8 %11, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @revoke_exclusive(ptr noundef %1)
  br label %cleanup

if.end29:                                         ; preds = %if.then21
  %vol_id = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vol_id, align 4
  %call30 = tail call i32 @ubi_check_volume(ptr noundef %5, i32 noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool34.not = icmp eq i32 %call30, 0
  br i1 %tobool34.not, label %if.end33.if.end39_crit_edge, label %if.then35

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vol_id, align 4
  %ubi_num = getelementptr inbounds %struct.ubi_device, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ubi_num, align 8
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef %15, i32 noundef %17) #10
  %18 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load37 = load i8, ptr %updating, align 8
  %bf.set = or i8 %bf.load37, 32
  store i8 %bf.set, ptr %updating, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end33.if.end39_crit_edge
  %19 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load40 = load i8, ptr %updating, align 8
  %bf.set42 = or i8 %bf.load40, 64
  store i8 %bf.set42, ptr %updating, align 8
  %call43 = tail call i32 @ubi_volume_notify(ptr noundef %5, ptr noundef %3, i32 noundef 4) #10
  tail call fastcc void @revoke_exclusive(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end29.cleanup_crit_edge, %if.then28, %if.end19.cleanup_crit_edge, %if.then18, %if.then
  %retval.0 = phi i32 [ %err.0, %if.then18 ], [ %err.0, %if.then28 ], [ %call, %if.then ], [ %call30, %if.end29.cleanup_crit_edge ], [ %err.0, %if.end39 ], [ %count, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vol_cdev_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %bytes = alloca i64, align 8
  %req = alloca %struct.ubi_leb_change_req, align 4
  %req99 = alloca %struct.ubi_map_req, align 8
  %req146 = alloca %struct.ubi_set_vol_prop_req, align 1
  %vi = alloca %struct.ubi_volume_info, align 8
  %vi165 = alloca %struct.ubi_volume_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ubi2 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ubi2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ubi2, align 8
  %6 = inttoptr i32 %arg to ptr
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog169_crit_edge [
    i32 1074286336, label %sw.bb
    i32 1074024194, label %sw.bb27
    i32 1074024193, label %sw.bb64
    i32 1074286339, label %sw.bb98
    i32 1074024196, label %sw.bb107
    i32 -2147201275, label %sw.bb126
    i32 1074810630, label %sw.bb145
    i32 1082150663, label %sw.bb161
    i32 20232, label %sw.bb164
  ]

entry.sw.epilog169_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog169

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes) #10
  %8 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %bytes, align 8, !annotation !123
  %call = tail call zeroext i1 @capable(i32 noundef 24) #10
  br i1 %call, label %if.end8.i.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 8, i32 -1226833920) #14, !srcloc !124
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !120

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bytes, i32 noundef 8) #10
  %10 = call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !125
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %bytes, ptr noundef %6, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !120

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i310 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i310
  %add.ptr.i.i = getelementptr i8, ptr %bytes, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i310)
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  %mode = getelementptr inbounds %struct.ubi_volume_desc, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %16 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp9 = icmp slt i64 %17, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %lor.lhs.false

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end7
  %reserved_pebs = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reserved_pebs, align 4
  %conv = sext i32 %19 to i64
  %usable_leb_size = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usable_leb_size, align 4
  %conv8 = sext i32 %21 to i64
  %mul = mul nsw i64 %conv8, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %mul)
  %cmp11 = icmp sgt i64 %17, %mul
  br i1 %cmp11, label %lor.lhs.false.cleanup_crit_edge, label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %call15 = call fastcc i32 @get_exclusive(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %22 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bytes, align 8
  %call20 = call i32 @ubi_start_update(ptr noundef %5, ptr noundef %3, i64 noundef %23) #10
  %24 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %cmp21 = icmp eq i64 %25, 0
  br i1 %cmp21, label %if.then23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = call i32 @ubi_volume_notify(ptr noundef %5, ptr noundef %3, i32 noundef 4) #10
  call fastcc void @revoke_exclusive(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then11.i.i, %sw.bb.cleanup_crit_edge
  %err.0 = phi i32 [ -1, %sw.bb.cleanup_crit_edge ], [ -30, %if.end5.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ %call20, %if.then23 ], [ %call20, %if.end19.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes) #10
  br label %sw.epilog169

sw.bb27:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #10
  %26 = getelementptr inbounds %struct.ubi_leb_change_req, ptr %req, i32 0, i32 1
  %27 = call ptr @memset(ptr %req, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #10
  %call.i.i229 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i229, label %sw.bb27.if.then11.i.i245_crit_edge, label %land.lhs.true.i.i232

sw.bb27.if.then11.i.i245_crit_edge:               ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i245

land.lhs.true.i.i232:                             ; preds = %sw.bb27
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 16, i32 -1226833920) #14, !srcloc !124
  %asmresult.i.i230 = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i230)
  %cmp.i6.i231 = icmp eq i32 %asmresult.i.i230, 0
  br i1 %cmp.i6.i231, label %if.end.i.i242, label %land.lhs.true.i.i232.if.then11.i.i245_crit_edge, !prof !120

land.lhs.true.i.i232.if.then11.i.i245_crit_edge:  ; preds = %land.lhs.true.i.i232
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i245

if.end.i.i242:                                    ; preds = %land.lhs.true.i.i232
  %call.i.i.i233 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req, i32 noundef 16) #10
  %29 = call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i.i.i.i234 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i234 to ptr
  %cpu_domain.i.i.i.i.i235 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i235) #4, !srcloc !125
  %and.i.i.i.i236 = and i32 %31, -13
  %or.i.i.i.i237 = or i32 %and.i.i.i.i236, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i237) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %call1.i.i.i238 = call i32 @arm_copy_from_user(ptr noundef nonnull %req, ptr noundef %6, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i238)
  %tobool4.not.i.i241 = icmp eq i32 %call1.i.i.i238, 0
  br i1 %tobool4.not.i.i241, label %if.end31, label %if.end.i.i242.if.then11.i.i245_crit_edge, !prof !120

if.end.i.i242.if.then11.i.i245_crit_edge:         ; preds = %if.end.i.i242
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i245

if.then11.i.i245:                                 ; preds = %if.end.i.i242.if.then11.i.i245_crit_edge, %land.lhs.true.i.i232.if.then11.i.i245_crit_edge, %sw.bb27.if.then11.i.i245_crit_edge
  %res.0.i.i240315 = phi i32 [ %call1.i.i.i238, %if.end.i.i242.if.then11.i.i245_crit_edge ], [ 16, %sw.bb27.if.then11.i.i245_crit_edge ], [ 16, %land.lhs.true.i.i232.if.then11.i.i245_crit_edge ]
  %sub.i.i243 = sub i32 16, %res.0.i.i240315
  %add.ptr.i.i244 = getelementptr i8, ptr %req, i32 %sub.i.i243
  %32 = call ptr @memset(ptr %add.ptr.i.i244, i32 0, i32 %res.0.i.i240315)
  br label %cleanup63

if.end31:                                         ; preds = %if.end.i.i242
  %mode32 = getelementptr inbounds %struct.ubi_volume_desc, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %mode32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mode32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp33 = icmp eq i32 %34, 1
  br i1 %cmp33, label %if.end31.cleanup63_crit_edge, label %lor.lhs.false35

if.end31.cleanup63_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup63

lor.lhs.false35:                                  ; preds = %if.end31
  %vol_type = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 10
  %35 = ptrtoint ptr %vol_type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vol_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %cmp36 = icmp eq i32 %36, 4
  br i1 %cmp36, label %lor.lhs.false35.cleanup63_crit_edge, label %if.end39

lor.lhs.false35.cleanup63_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup63

if.end39:                                         ; preds = %lor.lhs.false35
  %37 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i = icmp sgt i32 %38, -1
  br i1 %cmp.i, label %ubi_leb_valid.exit, label %if.end39.cleanup63_crit_edge

if.end39.cleanup63_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup63

ubi_leb_valid.exit:                               ; preds = %if.end39
  %reserved_pebs.i = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 9
  %39 = ptrtoint ptr %reserved_pebs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reserved_pebs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %38)
  %cmp1.i = icmp sgt i32 %40, %38
  br i1 %cmp1.i, label %lor.lhs.false41, label %ubi_leb_valid.exit.cleanup63_crit_edge

ubi_leb_valid.exit.cleanup63_crit_edge:           ; preds = %ubi_leb_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup63

lor.lhs.false41:                                  ; preds = %ubi_leb_valid.exit
  %41 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp43 = icmp slt i32 %42, 0
  br i1 %cmp43, label %lor.lhs.false41.cleanup63_crit_edge, label %lor.lhs.false45

lor.lhs.false41.cleanup63_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup63

lor.lhs.false45:                                  ; preds = %lor.lhs.false41
  %usable_leb_size47 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 11
  %43 = ptrtoint ptr %usable_leb_size47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %usable_leb_size47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp48 = icmp sgt i32 %42, %44
  br i1 %cmp48, label %lor.lhs.false45.cleanup63_crit_edge, label %if.end51

lor.lhs.false45.cleanup63_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup63

if.end51:                                         ; preds = %lor.lhs.false45
  %call52 = call fastcc i32 @get_exclusive(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end51.cleanup63_crit_edge, label %if.end56

if.end51.cleanup63_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup63

if.end56:                                         ; preds = %if.end51
  %call57 = call i32 @ubi_start_leb_change(ptr noundef %5, ptr noundef %3, ptr noundef nonnull %req) #10
  %45 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp59 = icmp eq i32 %46, 0
  br i1 %cmp59, label %if.then61, label %if.end56.cleanup63_crit_edge

if.end56.cleanup63_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup63

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @revoke_exclusive(ptr noundef %1)
  br label %cleanup63

cleanup63:                                        ; preds = %if.then61, %if.end56.cleanup63_crit_edge, %if.end51.cleanup63_crit_edge, %lor.lhs.false45.cleanup63_crit_edge, %lor.lhs.false41.cleanup63_crit_edge, %ubi_leb_valid.exit.cleanup63_crit_edge, %if.end39.cleanup63_crit_edge, %lor.lhs.false35.cleanup63_crit_edge, %if.end31.cleanup63_crit_edge, %if.then11.i.i245
  %err.1 = phi i32 [ -30, %lor.lhs.false35.cleanup63_crit_edge ], [ -30, %if.end31.cleanup63_crit_edge ], [ -22, %lor.lhs.false45.cleanup63_crit_edge ], [ -22, %lor.lhs.false41.cleanup63_crit_edge ], [ -22, %ubi_leb_valid.exit.cleanup63_crit_edge ], [ %call52, %if.end51.cleanup63_crit_edge ], [ %call57, %if.then61 ], [ %call57, %if.end56.cleanup63_crit_edge ], [ -14, %if.then11.i.i245 ], [ -22, %if.end39.cleanup63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #10
  br label %sw.epilog169

sw.bb64:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 467) #10
  %47 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 4
  %49 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !125
  %and.i = and i32 %49, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %50 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1226833921) #10, !srcloc !128
  %asmresult = extractvalue { i32, i32 } %50, 0
  %asmresult67 = extractvalue { i32, i32 } %50, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool69.not = icmp eq i32 %asmresult, 0
  br i1 %tobool69.not, label %if.end71, label %sw.bb64.sw.epilog169_crit_edge

sw.bb64.sw.epilog169_crit_edge:                   ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog169

if.end71:                                         ; preds = %sw.bb64
  %mode72 = getelementptr inbounds %struct.ubi_volume_desc, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %mode72 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mode72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp73 = icmp eq i32 %52, 1
  br i1 %cmp73, label %if.end71.sw.epilog169_crit_edge, label %lor.lhs.false75

if.end71.sw.epilog169_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog169

lor.lhs.false75:                                  ; preds = %if.end71
  %vol_type76 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 10
  %53 = ptrtoint ptr %vol_type76 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vol_type76, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp77 = icmp eq i32 %54, 4
  br i1 %cmp77, label %lor.lhs.false75.sw.epilog169_crit_edge, label %if.end80

lor.lhs.false75.sw.epilog169_crit_edge:           ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog169

if.end80:                                         ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult67)
  %cmp.i302 = icmp sgt i32 %asmresult67, -1
  br i1 %cmp.i302, label %ubi_leb_valid.exit306, label %if.end80.sw.epilog169_crit_edge

if.end80.sw.epilog169_crit_edge:                  ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog169

ubi_leb_valid.exit306:                            ; preds = %if.end80
  %reserved_pebs.i303 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 9
  %55 = ptrtoint ptr %reserved_pebs.i303 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reserved_pebs.i303, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %asmresult67)
  %cmp1.i304 = icmp sgt i32 %56, %asmresult67
  br i1 %cmp1.i304, label %do.body, label %ubi_leb_valid.exit306.sw.epilog169_crit_edge

ubi_leb_valid.exit306.sw.epilog169_crit_edge:     ; preds = %ubi_leb_valid.exit306
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog169

do.body:                                          ; preds = %ubi_leb_valid.exit306
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vol_cdev_ioctl.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vol_cdev_ioctl, %if.then89)) #10
          to label %do.end [label %if.then89], !srcloc !119

if.then89:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %57 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i307 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i307 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 68
  %61 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pid, align 8
  %vol_id = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 3
  %63 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vol_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vol_cdev_ioctl.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.21, i32 noundef %62, i32 noundef %64, i32 noundef %asmresult67) #10
  br label %do.end

do.end:                                           ; preds = %if.then89, %do.body
  %call92 = tail call i32 @ubi_eba_unmap_leb(ptr noundef %5, ptr noundef %3, i32 noundef %asmresult67) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %do.end.sw.epilog169_crit_edge

do.end.sw.epilog169_crit_edge:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog169

if.end95:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call96 = tail call i32 @ubi_wl_flush(ptr noundef %5, i32 noundef -1, i32 noundef -1) #10
  br label %sw.epilog169

sw.bb98:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req99) #10
  %65 = ptrtoint ptr %req99 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 -1, ptr %req99, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #10
  %call.i.i252 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i252, label %sw.bb98.if.then11.i.i268_crit_edge, label %land.lhs.true.i.i255

sw.bb98.if.then11.i.i268_crit_edge:               ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i268

land.lhs.true.i.i255:                             ; preds = %sw.bb98
  %66 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 8, i32 -1226833920) #14, !srcloc !124
  %asmresult.i.i253 = extractvalue { i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i253)
  %cmp.i6.i254 = icmp eq i32 %asmresult.i.i253, 0
  br i1 %cmp.i6.i254, label %if.end.i.i265, label %land.lhs.true.i.i255.if.then11.i.i268_crit_edge, !prof !120

land.lhs.true.i.i255.if.then11.i.i268_crit_edge:  ; preds = %land.lhs.true.i.i255
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i268

if.end.i.i265:                                    ; preds = %land.lhs.true.i.i255
  %call.i.i.i256 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req99, i32 noundef 8) #10
  %67 = call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i.i.i.i257 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i.i257 to ptr
  %cpu_domain.i.i.i.i.i258 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 4
  %69 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i258) #4, !srcloc !125
  %and.i.i.i.i259 = and i32 %69, -13
  %or.i.i.i.i260 = or i32 %and.i.i.i.i259, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i260) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %call1.i.i.i261 = call i32 @arm_copy_from_user(ptr noundef nonnull %req99, ptr noundef %6, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i261)
  %tobool4.not.i.i264 = icmp eq i32 %call1.i.i.i261, 0
  br i1 %tobool4.not.i.i264, label %if.end103, label %if.end.i.i265.if.then11.i.i268_crit_edge, !prof !120

if.end.i.i265.if.then11.i.i268_crit_edge:         ; preds = %if.end.i.i265
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i268

if.then11.i.i268:                                 ; preds = %if.end.i.i265.if.then11.i.i268_crit_edge, %land.lhs.true.i.i255.if.then11.i.i268_crit_edge, %sw.bb98.if.then11.i.i268_crit_edge
  %res.0.i.i263321 = phi i32 [ %call1.i.i.i261, %if.end.i.i265.if.then11.i.i268_crit_edge ], [ 8, %sw.bb98.if.then11.i.i268_crit_edge ], [ 8, %land.lhs.true.i.i255.if.then11.i.i268_crit_edge ]
  %sub.i.i266 = sub i32 8, %res.0.i.i263321
  %add.ptr.i.i267 = getelementptr i8, ptr %req99, i32 %sub.i.i266
  %70 = call ptr @memset(ptr %add.ptr.i.i267, i32 0, i32 %res.0.i.i263321)
  br label %cleanup106

if.end103:                                        ; preds = %if.end.i.i265
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %req99 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %req99, align 8
  %call105 = call i32 @ubi_leb_map(ptr noundef %1, i32 noundef %72) #10
  br label %cleanup106

cleanup106:                                       ; preds = %if.end103, %if.then11.i.i268
  %err.3 = phi i32 [ %call105, %if.end103 ], [ -14, %if.then11.i.i268 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req99) #10
  br label %sw.epilog169

sw.bb107:                                         ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 512) #10
  %73 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i271 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i271 to ptr
  %cpu_domain.i.i272 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 4
  %75 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i272) #4, !srcloc !125
  %and.i273 = and i32 %75, -13
  %or.i274 = or i32 %and.i273, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i274) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %76 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1226833921) #10, !srcloc !129
  %asmresult118 = extractvalue { i32, i32 } %76, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult118)
  %tobool121.not = icmp eq i32 %asmresult118, 0
  br i1 %tobool121.not, label %if.end123, label %sw.bb107.sw.epilog169_crit_edge

sw.bb107.sw.epilog169_crit_edge:                  ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog169

if.end123:                                        ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult119 = extractvalue { i32, i32 } %76, 1
  %call124 = tail call i32 @ubi_leb_unmap(ptr noundef %1, i32 noundef %asmresult119) #10
  br label %sw.epilog169

sw.bb126:                                         ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 526) #10
  %77 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i275 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i275 to ptr
  %cpu_domain.i.i276 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 4
  %79 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i276) #4, !srcloc !125
  %and.i277 = and i32 %79, -13
  %or.i278 = or i32 %and.i277, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i278) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %80 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1226833921) #10, !srcloc !130
  %asmresult137 = extractvalue { i32, i32 } %80, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult137)
  %tobool140.not = icmp eq i32 %asmresult137, 0
  br i1 %tobool140.not, label %if.end142, label %sw.bb126.sw.epilog169_crit_edge

sw.bb126.sw.epilog169_crit_edge:                  ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog169

if.end142:                                        ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult138 = extractvalue { i32, i32 } %80, 1
  %call143 = tail call i32 @ubi_is_mapped(ptr noundef %1, i32 noundef %asmresult138) #10
  br label %sw.epilog169

sw.bb145:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req146) #10
  %81 = getelementptr inbounds %struct.ubi_set_vol_prop_req, ptr %req146, i32 0, i32 2
  %82 = call ptr @memset(ptr %req146, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #10
  %call.i.i283 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i283, label %sw.bb145.if.then11.i.i299_crit_edge, label %land.lhs.true.i.i286

sw.bb145.if.then11.i.i299_crit_edge:              ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i299

land.lhs.true.i.i286:                             ; preds = %sw.bb145
  %83 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 16, i32 -1226833920) #14, !srcloc !124
  %asmresult.i.i284 = extractvalue { i32, i32 } %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i284)
  %cmp.i6.i285 = icmp eq i32 %asmresult.i.i284, 0
  br i1 %cmp.i6.i285, label %if.end.i.i296, label %land.lhs.true.i.i286.if.then11.i.i299_crit_edge, !prof !120

land.lhs.true.i.i286.if.then11.i.i299_crit_edge:  ; preds = %land.lhs.true.i.i286
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i299

if.end.i.i296:                                    ; preds = %land.lhs.true.i.i286
  %call.i.i.i287 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req146, i32 noundef 16) #10
  %84 = call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i.i.i.i288 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i.i.i.i288 to ptr
  %cpu_domain.i.i.i.i.i289 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 4
  %86 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i289) #4, !srcloc !125
  %and.i.i.i.i290 = and i32 %86, -13
  %or.i.i.i.i291 = or i32 %and.i.i.i.i290, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i291) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %call1.i.i.i292 = call i32 @arm_copy_from_user(ptr noundef nonnull %req146, ptr noundef %6, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %86) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i292)
  %tobool4.not.i.i295 = icmp eq i32 %call1.i.i.i292, 0
  br i1 %tobool4.not.i.i295, label %if.end150, label %if.end.i.i296.if.then11.i.i299_crit_edge, !prof !120

if.end.i.i296.if.then11.i.i299_crit_edge:         ; preds = %if.end.i.i296
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i299

if.then11.i.i299:                                 ; preds = %if.end.i.i296.if.then11.i.i299_crit_edge, %land.lhs.true.i.i286.if.then11.i.i299_crit_edge, %sw.bb145.if.then11.i.i299_crit_edge
  %res.0.i.i294326 = phi i32 [ %call1.i.i.i292, %if.end.i.i296.if.then11.i.i299_crit_edge ], [ 16, %sw.bb145.if.then11.i.i299_crit_edge ], [ 16, %land.lhs.true.i.i286.if.then11.i.i299_crit_edge ]
  %sub.i.i297 = sub i32 16, %res.0.i.i294326
  %add.ptr.i.i298 = getelementptr i8, ptr %req146, i32 %sub.i.i297
  %87 = call ptr @memset(ptr %add.ptr.i.i298, i32 0, i32 %res.0.i.i294326)
  br label %cleanup160

if.end150:                                        ; preds = %if.end.i.i296
  %88 = ptrtoint ptr %req146 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %req146, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %89)
  %cond = icmp eq i8 %89, 1
  br i1 %cond, label %sw.bb152, label %if.end150.cleanup160_crit_edge

if.end150.cleanup160_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup160

sw.bb152:                                         ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  %device_mutex = getelementptr inbounds %struct.ubi_device, ptr %5, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %device_mutex, i32 noundef 0) #10
  %90 = ptrtoint ptr %81 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 8)
  %91 = load i64, ptr %81, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %91)
  %tobool153.not = icmp eq i64 %91, 0
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %direct_writes = getelementptr inbounds %struct.ubi_volume, ptr %93, i32 0, i32 25
  %94 = ptrtoint ptr %direct_writes to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load = load i8, ptr %direct_writes, align 8
  %bf.shl = select i1 %tobool153.not, i8 0, i8 2
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %direct_writes, align 8
  call void @mutex_unlock(ptr noundef %device_mutex) #10
  br label %cleanup160

cleanup160:                                       ; preds = %sw.bb152, %if.end150.cleanup160_crit_edge, %if.then11.i.i299
  %err.7 = phi i32 [ 0, %sw.bb152 ], [ -22, %if.end150.cleanup160_crit_edge ], [ -14, %if.then11.i.i299 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req146) #10
  br label %sw.epilog169

sw.bb161:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vi) #10
  %95 = call ptr @memset(ptr %vi, i32 255, i32 64)
  call void @ubi_get_volume_info(ptr noundef %1, ptr noundef nonnull %vi) #10
  %call162 = call i32 @ubiblock_create(ptr noundef nonnull %vi) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vi) #10
  br label %sw.epilog169

sw.bb164:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vi165) #10
  %96 = call ptr @memset(ptr %vi165, i32 255, i32 64)
  call void @ubi_get_volume_info(ptr noundef %1, ptr noundef nonnull %vi165) #10
  %call166 = call i32 @ubiblock_remove(ptr noundef nonnull %vi165) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vi165) #10
  br label %sw.epilog169

sw.epilog169:                                     ; preds = %sw.bb164, %sw.bb161, %cleanup160, %if.end142, %sw.bb126.sw.epilog169_crit_edge, %if.end123, %sw.bb107.sw.epilog169_crit_edge, %cleanup106, %if.end95, %do.end.sw.epilog169_crit_edge, %ubi_leb_valid.exit306.sw.epilog169_crit_edge, %if.end80.sw.epilog169_crit_edge, %lor.lhs.false75.sw.epilog169_crit_edge, %if.end71.sw.epilog169_crit_edge, %sw.bb64.sw.epilog169_crit_edge, %cleanup63, %cleanup, %entry.sw.epilog169_crit_edge
  %err.8 = phi i32 [ %call166, %sw.bb164 ], [ %call162, %sw.bb161 ], [ %err.7, %cleanup160 ], [ %err.3, %cleanup106 ], [ %err.1, %cleanup63 ], [ %err.0, %cleanup ], [ %call96, %if.end95 ], [ -14, %sw.bb64.sw.epilog169_crit_edge ], [ -30, %lor.lhs.false75.sw.epilog169_crit_edge ], [ -30, %if.end71.sw.epilog169_crit_edge ], [ -22, %ubi_leb_valid.exit306.sw.epilog169_crit_edge ], [ %call92, %do.end.sw.epilog169_crit_edge ], [ %call124, %if.end123 ], [ -14, %sw.bb107.sw.epilog169_crit_edge ], [ %call143, %if.end142 ], [ -14, %sw.bb126.sw.epilog169_crit_edge ], [ -25, %entry.sw.epilog169_crit_edge ], [ -22, %if.end80.sw.epilog169_crit_edge ]
  ret i32 %err.8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vol_cdev_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %sub = add nsw i32 %and.i, -1
  %shr.i = lshr i32 %1, 20
  %call2 = tail call i32 @ubi_major2num(i32 noundef %shr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vol_cdev_open.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vol_cdev_open, %if.then9)) #10
          to label %do.end [label %if.then9], !srcloc !119

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i30 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i30 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vol_cdev_open.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.25, i32 noundef %9, i32 noundef %call2, i32 noundef %sub, i32 noundef %.) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  %call12 = tail call ptr @ubi_open_volume(i32 noundef %call2, i32 noundef %sub, i32 noundef %.) #10
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call12, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then14 ], [ 0, %if.end16 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vol_cdev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vol_cdev_release.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vol_cdev_release, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = tail call i32 @llvm.read_register.i32(metadata !109) #10
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
  %ubi = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ubi, align 8
  %ubi_num = getelementptr inbounds %struct.ubi_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ubi_num, align 8
  %vol_id = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vol_id, align 4
  %mode = getelementptr inbounds %struct.ubi_volume_desc, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vol_cdev_release.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.27, i32 noundef %9, i32 noundef %13, i32 noundef %15, i32 noundef %17) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %updating = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 25
  %18 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %updating, align 8
  %19 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not = icmp eq i8 %19, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end
  %ubi7 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %ubi7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ubi7, align 8
  %vol_id8 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %vol_id8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vol_id8, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %21, ptr noundef nonnull @.str.28, i32 noundef %23) #10
  %24 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load10 = load i8, ptr %updating, align 8
  %25 = and i8 %bf.load10, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool14.not = icmp eq i8 %25, 0
  br i1 %tobool14.not, label %if.then6.if.end75.sink.split_crit_edge, label %do.end28, !prof !120

if.then6.if.end75.sink.split_crit_edge:           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75.sink.split

do.end28:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %26 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i95 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i95 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task31, align 8
  %pid32 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid32, align 8
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.26, i32 noundef 128, i32 noundef %31) #15
  tail call void @dump_stack() #15
  br label %if.end75.sink.split

if.else:                                          ; preds = %do.end
  %32 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool45.not = icmp eq i8 %32, 0
  br i1 %tobool45.not, label %if.else.if.end75_crit_edge, label %do.body47

if.else.if.end75_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

do.body47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vol_cdev_release.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vol_cdev_release, %if.then59)) #10
          to label %if.end75.sink.split [label %if.then59], !srcloc !119

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  %33 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i96 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i96 to ptr
  %task61 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task61, align 8
  %pid62 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 68
  %37 = ptrtoint ptr %pid62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid62, align 8
  %upd_received = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 22
  %39 = ptrtoint ptr %upd_received to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %upd_received, align 8
  %upd_bytes = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 21
  %41 = ptrtoint ptr %upd_bytes to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %upd_bytes, align 8
  %ubi63 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 2
  %43 = ptrtoint ptr %ubi63 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ubi63, align 8
  %ubi_num64 = getelementptr inbounds %struct.ubi_device, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %ubi_num64 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ubi_num64, align 8
  %vol_id65 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 3
  %47 = ptrtoint ptr %vol_id65 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vol_id65, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vol_cdev_release.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.29, i32 noundef %38, i64 noundef %40, i64 noundef %42, i32 noundef %46, i32 noundef %48) #10
  br label %if.end75.sink.split

if.end75.sink.split:                              ; preds = %if.then59, %do.body47, %do.end28, %if.then6.if.end75.sink.split_crit_edge
  %.sink = phi i8 [ -9, %do.end28 ], [ -9, %if.then6.if.end75.sink.split_crit_edge ], [ -5, %do.body47 ], [ -5, %if.then59 ]
  %49 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load70 = load i8, ptr %updating, align 8
  %bf.clear71 = and i8 %bf.load70, %.sink
  store i8 %bf.clear71, ptr %updating, align 8
  %upd_buf73 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 23
  %50 = ptrtoint ptr %upd_buf73 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %upd_buf73, align 8
  tail call void @vfree(ptr noundef %51) #10
  br label %if.end75

if.end75:                                         ; preds = %if.end75.sink.split, %if.else.if.end75_crit_edge
  tail call void @ubi_close_volume(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vol_cdev_fsync(ptr nocapture noundef readonly %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ubi1 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ubi1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ubi1, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %ubi_num = getelementptr inbounds %struct.ubi_device, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ubi_num, align 8
  %call2 = tail call i32 @ubi_sync(i32 noundef %9) #10
  tail call void @up_write(ptr noundef %i_rwsem.i) #10
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubi_cdev_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %req = alloca %struct.ubi_mkvol_req, align 4
  %req78 = alloca %struct.ubi_rsvol_req, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %call = tail call zeroext i1 @capable(i32 noundef 24) #10
  br i1 %call, label %if.end, label %entry.cleanup190_crit_edge

entry.cleanup190_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup190

if.end:                                           ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %1 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_mapping, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_rdev.i, align 8
  %shr.i = lshr i32 %6, 20
  %call2 = tail call ptr @ubi_get_by_major(i32 noundef %shr.i) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup190_crit_edge, label %if.end4

if.end.cleanup190_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup190

if.end4:                                          ; preds = %if.end
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %cmd, label %if.end4.sw.epilog_crit_edge [
    i32 1083731712, label %sw.bb
    i32 1074032385, label %sw.bb34
    i32 1074556674, label %sw.bb77
    i32 1360031491, label %sw.bb122
    i32 1074032388, label %sw.bb153
    i32 1074032389, label %sw.bb171
  ]

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %req) #10
  %8 = call ptr @memset(ptr %req, i32 255, i32 152)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_cdev_ioctl.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_cdev_ioctl, %if.then9)) #10
          to label %if.end8.i.i [label %if.then9], !srcloc !119

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i305 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i305 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_cdev_ioctl.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.31, i32 noundef %14) #10
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then9, %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 152, i32 -1226833920) #14, !srcloc !124
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !120

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req, i32 noundef 152) #10
  %16 = call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !125
  %and.i.i.i.i = and i32 %18, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %req, ptr noundef %0, i32 noundef 152) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end15, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !120

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i318 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 152, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 152, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 152, %res.0.i.i318
  %add.ptr.i.i = getelementptr i8, ptr %req, i32 %sub.i.i
  %19 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i318)
  br label %cleanup

if.end15:                                         ; preds = %if.end.i.i
  %call16 = call fastcc i32 @verify_mkvol_req(ptr noundef nonnull %call2, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %device_mutex = getelementptr inbounds %struct.ubi_device, ptr %call2, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %device_mutex, i32 noundef 0) #10
  %call20 = call i32 @ubi_create_volume(ptr noundef nonnull %call2, ptr noundef nonnull %req) #10
  call void @mutex_unlock(ptr noundef %device_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool22.not = icmp eq i32 %call20, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %req, align 4
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 869) #10
  %22 = call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !125
  %and.i = and i32 %24, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %25 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %21, i32 -1226833921) #10, !srcloc !131
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool31.not = icmp eq i32 %25, 0
  %spec.store.select = select i1 %tobool31.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then11.i.i
  %err.0 = phi i32 [ %spec.store.select, %if.end24 ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %req) #10
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_cdev_ioctl.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_cdev_ioctl, %if.then48)) #10
          to label %do.end54 [label %if.then48], !srcloc !119

if.then48:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  %26 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i306 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i306 to ptr
  %task50 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task50, align 8
  %pid51 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid51, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_cdev_ioctl.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.32, i32 noundef %31) #10
  br label %do.end54

do.end54:                                         ; preds = %if.then48, %sw.bb34
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 882) #10
  %32 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i241 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i241 to ptr
  %cpu_domain.i.i242 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i242) #4, !srcloc !125
  %and.i243 = and i32 %34, -13
  %or.i244 = or i32 %and.i243, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i244) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %35 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #10, !srcloc !132
  %asmresult = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool65.not = icmp eq i32 %asmresult, 0
  br i1 %tobool65.not, label %if.end67, label %do.end54.sw.epilog_crit_edge

do.end54.sw.epilog_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end67:                                         ; preds = %do.end54
  %asmresult63 = extractvalue { i32, i32 } %35, 1
  %ubi_num = getelementptr inbounds %struct.ubi_device, ptr %call2, i32 0, i32 2
  %36 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ubi_num, align 8
  %call68 = tail call ptr @ubi_open_volume(i32 noundef %37, i32 noundef %asmresult63, i32 noundef 3) #10
  %cmp.i = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %call68 to i32
  br label %sw.epilog

if.end72:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %device_mutex73 = getelementptr inbounds %struct.ubi_device, ptr %call2, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %device_mutex73, i32 noundef 0) #10
  %call74 = tail call i32 @ubi_remove_volume(ptr noundef %call68, i32 noundef 0) #10
  tail call void @mutex_unlock(ptr noundef %device_mutex73) #10
  tail call void @ubi_close_volume(ptr noundef %call68) #10
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req78) #10
  %39 = ptrtoint ptr %req78 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -1, ptr %req78, align 8, !annotation !123
  %40 = getelementptr inbounds %struct.ubi_rsvol_req, ptr %req78, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %40, align 8, !annotation !123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_cdev_ioctl.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_cdev_ioctl, %if.then91)) #10
          to label %if.end8.i.i251 [label %if.then91], !srcloc !119

if.then91:                                        ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #12
  %42 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i307 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i307 to ptr
  %task93 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task93 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task93, align 8
  %pid94 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %46 = ptrtoint ptr %pid94 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pid94, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_cdev_ioctl.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.33, i32 noundef %47) #10
  br label %if.end8.i.i251

if.end8.i.i251:                                   ; preds = %if.then91, %sw.bb77
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #10
  %call.i.i252 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i252, label %if.end8.i.i251.if.then11.i.i268_crit_edge, label %land.lhs.true.i.i255

if.end8.i.i251.if.then11.i.i268_crit_edge:        ; preds = %if.end8.i.i251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i268

land.lhs.true.i.i255:                             ; preds = %if.end8.i.i251
  %48 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 12, i32 -1226833920) #14, !srcloc !124
  %asmresult.i.i253 = extractvalue { i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i253)
  %cmp.i6.i254 = icmp eq i32 %asmresult.i.i253, 0
  br i1 %cmp.i6.i254, label %if.end.i.i265, label %land.lhs.true.i.i255.if.then11.i.i268_crit_edge, !prof !120

land.lhs.true.i.i255.if.then11.i.i268_crit_edge:  ; preds = %land.lhs.true.i.i255
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i268

if.end.i.i265:                                    ; preds = %land.lhs.true.i.i255
  %call.i.i.i256 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req78, i32 noundef 12) #10
  %49 = call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i.i.i.i257 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i.i257 to ptr
  %cpu_domain.i.i.i.i.i258 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 4
  %51 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i258) #4, !srcloc !125
  %and.i.i.i.i259 = and i32 %51, -13
  %or.i.i.i.i260 = or i32 %and.i.i.i.i259, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i260) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %call1.i.i.i261 = call i32 @arm_copy_from_user(ptr noundef nonnull %req78, ptr noundef %0, i32 noundef 12) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i261)
  %tobool4.not.i.i264 = icmp eq i32 %call1.i.i.i261, 0
  br i1 %tobool4.not.i.i264, label %if.end101, label %if.end.i.i265.if.then11.i.i268_crit_edge, !prof !120

if.end.i.i265.if.then11.i.i268_crit_edge:         ; preds = %if.end.i.i265
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i268

if.then11.i.i268:                                 ; preds = %if.end.i.i265.if.then11.i.i268_crit_edge, %land.lhs.true.i.i255.if.then11.i.i268_crit_edge, %if.end8.i.i251.if.then11.i.i268_crit_edge
  %res.0.i.i263325 = phi i32 [ %call1.i.i.i261, %if.end.i.i265.if.then11.i.i268_crit_edge ], [ 12, %if.end8.i.i251.if.then11.i.i268_crit_edge ], [ 12, %land.lhs.true.i.i255.if.then11.i.i268_crit_edge ]
  %sub.i.i266 = sub i32 12, %res.0.i.i263325
  %add.ptr.i.i267 = getelementptr i8, ptr %req78, i32 %sub.i.i266
  %52 = call ptr @memset(ptr %add.ptr.i.i267, i32 0, i32 %res.0.i.i263325)
  br label %cleanup120

if.end101:                                        ; preds = %if.end.i.i265
  %53 = ptrtoint ptr %req78 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %req78, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %54)
  %cmp.i308 = icmp slt i64 %54, 1
  br i1 %cmp.i308, label %if.end101.cleanup120_crit_edge, label %if.end.i

if.end101.cleanup120_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup120

if.end.i:                                         ; preds = %if.end101
  %55 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp1.i = icmp slt i32 %56, 0
  br i1 %cmp1.i, label %if.end.i.cleanup120_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup120_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup120

lor.lhs.false.i:                                  ; preds = %if.end.i
  %vtbl_slots.i = getelementptr inbounds %struct.ubi_device, ptr %call2, i32 0, i32 15
  %57 = ptrtoint ptr %vtbl_slots.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vtbl_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp3.not.i = icmp slt i32 %56, %58
  br i1 %cmp3.not.i, label %if.end105, label %lor.lhs.false.i.cleanup120_crit_edge

lor.lhs.false.i.cleanup120_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup120

if.end105:                                        ; preds = %lor.lhs.false.i
  %ubi_num106 = getelementptr inbounds %struct.ubi_device, ptr %call2, i32 0, i32 2
  %59 = ptrtoint ptr %ubi_num106 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ubi_num106, align 8
  %61 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %40, align 8
  %call108 = call ptr @ubi_open_volume(i32 noundef %60, i32 noundef %62, i32 noundef 3) #10
  %cmp.i310 = icmp ugt ptr %call108, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i310, label %if.then110, label %if.end112

if.then110:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %call108 to i32
  br label %cleanup120

if.end112:                                        ; preds = %if.end105
  %64 = ptrtoint ptr %req78 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %req78, align 8
  %66 = ptrtoint ptr %call108 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call108, align 4
  %usable_leb_size = getelementptr inbounds %struct.ubi_volume, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %usable_leb_size, align 4
  %conv = sext i32 %69 to i64
  %add = add i64 %65, -1
  %sub = add i64 %add, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp164.i.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !120

if.then168.i.i:                                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i.i = trunc i64 %sub to i32
  %div172.i.i = udiv i32 %conv169.i.i, %69
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  %70 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %69, i64 %sub) #14, !srcloc !121
  %asmresult1.i.i.i = extractvalue { i64, i64 } %70, 1
  %extract.t337 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t337, %if.else174.i.i ]
  %device_mutex117 = getelementptr inbounds %struct.ubi_device, ptr %call2, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %device_mutex117, i32 noundef 0) #10
  %call118 = call i32 @ubi_resize_volume(ptr noundef %call108, i32 noundef %dividend.addr.0.i.i.off0) #10
  call void @mutex_unlock(ptr noundef %device_mutex117) #10
  call void @ubi_close_volume(ptr noundef %call108) #10
  br label %cleanup120

cleanup120:                                       ; preds = %div_u64.exit, %if.then110, %lor.lhs.false.i.cleanup120_crit_edge, %if.end.i.cleanup120_crit_edge, %if.end101.cleanup120_crit_edge, %if.then11.i.i268
  %err.2 = phi i32 [ %63, %if.then110 ], [ %call118, %div_u64.exit ], [ -14, %if.then11.i.i268 ], [ -22, %if.end101.cleanup120_crit_edge ], [ -22, %if.end.i.cleanup120_crit_edge ], [ -22, %lor.lhs.false.i.cleanup120_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req78) #10
  br label %sw.epilog

sw.bb122:                                         ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_cdev_ioctl.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_cdev_ioctl, %if.then136)) #10
          to label %do.end142 [label %if.then136], !srcloc !119

if.then136:                                       ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #12
  %71 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i314 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i314 to ptr
  %task138 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %task138 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task138, align 8
  %pid139 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 68
  %75 = ptrtoint ptr %pid139 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pid139, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_cdev_ioctl.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.34, i32 noundef %76) #10
  br label %do.end142

do.end142:                                        ; preds = %if.then136, %sw.bb122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %77 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 3264, i32 noundef 4368) #16
  %tobool144.not = icmp eq ptr %call7.i, null
  br i1 %tobool144.not, label %do.end142.sw.epilog_crit_edge, label %if.end8.i.i277

do.end142.sw.epilog_crit_edge:                    ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end8.i.i277:                                   ; preds = %do.end142
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #10
  %call.i.i278 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i278, label %if.end8.i.i277.if.then11.i.i294_crit_edge, label %land.lhs.true.i.i281

if.end8.i.i277.if.then11.i.i294_crit_edge:        ; preds = %if.end8.i.i277
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i294

land.lhs.true.i.i281:                             ; preds = %if.end8.i.i277
  %78 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4368, i32 -1226833920) #14, !srcloc !124
  %asmresult.i.i279 = extractvalue { i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i279)
  %cmp.i6.i280 = icmp eq i32 %asmresult.i.i279, 0
  br i1 %cmp.i6.i280, label %if.end.i.i291, label %land.lhs.true.i.i281.if.then11.i.i294_crit_edge, !prof !120

land.lhs.true.i.i281.if.then11.i.i294_crit_edge:  ; preds = %land.lhs.true.i.i281
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i294

if.end.i.i291:                                    ; preds = %land.lhs.true.i.i281
  %call.i.i.i282 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef 4368) #10
  %79 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i.i.i.i283 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i.i283 to ptr
  %cpu_domain.i.i.i.i.i284 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 4
  %81 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i284) #4, !srcloc !125
  %and.i.i.i.i285 = and i32 %81, -13
  %or.i.i.i.i286 = or i32 %and.i.i.i.i285, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i286) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %call1.i.i.i287 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call7.i, ptr noundef %0, i32 noundef 4368) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i287)
  %tobool4.not.i.i290 = icmp eq i32 %call1.i.i.i287, 0
  br i1 %tobool4.not.i.i290, label %if.end150, label %if.end.i.i291.if.then11.i.i294_crit_edge, !prof !120

if.end.i.i291.if.then11.i.i294_crit_edge:         ; preds = %if.end.i.i291
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i294

if.then11.i.i294:                                 ; preds = %if.end.i.i291.if.then11.i.i294_crit_edge, %land.lhs.true.i.i281.if.then11.i.i294_crit_edge, %if.end8.i.i277.if.then11.i.i294_crit_edge
  %res.0.i.i289333 = phi i32 [ %call1.i.i.i287, %if.end.i.i291.if.then11.i.i294_crit_edge ], [ 4368, %if.end8.i.i277.if.then11.i.i294_crit_edge ], [ 4368, %land.lhs.true.i.i281.if.then11.i.i294_crit_edge ]
  %sub.i.i292 = sub i32 4368, %res.0.i.i289333
  %add.ptr.i.i293 = getelementptr i8, ptr %call7.i, i32 %sub.i.i292
  %82 = call ptr @memset(ptr %add.ptr.i.i293, i32 0, i32 %res.0.i.i289333)
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %sw.epilog

if.end150:                                        ; preds = %if.end.i.i291
  call void @__sanitizer_cov_trace_pc() #12
  %call151 = tail call fastcc i32 @rename_volumes(ptr noundef nonnull %call2, ptr noundef nonnull %call7.i)
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %sw.epilog

sw.bb153:                                         ; preds = %if.end4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 969) #10
  %83 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i297 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i297 to ptr
  %cpu_domain.i.i298 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 4
  %85 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i298) #4, !srcloc !125
  %and.i299 = and i32 %85, -13
  %or.i300 = or i32 %and.i299, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i300) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %86 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #10, !srcloc !133
  %asmresult163 = extractvalue { i32, i32 } %86, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult163)
  %tobool166.not = icmp eq i32 %asmresult163, 0
  br i1 %tobool166.not, label %if.end168, label %sw.bb153.sw.epilog_crit_edge

sw.bb153.sw.epilog_crit_edge:                     ; preds = %sw.bb153
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end168:                                        ; preds = %sw.bb153
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult164 = extractvalue { i32, i32 } %86, 1
  %call169 = tail call i32 @ubi_bitflip_check(ptr noundef nonnull %call2, i32 noundef %asmresult164, i32 noundef 0) #10
  br label %sw.epilog

sw.bb171:                                         ; preds = %if.end4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 984) #10
  %87 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i301 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i301 to ptr
  %cpu_domain.i.i302 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 4
  %89 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i302) #4, !srcloc !125
  %and.i303 = and i32 %89, -13
  %or.i304 = or i32 %and.i303, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i304) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %90 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #10, !srcloc !134
  %asmresult182 = extractvalue { i32, i32 } %90, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult182)
  %tobool185.not = icmp eq i32 %asmresult182, 0
  br i1 %tobool185.not, label %if.end187, label %sw.bb171.sw.epilog_crit_edge

sw.bb171.sw.epilog_crit_edge:                     ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end187:                                        ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult183 = extractvalue { i32, i32 } %90, 1
  %call188 = tail call i32 @ubi_bitflip_check(ptr noundef nonnull %call2, i32 noundef %asmresult183, i32 noundef 1) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end187, %sw.bb171.sw.epilog_crit_edge, %if.end168, %sw.bb153.sw.epilog_crit_edge, %if.end150, %if.then11.i.i294, %do.end142.sw.epilog_crit_edge, %cleanup120, %if.end72, %if.then70, %do.end54.sw.epilog_crit_edge, %cleanup, %if.end4.sw.epilog_crit_edge
  %err.6 = phi i32 [ %err.2, %cleanup120 ], [ %err.0, %cleanup ], [ %38, %if.then70 ], [ %call74, %if.end72 ], [ -14, %do.end54.sw.epilog_crit_edge ], [ -14, %if.then11.i.i294 ], [ %call151, %if.end150 ], [ -12, %do.end142.sw.epilog_crit_edge ], [ %call169, %if.end168 ], [ -14, %sw.bb153.sw.epilog_crit_edge ], [ %call188, %if.end187 ], [ -14, %sw.bb171.sw.epilog_crit_edge ], [ -25, %if.end4.sw.epilog_crit_edge ]
  call void @ubi_put_device(ptr noundef nonnull %call2) #10
  br label %cleanup190

cleanup190:                                       ; preds = %sw.epilog, %if.end.cleanup190_crit_edge, %entry.cleanup190_crit_edge
  %retval.0 = phi i32 [ %err.6, %sw.epilog ], [ -1, %entry.cleanup190_crit_edge ], [ -19, %if.end.cleanup190_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_cdev_ioctl(ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %req = alloca %struct.ubi_attach_req, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %call = tail call zeroext i1 @capable(i32 noundef 24) #10
  br i1 %call, label %if.end, label %entry.cleanup71_crit_edge

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup71

if.end:                                           ; preds = %entry
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %cmd, label %if.end.cleanup71_crit_edge [
    i32 1075343168, label %sw.bb
    i32 1074032449, label %sw.bb35
  ]

if.end.cleanup71_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup71

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req) #10
  %2 = getelementptr inbounds %struct.ubi_attach_req, ptr %req, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ubi_attach_req, ptr %req, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ubi_attach_req, ptr %req, i32 0, i32 3
  %5 = call ptr @memset(ptr %req, i32 255, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ctrl_cdev_ioctl.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ctrl_cdev_ioctl, %if.then4)) #10
          to label %if.end8.i.i [label %if.then4], !srcloc !119

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %6 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i89 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i89 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ctrl_cdev_ioctl.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.44, i32 noundef %11) #10
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then4, %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 24, i32 -1226833920) #14, !srcloc !124
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !120

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req, i32 noundef 24) #10
  %13 = call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !125
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %req, ptr noundef %0, i32 noundef 24) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end10, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !120

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i94 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i94
  %add.ptr.i.i = getelementptr i8, ptr %req, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i94)
  br label %cleanup

if.end10:                                         ; preds = %if.end.i.i
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %lor.lhs.false

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  %19 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %20)
  %21 = icmp sgt i32 %20, -2
  br i1 %21, label %if.end15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %call17 = call ptr @get_mtd_device(ptr noundef null, i32 noundef %18) #10
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  call void @mutex_lock_nested(ptr noundef nonnull @ubi_devices_mutex, i32 noundef 0) #10
  %23 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %req, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %4, align 4
  %conv = sext i16 %28 to i32
  %call23 = call i32 @ubi_attach_mtd_dev(ptr noundef %call17, i32 noundef %24, i32 noundef %26, i32 noundef %conv) #10
  call void @mutex_unlock(ptr noundef nonnull @ubi_devices_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  call void @put_mtd_device(ptr noundef %call17) #10
  br label %cleanup

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1050) #10
  %29 = call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !125
  %and.i = and i32 %31, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %32 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %call23, i32 -1226833921) #10, !srcloc !135
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #10, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then26, %if.then19, %lor.lhs.false.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then11.i.i
  %err.1 = phi i32 [ %22, %if.then19 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ %call23, %if.then26 ], [ %32, %if.else ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req) #10
  br label %cleanup71

sw.bb35:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ctrl_cdev_ioctl.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ctrl_cdev_ioctl, %if.then49)) #10
          to label %do.end55 [label %if.then49], !srcloc !119

if.then49:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #12
  %33 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i90 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i90 to ptr
  %task51 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task51, align 8
  %pid52 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 68
  %37 = ptrtoint ptr %pid52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid52, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ctrl_cdev_ioctl.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.45, i32 noundef %38) #10
  br label %do.end55

do.end55:                                         ; preds = %if.then49, %sw.bb35
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1061) #10
  %39 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i85 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i85 to ptr
  %cpu_domain.i.i86 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i86) #4, !srcloc !125
  %and.i87 = and i32 %41, -13
  %or.i88 = or i32 %and.i87, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i88) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %42 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #10, !srcloc !136
  %asmresult = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool66.not = icmp eq i32 %asmresult, 0
  br i1 %tobool66.not, label %if.end68, label %do.end55.cleanup71_crit_edge

do.end55.cleanup71_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup71

if.end68:                                         ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult64 = extractvalue { i32, i32 } %42, 1
  tail call void @mutex_lock_nested(ptr noundef nonnull @ubi_devices_mutex, i32 noundef 0) #10
  %call69 = tail call i32 @ubi_detach_mtd_dev(i32 noundef %asmresult64, i32 noundef 0) #10
  tail call void @mutex_unlock(ptr noundef nonnull @ubi_devices_mutex) #10
  br label %cleanup71

cleanup71:                                        ; preds = %if.end68, %do.end55.cleanup71_crit_edge, %cleanup, %if.end.cleanup71_crit_edge, %entry.cleanup71_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup71_crit_edge ], [ %err.1, %cleanup ], [ %call69, %if.end68 ], [ -14, %do.end55.cleanup71_crit_edge ], [ -25, %if.end.cleanup71_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fixed_size_llseek(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_read_leb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vol_cdev_direct_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %offp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ubi2 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ubi2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ubi2, align 8
  %direct_writes = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %direct_writes to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %direct_writes, align 8
  %7 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vol_cdev_direct_write.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vol_cdev_direct_write, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !119

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = tail call i32 @llvm.read_register.i32(metadata !109) #10
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
  %14 = ptrtoint ptr %offp to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %offp, align 8
  %vol_id = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vol_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vol_cdev_direct_write.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.13, i32 noundef %13, i32 noundef %count, i64 noundef %15, i32 noundef %17) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %vol_type = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 10
  %18 = ptrtoint ptr %vol_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vol_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp = icmp eq i32 %19, 4
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %20 = ptrtoint ptr %offp to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %offp, align 8
  %usable_leb_size = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %usable_leb_size, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %21)
  %cmp164.i = icmp ult i64 %21, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !120

if.then168.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i = trunc i64 %21 to i32
  %conv169.i.frozen = freeze i32 %conv169.i
  %.frozen = freeze i32 %23
  %div172.i = udiv i32 %conv169.i.frozen, %.frozen
  %24 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %conv169.i.frozen, %24
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %23, i64 %21) #14, !srcloc !121
  %asmresult.i261.i = extractvalue { i64, i64 } %25, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %25, 1
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %extract.t169 = trunc i64 %asmresult1.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %dividend.addr.0.i.off0 = phi i32 [ %div172.i, %if.then168.i ], [ %extract.t169, %if.else174.i ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %min_io_size = getelementptr inbounds %struct.ubi_device, ptr %5, i32 0, i32 67
  %26 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %min_io_size, align 4
  %sub = add i32 %27, -1
  %and = and i32 %sub, %__rem.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %5, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end14:                                         ; preds = %div_u64_rem.exit
  %conv15 = zext i32 %count to i64
  %add = add i64 %21, %conv15
  %used_bytes = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 14
  %28 = ptrtoint ptr %used_bytes to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %used_bytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %29)
  %cmp16 = icmp sgt i64 %add, %29
  %sub20 = sub i64 %29, %21
  %conv21 = trunc i64 %sub20 to i32
  %count.addr.0 = select i1 %cmp16, i32 %conv21, i32 %count
  %and25 = and i32 %count.addr.0, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %5, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.0, i32 %23)
  %cmp30 = icmp ult i32 %count.addr.0, %23
  %add35 = add i32 %count.addr.0, %sub
  %neg = sub i32 0, %27
  %and38 = and i32 %add35, %neg
  %tbuf_size.0 = select i1 %cmp30, i32 %and38, i32 %23
  %call40 = tail call noalias ptr @vmalloc(i32 noundef %tbuf_size.0) #13
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.end28.cleanup_crit_edge, label %if.end43

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end43:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0)
  %tobool46.not182 = icmp eq i32 %count.addr.0, 0
  br i1 %tobool46.not182, label %if.end43.while.cond._crit_edge_crit_edge, label %while.body.lr.ph

if.end43.while.cond._crit_edge_crit_edge:         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond._crit_edge

while.body.lr.ph:                                 ; preds = %if.end43
  %30 = tail call i32 @llvm.umin.i32(i32 %count.addr.0, i32 %tbuf_size.0)
  br label %while.body

while.body:                                       ; preds = %if.end64.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.0187 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %if.end64.while.body_crit_edge ]
  %count.addr.1186 = phi i32 [ %count.addr.0, %while.body.lr.ph ], [ %sub74, %if.end64.while.body_crit_edge ]
  %len.0185 = phi i32 [ %30, %while.body.lr.ph ], [ %42, %if.end64.while.body_crit_edge ]
  %lnum.0184 = phi i32 [ %dividend.addr.0.i.off0, %while.body.lr.ph ], [ %lnum.1, %if.end64.while.body_crit_edge ]
  %off.0183 = phi i32 [ %__rem.0.i, %while.body.lr.ph ], [ %off.1, %if.end64.while.body_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 292, i32 noundef 0) #10
  %call.i = tail call i32 @__cond_resched() #10
  %add49 = add i32 %len.0185, %off.0183
  %31 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %usable_leb_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add49, i32 %32)
  %cmp51.not = icmp slt i32 %add49, %32
  %sub55 = sub i32 %32, %off.0183
  %spec.select = select i1 %cmp51.not, i32 %len.0185, i32 %sub55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9.i.i = icmp slt i32 %spec.select, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %while.body
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.while.end.thread_crit_edge, label %if.then27.i.i, !prof !120

land.rhs16.i.i.while.end.thread_crit_edge:        ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %while.end.thread

if.then.i.i.i:                                    ; preds = %while.body
  tail call void @__check_object_size(ptr noundef nonnull %call40, i32 noundef %spec.select, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0187, i32 %spec.select, i32 -1226833920) #14, !srcloc !124
  %asmresult.i.i = extractvalue { i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !120

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call40, i32 noundef %spec.select) #10
  %34 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !125
  %and.i.i.i.i = and i32 %36, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call40, ptr noundef %buf.addr.0187, i32 noundef %spec.select) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %spec.select, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %spec.select, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end60, label %if.then11.i.i, !prof !120

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %spec.select, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call40, i32 %sub.i.i
  %37 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %while.end.thread

if.end60:                                         ; preds = %if.end.i.i
  %call61 = tail call i32 @ubi_eba_write_leb(ptr noundef %5, ptr noundef %3, i32 noundef %lnum.0184, ptr noundef nonnull %call40, i32 noundef %off.0183, i32 noundef %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.while.end.thread_crit_edge

if.end60.while.end.thread_crit_edge:              ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.thread

if.end64:                                         ; preds = %if.end60
  %add65 = add i32 %spec.select, %off.0183
  %38 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %usable_leb_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add65, i32 %39)
  %cmp67 = icmp eq i32 %add65, %39
  %sub72 = select i1 %cmp67, i32 %39, i32 0
  %off.1 = sub i32 %add65, %sub72
  %add70 = zext i1 %cmp67 to i32
  %lnum.1 = add i32 %lnum.0184, %add70
  %sub74 = sub i32 %count.addr.1186, %spec.select
  %conv75167 = zext i32 %spec.select to i64
  %40 = ptrtoint ptr %offp to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %offp, align 8
  %add76 = add i64 %41, %conv75167
  store i64 %add76, ptr %offp, align 8
  %add.ptr = getelementptr i8, ptr %buf.addr.0187, i32 %spec.select
  %42 = tail call i32 @llvm.umin.i32(i32 %sub74, i32 %tbuf_size.0)
  %tobool46.not = icmp eq i32 %sub74, 0
  br i1 %tobool46.not, label %if.end64.while.cond._crit_edge_crit_edge, label %if.end64.while.body_crit_edge

if.end64.while.body_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end64.while.cond._crit_edge_crit_edge:         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond._crit_edge

while.end.thread:                                 ; preds = %if.end60.while.end.thread_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.while.end.thread_crit_edge
  %err.1.ph = phi i32 [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.while.end.thread_crit_edge ], [ %call61, %if.end60.while.end.thread_crit_edge ]
  tail call void @vfree(ptr noundef nonnull %call40) #10
  br label %cleanup

while.cond._crit_edge:                            ; preds = %if.end64.while.cond._crit_edge_crit_edge, %if.end43.while.cond._crit_edge_crit_edge
  tail call void @vfree(ptr noundef nonnull %call40) #10
  br label %cleanup

cleanup:                                          ; preds = %while.cond._crit_edge, %while.end.thread, %if.end28.cleanup_crit_edge, %if.then27, %if.then13, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -22, %if.then27 ], [ -1, %entry.cleanup_crit_edge ], [ -30, %do.end.cleanup_crit_edge ], [ -12, %if.end28.cleanup_crit_edge ], [ %count.addr.0, %while.cond._crit_edge ], [ %err.1.ph, %while.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_more_update_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_more_leb_change_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @revoke_exclusive(ptr nocapture noundef %desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %ubi = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ubi, align 8
  %volumes_lock = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #10
  %readers = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %entry.do.end_crit_edge, !prof !120

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %writers = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %writers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %land.rhs, label %land.lhs.true.do.end_crit_edge, !prof !120

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.rhs:                                         ; preds = %land.lhs.true
  %metaonly = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %metaonly to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %metaonly, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.not = icmp eq i32 %9, 0
  br i1 %cmp3.not, label %land.rhs.do.body10_crit_edge, label %land.rhs.do.end_crit_edge, !prof !120

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.rhs.do.body10_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %10 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 76, i32 noundef %15) #15
  tail call void @dump_stack() #15
  br label %do.body10

do.body10:                                        ; preds = %do.end, %land.rhs.do.body10_crit_edge
  %exclusive = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %exclusive to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %exclusive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp11 = icmp eq i32 %17, 1
  br i1 %cmp11, label %land.rhs12, label %do.body10.do.end27_crit_edge, !prof !120

do.body10.do.end27_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

land.rhs12:                                       ; preds = %do.body10
  %mode13 = getelementptr inbounds %struct.ubi_volume_desc, ptr %desc, i32 0, i32 1
  %18 = ptrtoint ptr %mode13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp14.not = icmp eq i32 %19, 3
  br i1 %cmp14.not, label %land.rhs12.do.end35_crit_edge, label %land.rhs12.do.end27_crit_edge, !prof !120

land.rhs12.do.end27_crit_edge:                    ; preds = %land.rhs12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

land.rhs12.do.end35_crit_edge:                    ; preds = %land.rhs12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

do.end27:                                         ; preds = %land.rhs12.do.end27_crit_edge, %do.body10.do.end27_crit_edge
  %20 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i2 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i2 to ptr
  %task30 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task30, align 8
  %pid31 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid31, align 8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 77, i32 noundef %25) #15
  tail call void @dump_stack() #15
  br label %do.end35

do.end35:                                         ; preds = %do.end27, %land.rhs12.do.end35_crit_edge
  %26 = ptrtoint ptr %exclusive to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %exclusive, align 4
  %writers42 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %writers42 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %writers42, align 8
  %28 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ubi, align 8
  %volumes_lock53 = getelementptr inbounds %struct.ubi_device, ptr %29, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock53) #10
  %mode54 = getelementptr inbounds %struct.ubi_volume_desc, ptr %desc, i32 0, i32 1
  %30 = ptrtoint ptr %mode54 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %mode54, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_check_volume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_volume_notify(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_write_leb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_exclusive(ptr nocapture noundef %desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %ubi = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ubi, align 8
  %volumes_lock = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #10
  %readers = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %readers, align 4
  %writers = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %writers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writers, align 8
  %add = add i32 %7, %5
  %exclusive = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %exclusive to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %exclusive, align 4
  %add2 = add i32 %add, %9
  %metaonly = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %metaonly to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %metaonly, align 8
  %add3 = add i32 %add2, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add3)
  %cmp = icmp slt i32 %add3, 1
  br i1 %cmp, label %do.end9.thread, label %do.end9, !prof !137

do.end9.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = tail call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.22, i32 noundef 51, i32 noundef %17) #15
  tail call void @dump_stack() #15
  br label %if.else

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add3)
  %cmp10.not = icmp eq i32 %add3, 1
  br i1 %cmp10.not, label %do.end9.if.else_crit_edge, label %if.then11

do.end9.if.else_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ubi, align 8
  %vol_id = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vol_id, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %19, ptr noundef nonnull @.str.23, i32 noundef %add3, i32 noundef %21) #10
  br label %if.end18

if.else:                                          ; preds = %do.end9.if.else_crit_edge, %do.end9.thread
  %22 = ptrtoint ptr %metaonly to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %metaonly, align 8
  %23 = ptrtoint ptr %writers to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %writers, align 8
  %24 = ptrtoint ptr %readers to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %readers, align 4
  %25 = ptrtoint ptr %exclusive to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %exclusive, align 4
  %mode = getelementptr inbounds %struct.ubi_volume_desc, ptr %desc, i32 0, i32 1
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode, align 4
  store i32 3, ptr %mode, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then11
  %err.0 = phi i32 [ -16, %if.then11 ], [ %27, %if.else ]
  %28 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ubi, align 8
  %volumes_lock20 = getelementptr inbounds %struct.ubi_device, ptr %29, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock20) #10
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_start_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_start_leb_change(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_unmap_leb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_wl_flush(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_is_mapped(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_get_volume_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubiblock_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubiblock_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_major2num(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_open_volume(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_close_volume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_sync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_get_by_major(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @verify_mkvol_req(ptr noundef %ubi, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bytes = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %bytes to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %bytes, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %entry.bad_crit_edge, label %lor.lhs.false

entry.bad_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

lor.lhs.false:                                    ; preds = %entry
  %alignment = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %alignment to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %alignment, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %lor.lhs.false.bad_crit_edge, label %lor.lhs.false2

lor.lhs.false.bad_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vol_type = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %vol_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vol_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp3 = icmp slt i8 %5, 0
  br i1 %cmp3, label %lor.lhs.false2.bad_crit_edge, label %lor.lhs.false5

lor.lhs.false2.bad_crit_edge:                     ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %name_len = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 5
  %6 = ptrtoint ptr %name_len to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %name_len, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp7 = icmp slt i16 %7, 0
  br i1 %cmp7, label %lor.lhs.false5.bad_crit_edge, label %if.end

lor.lhs.false5.bad_crit_edge:                     ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end:                                           ; preds = %lor.lhs.false5
  %8 = ptrtoint ptr %req to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %req, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9 = icmp slt i32 %9, 0
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end
  %vtbl_slots = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  %10 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vtbl_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp13.not = icmp sge i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21.old = icmp eq i32 %3, 0
  %or.cond122 = select i1 %cmp13.not, i1 true, i1 %cmp21.old
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp26 = icmp eq i64 %1, 0
  %or.cond123 = select i1 %or.cond122, i1 true, i1 %cmp26
  br i1 %or.cond123, label %lor.lhs.false11.bad_crit_edge, label %lor.lhs.false11.if.end29_crit_edge

lor.lhs.false11.if.end29_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

lor.lhs.false11.bad_crit_edge:                    ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp16.not = icmp ne i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21 = icmp eq i32 %3, 0
  %or.cond = select i1 %cmp16.not, i1 true, i1 %cmp21
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp26.old = icmp eq i64 %1, 0
  %or.cond124 = select i1 %or.cond, i1 true, i1 %cmp26.old
  br i1 %or.cond124, label %land.lhs.true.bad_crit_edge, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true.bad_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %lor.lhs.false11.if.end29_crit_edge
  %.off = add nsw i8 %5, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end40, label %if.end29.bad_crit_edge

if.end29.bad_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end40:                                         ; preds = %if.end29
  %flags = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 1
  %conv41 = zext i8 %13 to i32
  %and = and i32 %conv41, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end43, label %if.end40.bad_crit_edge

if.end40.bad_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end43:                                         ; preds = %if.end40
  %and46 = and i32 %conv41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp51.not = icmp eq i8 %5, 4
  %or.cond125 = select i1 %tobool47.not, i1 true, i1 %cmp51.not
  br i1 %or.cond125, label %if.end54, label %if.end43.bad_crit_edge

if.end43.bad_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end54:                                         ; preds = %if.end43
  %leb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 70
  %14 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %15)
  %cmp56 = icmp sgt i32 %3, %15
  br i1 %cmp56, label %if.end54.bad_crit_edge, label %if.end59

if.end54.bad_crit_edge:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end59:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp63.not = icmp eq i32 %3, 1
  br i1 %cmp63.not, label %if.end59.if.end68_crit_edge, label %land.lhs.true65

if.end59.if.end68_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

land.lhs.true65:                                  ; preds = %if.end59
  %min_io_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 67
  %16 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min_io_size, align 4
  %sub = add i32 %17, -1
  %and61 = and i32 %sub, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool66.not = icmp eq i32 %and61, 0
  br i1 %tobool66.not, label %land.lhs.true65.if.end68_crit_edge, label %land.lhs.true65.bad_crit_edge

land.lhs.true65.bad_crit_edge:                    ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

land.lhs.true65.if.end68_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.end68:                                         ; preds = %land.lhs.true65.if.end68_crit_edge, %if.end59.if.end68_crit_edge
  %name = getelementptr inbounds %struct.ubi_mkvol_req, ptr %req, i32 0, i32 7
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool69.not = icmp eq i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool72.not = icmp eq i16 %7, 0
  %or.cond126 = select i1 %tobool69.not, i1 true, i1 %tobool72.not
  br i1 %or.cond126, label %if.end68.bad_crit_edge, label %if.end74

if.end68.bad_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %7)
  %cmp77 = icmp ugt i16 %7, 127
  br i1 %cmp77, label %if.end74.bad_crit_edge, label %if.end80

if.end74.bad_crit_edge:                           ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end80:                                         ; preds = %if.end74
  %conv76121 = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv76121, 1
  %call = tail call i32 @strnlen(ptr noundef %name, i32 noundef %add) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv76121)
  %cmp86.not = icmp eq i32 %call, %conv76121
  br i1 %cmp86.not, label %if.end80.cleanup_crit_edge, label %if.end80.bad_crit_edge

if.end80.bad_crit_edge:                           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

bad:                                              ; preds = %if.end80.bad_crit_edge, %if.end74.bad_crit_edge, %if.end68.bad_crit_edge, %land.lhs.true65.bad_crit_edge, %if.end54.bad_crit_edge, %if.end43.bad_crit_edge, %if.end40.bad_crit_edge, %if.end29.bad_crit_edge, %land.lhs.true.bad_crit_edge, %lor.lhs.false11.bad_crit_edge, %lor.lhs.false5.bad_crit_edge, %lor.lhs.false2.bad_crit_edge, %lor.lhs.false.bad_crit_edge, %entry.bad_crit_edge
  %err.0 = phi i32 [ -22, %entry.bad_crit_edge ], [ -22, %lor.lhs.false.bad_crit_edge ], [ -22, %lor.lhs.false2.bad_crit_edge ], [ -22, %lor.lhs.false5.bad_crit_edge ], [ -22, %land.lhs.true.bad_crit_edge ], [ -22, %if.end40.bad_crit_edge ], [ -22, %if.end54.bad_crit_edge ], [ -22, %land.lhs.true65.bad_crit_edge ], [ -22, %if.end80.bad_crit_edge ], [ -22, %if.end68.bad_crit_edge ], [ -22, %if.end29.bad_crit_edge ], [ -36, %if.end74.bad_crit_edge ], [ -22, %lor.lhs.false11.bad_crit_edge ], [ -22, %if.end43.bad_crit_edge ]
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.35) #10
  tail call void @ubi_dump_mkvol_req(ptr noundef %req) #10
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end80.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %bad ], [ 0, %if.end80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_create_volume(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_remove_volume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_resize_volume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rename_volumes(ptr noundef %ubi, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  %rename_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rename_list) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %rename_list, i32 0, i32 1
  %1 = ptrtoint ptr %req to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %req, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %3 = icmp ugt i32 %2, 32
  br i1 %3, label %entry.cleanup290_crit_edge, label %if.end

entry.cleanup290_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup290

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4 = icmp eq i32 %2, 0
  br i1 %cmp4, label %if.end.cleanup290_crit_edge, label %for.cond.preheader

if.end.cleanup290_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup290

for.cond.preheader:                               ; preds = %if.end
  %4 = ptrtoint ptr %req to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %req, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8448 = icmp sgt i32 %5, 0
  br i1 %cmp8448, label %for.body.lr.ph, label %for.cond.preheader.for.cond48.preheader_crit_edge

for.cond.preheader.for.cond48.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond48.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vtbl_slots = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  br label %for.body

for.cond:                                         ; preds = %if.end30
  %inc = add nuw nsw i32 %i.0449, 1
  %6 = ptrtoint ptr %req to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %req, align 1
  %cmp8 = icmp slt i32 %inc, %7
  br i1 %cmp8, label %for.cond.for.body_crit_edge, label %for.cond.for.cond48.preheader_crit_edge

for.cond.for.cond48.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond48.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond48.preheader:                             ; preds = %for.cond.for.cond48.preheader_crit_edge, %for.cond.preheader.for.cond48.preheader_crit_edge
  %.lcssa446 = phi i32 [ %5, %for.cond.preheader.for.cond48.preheader_crit_edge ], [ %7, %for.cond.for.cond48.preheader_crit_edge ]
  %sub = add i32 %.lcssa446, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp50452 = icmp sgt i32 %sub, 0
  br i1 %cmp50452, label %for.cond48.preheader.for.body52_crit_edge, label %for.cond48.preheader.for.end91_crit_edge

for.cond48.preheader.for.end91_crit_edge:         ; preds = %for.cond48.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end91

for.cond48.preheader.for.body52_crit_edge:        ; preds = %for.cond48.preheader
  br label %for.body52

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0449 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ubi_rnvol_req, ptr %req, i32 0, i32 2, i32 %i.0449
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9 = icmp slt i32 %9, 0
  br i1 %cmp9, label %for.body.cleanup290_crit_edge, label %lor.lhs.false10

for.body.cleanup290_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup290

lor.lhs.false10:                                  ; preds = %for.body
  %10 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vtbl_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp14.not = icmp slt i32 %9, %11
  br i1 %cmp14.not, label %if.end16, label %lor.lhs.false10.cleanup290_crit_edge

lor.lhs.false10.cleanup290_crit_edge:             ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup290

if.end16:                                         ; preds = %lor.lhs.false10
  %name_len = getelementptr %struct.ubi_rnvol_req, ptr %req, i32 0, i32 2, i32 %i.0449, i32 1
  %12 = ptrtoint ptr %name_len to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %name_len, align 1
  %conv = sext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp19 = icmp slt i16 %13, 0
  br i1 %cmp19, label %if.end16.cleanup290_crit_edge, label %if.end22

if.end16.cleanup290_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup290

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %13)
  %cmp27 = icmp ugt i16 %13, 127
  br i1 %cmp27, label %if.end22.cleanup290_crit_edge, label %if.end30

if.end22.cleanup290_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup290

if.end30:                                         ; preds = %if.end22
  %name = getelementptr %struct.ubi_rnvol_req, ptr %req, i32 0, i32 2, i32 %i.0449, i32 3
  %arrayidx36 = getelementptr %struct.ubi_rnvol_req, ptr %req, i32 0, i32 2, i32 %i.0449, i32 3, i32 %conv
  %14 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx36, align 1
  %call = tail call i32 @strlen(ptr noundef %name) #17
  %15 = ptrtoint ptr %name_len to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %name_len, align 1
  %conv43 = sext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv43)
  %cmp44.not = icmp eq i32 %call, %conv43
  br i1 %cmp44.not, label %for.cond, label %if.end30.cleanup290_crit_edge

if.end30.cleanup290_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup290

for.cond48.loopexit:                              ; preds = %for.cond53.for.cond48.loopexit_crit_edge, %for.body52.for.cond48.loopexit_crit_edge
  %exitcond480.not = icmp eq i32 %add, %sub
  br i1 %exitcond480.not, label %for.cond48.loopexit.for.end91_crit_edge, label %for.cond48.loopexit.for.body52_crit_edge

for.cond48.loopexit.for.body52_crit_edge:         ; preds = %for.cond48.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body52

for.cond48.loopexit.for.end91_crit_edge:          ; preds = %for.cond48.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end91

for.body52:                                       ; preds = %for.cond48.loopexit.for.body52_crit_edge, %for.cond48.preheader.for.body52_crit_edge
  %i.1453 = phi i32 [ %add, %for.cond48.loopexit.for.body52_crit_edge ], [ 0, %for.cond48.preheader.for.body52_crit_edge ]
  %add = add nuw nsw i32 %i.1453, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %.lcssa446)
  %cmp55450 = icmp slt i32 %add, %.lcssa446
  br i1 %cmp55450, label %for.body57.lr.ph, label %for.body52.for.cond48.loopexit_crit_edge

for.body52.for.cond48.loopexit_crit_edge:         ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond48.loopexit

for.body57.lr.ph:                                 ; preds = %for.body52
  %arrayidx59 = getelementptr %struct.ubi_rnvol_req, ptr %req, i32 0, i32 2, i32 %i.1453
  %17 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %arrayidx59, align 1
  %name73 = getelementptr %struct.ubi_rnvol_req, ptr %req, i32 0, i32 2, i32 %i.1453, i32 3
  br label %for.body57

for.cond53:                                       ; preds = %if.end70
  %inc87 = add nuw i32 %n.0451, 1
  %exitcond.not = icmp eq i32 %inc87, %.lcssa446
  br i1 %exitcond.not, label %for.cond53.for.cond48.loopexit_crit_edge, label %for.cond53.for.body57_crit_edge

for.cond53.for.body57_crit_edge:                  ; preds = %for.cond53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body57

for.cond53.for.cond48.loopexit_crit_edge:         ; preds = %for.cond53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond48.loopexit

for.body57:                                       ; preds = %for.cond53.for.body57_crit_edge, %for.body57.lr.ph
  %n.0451 = phi i32 [ %add, %for.body57.lr.ph ], [ %inc87, %for.cond53.for.body57_crit_edge ]
  %arrayidx62 = getelementptr %struct.ubi_rnvol_req, ptr %req, i32 0, i32 2, i32 %n.0451
  %19 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %arrayidx62, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp64 = icmp eq i32 %18, %20
  br i1 %cmp64, label %if.then66, label %if.end70

if.then66:                                        ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.36, i32 noundef %18) #10
  br label %cleanup290

if.end70:                                         ; preds = %for.body57
  %name77 = getelementptr %struct.ubi_rnvol_req, ptr %req, i32 0, i32 2, i32 %n.0451, i32 3
  %call79 = tail call i32 @strcmp(ptr noundef %name73, ptr noundef %name77) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool.not = icmp eq i32 %call79, 0
  br i1 %tobool.not, label %if.then80, label %for.cond53

if.then80:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.37, ptr noundef %name73) #10
  br label %cleanup290

for.end91:                                        ; preds = %for.cond48.loopexit.for.end91_crit_edge, %for.cond48.preheader.for.end91_crit_edge
  %21 = ptrtoint ptr %rename_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %rename_list, ptr %rename_list, align 4
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %rename_list, ptr %0, align 4
  %23 = ptrtoint ptr %req to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %req, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp94454 = icmp sgt i32 %24, 0
  br i1 %cmp94454, label %for.body96.lr.ph, label %for.end91.for.end151_crit_edge

for.end91.for.end151_crit_edge:                   ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end151

for.body96.lr.ph:                                 ; preds = %for.end91
  %ubi_num = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 2
  br label %for.body96

for.body96:                                       ; preds = %for.inc149.for.body96_crit_edge, %for.body96.lr.ph
  %i.2455 = phi i32 [ 0, %for.body96.lr.ph ], [ %inc150, %for.inc149.for.body96_crit_edge ]
  %arrayidx99 = getelementptr %struct.ubi_rnvol_req, ptr %req, i32 0, i32 2, i32 %i.2455
  %25 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %arrayidx99, align 1
  %name_len104 = getelementptr %struct.ubi_rnvol_req, ptr %req, i32 0, i32 2, i32 %i.2455, i32 1
  %27 = ptrtoint ptr %name_len104 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %name_len104, align 1
  %conv105 = sext i16 %28 to i32
  %name109 = getelementptr %struct.ubi_rnvol_req, ptr %req, i32 0, i32 2, i32 %i.2455, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 148) #16
  %tobool112.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool112.not, label %for.body96.out_free_crit_edge, label %if.end114

for.body96.out_free_crit_edge:                    ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end114:                                        ; preds = %for.body96
  %30 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ubi_num, align 8
  %call115 = call ptr @ubi_open_volume(i32 noundef %31, i32 noundef %26, i32 noundef 4) #10
  %desc = getelementptr inbounds %struct.ubi_rename_entry, ptr %call7.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call115, ptr %desc, align 8
  %cmp.i = icmp ugt ptr %call115, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then118, label %if.end121

if.then118:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %call115 to i32
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.38, i32 noundef %26, i32 noundef %33) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %out_free

if.end121:                                        ; preds = %if.end114
  %34 = ptrtoint ptr %call115 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call115, align 4
  %name_len123 = getelementptr inbounds %struct.ubi_volume, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %name_len123 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %name_len123, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv105)
  %cmp124 = icmp eq i32 %37, %conv105
  br i1 %cmp124, label %land.lhs.true, label %if.end121.if.end134_crit_edge

if.end121.if.end134_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

land.lhs.true:                                    ; preds = %if.end121
  %name128 = getelementptr inbounds %struct.ubi_volume, ptr %35, i32 0, i32 18
  %bcmp407 = call i32 @bcmp(ptr %name128, ptr %name109, i32 %conv105) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp407)
  %tobool131.not = icmp eq i32 %bcmp407, 0
  br i1 %tobool131.not, label %if.then132, label %land.lhs.true.if.end134_crit_edge

land.lhs.true.if.end134_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

if.then132:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubi_close_volume(ptr noundef %call115) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %for.inc149

if.end134:                                        ; preds = %land.lhs.true.if.end134_crit_edge, %if.end121.if.end134_crit_edge
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv105, ptr %call7.i.i, align 8
  %new_name = getelementptr inbounds %struct.ubi_rename_entry, ptr %call7.i.i, i32 0, i32 1
  %39 = call ptr @memcpy(ptr %new_name, ptr %name109, i32 %conv105)
  %list = getelementptr inbounds %struct.ubi_rename_entry, ptr %call7.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %41, ptr noundef nonnull %rename_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end134.list_add_tail.exit_crit_edge

if.end134.list_add_tail.exit_crit_edge:           ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %list, ptr %0, align 4
  %43 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %rename_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ubi_rename_entry, ptr %call7.i.i, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i, align 8
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %list, ptr %41, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end134.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rename_volumes.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rename_volumes, %if.then140)) #10
          to label %for.inc149 [label %if.then140], !srcloc !119

if.then140:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %46 = call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 68
  %50 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pid, align 8
  %52 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %desc, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %name144 = getelementptr inbounds %struct.ubi_volume, ptr %55, i32 0, i32 18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rename_volumes.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.40, i32 noundef %51, i32 noundef %26, ptr noundef %name144, ptr noundef %name109) #10
  br label %for.inc149

for.inc149:                                       ; preds = %if.then140, %list_add_tail.exit, %if.then132
  %inc150 = add nuw nsw i32 %i.2455, 1
  %56 = ptrtoint ptr %req to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %req, align 1
  %cmp94 = icmp slt i32 %inc150, %57
  br i1 %cmp94, label %for.inc149.for.body96_crit_edge, label %for.inc149.for.end151_crit_edge

for.inc149.for.end151_crit_edge:                  ; preds = %for.inc149
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end151

for.inc149.for.body96_crit_edge:                  ; preds = %for.inc149
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body96

for.end151:                                       ; preds = %for.inc149.for.end151_crit_edge, %for.end91.for.end151_crit_edge
  %58 = ptrtoint ptr %rename_list to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %rename_list, align 4
  %cmp.i413.not = icmp eq ptr %59, %rename_list
  br i1 %cmp.i413.not, label %for.end151.cleanup290_crit_edge, label %for.cond157.preheader

for.end151.cleanup290_crit_edge:                  ; preds = %for.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup290

for.cond157.preheader:                            ; preds = %for.end151
  %60 = ptrtoint ptr %rename_list to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn459 = load ptr, ptr %rename_list, align 4
  %cmp159.not461 = icmp eq ptr %.pn459, %rename_list
  br i1 %cmp159.not461, label %for.cond157.preheader.for.end262_crit_edge, label %for.cond169.preheader.lr.ph

for.cond157.preheader.for.end262_crit_edge:       ; preds = %for.cond157.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end262

for.cond169.preheader.lr.ph:                      ; preds = %for.cond157.preheader
  %ubi_num206 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 2
  br label %for.cond169.preheader

for.cond169.preheader:                            ; preds = %for.inc256.for.cond169.preheader_crit_edge, %for.cond169.preheader.lr.ph
  %.pn464 = phi ptr [ %.pn459, %for.cond169.preheader.lr.ph ], [ %.pn, %for.inc256.for.cond169.preheader_crit_edge ]
  %61 = ptrtoint ptr %rename_list to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn406456 = load ptr, ptr %rename_list, align 4
  %cmp171.not457 = icmp eq ptr %.pn406456, %rename_list
  br i1 %cmp171.not457, label %for.cond169.preheader.if.end205_crit_edge, label %for.body175.lr.ph

for.cond169.preheader.if.end205_crit_edge:        ; preds = %for.cond169.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end205

for.body175.lr.ph:                                ; preds = %for.cond169.preheader
  %re.0465 = getelementptr i8, ptr %.pn464, i32 -140
  %62 = ptrtoint ptr %re.0465 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %re.0465, align 4
  %new_name183 = getelementptr i8, ptr %.pn464, i32 -136
  br label %for.body175

for.body175:                                      ; preds = %for.inc196.for.body175_crit_edge, %for.body175.lr.ph
  %.pn406458 = phi ptr [ %.pn406456, %for.body175.lr.ph ], [ %.pn406, %for.inc196.for.body175_crit_edge ]
  %desc177 = getelementptr i8, ptr %.pn406458, i32 -4
  %64 = ptrtoint ptr %desc177 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %desc177, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %name_len179 = getelementptr inbounds %struct.ubi_volume, ptr %67, i32 0, i32 17
  %68 = ptrtoint ptr %name_len179 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %name_len179, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %69)
  %cmp180 = icmp eq i32 %63, %69
  br i1 %cmp180, label %land.lhs.true182, label %for.body175.for.inc196_crit_edge

for.body175.for.inc196_crit_edge:                 ; preds = %for.body175
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc196

land.lhs.true182:                                 ; preds = %for.body175
  %name187 = getelementptr inbounds %struct.ubi_volume, ptr %67, i32 0, i32 18
  %bcmp = call i32 @bcmp(ptr %new_name183, ptr %name187, i32 %63) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool193.not = icmp eq i32 %bcmp, 0
  br i1 %tobool193.not, label %land.lhs.true182.for.inc256_crit_edge, label %land.lhs.true182.for.inc196_crit_edge

land.lhs.true182.for.inc196_crit_edge:            ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc196

land.lhs.true182.for.inc256_crit_edge:            ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc256

for.inc196:                                       ; preds = %land.lhs.true182.for.inc196_crit_edge, %for.body175.for.inc196_crit_edge
  %70 = ptrtoint ptr %.pn406458 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn406 = load ptr, ptr %.pn406458, align 4
  %cmp171.not = icmp eq ptr %.pn406, %rename_list
  br i1 %cmp171.not, label %for.inc196.if.end205_crit_edge, label %for.inc196.for.body175_crit_edge

for.inc196.for.body175_crit_edge:                 ; preds = %for.inc196
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body175

for.inc196.if.end205_crit_edge:                   ; preds = %for.inc196
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end205

if.end205:                                        ; preds = %for.inc196.if.end205_crit_edge, %for.cond169.preheader.if.end205_crit_edge
  %71 = ptrtoint ptr %ubi_num206 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ubi_num206, align 8
  %new_name207 = getelementptr i8, ptr %.pn464, i32 -136
  %call209 = call ptr @ubi_open_volume_nm(i32 noundef %72, ptr noundef %new_name207, i32 noundef 3) #10
  %cmp.i414 = icmp ugt ptr %call209, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i414, label %if.then211, label %if.end219

if.then211:                                       ; preds = %if.end205
  %cmp213 = icmp eq ptr %call209, inttoptr (i32 -19 to ptr)
  br i1 %cmp213, label %if.then211.for.inc256_crit_edge, label %if.end216

if.then211.for.inc256_crit_edge:                  ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc256

if.end216:                                        ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %call209 to i32
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.41, ptr noundef %new_name207, i32 noundef %73) #10
  br label %out_free

if.end219:                                        ; preds = %if.end205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %74 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i415 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 3520, i32 noundef 148) #16
  %tobool221.not = icmp eq ptr %call7.i.i415, null
  br i1 %tobool221.not, label %if.then222, label %if.end223

if.then222:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubi_close_volume(ptr noundef %call209) #10
  br label %out_free

if.end223:                                        ; preds = %if.end219
  %remove = getelementptr inbounds %struct.ubi_rename_entry, ptr %call7.i.i415, i32 0, i32 2
  %75 = ptrtoint ptr %remove to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %remove, align 4
  %desc224 = getelementptr inbounds %struct.ubi_rename_entry, ptr %call7.i.i415, i32 0, i32 3
  %76 = ptrtoint ptr %desc224 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call209, ptr %desc224, align 8
  %list225 = getelementptr inbounds %struct.ubi_rename_entry, ptr %call7.i.i415, i32 0, i32 4
  %77 = ptrtoint ptr %rename_list to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rename_list, align 4
  %call.i.i416 = call zeroext i1 @__list_add_valid(ptr noundef %list225, ptr noundef nonnull %rename_list, ptr noundef %78) #10
  br i1 %call.i.i416, label %if.end.i.i418, label %if.end223.list_add.exit_crit_edge

if.end223.list_add.exit_crit_edge:                ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i418:                                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %list225, ptr %prev1.i.i, align 4
  %80 = ptrtoint ptr %list225 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %78, ptr %list225, align 4
  %prev3.i.i417 = getelementptr inbounds %struct.ubi_rename_entry, ptr %call7.i.i415, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %prev3.i.i417 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %rename_list, ptr %prev3.i.i417, align 8
  %82 = ptrtoint ptr %rename_list to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %list225, ptr %rename_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i418, %if.end223.list_add.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rename_volumes.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rename_volumes, %if.then238)) #10
          to label %for.inc256 [label %if.then238], !srcloc !119

if.then238:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %83 = call i32 @llvm.read_register.i32(metadata !109) #10
  %and.i419 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i419 to ptr
  %task240 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task240 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task240, align 8
  %pid241 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 68
  %87 = ptrtoint ptr %pid241 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pid241, align 8
  %89 = ptrtoint ptr %desc224 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %desc224, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %vol_id244 = getelementptr inbounds %struct.ubi_volume, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %vol_id244 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %vol_id244, align 4
  %name247 = getelementptr inbounds %struct.ubi_volume, ptr %92, i32 0, i32 18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rename_volumes.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.42, i32 noundef %88, i32 noundef %94, ptr noundef %name247) #10
  br label %for.inc256

for.inc256:                                       ; preds = %if.then238, %list_add.exit, %if.then211.for.inc256_crit_edge, %land.lhs.true182.for.inc256_crit_edge
  %95 = ptrtoint ptr %.pn464 to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pn = load ptr, ptr %.pn464, align 4
  %cmp159.not = icmp eq ptr %.pn, %rename_list
  br i1 %cmp159.not, label %for.inc256.for.end262_crit_edge, label %for.inc256.for.cond169.preheader_crit_edge

for.inc256.for.cond169.preheader_crit_edge:       ; preds = %for.inc256
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond169.preheader

for.inc256.for.end262_crit_edge:                  ; preds = %for.inc256
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end262

for.end262:                                       ; preds = %for.inc256.for.end262_crit_edge, %for.cond157.preheader.for.end262_crit_edge
  %device_mutex = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %device_mutex, i32 noundef 0) #10
  %call263 = call i32 @ubi_rename_volumes(ptr noundef %ubi, ptr noundef nonnull %rename_list) #10
  call void @mutex_unlock(ptr noundef %device_mutex) #10
  br label %out_free

out_free:                                         ; preds = %for.end262, %if.then222, %if.end216, %if.then118, %for.body96.out_free_crit_edge
  %err.4 = phi i32 [ %call263, %for.end262 ], [ %33, %if.then118 ], [ -12, %if.then222 ], [ %73, %if.end216 ], [ -12, %for.body96.out_free_crit_edge ]
  %96 = ptrtoint ptr %rename_list to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rename_list, align 4
  %cmp276.not466 = icmp eq ptr %97, %rename_list
  br i1 %cmp276.not466, label %out_free.cleanup290_crit_edge, label %out_free.for.body280_crit_edge

out_free.for.body280_crit_edge:                   ; preds = %out_free
  br label %for.body280

out_free.cleanup290_crit_edge:                    ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup290

for.body280:                                      ; preds = %list_del.exit.for.body280_crit_edge, %out_free.for.body280_crit_edge
  %.pn405.in467 = phi ptr [ %.pn405, %list_del.exit.for.body280_crit_edge ], [ %97, %out_free.for.body280_crit_edge ]
  %re.1 = getelementptr i8, ptr %.pn405.in467, i32 -140
  %98 = ptrtoint ptr %.pn405.in467 to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn405 = load ptr, ptr %.pn405.in467, align 4
  %desc281 = getelementptr i8, ptr %.pn405.in467, i32 -4
  %99 = ptrtoint ptr %desc281 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %desc281, align 4
  call void @ubi_close_volume(ptr noundef %100) #10
  %call.i.i420 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn405.in467) #10
  br i1 %call.i.i420, label %if.end.i.i421, label %for.body280.list_del.exit_crit_edge

for.body280.list_del.exit_crit_edge:              ; preds = %for.body280
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i421:                                    ; preds = %for.body280
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn405.in467, i32 0, i32 1
  %101 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %prev.i.i, align 4
  %103 = ptrtoint ptr %.pn405.in467 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %.pn405.in467, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %102, ptr %prev1.i.i.i, align 4
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %104, ptr %102, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i421, %for.body280.list_del.exit_crit_edge
  %107 = ptrtoint ptr %.pn405.in467 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn405.in467, align 4
  %prev.i422 = getelementptr inbounds %struct.list_head, ptr %.pn405.in467, i32 0, i32 1
  %108 = ptrtoint ptr %prev.i422 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i422, align 4
  call void @kfree(ptr noundef %re.1) #10
  %cmp276.not = icmp eq ptr %.pn405, %rename_list
  br i1 %cmp276.not, label %list_del.exit.cleanup290_crit_edge, label %list_del.exit.for.body280_crit_edge

list_del.exit.for.body280_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body280

list_del.exit.cleanup290_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup290

cleanup290:                                       ; preds = %list_del.exit.cleanup290_crit_edge, %out_free.cleanup290_crit_edge, %for.end151.cleanup290_crit_edge, %if.then80, %if.then66, %if.end30.cleanup290_crit_edge, %if.end22.cleanup290_crit_edge, %if.end16.cleanup290_crit_edge, %lor.lhs.false10.cleanup290_crit_edge, %for.body.cleanup290_crit_edge, %if.end.cleanup290_crit_edge, %entry.cleanup290_crit_edge
  %retval.0 = phi i32 [ -22, %if.then66 ], [ -22, %if.then80 ], [ -22, %entry.cleanup290_crit_edge ], [ 0, %if.end.cleanup290_crit_edge ], [ 0, %for.end151.cleanup290_crit_edge ], [ %err.4, %out_free.cleanup290_crit_edge ], [ %err.4, %list_del.exit.cleanup290_crit_edge ], [ -22, %if.end30.cleanup290_crit_edge ], [ -36, %if.end22.cleanup290_crit_edge ], [ -22, %if.end16.cleanup290_crit_edge ], [ -22, %for.body.cleanup290_crit_edge ], [ -22, %lor.lhs.false10.cleanup290_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rename_list) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_bitflip_check(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_mkvol_req(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_open_volume_nm(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_rename_volumes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_attach_mtd_dev(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mtd_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_detach_mtd_dev(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !19, !21, !22, !24, !26, !28, !30, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !68, !69, !71, !72, !74, !75, !76, !78, !79, !81, !82, !84, !85, !87, !89, !91, !93, !95, !96, !97, !99, !101, !102, !104, !105, !106, !108}
!llvm.named.register.sp = !{!109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @ubi_vol_cdev_operations, !1, !"ubi_vol_cdev_operations", i1 false, i1 false}
!1 = !{!"../drivers/mtd/ubi/cdev.c", i32 1082, i32 30}
!2 = !{ptr @ubi_cdev_operations, !3, !"ubi_cdev_operations", i1 false, i1 false}
!3 = !{!"../drivers/mtd/ubi/cdev.c", i32 1095, i32 30}
!4 = !{ptr @ubi_ctrl_cdev_operations, !5, !"ubi_ctrl_cdev_operations", i1 false, i1 false}
!5 = !{!"../drivers/mtd/ubi/cdev.c", i32 1103, i32 30}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/ubi/cdev.c", i32 150, i32 21}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/ubi/cdev.c", i32 181, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vol_cdev_read.__UNIQUE_ID_ddebug233, !9, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/ubi/cdev.c", i32 189, i32 21}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/ubi/cdev.c", i32 196, i32 3}
!18 = !{ptr @vol_cdev_read.__UNIQUE_ID_ddebug234, !17, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/ubi/cdev.c", i32 340, i32 16}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/ubi/cdev.c", i32 366, i32 18}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/ubi/cdev.c", i32 261, i32 2}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @vol_cdev_direct_write.__UNIQUE_ID_ddebug235, !31, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/ubi/cdev.c", i32 269, i32 16}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/ubi/cdev.c", i32 278, i32 16}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/ubi/cdev.c", i32 76, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @revoke_exclusive._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @revoke_exclusive._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @revoke_exclusive._entry.18, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/mtd/ubi/cdev.c", i32 77, i32 2}
!45 = !{ptr @revoke_exclusive._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/ubi/cdev.c", i32 484, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @vol_cdev_ioctl.__UNIQUE_ID_ddebug236, !47, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/ubi/cdev.c", i32 51, i32 2}
!52 = !{ptr @get_exclusive._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @get_exclusive._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/ubi/cdev.c", i32 53, i32 21}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/ubi/cdev.c", i32 106, i32 2}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @vol_cdev_open.__UNIQUE_ID_ddebug230, !57, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/ubi/cdev.c", i32 122, i32 2}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @vol_cdev_release.__UNIQUE_ID_ddebug231, !61, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/ubi/cdev.c", i32 126, i32 22}
!66 = !{ptr @vol_cdev_release._entry, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/mtd/ubi/cdev.c", i32 128, i32 3}
!68 = !{ptr @vol_cdev_release._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/ubi/cdev.c", i32 132, i32 3}
!71 = !{ptr @vol_cdev_release.__UNIQUE_ID_ddebug232, !70, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/ubi/cdev.c", i32 852, i32 3}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ubi_cdev_ioctl.__UNIQUE_ID_ddebug239, !73, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/ubi/cdev.c", i32 881, i32 3}
!78 = !{ptr @ubi_cdev_ioctl.__UNIQUE_ID_ddebug240, !77, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/ubi/cdev.c", i32 913, i32 3}
!81 = !{ptr @ubi_cdev_ioctl.__UNIQUE_ID_ddebug241, !80, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mtd/ubi/cdev.c", i32 945, i32 3}
!84 = !{ptr @ubi_cdev_ioctl.__UNIQUE_ID_ddebug242, !83, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mtd/ubi/cdev.c", i32 645, i32 15}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/ubi/cdev.c", i32 711, i32 18}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/ubi/cdev.c", i32 716, i32 18}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mtd/ubi/cdev.c", i32 739, i32 17}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/ubi/cdev.c", i32 756, i32 3}
!95 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @rename_volumes.__UNIQUE_ID_ddebug237, !94, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mtd/ubi/cdev.c", i32 799, i32 17}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/ubi/cdev.c", i32 814, i32 3}
!101 = !{ptr @rename_volumes.__UNIQUE_ID_ddebug238, !100, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/ubi/cdev.c", i32 1019, i32 3}
!104 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ctrl_cdev_ioctl.__UNIQUE_ID_ddebug243, !103, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mtd/ubi/cdev.c", i32 1060, i32 3}
!108 = !{ptr @ctrl_cdev_ioctl.__UNIQUE_ID_ddebug244, !107, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
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
!119 = !{i64 2148976063, i64 2148976068, i64 2148976081, i64 2148976125, i64 2148976159, i64 2148976180}
!120 = !{!"branch_weights", i32 2000, i32 1}
!121 = !{i64 2148209110, i64 2148209390, i64 2148209724, i64 2148210058}
!122 = !{i64 2152518627, i64 2152518652}
!123 = !{!"auto-init"}
!124 = !{i64 2152517946, i64 2152517971}
!125 = !{i64 5013501}
!126 = !{i64 5013698}
!127 = !{i64 2152498931}
!128 = !{i64 2154304854, i64 2154305134, i64 2154305468, i64 2154305802}
!129 = !{i64 2154321534, i64 2154321814, i64 2154322148, i64 2154322482}
!130 = !{i64 2154334504, i64 2154334784, i64 2154335118, i64 2154335452}
!131 = !{i64 2154367999, i64 2154368279, i64 2154368613, i64 2154368947}
!132 = !{i64 2154382998, i64 2154383278, i64 2154383612, i64 2154383946}
!133 = !{i64 2154407493, i64 2154407773, i64 2154408107, i64 2154408441}
!134 = !{i64 2154420460, i64 2154420740, i64 2154421074, i64 2154421408}
!135 = !{i64 2154433728, i64 2154434008, i64 2154434342, i64 2154434676}
!136 = !{i64 2154448786, i64 2154449066, i64 2154449400, i64 2154449734}
!137 = !{!"branch_weights", i32 1, i32 2000}
