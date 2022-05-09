; ModuleID = '/llk/IR_all_yes/fs/dlm/user.c_pt.bc'
source_filename = "../fs/dlm/user.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dlm_config_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dlm_lkb = type { ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, %struct.mutex, %struct.work_struct, %struct.list_head, [6 x %struct.dlm_callback], %struct.dlm_callback, %struct.dlm_callback, i64, i64, i64, ptr, ptr, ptr, ptr, %union.anon.2 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_callback = type { i64, i32, i32, i8, i8 }
%union.anon.2 = type { ptr }
%struct.dlm_ls = type { %struct.list_head, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, %struct.kobject, %struct.idr, %struct.spinlock, ptr, i32, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, [65 x i8], [8 x ptr], i32, [8 x i32], %struct.list_head, %struct.list_head, i32, i32, i32, ptr, i32, i32, i32, ptr, %struct.dlm_rsb, %struct.dlm_lkb, %struct.dlm_message, ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, i32, %struct.completion, i32, %struct.miscdevice, ptr, %struct.mutex, %struct.list_head, %struct.timer_list, ptr, %struct.mutex, %struct.spinlock, i32, i32, i64, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, ptr, i32, i32, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, %struct.idr, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.rw_semaphore, ptr, ptr, i32, [1 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dlm_rsb = type { ptr, %struct.kref, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %union.anon.1, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, [65 x i8] }
%union.anon.1 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dlm_message = type { %struct.dlm_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_header = type { i32, %union.anon.67, i32, i16, i8, i8 }
%union.anon.67 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_user_args = type { ptr, %struct.dlm_lksb, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.dlm_user_proc = type { ptr, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.wait_queue_head }
%struct.dlm_lock_result = type { [3 x i32], i32, ptr, ptr, ptr, %struct.dlm_lksb, i8, [3 x i8], i32 }
%struct.dlm_device_version = type { [3 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.dlm_write_request = type { [3 x i32], i8, i8, [2 x i8], %union.anon.74 }
%union.anon.74 = type { %struct.dlm_lock_params }
%struct.dlm_lock_params = type { i8, i8, i16, i32, i32, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, [32 x i8], [0 x i8] }
%struct.dlm_lspace_params = type { i32, i32, [0 x i8] }
%struct.dlm_purge_params = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.73 = type { ptr }

@dlm_user_add_ast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013\0ADLM:  Assertion failed on line %d of file %s\0ADLM:  assertion:  \22%s\22\0ADLM:  time = %lu\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlm_user_add_ast\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/dlm/user.c\00", [18 x i8] zeroinitializer }, align 32
@dlm_user_add_ast._entry_ptr = internal global ptr @dlm_user_add_ast._entry, section ".printk_index", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lkb->lkb_ua\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dlm_user_add_ast._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@dlm_user_add_ast._entry_ptr.6 = internal global ptr @dlm_user_add_ast._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DLM:  Record message above and reboot.\0A\00", [56 x i8] zeroinitializer }, align 32
@dlm_monitor_unused = internal global { i1, [31 x i8] } zeroinitializer, align 32
@dlm_monitor_opened = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@ctl_device = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.13, ptr @ctl_device_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@dlm_user_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013dlm: misc_register failed for control device\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dlm_user_init\00", [18 x i8] zeroinitializer }, align 32
@dlm_user_init._entry_ptr = internal global ptr @dlm_user_init._entry, section ".printk_index", align 4
@monitor_device = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.47, ptr @monitor_device_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@dlm_user_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013dlm: misc_register failed for monitor device\0A\00", [48 x i8] zeroinitializer }, align 32
@dlm_user_init._entry_ptr.12 = internal global ptr @dlm_user_init._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dlm-control\00", [20 x i8] zeroinitializer }, align 32
@ctl_device_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @device_read, ptr @device_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ctl_device_open, ptr null, ptr @ctl_device_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@device_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013dlm: non-version read from control device %zu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_read\00", [20 x i8] zeroinitializer }, align 32
@device_read._entry_ptr = internal global ptr @device_read._entry, section ".printk_index", align 4
@device_read._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013dlm: dlm_rem_lkb_callback empty %x\0A\00", [58 x i8] zeroinitializer }, align 32
@device_read._entry_ptr.19 = internal global ptr @device_read._entry.17, section ".printk_index", align 4
@dlm_lvb_operations = external dso_local local_unnamed_addr constant [8 x [8 x i32]], align 4
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@device_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013dlm: no locking on control device\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device_write\00", [19 x i8] zeroinitializer }, align 32
@device_write._entry_ptr = internal global ptr @device_write._entry, section ".printk_index", align 4
@device_write._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@device_write._entry_ptr.26 = internal global ptr @device_write._entry.25, section ".printk_index", align 4
@device_write._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@device_write._entry_ptr.28 = internal global ptr @device_write._entry.27, section ".printk_index", align 4
@device_write._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.24, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013dlm: create/remove only on control device\0A\00", [51 x i8] zeroinitializer }, align 32
@device_write._entry_ptr.31 = internal global ptr @device_write._entry.29, section ".printk_index", align 4
@device_write._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.24, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@device_write._entry_ptr.33 = internal global ptr @device_write._entry.32, section ".printk_index", align 4
@device_write._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@device_write._entry_ptr.35 = internal global ptr @device_write._entry.34, section ".printk_index", align 4
@device_write._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.24, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013dlm: Unknown command passed to DLM device : %d\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@device_write._entry_ptr.38 = internal global ptr @device_write._entry.36, section ".printk_index", align 4
@check_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\017dlm: process %s (%d) version mismatch user (%d.%d.%d) kernel (%d.%d.%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"check_version\00", [18 x i8] zeroinitializer }, align 32
@check_version._entry_ptr = internal global ptr @check_version._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dlm_config = external dso_local global %struct.dlm_config_info, align 4
@name_prefix = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dlm\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_%s\00", [26 x i8] zeroinitializer }, align 32
@device_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @device_read, ptr @device_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @device_poll, ptr null, ptr null, ptr null, i32 0, ptr @device_open, ptr null, ptr @device_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@device_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&proc->asts_spin\00", [47 x i8] zeroinitializer }, align 32
@device_open.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&proc->locks_spin\00", [46 x i8] zeroinitializer }, align 32
@device_open.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&proc->wait\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dlm-monitor\00", [20 x i8] zeroinitializer }, align 32
@monitor_device_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @monitor_device_open, ptr null, ptr @monitor_device_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 4294901758, i64 4294901759, i64 4294967186, i64 4294967261, i64 4294967285]
@__sancov_gen_cov_switch_values.48 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 198, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"dlm_monitor_unused\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"dlm_monitor_opened\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 29, i32 17 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"ctl_device\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 967, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 994, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"monitor_device\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 980, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1000, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 968, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"ctl_device_fops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 958, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 792, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 848, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 174, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 570, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 578, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 586, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 594, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 602, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 610, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 617, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 465, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [12 x i8] c"name_prefix\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 27, i32 19 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 350, i32 44 }
@___asan_gen_.170 = private unnamed_addr constant [12 x i8] c"device_fops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 948, i32 37 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 649, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 650, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 651, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 981, i32 11 }
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c"monitor_device_fops\00", align 1
@___asan_gen_.195 = private constant [17 x i8] c"../fs/dlm/user.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 973, i32 37 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @check_version._entry, ptr @check_version._entry_ptr, ptr @device_read._entry, ptr @device_read._entry.17, ptr @device_read._entry_ptr, ptr @device_read._entry_ptr.19, ptr @device_write._entry, ptr @device_write._entry.25, ptr @device_write._entry.27, ptr @device_write._entry.29, ptr @device_write._entry.32, ptr @device_write._entry.34, ptr @device_write._entry.36, ptr @device_write._entry_ptr, ptr @device_write._entry_ptr.26, ptr @device_write._entry_ptr.28, ptr @device_write._entry_ptr.31, ptr @device_write._entry_ptr.33, ptr @device_write._entry_ptr.35, ptr @device_write._entry_ptr.38, ptr @dlm_user_add_ast._entry, ptr @dlm_user_add_ast._entry.4, ptr @dlm_user_add_ast._entry_ptr, ptr @dlm_user_add_ast._entry_ptr.6, ptr @dlm_user_init._entry, ptr @dlm_user_init._entry.10, ptr @dlm_user_init._entry_ptr, ptr @dlm_user_init._entry_ptr.12, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @dlm_monitor_unused, ptr @dlm_monitor_opened, ptr @ctl_device, ptr @.str.8, ptr @.str.9, ptr @monitor_device, ptr @.str.11, ptr @.str.13, ptr @ctl_device_fops, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.30, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @name_prefix, ptr @.str.41, ptr @device_fops, ptr @device_open.__key, ptr @.str.42, ptr @device_open.__key.43, ptr @.str.44, ptr @device_open.__key.45, ptr @.str.46, ptr @.str.47, ptr @monitor_device_fops], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_user_add_ast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_user_add_ast._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_monitor_unused to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_monitor_opened to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctl_device to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_user_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monitor_device to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_user_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctl_device_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_read._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_write._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_write._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_write._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_write._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_write._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_write._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @name_prefix to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_open.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_open.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monitor_device_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_user_add_ast(ptr noundef %lkb, i32 noundef %flags, i32 noundef %mode, i32 noundef %status, i32 noundef %sbflags, i64 noundef %seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lkb_flags = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 8
  %0 = ptrtoint ptr %lkb_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lkb_flags, align 8
  %and = and i32 %1, 262146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %lkb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lkb, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %ls_clear_proc_locks = getelementptr inbounds %struct.dlm_ls, ptr %5, i32 0, i32 85
  tail call void @mutex_lock_nested(ptr noundef %ls_clear_proc_locks, i32 noundef 0) #15
  %6 = ptrtoint ptr %lkb_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lkb_flags, align 8
  %and2 = and i32 %7, 262146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end5:                                          ; preds = %if.end
  %8 = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 38
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 198, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %11) #18
  tail call void @dlm_print_lkb(ptr noundef %lkb) #15
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #18
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.7) #19
  unreachable

if.end13:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 8
  %and15 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end18_crit_edge, label %land.lhs.true

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end13
  %bastaddr = getelementptr inbounds %struct.dlm_user_args, ptr %10, i32 0, i32 6
  %14 = ptrtoint ptr %bastaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bastaddr, align 4
  %cmp = icmp eq ptr %15, null
  br i1 %cmp, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end13.if.end18_crit_edge
  %and19 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end26_crit_edge, label %land.lhs.true21

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

land.lhs.true21:                                  ; preds = %if.end18
  %16 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status, label %land.lhs.true21.if.end26_crit_edge [
    i32 -65538, label %land.lhs.true21.if.then24_crit_edge
    i32 -65537, label %land.lhs.true21.sw.bb1.i_crit_edge
    i32 -110, label %land.lhs.true21.sw.bb1.i_crit_edge87
    i32 -35, label %land.lhs.true21.sw.bb1.i_crit_edge88
    i32 -11, label %land.lhs.true21.sw.bb1.i_crit_edge89
  ]

land.lhs.true21.sw.bb1.i_crit_edge89:             ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

land.lhs.true21.sw.bb1.i_crit_edge88:             ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

land.lhs.true21.sw.bb1.i_crit_edge87:             ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

land.lhs.true21.sw.bb1.i_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

land.lhs.true21.if.then24_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then24

land.lhs.true21.if.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

sw.bb1.i:                                         ; preds = %land.lhs.true21.sw.bb1.i_crit_edge, %land.lhs.true21.sw.bb1.i_crit_edge87, %land.lhs.true21.sw.bb1.i_crit_edge88, %land.lhs.true21.sw.bb1.i_crit_edge89
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mode)
  %cmp.i = icmp eq i32 %mode, -1
  br i1 %cmp.i, label %sw.bb1.i.if.then24_crit_edge, label %sw.bb1.i.if.end26_crit_edge

sw.bb1.i.if.end26_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

sw.bb1.i.if.then24_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then24

if.then24:                                        ; preds = %sw.bb1.i.if.then24_crit_edge, %land.lhs.true21.if.then24_crit_edge
  %or = or i32 %7, 2097152
  %17 = ptrtoint ptr %lkb_flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %lkb_flags, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %sw.bb1.i.if.end26_crit_edge, %land.lhs.true21.if.end26_crit_edge, %if.end18.if.end26_crit_edge
  %asts_spin = getelementptr inbounds %struct.dlm_user_proc, ptr %13, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %asts_spin) #15
  %call27 = tail call i32 @dlm_add_lkb_callback(ptr noundef %lkb, i32 noundef %flags, i32 noundef %mode, i32 noundef %status, i32 noundef %sbflags, i64 noundef %seq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.out.sink.split_crit_edge, label %if.end31

if.end26.out.sink.split_crit_edge:                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.sink.split

if.end31:                                         ; preds = %if.end26
  %lkb_cb_list = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 27
  %18 = ptrtoint ptr %lkb_cb_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %lkb_cb_list, align 4
  %cmp.i80.not = icmp eq ptr %19, %lkb_cb_list
  br i1 %cmp.i80.not, label %if.then34, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  %lkb_ref = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lkb_ref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %lkb_ref, i32 1, i32 3, i32 1) #15
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lkb_ref, ptr %lkb_ref, i32 1, ptr elementtype(i32) %lkb_ref) #15, !srcloc !111
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then34.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !112

if.then34.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then34
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %21 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !113

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then34.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then34.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %lkb_ref, i32 noundef %.sink.i.i.i.i) #15
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %asts = getelementptr inbounds %struct.dlm_user_proc, ptr %13, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.dlm_user_proc, ptr %13, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lkb_cb_list, ptr noundef %23, ptr noundef %asts) #15
  br i1 %call.i.i, label %if.end.i.i, label %kref_get.exit.list_add_tail.exit_crit_edge

kref_get.exit.list_add_tail.exit_crit_edge:       ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %lkb_cb_list, ptr %prev.i, align 4
  %25 = ptrtoint ptr %lkb_cb_list to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %asts, ptr %lkb_cb_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 27, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %lkb_cb_list, ptr %23, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %kref_get.exit.list_add_tail.exit_crit_edge
  %wait = getelementptr inbounds %struct.dlm_user_proc, ptr %13, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #15
  br label %if.end36

if.end36:                                         ; preds = %list_add_tail.exit, %if.end31.if.end36_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %asts_spin) #15
  %28 = ptrtoint ptr %lkb_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lkb_flags, align 8
  %and39 = and i32 %29, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end36.out_crit_edge, label %if.then41

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then41:                                        ; preds = %if.end36
  %locks_spin = getelementptr inbounds %struct.dlm_user_proc, ptr %13, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %locks_spin) #15
  %lkb_ownqueue = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 20
  %30 = ptrtoint ptr %lkb_ownqueue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %lkb_ownqueue, align 4
  %cmp.i81.not = icmp eq ptr %31, %lkb_ownqueue
  br i1 %cmp.i81.not, label %if.then41.out.sink.split_crit_edge, label %if.then44

if.then41.out.sink.split_crit_edge:               ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.sink.split

if.then44:                                        ; preds = %if.then41
  %call.i.i83 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lkb_ownqueue) #15
  br i1 %call.i.i83, label %if.end.i.i84, label %if.then44.list_del_init.exit_crit_edge

if.then44.list_del_init.exit_crit_edge:           ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i84:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 20, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %lkb_ownqueue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lkb_ownqueue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i84, %if.then44.list_del_init.exit_crit_edge
  %38 = ptrtoint ptr %lkb_ownqueue to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %lkb_ownqueue, ptr %lkb_ownqueue, align 4
  %prev.i3.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 20, i32 1
  %39 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %lkb_ownqueue, ptr %prev.i3.i, align 4
  %call46 = tail call i32 @dlm_put_lkb(ptr noundef %lkb) #15
  br label %out.sink.split

out.sink.split:                                   ; preds = %list_del_init.exit, %if.then41.out.sink.split_crit_edge, %if.end26.out.sink.split_crit_edge
  %locks_spin.sink = phi ptr [ %asts_spin, %if.end26.out.sink.split_crit_edge ], [ %locks_spin, %list_del_init.exit ], [ %locks_spin, %if.then41.out.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %locks_spin.sink) #15
  br label %out

out:                                              ; preds = %out.sink.split, %if.end36.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %ls_clear_proc_locks) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_print_lkb(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_add_lkb_callback(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_put_lkb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_device_deregister(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 53, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ls_device = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 53
  tail call void @misc_deregister(ptr noundef %ls_device) #15
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %3) #15
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_user_daemon_available() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dlm_our_nodeid() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %.b = load i1, ptr @dlm_monitor_unused, align 4
  br i1 %.b, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @dlm_monitor_opened, i32 noundef 4) #15
  %0 = load volatile i32, ptr @dlm_monitor_opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool5.not = icmp ne i32 %0, 0
  %cond = zext i1 %tobool5.not to i32
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end3 ], [ 0, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_our_nodeid() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_user_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @dlm_monitor_opened, i32 noundef 4) #15
  store volatile i32 0, ptr @dlm_monitor_opened, align 4
  %call = tail call i32 @misc_register(ptr noundef nonnull @ctl_device) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #18
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @misc_register(ptr noundef nonnull @monitor_device) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %do.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #18
  tail call void @misc_deregister(ptr noundef nonnull @ctl_device) #15
  br label %out

out:                                              ; preds = %do.end7, %if.end.out_crit_edge, %do.end
  %error.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.out_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_user_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @misc_deregister(ptr noundef nonnull @ctl_device) #15
  tail call void @misc_deregister(ptr noundef nonnull @monitor_device) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %result.i = alloca %struct.dlm_lock_result, align 4
  %ver.i = alloca %struct.dlm_device_version, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  %cb = alloca %struct.dlm_callback, align 8
  %resid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #15
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !101) #15
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @default_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cb) #15
  %15 = call ptr @memset(ptr %cb, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resid) #15
  %16 = ptrtoint ptr %resid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %resid, align 4, !annotation !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %count)
  %cmp = icmp eq i32 %count, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ver.i) #15
  %17 = getelementptr inbounds [3 x i32], ptr %ver.i, i32 0, i32 1
  %18 = getelementptr inbounds [3 x i32], ptr %ver.i, i32 0, i32 2
  %19 = ptrtoint ptr %ver.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6, ptr %ver.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %17, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %18, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #15
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i, label %if.then.copy_version_to_user.exit_crit_edge, label %if.end.i.i.i

if.then.copy_version_to_user.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_version_to_user.exit

if.end.i.i.i:                                     ; preds = %if.then
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 12, i32 -1226833920) #20, !srcloc !115
  %asmresult.i.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.copy_version_to_user.exit_crit_edge

if.end.i.i.i.copy_version_to_user.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_version_to_user.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ver.i, i32 noundef 12) #15
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %ver.i, i32 noundef 12) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 12, i32 -14
  br label %copy_version_to_user.exit

copy_version_to_user.exit:                        ; preds = %copy_to_user.exit.i, %if.end.i.i.i.copy_version_to_user.exit_crit_edge, %if.then.copy_version_to_user.exit_crit_edge
  %23 = phi i32 [ -14, %if.then.copy_version_to_user.exit_crit_edge ], [ -14, %if.end.i.i.i.copy_version_to_user.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ver.i) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %count) #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %count)
  %cmp6 = icmp ult i32 %count, 52
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %try_another.preheader

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

try_another.preheader:                            ; preds = %if.end5
  %flags9 = getelementptr inbounds %struct.dlm_user_proc, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags9, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool11.not336 = icmp eq i32 %26, 0
  br i1 %tobool11.not336, label %if.end13.lr.ph, label %try_another.preheader.cleanup_crit_edge

try_another.preheader.cleanup_crit_edge:          ; preds = %try_another.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13.lr.ph:                                   ; preds = %try_another.preheader
  %asts_spin = getelementptr inbounds %struct.dlm_user_proc, ptr %1, i32 0, i32 3
  %asts = getelementptr inbounds %struct.dlm_user_proc, ptr %1, i32 0, i32 2
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %wait21 = getelementptr inbounds %struct.dlm_user_proc, ptr %1, i32 0, i32 7
  %flags210 = getelementptr inbounds %struct.dlm_callback, ptr %cb, i32 0, i32 1
  br label %if.end13

if.end13:                                         ; preds = %try_another.backedge.if.end13_crit_edge, %if.end13.lr.ph
  call void @_raw_spin_lock(ptr noundef %asts_spin) #15
  %27 = ptrtoint ptr %asts to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %asts, align 4
  %cmp.i.not = icmp eq ptr %28, %asts
  br i1 %cmp.i.not, label %if.then16, label %if.end13.if.end189_crit_edge

if.end13.if.end189_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end189

if.then16:                                        ; preds = %if.end13
  %29 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %f_flags, align 4
  %and = and i32 %30, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock(ptr noundef %asts_spin) #15
  br label %cleanup

if.end20:                                         ; preds = %if.then16
  call void @add_wait_queue(ptr noundef %wait21, ptr noundef nonnull %wait) #15
  br label %__here

__here:                                           ; preds = %if.then97, %if.end20
  %31 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 212
  %33 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 ptrtoint (ptr blockaddress(@device_read, %__here) to i32), ptr %task_state_change, align 4
  %34 = load ptr, ptr %task, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 1, ptr %34, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !116
  %36 = ptrtoint ptr %asts to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %asts, align 4
  %cmp.i298.not = icmp eq ptr %37, %asts
  br i1 %cmp.i298.not, label %land.lhs.true, label %__here.__here151_crit_edge

__here.__here151_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here151

land.lhs.true:                                    ; preds = %__here
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stack.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %44 = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i300 = icmp eq i32 %44, 0
  br i1 %tobool.not.i300, label %signal_pending.exit, label %land.lhs.true.__here151_crit_edge, !prof !113

land.lhs.true.__here151_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here151

signal_pending.exit:                              ; preds = %land.lhs.true
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %41, align 4
  %and1.i.i.i.i.i = and i32 %46, 1
  %tobool96.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool96.not, label %if.then97, label %signal_pending.exit.__here151_crit_edge

signal_pending.exit.__here151_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here151

if.then97:                                        ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock(ptr noundef %asts_spin) #15
  call void @schedule() #15
  call void @_raw_spin_lock(ptr noundef %asts_spin) #15
  br label %__here

__here151:                                        ; preds = %signal_pending.exit.__here151_crit_edge, %land.lhs.true.__here151_crit_edge, %__here.__here151_crit_edge
  %47 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task, align 8
  %task_state_change155 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 212
  %49 = ptrtoint ptr %task_state_change155 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 ptrtoint (ptr blockaddress(@device_read, %__here151) to i32), ptr %task_state_change155, align 4
  %50 = load ptr, ptr %task, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 0, ptr %50, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !117
  call void @remove_wait_queue(ptr noundef %wait21, ptr noundef nonnull %wait) #15
  %52 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task, align 8
  %stack.i.i301 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %stack.i.i301 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stack.i.i301, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 4
  %58 = and i32 %57, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i302 = icmp eq i32 %58, 0
  br i1 %tobool.not.i302, label %signal_pending.exit306, label %__here151.if.then186_crit_edge, !prof !113

__here151.if.then186_crit_edge:                   ; preds = %__here151
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then186

signal_pending.exit306:                           ; preds = %__here151
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %55, align 4
  %and1.i.i.i.i.i303 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i303)
  %tobool185.not = icmp eq i32 %and1.i.i.i.i.i303, 0
  br i1 %tobool185.not, label %signal_pending.exit306.if.end189_crit_edge, label %signal_pending.exit306.if.then186_crit_edge

signal_pending.exit306.if.then186_crit_edge:      ; preds = %signal_pending.exit306
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then186

signal_pending.exit306.if.end189_crit_edge:       ; preds = %signal_pending.exit306
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end189

if.then186:                                       ; preds = %signal_pending.exit306.if.then186_crit_edge, %__here151.if.then186_crit_edge
  call void @_raw_spin_unlock(ptr noundef %asts_spin) #15
  br label %cleanup

if.end189:                                        ; preds = %signal_pending.exit306.if.end189_crit_edge, %if.end13.if.end189_crit_edge
  %61 = ptrtoint ptr %asts to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %asts, align 4
  %add.ptr = getelementptr i8, ptr %62, i32 -252
  %mode = getelementptr i8, ptr %62, i32 173
  %63 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %mode, align 1
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %call193 = call i32 @dlm_rem_lkb_callback(ptr noundef %68, ptr noundef %add.ptr, ptr noundef nonnull %cb, ptr noundef nonnull %resid) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %cmp194 = icmp slt i32 %call193, 0
  br i1 %cmp194, label %do.end199, label %if.end204

do.end199:                                        ; preds = %if.end189
  %lkb_id = getelementptr i8, ptr %62, i32 -236
  %69 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lkb_id, align 8
  %call201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %70) #18
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %62) #15
  br i1 %call.i.i, label %if.end.i.i, label %do.end199.list_del_init.exit_crit_edge

do.end199.list_del_init.exit_crit_edge:           ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i, align 4
  %73 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %62, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end199.list_del_init.exit_crit_edge
  %77 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %62, ptr %62, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %62, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock(ptr noundef %asts_spin) #15
  br label %try_another.backedge.sink.split

try_another.backedge.sink.split:                  ; preds = %if.then213.try_another.backedge.sink.split_crit_edge, %list_del_init.exit
  %call216 = call i32 @dlm_put_lkb(ptr noundef %add.ptr) #15
  br label %try_another.backedge

try_another.backedge:                             ; preds = %if.then213.try_another.backedge_crit_edge, %try_another.backedge.sink.split
  %79 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %flags9, align 4
  %81 = and i32 %80, 2
  %tobool11.not = icmp eq i32 %81, 0
  br i1 %tobool11.not, label %try_another.backedge.if.end13_crit_edge, label %try_another.backedge.cleanup_crit_edge

try_another.backedge.cleanup_crit_edge:           ; preds = %try_another.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

try_another.backedge.if.end13_crit_edge:          ; preds = %try_another.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.end204:                                        ; preds = %if.end189
  %82 = ptrtoint ptr %resid to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %resid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool205.not = icmp eq i32 %83, 0
  br i1 %tobool205.not, label %if.then206, label %if.end204.if.end208_crit_edge

if.end204.if.end208_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end208

if.then206:                                       ; preds = %if.end204
  %call.i.i307 = call zeroext i1 @__list_del_entry_valid(ptr noundef %62) #15
  br i1 %call.i.i307, label %if.end.i.i310, label %if.then206.list_del_init.exit312_crit_edge

if.then206.list_del_init.exit312_crit_edge:       ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit312

if.end.i.i310:                                    ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i308 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i.i308 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i308, align 4
  %86 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %62, align 4
  %prev1.i.i.i309 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i309 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev1.i.i.i309, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %87, ptr %85, align 4
  br label %list_del_init.exit312

list_del_init.exit312:                            ; preds = %if.end.i.i310, %if.then206.list_del_init.exit312_crit_edge
  %90 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %62, ptr %62, align 4
  %prev.i3.i311 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i3.i311 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %62, ptr %prev.i3.i311, align 4
  br label %if.end208

if.end208:                                        ; preds = %list_del_init.exit312, %if.end204.if.end208_crit_edge
  call void @_raw_spin_unlock(ptr noundef %asts_spin) #15
  %92 = ptrtoint ptr %flags210 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags210, align 8
  %and211 = and i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %if.end218, label %if.then213

if.then213:                                       ; preds = %if.end208
  %94 = ptrtoint ptr %resid to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %resid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool214.not = icmp eq i32 %95, 0
  br i1 %tobool214.not, label %if.then213.try_another.backedge.sink.split_crit_edge, label %if.then213.try_another.backedge_crit_edge

if.then213.try_another.backedge_crit_edge:        ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #17
  br label %try_another.backedge

if.then213.try_another.backedge.sink.split_crit_edge: ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #17
  br label %try_another.backedge.sink.split

if.end218:                                        ; preds = %if.end208
  %conv.le = sext i8 %64 to i32
  %and220 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  br i1 %tobool221.not, label %if.end218.if.end239_crit_edge, label %if.then222

if.end218.if.end239_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end239

if.then222:                                       ; preds = %if.end218
  %mode223 = getelementptr inbounds %struct.dlm_callback, ptr %cb, i32 0, i32 4
  %96 = ptrtoint ptr %mode223 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %mode223, align 1
  %conv224 = sext i8 %97 to i32
  %sb_status = getelementptr inbounds %struct.dlm_callback, ptr %cb, i32 0, i32 2
  %98 = ptrtoint ptr %sb_status to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sb_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool225.not = icmp eq i32 %99, 0
  br i1 %tobool225.not, label %land.lhs.true226, label %if.then222.if.end233_crit_edge

if.then222.if.end233_crit_edge:                   ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end233

land.lhs.true226:                                 ; preds = %if.then222
  %lkb_lksb = getelementptr i8, ptr %62, i32 232
  %100 = ptrtoint ptr %lkb_lksb to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lkb_lksb, align 4
  %sb_lvbptr = getelementptr inbounds %struct.dlm_lksb, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %sb_lvbptr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sb_lvbptr, align 4
  %tobool227.not = icmp eq ptr %103, null
  br i1 %tobool227.not, label %land.lhs.true226.if.end233_crit_edge, label %land.lhs.true228

land.lhs.true226.if.end233_crit_edge:             ; preds = %land.lhs.true226
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end233

land.lhs.true228:                                 ; preds = %land.lhs.true226
  call void @__sanitizer_cov_trace_pc() #17
  %add = add nsw i32 %conv.le, 1
  %add229 = add nsw i32 %conv224, 1
  %arrayidx230 = getelementptr [8 x [8 x i32]], ptr @dlm_lvb_operations, i32 0, i32 %add, i32 %add229
  %104 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool231.not = icmp ne i32 %105, 0
  %spec.select = zext i1 %tobool231.not to i32
  br label %if.end233

if.end233:                                        ; preds = %land.lhs.true228, %land.lhs.true226.if.end233_crit_edge, %if.then222.if.end233_crit_edge
  %copy_lvb.0 = phi i32 [ 0, %if.then222.if.end233_crit_edge ], [ 0, %land.lhs.true226.if.end233_crit_edge ], [ %spec.select, %land.lhs.true228 ]
  %lkb_lksb235 = getelementptr i8, ptr %62, i32 232
  %106 = ptrtoint ptr %lkb_lksb235 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %lkb_lksb235, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %99, ptr %107, align 4
  %sb_flags = getelementptr inbounds %struct.dlm_callback, ptr %cb, i32 0, i32 3
  %109 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %sb_flags, align 8
  %111 = load ptr, ptr %lkb_lksb235, align 4
  %sb_flags238 = getelementptr inbounds %struct.dlm_lksb, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %sb_flags238 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %110, ptr %sb_flags238, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.end233, %if.end218.if.end239_crit_edge
  %copy_lvb.1 = phi i32 [ %copy_lvb.0, %if.end233 ], [ 0, %if.end218.if.end239_crit_edge ]
  %113 = getelementptr i8, ptr %62, i32 244
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 8
  %116 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %flags9, align 4
  %118 = ptrtoint ptr %flags210 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags210, align 8
  %mode243 = getelementptr inbounds %struct.dlm_callback, ptr %cb, i32 0, i32 4
  %120 = ptrtoint ptr %mode243 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %mode243, align 1
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %result.i) #15
  %122 = getelementptr inbounds i8, ptr %result.i, i32 40
  %123 = call ptr @memset(ptr %122, i32 0, i32 12)
  %124 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 6, ptr %result.i, align 4
  %arrayidx2.i = getelementptr inbounds [3 x i32], ptr %result.i, i32 0, i32 1
  %125 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr inbounds [3 x i32], ptr %result.i, i32 0, i32 2
  %126 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 2, ptr %arrayidx4.i, align 4
  %lksb.i = getelementptr inbounds %struct.dlm_lock_result, ptr %result.i, i32 0, i32 5
  %lksb5.i = getelementptr inbounds %struct.dlm_user_args, ptr %115, i32 0, i32 1
  %127 = call ptr @memcpy(ptr %lksb.i, ptr %lksb5.i, i32 12)
  %user_lksb.i = getelementptr inbounds %struct.dlm_user_args, ptr %115, i32 0, i32 2
  %128 = ptrtoint ptr %user_lksb.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %user_lksb.i, align 4
  %user_lksb6.i = getelementptr inbounds %struct.dlm_lock_result, ptr %result.i, i32 0, i32 4
  %130 = ptrtoint ptr %user_lksb6.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %129, ptr %user_lksb6.i, align 4
  %and.i313 = and i32 %119, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i313)
  %tobool.not.i314 = icmp eq i32 %and.i313, 0
  br i1 %tobool.not.i314, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #17
  %bastaddr.i = getelementptr inbounds %struct.dlm_user_args, ptr %115, i32 0, i32 6
  %131 = ptrtoint ptr %bastaddr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bastaddr.i, align 4
  %bastparam.i = getelementptr inbounds %struct.dlm_user_args, ptr %115, i32 0, i32 5
  %133 = ptrtoint ptr %bastparam.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bastparam.i, align 8
  %bast_mode.i = getelementptr inbounds %struct.dlm_lock_result, ptr %result.i, i32 0, i32 6
  %135 = ptrtoint ptr %bast_mode.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %121, ptr %bast_mode.i, align 4
  br label %if.end.i315

if.else.i:                                        ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #17
  %castaddr.i = getelementptr inbounds %struct.dlm_user_args, ptr %115, i32 0, i32 4
  %136 = ptrtoint ptr %castaddr.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %castaddr.i, align 4
  %castparam.i = getelementptr inbounds %struct.dlm_user_args, ptr %115, i32 0, i32 3
  %138 = ptrtoint ptr %castparam.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %castparam.i, align 8
  br label %if.end.i315

if.end.i315:                                      ; preds = %if.else.i, %if.then.i
  %.sink18.i = phi ptr [ %137, %if.else.i ], [ %132, %if.then.i ]
  %.sink.i = phi ptr [ %139, %if.else.i ], [ %134, %if.then.i ]
  %140 = getelementptr inbounds %struct.dlm_lock_result, ptr %result.i, i32 0, i32 2
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %.sink18.i, ptr %140, align 4
  %142 = getelementptr inbounds %struct.dlm_lock_result, ptr %result.i, i32 0, i32 3
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %.sink.i, ptr %142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copy_lvb.1)
  %tobool9.not.i = icmp eq i32 %copy_lvb.1, 0
  br i1 %tobool9.not.i, label %if.end.i315.if.end21.i_crit_edge, label %land.lhs.true.i

if.end.i315.if.end21.i_crit_edge:                 ; preds = %if.end.i315
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

land.lhs.true.i:                                  ; preds = %if.end.i315
  %sb_lvbptr.i = getelementptr inbounds %struct.dlm_user_args, ptr %115, i32 0, i32 1, i32 3
  %144 = ptrtoint ptr %sb_lvbptr.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %sb_lvbptr.i, align 4
  %tobool11.not.i = icmp ne ptr %145, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %count)
  %cmp.i316 = icmp ugt i32 %count, 83
  %or.cond.i = and i1 %cmp.i316, %tobool11.not.i
  br i1 %or.cond.i, label %if.then14.i, label %land.lhs.true.i.if.end21.i_crit_edge

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  %add.ptr.i = getelementptr i8, ptr %buf, i32 52
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #15
  %call.i.i.i317 = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i317, label %if.then14.i.copy_result_to_user.exit_crit_edge, label %if.end.i.i.i320

if.then14.i.copy_result_to_user.exit_crit_edge:   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_result_to_user.exit

if.end.i.i.i320:                                  ; preds = %if.then14.i
  %146 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr.i, i32 32, i32 -1226833920) #20, !srcloc !115
  %asmresult.i.i.i318 = extractvalue { i32, i32 } %146, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i318)
  %cmp.i6.i.i319 = icmp eq i32 %asmresult.i.i.i318, 0
  br i1 %cmp.i6.i.i319, label %copy_to_user.exit.i323, label %if.end.i.i.i320.copy_result_to_user.exit_crit_edge

if.end.i.i.i320.copy_result_to_user.exit_crit_edge: ; preds = %if.end.i.i.i320
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_result_to_user.exit

copy_to_user.exit.i323:                           ; preds = %if.end.i.i.i320
  %call.i.i.i.i321 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %145, i32 noundef 32) #15
  %call.i12.i.i.i322 = call i32 @arm_copy_to_user(ptr noundef %add.ptr.i, ptr noundef nonnull %145, i32 noundef 32) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i322)
  %tobool17.not.i = icmp eq i32 %call.i12.i.i.i322, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %copy_to_user.exit.i323.copy_result_to_user.exit_crit_edge

copy_to_user.exit.i323.copy_result_to_user.exit_crit_edge: ; preds = %copy_to_user.exit.i323
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_result_to_user.exit

if.end19.i:                                       ; preds = %copy_to_user.exit.i323
  call void @__sanitizer_cov_trace_pc() #17
  %lvb_offset.i = getelementptr inbounds %struct.dlm_lock_result, ptr %result.i, i32 0, i32 8
  %147 = ptrtoint ptr %lvb_offset.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 52, ptr %lvb_offset.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end19.i, %land.lhs.true.i.if.end21.i_crit_edge, %if.end.i315.if.end21.i_crit_edge
  %len.0.i = phi i32 [ 84, %if.end19.i ], [ 52, %land.lhs.true.i.if.end21.i_crit_edge ], [ 52, %if.end.i315.if.end21.i_crit_edge ]
  %length.i = getelementptr inbounds %struct.dlm_lock_result, ptr %result.i, i32 0, i32 1
  %148 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %len.0.i, ptr %length.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #15
  %call.i.i5.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i5.i, label %if.end21.i.copy_result_to_user.exit_crit_edge, label %if.end.i.i8.i

if.end21.i.copy_result_to_user.exit_crit_edge:    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_result_to_user.exit

if.end.i.i8.i:                                    ; preds = %if.end21.i
  %149 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 52, i32 -1226833920) #20, !srcloc !115
  %asmresult.i.i6.i = extractvalue { i32, i32 } %149, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i6.i)
  %cmp.i6.i7.i = icmp eq i32 %asmresult.i.i6.i, 0
  br i1 %cmp.i6.i7.i, label %copy_to_user.exit13.i, label %if.end.i.i8.i.copy_result_to_user.exit_crit_edge

if.end.i.i8.i.copy_result_to_user.exit_crit_edge: ; preds = %if.end.i.i8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_result_to_user.exit

copy_to_user.exit13.i:                            ; preds = %if.end.i.i8.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i9.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %result.i, i32 noundef 52) #15
  %call.i12.i.i10.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %result.i, i32 noundef 52) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i10.i)
  %tobool23.not.i = icmp eq i32 %call.i12.i.i10.i, 0
  %spec.select.i324 = select i1 %tobool23.not.i, i32 %len.0.i, i32 -14
  br label %copy_result_to_user.exit

copy_result_to_user.exit:                         ; preds = %copy_to_user.exit13.i, %if.end.i.i8.i.copy_result_to_user.exit_crit_edge, %if.end21.i.copy_result_to_user.exit_crit_edge, %copy_to_user.exit.i323.copy_result_to_user.exit_crit_edge, %if.end.i.i.i320.copy_result_to_user.exit_crit_edge, %if.then14.i.copy_result_to_user.exit_crit_edge
  %error.0.i = phi i32 [ -14, %copy_to_user.exit.i323.copy_result_to_user.exit_crit_edge ], [ -14, %if.then14.i.copy_result_to_user.exit_crit_edge ], [ -14, %if.end.i.i.i320.copy_result_to_user.exit_crit_edge ], [ -14, %if.end21.i.copy_result_to_user.exit_crit_edge ], [ -14, %if.end.i.i8.i.copy_result_to_user.exit_crit_edge ], [ %spec.select.i324, %copy_to_user.exit13.i ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %result.i) #15
  %150 = ptrtoint ptr %resid to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %resid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool246.not = icmp eq i32 %151, 0
  br i1 %tobool246.not, label %if.then247, label %copy_result_to_user.exit.cleanup_crit_edge

copy_result_to_user.exit.cleanup_crit_edge:       ; preds = %copy_result_to_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then247:                                       ; preds = %copy_result_to_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call248 = call i32 @dlm_put_lkb(ptr noundef %add.ptr) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then247, %copy_result_to_user.exit.cleanup_crit_edge, %try_another.backedge.cleanup_crit_edge, %if.then186, %if.then18, %try_another.preheader.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end, %copy_version_to_user.exit
  %retval.0 = phi i32 [ %23, %copy_version_to_user.exit ], [ -11, %if.then18 ], [ -512, %if.then186 ], [ -22, %do.end ], [ -22, %if.end5.cleanup_crit_edge ], [ %error.0.i, %if.then247 ], [ %error.0.i, %copy_result_to_user.exit.cleanup_crit_edge ], [ -22, %try_another.preheader.cleanup_crit_edge ], [ -22, %try_another.backedge.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resid) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cb) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = add i32 %count, -169
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65, i32 %2)
  %3 = icmp ult i32 %2, -65
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #15
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 6
  br i1 %cmp.not.i, label %land.lhs.true.i, label %if.end7.check_version.exit_crit_edge

if.end7.check_version.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_version.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %arrayidx5.i = getelementptr [3 x i32], ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.not.i = icmp eq i32 %8, 0
  br i1 %cmp6.not.i, label %if.end10, label %land.lhs.true.i.check_version.exit_crit_edge

land.lhs.true.i.check_version.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_version.exit

check_version.exit:                               ; preds = %land.lhs.true.i.check_version.exit_crit_edge, %if.end7.check_version.exit_crit_edge
  %9 = tail call i32 @llvm.read_register.i32(metadata !101) #15
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 101
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid.i.i, align 8
  %arrayidx13.i = getelementptr [3 x i32], ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx13.i, align 4
  %arrayidx15.i = getelementptr [3 x i32], ptr %call, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx15.i, align 8
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %comm.i, i32 noundef %14, i32 noundef %6, i32 noundef %16, i32 noundef %18, i32 noundef 6, i32 noundef 0, i32 noundef 2) #18
  br label %out_free

if.end10:                                         ; preds = %land.lhs.true.i
  %cmd = getelementptr inbounds %struct.dlm_write_request, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cmd, align 4
  %21 = add i8 %20, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %21)
  %switch = icmp ult i8 %21, -2
  %tobool17.not = icmp eq ptr %1, null
  %or.cond120 = select i1 %switch, i1 true, i1 %tobool17.not
  br i1 %or.cond120, label %if.end10.if.end22_crit_edge, label %land.lhs.true18

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

land.lhs.true18:                                  ; preds = %if.end10
  %flags = getelementptr inbounds %struct.dlm_user_proc, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool20.not = icmp eq i32 %24, 0
  br i1 %tobool20.not, label %land.lhs.true18.if.end22_crit_edge, label %land.lhs.true18.out_free_crit_edge

land.lhs.true18.out_free_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

land.lhs.true18.if.end22_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true18.if.end22_crit_edge, %if.end10.if.end22_crit_edge
  %25 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %20, label %do.end87 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb30
    i8 7, label %sw.bb41
    i8 4, label %sw.bb52
    i8 5, label %sw.bb63
    i8 6, label %sw.bb74
  ]

sw.bb:                                            ; preds = %if.end22
  br i1 %tobool17.not, label %do.end, label %if.end28

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #18
  br label %out_free

if.end28:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %i = getelementptr inbounds %struct.dlm_write_request, ptr %call, i32 0, i32 4
  %call29 = tail call fastcc i32 @device_user_lock(ptr noundef nonnull %1, ptr noundef %i)
  br label %out_free

sw.bb30:                                          ; preds = %if.end22
  br i1 %tobool17.not, label %do.end35, label %if.end38

do.end35:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #17
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #18
  br label %out_free

if.end38:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #17
  %i39 = getelementptr inbounds %struct.dlm_write_request, ptr %call, i32 0, i32 4
  %call40 = tail call fastcc i32 @device_user_unlock(ptr noundef nonnull %1, ptr noundef %i39)
  br label %out_free

sw.bb41:                                          ; preds = %if.end22
  br i1 %tobool17.not, label %do.end46, label %if.end49

do.end46:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #17
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #18
  br label %out_free

if.end49:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #17
  %i50 = getelementptr inbounds %struct.dlm_write_request, ptr %call, i32 0, i32 4
  %call51 = tail call fastcc i32 @device_user_deadlock(ptr noundef nonnull %1, ptr noundef %i50)
  br label %out_free

sw.bb52:                                          ; preds = %if.end22
  br i1 %tobool17.not, label %if.end60, label %do.end57

do.end57:                                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #17
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #18
  br label %out_free

if.end60:                                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #17
  %i61 = getelementptr inbounds %struct.dlm_write_request, ptr %call, i32 0, i32 4
  %call62 = tail call fastcc i32 @device_create_lockspace(ptr noundef %i61)
  br label %out_free

sw.bb63:                                          ; preds = %if.end22
  br i1 %tobool17.not, label %if.end71, label %do.end68

do.end68:                                         ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #17
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #18
  br label %out_free

if.end71:                                         ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #17
  %i72 = getelementptr inbounds %struct.dlm_write_request, ptr %call, i32 0, i32 4
  %call73 = tail call fastcc i32 @device_remove_lockspace(ptr noundef %i72)
  br label %out_free

sw.bb74:                                          ; preds = %if.end22
  br i1 %tobool17.not, label %do.end79, label %if.end82

do.end79:                                         ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #17
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #18
  br label %out_free

if.end82:                                         ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #17
  %i83 = getelementptr inbounds %struct.dlm_write_request, ptr %call, i32 0, i32 4
  %call84 = tail call fastcc i32 @device_user_purge(ptr noundef nonnull %1, ptr noundef %i83)
  br label %out_free

do.end87:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %conv24 = zext i8 %20 to i32
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv24) #18
  br label %out_free

out_free:                                         ; preds = %do.end87, %if.end82, %do.end79, %if.end71, %do.end68, %if.end60, %do.end57, %if.end49, %do.end46, %if.end38, %do.end35, %if.end28, %do.end, %land.lhs.true18.out_free_crit_edge, %check_version.exit
  %error.0 = phi i32 [ -22, %do.end87 ], [ %call84, %if.end82 ], [ -22, %do.end79 ], [ -22, %do.end68 ], [ %call73, %if.end71 ], [ -22, %do.end57 ], [ %call62, %if.end60 ], [ %call51, %if.end49 ], [ -22, %do.end46 ], [ %call40, %if.end38 ], [ -22, %do.end35 ], [ %call29, %if.end28 ], [ -22, %do.end ], [ -52, %check_version.exit ], [ -22, %land.lhs.true18.out_free_crit_edge ]
  tail call void @kfree(ptr noundef %call) #15
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then5 ], [ %error.0, %out_free ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ctl_device_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %file) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ctl_device_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_rem_lkb_callback(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @device_user_lock(ptr noundef %proc, ptr noundef %params) unnamed_addr #0 align 64 {
entry:
  %lkid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lkid) #15
  %0 = ptrtoint ptr %lkid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lkid, align 4, !annotation !114
  %1 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %proc, align 4
  %call = tail call ptr @dlm_find_lockspace_local(ptr noundef %2) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %castaddr = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 9
  %3 = ptrtoint ptr %castaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %castaddr, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %lksb = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 12
  %5 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lksb, align 8
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %lor.lhs.false.out_crit_edge, label %if.end4

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end4:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3392, i32 noundef 48) #21
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.out_crit_edge, label %if.end8

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end8:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %proc, ptr %call7.i.i, align 8
  %9 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lksb, align 8
  %user_lksb = getelementptr inbounds %struct.dlm_user_args, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %user_lksb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %user_lksb, align 4
  %castparam = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 8
  %12 = ptrtoint ptr %castparam to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %castparam, align 8
  %castparam11 = getelementptr inbounds %struct.dlm_user_args, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %castparam11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %castparam11, align 8
  %15 = ptrtoint ptr %castaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %castaddr, align 4
  %castaddr13 = getelementptr inbounds %struct.dlm_user_args, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %castaddr13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %castaddr13, align 4
  %bastparam = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 10
  %18 = ptrtoint ptr %bastparam to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bastparam, align 8
  %bastparam14 = getelementptr inbounds %struct.dlm_user_args, ptr %call7.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %bastparam14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %bastparam14, align 8
  %bastaddr = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 11
  %21 = ptrtoint ptr %bastaddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bastaddr, align 4
  %bastaddr15 = getelementptr inbounds %struct.dlm_user_args, ptr %call7.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %bastaddr15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %bastaddr15, align 4
  %xid = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 6
  %24 = ptrtoint ptr %xid to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %xid, align 8
  %xid16 = getelementptr inbounds %struct.dlm_user_args, ptr %call7.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %xid16 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %xid16, align 8
  %flags = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 3
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %params, align 8
  %conv = zext i8 %30 to i32
  %lkid20 = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 4
  %31 = ptrtoint ptr %lkid20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lkid20, align 8
  %lvb = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 13
  %timeout = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 7
  %33 = ptrtoint ptr %timeout to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %timeout, align 8
  %conv21 = trunc i64 %34 to i32
  %call22 = tail call i32 @dlm_user_convert(ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i, i32 noundef %conv, i32 noundef %28, i32 noundef %32, ptr noundef %lvb, i32 noundef %conv21) #15
  br label %out

if.else:                                          ; preds = %if.end8
  %and24 = and i32 %28, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %35 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %params, align 8
  %conv40 = zext i8 %36 to i32
  %name42 = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 14
  %namelen44 = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 1
  %37 = ptrtoint ptr %namelen44 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %namelen44, align 1
  %conv45 = zext i8 %38 to i32
  %timeout46 = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 7
  %39 = ptrtoint ptr %timeout46 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %timeout46, align 8
  %conv47 = trunc i64 %40 to i32
  br i1 %tobool25.not, label %if.else38, label %if.then26

if.then26:                                        ; preds = %if.else
  %call34 = call i32 @dlm_user_adopt_orphan(ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i, i32 noundef %conv40, i32 noundef %28, ptr noundef %name42, i32 noundef %conv45, i32 noundef %conv47, ptr noundef nonnull %lkid) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.then26.out_crit_edge

if.then26.out_crit_edge:                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then36:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %lkid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lkid, align 4
  br label %out

if.else38:                                        ; preds = %if.else
  %call48 = tail call i32 @dlm_user_request(ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i, i32 noundef %conv40, i32 noundef %28, ptr noundef %name42, i32 noundef %conv45, i32 noundef %conv47) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %if.else38.out_crit_edge

if.else38.out_crit_edge:                          ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then50:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #17
  %sb_lkid = getelementptr inbounds %struct.dlm_user_args, ptr %call7.i.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %sb_lkid to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sb_lkid, align 8
  br label %out

out:                                              ; preds = %if.then50, %if.else38.out_crit_edge, %if.then36, %if.then26.out_crit_edge, %if.then18, %if.end4.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge
  %error.0 = phi i32 [ %call22, %if.then18 ], [ %call34, %if.then26.out_crit_edge ], [ %42, %if.then36 ], [ %call48, %if.else38.out_crit_edge ], [ %44, %if.then50 ], [ -12, %if.end4.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %if.end.out_crit_edge ]
  call void @dlm_put_lockspace(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lkid) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @device_user_unlock(ptr noundef %proc, ptr noundef %params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc, align 4
  %call = tail call ptr @dlm_find_lockspace_local(ptr noundef %1) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3392, i32 noundef 48) #21
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %proc, ptr %call7.i.i, align 8
  %lksb = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 12
  %4 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lksb, align 8
  %user_lksb = getelementptr inbounds %struct.dlm_user_args, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %user_lksb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %user_lksb, align 4
  %castparam = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 8
  %7 = ptrtoint ptr %castparam to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %castparam, align 8
  %castparam6 = getelementptr inbounds %struct.dlm_user_args, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %castparam6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %castparam6, align 8
  %castaddr = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 9
  %10 = ptrtoint ptr %castaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %castaddr, align 4
  %castaddr7 = getelementptr inbounds %struct.dlm_user_args, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %castaddr7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %castaddr7, align 4
  %flags = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 3
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %lkid13 = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 4
  %15 = ptrtoint ptr %lkid13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lkid13, align 8
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %call11 = tail call i32 @dlm_user_cancel(ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i, i32 noundef %14, i32 noundef %16) #15
  br label %out

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %lvb = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 13
  %call14 = tail call i32 @dlm_user_unlock(ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i, i32 noundef %14, i32 noundef %16, ptr noundef %lvb) #15
  br label %out

out:                                              ; preds = %if.else, %if.then9, %if.end.out_crit_edge
  %error.0 = phi i32 [ %call11, %if.then9 ], [ %call14, %if.else ], [ -12, %if.end.out_crit_edge ]
  tail call void @dlm_put_lockspace(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @device_user_deadlock(ptr nocapture noundef readonly %proc, ptr nocapture noundef readonly %params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc, align 4
  %call = tail call ptr @dlm_find_lockspace_local(ptr noundef %1) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %lkid = getelementptr inbounds %struct.dlm_lock_params, ptr %params, i32 0, i32 4
  %4 = ptrtoint ptr %lkid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lkid, align 8
  %call1 = tail call i32 @dlm_user_deadlock(ptr noundef nonnull %call, i32 noundef %3, i32 noundef %5) #15
  tail call void @dlm_put_lockspace(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @device_create_lockspace(ptr noundef %params) unnamed_addr #0 align 64 {
entry:
  %lockspace = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lockspace) #15
  %0 = ptrtoint ptr %lockspace to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %lockspace, align 4, !annotation !114
  %call = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.dlm_lspace_params, ptr %params, i32 0, i32 2
  %1 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %params, align 4
  %call1 = call i32 @dlm_new_lockspace(ptr noundef %name, ptr noundef getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 14), i32 noundef %2, i32 noundef 32, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %lockspace) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %lockspace to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lockspace, align 4
  %call4 = call ptr @dlm_find_lockspace_local(ptr noundef %4) #15
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %ls_device.i = getelementptr inbounds %struct.dlm_ls, ptr %call4, i32 0, i32 53
  %name1.i = getelementptr inbounds %struct.dlm_ls, ptr %call4, i32 0, i32 53, i32 1
  %5 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name1.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.if.else_crit_edge

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.end.i:                                         ; preds = %if.end7
  %call.i = call i32 @strlen(ptr noundef %name) #22
  %add3.i = add i32 %call.i, 5
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add3.i, i32 noundef 3392) #23
  %7 = ptrtoint ptr %name1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i.i.i, ptr %name1.i, align 4
  %tobool9.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool9.not.i, label %if.end.i.if.then12_crit_edge, label %if.end11.i

if.end.i.if.then12_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

if.end11.i:                                       ; preds = %if.end.i
  %call14.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i.i, i32 noundef %add3.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @name_prefix, ptr noundef %name) #15
  %fops.i = getelementptr inbounds %struct.dlm_ls, ptr %call4, i32 0, i32 53, i32 2
  %8 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @device_fops, ptr %fops.i, align 8
  %9 = ptrtoint ptr %ls_device.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 255, ptr %ls_device.i, align 8
  %call18.i = call i32 @misc_register(ptr noundef %ls_device.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end11.i.if.else_crit_edge, label %if.then20.i

if.end11.i.if.else_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then20.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name1.i, align 4
  call void @kfree(ptr noundef %11) #15
  %12 = ptrtoint ptr %name1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %name1.i, align 4
  br label %if.then12

if.then12:                                        ; preds = %if.then20.i, %if.end.i.if.then12_crit_edge
  %retval.0.i = phi i32 [ %call18.i, %if.then20.i ], [ -12, %if.end.i.if.then12_crit_edge ]
  call void @dlm_put_lockspace(ptr noundef nonnull %call4) #15
  %13 = ptrtoint ptr %lockspace to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lockspace, align 4
  %call13 = call i32 @dlm_release_lockspace(ptr noundef %14, i32 noundef 0) #15
  br label %cleanup

if.else:                                          ; preds = %if.end11.i.if.else_crit_edge, %if.end7.if.else_crit_edge
  call void @dlm_put_lockspace(ptr noundef nonnull %call4) #15
  %15 = ptrtoint ptr %ls_device.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ls_device.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then12, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -2, %if.end3.cleanup_crit_edge ], [ %retval.0.i, %if.then12 ], [ %16, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lockspace) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @device_remove_lockspace(ptr nocapture noundef readonly %params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %minor = getelementptr inbounds %struct.dlm_lspace_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minor, align 4
  %call1 = tail call ptr @dlm_find_lockspace_device(i32 noundef %1) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %params, align 4
  %and = and i32 %3, 2
  %ls_local_handle = getelementptr inbounds %struct.dlm_ls, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %ls_local_handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ls_local_handle, align 8
  tail call void @dlm_put_lockspace(ptr noundef nonnull %call1) #15
  %call7 = tail call i32 @dlm_release_lockspace(ptr noundef %5, i32 noundef %and) #15
  %6 = tail call i32 @llvm.smin.i32(i32 %call7, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end3 ], [ -1, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @device_user_purge(ptr noundef %proc, ptr nocapture noundef readonly %params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc, align 4
  %call = tail call ptr @dlm_find_lockspace_local(ptr noundef %1) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %params, align 4
  %pid = getelementptr inbounds %struct.dlm_purge_params, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 4
  %call1 = tail call i32 @dlm_user_purge(ptr noundef nonnull %call, ptr noundef %proc, i32 noundef %3, i32 noundef %5) #15
  tail call void @dlm_put_lockspace(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_find_lockspace_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_user_convert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_user_adopt_orphan(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_user_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_put_lockspace(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_user_cancel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_user_unlock(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_user_deadlock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_new_lockspace(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_release_lockspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wait1 = getelementptr inbounds %struct.dlm_user_proc, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wait1, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wait1, ptr noundef nonnull %wait) #15
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %asts_spin = getelementptr inbounds %struct.dlm_user_proc, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %asts_spin) #15
  %asts = getelementptr inbounds %struct.dlm_user_proc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %asts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %asts, align 4
  %cmp.i.not = icmp eq ptr %5, %asts
  tail call void @_raw_spin_unlock(ptr noundef %asts_spin) #15
  %. = select i1 %cmp.i.not, i32 0, i32 65
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call1 = tail call ptr @dlm_find_lockspace_device(i32 noundef %and.i) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3392, i32 noundef 172) #21
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dlm_put_lockspace(ptr noundef nonnull %call1) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %ls_local_handle = getelementptr inbounds %struct.dlm_ls, ptr %call1, i32 0, i32 1
  %3 = ptrtoint ptr %ls_local_handle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ls_local_handle, align 8
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %call7.i.i, align 8
  %asts = getelementptr inbounds %struct.dlm_user_proc, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %asts to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %asts, ptr %asts, align 8
  %prev.i = getelementptr inbounds %struct.dlm_user_proc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %asts, ptr %prev.i, align 4
  %locks = getelementptr inbounds %struct.dlm_user_proc, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %locks to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %locks, ptr %locks, align 4
  %prev.i25 = getelementptr inbounds %struct.dlm_user_proc, ptr %call7.i.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %locks, ptr %prev.i25, align 8
  %unlocking = getelementptr inbounds %struct.dlm_user_proc, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %unlocking to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %unlocking, ptr %unlocking, align 8
  %prev.i26 = getelementptr inbounds %struct.dlm_user_proc, ptr %call7.i.i, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i26 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %unlocking, ptr %prev.i26, align 4
  %asts_spin = getelementptr inbounds %struct.dlm_user_proc, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %asts_spin, ptr noundef nonnull @.str.42, ptr noundef nonnull @device_open.__key, i16 noundef signext 3) #15
  %locks_spin = getelementptr inbounds %struct.dlm_user_proc, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %locks_spin, ptr noundef nonnull @.str.44, ptr noundef nonnull @device_open.__key.43, i16 noundef signext 3) #15
  %wait = getelementptr inbounds %struct.dlm_user_proc, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.46, ptr noundef nonnull @device_open.__key.45) #15
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %if.then4 ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call ptr @dlm_find_lockspace_local(ptr noundef %3) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.dlm_user_proc, ptr %1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #15
  tail call void @dlm_clear_proc_locks(ptr noundef nonnull %call, ptr noundef %1) #15
  tail call void @kfree(ptr noundef %1) #15
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %private_data, align 4
  tail call void @dlm_put_lockspace(ptr noundef nonnull %call) #15
  tail call void @dlm_put_lockspace(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_find_lockspace_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_clear_proc_locks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_user_purge(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @monitor_device_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @dlm_monitor_opened, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull @dlm_monitor_opened, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @dlm_monitor_opened, ptr nonnull @dlm_monitor_opened, i32 1, ptr nonnull elementtype(i32) @dlm_monitor_opened) #15, !srcloc !118
  store i1 true, ptr @dlm_monitor_unused, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @monitor_device_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @dlm_monitor_opened, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr nonnull @dlm_monitor_opened, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @dlm_monitor_opened, ptr nonnull @dlm_monitor_opened, i32 1, ptr nonnull elementtype(i32) @dlm_monitor_opened) #15, !srcloc !120
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dlm_stop_lockspaces() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_stop_lockspaces() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nobuiltin nounwind }
attributes #23 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !60, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !84, !86, !88, !89, !91, !92, !94, !95, !97, !99}
!llvm.named.register.sp = !{!101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/dlm/user.c", i32 198, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dlm_user_add_ast._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dlm_user_add_ast._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dlm_user_add_ast._entry.4, !1, !"_entry", i1 false, i1 false}
!9 = !{ptr @dlm_user_add_ast._entry_ptr.6, !1, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/dlm/user.c", i32 994, i32 3}
!13 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @dlm_user_init._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @dlm_user_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/dlm/user.c", i32 1000, i32 3}
!18 = !{ptr @dlm_user_init._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @dlm_user_init._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @dlm_monitor_opened, !21, !"dlm_monitor_opened", i1 false, i1 false}
!21 = !{!"../fs/dlm/user.c", i32 29, i32 17}
!22 = distinct !{null, !23, !"dlm_monitor_unused", i1 false, i1 false}
!23 = !{!"../fs/dlm/user.c", i32 30, i32 12}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/dlm/user.c", i32 968, i32 11}
!26 = !{ptr @ctl_device, !27, !"ctl_device", i1 false, i1 false}
!27 = !{!"../fs/dlm/user.c", i32 967, i32 26}
!28 = !{ptr @ctl_device_fops, !29, !"ctl_device_fops", i1 false, i1 false}
!29 = !{!"../fs/dlm/user.c", i32 958, i32 37}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/dlm/user.c", i32 792, i32 3}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @device_read._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @device_read._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../fs/dlm/user.c", i32 819, i32 3}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../fs/dlm/user.c", i32 826, i32 3}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/dlm/user.c", i32 848, i32 3}
!41 = !{ptr @device_read._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @device_read._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!45 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/dlm/user.c", i32 570, i32 4}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @device_write._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @device_write._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @device_write._entry.25, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../fs/dlm/user.c", i32 578, i32 4}
!57 = !{ptr @device_write._entry_ptr.26, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @device_write._entry.27, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../fs/dlm/user.c", i32 586, i32 4}
!60 = !{ptr @device_write._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/dlm/user.c", i32 594, i32 4}
!63 = !{ptr @device_write._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @device_write._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @device_write._entry.32, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../fs/dlm/user.c", i32 602, i32 4}
!67 = !{ptr @device_write._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @device_write._entry.34, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../fs/dlm/user.c", i32 610, i32 4}
!70 = !{ptr @device_write._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/dlm/user.c", i32 617, i32 3}
!73 = !{ptr @device_write._entry.36, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @device_write._entry_ptr.38, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/dlm/user.c", i32 465, i32 3}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @check_version._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @check_version._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/dlm/user.c", i32 350, i32 44}
!82 = !{ptr @name_prefix, !83, !"name_prefix", i1 false, i1 false}
!83 = !{!"../fs/dlm/user.c", i32 27, i32 19}
!84 = !{ptr @device_fops, !85, !"device_fops", i1 false, i1 false}
!85 = !{!"../fs/dlm/user.c", i32 948, i32 37}
!86 = !{ptr @device_open.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../fs/dlm/user.c", i32 649, i32 2}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @device_open.__key.43, !90, !"__key", i1 false, i1 false}
!90 = !{!"../fs/dlm/user.c", i32 650, i32 2}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @device_open.__key.45, !93, !"__key", i1 false, i1 false}
!93 = !{!"../fs/dlm/user.c", i32 651, i32 2}
!94 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/dlm/user.c", i32 981, i32 11}
!97 = !{ptr @monitor_device, !98, !"monitor_device", i1 false, i1 false}
!98 = !{!"../fs/dlm/user.c", i32 980, i32 26}
!99 = !{ptr @monitor_device_fops, !100, !"monitor_device_fops", i1 false, i1 false}
!100 = !{!"../fs/dlm/user.c", i32 973, i32 37}
!101 = !{!"sp"}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 2148602263, i64 2148602295, i64 2148602324, i64 2148602358, i64 2148602389, i64 2148602412}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{!"auto-init"}
!115 = !{i64 2152679383, i64 2152679408}
!116 = !{i64 2153617114}
!117 = !{i64 2153621876}
!118 = !{i64 2148600733, i64 2148600759, i64 2148600788, i64 2148600822, i64 2148600853, i64 2148600876}
!119 = !{i64 2148689209}
!120 = !{i64 2148603918, i64 2148603950, i64 2148603979, i64 2148604013, i64 2148604044, i64 2148604067}
!121 = !{i64 2148689438}
