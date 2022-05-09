; ModuleID = '/llk/IR_all_yes/fs/orangefs/devorangefs-req.c_pt.bc'
source_filename = "../fs/orangefs/devorangefs-req.c"
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
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.35 }
%union.anon.35 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.91 = type { i32, i32, i64 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.74, %union.anon.75 }
%union.anon.74 = type { ptr }
%union.anon.75 = type { i64 }
%struct.ORANGEFS_dev_map_desc = type { ptr, i32, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }

@devreq_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @devreq_mutex, i64 52), ptr getelementptr (i8, ptr @devreq_mutex, i64 52) }, ptr @devreq_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@open_access_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pvfs2-req\00", [22 x i8] zeroinitializer }, align 32
@orangefs_devreq_file_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @orangefs_devreq_read, ptr null, ptr null, ptr @orangefs_devreq_write_iter, ptr null, ptr null, ptr null, ptr @orangefs_devreq_poll, ptr @orangefs_devreq_ioctl, ptr null, ptr null, i32 0, ptr @orangefs_devreq_open, ptr null, ptr @orangefs_devreq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@orangefs_dev_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@orangefs_gossip_debug_mask = external dso_local local_unnamed_addr global i64, align 8
@orangefs_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017Failed to register /dev/%s (error %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"orangefs_dev_init\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs/orangefs/devorangefs-req.c\00", [34 x i8] zeroinitializer }, align 32
@orangefs_dev_init._entry_ptr = internal global ptr @orangefs_dev_init._entry, section ".printk_index", align 4
@orangefs_dev_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017*** /dev/%s character device registered ***\0A\00", [49 x i8] zeroinitializer }, align 32
@orangefs_dev_init._entry_ptr.6 = internal global ptr @orangefs_dev_init._entry.4, section ".printk_index", align 4
@orangefs_dev_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017'mknod /dev/%s c %d 0'.\0A\00", [37 x i8] zeroinitializer }, align 32
@orangefs_dev_init._entry_ptr.9 = internal global ptr @orangefs_dev_init._entry.7, section ".printk_index", align 4
@orangefs_dev_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017*** /dev/%s character device unregistered ***\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"orangefs_dev_cleanup\00", [43 x i8] zeroinitializer }, align 32
@orangefs_dev_cleanup._entry_ptr = internal global ptr @orangefs_dev_cleanup._entry, section ".printk_index", align 4
@orangefs_userspace_version = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"devreq_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"devreq_mutex\00", [19 x i8] zeroinitializer }, align 32
@orangefs_devreq_read.magic = internal global { i32, [28 x i8] } { i32 537068841, [28 x i8] zeroinitializer }, align 32
@orangefs_devreq_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: blocking read from client-core.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"orangefs_devreq_read\00", [43 x i8] zeroinitializer }, align 32
@orangefs_devreq_read._entry_ptr = internal global ptr @orangefs_devreq_read._entry, section ".printk_index", align 4
@orangefs_devreq_read._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013orangefs: client-core tried to read wrong size\0A\00", [46 x i8] zeroinitializer }, align 32
@orangefs_devreq_read._entry_ptr.18 = internal global ptr @orangefs_devreq_read._entry.16, section ".printk_index", align 4
@orangefs_request_list = external dso_local global %struct.list_head, align 4
@orangefs_request_list_lock = external dso_local global %struct.spinlock, align 4
@orangefs_devreq_read._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.3, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: mount pending, skipping op tag %llu %s\0A\00", [50 x i8] zeroinitializer }, align 32
@orangefs_devreq_read._entry_ptr.21 = internal global ptr @orangefs_devreq_read._entry.19, section ".printk_index", align 4
@orangefs_devreq_read._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.3, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017orangefs: skipping op tag %llu %s\0A\00", [59 x i8] zeroinitializer }, align 32
@orangefs_devreq_read._entry_ptr.24 = internal global ptr @orangefs_devreq_read._entry.22, section ".printk_index", align 4
@orangefs_devreq_read._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.3, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013orangefs: ERROR: fs_mount_pending %d\0A\00", [56 x i8] zeroinitializer }, align 32
@orangefs_devreq_read._entry_ptr.27 = internal global ptr @orangefs_devreq_read._entry.25, section ".printk_index", align 4
@orangefs_devreq_read._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.15, ptr @.str.3, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: reading op tag %llu %s\0A\00", [34 x i8] zeroinitializer }, align 32
@orangefs_devreq_read._entry_ptr.30 = internal global ptr @orangefs_devreq_read._entry.28, section ".printk_index", align 4
@orangefs_devreq_read._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.15, ptr @.str.3, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013orangefs: ERROR: Current op already queued.\0A\00", [49 x i8] zeroinitializer }, align 32
@orangefs_devreq_read._entry_ptr.33 = internal global ptr @orangefs_devreq_read._entry.31, section ".printk_index", align 4
@orangefs_htable_ops_in_progress_lock = external dso_local global %struct.spinlock, align 4
@orangefs_devreq_read._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.15, ptr @.str.3, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: 1 op:%s: op_state:%d: process:%s:\0A\00", [55 x i8] zeroinitializer }, align 32
@orangefs_devreq_read._entry_ptr.36 = internal global ptr @orangefs_devreq_read._entry.34, section ".printk_index", align 4
@orangefs_devreq_read._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.15, ptr @.str.3, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013orangefs: Failed to copy data to user space\0A\00", [49 x i8] zeroinitializer }, align 32
@orangefs_devreq_read._entry_ptr.39 = internal global ptr @orangefs_devreq_read._entry.37, section ".printk_index", align 4
@orangefs_devreq_read._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.15, ptr @.str.3, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: 2 op:%s: op_state:%d: process:%s:\0A\00", [55 x i8] zeroinitializer }, align 32
@orangefs_devreq_read._entry_ptr.42 = internal global ptr @orangefs_devreq_read._entry.40, section ".printk_index", align 4
@orangefs_superblocks_lock = external dso_local global %struct.spinlock, align 4
@orangefs_superblocks = external dso_local global %struct.list_head, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@hash_table_size = external dso_local local_unnamed_addr global i32, align 4
@orangefs_htable_ops_in_progress = external dso_local local_unnamed_addr global ptr, align 4
@orangefs_devreq_write_iter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: total:%d: ret:%zd:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"orangefs_devreq_write_iter\00", [37 x i8] zeroinitializer }, align 32
@orangefs_devreq_write_iter._entry_ptr = internal global ptr @orangefs_devreq_write_iter._entry, section ".printk_index", align 4
@orangefs_devreq_write_iter._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: total:%d: must be at least:%u:\0A\00", [58 x i8] zeroinitializer }, align 32
@orangefs_devreq_write_iter._entry_ptr.50 = internal global ptr @orangefs_devreq_write_iter._entry.48, section ".printk_index", align 4
@orangefs_devreq_write_iter._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.3, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: failed to copy head.\0A\00", [36 x i8] zeroinitializer }, align 32
@orangefs_devreq_write_iter._entry_ptr.53 = internal global ptr @orangefs_devreq_write_iter._entry.51, section ".printk_index", align 4
@orangefs_devreq_write_iter._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.3, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s: userspace claims version%d, minimum version required: %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@orangefs_devreq_write_iter._entry_ptr.56 = internal global ptr @orangefs_devreq_write_iter._entry.54, section ".printk_index", align 4
@orangefs_devreq_write_iter._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.47, ptr @.str.3, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Error: Device magic number does not match.\0A\00", [50 x i8] zeroinitializer }, align 32
@orangefs_devreq_write_iter._entry_ptr.59 = internal global ptr @orangefs_devreq_write_iter._entry.57, section ".printk_index", align 4
@orangefs_devreq_write_iter._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.47, ptr @.str.3, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Error: userspace version changes\0A\00", [60 x i8] zeroinitializer }, align 32
@orangefs_devreq_write_iter._entry_ptr.62 = internal global ptr @orangefs_devreq_write_iter._entry.60, section ".printk_index", align 4
@orangefs_devreq_write_iter._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.47, ptr @.str.3, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: No one's waiting for tag %llu\0A\00", [59 x i8] zeroinitializer }, align 32
@orangefs_devreq_write_iter._entry_ptr.65 = internal global ptr @orangefs_devreq_write_iter._entry.63, section ".printk_index", align 4
@orangefs_devreq_write_iter._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.47, ptr @.str.3, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: failed to copy downcall.\0A\00", [32 x i8] zeroinitializer }, align 32
@orangefs_devreq_write_iter._entry_ptr.68 = internal global ptr @orangefs_devreq_write_iter._entry.66, section ".printk_index", align 4
@orangefs_devreq_write_iter._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.47, ptr @.str.3, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013%s: funky write, head_size:%d: downcall_size:%d: trailer_size:%lld: total size:%d:\0A\00", [42 x i8] zeroinitializer }, align 32
@orangefs_devreq_write_iter._entry_ptr.71 = internal global ptr @orangefs_devreq_write_iter._entry.69, section ".printk_index", align 4
@orangefs_devreq_write_iter._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.47, ptr @.str.3, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: %x operation with trailer.\00", [63 x i8] zeroinitializer }, align 32
@orangefs_devreq_write_iter._entry_ptr.74 = internal global ptr @orangefs_devreq_write_iter._entry.72, section ".printk_index", align 4
@orangefs_devreq_write_iter._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.47, ptr @.str.3, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: %x operation with no trailer.\00", [60 x i8] zeroinitializer }, align 32
@orangefs_devreq_write_iter._entry_ptr.77 = internal global ptr @orangefs_devreq_write_iter._entry.75, section ".printk_index", align 4
@orangefs_devreq_write_iter._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.47, ptr @.str.3, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: failed to copy trailer.\0A\00", [33 x i8] zeroinitializer }, align 32
@orangefs_devreq_write_iter._entry_ptr.80 = internal global ptr @orangefs_devreq_write_iter._entry.78, section ".printk_index", align 4
@orangefs_devreq_write_iter._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.47, ptr @.str.3, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: op:%s: op_state:%d: process:%s:\0A\00", [57 x i8] zeroinitializer }, align 32
@orangefs_devreq_write_iter._entry_ptr.83 = internal global ptr @orangefs_devreq_write_iter._entry.81, section ".printk_index", align 4
@orangefs_request_list_waitq = external dso_local global %struct.wait_queue_head, align 4
@check_ioctl_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"\013device ioctl magic numbers don't match! Did you rebuild pvfs2-client-core/libpvfs2? [cmd %x, magic %x != %x]\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"check_ioctl_command\00", [44 x i8] zeroinitializer }, align 32
@check_ioctl_command._entry_ptr = internal global ptr @check_ioctl_command._entry, section ".printk_index", align 4
@check_ioctl_command._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.3, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Invalid ioctl command number [%d >= %d]\0A\00", [53 x i8] zeroinitializer }, align 32
@check_ioctl_command._entry_ptr.88 = internal global ptr @check_ioctl_command._entry.86, section ".printk_index", align 4
@dispatch_ioctl_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: got ORANGEFS_DEV_REMOUNT_ALL\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dispatch_ioctl_command\00", [41 x i8] zeroinitializer }, align 32
@dispatch_ioctl_command._entry_ptr = internal global ptr @dispatch_ioctl_command._entry, section ".printk_index", align 4
@orangefs_request_mutex = external dso_local global %struct.mutex, align 4
@dispatch_ioctl_command._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.3, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: priority remount in progress\0A\00", [60 x i8] zeroinitializer }, align 32
@dispatch_ioctl_command._entry_ptr.93 = internal global ptr @dispatch_ioctl_command._entry.91, section ".printk_index", align 4
@dispatch_ioctl_command._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.3, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: Remounting SB %p\0A\00", [40 x i8] zeroinitializer }, align 32
@dispatch_ioctl_command._entry_ptr.96 = internal global ptr @dispatch_ioctl_command._entry.94, section ".printk_index", align 4
@dispatch_ioctl_command._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.90, ptr @.str.3, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017SB %p remount failed\0A\00", [40 x i8] zeroinitializer }, align 32
@dispatch_ioctl_command._entry_ptr.99 = internal global ptr @dispatch_ioctl_command._entry.97, section ".printk_index", align 4
@dispatch_ioctl_command._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.90, ptr @.str.3, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: priority remount complete\0A\00", [63 x i8] zeroinitializer }, align 32
@dispatch_ioctl_command._entry_ptr.102 = internal global ptr @dispatch_ioctl_command._entry.100, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@orangefs_devreq_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s: device cannot be opened outside init_user_ns\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"orangefs_devreq_open\00", [43 x i8] zeroinitializer }, align 32
@orangefs_devreq_open._entry_ptr = internal global ptr @orangefs_devreq_open._entry, section ".printk_index", align 4
@orangefs_devreq_open._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.3, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: device cannot be opened in blocking mode\0A\00", [48 x i8] zeroinitializer }, align 32
@orangefs_devreq_open._entry_ptr.107 = internal global ptr @orangefs_devreq_open._entry.105, section ".printk_index", align 4
@orangefs_devreq_open._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.104, ptr @.str.3, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017client-core: opening device\0A\00", [33 x i8] zeroinitializer }, align 32
@orangefs_devreq_open._entry_ptr.110 = internal global ptr @orangefs_devreq_open._entry.108, section ".printk_index", align 4
@orangefs_devreq_open._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.104, ptr @.str.3, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013*****************************************************\0A\00", [39 x i8] zeroinitializer }, align 32
@orangefs_devreq_open._entry_ptr.113 = internal global ptr @orangefs_devreq_open._entry.111, section ".printk_index", align 4
@orangefs_devreq_open._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.104, ptr @.str.3, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013ORANGEFS Device Error:  You cannot open the device file \00", [37 x i8] zeroinitializer }, align 32
@orangefs_devreq_open._entry_ptr.116 = internal global ptr @orangefs_devreq_open._entry.114, section ".printk_index", align 4
@orangefs_devreq_open._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.104, ptr @.str.3, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013\0A/dev/%s more than once.  Please make sure that\0Athere are no \00", [32 x i8] zeroinitializer }, align 32
@orangefs_devreq_open._entry_ptr.119 = internal global ptr @orangefs_devreq_open._entry.117, section ".printk_index", align 4
@orangefs_devreq_open._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.104, ptr @.str.3, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013instances of a program using this device\0Acurrently running. (You must verify this!)\0A\00", [41 x i8] zeroinitializer }, align 32
@orangefs_devreq_open._entry_ptr.122 = internal global ptr @orangefs_devreq_open._entry.120, section ".printk_index", align 4
@orangefs_devreq_open._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.104, ptr @.str.3, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013For example, you can use the lsof program as follows:\0A\00", [39 x i8] zeroinitializer }, align 32
@orangefs_devreq_open._entry_ptr.125 = internal global ptr @orangefs_devreq_open._entry.123, section ".printk_index", align 4
@orangefs_devreq_open._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.104, ptr @.str.3, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013'lsof | grep %s' (run this as root)\0A\00", [57 x i8] zeroinitializer }, align 32
@orangefs_devreq_open._entry_ptr.128 = internal global ptr @orangefs_devreq_open._entry.126, section ".printk_index", align 4
@orangefs_devreq_open._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.104, ptr @.str.3, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013  open_access_count = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@orangefs_devreq_open._entry_ptr.131 = internal global ptr @orangefs_devreq_open._entry.129, section ".printk_index", align 4
@orangefs_devreq_open._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.104, ptr @.str.3, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@orangefs_devreq_open._entry_ptr.133 = internal global ptr @orangefs_devreq_open._entry.132, section ".printk_index", align 4
@orangefs_devreq_open._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.104, ptr @.str.3, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017pvfs2-client-core: open device complete (ret = %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@orangefs_devreq_open._entry_ptr.136 = internal global ptr @orangefs_devreq_open._entry.134, section ".printk_index", align 4
@orangefs_devreq_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.3, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s:pvfs2-client-core: exiting, closing device\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"orangefs_devreq_release\00", [40 x i8] zeroinitializer }, align 32
@orangefs_devreq_release._entry_ptr = internal global ptr @orangefs_devreq_release._entry, section ".printk_index", align 4
@orangefs_devreq_release._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.3, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017ORANGEFS Device Close: Filesystem(s) %s\0A\00", [53 x i8] zeroinitializer }, align 32
@orangefs_devreq_release._entry_ptr.141 = internal global ptr @orangefs_devreq_release._entry.139, section ".printk_index", align 4
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UNMOUNTED\00", [22 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MOUNTED\00", [24 x i8] zeroinitializer }, align 32
@orangefs_devreq_release._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.138, ptr @.str.3, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017pvfs2-client-core: device close complete\0A\00", [52 x i8] zeroinitializer }, align 32
@orangefs_devreq_release._entry_ptr.146 = internal global ptr @orangefs_devreq_release._entry.144, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 32, i64 4278190084, i64 4278190094, i64 4278190095]
@__sancov_gen_cov_switch_values.148 = internal global [11 x i64] [i64 9, i64 32, i64 27396, i64 27397, i64 1074031361, i64 1074031362, i64 1074031363, i64 1074031367, i64 1074031369, i64 1074817800, i64 2147773190]
@___asan_gen_.149 = private unnamed_addr constant [13 x i8] c"devreq_mutex\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"open_access_count\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 24, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 791, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant [32 x i8] c"orangefs_devreq_file_operations\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 769, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant [19 x i8] c"orangefs_dev_major\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 767, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 794, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 800, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 803, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 811, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [27 x i8] c"orangefs_userspace_version\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 22, i32 10 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 26, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 164, i32 15 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 170, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 180, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 207, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 230, i32 5 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 233, i32 5 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 258, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 268, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 312, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 330, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 335, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 230, i32 6 }
@___asan_gen_.276 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 214, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 174, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 375, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 381, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 389, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 394, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 403, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 410, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 417, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 424, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 437, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 451, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 460, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 475, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 494, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 576, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 584, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 626, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 642, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 655, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 664, i32 5 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 671, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 127, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 133, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 138, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 145, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 151, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 527, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 537, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.507 = private constant [33 x i8] c"../fs/orangefs/devorangefs-req.c\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 545, i32 2 }
@llvm.compiler.used = appending global [169 x ptr] [ptr @check_ioctl_command._entry, ptr @check_ioctl_command._entry.86, ptr @check_ioctl_command._entry_ptr, ptr @check_ioctl_command._entry_ptr.88, ptr @dispatch_ioctl_command._entry, ptr @dispatch_ioctl_command._entry.100, ptr @dispatch_ioctl_command._entry.91, ptr @dispatch_ioctl_command._entry.94, ptr @dispatch_ioctl_command._entry.97, ptr @dispatch_ioctl_command._entry_ptr, ptr @dispatch_ioctl_command._entry_ptr.102, ptr @dispatch_ioctl_command._entry_ptr.93, ptr @dispatch_ioctl_command._entry_ptr.96, ptr @dispatch_ioctl_command._entry_ptr.99, ptr @orangefs_dev_cleanup._entry, ptr @orangefs_dev_cleanup._entry_ptr, ptr @orangefs_dev_init._entry, ptr @orangefs_dev_init._entry.4, ptr @orangefs_dev_init._entry.7, ptr @orangefs_dev_init._entry_ptr, ptr @orangefs_dev_init._entry_ptr.6, ptr @orangefs_dev_init._entry_ptr.9, ptr @orangefs_devreq_open._entry, ptr @orangefs_devreq_open._entry.105, ptr @orangefs_devreq_open._entry.108, ptr @orangefs_devreq_open._entry.111, ptr @orangefs_devreq_open._entry.114, ptr @orangefs_devreq_open._entry.117, ptr @orangefs_devreq_open._entry.120, ptr @orangefs_devreq_open._entry.123, ptr @orangefs_devreq_open._entry.126, ptr @orangefs_devreq_open._entry.129, ptr @orangefs_devreq_open._entry.132, ptr @orangefs_devreq_open._entry.134, ptr @orangefs_devreq_open._entry_ptr, ptr @orangefs_devreq_open._entry_ptr.107, ptr @orangefs_devreq_open._entry_ptr.110, ptr @orangefs_devreq_open._entry_ptr.113, ptr @orangefs_devreq_open._entry_ptr.116, ptr @orangefs_devreq_open._entry_ptr.119, ptr @orangefs_devreq_open._entry_ptr.122, ptr @orangefs_devreq_open._entry_ptr.125, ptr @orangefs_devreq_open._entry_ptr.128, ptr @orangefs_devreq_open._entry_ptr.131, ptr @orangefs_devreq_open._entry_ptr.133, ptr @orangefs_devreq_open._entry_ptr.136, ptr @orangefs_devreq_read._entry, ptr @orangefs_devreq_read._entry.16, ptr @orangefs_devreq_read._entry.19, ptr @orangefs_devreq_read._entry.22, ptr @orangefs_devreq_read._entry.25, ptr @orangefs_devreq_read._entry.28, ptr @orangefs_devreq_read._entry.31, ptr @orangefs_devreq_read._entry.34, ptr @orangefs_devreq_read._entry.37, ptr @orangefs_devreq_read._entry.40, ptr @orangefs_devreq_read._entry_ptr, ptr @orangefs_devreq_read._entry_ptr.18, ptr @orangefs_devreq_read._entry_ptr.21, ptr @orangefs_devreq_read._entry_ptr.24, ptr @orangefs_devreq_read._entry_ptr.27, ptr @orangefs_devreq_read._entry_ptr.30, ptr @orangefs_devreq_read._entry_ptr.33, ptr @orangefs_devreq_read._entry_ptr.36, ptr @orangefs_devreq_read._entry_ptr.39, ptr @orangefs_devreq_read._entry_ptr.42, ptr @orangefs_devreq_release._entry, ptr @orangefs_devreq_release._entry.139, ptr @orangefs_devreq_release._entry.144, ptr @orangefs_devreq_release._entry_ptr, ptr @orangefs_devreq_release._entry_ptr.141, ptr @orangefs_devreq_release._entry_ptr.146, ptr @orangefs_devreq_write_iter._entry, ptr @orangefs_devreq_write_iter._entry.48, ptr @orangefs_devreq_write_iter._entry.51, ptr @orangefs_devreq_write_iter._entry.54, ptr @orangefs_devreq_write_iter._entry.57, ptr @orangefs_devreq_write_iter._entry.60, ptr @orangefs_devreq_write_iter._entry.63, ptr @orangefs_devreq_write_iter._entry.66, ptr @orangefs_devreq_write_iter._entry.69, ptr @orangefs_devreq_write_iter._entry.72, ptr @orangefs_devreq_write_iter._entry.75, ptr @orangefs_devreq_write_iter._entry.78, ptr @orangefs_devreq_write_iter._entry.81, ptr @orangefs_devreq_write_iter._entry_ptr, ptr @orangefs_devreq_write_iter._entry_ptr.50, ptr @orangefs_devreq_write_iter._entry_ptr.53, ptr @orangefs_devreq_write_iter._entry_ptr.56, ptr @orangefs_devreq_write_iter._entry_ptr.59, ptr @orangefs_devreq_write_iter._entry_ptr.62, ptr @orangefs_devreq_write_iter._entry_ptr.65, ptr @orangefs_devreq_write_iter._entry_ptr.68, ptr @orangefs_devreq_write_iter._entry_ptr.71, ptr @orangefs_devreq_write_iter._entry_ptr.74, ptr @orangefs_devreq_write_iter._entry_ptr.77, ptr @orangefs_devreq_write_iter._entry_ptr.80, ptr @orangefs_devreq_write_iter._entry_ptr.83, ptr @devreq_mutex, ptr @open_access_count, ptr @.str, ptr @orangefs_devreq_file_operations, ptr @orangefs_dev_major, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @orangefs_userspace_version, ptr @.str.12, ptr @.str.13, ptr @orangefs_devreq_read.magic, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.145], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devreq_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_access_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_dev_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_dev_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_dev_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_dev_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_userspace_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_read.magic to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_read._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_read._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_read._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_read._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_read._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_read._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_read._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_read._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_read._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_write_iter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_write_iter._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_write_iter._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_write_iter._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_write_iter._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_write_iter._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_write_iter._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_write_iter._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_write_iter._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_write_iter._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_write_iter._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_write_iter._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_write_iter._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_ioctl_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_ioctl_command._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispatch_ioctl_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispatch_ioctl_command._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispatch_ioctl_command._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispatch_ioctl_command._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispatch_ioctl_command._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_open._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_open._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_open._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_open._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_open._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_open._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_open._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_open._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_open._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_open._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_open._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_release._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_devreq_release._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @is_daemon_in_service() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @devreq_mutex, i32 noundef 0) #7
  %0 = load i32, ptr @open_access_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  %cond = select i1 %cmp, i32 0, i32 -5
  tail call void @mutex_unlock(ptr noundef nonnull @devreq_mutex) #7
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @__is_daemon_in_service() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @open_access_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_dev_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__register_chrdev(i32 noundef 0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str, ptr noundef nonnull @orangefs_devreq_file_operations) #7
  store i32 %call.i, ptr @orangefs_dev_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %cmp, label %do.body, label %do.body6

do.body:                                          ; preds = %entry
  br i1 %tobool.not, label %do.body.do.end4_crit_edge, label %do.end

do.body.do.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef %call.i) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %do.body.do.end4_crit_edge
  %1 = load i32, ptr @orangefs_dev_major, align 4
  br label %return

do.body6:                                         ; preds = %entry
  br i1 %tobool.not, label %do.body6.do.body16_crit_edge, label %do.end11

do.body6.do.body16_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str) #10
  br label %do.body16

do.body16:                                        ; preds = %do.end11, %do.body6.do.body16_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %2 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and17 = and i64 %2, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %tobool18.not, label %do.body16.return_crit_edge, label %do.end21

do.body16.return_crit_edge:                       ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end21:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %3 = load i32, ptr @orangefs_dev_major, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, i32 noundef %3) #10
  br label %return

return:                                           ; preds = %do.end21, %do.body16.return_crit_edge, %do.end4
  %retval.0 = phi i32 [ %1, %do.end4 ], [ 0, %do.body16.return_crit_edge ], [ 0, %do.end21 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orangefs_dev_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @orangefs_dev_major, align 4
  tail call void @__unregister_chrdev(i32 noundef %0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %1 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %1, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str) #10
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_devreq_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  %proto_ver = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proto_ver) #7
  %0 = ptrtoint ptr %proto_ver to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %proto_ver, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %1 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f_flags, align 4
  %and = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #10
  br label %cleanup220

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8544, i32 %count)
  %cmp.not = icmp eq i32 %count, 8544
  br i1 %cmp.not, label %if.end7, label %do.end4

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %cleanup220

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_request_list to i32))
  %3 = load volatile ptr, ptr @orangefs_request_list, align 4
  %cmp.i.not = icmp eq ptr %3, @orangefs_request_list
  br i1 %cmp.i.not, label %if.end7.cleanup220_crit_edge, label %restart.preheader

if.end7.cleanup220_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup220

restart.preheader:                                ; preds = %if.end7
  %add.ptr129 = getelementptr i8, ptr %buf, i32 4
  %add.ptr134 = getelementptr i8, ptr %buf, i32 8
  %add.ptr141 = getelementptr i8, ptr %buf, i32 16
  call void @_raw_spin_lock(ptr noundef nonnull @orangefs_request_list_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_request_list to i32))
  %4 = load ptr, ptr @orangefs_request_list, align 4
  %cmp17.not373448 = icmp eq ptr %4, @orangefs_request_list
  br i1 %cmp17.not373448, label %restart.preheader.if.then91_crit_edge, label %restart.preheader.for.body_crit_edge

restart.preheader.for.body_crit_edge:             ; preds = %restart.preheader
  br label %for.body

restart.preheader.if.then91_crit_edge:            ; preds = %restart.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then91

for.body:                                         ; preds = %for.body.backedge, %restart.preheader.for.body_crit_edge
  %.pn.in374 = phi ptr [ %.pn.in374.be, %for.body.backedge ], [ %4, %restart.preheader.for.body_crit_edge ]
  %op.0376 = getelementptr i8, ptr %.pn.in374, i32 -16880
  %5 = ptrtoint ptr %.pn.in374 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn378 = load ptr, ptr %.pn.in374, align 8
  %lock = getelementptr i8, ptr %.pn.in374, i32 -48
  call void @_raw_spin_lock(ptr noundef %lock) #7
  %6 = ptrtoint ptr %op.0376 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %op.0376, align 8
  %8 = and i32 %7, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %if.end28, label %for.body.cleanup83_crit_edge, !prof !238

for.body.cleanup83_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup83

if.end28:                                         ; preds = %for.body
  %call29 = call i32 @fsid_of_op(ptr noundef %op.0376) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end28.for.end_crit_edge, label %if.then31

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then31:                                        ; preds = %if.end28
  call void @_raw_spin_lock(ptr noundef nonnull @orangefs_superblocks_lock) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then31
  %.pn.in.i = phi ptr [ @orangefs_superblocks, %if.then31 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @orangefs_superblocks
  br i1 %cmp.not.i, label %fs_mount_pending.exit.thread, label %for.body.i

fs_mount_pending.exit.thread:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_superblocks_lock) #7
  br label %land.lhs.true

for.body.i:                                       ; preds = %for.cond.i
  %fs_id.i = getelementptr i8, ptr %.pn.i, i32 -280
  %10 = ptrtoint ptr %fs_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fs_id.i, align 8
  %cmp1.i = icmp eq i32 %11, %call29
  br i1 %cmp1.i, label %fs_mount_pending.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

fs_mount_pending.exit:                            ; preds = %for.body.i
  %mount_pending2.i = getelementptr i8, ptr %.pn.i, i32 -8
  %12 = ptrtoint ptr %mount_pending2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mount_pending2.i, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_superblocks_lock) #7
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %fs_mount_pending.exit.for.end_crit_edge [
    i32 1, label %do.body36
    i32 -1, label %fs_mount_pending.exit.land.lhs.true_crit_edge
  ]

fs_mount_pending.exit.land.lhs.true_crit_edge:    ; preds = %fs_mount_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

fs_mount_pending.exit.for.end_crit_edge:          ; preds = %fs_mount_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body36:                                        ; preds = %fs_mount_pending.exit
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %15 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and37 = and i64 %15, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and37)
  %tobool38.not = icmp eq i64 %and37, 0
  br i1 %tobool38.not, label %do.body36.cleanup83_crit_edge, label %do.end42

do.body36.cleanup83_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup83

do.end42:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %tag = getelementptr i8, ptr %.pn.in374, i32 -16872
  %16 = ptrtoint ptr %tag to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tag, align 8
  %call44 = call ptr @get_opname_string(ptr noundef %op.0376) #7
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15, i64 noundef %17, ptr noundef %call44) #10
  br label %cleanup83

land.lhs.true:                                    ; preds = %fs_mount_pending.exit.land.lhs.true_crit_edge, %fs_mount_pending.exit.thread
  %upcall = getelementptr i8, ptr %.pn.in374, i32 -16856
  %18 = ptrtoint ptr %upcall to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %upcall, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %19, label %do.body60 [
    i32 -16777202, label %land.lhs.true.for.end_crit_edge
    i32 -16777212, label %land.lhs.true.for.end_crit_edge469
    i32 -16777201, label %land.lhs.true.for.end_crit_edge470
  ]

land.lhs.true.for.end_crit_edge470:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.for.end_crit_edge469:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body60:                                        ; preds = %land.lhs.true
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %21 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and61 = and i64 %21, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and61)
  %tobool62.not = icmp eq i64 %and61, 0
  br i1 %tobool62.not, label %do.body60.do.end76_crit_edge, label %do.end66

do.body60.do.end76_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end76

do.end66:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  %tag68 = getelementptr i8, ptr %.pn.in374, i32 -16872
  %22 = ptrtoint ptr %tag68 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tag68, align 8
  %call69 = call ptr @get_opname_string(ptr noundef %op.0376) #7
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i64 noundef %23, ptr noundef %call69) #10
  br label %do.end76

do.end76:                                         ; preds = %do.end66, %do.body60.do.end76_crit_edge
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call29) #10
  br label %cleanup83

cleanup83:                                        ; preds = %do.end76, %do.end42, %do.body36.cleanup83_crit_edge, %for.body.cleanup83_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #7
  %cmp17.not = icmp eq ptr %.pn378, @orangefs_request_list
  br i1 %cmp17.not, label %cleanup83.if.then91_crit_edge, label %cleanup83.for.body.backedge_crit_edge

cleanup83.for.body.backedge_crit_edge:            ; preds = %cleanup83
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.backedge

cleanup83.if.then91_crit_edge:                    ; preds = %cleanup83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then91

for.body.backedge:                                ; preds = %if.then157.for.body.backedge_crit_edge, %cleanup83.for.body.backedge_crit_edge
  %.pn.in374.be = phi ptr [ %.pn378, %cleanup83.for.body.backedge_crit_edge ], [ %53, %if.then157.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %land.lhs.true.for.end_crit_edge, %land.lhs.true.for.end_crit_edge469, %land.lhs.true.for.end_crit_edge470, %fs_mount_pending.exit.for.end_crit_edge, %if.end28.for.end_crit_edge
  %tobool90.not = icmp eq ptr %op.0376, null
  br i1 %tobool90.not, label %for.end.if.then91_crit_edge, label %do.body93

for.end.if.then91_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then91

if.then91:                                        ; preds = %if.then157.if.then91_crit_edge, %for.end.if.then91_crit_edge, %cleanup83.if.then91_crit_edge, %restart.preheader.if.then91_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_request_list_lock) #7
  br label %cleanup220

do.body93:                                        ; preds = %for.end
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %24 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and94 = and i64 %24, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and94)
  %tobool95.not = icmp eq i64 %and94, 0
  br i1 %tobool95.not, label %do.body93.do.end106_crit_edge, label %do.end99

do.body93.do.end106_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end106

do.end99:                                         ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  %tag101 = getelementptr i8, ptr %.pn.in374, i32 -16872
  %25 = ptrtoint ptr %tag101 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tag101, align 8
  %call102 = call ptr @get_opname_string(ptr noundef nonnull %op.0376) #7
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.15, i64 noundef %26, ptr noundef %call102) #10
  br label %do.end106

do.end106:                                        ; preds = %do.end99, %do.body93.do.end106_crit_edge
  %27 = ptrtoint ptr %op.0376 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %op.0376, align 8
  %29 = and i32 %28, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %if.end122, label %do.end117

do.end117:                                        ; preds = %do.end106
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #10
  %call.i.i320 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in374) #7
  br i1 %call.i.i320, label %if.end.i.i321, label %do.end117.list_del_init.exit_crit_edge

do.end117.list_del_init.exit_crit_edge:           ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i321:                                    ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr i8, ptr %.pn.in374, i32 4
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %.pn.in374 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %.pn.in374, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i321, %do.end117.list_del_init.exit_crit_edge
  %37 = ptrtoint ptr %.pn.in374 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %.pn.in374, ptr %.pn.in374, align 4
  %prev.i3.i = getelementptr i8, ptr %.pn.in374, i32 4
  %38 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %.pn.in374, ptr %prev.i3.i, align 4
  %lock121 = getelementptr i8, ptr %.pn.in374, i32 -48
  call void @_raw_spin_unlock(ptr noundef %lock121) #7
  call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_request_list_lock) #7
  br label %cleanup220

if.end122:                                        ; preds = %do.end106
  %call.i.i322 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in374) #7
  br i1 %call.i.i322, label %if.end.i.i325, label %if.end122.list_del_init.exit327_crit_edge

if.end122.list_del_init.exit327_crit_edge:        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit327

if.end.i.i325:                                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i323 = getelementptr i8, ptr %.pn.in374, i32 4
  %39 = ptrtoint ptr %prev.i.i323 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i323, align 4
  %41 = ptrtoint ptr %.pn.in374 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %.pn.in374, align 4
  %prev1.i.i.i324 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i324 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i324, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del_init.exit327

list_del_init.exit327:                            ; preds = %if.end.i.i325, %if.end122.list_del_init.exit327_crit_edge
  %45 = ptrtoint ptr %.pn.in374 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %.pn.in374, ptr %.pn.in374, align 4
  %prev.i3.i326 = getelementptr i8, ptr %.pn.in374, i32 4
  %46 = ptrtoint ptr %prev.i3.i326 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %.pn.in374, ptr %prev.i3.i326, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_request_list_lock) #7
  %lock124 = getelementptr i8, ptr %.pn.in374, i32 -48
  call void @_raw_spin_unlock(ptr noundef %lock124) #7
  call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %list_del_init.exit327.do.end179_crit_edge, label %if.end.i.i

list_del_init.exit327.do.end179_crit_edge:        ; preds = %list_del_init.exit327
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end179

if.end.i.i:                                       ; preds = %list_del_init.exit327
  %47 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 4, i32 -1226833920) #11, !srcloc !239
  %asmresult.i.i = extractvalue { i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.do.end179_crit_edge

if.end.i.i.do.end179_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end179

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %proto_ver, i32 noundef 4) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %proto_ver, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %cmp126.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %cmp126.not, label %if.end128, label %copy_to_user.exit.do.end179_crit_edge

copy_to_user.exit.do.end179_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end179

if.end128:                                        ; preds = %copy_to_user.exit
  call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #7
  %call.i.i285 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i285, label %if.end128.do.end179_crit_edge, label %if.end.i.i288

if.end128.do.end179_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end179

if.end.i.i288:                                    ; preds = %if.end128
  %48 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr129, i32 4, i32 -1226833920) #11, !srcloc !239
  %asmresult.i.i286 = extractvalue { i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i286)
  %cmp.i6.i287 = icmp eq i32 %asmresult.i.i286, 0
  br i1 %cmp.i6.i287, label %copy_to_user.exit293, label %if.end.i.i288.do.end179_crit_edge

if.end.i.i288.do.end179_crit_edge:                ; preds = %if.end.i.i288
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end179

copy_to_user.exit293:                             ; preds = %if.end.i.i288
  %call.i.i.i289 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @orangefs_devreq_read.magic, i32 noundef 4) #7
  %call.i12.i.i290 = call i32 @arm_copy_to_user(ptr noundef %add.ptr129, ptr noundef nonnull @orangefs_devreq_read.magic, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i290)
  %cmp131.not = icmp eq i32 %call.i12.i.i290, 0
  br i1 %cmp131.not, label %if.end133, label %copy_to_user.exit293.do.end179_crit_edge

copy_to_user.exit293.do.end179_crit_edge:         ; preds = %copy_to_user.exit293
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end179

if.end133:                                        ; preds = %copy_to_user.exit293
  %tag135 = getelementptr i8, ptr %.pn.in374, i32 -16872
  call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #7
  %call.i.i298 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i298, label %if.end133.do.end179_crit_edge, label %if.end.i.i301

if.end133.do.end179_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end179

if.end.i.i301:                                    ; preds = %if.end133
  %49 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr134, i32 8, i32 -1226833920) #11, !srcloc !239
  %asmresult.i.i299 = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i299)
  %cmp.i6.i300 = icmp eq i32 %asmresult.i.i299, 0
  br i1 %cmp.i6.i300, label %copy_to_user.exit306, label %if.end.i.i301.do.end179_crit_edge

if.end.i.i301.do.end179_crit_edge:                ; preds = %if.end.i.i301
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end179

copy_to_user.exit306:                             ; preds = %if.end.i.i301
  %call.i.i.i302 = call zeroext i1 @__kasan_check_read(ptr noundef %tag135, i32 noundef 8) #7
  %call.i12.i.i303 = call i32 @arm_copy_to_user(ptr noundef %add.ptr134, ptr noundef %tag135, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i303)
  %cmp137.not = icmp eq i32 %call.i12.i.i303, 0
  br i1 %cmp137.not, label %if.end139, label %copy_to_user.exit306.do.end179_crit_edge

copy_to_user.exit306.do.end179_crit_edge:         ; preds = %copy_to_user.exit306
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end179

if.end139:                                        ; preds = %copy_to_user.exit306
  %upcall142 = getelementptr i8, ptr %.pn.in374, i32 -16856
  call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #7
  %call.i.i311 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i311, label %if.end139.do.end179_crit_edge, label %if.end.i.i314

if.end139.do.end179_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end179

if.end.i.i314:                                    ; preds = %if.end139
  %50 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr141, i32 8528, i32 -1226833920) #11, !srcloc !239
  %asmresult.i.i312 = extractvalue { i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i312)
  %cmp.i6.i313 = icmp eq i32 %asmresult.i.i312, 0
  br i1 %cmp.i6.i313, label %copy_to_user.exit319, label %if.end.i.i314.do.end179_crit_edge

if.end.i.i314.do.end179_crit_edge:                ; preds = %if.end.i.i314
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end179

copy_to_user.exit319:                             ; preds = %if.end.i.i314
  %call.i.i.i315 = call zeroext i1 @__kasan_check_read(ptr noundef %upcall142, i32 noundef 8528) #7
  %call.i12.i.i316 = call i32 @arm_copy_to_user(ptr noundef %add.ptr141, ptr noundef %upcall142, i32 noundef 8528) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i316)
  %cmp144.not = icmp eq i32 %call.i12.i.i316, 0
  br i1 %cmp144.not, label %if.end146, label %copy_to_user.exit319.do.end179_crit_edge

copy_to_user.exit319.do.end179_crit_edge:         ; preds = %copy_to_user.exit319
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end179

if.end146:                                        ; preds = %copy_to_user.exit319
  call void @_raw_spin_lock(ptr noundef nonnull @orangefs_htable_ops_in_progress_lock) #7
  call void @_raw_spin_lock(ptr noundef %lock124) #7
  %51 = ptrtoint ptr %op.0376 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %op.0376, align 8
  %and149 = and i32 %52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end159, label %if.then157, !prof !238

if.then157:                                       ; preds = %if.end146
  call void @_raw_spin_unlock(ptr noundef %lock124) #7
  call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_htable_ops_in_progress_lock) #7
  %waitq = getelementptr i8, ptr %.pn.in374, i32 -104
  call void @complete(ptr noundef %waitq) #7
  call void @_raw_spin_lock(ptr noundef nonnull @orangefs_request_list_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_request_list to i32))
  %53 = load ptr, ptr @orangefs_request_list, align 4
  %cmp17.not373 = icmp eq ptr %53, @orangefs_request_list
  br i1 %cmp17.not373, label %if.then157.if.then91_crit_edge, label %if.then157.for.body.backedge_crit_edge

if.then157.for.body.backedge_crit_edge:           ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.backedge

if.then157.if.then91_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then91

if.end159:                                        ; preds = %if.end146
  %prev.i3.i326.le = getelementptr i8, ptr %.pn.in374, i32 4
  %54 = ptrtoint ptr %op.0376 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %op.0376, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %55 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and162 = and i64 %55, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and162)
  %tobool163.not = icmp eq i64 %and162, 0
  br i1 %tobool163.not, label %if.end159.do.end175_crit_edge, label %do.end167

if.end159.do.end175_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end175

do.end167:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  %call169 = call ptr @get_opname_string(ptr noundef nonnull %op.0376) #7
  %56 = ptrtoint ptr %op.0376 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %op.0376, align 8
  %58 = call i32 @llvm.read_register.i32(metadata !228) #7
  %and.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 101
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.15, ptr noundef %call169, i32 noundef %57, ptr noundef %comm) #10
  br label %do.end175

do.end175:                                        ; preds = %do.end167, %if.end159.do.end175_crit_edge
  %62 = ptrtoint ptr %tag135 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %tag135, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hash_table_size to i32))
  %64 = load i32, ptr @hash_table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %63)
  %cmp164.i.i = icmp ult i64 %63, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !238

if.then168.i.i:                                   ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %63 to i32
  %rem170.i.i = urem i32 %conv169.i.i, %64
  br label %hash_func.exit.i

if.else174.i.i:                                   ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #9
  %65 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %64, i64 %63) #11, !srcloc !240
  %asmresult.i261.i.i = extractvalue { i64, i64 } %65, 0
  %shr.i.i.i = lshr i64 %asmresult.i261.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %hash_func.exit.i

hash_func.exit.i:                                 ; preds = %if.else174.i.i, %if.then168.i.i
  %__rem.0.i.i = phi i32 [ %rem170.i.i, %if.then168.i.i ], [ %conv.i.i.i, %if.else174.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_htable_ops_in_progress to i32))
  %66 = load ptr, ptr @orangefs_htable_ops_in_progress, align 4
  %arrayidx.i = getelementptr %struct.list_head, ptr %66, i32 %__rem.0.i.i
  %prev.i.i329 = getelementptr %struct.list_head, ptr %66, i32 %__rem.0.i.i, i32 1
  %67 = ptrtoint ptr %prev.i.i329 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i329, align 4
  %call.i.i.i330 = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in374, ptr noundef %68, ptr noundef %arrayidx.i) #7
  br i1 %call.i.i.i330, label %if.end.i.i.i, label %hash_func.exit.i.orangefs_devreq_add_op.exit_crit_edge

hash_func.exit.i.orangefs_devreq_add_op.exit_crit_edge: ; preds = %hash_func.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %orangefs_devreq_add_op.exit

if.end.i.i.i:                                     ; preds = %hash_func.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %prev.i.i329 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %.pn.in374, ptr %prev.i.i329, align 4
  %70 = ptrtoint ptr %.pn.in374 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %arrayidx.i, ptr %.pn.in374, align 4
  %71 = ptrtoint ptr %prev.i3.i326.le to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev.i3.i326.le, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %.pn.in374, ptr %68, align 4
  br label %orangefs_devreq_add_op.exit

orangefs_devreq_add_op.exit:                      ; preds = %if.end.i.i.i, %hash_func.exit.i.orangefs_devreq_add_op.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock124) #7
  call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_htable_ops_in_progress_lock) #7
  br label %cleanup220

do.end179:                                        ; preds = %copy_to_user.exit319.do.end179_crit_edge, %if.end.i.i314.do.end179_crit_edge, %if.end139.do.end179_crit_edge, %copy_to_user.exit306.do.end179_crit_edge, %if.end.i.i301.do.end179_crit_edge, %if.end133.do.end179_crit_edge, %copy_to_user.exit293.do.end179_crit_edge, %if.end.i.i288.do.end179_crit_edge, %if.end128.do.end179_crit_edge, %copy_to_user.exit.do.end179_crit_edge, %if.end.i.i.do.end179_crit_edge, %list_del_init.exit327.do.end179_crit_edge
  %prev.i3.i326.le467 = getelementptr i8, ptr %.pn.in374, i32 4
  %call181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #10
  call void @_raw_spin_lock(ptr noundef nonnull @orangefs_request_list_lock) #7
  call void @_raw_spin_lock(ptr noundef %lock124) #7
  %73 = ptrtoint ptr %op.0376 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %op.0376, align 8
  %and184 = and i32 %74, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %if.then194, label %if.else216, !prof !238

if.then194:                                       ; preds = %do.end179
  %75 = ptrtoint ptr %op.0376 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %op.0376, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %76 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and197 = and i64 %76, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and197)
  %tobool198.not = icmp eq i64 %and197, 0
  br i1 %tobool198.not, label %if.then194.do.end213_crit_edge, label %do.end202

if.then194.do.end213_crit_edge:                   ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end213

do.end202:                                        ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #9
  %call204 = call ptr @get_opname_string(ptr noundef nonnull %op.0376) #7
  %77 = ptrtoint ptr %op.0376 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %op.0376, align 8
  %79 = call i32 @llvm.read_register.i32(metadata !228) #7
  %and.i331 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i331 to ptr
  %task207 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task207 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task207, align 8
  %comm208 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 101
  %call210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.15, ptr noundef %call204, i32 noundef %78, ptr noundef %comm208) #10
  br label %do.end213

do.end213:                                        ; preds = %do.end202, %if.then194.do.end213_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_request_list to i32))
  %83 = load ptr, ptr @orangefs_request_list, align 4
  %call.i.i332 = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in374, ptr noundef nonnull @orangefs_request_list, ptr noundef %83) #7
  br i1 %call.i.i332, label %if.end.i.i333, label %do.end213.list_add.exit_crit_edge

do.end213.list_add.exit_crit_edge:                ; preds = %do.end213
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i333:                                    ; preds = %do.end213
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %.pn.in374, ptr %prev1.i.i, align 4
  %85 = ptrtoint ptr %.pn.in374 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %83, ptr %.pn.in374, align 4
  %86 = ptrtoint ptr %prev.i3.i326.le467 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @orangefs_request_list, ptr %prev.i3.i326.le467, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @orangefs_request_list to i32))
  store volatile ptr %.pn.in374, ptr @orangefs_request_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i333, %do.end213.list_add.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock124) #7
  br label %if.end219

if.else216:                                       ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef %lock124) #7
  %waitq218 = getelementptr i8, ptr %.pn.in374, i32 -104
  call void @complete(ptr noundef %waitq218) #7
  br label %if.end219

if.end219:                                        ; preds = %if.else216, %list_add.exit
  call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_request_list_lock) #7
  br label %cleanup220

cleanup220:                                       ; preds = %if.end219, %orangefs_devreq_add_op.exit, %list_del_init.exit, %if.then91, %if.end7.cleanup220_crit_edge, %do.end4, %do.end
  %retval.0 = phi i32 [ -22, %do.end4 ], [ -11, %list_del_init.exit ], [ -14, %if.end219 ], [ 8544, %orangefs_devreq_add_op.exit ], [ -11, %if.then91 ], [ -22, %do.end ], [ -11, %if.end7.cleanup220_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proto_ver) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_devreq_write_iter(ptr nocapture noundef readnone %iocb, ptr noundef %iter) #0 align 64 {
entry:
  %head = alloca %struct.anon.91, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %head) #7
  %0 = getelementptr inbounds %struct.anon.91, ptr %head, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.91, ptr %head, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %2 = call ptr @memset(ptr %head, i32 255, i32 16)
  %3 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count.i, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %5 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %5, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef %4, i32 noundef %4) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8240, i32 %4)
  %cmp = icmp ult i32 %4, 8240
  br i1 %cmp, label %do.end8, label %copy_from_iter.exit.i

do.end8:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %4, i32 noundef 8240) #10
  br label %cleanup

copy_from_iter.exit.i:                            ; preds = %do.end4
  %call3.i.i = call i32 @_copy_from_iter(ptr noundef nonnull %head, i32 noundef 16, ptr noundef %iter) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3.i.i)
  %cmp.i = icmp eq i32 %call3.i.i, 16
  br i1 %cmp.i, label %if.end19, label %do.end16, !prof !238

do.end16:                                         ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @iov_iter_revert(ptr noundef %iter, i32 noundef %call3.i.i) #7
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.47) #10
  br label %cleanup

if.end19:                                         ; preds = %copy_from_iter.exit.i
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20903, i32 %7)
  %cmp20 = icmp ult i32 %7, 20903
  br i1 %cmp20, label %do.end24, label %if.end28

do.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.47, i32 noundef %7, i32 noundef 20903) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 537068841, i32 %9)
  %cmp29.not = icmp eq i32 %9, 537068841
  br i1 %cmp29.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %10 = load i32, ptr @orangefs_userspace_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool37.not = icmp eq i32 %10, 0
  br i1 %tobool37.not, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  store i32 %7, ptr @orangefs_userspace_version, align 4
  br label %if.end49

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %7)
  %cmp41.not = icmp eq i32 %10, %7
  br i1 %cmp41.not, label %if.else.if.end49_crit_edge, label %do.end45

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

do.end45:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #10
  br label %cleanup

if.end49:                                         ; preds = %if.else.if.end49_crit_edge, %if.then38
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hash_table_size to i32))
  %13 = load i32, ptr @hash_table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %12)
  %cmp164.i.i = icmp ult i64 %12, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !238

if.then168.i.i:                                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %12 to i32
  %rem170.i.i = urem i32 %conv169.i.i, %13
  br label %hash_func.exit.i

if.else174.i.i:                                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %14 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %12) #11, !srcloc !240
  %asmresult.i261.i.i = extractvalue { i64, i64 } %14, 0
  %shr.i.i.i = lshr i64 %asmresult.i261.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %hash_func.exit.i

hash_func.exit.i:                                 ; preds = %if.else174.i.i, %if.then168.i.i
  %__rem.0.i.i = phi i32 [ %rem170.i.i, %if.then168.i.i ], [ %conv.i.i.i, %if.else174.i.i ]
  call void @_raw_spin_lock(ptr noundef nonnull @orangefs_htable_ops_in_progress_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_htable_ops_in_progress to i32))
  %15 = load ptr, ptr @orangefs_htable_ops_in_progress, align 4
  %arrayidx.i = getelementptr %struct.list_head, ptr %15, i32 %__rem.0.i.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %cmp.not37.i = icmp eq ptr %17, %arrayidx.i
  br i1 %cmp.not37.i, label %hash_func.exit.i.orangefs_devreq_remove_op.exit.thread_crit_edge, label %hash_func.exit.i.for.body.i_crit_edge

hash_func.exit.i.for.body.i_crit_edge:            ; preds = %hash_func.exit.i
  br label %for.body.i

hash_func.exit.i.orangefs_devreq_remove_op.exit.thread_crit_edge: ; preds = %hash_func.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %orangefs_devreq_remove_op.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %hash_func.exit.i.for.body.i_crit_edge
  %.pn.in38.i = phi ptr [ %.pn40.i, %for.inc.i.for.body.i_crit_edge ], [ %17, %hash_func.exit.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %.pn.in38.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn40.i = load ptr, ptr %.pn.in38.i, align 8
  %tag8.i = getelementptr i8, ptr %.pn.in38.i, i32 -16872
  %19 = ptrtoint ptr %tag8.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tag8.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %12)
  %cmp9.i = icmp eq i64 %20, %12
  br i1 %cmp9.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %op.039.i = getelementptr i8, ptr %.pn.in38.i, i32 -16880
  %21 = ptrtoint ptr %op.039.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %op.039.i, align 8
  %23 = and i32 %22, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in38.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.orangefs_devreq_remove_op.exit_crit_edge

if.then.i.orangefs_devreq_remove_op.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %orangefs_devreq_remove_op.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in38.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %.pn.in38.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn.in38.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %orangefs_devreq_remove_op.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn40.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.inc.i.orangefs_devreq_remove_op.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.orangefs_devreq_remove_op.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %orangefs_devreq_remove_op.exit.thread

orangefs_devreq_remove_op.exit.thread:            ; preds = %for.inc.i.orangefs_devreq_remove_op.exit.thread_crit_edge, %hash_func.exit.i.orangefs_devreq_remove_op.exit.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_htable_ops_in_progress_lock) #7
  br label %do.body53

orangefs_devreq_remove_op.exit:                   ; preds = %if.end.i.i.i, %if.then.i.orangefs_devreq_remove_op.exit_crit_edge
  %31 = ptrtoint ptr %.pn.in38.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %.pn.in38.i, ptr %.pn.in38.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in38.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.pn.in38.i, ptr %prev.i3.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_htable_ops_in_progress_lock) #7
  %tobool51.not = icmp eq ptr %op.039.i, null
  br i1 %tobool51.not, label %orangefs_devreq_remove_op.exit.do.body53_crit_edge, label %if.end66

orangefs_devreq_remove_op.exit.do.body53_crit_edge: ; preds = %orangefs_devreq_remove_op.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body53

do.body53:                                        ; preds = %orangefs_devreq_remove_op.exit.do.body53_crit_edge, %orangefs_devreq_remove_op.exit.thread
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %33 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and54 = and i64 %33, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and54)
  %tobool55.not = icmp eq i64 %and54, 0
  br i1 %tobool55.not, label %do.body53.cleanup_crit_edge, label %do.end59

do.body53.cleanup_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %1, align 8
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.47, i64 noundef %35) #10
  br label %cleanup

if.end66:                                         ; preds = %orangefs_devreq_remove_op.exit
  %downcall = getelementptr i8, ptr %.pn.in38.i, i32 -8328
  %call3.i.i254 = call i32 @_copy_from_iter(ptr noundef %downcall, i32 noundef 8224, ptr noundef %iter) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8224, i32 %call3.i.i254)
  %cmp.i256 = icmp eq i32 %call3.i.i254, 8224
  br i1 %cmp.i256, label %if.end74, label %do.end71, !prof !238

do.end71:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  call void @iov_iter_revert(ptr noundef %iter, i32 noundef %call3.i.i254) #7
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.47) #10
  br label %Efault

if.end74:                                         ; preds = %if.end66
  %status = getelementptr i8, ptr %.pn.in38.i, i32 -8324
  %36 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool76.not = icmp eq i32 %37, 0
  br i1 %tobool76.not, label %if.end78, label %if.end74.wakeup_crit_edge

if.end74.wakeup_crit_edge:                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %wakeup

if.end78:                                         ; preds = %if.end74
  %trailer_size = getelementptr i8, ptr %.pn.in38.i, i32 -8320
  %38 = ptrtoint ptr %trailer_size to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %trailer_size, align 8
  %add80 = add i64 %39, 8240
  %conv81 = sext i32 %4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add80, i64 %conv81)
  %cmp82.not = icmp eq i64 %add80, %conv81
  br i1 %cmp82.not, label %if.end92, label %do.end87

do.end87:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.47, i32 noundef 16, i32 noundef 8224, i64 noundef %39, i32 noundef %4) #10
  br label %Efault

if.end92:                                         ; preds = %if.end78
  %40 = ptrtoint ptr %downcall to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %downcall, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777209, i32 %41)
  %cmp94.not = icmp eq i32 %41, -16777209
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %cmp98.not = icmp eq i64 %39, 0
  %or.cond = select i1 %cmp94.not, i1 true, i1 %cmp98.not
  br i1 %or.cond, label %if.end108, label %do.end103

do.end103:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.47, i32 noundef %41) #10
  br label %Efault

if.end108:                                        ; preds = %if.end92
  br i1 %cmp94.not, label %land.lhs.true113, label %if.end108.wakeup_crit_edge

if.end108.wakeup_crit_edge:                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %wakeup

land.lhs.true113:                                 ; preds = %if.end108
  br i1 %cmp98.not, label %do.end121, label %if.end132

do.end121:                                        ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #9
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.47, i32 noundef -16777209) #10
  br label %Efault

if.end132:                                        ; preds = %land.lhs.true113
  %conv135 = trunc i64 %39 to i32
  %call136 = call noalias ptr @vzalloc(i32 noundef %conv135) #12
  %trailer_buf = getelementptr i8, ptr %.pn.in38.i, i32 -8312
  %42 = ptrtoint ptr %trailer_buf to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call136, ptr %trailer_buf, align 8
  %tobool140.not = icmp eq ptr %call136, null
  br i1 %tobool140.not, label %Enomem, label %if.end142

if.end142:                                        ; preds = %if.end132
  %43 = ptrtoint ptr %trailer_size to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %trailer_size, align 8
  %conv147 = trunc i64 %44 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv147)
  %cmp9.i.i.i = icmp slt i32 %conv147, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end142
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_from_iter.exit.i267_crit_edge, label %if.then27.i.i.i, !prof !238

land.rhs16.i.i.i.copy_from_iter.exit.i267_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_from_iter.exit.i267

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %copy_from_iter.exit.i267

if.then.i.i.i.i:                                  ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  call void @__check_object_size(ptr noundef nonnull %call136, i32 noundef %conv147, i1 noundef zeroext false) #7
  %call3.i.i264 = call i32 @_copy_from_iter(ptr noundef nonnull %call136, i32 noundef %conv147, ptr noundef %iter) #7
  br label %copy_from_iter.exit.i267

copy_from_iter.exit.i267:                         ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_iter.exit.i267_crit_edge
  %retval.0.i.i265 = phi i32 [ %call3.i.i264, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.copy_from_iter.exit.i267_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i265, i32 %conv147)
  %cmp.i266 = icmp eq i32 %retval.0.i.i265, %conv147
  br i1 %cmp.i266, label %copy_from_iter.exit.i267.wakeup_crit_edge, label %do.end152, !prof !238

copy_from_iter.exit.i267.wakeup_crit_edge:        ; preds = %copy_from_iter.exit.i267
  call void @__sanitizer_cov_trace_pc() #9
  br label %wakeup

do.end152:                                        ; preds = %copy_from_iter.exit.i267
  call void @__sanitizer_cov_trace_pc() #9
  call void @iov_iter_revert(ptr noundef %iter, i32 noundef %retval.0.i.i265) #7
  %call154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.47) #10
  %45 = ptrtoint ptr %trailer_buf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %trailer_buf, align 8
  call void @vfree(ptr noundef %46) #7
  br label %Efault

wakeup:                                           ; preds = %Enomem, %Efault, %copy_from_iter.exit.i267.wakeup_crit_edge, %if.end108.wakeup_crit_edge, %if.end74.wakeup_crit_edge
  %ret.0 = phi i32 [ %4, %if.end74.wakeup_crit_edge ], [ -14, %Efault ], [ -12, %Enomem ], [ %4, %if.end108.wakeup_crit_edge ], [ %4, %copy_from_iter.exit.i267.wakeup_crit_edge ]
  %lock = getelementptr i8, ptr %.pn.in38.i, i32 -48
  call void @_raw_spin_lock(ptr noundef %lock) #7
  %upcall = getelementptr i8, ptr %.pn.in38.i, i32 -16856
  %47 = ptrtoint ptr %upcall to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %upcall, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16716288, i32 %48)
  %cmp159 = icmp eq i32 %48, -16716288
  br i1 %cmp159, label %if.then163, label %if.else165, !prof !241

if.then163:                                       ; preds = %wakeup
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef %lock) #7
  %49 = getelementptr i8, ptr %.pn.in38.i, i32 -16864
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  call void @orangefs_bufmap_put(i32 noundef %51) #7
  call void @op_release(ptr noundef nonnull %op.039.i) #7
  br label %cleanup

if.else165:                                       ; preds = %wakeup
  %52 = ptrtoint ptr %op.039.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %op.039.i, align 8
  %and166 = and i32 %53, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.else176, label %if.then174, !prof !238

if.then174:                                       ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef %lock) #7
  %waitq = getelementptr i8, ptr %.pn.in38.i, i32 -104
  call void @complete(ptr noundef %waitq) #7
  br label %cleanup

if.else176:                                       ; preds = %if.else165
  %54 = ptrtoint ptr %op.039.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4, ptr %op.039.i, align 8
  %waitq.i = getelementptr i8, ptr %.pn.in38.i, i32 -104
  call void @complete(ptr noundef %waitq.i) #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %55 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and178 = and i64 %55, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and178)
  %tobool179.not = icmp eq i64 %and178, 0
  br i1 %tobool179.not, label %if.else176.do.end191_crit_edge, label %do.end183

if.else176.do.end191_crit_edge:                   ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end191

do.end183:                                        ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #9
  %call185 = call ptr @get_opname_string(ptr noundef nonnull %op.039.i) #7
  %56 = ptrtoint ptr %op.039.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %op.039.i, align 8
  %58 = call i32 @llvm.read_register.i32(metadata !228) #7
  %and.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 101
  %call188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.47, ptr noundef %call185, i32 noundef %57, ptr noundef %comm) #10
  br label %do.end191

do.end191:                                        ; preds = %do.end183, %if.else176.do.end191_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %cleanup

Efault:                                           ; preds = %do.end152, %do.end121, %do.end103, %do.end87, %do.end71
  %status196 = getelementptr i8, ptr %.pn.in38.i, i32 -8324
  %62 = ptrtoint ptr %status196 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1073741833, ptr %status196, align 4
  br label %wakeup

Enomem:                                           ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1073741832, ptr %status, align 4
  br label %wakeup

cleanup:                                          ; preds = %do.end191, %if.then174, %if.then163, %do.end59, %do.body53.cleanup_crit_edge, %do.end45, %do.end33, %do.end24, %do.end16, %do.end8
  %retval.0 = phi i32 [ -14, %do.end8 ], [ -71, %do.end24 ], [ -71, %do.end33 ], [ -71, %do.end45 ], [ -14, %do.end16 ], [ %4, %do.end59 ], [ %4, %do.body53.cleanup_crit_edge ], [ %ret.0, %if.then174 ], [ %ret.0, %do.end191 ], [ %ret.0, %if.then163 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %head) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_devreq_poll(ptr noundef %file, ptr noundef %poll_table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %poll_table, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %poll_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poll_table, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %1(ptr noundef %file, ptr noundef nonnull @orangefs_request_list_waitq, ptr noundef nonnull %poll_table) #7
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_request_list to i32))
  %2 = load volatile ptr, ptr @orangefs_request_list, align 4
  %cmp.i.not = icmp ne ptr %2, @orangefs_request_list
  %spec.select = zext i1 %cmp.i.not to i32
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_devreq_ioctl(ptr nocapture noundef readnone %file, i32 noundef %command, i32 noundef %arg) #0 align 64 {
entry:
  %user_desc.i = alloca %struct.ORANGEFS_dev_map_desc, align 4
  %upstream_kmod.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %command, 8
  %and.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 107, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 107
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %command, i32 noundef %and.i, i32 noundef 107) #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %command, 255
  %0 = add nsw i32 %and4.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %0)
  %1 = icmp ult i32 %0, -9
  br i1 %1, label %do.end11.i, label %if.end

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %and4.i, i32 noundef 10) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %user_desc.i) #7
  %2 = call ptr @memset(ptr %user_desc.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %upstream_kmod.i) #7
  %3 = ptrtoint ptr %upstream_kmod.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %upstream_kmod.i, align 4
  %4 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %command, label %if.end.dispatch_ioctl_command.exit_crit_edge [
    i32 1074031361, label %sw.bb.i
    i32 1074031362, label %sw.bb2.i
    i32 1074031363, label %sw.bb20.i
    i32 27396, label %sw.bb38.i
    i32 27397, label %do.body43.i
    i32 1074031367, label %sw.bb118.i
    i32 1074817800, label %sw.bb122.i
    i32 1074031369, label %sw.bb124.i
    i32 -2147194106, label %sw.bb126.i
  ]

if.end.dispatch_ioctl_command.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dispatch_ioctl_command.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 605) #7
  %6 = tail call i32 @llvm.read_register.i32(metadata !228) #7
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #5, !srcloc !242
  %and.i.i = and i32 %8, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %9 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %5, i32 537068841, i32 -1226833921) #7, !srcloc !245
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %9)
  %cmp.i = icmp eq i32 %9, -14
  %cond.i = select i1 %cmp.i, i32 -5, i32 0
  br label %dispatch_ioctl_command.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 610) #7
  %11 = tail call i32 @llvm.read_register.i32(metadata !228) #7
  %and.i.i.i149.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i149.i to ptr
  %cpu_domain.i.i150.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i150.i) #5, !srcloc !242
  %and.i151.i = and i32 %13, -13
  %or.i152.i = or i32 %and.i151.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i152.i) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %10, i32 8544, i32 -1226833921) #7, !srcloc !246
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %14)
  %cmp18.i = icmp eq i32 %14, -14
  %cond19.i = select i1 %cmp18.i, i32 -5, i32 0
  br label %dispatch_ioctl_command.exit

sw.bb20.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 615) #7
  %16 = tail call i32 @llvm.read_register.i32(metadata !228) #7
  %and.i.i.i153.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i153.i to ptr
  %cpu_domain.i.i154.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i154.i) #5, !srcloc !242
  %and.i155.i = and i32 %18, -13
  %or.i156.i = or i32 %and.i155.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i156.i) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %19 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %15, i32 8240, i32 -1226833921) #7, !srcloc !247
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %19)
  %cmp36.i = icmp eq i32 %19, -14
  %cond37.i = select i1 %cmp36.i, i32 -5, i32 0
  br label %dispatch_ioctl_command.exit

sw.bb38.i:                                        ; preds = %if.end
  %20 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #7
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %sw.bb38.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb38.i.if.then11.i.i.i_crit_edge:              ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb38.i
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 16, i32 -1226833920) #11, !srcloc !248
  %asmresult.i.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i1.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !238

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %user_desc.i, i32 noundef 16) #7
  %22 = call i32 @llvm.read_register.i32(metadata !228) #7
  %and.i.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !242
  %and.i.i.i.i.i = and i32 %24, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %user_desc.i, ptr noundef %20, i32 noundef 16) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #7, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %cond.false.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !238

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb38.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %sw.bb38.i.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 16, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %user_desc.i, i32 %sub.i.i.i
  %25 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %dispatch_ioctl_command.exit

cond.false.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call40.i = call i32 @orangefs_bufmap_initialize(ptr noundef nonnull %user_desc.i) #7
  br label %dispatch_ioctl_command.exit

do.body43.i:                                      ; preds = %if.end
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %26 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and.i4 = and i64 %26, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4)
  %tobool44.not.i = icmp eq i64 %and.i4, 0
  br i1 %tobool44.not.i, label %do.body43.i.do.end51.i_crit_edge, label %do.end47.i

do.body43.i.do.end51.i_crit_edge:                 ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51.i

do.end47.i:                                       ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #10
  br label %do.end51.i

do.end51.i:                                       ; preds = %do.end47.i, %do.body43.i.do.end51.i_crit_edge
  %call52.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @orangefs_request_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp53.i = icmp slt i32 %call52.i, 0
  br i1 %cmp53.i, label %do.end51.i.dispatch_ioctl_command.exit_crit_edge, label %do.body56.i

do.end51.i.dispatch_ioctl_command.exit_crit_edge: ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dispatch_ioctl_command.exit

do.body56.i:                                      ; preds = %do.end51.i
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %27 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and57.i = and i64 %27, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and57.i)
  %tobool58.not.i = icmp eq i64 %and57.i, 0
  br i1 %tobool58.not.i, label %do.body56.i.do.end67.i_crit_edge, label %do.end62.i

do.body56.i.do.end67.i_crit_edge:                 ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67.i

do.end62.i:                                       ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #9
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.90) #10
  br label %do.end67.i

do.end67.i:                                       ; preds = %do.end62.i, %do.body56.i.do.end67.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @orangefs_superblocks_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_superblocks to i32))
  %.pn170.i = load ptr, ptr @orangefs_superblocks, align 4
  %cmp69.not172.i = icmp eq ptr %.pn170.i, @orangefs_superblocks
  br i1 %cmp69.not172.i, label %do.end67.i.for.end.i_crit_edge, label %do.end67.i.for.body.i_crit_edge

do.end67.i.for.body.i_crit_edge:                  ; preds = %do.end67.i
  br label %for.body.i

do.end67.i.for.end.i_crit_edge:                   ; preds = %do.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end67.i.for.body.i_crit_edge
  %.pn174.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn170.i, %do.end67.i.for.body.i_crit_edge ]
  %ret.0173.i = phi i32 [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ], [ %call52.i, %do.end67.i.for.body.i_crit_edge ]
  %orangefs_sb.0175.i = getelementptr i8, ptr %.pn174.i, i32 -296
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn174.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i, align 4
  %tobool71.not.i = icmp eq ptr %29, null
  br i1 %tobool71.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.body74.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.body74.i:                                      ; preds = %for.body.i
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %30 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and75.i = and i64 %30, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and75.i)
  %tobool76.not.i = icmp eq i64 %and75.i, 0
  br i1 %tobool76.not.i, label %do.body74.i.do.end85.i_crit_edge, label %do.end80.i

do.body74.i.do.end85.i_crit_edge:                 ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end85.i

do.end80.i:                                       ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #9
  %call82.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.90, ptr noundef %orangefs_sb.0175.i) #10
  br label %do.end85.i

do.end85.i:                                       ; preds = %do.end80.i, %do.body74.i.do.end85.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_superblocks_lock) #7
  %call86.i = tail call i32 @orangefs_remount(ptr noundef %orangefs_sb.0175.i) #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @orangefs_superblocks_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %do.end85.i.for.inc.i_crit_edge, label %do.body89.i

do.end85.i.for.inc.i_crit_edge:                   ; preds = %do.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.body89.i:                                      ; preds = %do.end85.i
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %31 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and90.i = and i64 %31, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and90.i)
  %tobool91.not.i = icmp eq i64 %and90.i, 0
  br i1 %tobool91.not.i, label %do.body89.i.for.end.i_crit_edge, label %do.end95.i

do.body89.i.for.end.i_crit_edge:                  ; preds = %do.body89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

do.end95.i:                                       ; preds = %do.body89.i
  call void @__sanitizer_cov_trace_pc() #9
  %call97.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %orangefs_sb.0175.i) #10
  br label %for.end.i

for.inc.i:                                        ; preds = %do.end85.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %ret.1.i = phi i32 [ 0, %do.end85.i.for.inc.i_crit_edge ], [ %ret.0173.i, %for.body.i.for.inc.i_crit_edge ]
  %32 = ptrtoint ptr %.pn174.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i = load ptr, ptr %.pn174.i, align 4
  %cmp69.not.i = icmp eq ptr %.pn.i, @orangefs_superblocks
  br i1 %cmp69.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end95.i, %do.body89.i.for.end.i_crit_edge, %do.end67.i.for.end.i_crit_edge
  %ret.2.i = phi i32 [ %call86.i, %do.end95.i ], [ %call86.i, %do.body89.i.for.end.i_crit_edge ], [ %call52.i, %do.end67.i.for.end.i_crit_edge ], [ %ret.1.i, %for.inc.i.for.end.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_superblocks_lock) #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %33 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and107.i = and i64 %33, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and107.i)
  %tobool108.not.i = icmp eq i64 %and107.i, 0
  br i1 %tobool108.not.i, label %for.end.i.do.end117.i_crit_edge, label %do.end112.i

for.end.i.do.end117.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end117.i

do.end112.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call114.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.90) #10
  br label %do.end117.i

do.end117.i:                                      ; preds = %do.end112.i, %for.end.i.do.end117.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @orangefs_request_mutex) #7
  br label %dispatch_ioctl_command.exit

sw.bb118.i:                                       ; preds = %if.end
  %34 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #7
  %call.i.i158.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i158.i, label %sw.bb118.i.dispatch_ioctl_command.exit_crit_edge, label %if.end.i.i161.i

sw.bb118.i.dispatch_ioctl_command.exit_crit_edge: ; preds = %sw.bb118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dispatch_ioctl_command.exit

if.end.i.i161.i:                                  ; preds = %sw.bb118.i
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %34, i32 4, i32 -1226833920) #11, !srcloc !239
  %asmresult.i.i160.i = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i160.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i160.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i161.i.dispatch_ioctl_command.exit_crit_edge

if.end.i.i161.i.dispatch_ioctl_command.exit_crit_edge: ; preds = %if.end.i.i161.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dispatch_ioctl_command.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i161.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i162.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %upstream_kmod.i, i32 noundef 4) #7
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %34, ptr noundef nonnull %upstream_kmod.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %cmp120.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %cmp120.not.i, i32 0, i32 -5
  br label %dispatch_ioctl_command.exit

sw.bb122.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %36 = inttoptr i32 %arg to ptr
  %call123.i = tail call i32 @orangefs_debugfs_new_client_mask(ptr noundef %36) #7
  br label %dispatch_ioctl_command.exit

sw.bb124.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %37 = inttoptr i32 %arg to ptr
  %call125.i = tail call i32 @orangefs_debugfs_new_client_string(ptr noundef %37) #7
  br label %dispatch_ioctl_command.exit

sw.bb126.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %38 = inttoptr i32 %arg to ptr
  %call127.i = tail call i32 @orangefs_debugfs_new_debug(ptr noundef %38) #7
  br label %dispatch_ioctl_command.exit

dispatch_ioctl_command.exit:                      ; preds = %sw.bb126.i, %sw.bb124.i, %sw.bb122.i, %copy_to_user.exit.i, %if.end.i.i161.i.dispatch_ioctl_command.exit_crit_edge, %sw.bb118.i.dispatch_ioctl_command.exit_crit_edge, %do.end117.i, %do.end51.i.dispatch_ioctl_command.exit_crit_edge, %cond.false.i, %if.then11.i.i.i, %sw.bb20.i, %sw.bb2.i, %sw.bb.i, %if.end.dispatch_ioctl_command.exit_crit_edge
  %retval.0.i5 = phi i32 [ %call127.i, %sw.bb126.i ], [ %call125.i, %sw.bb124.i ], [ %call123.i, %sw.bb122.i ], [ %ret.2.i, %do.end117.i ], [ %cond37.i, %sw.bb20.i ], [ %cond19.i, %sw.bb2.i ], [ %cond.i, %sw.bb.i ], [ %call40.i, %cond.false.i ], [ %call52.i, %do.end51.i.dispatch_ioctl_command.exit_crit_edge ], [ -515, %if.end.dispatch_ioctl_command.exit_crit_edge ], [ -5, %if.then11.i.i.i ], [ -5, %sw.bb118.i.dispatch_ioctl_command.exit_crit_edge ], [ -5, %if.end.i.i161.i.dispatch_ioctl_command.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %upstream_kmod.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %user_desc.i) #7
  br label %cleanup

cleanup:                                          ; preds = %dispatch_ioctl_command.exit, %do.end11.i, %do.end.i
  %retval.0 = phi i32 [ %retval.0.i5, %dispatch_ioctl_command.exit ], [ -515, %do.end11.i ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_devreq_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_cred = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 12
  %0 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_cred, align 8
  %user_ns = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ns, align 4
  %cmp.not = icmp eq ptr %3, @init_user_ns
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104) #10
  br label %do.body66

if.end:                                           ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end4, label %if.end7

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.104) #10
  br label %do.body66

if.end7:                                          ; preds = %if.end
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %6 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and9 = and i64 %6, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9)
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %if.end7.do.end19_crit_edge, label %do.end14

if.end7.do.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #10
  br label %do.end19

do.end19:                                         ; preds = %do.end14, %if.end7.do.end19_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @devreq_mutex, i32 noundef 0) #7
  %7 = load i32, ptr @open_access_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp20 = icmp eq i32 %7, 0
  br i1 %cmp20, label %if.then21, label %do.end25

if.then21:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  store i32 1, ptr @open_access_count, align 4
  br label %if.end65

do.end25:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #10
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #10
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str) #10
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #10
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #10
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str) #10
  %8 = load i32, ptr @open_access_count, align 4
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %8) #10
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #10
  br label %if.end65

if.end65:                                         ; preds = %do.end25, %if.then21
  %ret.0 = phi i32 [ 0, %if.then21 ], [ -13, %do.end25 ]
  tail call void @mutex_unlock(ptr noundef nonnull @devreq_mutex) #7
  br label %do.body66

do.body66:                                        ; preds = %if.end65, %do.end4, %do.end
  %ret.1 = phi i32 [ -22, %do.end ], [ %ret.0, %if.end65 ], [ -22, %do.end4 ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %9 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and67 = and i64 %9, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and67)
  %tobool68.not = icmp eq i64 %and67, 0
  br i1 %tobool68.not, label %do.body66.do.end77_crit_edge, label %do.end72

do.body66.do.end77_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77

do.end72:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #9
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, i32 noundef %ret.1) #10
  br label %do.end77

do.end77:                                         ; preds = %do.end72, %do.body66.do.end77_crit_edge
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_devreq_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @devreq_mutex, i32 noundef 0) #7
  tail call void @orangefs_bufmap_finalize() #7
  store i32 -1, ptr @open_access_count, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @orangefs_superblocks_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_superblocks to i32))
  %.pn7.i = load ptr, ptr @orangefs_superblocks, align 4
  %cmp.not8.i = icmp eq ptr %.pn7.i, @orangefs_superblocks
  br i1 %cmp.not8.i, label %do.end3.mark_all_pending_mounts.exit_crit_edge, label %do.end3.for.body.i_crit_edge

do.end3.for.body.i_crit_edge:                     ; preds = %do.end3
  br label %for.body.i

do.end3.mark_all_pending_mounts.exit_crit_edge:   ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %mark_all_pending_mounts.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end3.for.body.i_crit_edge
  %.pn9.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn7.i, %do.end3.for.body.i_crit_edge ]
  %mount_pending.i = getelementptr i8, ptr %.pn9.i, i32 -8
  %1 = ptrtoint ptr %mount_pending.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %mount_pending.i, align 8
  %2 = ptrtoint ptr %.pn9.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn9.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @orangefs_superblocks
  br i1 %cmp.not.i, label %for.body.i.mark_all_pending_mounts.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.mark_all_pending_mounts.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mark_all_pending_mounts.exit

mark_all_pending_mounts.exit:                     ; preds = %for.body.i.mark_all_pending_mounts.exit_crit_edge, %do.end3.mark_all_pending_mounts.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_superblocks_lock) #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %3 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and6 = and i64 %3, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %mark_all_pending_mounts.exit.do.end17_crit_edge, label %do.end11

mark_all_pending_mounts.exit.do.end17_crit_edge:  ; preds = %mark_all_pending_mounts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end11:                                         ; preds = %mark_all_pending_mounts.exit
  call void @__sanitizer_cov_trace_pc() #9
  %cond = select i1 %cmp.not8.i, ptr @.str.142, ptr @.str.143
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull %cond) #10
  br label %do.end17

do.end17:                                         ; preds = %do.end11, %mark_all_pending_mounts.exit.do.end17_crit_edge
  tail call void @purge_waiting_ops() #7
  tail call void @purge_inprogress_ops() #7
  tail call void @orangefs_bufmap_run_down() #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %4 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and19 = and i64 %4, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19)
  %tobool20.not = icmp eq i64 %and19, 0
  br i1 %tobool20.not, label %do.end17.do.end29_crit_edge, label %do.end24

do.end17.do.end29_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

do.end24:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145) #10
  br label %do.end29

do.end29:                                         ; preds = %do.end24, %do.end17.do.end29_crit_edge
  store i32 0, ptr @open_access_count, align 4
  store i32 0, ptr @orangefs_userspace_version, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @devreq_mutex) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsid_of_op(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_opname_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @orangefs_bufmap_put(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @op_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_bufmap_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_remount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_debugfs_new_client_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_debugfs_new_client_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_debugfs_new_debug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @orangefs_bufmap_finalize() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @purge_waiting_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @purge_inprogress_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @orangefs_bufmap_run_down() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !25, !27, !29, !30, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !149, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !211, !212, !213, !215, !216, !217, !218, !220, !221, !222, !223, !224, !226, !227}
!llvm.named.register.sp = !{!228}
!llvm.module.flags = !{!229, !230, !231, !232, !233, !234, !235, !236}
!llvm.ident = !{!237}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/orangefs/devorangefs-req.c", i32 791, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/orangefs/devorangefs-req.c", i32 794, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @orangefs_dev_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @orangefs_dev_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/orangefs/devorangefs-req.c", i32 800, i32 2}
!10 = !{ptr @orangefs_dev_init._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @orangefs_dev_init._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/orangefs/devorangefs-req.c", i32 803, i32 2}
!14 = !{ptr @orangefs_dev_init._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @orangefs_dev_init._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/orangefs/devorangefs-req.c", i32 811, i32 2}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @orangefs_dev_cleanup._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @orangefs_dev_cleanup._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @orangefs_userspace_version, !22, !"orangefs_userspace_version", i1 false, i1 false}
!22 = !{!"../fs/orangefs/devorangefs-req.c", i32 22, i32 10}
!23 = !{ptr @open_access_count, !24, !"open_access_count", i1 false, i1 false}
!24 = !{!"../fs/orangefs/devorangefs-req.c", i32 24, i32 12}
!25 = !{ptr @orangefs_dev_major, !26, !"orangefs_dev_major", i1 false, i1 false}
!26 = !{!"../fs/orangefs/devorangefs-req.c", i32 767, i32 12}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/orangefs/devorangefs-req.c", i32 26, i32 8}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @devreq_mutex, !28, !"devreq_mutex", i1 false, i1 false}
!31 = !{ptr @orangefs_devreq_file_operations, !32, !"orangefs_devreq_file_operations", i1 false, i1 false}
!32 = !{!"../fs/orangefs/devorangefs-req.c", i32 769, i32 37}
!33 = !{ptr @orangefs_devreq_read.magic, !34, !"magic", i1 false, i1 false}
!34 = !{!"../fs/orangefs/devorangefs-req.c", i32 164, i32 15}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/orangefs/devorangefs-req.c", i32 170, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @orangefs_devreq_read._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @orangefs_devreq_read._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/orangefs/devorangefs-req.c", i32 180, i32 3}
!42 = !{ptr @orangefs_devreq_read._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @orangefs_devreq_read._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/orangefs/devorangefs-req.c", i32 207, i32 5}
!46 = !{ptr @orangefs_devreq_read._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @orangefs_devreq_read._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/orangefs/devorangefs-req.c", i32 230, i32 5}
!50 = !{ptr @orangefs_devreq_read._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @orangefs_devreq_read._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/orangefs/devorangefs-req.c", i32 233, i32 5}
!54 = !{ptr @orangefs_devreq_read._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @orangefs_devreq_read._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/orangefs/devorangefs-req.c", i32 258, i32 2}
!58 = !{ptr @orangefs_devreq_read._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @orangefs_devreq_read._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/orangefs/devorangefs-req.c", i32 268, i32 3}
!62 = !{ptr @orangefs_devreq_read._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @orangefs_devreq_read._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/orangefs/devorangefs-req.c", i32 312, i32 2}
!66 = !{ptr @orangefs_devreq_read._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @orangefs_devreq_read._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/orangefs/devorangefs-req.c", i32 330, i32 2}
!70 = !{ptr @orangefs_devreq_read._entry.37, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @orangefs_devreq_read._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/orangefs/devorangefs-req.c", i32 335, i32 3}
!74 = !{ptr @orangefs_devreq_read._entry.40, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @orangefs_devreq_read._entry_ptr.42, !73, !"_entry_ptr", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!78 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/orangefs/devorangefs-req.c", i32 375, i32 2}
!85 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @orangefs_devreq_write_iter._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @orangefs_devreq_write_iter._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/orangefs/devorangefs-req.c", i32 381, i32 3}
!90 = !{ptr @orangefs_devreq_write_iter._entry.48, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @orangefs_devreq_write_iter._entry_ptr.50, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/orangefs/devorangefs-req.c", i32 389, i32 3}
!94 = !{ptr @orangefs_devreq_write_iter._entry.51, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @orangefs_devreq_write_iter._entry_ptr.53, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/orangefs/devorangefs-req.c", i32 394, i32 3}
!98 = !{ptr @orangefs_devreq_write_iter._entry.54, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @orangefs_devreq_write_iter._entry_ptr.56, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.58, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/orangefs/devorangefs-req.c", i32 403, i32 3}
!102 = !{ptr @orangefs_devreq_write_iter._entry.57, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @orangefs_devreq_write_iter._entry_ptr.59, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.61, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/orangefs/devorangefs-req.c", i32 410, i32 3}
!106 = !{ptr @orangefs_devreq_write_iter._entry.60, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @orangefs_devreq_write_iter._entry_ptr.62, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.64, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/orangefs/devorangefs-req.c", i32 417, i32 3}
!110 = !{ptr @orangefs_devreq_write_iter._entry.63, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @orangefs_devreq_write_iter._entry_ptr.65, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.67, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/orangefs/devorangefs-req.c", i32 424, i32 3}
!114 = !{ptr @orangefs_devreq_write_iter._entry.66, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @orangefs_devreq_write_iter._entry_ptr.68, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.70, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/orangefs/devorangefs-req.c", i32 437, i32 3}
!118 = !{ptr @orangefs_devreq_write_iter._entry.69, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @orangefs_devreq_write_iter._entry_ptr.71, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.73, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/orangefs/devorangefs-req.c", i32 451, i32 3}
!122 = !{ptr @orangefs_devreq_write_iter._entry.72, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @orangefs_devreq_write_iter._entry_ptr.74, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.76, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/orangefs/devorangefs-req.c", i32 460, i32 3}
!126 = !{ptr @orangefs_devreq_write_iter._entry.75, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @orangefs_devreq_write_iter._entry_ptr.77, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.79, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/orangefs/devorangefs-req.c", i32 475, i32 3}
!130 = !{ptr @orangefs_devreq_write_iter._entry.78, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @orangefs_devreq_write_iter._entry_ptr.80, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.82, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/orangefs/devorangefs-req.c", i32 494, i32 3}
!134 = !{ptr @orangefs_devreq_write_iter._entry.81, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @orangefs_devreq_write_iter._entry_ptr.83, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.84, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/orangefs/devorangefs-req.c", i32 576, i32 3}
!138 = !{ptr @.str.85, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @check_ioctl_command._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @check_ioctl_command._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.87, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/orangefs/devorangefs-req.c", i32 584, i32 3}
!143 = !{ptr @check_ioctl_command._entry.86, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @check_ioctl_command._entry_ptr.88, !142, !"_entry_ptr", i1 false, i1 false}
!145 = distinct !{null, !146, !"magic", i1 false, i1 false}
!146 = !{!"../fs/orangefs/devorangefs-req.c", i32 593, i32 15}
!147 = distinct !{null, !148, !"max_up_size", i1 false, i1 false}
!148 = !{!"../fs/orangefs/devorangefs-req.c", i32 594, i32 15}
!149 = distinct !{null, !150, !"max_down_size", i1 false, i1 false}
!150 = !{!"../fs/orangefs/devorangefs-req.c", i32 595, i32 15}
!151 = !{ptr @.str.89, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/orangefs/devorangefs-req.c", i32 626, i32 3}
!153 = !{ptr @.str.90, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @dispatch_ioctl_command._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @dispatch_ioctl_command._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.92, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/orangefs/devorangefs-req.c", i32 642, i32 3}
!158 = !{ptr @dispatch_ioctl_command._entry.91, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @dispatch_ioctl_command._entry_ptr.93, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.95, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/orangefs/devorangefs-req.c", i32 655, i32 4}
!162 = !{ptr @dispatch_ioctl_command._entry.94, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @dispatch_ioctl_command._entry_ptr.96, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.98, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/orangefs/devorangefs-req.c", i32 664, i32 5}
!166 = !{ptr @dispatch_ioctl_command._entry.97, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @dispatch_ioctl_command._entry_ptr.99, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.101, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/orangefs/devorangefs-req.c", i32 671, i32 3}
!170 = !{ptr @dispatch_ioctl_command._entry.100, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @dispatch_ioctl_command._entry_ptr.102, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.103, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/orangefs/devorangefs-req.c", i32 127, i32 3}
!174 = !{ptr @.str.104, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @orangefs_devreq_open._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @orangefs_devreq_open._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.106, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/orangefs/devorangefs-req.c", i32 133, i32 3}
!179 = !{ptr @orangefs_devreq_open._entry.105, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @orangefs_devreq_open._entry_ptr.107, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.109, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/orangefs/devorangefs-req.c", i32 138, i32 2}
!183 = !{ptr @orangefs_devreq_open._entry.108, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @orangefs_devreq_open._entry_ptr.110, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.112, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/orangefs/devorangefs-req.c", i32 145, i32 3}
!187 = !{ptr @orangefs_devreq_open._entry.111, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @orangefs_devreq_open._entry_ptr.113, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.115, !186, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @orangefs_devreq_open._entry.114, !186, !"_entry", i1 false, i1 false}
!191 = !{ptr @orangefs_devreq_open._entry_ptr.116, !186, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.118, !186, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @orangefs_devreq_open._entry.117, !186, !"_entry", i1 false, i1 false}
!194 = !{ptr @orangefs_devreq_open._entry_ptr.119, !186, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.121, !186, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @orangefs_devreq_open._entry.120, !186, !"_entry", i1 false, i1 false}
!197 = !{ptr @orangefs_devreq_open._entry_ptr.122, !186, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.124, !186, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @orangefs_devreq_open._entry.123, !186, !"_entry", i1 false, i1 false}
!200 = !{ptr @orangefs_devreq_open._entry_ptr.125, !186, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.127, !186, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @orangefs_devreq_open._entry.126, !186, !"_entry", i1 false, i1 false}
!203 = !{ptr @orangefs_devreq_open._entry_ptr.128, !186, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.130, !186, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @orangefs_devreq_open._entry.129, !186, !"_entry", i1 false, i1 false}
!206 = !{ptr @orangefs_devreq_open._entry_ptr.131, !186, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @orangefs_devreq_open._entry.132, !186, !"_entry", i1 false, i1 false}
!208 = !{ptr @orangefs_devreq_open._entry_ptr.133, !186, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.135, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/orangefs/devorangefs-req.c", i32 151, i32 2}
!211 = !{ptr @orangefs_devreq_open._entry.134, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @orangefs_devreq_open._entry_ptr.136, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.137, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/orangefs/devorangefs-req.c", i32 527, i32 2}
!215 = !{ptr @.str.138, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @orangefs_devreq_release._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @orangefs_devreq_release._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.140, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/orangefs/devorangefs-req.c", i32 537, i32 2}
!220 = !{ptr @orangefs_devreq_release._entry.139, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @orangefs_devreq_release._entry_ptr.141, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.142, !219, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.143, !219, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.145, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/orangefs/devorangefs-req.c", i32 545, i32 2}
!226 = !{ptr @orangefs_devreq_release._entry.144, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @orangefs_devreq_release._entry_ptr.146, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{!"sp"}
!229 = !{i32 1, !"wchar_size", i32 2}
!230 = !{i32 1, !"min_enum_size", i32 4}
!231 = !{i32 8, !"branch-target-enforcement", i32 0}
!232 = !{i32 8, !"sign-return-address", i32 0}
!233 = !{i32 8, !"sign-return-address-all", i32 0}
!234 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!235 = !{i32 7, !"uwtable", i32 1}
!236 = !{i32 7, !"frame-pointer", i32 2}
!237 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!238 = !{!"branch_weights", i32 2000, i32 1}
!239 = !{i64 2152665342, i64 2152665367}
!240 = !{i64 2148632236, i64 2148632516, i64 2148632850, i64 2148633184}
!241 = !{!"branch_weights", i32 1, i32 2000}
!242 = !{i64 5160216}
!243 = !{i64 5160413}
!244 = !{i64 2152645646}
!245 = !{i64 2154978051, i64 2154978331, i64 2154978665, i64 2154978999}
!246 = !{i64 2154986934, i64 2154987214, i64 2154987548, i64 2154987882}
!247 = !{i64 2154995821, i64 2154996101, i64 2154996435, i64 2154996769}
!248 = !{i64 2152664661, i64 2152664686}
