; ModuleID = '/llk/IR_all_yes/fs/orangefs/inode.c_pt.bc'
source_filename = "../fs/orangefs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.8 }
%union.anon.8 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.18, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.68 }
%union.anon.68 = type { i32 }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_fault = type { %struct.anon, i32, ptr, ptr, %union.anon.85, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr, i32, i32, i32 }
%union.anon.85 = type { i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.83, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.78 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.20, %union.anon.30, %struct.atomic_t, i32 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.30 = type { %struct.atomic_t }
%struct.orangefs_write_range = type { i64, i32, %struct.kuid_t, %struct.kgid_t }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }
%struct.anon.63 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.orangefs_kernel_op_s = type { i32, i64, %union.anon.86, %struct.orangefs_upcall_s, %struct.orangefs_downcall_s, %struct.completion, %struct.spinlock, i32, %struct.list_head }
%union.anon.86 = type { i32 }
%struct.orangefs_upcall_s = type { i32, i32, i32, i32, i32, i64, ptr, %union.anon.87 }
%union.anon.87 = type { %struct.orangefs_param_request_s, [6424 x i8] }
%struct.orangefs_param_request_s = type { i32, i32, %union.anon.88, [2048 x i8] }
%union.anon.88 = type { i64 }
%struct.orangefs_downcall_s = type { i32, i32, i64, ptr, %union.anon.89 }
%union.anon.89 = type { %struct.orangefs_listxattr_response, [4016 x i8] }
%struct.orangefs_listxattr_response = type { i32, i32, i64, [4096 x i8], i32, i32, [16 x i32] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.orangefs_sb_info_s = type { %struct.orangefs_khandle, i32, i32, i32, [256 x i8], ptr, i32, i32, %struct.list_head }
%struct.orangefs_khandle = type { [16 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.81, %struct.list_head, %struct.list_head, %union.anon.82 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.79 }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { %struct.spinlock, i32 }
%union.anon.81 = type { %struct.list_head }
%union.anon.82 = type { %struct.hlist_node }
%struct.orangefs_object_kref = type { %struct.orangefs_khandle, i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.64, %union.anon.65 }
%union.anon.64 = type { ptr }
%union.anon.65 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.orangefs_writepages = type { i64, i32, %struct.kuid_t, %struct.kgid_t, i32, i32, ptr, ptr }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }

@orangefs_gossip_debug_mask = external dso_local local_unnamed_addr global i64, align 8
@__orangefs_setattr._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.5, i32 795, ptr null, ptr null }, align 1
@.str = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\017User attempted to set sticky bit on non-root directory; returning EINVAL.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__orangefs_setattr\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/orangefs/inode.c\00", [44 x i8] zeroinitializer }, align 32
@__orangefs_setattr._entry_ptr = internal global ptr @__orangefs_setattr._entry, section ".printk_index", align 4
@__orangefs_setattr._entry.6 = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 802, ptr null, ptr null }, align 1
@.str.7 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017Attempting to set setuid bit (not supported); returning EINVAL.\0A\00", [61 x i8] zeroinitializer }, align 32
@__orangefs_setattr._entry_ptr.8 = internal global ptr @__orangefs_setattr._entry.6, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@orangefs_setattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017__orangefs_setattr: called on %pd\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"orangefs_setattr\00", [47 x i8] zeroinitializer }, align 32
@orangefs_setattr._entry_ptr = internal global ptr @orangefs_setattr._entry, section ".printk_index", align 4
@orangefs_setattr._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.5, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017orangefs_setattr: returning %d\0A\00", [62 x i8] zeroinitializer }, align 32
@orangefs_setattr._entry_ptr.16 = internal global ptr @orangefs_setattr._entry.14, section ".printk_index", align 4
@orangefs_getattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 874, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017orangefs_getattr: called on %pd mask %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"orangefs_getattr\00", [47 x i8] zeroinitializer }, align 32
@orangefs_getattr._entry_ptr = internal global ptr @orangefs_getattr._entry, section ".printk_index", align 4
@orangefs_permission._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: refreshing\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"orangefs_permission\00", [44 x i8] zeroinitializer }, align 32
@orangefs_permission._entry_ptr = internal global ptr @orangefs_permission._entry, section ".printk_index", align 4
@orangefs_update_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017orangefs_update_time: %pU\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"orangefs_update_time\00", [43 x i8] zeroinitializer }, align 32
@orangefs_update_time._entry_ptr = internal global ptr @orangefs_update_time._entry, section ".printk_index", align 4
@orangefs_iget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 1094, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017iget handle %pU, fsid %d hash %ld i_ino %lu\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"orangefs_iget\00", [18 x i8] zeroinitializer }, align 32
@orangefs_iget._entry_ptr = internal global ptr @orangefs_iget._entry, section ".printk_index", align 4
@orangefs_new_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 1115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s:(sb is %p | MAJOR(dev)=%u | MINOR(dev)=%u mode=%o)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"orangefs_new_inode\00", [45 x i8] zeroinitializer }, align 32
@orangefs_new_inode._entry_ptr = internal global ptr @orangefs_new_inode._entry, section ".printk_index", align 4
@orangefs_new_inode._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.5, i32 1137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017Initializing ACL's for inode %pU\0A\00", [60 x i8] zeroinitializer }, align 32
@orangefs_new_inode._entry_ptr.29 = internal global ptr @orangefs_new_inode._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.41 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@is_root_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.44, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: root handle: %pU, this handle: %pU:\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"is_root_handle\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs/orangefs/orangefs-kernel.h\00", [34 x i8] zeroinitializer }, align 32
@is_root_handle._entry_ptr = internal global ptr @is_root_handle._entry, section ".printk_index", align 4
@orangefs_setattr_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: %pU: Handle is %pU | fs_id %d | size is %llu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"orangefs_setattr_size\00", [42 x i8] zeroinitializer }, align 32
@orangefs_setattr_size._entry_ptr = internal global ptr @orangefs_setattr_size._entry, section ".printk_index", align 4
@orangefs_setattr_size._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.5, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: orangefs_inode_getattr failed, ret:%d:.\0A\00", [49 x i8] zeroinitializer }, align 32
@orangefs_setattr_size._entry_ptr.49 = internal global ptr @orangefs_setattr_size._entry.47, section ".printk_index", align 4
@orangefs_setattr_size._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.5, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017%s: ret:%d:\0A\00", [17 x i8] zeroinitializer }, align 32
@orangefs_setattr_size._entry_ptr.52 = internal global ptr @orangefs_setattr_size._entry.50, section ".printk_index", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@orangefs_address_operations = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @orangefs_writepage, ptr @orangefs_readpage, ptr @orangefs_writepages, ptr @__set_page_dirty_nobuffers, ptr null, ptr @orangefs_readahead, ptr @orangefs_write_begin, ptr @orangefs_write_end, ptr null, ptr @orangefs_invalidatepage, ptr @orangefs_releasepage, ptr @orangefs_freepage, ptr @orangefs_direct_IO, ptr null, ptr null, ptr null, ptr @orangefs_launder_page, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@orangefs_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr @orangefs_permission, ptr @orangefs_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @orangefs_setattr, ptr @orangefs_getattr, ptr @orangefs_listxattr, ptr null, ptr @orangefs_update_time, ptr null, ptr null, ptr @orangefs_set_acl, ptr @orangefs_fileattr_set, ptr @orangefs_fileattr_get, [36 x i8] undef }, align 128
@orangefs_file_operations = external dso_local constant %struct.file_operations, align 4
@orangefs_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@orangefs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@orangefs_dir_operations = external dso_local constant %struct.file_operations, align 4
@orangefs_init_iops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.5, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: unsupported mode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"orangefs_init_iops\00", [45 x i8] zeroinitializer }, align 32
@orangefs_init_iops._entry_ptr = internal global ptr @orangefs_init_iops._entry, section ".printk_index", align 4
@orangefs_writepages_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"writepages_callback not private!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"orangefs_writepages_callback\00", [35 x i8] zeroinitializer }, align 32
@orangefs_writepages_callback._entry_ptr = internal global ptr @orangefs_writepages_callback._entry, section ".printk_index", align 4
@orangefs_readahead._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.5, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: wait_for_direct_io failed. \0A\00", [61 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"orangefs_readahead\00", [45 x i8] zeroinitializer }, align 32
@orangefs_readahead._entry_ptr = internal global ptr @orangefs_readahead._entry, section ".printk_index", align 4
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VM_BUG_ON_FOLIO(!folio_test_locked(folio))\00", [53 x i8] zeroinitializer }, align 32
@orangefs_invalidatepage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.5, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"invalidate range offset %llu length %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"orangefs_invalidatepage\00", [40 x i8] zeroinitializer }, align 32
@orangefs_invalidatepage._entry_ptr = internal global ptr @orangefs_invalidatepage._entry, section ".printk_index", align 4
@orangefs_invalidatepage._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.5, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"write range offset %llu length %zu\0A\00", [60 x i8] zeroinitializer }, align 32
@orangefs_invalidatepage._entry_ptr.71 = internal global ptr @orangefs_invalidatepage._entry.69, section ".printk_index", align 4
@orangefs_direct_IO._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.5, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s-BEGIN(%pU): count(%d) after estimate_max_iovecs.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"orangefs_direct_IO\00", [45 x i8] zeroinitializer }, align 32
@orangefs_direct_IO._entry_ptr = internal global ptr @orangefs_direct_IO._entry, section ".printk_index", align 4
@orangefs_direct_IO._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.5, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s(%pU): proceeding with offset : %llu, size %d\0A\00", [45 x i8] zeroinitializer }, align 32
@orangefs_direct_IO._entry_ptr.76 = internal global ptr @orangefs_direct_IO._entry.74, section ".printk_index", align 4
@orangefs_direct_IO._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.73, ptr @.str.5, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s(%pU): size of each_count(%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@orangefs_direct_IO._entry_ptr.79 = internal global ptr @orangefs_direct_IO._entry.77, section ".printk_index", align 4
@orangefs_direct_IO._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.73, ptr @.str.5, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s(%pU): BEFORE wait_for_io: offset is %d\0A\00", [51 x i8] zeroinitializer }, align 32
@orangefs_direct_IO._entry_ptr.82 = internal global ptr @orangefs_direct_IO._entry.80, section ".printk_index", align 4
@orangefs_direct_IO._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.73, ptr @.str.5, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s(%pU): return from wait_for_io:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@orangefs_direct_IO._entry_ptr.85 = internal global ptr @orangefs_direct_IO._entry.83, section ".printk_index", align 4
@orangefs_direct_IO._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.73, ptr @.str.5, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s(%pU): AFTER wait_for_io: offset is %d\0A\00", [52 x i8] zeroinitializer }, align 32
@orangefs_direct_IO._entry_ptr.88 = internal global ptr @orangefs_direct_IO._entry.86, section ".printk_index", align 4
@orangefs_direct_IO._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.73, ptr @.str.5, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s(%pU): Value(%d) returned.\0A\00", [32 x i8] zeroinitializer }, align 32
@orangefs_direct_IO._entry_ptr.91 = internal global ptr @orangefs_direct_IO._entry.89, section ".printk_index", align 4
@orangefs_fileattr_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.5, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: called on %pd\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"orangefs_fileattr_set\00", [42 x i8] zeroinitializer }, align 32
@orangefs_fileattr_set._entry_ptr = internal global ptr @orangefs_fileattr_set._entry, section ".printk_index", align 4
@orangefs_fileattr_set._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.5, i32 961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013%s: only supports setting one of FS_IMMUTABLE_FL|FS_APPEND_FL|FS_NOATIME_FL\0A\00", [49 x i8] zeroinitializer }, align 32
@orangefs_fileattr_set._entry_ptr.96 = internal global ptr @orangefs_fileattr_set._entry.94, section ".printk_index", align 4
@orangefs_fileattr_set._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.5, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: flags=%u\0A\00", [16 x i8] zeroinitializer }, align 32
@orangefs_fileattr_set._entry_ptr.99 = internal global ptr @orangefs_fileattr_set._entry.97, section ".printk_index", align 4
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"user.pvfs2.meta_hint\00", [43 x i8] zeroinitializer }, align 32
@orangefs_fileattr_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.101, ptr @.str.5, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"orangefs_fileattr_get\00", [42 x i8] zeroinitializer }, align 32
@orangefs_fileattr_get._entry_ptr = internal global ptr @orangefs_fileattr_get._entry, section ".printk_index", align 4
@orangefs_fileattr_get._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.101, ptr @.str.5, i32 938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@orangefs_fileattr_get._entry_ptr.103 = internal global ptr @orangefs_fileattr_get._entry.102, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 794, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 801, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 850, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 858, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 872, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 898, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 911, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1089, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1109, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1135, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 49, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 34, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 73, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 788, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 260, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 420, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 452, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 416, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 717, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1160, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant [33 x i8] c"../fs/orangefs/orangefs-kernel.h\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 287, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 727, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 740, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 767, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 271, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [28 x i8] c"orangefs_address_operations\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 631, i32 46 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1001, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 167, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 279, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1096, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 473, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 475, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 538, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 545, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 568, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 573, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 581, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 594, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 621, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 949, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 960, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 965, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 967, i32 12 }
@___asan_gen_.372 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 929, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.376 = private constant [23 x i8] c"../fs/orangefs/inode.c\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 938, i32 2 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @__orangefs_setattr._entry, ptr @__orangefs_setattr._entry.6, ptr @__orangefs_setattr._entry_ptr, ptr @__orangefs_setattr._entry_ptr.8, ptr @is_root_handle._entry, ptr @is_root_handle._entry_ptr, ptr @orangefs_direct_IO._entry, ptr @orangefs_direct_IO._entry.74, ptr @orangefs_direct_IO._entry.77, ptr @orangefs_direct_IO._entry.80, ptr @orangefs_direct_IO._entry.83, ptr @orangefs_direct_IO._entry.86, ptr @orangefs_direct_IO._entry.89, ptr @orangefs_direct_IO._entry_ptr, ptr @orangefs_direct_IO._entry_ptr.76, ptr @orangefs_direct_IO._entry_ptr.79, ptr @orangefs_direct_IO._entry_ptr.82, ptr @orangefs_direct_IO._entry_ptr.85, ptr @orangefs_direct_IO._entry_ptr.88, ptr @orangefs_direct_IO._entry_ptr.91, ptr @orangefs_fileattr_get._entry, ptr @orangefs_fileattr_get._entry.102, ptr @orangefs_fileattr_get._entry_ptr, ptr @orangefs_fileattr_get._entry_ptr.103, ptr @orangefs_fileattr_set._entry, ptr @orangefs_fileattr_set._entry.94, ptr @orangefs_fileattr_set._entry.97, ptr @orangefs_fileattr_set._entry_ptr, ptr @orangefs_fileattr_set._entry_ptr.96, ptr @orangefs_fileattr_set._entry_ptr.99, ptr @orangefs_getattr._entry, ptr @orangefs_getattr._entry_ptr, ptr @orangefs_iget._entry, ptr @orangefs_iget._entry_ptr, ptr @orangefs_init_iops._entry, ptr @orangefs_init_iops._entry_ptr, ptr @orangefs_invalidatepage._entry, ptr @orangefs_invalidatepage._entry.69, ptr @orangefs_invalidatepage._entry_ptr, ptr @orangefs_invalidatepage._entry_ptr.71, ptr @orangefs_new_inode._entry, ptr @orangefs_new_inode._entry.27, ptr @orangefs_new_inode._entry_ptr, ptr @orangefs_new_inode._entry_ptr.29, ptr @orangefs_permission._entry, ptr @orangefs_permission._entry_ptr, ptr @orangefs_readahead._entry, ptr @orangefs_readahead._entry_ptr, ptr @orangefs_setattr._entry, ptr @orangefs_setattr._entry.14, ptr @orangefs_setattr._entry_ptr, ptr @orangefs_setattr._entry_ptr.16, ptr @orangefs_setattr_size._entry, ptr @orangefs_setattr_size._entry.47, ptr @orangefs_setattr_size._entry.50, ptr @orangefs_setattr_size._entry_ptr, ptr @orangefs_setattr_size._entry_ptr.49, ptr @orangefs_setattr_size._entry_ptr.52, ptr @orangefs_update_time._entry, ptr @orangefs_update_time._entry_ptr, ptr @orangefs_writepages_callback._entry, ptr @orangefs_writepages_callback._entry_ptr, ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @orangefs_address_operations, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_setattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_setattr._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_getattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_permission._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_update_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_iget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_new_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_new_inode._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_root_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_setattr_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_setattr_size._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_setattr_size._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_address_operations to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_init_iops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_writepages_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_readahead._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_invalidatepage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_invalidatepage._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_direct_IO._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_direct_IO._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_direct_IO._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_direct_IO._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_direct_IO._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_direct_IO._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_direct_IO._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_fileattr_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_fileattr_set._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_fileattr_set._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_fileattr_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_fileattr_get._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_page_mkwrite(ptr nocapture noundef readonly %vmf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %page1 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %0 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page1, align 4
  %2 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %bitlock3 = getelementptr i8, ptr %7, i32 812
  %i_sb = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %9, i32 0, i32 32, i32 2, i32 1
  tail call void @__might_sleep(ptr noundef nonnull @.str.30, i32 noundef 49) #14
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %9, i32 0, i32 32, i32 2, i32 1, i32 5
  %10 = tail call ptr @llvm.returnaddress(i32 0) #14
  %11 = ptrtoint ptr %10 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %11) #14
  %12 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !217
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %entry.rcu_sync_is_idle.exit.i.i.i_crit_edge

entry.rcu_sync_is_idle.exit.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %entry
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 35, ptr noundef nonnull @.str.32) #14
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %entry.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %16 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not.i.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !218

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !219
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %9, i32 0, i32 32, i32 2, i32 1, i32 1
  %19 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_count.i.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %27, %21
  %28 = inttoptr i32 %add.i.i.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add21.i.i.i = add i32 %30, 1
  store i32 %add21.i.i.i, ptr %28, align 4
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !220
  %and.i.i.i.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !221

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #14, !srcloc !222
  br label %sb_start_pagefault.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #14
  br label %sb_start_pagefault.exit

sb_start_pagefault.exit:                          ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !223
  %32 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i.i.i58.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.33, i32 noundef 73) #14
  %36 = ptrtoint ptr %bitlock3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %bitlock3, align 4
  %38 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %sb_start_pagefault.exit.if.end_crit_edge, label %wait_on_bit.exit

sb_start_pagefault.exit.if.end_crit_edge:         ; preds = %sb_start_pagefault.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

wait_on_bit.exit:                                 ; preds = %sb_start_pagefault.exit
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %bitlock3, i32 noundef 1, ptr noundef nonnull @bit_wait, i32 noundef 258) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %wait_on_bit.exit.if.end_crit_edge, label %wait_on_bit.exit.out_crit_edge

wait_on_bit.exit.out_crit_edge:                   ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

wait_on_bit.exit.if.end_crit_edge:                ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %wait_on_bit.exit.if.end_crit_edge, %sb_start_pagefault.exit.if.end_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.34, i32 noundef 788) #14
  %39 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and.i.i113 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i113)
  %tobool.not.i.i114 = icmp eq i32 %and.i.i113, 0
  br i1 %tobool.not.i.i114, label %if.end.i.i117, label %if.then.i.i116, !prof !218

if.then.i.i116:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i115 = add i32 %41, -1
  br label %_compound_head.exit.i120

if.end.i.i117:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i120

_compound_head.exit.i120:                         ; preds = %if.end.i.i117, %if.then.i.i116
  %retval.0.i.i118 = phi i32 [ %sub.i.i115, %if.then.i.i116 ], [ %42, %if.end.i.i117 ]
  %43 = inttoptr i32 %retval.0.i.i118 to ptr
  %44 = getelementptr inbounds %struct.page, ptr %43, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %and.i.i.i.i119 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i119)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i119, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !218

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i120
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %43, ptr noundef nonnull @.str.35) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !224
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i120
  %call.i.i.i.i121 = tail call zeroext i1 @__kasan_check_write(ptr noundef %43, i32 noundef 4) #14
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %43, align 4
  %and.i.i4.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i122 = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i122, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i123_crit_edge

folio_flags.exit.i.i.if.then.i123_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i123

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %43, i32 1, i32 3, i32 1) #14
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #14, !srcloc !225
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !226
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i123_crit_edge

folio_trylock.exit.i.if.then.i123_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i123

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lock_page.exit

if.then.i123:                                     ; preds = %folio_trylock.exit.i.if.then.i123_crit_edge, %folio_flags.exit.i.i.if.then.i123_crit_edge
  tail call void @__folio_lock(ptr noundef %43) #14
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i123, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %50 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %39, align 4
  %and.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !218

if.then.i.i:                                      ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %51, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %52, %if.end.i.i ]
  %53 = inttoptr i32 %retval.0.i.i to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp.i.not.i = icmp eq i32 %55, -1
  %56 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %39, align 4
  %and.i13.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !221

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !218

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i15.i = add i32 %57, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %58, %if.end.i17.i ]
  %59 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %59, ptr noundef nonnull @.str.37) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #14, !srcloc !227
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !218

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i22.i = add i32 %57, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %1 to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %60, %if.end.i24.i ]
  %61 = inttoptr i32 %retval.0.i25.i to ptr
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %61, align 4
  %64 = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool6.not = icmp eq i32 %64, 0
  br i1 %tobool6.not, label %PageDirty.exit.if.end14_crit_edge, label %land.lhs.true

PageDirty.exit.if.end14_crit_edge:                ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

land.lhs.true:                                    ; preds = %PageDirty.exit
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp.i.not.i102 = icmp eq i32 %66, -1
  br i1 %cmp.i.not.i102, label %if.then.i103, label %PagePrivate.exit, !prof !221

if.then.i103:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.38) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !228
  unreachable

PagePrivate.exit:                                 ; preds = %land.lhs.true
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %1, align 4
  %69 = and i32 %68, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool8.not = icmp eq i32 %69, 0
  br i1 %tobool8.not, label %if.then9, label %PagePrivate.exit.if.end14_crit_edge

PagePrivate.exit.if.end14_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then9:                                         ; preds = %PagePrivate.exit
  tail call void @wait_on_page_writeback(ptr noundef %1) #14
  %call.i = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef %1) #14
  br i1 %call.i, label %orangefs_launder_page.exit, label %if.then9.if.end14_crit_edge

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

orangefs_launder_page.exit:                       ; preds = %if.then9
  %call1.i = tail call fastcc i32 @orangefs_writepage_locked(ptr noundef %1) #14
  tail call void @end_page_writeback(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool11.not = icmp eq i32 %call1.i, 0
  br i1 %tobool11.not, label %orangefs_launder_page.exit.if.end14_crit_edge, label %orangefs_launder_page.exit.out_crit_edge

orangefs_launder_page.exit.out_crit_edge:         ; preds = %orangefs_launder_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

orangefs_launder_page.exit.if.end14_crit_edge:    ; preds = %orangefs_launder_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.end14:                                         ; preds = %orangefs_launder_page.exit.if.end14_crit_edge, %if.then9.if.end14_crit_edge, %PagePrivate.exit.if.end14_crit_edge, %PageDirty.exit.if.end14_crit_edge
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %cmp.i.not.i106 = icmp eq i32 %71, -1
  br i1 %cmp.i.not.i106, label %if.then.i107, label %PagePrivate.exit110, !prof !221

if.then.i107:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.38) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !228
  unreachable

PagePrivate.exit110:                              ; preds = %if.end14
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %1, align 4
  %74 = and i32 %73, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool16.not = icmp eq i32 %74, 0
  br i1 %tobool16.not, label %PagePrivate.exit110.if.end40_crit_edge, label %if.then17

PagePrivate.exit110.if.end40_crit_edge:           ; preds = %PagePrivate.exit110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then17:                                        ; preds = %PagePrivate.exit110
  %private = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 3
  %75 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %private, align 4
  %77 = inttoptr i32 %76 to ptr
  %uid = getelementptr inbounds %struct.orangefs_write_range, ptr %77, i32 0, i32 2
  %78 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 99
  %82 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %83, i32 0, i32 10
  %84 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %84)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %85 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %85)
  %.unpack = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %agg.tmp.sroa.0.0.copyload)
  %cmp.i = icmp eq i32 %.unpack, %agg.tmp.sroa.0.0.copyload
  br i1 %cmp.i, label %land.lhs.true21, label %if.then17.if.else_crit_edge

if.then17.if.else_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true21:                                  ; preds = %if.then17
  %gid = getelementptr inbounds %struct.orangefs_write_range, ptr %77, i32 0, i32 3
  %fsgid = getelementptr inbounds %struct.cred, ptr %83, i32 0, i32 11
  %86 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %86)
  %agg.tmp22.sroa.0.0.copyload = load i32, ptr %fsgid, align 4
  %87 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %87)
  %.unpack101 = load i32, ptr %gid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack101, i32 %agg.tmp22.sroa.0.0.copyload)
  %cmp.i127 = icmp eq i32 %.unpack101, %agg.tmp22.sroa.0.0.copyload
  br i1 %cmp.i127, label %if.then33, label %land.lhs.true21.if.else_crit_edge

land.lhs.true21.if.else_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then33:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #16
  %index.i = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %88 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %89 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %90 = ptrtoint ptr %77 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %shl.i, ptr %77, align 8
  %len = getelementptr inbounds %struct.orangefs_write_range, ptr %77, i32 0, i32 1
  %91 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 4096, ptr %len, align 8
  br label %okay

if.else:                                          ; preds = %land.lhs.true21.if.else_crit_edge, %if.then17.if.else_crit_edge
  tail call void @wait_on_page_writeback(ptr noundef %1) #14
  %call.i128 = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef %1) #14
  br i1 %call.i128, label %orangefs_launder_page.exit133, label %if.else.if.end40_crit_edge

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

orangefs_launder_page.exit133:                    ; preds = %if.else
  %call1.i129 = tail call fastcc i32 @orangefs_writepage_locked(ptr noundef %1) #14
  tail call void @end_page_writeback(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i129)
  %tobool36.not = icmp eq i32 %call1.i129, 0
  br i1 %tobool36.not, label %orangefs_launder_page.exit133.if.end40_crit_edge, label %orangefs_launder_page.exit133.out_crit_edge

orangefs_launder_page.exit133.out_crit_edge:      ; preds = %orangefs_launder_page.exit133
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

orangefs_launder_page.exit133.if.end40_crit_edge: ; preds = %orangefs_launder_page.exit133
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.end40:                                         ; preds = %orangefs_launder_page.exit133.if.end40_crit_edge, %if.else.if.end40_crit_edge, %PagePrivate.exit110.if.end40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %92 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 3264, i32 noundef 24) #17
  %tobool42.not = icmp eq ptr %call7.i, null
  br i1 %tobool42.not, label %if.end40.out_crit_edge, label %if.end44

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end44:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %index.i134 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %93 = ptrtoint ptr %index.i134 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %index.i134, align 4
  %conv.i135 = zext i32 %94 to i64
  %shl.i136 = shl nuw nsw i64 %conv.i135, 12
  %95 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %shl.i136, ptr %call7.i, align 8
  %len47 = getelementptr inbounds %struct.orangefs_write_range, ptr %call7.i, i32 0, i32 1
  %96 = ptrtoint ptr %len47 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 4096, ptr %len47, align 8
  %uid48 = getelementptr inbounds %struct.orangefs_write_range, ptr %call7.i, i32 0, i32 2
  %97 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i137 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i137 to ptr
  %task54 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %task54 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task54, align 8
  %cred55 = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 99
  %101 = ptrtoint ptr %cred55 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cred55, align 16
  %fsuid56 = getelementptr inbounds %struct.cred, ptr %102, i32 0, i32 10
  %103 = ptrtoint ptr %fsuid56 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %fsuid56, align 4
  %105 = ptrtoint ptr %uid48 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %uid48, align 4
  %gid57 = getelementptr inbounds %struct.orangefs_write_range, ptr %call7.i, i32 0, i32 3
  %106 = load ptr, ptr %task54, align 8
  %cred64 = getelementptr inbounds %struct.task_struct, ptr %106, i32 0, i32 99
  %107 = ptrtoint ptr %cred64 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cred64, align 16
  %fsgid65 = getelementptr inbounds %struct.cred, ptr %108, i32 0, i32 11
  %109 = ptrtoint ptr %fsgid65 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %fsgid65, align 4
  %111 = ptrtoint ptr %gid57 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %gid57, align 8
  tail call fastcc void @attach_page_private(ptr noundef %1, ptr noundef nonnull %call7.i)
  br label %okay

okay:                                             ; preds = %if.end44, %if.then33
  %112 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %vmf, align 4
  %vm_file67 = getelementptr inbounds %struct.vm_area_struct, ptr %113, i32 0, i32 14
  %114 = ptrtoint ptr %vm_file67 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %vm_file67, align 4
  %call68 = tail call i32 @file_update_time(ptr noundef %115) #14
  %mapping = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %116 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mapping, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %118 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %i_mapping, align 8
  %cmp.not = icmp eq ptr %117, %119
  br i1 %cmp.not, label %if.end70, label %if.then69

if.then69:                                        ; preds = %okay
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unlock_page(ptr noundef %1) #14
  br label %out

if.end70:                                         ; preds = %okay
  call void @__sanitizer_cov_trace_pc() #16
  %call71 = tail call zeroext i1 @set_page_dirty(ptr noundef %1) #14
  tail call void @wait_for_stable_page(ptr noundef %1) #14
  br label %out

out:                                              ; preds = %if.end70, %if.then69, %if.end40.out_crit_edge, %orangefs_launder_page.exit133.out_crit_edge, %orangefs_launder_page.exit.out_crit_edge, %wait_on_bit.exit.out_crit_edge
  %ret.0 = phi i32 [ 768, %if.then69 ], [ 512, %if.end70 ], [ 1024, %wait_on_bit.exit.out_crit_edge ], [ 1536, %orangefs_launder_page.exit.out_crit_edge ], [ 1536, %orangefs_launder_page.exit133.out_crit_edge ], [ 1536, %if.end40.out_crit_edge ]
  %120 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i138 = getelementptr %struct.super_block, ptr %121, i32 0, i32 32, i32 2, i32 1
  %dep_map.i.i.i139 = getelementptr %struct.super_block, ptr %121, i32 0, i32 32, i32 2, i32 1, i32 5
  tail call void @lock_release(ptr noundef %dep_map.i.i.i139, i32 noundef %11) #14
  %122 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i.i.i.i.i.i140 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i.i.i.i140 to ptr
  %preempt_count.i.i.i.i.i141 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %preempt_count.i.i.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %preempt_count.i.i.i.i.i141, align 4
  %add.i.i.i.i142 = add i32 %125, 1
  store volatile i32 %add.i.i.i.i142, ptr %preempt_count.i.i.i.i.i141, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !229
  %call.i.i.i.i143 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i143)
  %tobool.not.i.i.i.i144 = icmp eq i32 %call.i.i.i.i143, 0
  br i1 %tobool.not.i.i.i.i144, label %land.lhs.true.i.i.i.i147, label %out.rcu_sync_is_idle.exit.i.i.i152_crit_edge

out.rcu_sync_is_idle.exit.i.i.i152_crit_edge:     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i152

land.lhs.true.i.i.i.i147:                         ; preds = %out
  %call1.i.i.i.i145 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i145)
  %tobool2.not.i.i.i.i146 = icmp eq i32 %call1.i.i.i.i145, 0
  br i1 %tobool2.not.i.i.i.i146, label %land.lhs.true.i.i.i.i147.rcu_sync_is_idle.exit.i.i.i152_crit_edge, label %land.lhs.true3.i.i.i.i149

land.lhs.true.i.i.i.i147.rcu_sync_is_idle.exit.i.i.i152_crit_edge: ; preds = %land.lhs.true.i.i.i.i147
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i152

land.lhs.true3.i.i.i.i149:                        ; preds = %land.lhs.true.i.i.i.i147
  %.b8.i.i.i.i148 = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i148, label %land.lhs.true3.i.i.i.i149.rcu_sync_is_idle.exit.i.i.i152_crit_edge, label %if.then.i.i.i.i150

land.lhs.true3.i.i.i.i149.rcu_sync_is_idle.exit.i.i.i152_crit_edge: ; preds = %land.lhs.true3.i.i.i.i149
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i152

if.then.i.i.i.i150:                               ; preds = %land.lhs.true3.i.i.i.i149
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 35, ptr noundef nonnull @.str.32) #14
  br label %rcu_sync_is_idle.exit.i.i.i152

rcu_sync_is_idle.exit.i.i.i152:                   ; preds = %if.then.i.i.i.i150, %land.lhs.true3.i.i.i.i149.rcu_sync_is_idle.exit.i.i.i152_crit_edge, %land.lhs.true.i.i.i.i147.rcu_sync_is_idle.exit.i.i.i152_crit_edge, %out.rcu_sync_is_idle.exit.i.i.i152_crit_edge
  %126 = ptrtoint ptr %add.ptr1.i.i138 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %add.ptr1.i.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool7.not.i.i.i.i151 = icmp eq i32 %127, 0
  br i1 %tobool7.not.i.i.i.i151, label %do.body3.i.i.i, label %do.end49.i.i.i, !prof !218

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i152
  %128 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !219
  %read_count.i.i.i153 = getelementptr %struct.super_block, ptr %121, i32 0, i32 32, i32 2, i32 1, i32 1
  %129 = ptrtoint ptr %read_count.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %read_count.i.i.i153, align 4
  %131 = ptrtoint ptr %130 to i32
  %132 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i.i.i.i154 = and i32 %132, -16384
  %133 = inttoptr i32 %and.i.i.i.i154 to ptr
  %cpu.i.i.i155 = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %cpu.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cpu.i.i.i155, align 4
  %arrayidx.i.i.i156 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %135
  %136 = ptrtoint ptr %arrayidx.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx.i.i.i156, align 4
  %add.i.i.i157 = add i32 %137, %131
  %138 = inttoptr i32 %add.i.i.i157 to ptr
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %138, align 4
  %add17.i.i.i = add i32 %140, -1
  store i32 %add17.i.i.i, ptr %138, align 4
  %141 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !220
  %and.i.i.i.i.i158 = and i32 %141, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i158)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i158, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i.do.end39.i.i.i_crit_edge, !prof !221

do.body3.i.i.i.do.end39.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i.do.end39.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %128) #14, !srcloc !222
  br label %sb_end_pagefault.exit

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !230
  %142 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !219
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %121, i32 0, i32 32, i32 2, i32 1, i32 1
  %143 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %read_count75.i.i.i, align 4
  %145 = ptrtoint ptr %144 to i32
  %146 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i122.i.i.i = and i32 %146, -16384
  %147 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 3
  %148 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %149
  %150 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %151, %145
  %152 = inttoptr i32 %add80.i.i.i to ptr
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 4
  %add81.i.i.i = add i32 %154, -1
  store i32 %add81.i.i.i, ptr %152, align 4
  %155 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !220
  %and.i.i123.i.i.i = and i32 %155, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !221

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %142) #14, !srcloc !222
  %writer.i.i.i = getelementptr %struct.super_block, ptr %121, i32 0, i32 32, i32 2, i32 1, i32 2
  %call111.i.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #14
  br label %sb_end_pagefault.exit

sb_end_pagefault.exit:                            ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !231
  %156 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i.i.i120.i.i.i = and i32 %156, -16384
  %157 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i159 = add i32 %159, -1
  store volatile i32 %sub.i.i.i.i159, ptr %preempt_count.i.i121.i.i.i, align 4
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_launder_page(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @wait_on_page_writeback(ptr noundef %page) #14
  %call = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef %page) #14
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call fastcc i32 @orangefs_writepage_locked(ptr noundef %page)
  tail call void @end_page_writeback(ptr noundef %page) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %r.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @attach_page_private(ptr noundef %page, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !218

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #14
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end5.i.i, !prof !221

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.41) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #14, !srcloc !232
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #14
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #14, !srcloc !233
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@attach_page_private, %if.then.i.i.i.i)) #14
          to label %folio_get.exit.i [label %if.then.i.i.i.i], !srcloc !234

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__page_ref_mod(ptr noundef %4, i32 noundef 1) #14
  br label %folio_get.exit.i

folio_get.exit.i:                                 ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %private.i = getelementptr inbounds %struct.anon.63, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %private.i, align 4
  %9 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_attach_private.exit, label %if.then.i.i.i, !prof !218

if.then.i.i.i:                                    ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.35) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !224
  unreachable

folio_attach_private.exit:                        ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %4) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_stable_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__orangefs_setattr(ptr noundef %inode, ptr noundef %iattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iattr, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end36_crit_edge, label %if.then

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then:                                          ; preds = %entry
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 1
  %2 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ia_mode, align 4
  %4 = and i16 %3, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.not = icmp eq i16 %4, 0
  br i1 %tobool2.not, label %if.then.if.end17_crit_edge, label %if.then3

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then3:                                         ; preds = %if.then
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %5 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and.i = and i64 %5, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then3.is_root_handle.exit_crit_edge, label %do.end.i

if.then3.is_root_handle.exit_crit_edge:           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %is_root_handle.exit

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %inode, i32 -376
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef %9, ptr noundef %add.ptr.i.i.i) #18
  br label %is_root_handle.exit

is_root_handle.exit:                              ; preds = %do.end.i, %if.then3.is_root_handle.exit_crit_edge
  %i_sb5.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb5.i, align 4
  %s_fs_info.i15.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i15.i, align 16
  %add.ptr.i.i16.i = getelementptr i8, ptr %inode, i32 -376
  %call9.i = tail call fastcc i32 @ORANGEFS_khandle_cmp(ptr noundef %13, ptr noundef %add.ptr.i.i16.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i.not = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i.not, label %if.then5, label %do.body

if.then5:                                         ; preds = %is_root_handle.exit
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ia_mode, align 4
  %sub = add i16 %15, -512
  store i16 %sub, ptr %ia_mode, align 4
  br label %if.end17

do.body:                                          ; preds = %is_root_handle.exit
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %16 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and9 = and i64 %16, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9)
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #18
  br label %out

if.end17:                                         ; preds = %if.then5, %if.then.if.end17_crit_edge
  %17 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ia_mode, align 4
  %19 = and i16 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool21.not = icmp eq i16 %19, 0
  br i1 %tobool21.not, label %if.end17.if.end36_crit_edge, label %do.body23

if.end17.if.end36_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

do.body23:                                        ; preds = %if.end17
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %20 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and24 = and i64 %20, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and24)
  %tobool25.not = icmp eq i64 %and24, 0
  br i1 %tobool25.not, label %do.body23.out_crit_edge, label %do.end29

do.body23.out_crit_edge:                          ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #18
  br label %out

if.end36:                                         ; preds = %if.end17.if.end36_crit_edge, %entry.if.end36_crit_edge
  %21 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iattr, align 8
  %and38 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end36.if.end45_crit_edge, label %if.then40

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then40:                                        ; preds = %if.end36
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -376
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %23 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and.i139 = and i64 %23, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i139)
  %tobool.not.i140 = icmp eq i64 %and.i139, 0
  br i1 %tobool.not.i140, label %if.then40.do.end6.i_crit_edge, label %do.end.i141

if.then40.do.end6.i_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end6.i

do.end.i141:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  %fs_id.i = getelementptr i8, ptr %inode, i32 -360
  %24 = ptrtoint ptr %fs_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fs_id.i, align 8
  %ia_size.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 4
  %26 = ptrtoint ptr %ia_size.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ia_size.i, align 8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef %add.ptr.i.i, ptr noundef %add.ptr.i.i, i32 noundef %25, i64 noundef %27) #18
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i141, %if.then40.do.end6.i_crit_edge
  %call7.i = tail call i32 @orangefs_inode_getattr(ptr noundef %inode, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %call7.i)
  %cmp.i = icmp eq i32 %call7.i, -116
  %spec.store.select.i = select i1 %cmp.i, i32 -5, i32 %call7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %tobool10.not.i142 = icmp eq i32 %spec.store.select.i, 0
  br i1 %tobool10.not.i142, label %if.end17.i, label %orangefs_setattr_size.exit

if.end17.i:                                       ; preds = %do.end6.i
  %call18.i = tail call fastcc i64 @i_size_read(ptr noundef %inode) #14
  %ia_size19.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 4
  %28 = ptrtoint ptr %ia_size19.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ia_size19.i, align 8
  tail call void @truncate_pagecache(ptr noundef %inode, i64 noundef %29) #14
  %30 = ptrtoint ptr %ia_size19.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ia_size19.i, align 8
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %31) #14
  %32 = ptrtoint ptr %ia_size19.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %ia_size19.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %call18.i)
  %cmp22.i = icmp sgt i64 %33, %call18.i
  br i1 %cmp22.i, label %if.then23.i, label %if.end17.i.if.end25.i_crit_edge

if.end17.i.if.end25.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pagecache_isize_extended(ptr noundef %inode, i64 noundef %call18.i, i64 noundef %33) #14
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end17.i.if.end25.i_crit_edge
  %call26.i = tail call ptr @op_alloc(i32 noundef -16777204) #14
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %if.end25.i.out_crit_edge, label %if.end29.i

if.end25.i.out_crit_edge:                         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end29.i:                                       ; preds = %if.end25.i
  %req.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call26.i, i32 0, i32 3, i32 7
  %34 = call ptr @memcpy(ptr %req.i, ptr %add.ptr.i.i, i32 24)
  %35 = ptrtoint ptr %ia_size19.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ia_size19.i, align 8
  %size.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call26.i, i32 0, i32 3, i32 7, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %size.i, align 8
  %i_sb.i143 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %38 = ptrtoint ptr %i_sb.i143 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb.i143, align 4
  %s_fs_info.i.i144 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 33
  %40 = ptrtoint ptr %s_fs_info.i.i144 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i.i144, align 16
  %flags.i = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i, align 8
  %and36.i = and i32 %43, 1
  %call38.i = tail call i32 @service_operation(ptr noundef nonnull %call26.i, ptr noundef nonnull @.str.46, i32 noundef %and36.i) #14
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %44 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and40.i = and i64 %44, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and40.i)
  %tobool41.not.i = icmp eq i64 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end29.i.do.end50.i_crit_edge, label %do.end45.i

if.end29.i.do.end50.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end50.i

do.end45.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.46, i32 noundef %call38.i) #18
  br label %do.end50.i

do.end50.i:                                       ; preds = %do.end45.i, %if.end29.i.do.end50.i_crit_edge
  tail call void @op_release(ptr noundef nonnull %call26.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp51.not.i = icmp eq i32 %call38.i, 0
  br i1 %cmp51.not.i, label %if.end53.i, label %do.end50.i.out_crit_edge

do.end50.i.out_crit_edge:                         ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end53.i:                                       ; preds = %do.end50.i
  %call54.i = tail call fastcc i64 @i_size_read(ptr noundef %inode) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call18.i, i64 %call54.i)
  %cmp55.not.i = icmp eq i64 %call18.i, %call54.i
  br i1 %cmp55.not.i, label %if.end53.i.if.end45_crit_edge, label %if.then56.i

if.end53.i.if.end45_crit_edge:                    ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then56.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iattr, align 8
  %or.i = or i32 %46, 96
  store i32 %or.i, ptr %iattr, align 8
  br label %if.end45

orangefs_setattr_size.exit:                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, i32 noundef %spec.store.select.i) #18
  br label %out

if.end45:                                         ; preds = %if.then56.i, %if.end53.i.if.end45_crit_edge, %if.end36.if.end45_crit_edge
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #14
  %attr_valid = getelementptr i8, ptr %inode, i32 800
  %47 = ptrtoint ptr %attr_valid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %attr_valid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool47.not165 = icmp eq i32 %48, 0
  br i1 %tobool47.not165, label %if.end45.if.else79_crit_edge, label %if.then48.lr.ph

if.end45.if.else79_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else79

if.then48.lr.ph:                                  ; preds = %if.end45
  %attr_uid = getelementptr i8, ptr %inode, i32 804
  %attr_gid = getelementptr i8, ptr %inode, i32 808
  br label %if.then48

if.then48:                                        ; preds = %if.else75.if.then48_crit_edge, %if.then48.lr.ph
  %49 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i146 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i146 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 99
  %53 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %54, i32 0, i32 10
  %55 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %55)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %56 = ptrtoint ptr %attr_uid to i32
  call void @__asan_load4_noabort(i32 %56)
  %.unpack = load i32, ptr %attr_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %agg.tmp.sroa.0.0.copyload)
  %cmp.i147 = icmp eq i32 %.unpack, %agg.tmp.sroa.0.0.copyload
  br i1 %cmp.i147, label %land.lhs.true, label %if.then48.if.else75_crit_edge

if.then48.if.else75_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else75

land.lhs.true:                                    ; preds = %if.then48
  %fsgid = getelementptr inbounds %struct.cred, ptr %54, i32 0, i32 11
  %57 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %57)
  %agg.tmp59.sroa.0.0.copyload = load i32, ptr %fsgid, align 4
  %58 = ptrtoint ptr %attr_gid to i32
  call void @__asan_load4_noabort(i32 %58)
  %.unpack138 = load i32, ptr %attr_gid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack138, i32 %agg.tmp59.sroa.0.0.copyload)
  %cmp.i149 = icmp eq i32 %.unpack138, %agg.tmp59.sroa.0.0.copyload
  br i1 %cmp.i149, label %if.then71, label %land.lhs.true.if.else75_crit_edge

land.lhs.true.if.else75_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else75

if.then71:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iattr, align 8
  %61 = ptrtoint ptr %attr_valid to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %attr_valid, align 8
  br label %if.end103

if.else75:                                        ; preds = %land.lhs.true.if.else75_crit_edge, %if.then48.if.else75_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #14
  %call77 = tail call i32 @write_inode_now(ptr noundef %inode, i32 noundef 1) #14
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #14
  %62 = ptrtoint ptr %attr_valid to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %attr_valid, align 8
  %tobool47.not = icmp eq i32 %63, 0
  br i1 %tobool47.not, label %if.else75.if.else79_crit_edge, label %if.else75.if.then48_crit_edge

if.else75.if.then48_crit_edge:                    ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then48

if.else75.if.else79_crit_edge:                    ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else79

if.else79:                                        ; preds = %if.else75.if.else79_crit_edge, %if.end45.if.else79_crit_edge
  %64 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iattr, align 8
  %66 = ptrtoint ptr %attr_valid to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %attr_valid, align 8
  %attr_uid84 = getelementptr i8, ptr %inode, i32 804
  %67 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i153 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i153 to ptr
  %task90 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task90 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task90, align 8
  %cred91 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 99
  %71 = ptrtoint ptr %cred91 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cred91, align 16
  %fsuid92 = getelementptr inbounds %struct.cred, ptr %72, i32 0, i32 10
  %73 = ptrtoint ptr %fsuid92 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fsuid92, align 4
  %75 = ptrtoint ptr %attr_uid84 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %attr_uid84, align 4
  %attr_gid94 = getelementptr i8, ptr %inode, i32 808
  %76 = load ptr, ptr %task90, align 8
  %cred101 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 99
  %77 = ptrtoint ptr %cred101 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cred101, align 16
  %fsgid102 = getelementptr inbounds %struct.cred, ptr %78, i32 0, i32 11
  %79 = ptrtoint ptr %fsgid102 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fsgid102, align 4
  %81 = ptrtoint ptr %attr_gid94 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %attr_gid94, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.else79, %if.then71
  tail call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %inode, ptr noundef %iattr) #14
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #14
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #14
  %82 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %iattr, align 8
  %and106 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end103.out_crit_edge, label %if.then108

if.end103.out_crit_edge:                          ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then108:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #16
  %84 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %inode, align 8
  %call109 = tail call i32 @posix_acl_chmod(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i16 noundef zeroext %85) #14
  br label %out

out:                                              ; preds = %if.then108, %if.end103.out_crit_edge, %orangefs_setattr_size.exit, %do.end50.i.out_crit_edge, %if.end25.i.out_crit_edge, %do.end29, %do.body23.out_crit_edge, %do.end, %do.body.out_crit_edge
  %ret.0 = phi i32 [ %spec.store.select.i, %orangefs_setattr_size.exit ], [ -22, %do.end ], [ -22, %do.body.out_crit_edge ], [ -22, %do.end29 ], [ -22, %do.body23.out_crit_edge ], [ 0, %if.then108 ], [ 0, %if.end103.out_crit_edge ], [ %call38.i, %do.end50.i.out_crit_edge ], [ -12, %if.end25.i.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_chmod(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_setattr(ptr nocapture readnone %mnt_userns, ptr noundef %dentry, ptr noundef %iattr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %dentry) #18
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %iattr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end3.do.body12_crit_edge

do.end3.do.body12_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body12

if.end7:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %call9 = tail call i32 @__orangefs_setattr(ptr noundef %2, ptr noundef %iattr)
  %3 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i, align 8
  %call11 = tail call i32 @sync_inode_metadata(ptr noundef %4, i32 noundef 1) #14
  br label %do.body12

do.body12:                                        ; preds = %if.end7, %do.end3.do.body12_crit_edge
  %ret.0 = phi i32 [ %call4, %do.end3.do.body12_crit_edge ], [ %call9, %if.end7 ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %5 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and13 = and i64 %5, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13)
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %do.body12.do.end23_crit_edge, label %do.end18

do.body12.do.end23_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23

do.end18:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %ret.0) #18
  br label %do.end23

do.end23:                                         ; preds = %do.end18, %do.body12.do.end23_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_inode_metadata(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_getattr(ptr nocapture readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %4 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %4, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %1, i32 noundef %request_mask) #18
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %and5 = and i32 %request_mask, 512
  %5 = lshr exact i32 %and5, 8
  %call7 = tail call i32 @orangefs_inode_getattr(ptr noundef %3, i32 noundef %5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then8, label %do.end4.if.end14_crit_edge

do.end4.if.end14_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then8:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #14
  br i1 %tobool6.not, label %if.then11, label %if.then8.if.end13_crit_edge

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stat, align 8
  %and12 = and i32 %7, -513
  store i32 %and12, ptr %stat, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then8.if.end13_crit_edge
  tail call void @generic_fill_statx_attr(ptr noundef %3, ptr noundef %stat) #14
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %do.end4.if.end14_crit_edge
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_inode_getattr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fill_statx_attr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_permission(ptr nocapture readnone %mnt_userns, ptr noundef %inode, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and1 = and i64 %0, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #18
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %call8 = tail call i32 @orangefs_inode_getattr(ptr noundef %inode, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end7.cleanup_crit_edge, label %if.end10

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = tail call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i32 noundef %mask) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ -10, %entry.cleanup_crit_edge ], [ %call8, %do.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_update_time(ptr noundef %inode, ptr noundef %time, i32 noundef %flags) #0 align 64 {
entry:
  %iattr = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %iattr) #14
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -376
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %add.ptr.i.i) #18
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call i32 @generic_update_time(ptr noundef %inode, ptr noundef %time, i32 noundef %flags) #14
  %1 = call ptr @memset(ptr %iattr, i32 0, i32 80)
  %and6 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.end4.if.end9_crit_edge, label %if.then8

do.end4.if.end9_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then8:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iattr, align 8
  %or = or i32 %3, 16
  store i32 %or, ptr %iattr, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end4.if.end9_crit_edge
  %and10 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end15_crit_edge, label %if.then12

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iattr, align 8
  %or14 = or i32 %5, 64
  store i32 %or14, ptr %iattr, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %and16 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iattr, align 8
  %or20 = or i32 %7, 32
  store i32 %or20, ptr %iattr, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  %call22 = call i32 @__orangefs_setattr(ptr noundef %inode, ptr noundef nonnull %iattr)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %iattr) #14
  ret i32 %call22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_update_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @orangefs_iget(ptr noundef %sb, ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ref, null
  br i1 %tobool.not.i, label %entry.orangefs_handle_hash.exit_crit_edge, label %if.end.i

entry.orangefs_handle_hash.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %orangefs_handle_hash.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx34.i.i = getelementptr [16 x i8], ptr %ref, i32 0, i32 12
  %0 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx34.i.i, align 4
  %arrayidx37.i.i = getelementptr [16 x i8], ptr %ref, i32 0, i32 8
  %2 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx37.i.i, align 8
  %xor3989.i.i = xor i8 %3, %1
  %arrayidx43.i.i = getelementptr [16 x i8], ptr %ref, i32 0, i32 13
  %4 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx43.i.i, align 1
  %arrayidx46.i.i = getelementptr [16 x i8], ptr %ref, i32 0, i32 9
  %6 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx46.i.i, align 1
  %xor4890.i.i = xor i8 %7, %5
  %arrayidx52.i.i = getelementptr [16 x i8], ptr %ref, i32 0, i32 14
  %8 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx52.i.i, align 2
  %arrayidx55.i.i = getelementptr [16 x i8], ptr %ref, i32 0, i32 10
  %10 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx55.i.i, align 2
  %xor5791.i.i = xor i8 %11, %9
  %arrayidx61.i.i = getelementptr [16 x i8], ptr %ref, i32 0, i32 15
  %12 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx61.i.i, align 1
  %arrayidx64.i.i = getelementptr [16 x i8], ptr %ref, i32 0, i32 11
  %14 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx64.i.i, align 1
  %xor6692.i.i = xor i8 %15, %13
  %ihandle.sroa.11.0.insert.ext.i.i = zext i8 %xor6692.i.i to i32
  %ihandle.sroa.10.0.insert.ext.i.i = zext i8 %xor5791.i.i to i32
  %ihandle.sroa.10.0.insert.shift.i.i = shl nuw nsw i32 %ihandle.sroa.10.0.insert.ext.i.i, 8
  %ihandle.sroa.10.0.insert.insert.i.i = or i32 %ihandle.sroa.10.0.insert.shift.i.i, %ihandle.sroa.11.0.insert.ext.i.i
  %ihandle.sroa.9.0.insert.ext.i.i = zext i8 %xor4890.i.i to i32
  %ihandle.sroa.9.0.insert.shift.i.i = shl nuw nsw i32 %ihandle.sroa.9.0.insert.ext.i.i, 16
  %ihandle.sroa.9.0.insert.insert.i.i = or i32 %ihandle.sroa.10.0.insert.insert.i.i, %ihandle.sroa.9.0.insert.shift.i.i
  %ihandle.sroa.8.0.insert.ext.i.i = zext i8 %xor3989.i.i to i32
  %ihandle.sroa.8.0.insert.shift.i.i = shl nuw i32 %ihandle.sroa.8.0.insert.ext.i.i, 24
  %ihandle.sroa.8.0.insert.insert.i.i = or i32 %ihandle.sroa.9.0.insert.insert.i.i, %ihandle.sroa.8.0.insert.shift.i.i
  br label %orangefs_handle_hash.exit

orangefs_handle_hash.exit:                        ; preds = %if.end.i, %entry.orangefs_handle_hash.exit_crit_edge
  %retval.0.i = phi i32 [ %ihandle.sroa.8.0.insert.insert.i.i, %if.end.i ], [ 0, %entry.orangefs_handle_hash.exit_crit_edge ]
  %call1 = tail call ptr @iget5_locked(ptr noundef %sb, i32 noundef %retval.0.i, ptr noundef nonnull @orangefs_test_inode, ptr noundef nonnull @orangefs_set_inode, ptr noundef %ref) #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %orangefs_handle_hash.exit.cleanup_crit_edge, label %if.end

orangefs_handle_hash.exit.cleanup_crit_edge:      ; preds = %orangefs_handle_hash.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %orangefs_handle_hash.exit
  %i_state = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 24
  %16 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_state, align 8
  %and = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @orangefs_inode_getattr(ptr noundef nonnull %call1, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @iget_failed(ptr noundef nonnull %call1) #14
  %18 = inttoptr i32 %call6 to ptr
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %i_ino = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 11
  %19 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i, ptr %i_ino, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %20 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @orangefs_address_operations, ptr %a_ops.i, align 4
  %23 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %call1, align 8
  %25 = and i16 %24, -4096
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i16 %25, label %do.body.i [
    i16 -32768, label %sw.bb.i
    i16 -24576, label %sw.bb1.i
    i16 16384, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %27 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @orangefs_file_inode_operations, ptr %i_op.i, align 8
  %28 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @orangefs_file_operations, ptr %28, align 8
  br label %orangefs_init_iops.exit

sw.bb1.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %i_op2.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %30 = ptrtoint ptr %i_op2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @orangefs_symlink_inode_operations, ptr %i_op2.i, align 8
  br label %orangefs_init_iops.exit

sw.bb3.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %i_op4.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %31 = ptrtoint ptr %i_op4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @orangefs_dir_inode_operations, ptr %i_op4.i, align 8
  %32 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @orangefs_dir_operations, ptr %32, align 8
  br label %orangefs_init_iops.exit

do.body.i:                                        ; preds = %if.end10
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %34 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and5.i = and i64 %34, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5.i)
  %tobool.not.i38 = icmp eq i64 %and5.i, 0
  br i1 %tobool.not.i38, label %do.body.i.orangefs_init_iops.exit_crit_edge, label %do.end.i

do.body.i.orangefs_init_iops.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %orangefs_init_iops.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #18
  br label %orangefs_init_iops.exit

orangefs_init_iops.exit:                          ; preds = %do.end.i, %do.body.i.orangefs_init_iops.exit_crit_edge, %sw.bb3.i, %sw.bb1.i, %sw.bb.i
  tail call void @unlock_new_inode(ptr noundef nonnull %call1) #14
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %35 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and12 = and i64 %35, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %orangefs_init_iops.exit.cleanup_crit_edge, label %do.end

orangefs_init_iops.exit.cleanup_crit_edge:        ; preds = %orangefs_init_iops.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %orangefs_init_iops.exit
  call void @__sanitizer_cov_trace_pc() #16
  %fs_id = getelementptr inbounds %struct.orangefs_object_kref, ptr %ref, i32 0, i32 1
  %36 = ptrtoint ptr %fs_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fs_id, align 8
  %38 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_ino, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %ref, i32 noundef %37, i32 noundef %retval.0.i, i32 noundef %39) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %orangefs_init_iops.exit.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge, %orangefs_handle_hash.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %18, %if.then8 ], [ %call1, %if.end.cleanup_crit_edge ], [ %call1, %do.end ], [ %call1, %orangefs_init_iops.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %orangefs_handle_hash.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_test_inode(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -376
  %call2 = tail call fastcc i32 @ORANGEFS_khandle_cmp(ptr noundef %add.ptr.i, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_id = getelementptr i8, ptr %inode, i32 -360
  %0 = ptrtoint ptr %fs_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fs_id, align 8
  %fs_id4 = getelementptr inbounds %struct.orangefs_object_kref, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %fs_id4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fs_id4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @orangefs_set_inode(ptr nocapture noundef writeonly %inode, ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_id = getelementptr inbounds %struct.orangefs_object_kref, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %fs_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fs_id, align 8
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -376
  %fs_id1 = getelementptr i8, ptr %inode, i32 -360
  %2 = ptrtoint ptr %fs_id1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %fs_id1, align 8
  %3 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 16)
  %attr_valid = getelementptr i8, ptr %inode, i32 800
  %4 = ptrtoint ptr %attr_valid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %attr_valid, align 8
  %xattr_cache = getelementptr i8, ptr %inode, i32 816
  %5 = call ptr @memset(ptr %xattr_cache, i32 0, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %6, -1
  %mapping_time = getelementptr i8, ptr %inode, i32 796
  %7 = ptrtoint ptr %mapping_time to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %mapping_time, align 4
  %bitlock = getelementptr i8, ptr %inode, i32 812
  %8 = ptrtoint ptr %bitlock to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bitlock, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @orangefs_new_inode(ptr noundef %sb, ptr noundef %dir, i32 noundef %mode, i32 noundef %dev, ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ref, null
  br i1 %tobool.not.i, label %entry.orangefs_handle_hash.exit_crit_edge, label %if.end.i

entry.orangefs_handle_hash.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %orangefs_handle_hash.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx34.i.i = getelementptr [16 x i8], ptr %ref, i32 0, i32 12
  %0 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx34.i.i, align 4
  %arrayidx37.i.i = getelementptr [16 x i8], ptr %ref, i32 0, i32 8
  %2 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx37.i.i, align 8
  %xor3989.i.i = xor i8 %3, %1
  %arrayidx43.i.i = getelementptr [16 x i8], ptr %ref, i32 0, i32 13
  %4 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx43.i.i, align 1
  %arrayidx46.i.i = getelementptr [16 x i8], ptr %ref, i32 0, i32 9
  %6 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx46.i.i, align 1
  %xor4890.i.i = xor i8 %7, %5
  %arrayidx52.i.i = getelementptr [16 x i8], ptr %ref, i32 0, i32 14
  %8 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx52.i.i, align 2
  %arrayidx55.i.i = getelementptr [16 x i8], ptr %ref, i32 0, i32 10
  %10 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx55.i.i, align 2
  %xor5791.i.i = xor i8 %11, %9
  %arrayidx61.i.i = getelementptr [16 x i8], ptr %ref, i32 0, i32 15
  %12 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx61.i.i, align 1
  %arrayidx64.i.i = getelementptr [16 x i8], ptr %ref, i32 0, i32 11
  %14 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx64.i.i, align 1
  %xor6692.i.i = xor i8 %15, %13
  %ihandle.sroa.11.0.insert.ext.i.i = zext i8 %xor6692.i.i to i32
  %ihandle.sroa.10.0.insert.ext.i.i = zext i8 %xor5791.i.i to i32
  %ihandle.sroa.10.0.insert.shift.i.i = shl nuw nsw i32 %ihandle.sroa.10.0.insert.ext.i.i, 8
  %ihandle.sroa.10.0.insert.insert.i.i = or i32 %ihandle.sroa.10.0.insert.shift.i.i, %ihandle.sroa.11.0.insert.ext.i.i
  %ihandle.sroa.9.0.insert.ext.i.i = zext i8 %xor4890.i.i to i32
  %ihandle.sroa.9.0.insert.shift.i.i = shl nuw nsw i32 %ihandle.sroa.9.0.insert.ext.i.i, 16
  %ihandle.sroa.9.0.insert.insert.i.i = or i32 %ihandle.sroa.10.0.insert.insert.i.i, %ihandle.sroa.9.0.insert.shift.i.i
  %ihandle.sroa.8.0.insert.ext.i.i = zext i8 %xor3989.i.i to i32
  %ihandle.sroa.8.0.insert.shift.i.i = shl nuw i32 %ihandle.sroa.8.0.insert.ext.i.i, 24
  %ihandle.sroa.8.0.insert.insert.i.i = or i32 %ihandle.sroa.9.0.insert.insert.i.i, %ihandle.sroa.8.0.insert.shift.i.i
  br label %orangefs_handle_hash.exit

orangefs_handle_hash.exit:                        ; preds = %if.end.i, %entry.orangefs_handle_hash.exit_crit_edge
  %retval.0.i = phi i32 [ %ihandle.sroa.8.0.insert.insert.i.i, %if.end.i ], [ 0, %entry.orangefs_handle_hash.exit_crit_edge ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %16 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %16, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %orangefs_handle_hash.exit.do.end5_crit_edge, label %do.end

orangefs_handle_hash.exit.do.end5_crit_edge:      ; preds = %orangefs_handle_hash.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end5

do.end:                                           ; preds = %orangefs_handle_hash.exit
  call void @__sanitizer_cov_trace_pc() #16
  %shr = lshr i32 %dev, 20
  %and2 = and i32 %dev, 1048575
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef %sb, i32 noundef %shr, i32 noundef %and2, i32 noundef %mode) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %orangefs_handle_hash.exit.do.end5_crit_edge
  %call6 = tail call ptr @new_inode(ptr noundef %sb) #14
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end5.cleanup_crit_edge, label %if.end10

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %do.end5
  %fs_id.i = getelementptr inbounds %struct.orangefs_object_kref, ptr %ref, i32 0, i32 1
  %17 = ptrtoint ptr %fs_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fs_id.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call6, i32 -376
  %fs_id1.i = getelementptr i8, ptr %call6, i32 -360
  %19 = ptrtoint ptr %fs_id1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %fs_id1.i, align 8
  %20 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %ref, i32 16)
  %attr_valid.i = getelementptr i8, ptr %call6, i32 800
  %21 = ptrtoint ptr %attr_valid.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %attr_valid.i, align 8
  %xattr_cache.i = getelementptr i8, ptr %call6, i32 816
  %22 = call ptr @memset(ptr %xattr_cache.i, i32 0, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %23, -1
  %mapping_time.i = getelementptr i8, ptr %call6, i32 796
  %24 = ptrtoint ptr %mapping_time.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i, ptr %mapping_time.i, align 4
  %bitlock.i = getelementptr i8, ptr %call6, i32 812
  %25 = ptrtoint ptr %bitlock.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %bitlock.i, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call6, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i, ptr %i_ino, align 8
  %call12 = tail call i32 @orangefs_inode_getattr(ptr noundef nonnull %call6, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.out_iput_crit_edge

if.end10.out_iput_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_iput

if.end15:                                         ; preds = %if.end10
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call6, i32 0, i32 9
  %27 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @orangefs_address_operations, ptr %a_ops.i, align 4
  %30 = ptrtoint ptr %call6 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %call6, align 8
  %32 = and i16 %31, -4096
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.104)
  switch i16 %32, label %do.body.i [
    i16 -32768, label %sw.bb.i
    i16 -24576, label %sw.bb1.i
    i16 16384, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call6, i32 0, i32 7
  %34 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @orangefs_file_inode_operations, ptr %i_op.i, align 8
  %35 = getelementptr inbounds %struct.inode, ptr %call6, i32 0, i32 44
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @orangefs_file_operations, ptr %35, align 8
  br label %orangefs_init_iops.exit

sw.bb1.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %i_op2.i = getelementptr inbounds %struct.inode, ptr %call6, i32 0, i32 7
  %37 = ptrtoint ptr %i_op2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @orangefs_symlink_inode_operations, ptr %i_op2.i, align 8
  br label %orangefs_init_iops.exit

sw.bb3.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %i_op4.i = getelementptr inbounds %struct.inode, ptr %call6, i32 0, i32 7
  %38 = ptrtoint ptr %i_op4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @orangefs_dir_inode_operations, ptr %i_op4.i, align 8
  %39 = getelementptr inbounds %struct.inode, ptr %call6, i32 0, i32 44
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @orangefs_dir_operations, ptr %39, align 8
  br label %orangefs_init_iops.exit

do.body.i:                                        ; preds = %if.end15
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %41 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and5.i = and i64 %41, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5.i)
  %tobool.not.i55 = icmp eq i64 %and5.i, 0
  br i1 %tobool.not.i55, label %do.body.i.orangefs_init_iops.exit_crit_edge, label %do.end.i

do.body.i.orangefs_init_iops.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %orangefs_init_iops.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #18
  br label %orangefs_init_iops.exit

orangefs_init_iops.exit:                          ; preds = %do.end.i, %do.body.i.orangefs_init_iops.exit_crit_edge, %sw.bb3.i, %sw.bb1.i, %sw.bb.i
  %i_rdev = getelementptr inbounds %struct.inode, ptr %call6, i32 0, i32 13
  %42 = ptrtoint ptr %i_rdev to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %dev, ptr %i_rdev, align 8
  %call17 = tail call i32 @insert_inode_locked4(ptr noundef nonnull %call6, i32 noundef %retval.0.i, ptr noundef nonnull @orangefs_test_inode, ptr noundef %ref) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %orangefs_init_iops.exit.out_iput_crit_edge, label %do.body20

orangefs_init_iops.exit.out_iput_crit_edge:       ; preds = %orangefs_init_iops.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_iput

do.body20:                                        ; preds = %orangefs_init_iops.exit
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %43 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and21 = and i64 %43, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %do.body20.do.end32_crit_edge, label %do.end26

do.body20.do.end32_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end32

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #16
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %add.ptr.i.i) #18
  br label %do.end32

do.end32:                                         ; preds = %do.end26, %do.body20.do.end32_crit_edge
  %call33 = tail call i32 @orangefs_init_acl(ptr noundef nonnull %call6, ptr noundef %dir) #14
  br label %cleanup

out_iput:                                         ; preds = %orangefs_init_iops.exit.out_iput_crit_edge, %if.end10.out_iput_crit_edge
  %error.0 = phi i32 [ %call12, %if.end10.out_iput_crit_edge ], [ %call17, %orangefs_init_iops.exit.out_iput_crit_edge ]
  tail call void @iput(ptr noundef nonnull %call6) #14
  %44 = inttoptr i32 %error.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out_iput, %do.end32, %do.end5.cleanup_crit_edge
  %retval.0 = phi ptr [ %44, %out_iput ], [ %call6, %do.end32 ], [ inttoptr (i32 -12 to ptr), %do.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_inode_locked4(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_init_acl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @orangefs_writepage_locked(ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.iov_iter, align 8
  %bv = alloca %struct.bio_vec, align 4
  %off = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #14
  %4 = call ptr @memset(ptr %iter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bv) #14
  %5 = getelementptr inbounds %struct.bio_vec, ptr %bv, i32 0, i32 1
  %6 = getelementptr inbounds %struct.bio_vec, ptr %bv, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %off) #14
  %call = tail call zeroext i1 @set_page_writeback(ptr noundef %page) #14
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %7 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !221

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.38) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !228
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %9 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %page, align 4
  %11 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %do.end49, label %if.then

if.then:                                          ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %private, align 4
  %14 = inttoptr i32 %13 to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %14, align 8
  %conv3 = and i64 %call1, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %conv3)
  %cmp.not = icmp slt i64 %16, %conv3
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %do.end, !prof !218

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 35, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %14, align 8
  %19 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %off, align 8
  %len26 = getelementptr inbounds %struct.orangefs_write_range, ptr %14, i32 0, i32 1
  %20 = ptrtoint ptr %len26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len26, align 8
  %conv27 = zext i32 %21 to i64
  %add = add i64 %18, %conv27
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv3)
  %cmp29 = icmp sgt i64 %add, %conv3
  br i1 %cmp29, label %if.then31, label %if.end.if.end74_crit_edge

if.end.if.end74_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i64 %call1, %18
  %conv33 = trunc i64 %sub to i32
  br label %if.end74

do.end49:                                         ; preds = %PagePrivate.exit
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 42, i32 noundef 9, ptr noundef null) #14
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %23 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %24 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %shl.i, ptr %off, align 8
  %add64 = add nuw nsw i64 %shl.i, 4096
  %conv65 = and i64 %call1, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %add64, i64 %conv65)
  %cmp66 = icmp ugt i64 %add64, %conv65
  br i1 %cmp66, label %if.then68, label %do.end49.if.end74_crit_edge

do.end49.if.end74_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

if.then68:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #16
  %sub70 = sub i64 %call1, %shl.i
  %conv71 = trunc i64 %sub70 to i32
  br label %if.end74

if.end74:                                         ; preds = %if.then68, %do.end49.if.end74_crit_edge, %if.then31, %if.end.if.end74_crit_edge
  %conv76.pre-phi = phi i64 [ %conv65, %do.end49.if.end74_crit_edge ], [ %conv3, %if.end.if.end74_crit_edge ], [ %conv65, %if.then68 ], [ %conv3, %if.then31 ]
  %wlen.0 = phi i32 [ 4096, %do.end49.if.end74_crit_edge ], [ %21, %if.end.if.end74_crit_edge ], [ %conv71, %if.then68 ], [ %conv33, %if.then31 ]
  %wr.0 = phi ptr [ null, %do.end49.if.end74_crit_edge ], [ %14, %if.end.if.end74_crit_edge ], [ null, %if.then68 ], [ %14, %if.then31 ]
  %25 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %off, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %conv76.pre-phi)
  %cmp77 = icmp eq i64 %26, %conv76.pre-phi
  %conv79 = zext i32 %wlen.0 to i64
  %add80 = add i64 %26, %conv79
  call void @__sanitizer_cov_trace_cmp8(i64 %add80, i64 %conv76.pre-phi)
  %cmp82 = icmp sgt i64 %add80, %conv76.pre-phi
  %27 = select i1 %cmp77, i1 true, i1 %cmp82
  br i1 %27, label %do.end99, label %if.end74.if.end105_crit_edge, !prof !221

if.end74.if.end105_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

do.end99:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 50, i32 noundef 9, ptr noundef null) #14
  br label %if.end105

if.end105:                                        ; preds = %do.end99, %if.end74.if.end105_crit_edge
  %28 = ptrtoint ptr %bv to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %page, ptr %bv, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %wlen.0, ptr %5, align 4
  %30 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %off, align 8
  %rem = srem i64 %31, 4096
  %conv113 = trunc i64 %rem to i32
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv113, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wlen.0)
  %cmp115 = icmp eq i32 %wlen.0, 0
  br i1 %cmp115, label %do.end132, label %if.end105.if.end138_crit_edge, !prof !221

if.end105.if.end138_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end138

do.end132:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 55, i32 noundef 9, ptr noundef null) #14
  br label %if.end138

if.end138:                                        ; preds = %do.end132, %if.end105.if.end138_crit_edge
  call void @iov_iter_bvec(ptr noundef nonnull %iter, i32 noundef 1, ptr noundef nonnull %bv, i32 noundef 1, i32 noundef %wlen.0) #14
  %call147 = call i32 @wait_for_direct_io(i32 noundef 2, ptr noundef %3, ptr noundef nonnull %off, ptr noundef nonnull %iter, i32 noundef %wlen.0, i64 noundef %conv76.pre-phi, ptr noundef %wr.0, ptr noundef null, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %if.then150, label %if.end138.if.end153_crit_edge

if.end138.if.end153_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end153

if.then150:                                       ; preds = %if.end138
  %33 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %and.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i1, !prof !218

if.then.i1:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.39) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #14, !srcloc !235
  unreachable

do.body7.i:                                       ; preds = %if.then150
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %33, align 4
  %and.i31.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !218

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %37, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %38, %if.end.i.i ]
  %39 = inttoptr i32 %retval.0.i.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp.i.not.i2 = icmp eq i32 %41, -1
  %42 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %33, align 4
  %and.i32.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i2, label %if.then17.i, label %do.end24.i, !prof !221

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !218

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i34.i = add i32 %43, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %44, %if.end.i36.i ]
  %45 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %45, ptr noundef nonnull @.str.37) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #14, !srcloc !236
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !218

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i41.i = add i32 %43, -1
  br label %if.end.i

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %page to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %46, %if.end.i43.i ]
  %47 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %47) #14
  %48 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mapping, align 4
  call void @__filemap_set_wb_err(ptr noundef %49, i32 noundef %call147) #14
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %tobool4.not.i = icmp eq ptr %51, null
  br i1 %tobool4.not.i, label %if.end.i.mapping_set_error.exit_crit_edge, label %if.then5.i

if.end.i.mapping_set_error.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mapping_set_error.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 50
  %call.i = call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %call147) #14
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.then5.i, %if.end.i.mapping_set_error.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call147)
  %cmp.i = icmp eq i32 %call147, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %49, i32 0, i32 10
  %..i = zext i1 %cmp.i to i32
  call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #14
  br label %if.end153

if.end153:                                        ; preds = %mapping_set_error.exit, %if.end138.if.end153_crit_edge
  %ret.0 = phi i32 [ %call147, %mapping_set_error.exit ], [ 0, %if.end138.if.end153_crit_edge ]
  %54 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  %and.i.i4 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4)
  %tobool.not.i.i5 = icmp eq i32 %and.i.i4, 0
  br i1 %tobool.not.i.i5, label %if.end.i.i8, label %if.then.i.i7, !prof !218

if.then.i.i7:                                     ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i6 = add i32 %56, -1
  br label %detach_page_private.exit

if.end.i.i8:                                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %page to i32
  br label %detach_page_private.exit

detach_page_private.exit:                         ; preds = %if.end.i.i8, %if.then.i.i7
  %retval.0.i.i9 = phi i32 [ %sub.i.i6, %if.then.i.i7 ], [ %57, %if.end.i.i8 ]
  %58 = inttoptr i32 %retval.0.i.i9 to ptr
  %call1.i = call fastcc ptr @folio_detach_private(ptr noundef %58) #14
  call void @kfree(ptr noundef %call1.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %off) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bv) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !219
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  %1 = tail call ptr @llvm.returnaddress(i32 0) #14
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %3 = tail call ptr @llvm.returnaddress(i32 0) #14
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #14
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !220
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !221

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !222
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !237
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !238
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !240
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_direct_io(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @folio_detach_private(ptr noundef %folio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %private.i = getelementptr inbounds %struct.anon.63, ptr %folio, i32 0, i32 4
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %2 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private.exit, label %if.then.i.i, !prof !218

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.35) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !224
  unreachable

folio_test_private.exit:                          ; preds = %entry
  %5 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %folio, align 4
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %folio_test_private.exit.cleanup_crit_edge, label %if.end

folio_test_private.exit.cleanup_crit_edge:        ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %folio_test_private.exit
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %2, align 4
  %and.i.i.i6 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i6)
  %tobool.not.i.i7 = icmp eq i32 %and.i.i.i6, 0
  br i1 %tobool.not.i.i7, label %folio_clear_private.exit, label %if.then.i.i8, !prof !218

if.then.i.i8:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.35) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !224
  unreachable

folio_clear_private.exit:                         ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %folio) #14
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %private.i, align 4
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #14
  %11 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !221

if.then.i.i.i:                                    ; preds = %folio_clear_private.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !241
  unreachable

do.end5.i.i.i:                                    ; preds = %folio_clear_private.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #14
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #14, !srcloc !243
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@folio_detach_private, %if.then.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !234

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio, i32 noundef -1, i32 noundef %conv.i.i.i.i) #14
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.cleanup_crit_edge

folio_put_testzero.exit.i.cleanup_crit_edge:      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %folio) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %folio_put_testzero.exit.i.cleanup_crit_edge, %folio_test_private.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %folio_test_private.exit.cleanup_crit_edge ], [ %1, %folio_put_testzero.exit.i.cleanup_crit_edge ], [ %1, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ORANGEFS_khandle_cmp(ptr nocapture noundef readonly %kh1, ptr nocapture noundef readonly %kh2) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr [16 x i8], ptr %kh1, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 15
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp4 = icmp ugt i8 %1, %3
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %arrayidx.1 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 14
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %arrayidx2.1 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 14
  %6 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp4.1 = icmp ugt i8 %5, %7
  br i1 %cmp4.1, label %for.cond.cleanup_crit_edge, label %if.end.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.1:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp12.1 = icmp ult i8 %5, %7
  br i1 %cmp12.1, label %if.end.1.cleanup_crit_edge, label %for.cond.1

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.1:                                       ; preds = %if.end.1
  %arrayidx.2 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 13
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1
  %arrayidx2.2 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 13
  %10 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp4.2 = icmp ugt i8 %9, %11
  br i1 %cmp4.2, label %for.cond.1.cleanup_crit_edge, label %if.end.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.2:                                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp12.2 = icmp ult i8 %9, %11
  br i1 %cmp12.2, label %if.end.2.cleanup_crit_edge, label %for.cond.2

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.2:                                       ; preds = %if.end.2
  %arrayidx.3 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 12
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.3, align 1
  %arrayidx2.3 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 12
  %14 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp4.3 = icmp ugt i8 %13, %15
  br i1 %cmp4.3, label %for.cond.2.cleanup_crit_edge, label %if.end.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.3:                                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp12.3 = icmp ult i8 %13, %15
  br i1 %cmp12.3, label %if.end.3.cleanup_crit_edge, label %for.cond.3

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.3:                                       ; preds = %if.end.3
  %arrayidx.4 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 11
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.4, align 1
  %arrayidx2.4 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 11
  %18 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx2.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp4.4 = icmp ugt i8 %17, %19
  br i1 %cmp4.4, label %for.cond.3.cleanup_crit_edge, label %if.end.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.4:                                         ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp12.4 = icmp ult i8 %17, %19
  br i1 %cmp12.4, label %if.end.4.cleanup_crit_edge, label %for.cond.4

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.4:                                       ; preds = %if.end.4
  %arrayidx.5 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 10
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.5, align 1
  %arrayidx2.5 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 10
  %22 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx2.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp4.5 = icmp ugt i8 %21, %23
  br i1 %cmp4.5, label %for.cond.4.cleanup_crit_edge, label %if.end.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.5:                                         ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp12.5 = icmp ult i8 %21, %23
  br i1 %cmp12.5, label %if.end.5.cleanup_crit_edge, label %for.cond.5

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.5:                                       ; preds = %if.end.5
  %arrayidx.6 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 9
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.6, align 1
  %arrayidx2.6 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 9
  %26 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx2.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp4.6 = icmp ugt i8 %25, %27
  br i1 %cmp4.6, label %for.cond.5.cleanup_crit_edge, label %if.end.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.6:                                         ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp12.6 = icmp ult i8 %25, %27
  br i1 %cmp12.6, label %if.end.6.cleanup_crit_edge, label %for.cond.6

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.6:                                       ; preds = %if.end.6
  %arrayidx.7 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 8
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.7, align 1
  %arrayidx2.7 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 8
  %30 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx2.7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp4.7 = icmp ugt i8 %29, %31
  br i1 %cmp4.7, label %for.cond.6.cleanup_crit_edge, label %if.end.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.7:                                         ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp12.7 = icmp ult i8 %29, %31
  br i1 %cmp12.7, label %if.end.7.cleanup_crit_edge, label %for.cond.7

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.7:                                       ; preds = %if.end.7
  %arrayidx.8 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 7
  %32 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.8, align 1
  %arrayidx2.8 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 7
  %34 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx2.8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp4.8 = icmp ugt i8 %33, %35
  br i1 %cmp4.8, label %for.cond.7.cleanup_crit_edge, label %if.end.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.8:                                         ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp12.8 = icmp ult i8 %33, %35
  br i1 %cmp12.8, label %if.end.8.cleanup_crit_edge, label %for.cond.8

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.8:                                       ; preds = %if.end.8
  %arrayidx.9 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 6
  %36 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.9, align 1
  %arrayidx2.9 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 6
  %38 = ptrtoint ptr %arrayidx2.9 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx2.9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp4.9 = icmp ugt i8 %37, %39
  br i1 %cmp4.9, label %for.cond.8.cleanup_crit_edge, label %if.end.9

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.9:                                         ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp12.9 = icmp ult i8 %37, %39
  br i1 %cmp12.9, label %if.end.9.cleanup_crit_edge, label %for.cond.9

if.end.9.cleanup_crit_edge:                       ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.9:                                       ; preds = %if.end.9
  %arrayidx.10 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 5
  %40 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.10, align 1
  %arrayidx2.10 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 5
  %42 = ptrtoint ptr %arrayidx2.10 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx2.10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp4.10 = icmp ugt i8 %41, %43
  br i1 %cmp4.10, label %for.cond.9.cleanup_crit_edge, label %if.end.10

for.cond.9.cleanup_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.10:                                        ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp12.10 = icmp ult i8 %41, %43
  br i1 %cmp12.10, label %if.end.10.cleanup_crit_edge, label %for.cond.10

if.end.10.cleanup_crit_edge:                      ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.10:                                      ; preds = %if.end.10
  %arrayidx.11 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 4
  %44 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.11, align 1
  %arrayidx2.11 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 4
  %46 = ptrtoint ptr %arrayidx2.11 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx2.11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp4.11 = icmp ugt i8 %45, %47
  br i1 %cmp4.11, label %for.cond.10.cleanup_crit_edge, label %if.end.11

for.cond.10.cleanup_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.11:                                        ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp12.11 = icmp ult i8 %45, %47
  br i1 %cmp12.11, label %if.end.11.cleanup_crit_edge, label %for.cond.11

if.end.11.cleanup_crit_edge:                      ; preds = %if.end.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.11:                                      ; preds = %if.end.11
  %arrayidx.12 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.12, align 1
  %arrayidx2.12 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 3
  %50 = ptrtoint ptr %arrayidx2.12 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx2.12, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp4.12 = icmp ugt i8 %49, %51
  br i1 %cmp4.12, label %for.cond.11.cleanup_crit_edge, label %if.end.12

for.cond.11.cleanup_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.12:                                        ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp12.12 = icmp ult i8 %49, %51
  br i1 %cmp12.12, label %if.end.12.cleanup_crit_edge, label %for.cond.12

if.end.12.cleanup_crit_edge:                      ; preds = %if.end.12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.12:                                      ; preds = %if.end.12
  %arrayidx.13 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.13, align 1
  %arrayidx2.13 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 2
  %54 = ptrtoint ptr %arrayidx2.13 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx2.13, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp4.13 = icmp ugt i8 %53, %55
  br i1 %cmp4.13, label %for.cond.12.cleanup_crit_edge, label %if.end.13

for.cond.12.cleanup_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.13:                                        ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp12.13 = icmp ult i8 %53, %55
  br i1 %cmp12.13, label %if.end.13.cleanup_crit_edge, label %for.cond.13

if.end.13.cleanup_crit_edge:                      ; preds = %if.end.13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.13:                                      ; preds = %if.end.13
  %arrayidx.14 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.14, align 1
  %arrayidx2.14 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx2.14 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx2.14, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp4.14 = icmp ugt i8 %57, %59
  br i1 %cmp4.14, label %for.cond.13.cleanup_crit_edge, label %if.end.14

for.cond.13.cleanup_crit_edge:                    ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.14:                                        ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp12.14 = icmp ult i8 %57, %59
  br i1 %cmp12.14, label %if.end.14.cleanup_crit_edge, label %for.cond.14

if.end.14.cleanup_crit_edge:                      ; preds = %if.end.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.14:                                      ; preds = %if.end.14
  %60 = ptrtoint ptr %kh1 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %kh1, align 1
  %62 = ptrtoint ptr %kh2 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %kh2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp4.15 = icmp ugt i8 %61, %63
  br i1 %cmp4.15, label %for.cond.14.cleanup_crit_edge, label %if.end.15

for.cond.14.cleanup_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.15:                                        ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp12.15 = icmp ult i8 %61, %63
  %spec.select = sext i1 %cmp12.15 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp12 = icmp ult i8 %1, %3
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %for.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.end.15, %for.cond.14.cleanup_crit_edge, %if.end.14.cleanup_crit_edge, %for.cond.13.cleanup_crit_edge, %if.end.13.cleanup_crit_edge, %for.cond.12.cleanup_crit_edge, %if.end.12.cleanup_crit_edge, %for.cond.11.cleanup_crit_edge, %if.end.11.cleanup_crit_edge, %for.cond.10.cleanup_crit_edge, %if.end.10.cleanup_crit_edge, %for.cond.9.cleanup_crit_edge, %if.end.9.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %if.end.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 1, %for.cond.cleanup_crit_edge ], [ -1, %if.end.1.cleanup_crit_edge ], [ 1, %for.cond.1.cleanup_crit_edge ], [ -1, %if.end.2.cleanup_crit_edge ], [ 1, %for.cond.2.cleanup_crit_edge ], [ -1, %if.end.3.cleanup_crit_edge ], [ 1, %for.cond.3.cleanup_crit_edge ], [ -1, %if.end.4.cleanup_crit_edge ], [ 1, %for.cond.4.cleanup_crit_edge ], [ -1, %if.end.5.cleanup_crit_edge ], [ 1, %for.cond.5.cleanup_crit_edge ], [ -1, %if.end.6.cleanup_crit_edge ], [ 1, %for.cond.6.cleanup_crit_edge ], [ -1, %if.end.7.cleanup_crit_edge ], [ 1, %for.cond.7.cleanup_crit_edge ], [ -1, %if.end.8.cleanup_crit_edge ], [ 1, %for.cond.8.cleanup_crit_edge ], [ -1, %if.end.9.cleanup_crit_edge ], [ 1, %for.cond.9.cleanup_crit_edge ], [ -1, %if.end.10.cleanup_crit_edge ], [ 1, %for.cond.10.cleanup_crit_edge ], [ -1, %if.end.11.cleanup_crit_edge ], [ 1, %for.cond.11.cleanup_crit_edge ], [ -1, %if.end.12.cleanup_crit_edge ], [ 1, %for.cond.12.cleanup_crit_edge ], [ -1, %if.end.13.cleanup_crit_edge ], [ 1, %for.cond.13.cleanup_crit_edge ], [ -1, %if.end.14.cleanup_crit_edge ], [ 1, %for.cond.14.cleanup_crit_edge ], [ %spec.select, %if.end.15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !245
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !246
  %9 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !247
  %18 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !248
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !249
  %37 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !218

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !250
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #14
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #14
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !251
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !252
  %48 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pagecache_isize_extended(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @op_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @service_operation(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @op_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_writepage(ptr noundef %page, ptr nocapture noundef readnone %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @orangefs_writepage_locked(ptr noundef %page)
  tail call void @unlock_page(ptr noundef %page) #14
  tail call void @end_page_writeback(ptr noundef %page) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_readpage(ptr noundef %file, ptr noundef %page) #0 align 64 {
entry:
  %iter = alloca %struct.iov_iter, align 8
  %bv = alloca %struct.bio_vec, align 4
  %off = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #14
  %4 = call ptr @memset(ptr %iter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bv) #14
  %5 = ptrtoint ptr %bv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %bv, align 4, !annotation !253
  %6 = getelementptr inbounds %struct.bio_vec, ptr %bv, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !253
  %8 = getelementptr inbounds %struct.bio_vec, ptr %bv, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !253
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %off) #14
  %10 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %off, align 8, !annotation !253
  %11 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !218

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i.not.i = icmp eq i32 %17, -1
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %11, align 4
  %and.i13.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !221

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !218

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i15.i = add i32 %19, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %20, %if.end.i17.i ]
  %21 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.37) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #14, !srcloc !227
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !218

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i22.i = add i32 %19, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %page to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %22, %if.end.i24.i ]
  %23 = inttoptr i32 %retval.0.i25.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %PageDirty.exit.if.end_crit_edge, label %if.then

PageDirty.exit.if.end_crit_edge:                  ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %PageDirty.exit
  tail call void @wait_on_page_writeback(ptr noundef %page) #14
  %call.i = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef %page) #14
  br i1 %call.i, label %if.then.i68, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i68:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call fastcc i32 @orangefs_writepage_locked(ptr noundef %page) #14
  tail call void @end_page_writeback(ptr noundef %page) #14
  br label %if.end

if.end:                                           ; preds = %if.then.i68, %if.then.if.end_crit_edge, %PageDirty.exit.if.end_crit_edge
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %28 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %29 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %shl.i, ptr %off, align 8
  %30 = ptrtoint ptr %bv to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %page, ptr %bv, align 4
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4096, ptr %6, align 4
  %32 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %8, align 4
  call void @iov_iter_bvec(ptr noundef nonnull %iter, i32 noundef 0, ptr noundef nonnull %bv, i32 noundef 1, i32 noundef 4096) #14
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %33 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_size, align 8
  %call3 = call i32 @wait_for_direct_io(i32 noundef 1, ptr noundef %3, ptr noundef nonnull %off, ptr noundef nonnull %iter, i32 noundef 4096, i64 noundef %34, ptr noundef null, ptr noundef null, ptr noundef %file) #14
  %call4 = call i32 @iov_iter_zero(i32 noundef -1, ptr noundef nonnull %iter) #14
  call void @flush_dcache_page(ptr noundef %page) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %11, align 4
  %and.i.i23 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i23)
  %tobool.not.i = icmp eq i32 %and.i.i23, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i24, !prof !218

if.then.i24:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.39) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #14, !srcloc !235
  unreachable

do.body7.i:                                       ; preds = %if.then5
  %37 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %11, align 4
  %and.i31.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i25 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i25, label %if.end.i.i28, label %if.then.i.i27, !prof !218

if.then.i.i27:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i26 = add i32 %38, -1
  br label %_compound_head.exit.i31

if.end.i.i28:                                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i31

_compound_head.exit.i31:                          ; preds = %if.end.i.i28, %if.then.i.i27
  %retval.0.i.i29 = phi i32 [ %sub.i.i26, %if.then.i.i27 ], [ %39, %if.end.i.i28 ]
  %40 = inttoptr i32 %retval.0.i.i29 to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp.i.not.i30 = icmp eq i32 %42, -1
  %43 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %11, align 4
  %and.i32.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i30, label %if.then17.i, label %do.end24.i, !prof !221

if.then17.i:                                      ; preds = %_compound_head.exit.i31
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !218

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i34.i = add i32 %44, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %45, %if.end.i36.i ]
  %46 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %46, ptr noundef nonnull @.str.37) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #14, !srcloc !236
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i31
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !218

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i41.i = add i32 %44, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %47, %if.end.i43.i ]
  %48 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %48) #14
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !254
  %49 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %11, align 4
  %and.i.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !218

if.then.i.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.35) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !224
  unreachable

SetPageUptodate.exit:                             ; preds = %if.else
  call void @_set_bit(i32 noundef 2, ptr noundef %page) #14
  %51 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %11, align 4
  %and.i.i32 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i32)
  %tobool.not.i.i33 = icmp eq i32 %and.i.i32, 0
  br i1 %tobool.not.i.i33, label %if.end.i.i36, label %if.then.i.i35, !prof !218

if.then.i.i35:                                    ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i34 = add i32 %52, -1
  br label %_compound_head.exit.i39

if.end.i.i36:                                     ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i39

_compound_head.exit.i39:                          ; preds = %if.end.i.i36, %if.then.i.i35
  %retval.0.i.i37 = phi i32 [ %sub.i.i34, %if.then.i.i35 ], [ %53, %if.end.i.i36 ]
  %54 = inttoptr i32 %retval.0.i.i37 to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp.i.not.i38 = icmp eq i32 %56, -1
  %57 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %11, align 4
  %and.i16.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i38, label %if.then.i40, label %do.end10.i, !prof !221

if.then.i40:                                      ; preds = %_compound_head.exit.i39
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !218

if.then.i19.i:                                    ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i18.i = add i32 %58, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %59, %if.end.i20.i ]
  %60 = inttoptr i32 %retval.0.i21.i to ptr
  call void @dump_page(ptr noundef %60, ptr noundef nonnull @.str.37) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #14, !srcloc !255
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i39
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !218

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i25.i = add i32 %58, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %page to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %61, %if.end.i27.i ]
  %62 = inttoptr i32 %retval.0.i28.i to ptr
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %62, align 4
  %65 = and i32 %64, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool7.not = icmp eq i32 %65, 0
  br i1 %tobool7.not, label %PageError.exit.if.end10_crit_edge, label %if.then8

PageError.exit.if.end10_crit_edge:                ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then8:                                         ; preds = %PageError.exit
  %66 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %11, align 4
  %and.i.i43 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i43)
  %tobool.not.i44 = icmp eq i32 %and.i.i43, 0
  br i1 %tobool.not.i44, label %do.body7.i48, label %if.then.i45, !prof !218

if.then.i45:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.39) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #14, !srcloc !256
  unreachable

do.body7.i48:                                     ; preds = %if.then8
  %68 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %11, align 4
  %and.i31.i46 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i46)
  %tobool.not.i.i47 = icmp eq i32 %and.i31.i46, 0
  br i1 %tobool.not.i.i47, label %if.end.i.i51, label %if.then.i.i50, !prof !218

if.then.i.i50:                                    ; preds = %do.body7.i48
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i49 = add i32 %69, -1
  br label %_compound_head.exit.i56

if.end.i.i51:                                     ; preds = %do.body7.i48
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i56

_compound_head.exit.i56:                          ; preds = %if.end.i.i51, %if.then.i.i50
  %retval.0.i.i52 = phi i32 [ %sub.i.i49, %if.then.i.i50 ], [ %70, %if.end.i.i51 ]
  %71 = inttoptr i32 %retval.0.i.i52 to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp.i.not.i53 = icmp eq i32 %73, -1
  %74 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %11, align 4
  %and.i32.i54 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i54)
  %tobool.not.i33.i55 = icmp eq i32 %and.i32.i54, 0
  br i1 %cmp.i.not.i53, label %if.then17.i57, label %do.end24.i63, !prof !221

if.then17.i57:                                    ; preds = %_compound_head.exit.i56
  br i1 %tobool.not.i33.i55, label %if.end.i36.i60, label %if.then.i35.i59, !prof !218

if.then.i35.i59:                                  ; preds = %if.then17.i57
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i34.i58 = add i32 %75, -1
  br label %_compound_head.exit38.i62

if.end.i36.i60:                                   ; preds = %if.then17.i57
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i62

_compound_head.exit38.i62:                        ; preds = %if.end.i36.i60, %if.then.i35.i59
  %retval.0.i37.i61 = phi i32 [ %sub.i34.i58, %if.then.i35.i59 ], [ %76, %if.end.i36.i60 ]
  %77 = inttoptr i32 %retval.0.i37.i61 to ptr
  call void @dump_page(ptr noundef %77, ptr noundef nonnull @.str.37) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #14, !srcloc !257
  unreachable

do.end24.i63:                                     ; preds = %_compound_head.exit.i56
  br i1 %tobool.not.i33.i55, label %if.end.i43.i66, label %if.then.i42.i65, !prof !218

if.then.i42.i65:                                  ; preds = %do.end24.i63
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i41.i64 = add i32 %75, -1
  br label %ClearPageError.exit

if.end.i43.i66:                                   ; preds = %do.end24.i63
  call void @__sanitizer_cov_trace_pc() #16
  %78 = ptrtoint ptr %page to i32
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.end.i43.i66, %if.then.i42.i65
  %retval.0.i44.i67 = phi i32 [ %sub.i41.i64, %if.then.i42.i65 ], [ %78, %if.end.i43.i66 ]
  %79 = inttoptr i32 %retval.0.i44.i67 to ptr
  call void @_clear_bit(i32 noundef 8, ptr noundef %79) #14
  br label %if.end10

if.end10:                                         ; preds = %ClearPageError.exit, %PageError.exit.if.end10_crit_edge, %SetPageError.exit
  %ret.0 = phi i32 [ %call3, %SetPageError.exit ], [ 0, %ClearPageError.exit ], [ 0, %PageError.exit.if.end10_crit_edge ]
  call void @unlock_page(ptr noundef %page) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %off) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bv) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_writepages(ptr noundef %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #14
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 40) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @orangefs_bufmap_size_query() #14
  %div41 = lshr i32 %call1, 12
  %maxpages = getelementptr inbounds %struct.orangefs_writepages, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %maxpages to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div41, ptr %maxpages, align 4
  %3 = shl nuw nsw i32 %div41, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #19
  %pages = getelementptr inbounds %struct.orangefs_writepages, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %pages, align 4
  %tobool5.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %5 = ptrtoint ptr %maxpages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %maxpages, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 12) #14
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %kcalloc.exit74.thread, label %if.end7.i.i72, !prof !221

kcalloc.exit74.thread:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %bv84 = getelementptr inbounds %struct.orangefs_writepages, ptr %call7.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %bv84 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %bv84, align 8
  br label %if.then12

if.end7.i.i72:                                    ; preds = %if.end7
  %10 = extractvalue { i32, i1 } %7, 0
  %call8.i.i71 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #19
  %bv = getelementptr inbounds %struct.orangefs_writepages, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %bv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i.i71, ptr %bv, align 8
  %tobool11.not = icmp eq ptr %call8.i.i71, null
  br i1 %tobool11.not, label %if.end7.i.i72.if.then12_crit_edge, label %if.end14

if.end7.i.i72.if.then12_crit_edge:                ; preds = %if.end7.i.i72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

if.then12:                                        ; preds = %if.end7.i.i72.if.then12_crit_edge, %kcalloc.exit74.thread
  %12 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pages, align 4
  tail call void @kfree(ptr noundef %13) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end14:                                         ; preds = %if.end7.i.i72
  call void @blk_start_plug(ptr noundef nonnull %plug) #14
  %call15 = call i32 @write_cache_pages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull @orangefs_writepages_callback, ptr noundef nonnull %call7.i.i) #14
  %npages = getelementptr inbounds %struct.orangefs_writepages, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %npages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not = icmp eq i32 %15, 0
  br i1 %tobool16.not, label %if.end14.if.end19_crit_edge, label %if.then17

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %call18 = call fastcc i32 @orangefs_writepages_work(ptr noundef nonnull %call7.i.i)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %ret.0 = phi i32 [ %call18, %if.then17 ], [ %call15, %if.end14.if.end19_crit_edge ]
  call void @blk_finish_plug(ptr noundef nonnull %plug) #14
  %16 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages, align 4
  call void @kfree(ptr noundef %17) #14
  %18 = ptrtoint ptr %bv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bv, align 8
  call void @kfree(ptr noundef %19) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then12, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end19 ], [ -12, %if.then12 ], [ -12, %if.then6 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @orangefs_readahead(ptr noundef %rac) #0 align 64 {
entry:
  %offset = alloca i64, align 8
  %iter = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #14
  %0 = call ptr @memset(ptr %iter, i32 255, i32 24)
  %mapping = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 1
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %_index.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 3
  %5 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_index.i, align 4
  %conv.i = zext i32 %6 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 12
  %i_size = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 14
  %7 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_size, align 8
  %sub = sub i64 %8, %mul.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194303, i64 %sub)
  %cmp = icmp sgt i64 %sub, 4194303
  br i1 %cmp, label %entry.if.then8_crit_edge, label %if.else

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

if.else:                                          ; preds = %entry
  %div = sdiv i64 %sub, 4096
  %_nr_pages.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 4
  %9 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %_nr_pages.i, align 4
  %conv = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %div, i64 %conv)
  %cmp3 = icmp sle i64 %div, %conv
  %conv6 = trunc i64 %sub to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6)
  %tobool.not = icmp eq i32 %conv6, 0
  %or.cond = or i1 %tobool.not, %cmp3
  br i1 %or.cond, label %if.else.if.end9_crit_edge, label %if.else.if.then8_crit_edge

if.else.if.then8_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then8:                                         ; preds = %if.else.if.then8_crit_edge, %entry.if.then8_crit_edge
  %new_len.066 = phi i32 [ 4194304, %entry.if.then8_crit_edge ], [ %conv6, %if.else.if.then8_crit_edge ]
  tail call void @readahead_expand(ptr noundef %rac, i64 noundef %mul.i, i32 noundef %new_len.066) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.else.if.end9_crit_edge
  %11 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %_index.i, align 4
  %conv.i51 = zext i32 %12 to i64
  %mul.i52 = shl nuw nsw i64 %conv.i51, 12
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %mul.i52, ptr %offset, align 8
  %14 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mapping, align 4
  %i_pages12 = getelementptr inbounds %struct.address_space, ptr %15, i32 0, i32 1
  %_nr_pages.i53 = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 4
  %16 = ptrtoint ptr %_nr_pages.i53 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %_nr_pages.i53, align 4
  %mul.i54 = shl i32 %17, 12
  call void @iov_iter_xarray(ptr noundef nonnull %iter, i32 noundef 0, ptr noundef %i_pages12, i64 noundef %mul.i52, i32 noundef %mul.i54) #14
  %18 = ptrtoint ptr %_nr_pages.i53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %_nr_pages.i53, align 4
  %mul.i56 = shl i32 %19, 12
  %20 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_size, align 8
  %22 = ptrtoint ptr %rac to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rac, align 4
  %call16 = call i32 @wait_for_direct_io(i32 noundef 1, ptr noundef %4, ptr noundef nonnull %offset, ptr noundef nonnull %iter, i32 noundef %mul.i56, i64 noundef %21, ptr noundef null, ptr noundef null, ptr noundef %23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.body, label %if.end9.if.end28_crit_edge

if.end9.if.end28_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

do.body:                                          ; preds = %if.end9
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %24 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %24, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool20.not = icmp eq i64 %and, 0
  br i1 %tobool20.not, label %do.body.if.end28_crit_edge, label %do.end

do.body.if.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #18
  br label %if.end28

if.end28:                                         ; preds = %do.end, %do.body.if.end28_crit_edge, %if.end9.if.end28_crit_edge
  %ret.0 = phi i32 [ %call16, %do.end ], [ %call16, %do.body.if.end28_crit_edge ], [ 0, %if.end9.if.end28_crit_edge ]
  %_batch_count.i.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 5
  %25 = ptrtoint ptr %_batch_count.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %_batch_count.i.i, align 4
  %27 = ptrtoint ptr %_nr_pages.i53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %_nr_pages.i53, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp.i.i80 = icmp ult i32 %28, %26
  br i1 %cmp.i.i80, label %if.end28.do.body2.i.i_crit_edge, label %if.end28.do.end7.i.i_crit_edge, !prof !221

if.end28.do.end7.i.i_crit_edge:                   ; preds = %if.end28
  br label %do.end7.i.i

if.end28.do.body2.i.i_crit_edge:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %put_page.exit.do.body2.i.i_crit_edge, %if.end28.do.body2.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1086, 0\0A.popsection", ""() #14, !srcloc !258
  unreachable

do.end7.i.i:                                      ; preds = %put_page.exit.do.end7.i.i_crit_edge, %if.end28.do.end7.i.i_crit_edge
  %29 = phi i32 [ %61, %put_page.exit.do.end7.i.i_crit_edge ], [ %28, %if.end28.do.end7.i.i_crit_edge ]
  %30 = phi i32 [ %59, %put_page.exit.do.end7.i.i_crit_edge ], [ %26, %if.end28.do.end7.i.i_crit_edge ]
  %sub.i.i = sub i32 %29, %30
  %31 = ptrtoint ptr %_nr_pages.i53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.i.i, ptr %_nr_pages.i53, align 4
  %32 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %_index.i, align 4
  %add.i.i = add i32 %33, %30
  store i32 %add.i.i, ptr %_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %30)
  %tobool12.not.i.i = icmp eq i32 %29, %30
  br i1 %tobool12.not.i.i, label %readahead_page.exit.thread, label %if.end15.i.i

readahead_page.exit.thread:                       ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %_batch_count.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %_batch_count.i.i, align 4
  br label %while.end

if.end15.i.i:                                     ; preds = %do.end7.i.i
  %35 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mapping, align 4
  %i_pages.i.i = getelementptr inbounds %struct.address_space, ptr %36, i32 0, i32 1
  %call.i.i = call ptr @xa_load(ptr noundef %i_pages.i.i, i32 noundef %add.i.i) #14
  %37 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %and.i.i.i.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_locked.exit.i.i, label %if.then.i.i.i.i, !prof !218

if.then.i.i.i.i:                                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %call.i.i, ptr noundef nonnull @.str.35) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !224
  unreachable

folio_test_locked.exit.i.i:                       ; preds = %if.end15.i.i
  %40 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then27.i.i, label %do.end36.i.i, !prof !221

if.then27.i.i:                                    ; preds = %folio_test_locked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %call.i.i, ptr noundef nonnull @.str.60) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1096, 0\0A.popsection", ""() #14, !srcloc !259
  unreachable

do.end36.i.i:                                     ; preds = %folio_test_locked.exit.i.i
  %42 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %43, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !221

if.then.i.i.i.i.i:                                ; preds = %do.end36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %call.i.i, ptr noundef nonnull @.str.38) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #14, !srcloc !260
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %do.end36.i.i
  %44 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %call.i.i, align 4
  %46 = and i32 %45, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i53.i.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i53.i.i, label %PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %readahead_page.exit

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %compound_nr.i.i.i.i = getelementptr %struct.page, ptr %call.i.i, i32 1, i32 1, i32 0, i32 2
  %47 = ptrtoint ptr %compound_nr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %compound_nr.i.i.i.i, align 4
  br label %readahead_page.exit

readahead_page.exit:                              ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge
  %storemerge.i.i = phi i32 [ %48, %if.end.i.i.i.i ], [ 1, %PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge ]
  %49 = ptrtoint ptr %_batch_count.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %storemerge.i.i, ptr %_batch_count.i.i, align 4
  %tobool30.not = icmp eq ptr %call.i.i, null
  br i1 %tobool30.not, label %readahead_page.exit.while.end_crit_edge, label %while.body

readahead_page.exit.while.end_crit_edge:          ; preds = %readahead_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %readahead_page.exit
  call void @page_endio(ptr noundef nonnull %call.i.i, i1 noundef zeroext false, i32 noundef %ret.0) #14
  %50 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %37, align 4
  %and.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !218

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i57 = add i32 %51, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i58 = phi i32 [ %sub.i.i57, %if.then.i.i ], [ %52, %if.end.i.i ]
  %53 = inttoptr i32 %retval.0.i.i58 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %53, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %54 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i.i.i.i = icmp eq i32 %55, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i59, label %do.end5.i.i.i.i, !prof !221

if.then.i.i.i.i59:                                ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %56 = inttoptr i32 %retval.0.i.i58 to ptr
  call void @dump_page(ptr noundef %56, ptr noundef nonnull @.str.40) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !241
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %57 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !243
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %57, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@orangefs_readahead, %if.then.i.i.i.i.i60)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i60], !srcloc !234

if.then.i.i.i.i.i60:                              ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %53, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i60, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__put_page(ptr noundef %53) #14
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %58 = ptrtoint ptr %_batch_count.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %_batch_count.i.i, align 4
  %60 = ptrtoint ptr %_nr_pages.i53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %_nr_pages.i53, align 4
  %cmp.i.i = icmp ult i32 %61, %59
  br i1 %cmp.i.i, label %put_page.exit.do.body2.i.i_crit_edge, label %put_page.exit.do.end7.i.i_crit_edge, !prof !221

put_page.exit.do.end7.i.i_crit_edge:              ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i.i

put_page.exit.do.body2.i.i_crit_edge:             ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i.i

while.end:                                        ; preds = %readahead_page.exit.while.end_crit_edge, %readahead_page.exit.thread
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_write_begin(ptr nocapture noundef readnone %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr nocapture noundef writeonly %pagep, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i64 %pos, 12
  %conv = trunc i64 %0 to i32
  %call = tail call ptr @grab_cache_page_write_begin(ptr noundef %mapping, i32 noundef %conv, i32 noundef %flags) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup70_crit_edge, label %if.end

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup70

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %pagep, align 4
  %2 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !218

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, -1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %2, align 4
  %and.i13.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !221

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !218

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i15.i = add i32 %10, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %call to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %11, %if.end.i17.i ]
  %12 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.37) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #14, !srcloc !227
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !218

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i22.i = add i32 %10, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %call to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %13, %if.end.i24.i ]
  %14 = inttoptr i32 %retval.0.i25.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not = icmp eq i32 %17, 0
  br i1 %tobool2.not, label %PageDirty.exit.if.end10_crit_edge, label %land.lhs.true

PageDirty.exit.if.end10_crit_edge:                ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true:                                    ; preds = %PageDirty.exit
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i.not.i99 = icmp eq i32 %19, -1
  br i1 %cmp.i.not.i99, label %if.then.i100, label %PagePrivate.exit, !prof !221

if.then.i100:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.38) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !228
  unreachable

PagePrivate.exit:                                 ; preds = %land.lhs.true
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %call, align 4
  %22 = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool4.not = icmp eq i32 %22, 0
  br i1 %tobool4.not, label %if.then5, label %PagePrivate.exit.if.end10_crit_edge

PagePrivate.exit.if.end10_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then5:                                         ; preds = %PagePrivate.exit
  tail call void @wait_on_page_writeback(ptr noundef nonnull %call) #14
  %call.i = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef nonnull %call) #14
  br i1 %call.i, label %orangefs_launder_page.exit, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

orangefs_launder_page.exit:                       ; preds = %if.then5
  %call1.i = tail call fastcc i32 @orangefs_writepage_locked(ptr noundef nonnull %call) #14
  tail call void @end_page_writeback(ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool7.not = icmp eq i32 %call1.i, 0
  br i1 %tobool7.not, label %orangefs_launder_page.exit.if.end10_crit_edge, label %orangefs_launder_page.exit.cleanup70_crit_edge

orangefs_launder_page.exit.cleanup70_crit_edge:   ; preds = %orangefs_launder_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup70

orangefs_launder_page.exit.if.end10_crit_edge:    ; preds = %orangefs_launder_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end10:                                         ; preds = %orangefs_launder_page.exit.if.end10_crit_edge, %if.then5.if.end10_crit_edge, %PagePrivate.exit.if.end10_crit_edge, %PageDirty.exit.if.end10_crit_edge
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.not.i103 = icmp eq i32 %24, -1
  br i1 %cmp.i.not.i103, label %if.then.i104, label %PagePrivate.exit107, !prof !221

if.then.i104:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.38) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !228
  unreachable

PagePrivate.exit107:                              ; preds = %if.end10
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %call, align 4
  %27 = and i32 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.not = icmp eq i32 %27, 0
  br i1 %tobool12.not, label %PagePrivate.exit107.if.end45_crit_edge, label %if.then13

PagePrivate.exit107.if.end45_crit_edge:           ; preds = %PagePrivate.exit107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then13:                                        ; preds = %PagePrivate.exit107
  %private = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %private, align 4
  %30 = inttoptr i32 %29 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %30, align 8
  %len16 = getelementptr inbounds %struct.orangefs_write_range, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len16, align 8
  %conv17 = zext i32 %34 to i64
  %add = add i64 %32, %conv17
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %pos)
  %cmp = icmp eq i64 %add, %pos
  br i1 %cmp, label %land.lhs.true19, label %if.then13.if.else_crit_edge

if.then13.if.else_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true19:                                  ; preds = %if.then13
  %uid = getelementptr inbounds %struct.orangefs_write_range, ptr %30, i32 0, i32 2
  %35 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 99
  %39 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %41)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %42 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %42)
  %.unpack = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %agg.tmp.sroa.0.0.copyload)
  %cmp.i = icmp eq i32 %.unpack, %agg.tmp.sroa.0.0.copyload
  br i1 %cmp.i, label %land.lhs.true24, label %land.lhs.true19.if.else_crit_edge

land.lhs.true19.if.else_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %gid = getelementptr inbounds %struct.orangefs_write_range, ptr %30, i32 0, i32 3
  %fsgid = getelementptr inbounds %struct.cred, ptr %40, i32 0, i32 11
  %43 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %43)
  %agg.tmp25.sroa.0.0.copyload = load i32, ptr %fsgid, align 4
  %44 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack98 = load i32, ptr %gid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack98, i32 %agg.tmp25.sroa.0.0.copyload)
  %cmp.i111 = icmp eq i32 %.unpack98, %agg.tmp25.sroa.0.0.copyload
  br i1 %cmp.i111, label %cleanup, label %land.lhs.true24.if.else_crit_edge

land.lhs.true24.if.else_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.else:                                          ; preds = %land.lhs.true24.if.else_crit_edge, %land.lhs.true19.if.else_crit_edge, %if.then13.if.else_crit_edge
  tail call void @wait_on_page_writeback(ptr noundef nonnull %call) #14
  %call.i112 = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef nonnull %call) #14
  br i1 %call.i112, label %orangefs_launder_page.exit116, label %if.else.if.end45_crit_edge

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

orangefs_launder_page.exit116:                    ; preds = %if.else
  %call1.i113 = tail call fastcc i32 @orangefs_writepage_locked(ptr noundef nonnull %call) #14
  tail call void @end_page_writeback(ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i113)
  %tobool41.not = icmp eq i32 %call1.i113, 0
  br i1 %tobool41.not, label %orangefs_launder_page.exit116.if.end45_crit_edge, label %orangefs_launder_page.exit116.cleanup70_crit_edge

orangefs_launder_page.exit116.cleanup70_crit_edge: ; preds = %orangefs_launder_page.exit116
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup70

orangefs_launder_page.exit116.if.end45_crit_edge: ; preds = %orangefs_launder_page.exit116
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

cleanup:                                          ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  %add39 = add i32 %34, %len
  %45 = ptrtoint ptr %len16 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add39, ptr %len16, align 8
  br label %cleanup70

if.end45:                                         ; preds = %orangefs_launder_page.exit116.if.end45_crit_edge, %if.else.if.end45_crit_edge, %PagePrivate.exit107.if.end45_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3264, i32 noundef 24) #17
  %tobool47.not = icmp eq ptr %call7.i, null
  br i1 %tobool47.not, label %if.end45.cleanup70_crit_edge, label %if.end49

if.end45.cleanup70_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup70

if.end49:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %pos, ptr %call7.i, align 8
  %len51 = getelementptr inbounds %struct.orangefs_write_range, ptr %call7.i, i32 0, i32 1
  %48 = ptrtoint ptr %len51 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %len, ptr %len51, align 8
  %uid52 = getelementptr inbounds %struct.orangefs_write_range, ptr %call7.i, i32 0, i32 2
  %49 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i117 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i117 to ptr
  %task58 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task58 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task58, align 8
  %cred59 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 99
  %53 = ptrtoint ptr %cred59 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cred59, align 16
  %fsuid60 = getelementptr inbounds %struct.cred, ptr %54, i32 0, i32 10
  %55 = ptrtoint ptr %fsuid60 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fsuid60, align 4
  %57 = ptrtoint ptr %uid52 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %uid52, align 4
  %gid61 = getelementptr inbounds %struct.orangefs_write_range, ptr %call7.i, i32 0, i32 3
  %58 = load ptr, ptr %task58, align 8
  %cred68 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 99
  %59 = ptrtoint ptr %cred68 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cred68, align 16
  %fsgid69 = getelementptr inbounds %struct.cred, ptr %60, i32 0, i32 11
  %61 = ptrtoint ptr %fsgid69 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fsgid69, align 4
  %63 = ptrtoint ptr %gid61 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %gid61, align 8
  tail call fastcc void @attach_page_private(ptr noundef nonnull %call, ptr noundef nonnull %call7.i)
  br label %cleanup70

cleanup70:                                        ; preds = %if.end49, %if.end45.cleanup70_crit_edge, %cleanup, %orangefs_launder_page.exit116.cleanup70_crit_edge, %orangefs_launder_page.exit.cleanup70_crit_edge, %entry.cleanup70_crit_edge
  %retval.1 = phi i32 [ -12, %entry.cleanup70_crit_edge ], [ %call1.i, %orangefs_launder_page.exit.cleanup70_crit_edge ], [ -12, %if.end45.cleanup70_crit_edge ], [ 0, %cleanup ], [ 0, %if.end49 ], [ %call1.i113, %orangefs_launder_page.exit116.cleanup70_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_write_end(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef returned %copied, ptr noundef %page, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i32 %copied to i64
  %add = add i64 %conv, %pos
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %5)
  %cmp = icmp sgt i64 %add, %5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @i_size_write(ptr noundef %3, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !218

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i.i.i49 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i49)
  %tobool.not.i.i.i50 = icmp eq i32 %and.i.i.i.i49, 0
  br i1 %tobool.not.i.i.i50, label %folio_flags.exit.i.i, label %if.then.i.i.i51, !prof !218

if.then.i.i.i51:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.35) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !224
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %10, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %if.then3, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !261
  br label %if.end23

if.then3:                                         ; preds = %folio_flags.exit.i.i
  %17 = trunc i64 %pos to i32
  %conv4 = and i32 %17, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %len, i32 %copied)
  %cmp5 = icmp ugt i32 %len, %copied
  br i1 %cmp5, label %if.then7, label %if.then3.if.end9_crit_edge

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %add8 = add i32 %conv4, %copied
  %add.i = add i32 %conv4, %len
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef %add8, i32 noundef %add.i, i32 noundef 0, i32 noundef 0) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then3.if.end9_crit_edge
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %19 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %pos)
  %cmp11 = icmp eq i64 %shl.i, %pos
  br i1 %cmp11, label %land.lhs.true, label %if.end9.if.end23_crit_edge

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp13 = icmp eq i32 %len, 4096
  br i1 %cmp13, label %land.lhs.true.if.then20_crit_edge, label %lor.lhs.false

land.lhs.true.if.then20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

lor.lhs.false:                                    ; preds = %land.lhs.true
  %conv15 = zext i32 %len to i64
  %add16 = add i64 %conv15, %pos
  %20 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add16, i64 %21)
  %cmp18 = icmp eq i64 %add16, %21
  br i1 %cmp18, label %lor.lhs.false.if.then20_crit_edge, label %lor.lhs.false.if.end23_crit_edge

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %land.lhs.true.if.then20_crit_edge
  %add21 = add i32 %conv4, %copied
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef %add21, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !254
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !218

if.then.i.i.i:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.35) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !224
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #14
  br label %if.end23

if.end23:                                         ; preds = %SetPageUptodate.exit, %lor.lhs.false.if.end23_crit_edge, %if.end9.if.end23_crit_edge, %PageUptodate.exit
  %call24 = tail call zeroext i1 @set_page_dirty(ptr noundef %page) #14
  tail call void @unlock_page(ptr noundef %page) #14
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %6, align 4
  %and.i.i52 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52)
  %tobool.not.i.i53 = icmp eq i32 %and.i.i52, 0
  br i1 %tobool.not.i.i53, label %if.end.i.i56, label %if.then.i.i55, !prof !218

if.then.i.i55:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i54 = add i32 %25, -1
  br label %_compound_head.exit.i58

if.end.i.i56:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i58

_compound_head.exit.i58:                          ; preds = %if.end.i.i56, %if.then.i.i55
  %retval.0.i.i57 = phi i32 [ %sub.i.i54, %if.then.i.i55 ], [ %26, %if.end.i.i56 ]
  %27 = inttoptr i32 %retval.0.i.i57 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %28 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !221

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i58
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %27, ptr noundef nonnull @.str.40) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !241
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i58
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !243
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@orangefs_write_end, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !234

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %27, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %27) #14
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %31 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %f_inode.i, align 8
  tail call void @__mark_inode_dirty(ptr noundef %32, i32 noundef 1) #14
  ret i32 %copied
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @orangefs_invalidatepage(ptr noundef %page, i32 noundef %offset, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp = icmp eq i32 %offset, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %length)
  %cmp1 = icmp eq i32 %length, 4096
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !218

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %5, -1
  br label %detach_page_private.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %page to i32
  br label %detach_page_private.exit

detach_page_private.exit:                         ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %6, %if.end.i.i ]
  %7 = inttoptr i32 %retval.0.i.i to ptr
  %call1.i = tail call fastcc ptr @folio_detach_private(ptr noundef %7) #14
  tail call void @kfree(ptr noundef %call1.i) #14
  br label %cleanup

if.else:                                          ; preds = %entry
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %9 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %conv = zext i32 %offset to i64
  %add = add nuw nsw i64 %shl.i, %conv
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %11)
  %cmp3.not = icmp sgt i64 %add, %11
  %len27 = getelementptr inbounds %struct.orangefs_write_range, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %len27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len27, align 8
  %conv28 = zext i32 %13 to i64
  %add29 = add i64 %11, %conv28
  %conv33 = zext i32 %length to i64
  %add34 = add nuw nsw i64 %add, %conv33
  br i1 %cmp3.not, label %land.lhs.true25, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp8(i64 %add29, i64 %add34)
  %cmp14.not = icmp sgt i64 %add29, %add34
  br i1 %cmp14.not, label %land.lhs.true99, label %if.then16

if.then16:                                        ; preds = %land.lhs.true5
  %14 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i383 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i383)
  %tobool.not.i.i384 = icmp eq i32 %and.i.i383, 0
  br i1 %tobool.not.i.i384, label %if.end.i.i387, label %if.then.i.i386, !prof !218

if.then.i.i386:                                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i385 = add i32 %16, -1
  br label %detach_page_private.exit390

if.end.i.i387:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %page to i32
  br label %detach_page_private.exit390

detach_page_private.exit390:                      ; preds = %if.end.i.i387, %if.then.i.i386
  %retval.0.i.i388 = phi i32 [ %sub.i.i385, %if.then.i.i386 ], [ %17, %if.end.i.i387 ]
  %18 = inttoptr i32 %retval.0.i.i388 to ptr
  %call1.i389 = tail call fastcc ptr @folio_detach_private(ptr noundef %18) #14
  tail call void @kfree(ptr noundef %call1.i389) #14
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %14, align 4
  %and.i.i391 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i391)
  %tobool.not.i.i392 = icmp eq i32 %and.i.i391, 0
  br i1 %tobool.not.i.i392, label %if.end.i.i395, label %if.then.i.i394, !prof !218

if.then.i.i394:                                   ; preds = %detach_page_private.exit390
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i393 = add i32 %20, -1
  br label %_compound_head.exit.i

if.end.i.i395:                                    ; preds = %detach_page_private.exit390
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i395, %if.then.i.i394
  %retval.0.i.i396 = phi i32 [ %sub.i.i393, %if.then.i.i394 ], [ %21, %if.end.i.i395 ]
  %22 = inttoptr i32 %retval.0.i.i396 to ptr
  %23 = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_dirty.exit.i.i, label %if.then.i.i.i.i, !prof !218

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.35) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !224
  unreachable

folio_test_dirty.exit.i.i:                        ; preds = %_compound_head.exit.i
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %22, align 4
  %28 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i.i, label %folio_test_dirty.exit.i.i.cleanup_crit_edge, label %if.then.i1.i

folio_test_dirty.exit.i.i.cleanup_crit_edge:      ; preds = %folio_test_dirty.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i1.i:                                     ; preds = %folio_test_dirty.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__folio_cancel_dirty(ptr noundef %22) #14
  br label %cleanup

land.lhs.true25:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp8(i64 %add29, i64 %add34)
  %cmp35.not = icmp sle i64 %add29, %add34
  call void @__sanitizer_cov_trace_cmp8(i64 %add29, i64 %add)
  %cmp45 = icmp sgt i64 %add29, %add
  %or.cond438 = and i1 %cmp35.not, %cmp45
  br i1 %or.cond438, label %if.then47, label %land.lhs.true193

if.then47:                                        ; preds = %land.lhs.true25
  %sub = sub i64 %add29, %add
  %conv55 = trunc i64 %sub to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv55)
  %cmp57 = icmp ult i32 %13, %conv55
  br i1 %cmp57, label %do.end, label %if.then47.if.end297_crit_edge, !prof !221

if.then47.if.end297_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end297

do.end:                                           ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 441, i32 noundef 9, ptr noundef null) #14
  br label %if.end297

land.lhs.true99:                                  ; preds = %land.lhs.true5
  %29 = ptrtoint ptr %len27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len27, align 8
  %conv107 = zext i32 %30 to i64
  %add108 = add i64 %11, %conv107
  call void @__sanitizer_cov_trace_cmp8(i64 %add34, i64 %add108)
  %cmp109 = icmp slt i64 %add34, %add108
  call void @__sanitizer_cov_trace_cmp8(i64 %add34, i64 %11)
  %cmp118 = icmp sgt i64 %add34, %11
  %or.cond439 = and i1 %cmp118, %cmp109
  br i1 %or.cond439, label %if.then120, label %land.lhs.true99.if.else232_crit_edge

land.lhs.true99.if.else232_crit_edge:             ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else232

if.then120:                                       ; preds = %land.lhs.true99
  %sub128 = sub i64 %add34, %11
  %conv129 = trunc i64 %sub128 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv129)
  %cmp132 = icmp ult i32 %30, %conv129
  br i1 %cmp132, label %do.end149, label %if.then120.if.end155_crit_edge, !prof !221

if.then120.if.end155_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end155

do.end149:                                        ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 451, i32 noundef 9, ptr noundef null) #14
  br label %if.end155

if.end155:                                        ; preds = %do.end149, %if.then120.if.end155_crit_edge
  %conv163 = and i64 %sub128, 4294967295
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %2, align 8
  %add165 = add i64 %32, %conv163
  store i64 %add165, ptr %2, align 8
  br label %if.end297

land.lhs.true193:                                 ; preds = %land.lhs.true25
  %33 = ptrtoint ptr %len27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len27, align 8
  %conv201 = zext i32 %34 to i64
  %add202 = add i64 %11, %conv201
  call void @__sanitizer_cov_trace_cmp8(i64 %add34, i64 %add202)
  %cmp203 = icmp slt i64 %add34, %add202
  br i1 %cmp203, label %do.end218, label %land.lhs.true193.if.else232_crit_edge

land.lhs.true193.if.else232_crit_edge:            ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else232

do.end218:                                        ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 460, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.else232:                                       ; preds = %land.lhs.true193.if.else232_crit_edge, %land.lhs.true99.if.else232_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %add34, i64 %11)
  %cmp239 = icmp sle i64 %add34, %11
  %len242 = getelementptr inbounds %struct.orangefs_write_range, ptr %2, i32 0, i32 1
  %35 = ptrtoint ptr %len242 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len242, align 8
  %conv243 = zext i32 %36 to i64
  %add244 = add i64 %11, %conv243
  call void @__sanitizer_cov_trace_cmp8(i64 %add244, i64 %add)
  %cmp248 = icmp sle i64 %add244, %add
  %xor379 = xor i1 %cmp239, %cmp248
  br i1 %xor379, label %if.else232.cleanup_crit_edge, label %do.end264

if.else232.cleanup_crit_edge:                     ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end264:                                        ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 472, i32 noundef 9, ptr noundef null) #14
  %37 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index.i, align 4
  %conv.i435 = zext i32 %38 to i64
  %shl.i436 = shl nuw nsw i64 %conv.i435, 12
  %add284 = add nuw nsw i64 %shl.i436, %conv
  %call285 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i64 noundef %add284, i32 noundef %length) #18
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %2, align 8
  %41 = ptrtoint ptr %len242 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len242, align 8
  %call292 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i64 noundef %40, i32 noundef %42) #18
  br label %cleanup

if.end297:                                        ; preds = %if.end155, %do.end, %if.then47.if.end297_crit_edge
  %conv129.sink = phi i32 [ %conv129, %if.end155 ], [ %conv55, %do.end ], [ %conv55, %if.then47.if.end297_crit_edge ]
  %43 = ptrtoint ptr %len27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len27, align 8
  %sub167 = sub i32 %44, %conv129.sink
  store i32 %sub167, ptr %len27, align 8
  %uid168 = getelementptr inbounds %struct.orangefs_write_range, ptr %2, i32 0, i32 2
  %45 = tail call i32 @llvm.read_register.i32(metadata !207) #14
  %and.i421 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i421 to ptr
  %task174 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task174 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task174, align 8
  %cred175 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 99
  %49 = ptrtoint ptr %cred175 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cred175, align 16
  %fsuid176 = getelementptr inbounds %struct.cred, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %fsuid176 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fsuid176, align 4
  %53 = ptrtoint ptr %uid168 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %uid168, align 4
  %gid177 = getelementptr inbounds %struct.orangefs_write_range, ptr %2, i32 0, i32 3
  %54 = load ptr, ptr %task174, align 8
  %cred184 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 99
  %55 = ptrtoint ptr %cred184 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cred184, align 16
  %fsgid185 = getelementptr inbounds %struct.cred, ptr %56, i32 0, i32 11
  %57 = ptrtoint ptr %fsgid185 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fsgid185, align 4
  %59 = ptrtoint ptr %gid177 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %gid177, align 8
  tail call void @wait_on_page_writeback(ptr noundef %page) #14
  %call.i = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef %page) #14
  br i1 %call.i, label %if.then.i, label %if.end297.cleanup_crit_edge

if.end297.cleanup_crit_edge:                      ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i437 = tail call fastcc i32 @orangefs_writepage_locked(ptr noundef %page) #14
  tail call void @end_page_writeback(ptr noundef %page) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end297.cleanup_crit_edge, %do.end264, %if.else232.cleanup_crit_edge, %do.end218, %if.then.i1.i, %folio_test_dirty.exit.i.i.cleanup_crit_edge, %detach_page_private.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_releasepage(ptr noundef %page, i32 noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !221

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.38) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !228
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = lshr i32 %3, 13
  %.lobit = and i32 %4, 1
  %5 = xor i32 %.lobit, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @orangefs_freepage(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !218

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %2, -1
  br label %detach_page_private.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %page to i32
  br label %detach_page_private.exit

detach_page_private.exit:                         ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %call1.i = tail call fastcc ptr @folio_detach_private(ptr noundef %4) #14
  tail call void @kfree(ptr noundef %call1.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_direct_IO(ptr nocapture noundef readonly %iocb, ptr noundef %iter) #0 align 64 {
entry:
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #14
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %2 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ki_pos, align 8
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %pos, align 8
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %5 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data_source.i, align 2, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  %cond = select i1 %cmp, i32 2, i32 1
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_mapping, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 -376
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %13 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %13, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef %add.ptr.i, i32 noundef %12) #18
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  br i1 %cmp, label %do.body11, label %do.end7.if.end23_crit_edge

do.end7.if.end23_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

do.body11:                                        ; preds = %do.end7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %14 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and12 = and i64 %14, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %do.body11.if.end23_crit_edge, label %do.end17

do.body11.if.end23_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %pos, align 8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73, ptr noundef %add.ptr.i, i64 noundef %16, i32 noundef %12) #18
  br label %if.end23

if.end23:                                         ; preds = %do.end17, %do.body11.if.end23_crit_edge, %do.end7.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp24 = icmp eq i32 %12, 0
  br i1 %cmp24, label %if.end23.do.body117_crit_edge, label %while.cond.preheader

if.end23.do.body117_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body117

while.cond.preheader:                             ; preds = %if.end23
  %17 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool29.not190 = icmp eq i32 %18, 0
  br i1 %tobool29.not190, label %while.cond.preheader.do.body117_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.do.body117_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body117

while.cond:                                       ; preds = %do.end93
  %19 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count.i, align 8
  %tobool29.not = icmp eq i32 %20, 0
  br i1 %tobool29.not, label %while.cond.out_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %21 = phi i32 [ %20, %while.cond.while.body_crit_edge ], [ %18, %while.cond.preheader.while.body_crit_edge ]
  %total_count.0191 = phi i32 [ %add80, %while.cond.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %call31 = call i32 @orangefs_bufmap_size_query() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %call31)
  %cmp32 = icmp ugt i32 %21, %call31
  br i1 %cmp32, label %if.then34, label %while.body.do.body37_crit_edge

while.body.do.body37_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body37

if.then34:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %call35 = call i32 @orangefs_bufmap_size_query() #14
  br label %do.body37

do.body37:                                        ; preds = %if.then34, %while.body.do.body37_crit_edge
  %each_count.0 = phi i32 [ %call35, %if.then34 ], [ %21, %while.body.do.body37_crit_edge ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %22 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and38 = and i64 %22, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and38)
  %tobool39.not = icmp eq i64 %and38, 0
  br i1 %tobool39.not, label %do.body37.do.body49_crit_edge, label %do.end43

do.body37.do.body49_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body49

do.end43:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #16
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.73, ptr noundef %add.ptr.i, i32 noundef %each_count.0) #18
  br label %do.body49

do.body49:                                        ; preds = %do.end43, %do.body37.do.body49_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %23 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and50 = and i64 %23, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and50)
  %tobool51.not = icmp eq i64 %and50, 0
  br i1 %tobool51.not, label %do.body49.do.end61_crit_edge, label %do.end55

do.body49.do.end61_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end61

do.end55:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %pos, align 8
  %conv57 = trunc i64 %25 to i32
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.73, ptr noundef %add.ptr.i, i32 noundef %conv57) #18
  br label %do.end61

do.end61:                                         ; preds = %do.end55, %do.body49.do.end61_crit_edge
  %call62 = call i32 @wait_for_direct_io(i32 noundef %cond, ptr noundef %10, ptr noundef nonnull %pos, ptr noundef %iter, i32 noundef %each_count.0, i64 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %1) #14
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %26 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and64 = and i64 %26, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and64)
  %tobool65.not = icmp eq i64 %and64, 0
  br i1 %tobool65.not, label %do.end61.do.end74_crit_edge, label %do.end69

do.end61.do.end74_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end74

do.end69:                                         ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #16
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.73, ptr noundef %add.ptr.i, i32 noundef %call62) #18
  br label %do.end74

do.end74:                                         ; preds = %do.end69, %do.end61.do.end74_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp75 = icmp slt i32 %call62, 0
  br i1 %cmp75, label %do.end74.out_crit_edge, label %if.end78

do.end74.out_crit_edge:                           ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end78:                                         ; preds = %do.end74
  %conv79189 = zext i32 %call62 to i64
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %pos, align 8
  %add = add i64 %28, %conv79189
  store i64 %add, ptr %pos, align 8
  %add80 = add i32 %call62, %total_count.0191
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %29 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and82 = and i64 %29, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and82)
  %tobool83.not = icmp eq i64 %and82, 0
  br i1 %tobool83.not, label %if.end78.do.end93_crit_edge, label %do.end87

if.end78.do.end93_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end93

do.end87:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  %conv89 = trunc i64 %add to i32
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.73, ptr noundef %add.ptr.i, i32 noundef %conv89) #18
  br label %do.end93

do.end93:                                         ; preds = %do.end87, %if.end78.do.end93_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call62, i32 %each_count.0)
  %cmp94 = icmp ult i32 %call62, %each_count.0
  br i1 %cmp94, label %do.end93.out_crit_edge, label %while.cond

do.end93.out_crit_edge:                           ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out:                                              ; preds = %do.end93.out_crit_edge, %do.end74.out_crit_edge, %while.cond.out_crit_edge
  %total_count.2 = phi i32 [ %add80, %while.cond.out_crit_edge ], [ %total_count.0191, %do.end74.out_crit_edge ], [ %add80, %do.end93.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_count.2)
  %cmp99 = icmp sgt i32 %total_count.2, 0
  br i1 %cmp99, label %out.if.then105_crit_edge, label %30

out.if.then105_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then105

30:                                               ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp103 = icmp sgt i32 %call62, 0
  br i1 %cmp103, label %.if.then105_crit_edge, label %.do.body117_crit_edge

.do.body117_crit_edge:                            ; preds = %30
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body117

.if.then105_crit_edge:                            ; preds = %30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then105

if.then105:                                       ; preds = %.if.then105_crit_edge, %out.if.then105_crit_edge
  %31 = phi i32 [ %call62, %.if.then105_crit_edge ], [ %total_count.2, %out.if.then105_crit_edge ]
  br i1 %cmp, label %if.else, label %if.then108

if.then108:                                       ; preds = %if.then105
  %f_flags.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %33, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then108.do.body117_crit_edge

if.then108.do.body117_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body117

if.then.i:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #16
  %f_path.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1
  call void @touch_atime(ptr noundef %f_path.i) #14
  br label %do.body117

if.else:                                          ; preds = %if.then105
  %call109 = call i32 @file_update_time(ptr noundef %1) #14
  %34 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %pos, align 8
  %call110 = call fastcc i64 @i_size_read(ptr noundef %10)
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %call110)
  %cmp111 = icmp sgt i64 %35, %call110
  br i1 %cmp111, label %if.then113, label %if.else.do.body117_crit_edge

if.else.do.body117_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body117

if.then113:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %pos, align 8
  call fastcc void @i_size_write(ptr noundef %10, i64 noundef %37)
  br label %do.body117

do.body117:                                       ; preds = %if.then113, %if.else.do.body117_crit_edge, %if.then.i, %if.then108.do.body117_crit_edge, %.do.body117_crit_edge, %while.cond.preheader.do.body117_crit_edge, %if.end23.do.body117_crit_edge
  %38 = phi i32 [ %call62, %.do.body117_crit_edge ], [ %31, %if.else.do.body117_crit_edge ], [ %31, %if.then113 ], [ %31, %if.then108.do.body117_crit_edge ], [ %31, %if.then.i ], [ 0, %if.end23.do.body117_crit_edge ], [ -22, %while.cond.preheader.do.body117_crit_edge ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %39 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and118 = and i64 %39, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and118)
  %tobool119.not = icmp eq i64 %and118, 0
  br i1 %tobool119.not, label %do.body117.cleanup129_crit_edge, label %do.end123

do.body117.cleanup129_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup129

do.end123:                                        ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #16
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.73, ptr noundef %add.ptr.i, i32 noundef %38) #18
  br label %cleanup129

cleanup129:                                       ; preds = %do.end123, %do.body117.cleanup129_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #14
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_zero(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_bufmap_size_query() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_cache_pages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_writepages_callback(ptr noundef %page, ptr nocapture noundef readnone %wbc, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !221

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.38) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !228
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unlock_page(ptr noundef %page) #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/orangefs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 168, 0\0A.popsection", ""() #14, !srcloc !263
  unreachable

if.end:                                           ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private, align 4
  %7 = inttoptr i32 %6 to ptr
  %npages = getelementptr inbounds %struct.orangefs_writepages, ptr %data, i32 0, i32 5
  %8 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %7, align 8
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %data, align 8
  %len = getelementptr inbounds %struct.orangefs_write_range, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 8
  %len9 = getelementptr inbounds %struct.orangefs_writepages, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %len9, align 8
  %uid = getelementptr inbounds %struct.orangefs_writepages, ptr %data, i32 0, i32 2
  %uid10 = getelementptr inbounds %struct.orangefs_write_range, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %uid10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uid10, align 4
  %18 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %uid, align 4
  %gid = getelementptr inbounds %struct.orangefs_writepages, ptr %data, i32 0, i32 3
  %gid11 = getelementptr inbounds %struct.orangefs_write_range, ptr %7, i32 0, i32 3
  %19 = ptrtoint ptr %gid11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gid11, align 8
  %21 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %gid, align 8
  %pages = getelementptr inbounds %struct.orangefs_writepages, ptr %data, i32 0, i32 6
  %22 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pages, align 4
  %24 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %npages, align 8
  br label %if.else

if.end13:                                         ; preds = %if.end
  %uid14 = getelementptr inbounds %struct.orangefs_writepages, ptr %data, i32 0, i32 2
  %uid15 = getelementptr inbounds %struct.orangefs_write_range, ptr %7, i32 0, i32 2
  %25 = ptrtoint ptr %uid14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack = load i32, ptr %uid14, align 4
  %26 = ptrtoint ptr %uid15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack103 = load i32, ptr %uid15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack103)
  %cmp.i = icmp eq i32 %.unpack, %.unpack103
  br i1 %cmp.i, label %lor.lhs.false, label %if.end13.if.end49.sink.split_crit_edge

if.end13.if.end49.sink.split_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49.sink.split

lor.lhs.false:                                    ; preds = %if.end13
  %gid18 = getelementptr inbounds %struct.orangefs_writepages, ptr %data, i32 0, i32 3
  %gid19 = getelementptr inbounds %struct.orangefs_write_range, ptr %7, i32 0, i32 3
  %27 = ptrtoint ptr %gid18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack104 = load i32, ptr %gid18, align 8
  %28 = ptrtoint ptr %gid19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack105 = load i32, ptr %gid19, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack104, i32 %.unpack105)
  %cmp.i107 = icmp eq i32 %.unpack104, %.unpack105
  br i1 %cmp.i107, label %if.end26, label %lor.lhs.false.if.end49.sink.split_crit_edge

lor.lhs.false.if.end49.sink.split_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49.sink.split

if.end26:                                         ; preds = %lor.lhs.false
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %data, align 8
  %len28 = getelementptr inbounds %struct.orangefs_writepages, ptr %data, i32 0, i32 1
  %31 = ptrtoint ptr %len28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len28, align 8
  %conv = zext i32 %32 to i64
  %add = add i64 %30, %conv
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %34)
  %cmp30 = icmp eq i64 %add, %34
  br i1 %cmp30, label %if.then32, label %if.then43

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %len33 = getelementptr inbounds %struct.orangefs_write_range, ptr %7, i32 0, i32 1
  %35 = ptrtoint ptr %len33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len33, align 8
  %add35 = add i32 %36, %32
  %37 = ptrtoint ptr %len28 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add35, ptr %len28, align 8
  %pages36 = getelementptr inbounds %struct.orangefs_writepages, ptr %data, i32 0, i32 6
  %38 = ptrtoint ptr %pages36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pages36, align 4
  %inc38 = add i32 %9, 1
  %40 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %inc38, ptr %npages, align 8
  %arrayidx39 = getelementptr ptr, ptr %39, i32 %9
  br label %if.else

if.then43:                                        ; preds = %if.end26
  %41 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr = load i32, ptr %npages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool45.not = icmp eq i32 %.pr, 0
  br i1 %tobool45.not, label %if.then43.if.end49_crit_edge, label %if.then43.if.end49.sink.split_crit_edge

if.then43.if.end49.sink.split_crit_edge:          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49.sink.split

if.then43.if.end49_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.end49.sink.split:                              ; preds = %if.then43.if.end49.sink.split_crit_edge, %lor.lhs.false.if.end49.sink.split_crit_edge, %if.end13.if.end49.sink.split_crit_edge
  %42 = tail call fastcc i32 @orangefs_writepages_work(ptr noundef %data)
  %43 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %npages, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %if.then43.if.end49_crit_edge
  %call50 = tail call fastcc i32 @orangefs_writepage_locked(ptr noundef %page)
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mapping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool.not.i = icmp eq i32 %call50, 0
  br i1 %tobool.not.i, label %if.end49.mapping_set_error.exit_crit_edge, label %if.end.i, !prof !218

if.end49.mapping_set_error.exit_crit_edge:        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %mapping_set_error.exit

if.end.i:                                         ; preds = %if.end49
  tail call void @__filemap_set_wb_err(ptr noundef %45, i32 noundef %call50) #14
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %tobool4.not.i = icmp eq ptr %47, null
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 50
  %call.i = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %call50) #14
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call50)
  %cmp.i108 = icmp eq i32 %call50, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %45, i32 0, i32 10
  %..i = zext i1 %cmp.i108 to i32
  tail call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #14
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.end7.i, %if.end49.mapping_set_error.exit_crit_edge
  tail call void @unlock_page(ptr noundef %page) #14
  tail call void @end_page_writeback(ptr noundef %page) #14
  br label %if.end58

if.else:                                          ; preds = %if.then32, %if.then8
  %.sink = phi ptr [ %23, %if.then8 ], [ %arrayidx39, %if.then32 ]
  %50 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %page, ptr %.sink, align 4
  %51 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %npages, align 8
  %maxpages = getelementptr inbounds %struct.orangefs_writepages, ptr %data, i32 0, i32 4
  %53 = ptrtoint ptr %maxpages to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %maxpages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp52 = icmp eq i32 %52, %54
  br i1 %cmp52, label %if.then54, label %if.else.if.end58_crit_edge

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %55 = tail call fastcc i32 @orangefs_writepages_work(ptr noundef %data)
  %56 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %npages, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.else.if.end58_crit_edge, %mapping_set_error.exit
  %ret.1 = phi i32 [ %call50, %mapping_set_error.exit ], [ 0, %if.then54 ], [ 0, %if.else.if.end58_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @orangefs_writepages_work(ptr nocapture noundef %ow) unnamed_addr #0 align 64 {
entry:
  %wr = alloca %struct.orangefs_write_range, align 8
  %iter = alloca %struct.iov_iter, align 8
  %off = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pages = getelementptr inbounds %struct.orangefs_writepages, ptr %ow, i32 0, i32 6
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mapping = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapping, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wr) #14
  %8 = call ptr @memset(ptr %wr, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #14
  %9 = call ptr @memset(ptr %iter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %off) #14
  %call = tail call fastcc i64 @i_size_read(ptr noundef %7)
  %npages = getelementptr inbounds %struct.orangefs_writepages, ptr %ow, i32 0, i32 5
  %10 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp68 = icmp sgt i32 %11, 0
  br i1 %cmp68, label %for.inc.peel, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.peel:                                     ; preds = %entry
  %bv = getelementptr inbounds %struct.orangefs_writepages, ptr %ow, i32 0, i32 7
  %len12 = getelementptr inbounds %struct.orangefs_writepages, ptr %ow, i32 0, i32 1
  %12 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pages, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call4.peel = tail call zeroext i1 @set_page_writeback(ptr noundef %15) #14
  %16 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %bv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bv, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %21, align 4
  %23 = load ptr, ptr %pages, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %index.i.peel = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %index.i.peel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index.i.peel, align 4
  %conv.i.peel = zext i32 %27 to i64
  %shl.i.peel = shl nuw nsw i64 %conv.i.peel, 12
  %add.peel = add nuw nsw i64 %shl.i.peel, 4096
  %28 = ptrtoint ptr %ow to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ow, align 8
  %30 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len12, align 8
  %conv13.peel = zext i32 %31 to i64
  %add14.peel = add i64 %29, %conv13.peel
  %32 = tail call i64 @llvm.smin.i64(i64 %add.peel, i64 %add14.peel)
  %33 = tail call i64 @llvm.smax.i64(i64 %29, i64 %shl.i.peel)
  %sub.peel = sub i64 %32, %33
  %conv28.peel = trunc i64 %sub.peel to i32
  %34 = ptrtoint ptr %bv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bv, align 8
  %bv_len.peel = getelementptr %struct.bio_vec, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %bv_len.peel to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv28.peel, ptr %bv_len.peel, align 4
  %37 = ptrtoint ptr %ow to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ow, align 8
  %39 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pages, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %index.i16.peel = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 1, i32 0, i32 2
  %43 = ptrtoint ptr %index.i16.peel to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index.i16.peel, align 4
  %conv.i17.peel = zext i32 %44 to i64
  %shl.i18.neg.peel = mul nuw i64 %conv.i17.peel, 4294963200
  %sub37.peel = add i64 %shl.i18.neg.peel, %38
  %conv38.peel = trunc i64 %sub37.peel to i32
  %45 = load ptr, ptr %bv, align 8
  %bv_offset.peel = getelementptr inbounds %struct.bio_vec, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %bv_offset.peel to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv38.peel, ptr %bv_offset.peel, align 4
  %47 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %npages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.peel = icmp sgt i32 %48, 1
  br i1 %cmp.peel, label %for.inc.peel.for.inc_crit_edge, label %for.inc.peel.for.end_crit_edge

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.peel.for.inc_crit_edge:                   ; preds = %for.inc.peel
  br label %for.inc

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %for.inc.peel.for.inc_crit_edge
  %i.069 = phi i32 [ %inc, %for.inc.for.inc_crit_edge ], [ 1, %for.inc.peel.for.inc_crit_edge ]
  %49 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pages, align 4
  %arrayidx3 = getelementptr ptr, ptr %50, i32 %i.069
  %51 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx3, align 4
  %call4 = tail call zeroext i1 @set_page_writeback(ptr noundef %52) #14
  %53 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pages, align 4
  %arrayidx6 = getelementptr ptr, ptr %54, i32 %i.069
  %55 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx6, align 4
  %57 = ptrtoint ptr %bv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bv, align 8
  %arrayidx7 = getelementptr %struct.bio_vec, ptr %58, i32 %i.069
  %59 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %arrayidx7, align 4
  %60 = load ptr, ptr %pages, align 4
  %arrayidx9 = getelementptr ptr, ptr %60, i32 %i.069
  %61 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx9, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %62, i32 0, i32 1, i32 0, i32 2
  %63 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %64 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %add = add nuw nsw i64 %shl.i, 4096
  %65 = ptrtoint ptr %ow to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %ow, align 8
  %67 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len12, align 8
  %conv13 = zext i32 %68 to i64
  %add14 = add i64 %66, %conv13
  %69 = tail call i64 @llvm.smin.i64(i64 %add, i64 %add14)
  %70 = tail call i64 @llvm.smax.i64(i64 %66, i64 %shl.i)
  %sub = sub i64 %69, %70
  %conv28 = trunc i64 %sub to i32
  %71 = ptrtoint ptr %bv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bv, align 8
  %bv_len = getelementptr %struct.bio_vec, ptr %72, i32 %i.069, i32 1
  %73 = ptrtoint ptr %bv_len to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv28, ptr %bv_len, align 4
  %74 = load ptr, ptr %bv, align 8
  %bv_offset43 = getelementptr %struct.bio_vec, ptr %74, i32 %i.069, i32 2
  %75 = ptrtoint ptr %bv_offset43 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %bv_offset43, align 4
  %inc = add nuw nsw i32 %i.069, 1
  %76 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %npages, align 8
  %cmp = icmp slt i32 %inc, %77
  br i1 %cmp, label %for.inc.for.inc_crit_edge, label %for.inc.for.end_crit_edge, !llvm.loop !264

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa67 = phi i32 [ %11, %entry.for.end_crit_edge ], [ %48, %for.inc.peel.for.end_crit_edge ], [ %77, %for.inc.for.end_crit_edge ]
  %bv44 = getelementptr inbounds %struct.orangefs_writepages, ptr %ow, i32 0, i32 7
  %78 = ptrtoint ptr %bv44 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bv44, align 8
  %len46 = getelementptr inbounds %struct.orangefs_writepages, ptr %ow, i32 0, i32 1
  %80 = ptrtoint ptr %len46 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len46, align 8
  call void @iov_iter_bvec(ptr noundef nonnull %iter, i32 noundef 1, ptr noundef %79, i32 noundef %.lcssa67, i32 noundef %81) #14
  %82 = ptrtoint ptr %ow to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %ow, align 8
  %conv48 = and i64 %call, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %83, i64 %conv48)
  %cmp49.not = icmp slt i64 %83, %conv48
  br i1 %cmp49.not, label %for.end.if.end64_crit_edge, label %do.end, !prof !218

for.end.if.end64_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 117, i32 noundef 9, ptr noundef null) #14
  br label %if.end64

if.end64:                                         ; preds = %do.end, %for.end.if.end64_crit_edge
  %84 = ptrtoint ptr %ow to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %ow, align 8
  %86 = ptrtoint ptr %len46 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len46, align 8
  %conv74 = zext i32 %87 to i64
  %add75 = add i64 %85, %conv74
  call void @__sanitizer_cov_trace_cmp8(i64 %add75, i64 %conv48)
  %cmp77 = icmp sgt i64 %add75, %conv48
  br i1 %cmp77, label %if.then79, label %if.end64.if.end85_crit_edge

if.end64.if.end85_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.then79:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  %sub82 = sub i64 %call, %85
  %conv83 = trunc i64 %sub82 to i32
  %88 = ptrtoint ptr %len46 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv83, ptr %len46, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then79, %if.end64.if.end85_crit_edge
  %89 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %85, ptr %off, align 8
  %uid = getelementptr inbounds %struct.orangefs_write_range, ptr %wr, i32 0, i32 2
  %uid87 = getelementptr inbounds %struct.orangefs_writepages, ptr %ow, i32 0, i32 2
  %90 = ptrtoint ptr %uid87 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %uid87, align 4
  %92 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %uid, align 4
  %gid = getelementptr inbounds %struct.orangefs_write_range, ptr %wr, i32 0, i32 3
  %gid88 = getelementptr inbounds %struct.orangefs_writepages, ptr %ow, i32 0, i32 3
  %93 = ptrtoint ptr %gid88 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %gid88, align 8
  %95 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %gid, align 8
  %96 = ptrtoint ptr %len46 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %len46, align 8
  %call90 = call i32 @wait_for_direct_io(i32 noundef 2, ptr noundef %7, ptr noundef nonnull %off, ptr noundef nonnull %iter, i32 noundef %97, i64 noundef 0, ptr noundef nonnull %wr, ptr noundef null, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  %98 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %npages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp9674 = icmp sgt i32 %99, 0
  br i1 %cmp91, label %for.cond94.preheader, label %for.cond124.preheader

for.cond124.preheader:                            ; preds = %if.end85
  br i1 %cmp9674, label %for.cond124.preheader.for.body128_crit_edge, label %for.cond124.preheader.if.end149_crit_edge

for.cond124.preheader.if.end149_crit_edge:        ; preds = %for.cond124.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end149

for.cond124.preheader.for.body128_crit_edge:      ; preds = %for.cond124.preheader
  br label %for.body128

for.cond94.preheader:                             ; preds = %if.end85
  br i1 %cmp9674, label %for.body98.lr.ph, label %for.cond94.preheader.if.end149_crit_edge

for.cond94.preheader.if.end149_crit_edge:         ; preds = %for.cond94.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end149

for.body98.lr.ph:                                 ; preds = %for.cond94.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call90)
  %cmp.i = icmp eq i32 %call90, -28
  %..i = zext i1 %cmp.i to i32
  br label %for.body98

for.body98:                                       ; preds = %if.end115.for.body98_crit_edge, %for.body98.lr.ph
  %i.175 = phi i32 [ 0, %for.body98.lr.ph ], [ %inc121, %if.end115.for.body98_crit_edge ]
  %100 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pages, align 4
  %arrayidx100 = getelementptr ptr, ptr %101, i32 %i.175
  %102 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx100, align 4
  %104 = getelementptr inbounds %struct.page, ptr %103, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %104, align 4
  %and.i.i = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !218

if.then.i:                                        ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %103, ptr noundef nonnull @.str.39) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #14, !srcloc !235
  unreachable

do.body7.i:                                       ; preds = %for.body98
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %104, align 4
  %and.i31.i = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !218

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %108, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  %109 = ptrtoint ptr %103 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %109, %if.end.i.i ]
  %110 = inttoptr i32 %retval.0.i.i to ptr
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %112)
  %cmp.i.not.i = icmp eq i32 %112, -1
  %113 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %104, align 4
  %and.i32.i = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !221

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !218

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i34.i = add i32 %114, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  %115 = ptrtoint ptr %103 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %115, %if.end.i36.i ]
  %116 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %116, ptr noundef nonnull @.str.37) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #14, !srcloc !236
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !218

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i41.i = add i32 %114, -1
  br label %if.end.i

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %117 = ptrtoint ptr %103 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %117, %if.end.i43.i ]
  %118 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %118) #14
  %119 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pages, align 4
  %arrayidx102 = getelementptr ptr, ptr %120, i32 %i.175
  %121 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx102, align 4
  %mapping103 = getelementptr inbounds %struct.page, ptr %122, i32 0, i32 1, i32 0, i32 1
  %123 = ptrtoint ptr %mapping103 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mapping103, align 4
  call void @__filemap_set_wb_err(ptr noundef %124, i32 noundef %call90) #14
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %tobool4.not.i = icmp eq ptr %126, null
  br i1 %tobool4.not.i, label %if.end.i.mapping_set_error.exit_crit_edge, label %if.then5.i

if.end.i.mapping_set_error.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mapping_set_error.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %126, i32 0, i32 8
  %127 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %128, i32 0, i32 50
  %call.i = call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %call90) #14
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.then5.i, %if.end.i.mapping_set_error.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.address_space, ptr %124, i32 0, i32 10
  call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #14
  %129 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pages, align 4
  %arrayidx105 = getelementptr ptr, ptr %130, i32 %i.175
  %131 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx105, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %134)
  %cmp.i.not.i1 = icmp eq i32 %134, -1
  br i1 %cmp.i.not.i1, label %if.then.i2, label %PagePrivate.exit, !prof !221

if.then.i2:                                       ; preds = %mapping_set_error.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %132, ptr noundef nonnull @.str.38) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !228
  unreachable

PagePrivate.exit:                                 ; preds = %mapping_set_error.exit
  %135 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %132, align 4
  %137 = and i32 %136, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool107.not = icmp eq i32 %137, 0
  br i1 %tobool107.not, label %PagePrivate.exit.if.end115_crit_edge, label %if.then108

PagePrivate.exit.if.end115_crit_edge:             ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.then108:                                       ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %132, i32 0, i32 1, i32 0, i32 3
  %138 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %private, align 4
  %140 = inttoptr i32 %139 to ptr
  %141 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %142)
  %cmp.i.not.i3 = icmp eq i32 %142, -1
  br i1 %cmp.i.not.i3, label %if.then.i4, label %ClearPagePrivate.exit, !prof !221

if.then.i4:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %132, ptr noundef nonnull @.str.38) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !266
  unreachable

ClearPagePrivate.exit:                            ; preds = %if.then108
  call void @_clear_bit(i32 noundef 13, ptr noundef %132) #14
  %143 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pages, align 4
  %arrayidx114 = getelementptr ptr, ptr %144, i32 %i.175
  %145 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx114, align 4
  %147 = getelementptr inbounds %struct.page, ptr %146, i32 0, i32 1
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %147, align 4
  %and.i.i20 = and i32 %149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i20)
  %tobool.not.i.i21 = icmp eq i32 %and.i.i20, 0
  br i1 %tobool.not.i.i21, label %if.end.i.i24, label %if.then.i.i23, !prof !218

if.then.i.i23:                                    ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i22 = add i32 %149, -1
  br label %_compound_head.exit.i26

if.end.i.i24:                                     ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #16
  %150 = ptrtoint ptr %146 to i32
  br label %_compound_head.exit.i26

_compound_head.exit.i26:                          ; preds = %if.end.i.i24, %if.then.i.i23
  %retval.0.i.i25 = phi i32 [ %sub.i.i22, %if.then.i.i23 ], [ %150, %if.end.i.i24 ]
  %151 = inttoptr i32 %retval.0.i.i25 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %151, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %152 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp.i.i.i.i = icmp eq i32 %153, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !221

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i26
  call void @__sanitizer_cov_trace_pc() #16
  %154 = inttoptr i32 %retval.0.i.i25 to ptr
  call void @dump_page(ptr noundef %154, ptr noundef nonnull @.str.40) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !241
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i26
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %155 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !243
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %155, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@orangefs_writepages_work, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !234

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %151, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__put_page(ptr noundef %151) #14
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  call void @kfree(ptr noundef %140) #14
  br label %if.end115

if.end115:                                        ; preds = %put_page.exit, %PagePrivate.exit.if.end115_crit_edge
  %156 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pages, align 4
  %arrayidx117 = getelementptr ptr, ptr %157, i32 %i.175
  %158 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx117, align 4
  call void @end_page_writeback(ptr noundef %159) #14
  %160 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pages, align 4
  %arrayidx119 = getelementptr ptr, ptr %161, i32 %i.175
  %162 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx119, align 4
  call void @unlock_page(ptr noundef %163) #14
  %inc121 = add nuw nsw i32 %i.175, 1
  %164 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %npages, align 8
  %cmp96 = icmp slt i32 %inc121, %165
  br i1 %cmp96, label %if.end115.for.body98_crit_edge, label %if.end115.if.end149_crit_edge

if.end115.if.end149_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end149

if.end115.for.body98_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body98

for.body128:                                      ; preds = %if.end141.for.body128_crit_edge, %for.cond124.preheader.for.body128_crit_edge
  %i.272 = phi i32 [ %inc147, %if.end141.for.body128_crit_edge ], [ 0, %for.cond124.preheader.for.body128_crit_edge ]
  %166 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pages, align 4
  %arrayidx130 = getelementptr ptr, ptr %167, i32 %i.272
  %168 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx130, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %171)
  %cmp.i.not.i5 = icmp eq i32 %171, -1
  br i1 %cmp.i.not.i5, label %if.then.i6, label %PagePrivate.exit9, !prof !221

if.then.i6:                                       ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %169, ptr noundef nonnull @.str.38) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !228
  unreachable

PagePrivate.exit9:                                ; preds = %for.body128
  %172 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile i32, ptr %169, align 4
  %174 = and i32 %173, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool132.not = icmp eq i32 %174, 0
  br i1 %tobool132.not, label %PagePrivate.exit9.if.end141_crit_edge, label %if.then133

PagePrivate.exit9.if.end141_crit_edge:            ; preds = %PagePrivate.exit9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end141

if.then133:                                       ; preds = %PagePrivate.exit9
  %private136 = getelementptr inbounds %struct.page, ptr %169, i32 0, i32 1, i32 0, i32 3
  %175 = ptrtoint ptr %private136 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %private136, align 4
  %177 = inttoptr i32 %176 to ptr
  %178 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %179)
  %cmp.i.not.i10 = icmp eq i32 %179, -1
  br i1 %cmp.i.not.i10, label %if.then.i11, label %ClearPagePrivate.exit12, !prof !221

if.then.i11:                                      ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %169, ptr noundef nonnull @.str.38) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !266
  unreachable

ClearPagePrivate.exit12:                          ; preds = %if.then133
  call void @_clear_bit(i32 noundef 13, ptr noundef %169) #14
  %180 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pages, align 4
  %arrayidx140 = getelementptr ptr, ptr %181, i32 %i.272
  %182 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx140, align 4
  %184 = getelementptr inbounds %struct.page, ptr %183, i32 0, i32 1
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %184, align 4
  %and.i.i27 = and i32 %186, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i27)
  %tobool.not.i.i28 = icmp eq i32 %and.i.i27, 0
  br i1 %tobool.not.i.i28, label %if.end.i.i31, label %if.then.i.i30, !prof !218

if.then.i.i30:                                    ; preds = %ClearPagePrivate.exit12
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i29 = add i32 %186, -1
  br label %_compound_head.exit.i36

if.end.i.i31:                                     ; preds = %ClearPagePrivate.exit12
  call void @__sanitizer_cov_trace_pc() #16
  %187 = ptrtoint ptr %183 to i32
  br label %_compound_head.exit.i36

_compound_head.exit.i36:                          ; preds = %if.end.i.i31, %if.then.i.i30
  %retval.0.i.i32 = phi i32 [ %sub.i.i29, %if.then.i.i30 ], [ %187, %if.end.i.i31 ]
  %188 = inttoptr i32 %retval.0.i.i32 to ptr
  %_refcount.i.i.i.i.i33 = getelementptr inbounds %struct.page, ptr %188, i32 0, i32 3
  %call.i.i.i.i.i.i.i34 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i33, i32 noundef 4) #14
  %189 = ptrtoint ptr %_refcount.i.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %_refcount.i.i.i.i.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp.i.i.i.i35 = icmp eq i32 %190, 0
  br i1 %cmp.i.i.i.i35, label %if.then.i.i.i.i37, label %do.end5.i.i.i.i41, !prof !221

if.then.i.i.i.i37:                                ; preds = %_compound_head.exit.i36
  call void @__sanitizer_cov_trace_pc() #16
  %191 = inttoptr i32 %retval.0.i.i32 to ptr
  call void @dump_page(ptr noundef %191, ptr noundef nonnull @.str.40) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !241
  unreachable

do.end5.i.i.i.i41:                                ; preds = %_compound_head.exit.i36
  %call.i.i.i10.i.i.i.i38 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i33, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i33, i32 1, i32 3, i32 1) #14
  %192 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i33, ptr %_refcount.i.i.i.i.i33, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i33) #14, !srcloc !243
  %asmresult.i.i.i.i.i.i.i.i.i.i39 = extractvalue { i32, i32 } %192, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i39)
  %cmp.i.i.i.i.i.i.i40 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i39, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@orangefs_writepages_work, %if.then.i.i.i.i.i43)) #14
          to label %folio_put_testzero.exit.i.i44 [label %if.then.i.i.i.i.i43], !srcloc !234

if.then.i.i.i.i.i43:                              ; preds = %do.end5.i.i.i.i41
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i42 = zext i1 %cmp.i.i.i.i.i.i.i40 to i32
  call void @__page_ref_mod_and_test(ptr noundef %188, i32 noundef -1, i32 noundef %conv.i.i.i.i.i42) #14
  br label %folio_put_testzero.exit.i.i44

folio_put_testzero.exit.i.i44:                    ; preds = %if.then.i.i.i.i.i43, %do.end5.i.i.i.i41
  br i1 %cmp.i.i.i.i.i.i.i40, label %if.then.i4.i45, label %folio_put_testzero.exit.i.i44.put_page.exit46_crit_edge

folio_put_testzero.exit.i.i44.put_page.exit46_crit_edge: ; preds = %folio_put_testzero.exit.i.i44
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_page.exit46

if.then.i4.i45:                                   ; preds = %folio_put_testzero.exit.i.i44
  call void @__sanitizer_cov_trace_pc() #16
  call void @__put_page(ptr noundef %188) #14
  br label %put_page.exit46

put_page.exit46:                                  ; preds = %if.then.i4.i45, %folio_put_testzero.exit.i.i44.put_page.exit46_crit_edge
  call void @kfree(ptr noundef %177) #14
  br label %if.end141

if.end141:                                        ; preds = %put_page.exit46, %PagePrivate.exit9.if.end141_crit_edge
  %193 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pages, align 4
  %arrayidx143 = getelementptr ptr, ptr %194, i32 %i.272
  %195 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arrayidx143, align 4
  call void @end_page_writeback(ptr noundef %196) #14
  %197 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %pages, align 4
  %arrayidx145 = getelementptr ptr, ptr %198, i32 %i.272
  %199 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arrayidx145, align 4
  call void @unlock_page(ptr noundef %200) #14
  %inc147 = add nuw nsw i32 %i.272, 1
  %201 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %npages, align 8
  %cmp126 = icmp slt i32 %inc147, %202
  br i1 %cmp126, label %if.end141.for.body128_crit_edge, label %if.end141.if.end149_crit_edge

if.end141.if.end149_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end149

if.end141.for.body128_crit_edge:                  ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body128

if.end149:                                        ; preds = %if.end141.if.end149_crit_edge, %if.end115.if.end149_crit_edge, %for.cond94.preheader.if.end149_crit_edge, %for.cond124.preheader.if.end149_crit_edge
  %ret.0 = phi i32 [ %call90, %for.cond94.preheader.if.end149_crit_edge ], [ 0, %for.cond124.preheader.if.end149_crit_edge ], [ %call90, %if.end115.if.end149_crit_edge ], [ 0, %if.end141.if.end149_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %off) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wr) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @readahead_expand(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_xarray(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_endio(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_cancel_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @orangefs_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_listxattr(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_fileattr_set(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr nocapture noundef readonly %fa) #0 align 64 {
entry:
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #14
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, ptr noundef %dentry) #18
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %fsx_valid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 6
  %1 = ptrtoint ptr %fsx_valid.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %fsx_valid.i, align 4
  %2 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %bf.cast.not.i = icmp eq i8 %2, 0
  br i1 %bf.cast.not.i, label %do.end3.lor.lhs.false_crit_edge, label %land.rhs.i

do.end3.lor.lhs.false_crit_edge:                  ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.rhs.i:                                       ; preds = %do.end3
  %fsx_xflags.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %3 = ptrtoint ptr %fsx_xflags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fsx_xflags.i, align 4
  %and.i = and i32 %4, -33529
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.rhs.i.do.end10_crit_edge

land.rhs.i.do.end10_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %fsx_extsize.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 2
  %5 = ptrtoint ptr %fsx_extsize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fsx_extsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %lor.lhs.false1.i, label %lor.lhs.false.i.do.end10_crit_edge

lor.lhs.false.i.do.end10_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %fsx_projid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 4
  %7 = ptrtoint ptr %fsx_projid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fsx_projid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.not.i = icmp eq i32 %8, 0
  br i1 %cmp2.not.i, label %fileattr_has_fsx.exit, label %lor.lhs.false1.i.do.end10_crit_edge

lor.lhs.false1.i.do.end10_crit_edge:              ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

fileattr_has_fsx.exit:                            ; preds = %lor.lhs.false1.i
  %fsx_cowextsize.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 5
  %9 = ptrtoint ptr %fsx_cowextsize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fsx_cowextsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3.i.not = icmp eq i32 %10, 0
  br i1 %cmp3.i.not, label %fileattr_has_fsx.exit.lor.lhs.false_crit_edge, label %fileattr_has_fsx.exit.do.end10_crit_edge

fileattr_has_fsx.exit.do.end10_crit_edge:         ; preds = %fileattr_has_fsx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

fileattr_has_fsx.exit.lor.lhs.false_crit_edge:    ; preds = %fileattr_has_fsx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %fileattr_has_fsx.exit.lor.lhs.false_crit_edge, %do.end3.lor.lhs.false_crit_edge
  %11 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fa, align 4
  %conv = zext i32 %12 to i64
  %and5 = and i64 %conv, 4278189903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5)
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %if.end13, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

do.end10:                                         ; preds = %lor.lhs.false.do.end10_crit_edge, %fileattr_has_fsx.exit.do.end10_crit_edge, %lor.lhs.false1.i.do.end10_crit_edge, %lor.lhs.false.i.do.end10_crit_edge, %land.rhs.i.do.end10_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93) #18
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %val, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %14 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and17 = and i64 %14, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %tobool18.not, label %if.end13.do.end28_crit_edge, label %do.end22

if.end13.do.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.93, i32 noundef %12) #18
  br label %do.end28

do.end28:                                         ; preds = %do.end22, %if.end13.do.end28_crit_edge
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %call30 = call i32 @orangefs_inode_setxattr(ptr noundef %16, ptr noundef nonnull @.str.100, ptr noundef nonnull %val, i32 noundef 8, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %do.end10
  %retval.0 = phi i32 [ -95, %do.end10 ], [ %call30, %do.end28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_fileattr_get(ptr noundef %dentry, ptr noundef %fa) #0 align 64 {
entry:
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #14
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %val, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %1 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %1, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.101, ptr noundef %dentry) #18
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %call5 = call i32 @orangefs_inode_getxattr(ptr noundef %3, ptr noundef nonnull @.str.100, ptr noundef nonnull %val, i32 noundef 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp = icmp sgt i32 %call5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, -61
  %or.cond = or i1 %cmp, %cmp6.not
  br i1 %or.cond, label %do.body9, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body9:                                         ; preds = %do.end3
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %4 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and10 = and i64 %4, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10)
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %do.body9.do.end20_crit_edge, label %do.end15

do.body9.do.end20_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %val, align 8
  %conv = trunc i64 %6 to i32
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.101, i32 noundef %conv) #18
  br label %do.end20

do.end20:                                         ; preds = %do.end15, %do.body9.do.end20_crit_edge
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %val, align 8
  %conv21 = trunc i64 %8 to i32
  call void @fileattr_fill_flags(ptr noundef %fa, i32 noundef %conv21) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end20 ], [ %call5, %do.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_inode_setxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_inode_getxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fileattr_fill_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !115, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !202, !203, !204, !206}
!llvm.named.register.sp = !{!207}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../fs/orangefs/inode.c", i32 676, i32 23}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../fs/orangefs/inode.c", i32 677, i32 23}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../fs/orangefs/inode.c", i32 695, i32 12}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../fs/orangefs/inode.c", i32 696, i32 12}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/orangefs/inode.c", i32 794, i32 5}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__orangefs_setattr._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @__orangefs_setattr._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/orangefs/inode.c", i32 801, i32 4}
!16 = !{ptr @__orangefs_setattr._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @__orangefs_setattr._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../fs/orangefs/inode.c", i32 817, i32 43}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../fs/orangefs/inode.c", i32 818, i32 43}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../fs/orangefs/inode.c", i32 827, i32 33}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../fs/orangefs/inode.c", i32 828, i32 33}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/orangefs/inode.c", i32 850, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @orangefs_setattr._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @orangefs_setattr._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/orangefs/inode.c", i32 858, i32 2}
!33 = !{ptr @orangefs_setattr._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @orangefs_setattr._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/orangefs/inode.c", i32 872, i32 2}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @orangefs_getattr._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @orangefs_getattr._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/orangefs/inode.c", i32 898, i32 2}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @orangefs_permission._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @orangefs_permission._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/orangefs/inode.c", i32 911, i32 2}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @orangefs_update_time._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @orangefs_update_time._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/orangefs/inode.c", i32 1089, i32 2}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @orangefs_iget._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @orangefs_iget._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/orangefs/inode.c", i32 1109, i32 2}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @orangefs_new_inode._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @orangefs_new_inode._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/orangefs/inode.c", i32 1135, i32 2}
!62 = !{ptr @orangefs_new_inode._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @orangefs_new_inode._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!68 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/page-flags.h", i32 420, i32 1}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/mm.h", i32 717, i32 2}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/orangefs/orangefs-kernel.h", i32 287, i32 2}
!90 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @is_root_handle._entry, !89, !"_entry", i1 false, i1 false}
!93 = !{ptr @is_root_handle._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/orangefs/inode.c", i32 727, i32 2}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @orangefs_setattr_size._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @orangefs_setattr_size._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/orangefs/inode.c", i32 740, i32 3}
!101 = !{ptr @orangefs_setattr_size._entry.47, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @orangefs_setattr_size._entry_ptr.49, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/orangefs/inode.c", i32 767, i32 2}
!105 = !{ptr @orangefs_setattr_size._entry.50, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @orangefs_setattr_size._entry_ptr.52, !104, !"_entry_ptr", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!109 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/orangefs/inode.c", i32 1001, i32 3}
!112 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @orangefs_init_iops._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @orangefs_init_iops._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @orangefs_address_operations, !116, !"orangefs_address_operations", i1 false, i1 false}
!116 = !{!"../fs/orangefs/inode.c", i32 631, i32 46}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/orangefs/inode.c", i32 167, i32 3}
!119 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @orangefs_writepages_callback._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @orangefs_writepages_callback._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/orangefs/inode.c", i32 279, i32 3}
!124 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @orangefs_readahead._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @orangefs_readahead._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../include/linux/pagemap.h", i32 1096, i32 2}
!129 = distinct !{null, !130, !"__warned", i1 false, i1 false}
!130 = !{!"../fs/orangefs/inode.c", i32 359, i32 23}
!131 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!132 = !{!"../fs/orangefs/inode.c", i32 360, i32 23}
!133 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!134 = !{!"../fs/orangefs/inode.c", i32 376, i32 12}
!135 = distinct !{null, !136, !"__warned", i1 false, i1 false}
!136 = !{!"../fs/orangefs/inode.c", i32 377, i32 12}
!137 = distinct !{null, !138, !"__warned", i1 false, i1 false}
!138 = !{!"../fs/orangefs/inode.c", i32 443, i32 13}
!139 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!140 = !{!"../fs/orangefs/inode.c", i32 444, i32 13}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../fs/orangefs/inode.c", i32 454, i32 13}
!143 = distinct !{null, !144, !"__warned", i1 false, i1 false}
!144 = !{!"../fs/orangefs/inode.c", i32 455, i32 13}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/orangefs/inode.c", i32 473, i32 4}
!147 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @orangefs_invalidatepage._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @orangefs_invalidatepage._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/orangefs/inode.c", i32 475, i32 4}
!152 = !{ptr @orangefs_invalidatepage._entry.69, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @orangefs_invalidatepage._entry_ptr.71, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/orangefs/inode.c", i32 538, i32 2}
!156 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @orangefs_direct_IO._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @orangefs_direct_IO._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/orangefs/inode.c", i32 545, i32 3}
!161 = !{ptr @orangefs_direct_IO._entry.74, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @orangefs_direct_IO._entry_ptr.76, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/orangefs/inode.c", i32 568, i32 3}
!165 = !{ptr @orangefs_direct_IO._entry.77, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @orangefs_direct_IO._entry_ptr.79, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/orangefs/inode.c", i32 573, i32 3}
!169 = !{ptr @orangefs_direct_IO._entry.80, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @orangefs_direct_IO._entry_ptr.82, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.84, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/orangefs/inode.c", i32 581, i32 3}
!173 = !{ptr @orangefs_direct_IO._entry.83, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @orangefs_direct_IO._entry_ptr.85, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/orangefs/inode.c", i32 594, i32 3}
!177 = !{ptr @orangefs_direct_IO._entry.86, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @orangefs_direct_IO._entry_ptr.88, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.90, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/orangefs/inode.c", i32 621, i32 2}
!181 = !{ptr @orangefs_direct_IO._entry.89, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @orangefs_direct_IO._entry_ptr.91, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @orangefs_file_inode_operations, !184, !"orangefs_file_inode_operations", i1 false, i1 false}
!184 = !{!"../fs/orangefs/inode.c", i32 972, i32 38}
!185 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/orangefs/inode.c", i32 949, i32 2}
!187 = !{ptr @.str.93, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @orangefs_fileattr_set._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @orangefs_fileattr_set._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/orangefs/inode.c", i32 960, i32 3}
!192 = !{ptr @orangefs_fileattr_set._entry.94, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @orangefs_fileattr_set._entry_ptr.96, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.98, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/orangefs/inode.c", i32 965, i32 2}
!196 = !{ptr @orangefs_fileattr_set._entry.97, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @orangefs_fileattr_set._entry_ptr.99, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/orangefs/inode.c", i32 967, i32 12}
!200 = !{ptr @.str.101, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/orangefs/inode.c", i32 929, i32 2}
!202 = !{ptr @orangefs_fileattr_get._entry, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @orangefs_fileattr_get._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @orangefs_fileattr_get._entry.102, !205, !"_entry", i1 false, i1 false}
!205 = !{!"../fs/orangefs/inode.c", i32 938, i32 2}
!206 = !{ptr @orangefs_fileattr_get._entry_ptr.103, !205, !"_entry_ptr", i1 false, i1 false}
!207 = !{!"sp"}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{i32 7, !"frame-pointer", i32 2}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = !{i64 2152449833}
!218 = !{!"branch_weights", i32 2000, i32 1}
!219 = !{i64 880680, i64 880741}
!220 = !{i64 883412}
!221 = !{!"branch_weights", i32 1, i32 2000}
!222 = !{i64 883697}
!223 = !{i64 2152458683}
!224 = !{i64 2151026608, i64 2151027099, i64 2151026645, i64 2151026701, i64 2151026735, i64 2151026759, i64 2151026800, i64 2151026821, i64 2151026849, i64 2151026883}
!225 = !{i64 2148495280, i64 2148495312, i64 2148495341, i64 2148495375, i64 2148495406, i64 2148495429}
!226 = !{i64 2148584361}
!227 = !{i64 2151140578, i64 2151141069, i64 2151140615, i64 2151140671, i64 2151140705, i64 2151140729, i64 2151140770, i64 2151140791, i64 2151140819, i64 2151140853}
!228 = !{i64 2151489375, i64 2151489866, i64 2151489412, i64 2151489468, i64 2151489502, i64 2151489526, i64 2151489567, i64 2151489588, i64 2151489616, i64 2151489650}
!229 = !{i64 2152468637}
!230 = !{i64 2152478132}
!231 = !{i64 2152487609}
!232 = !{i64 2153260639, i64 2153261123, i64 2153260676, i64 2153260732, i64 2153260766, i64 2153260790, i64 2153260831, i64 2153260852, i64 2153260880, i64 2153260914}
!233 = !{i64 2148486422, i64 2148486448, i64 2148486477, i64 2148486511, i64 2148486542, i64 2148486565}
!234 = !{i64 2148299815, i64 2148299820, i64 2148299833, i64 2148299877, i64 2148299911, i64 2148299932}
!235 = !{i64 2151092259, i64 2151092432, i64 2151092447, i64 2151092499, i64 2151092558, i64 2151092582, i64 2151092623, i64 2151092644, i64 2151092672, i64 2151092704}
!236 = !{i64 2151093134, i64 2151093307, i64 2151093322, i64 2151093374, i64 2151093433, i64 2151093457, i64 2151093498, i64 2151093519, i64 2151093547, i64 2151093579}
!237 = !{i64 2152604211}
!238 = !{i64 2152604053}
!239 = !{i64 2152604381}
!240 = !{i64 2150241467}
!241 = !{i64 2153236666, i64 2153237149, i64 2153236703, i64 2153236759, i64 2153236793, i64 2153236817, i64 2153236858, i64 2153236879, i64 2153236907, i64 2153236941}
!242 = !{i64 2148574874}
!243 = !{i64 2148489607, i64 2148489639, i64 2148489668, i64 2148489702, i64 2148489733, i64 2148489756}
!244 = !{i64 2148575103}
!245 = !{i64 2152606142}
!246 = !{i64 2150133719}
!247 = !{i64 2150138653}
!248 = !{i64 2150160371}
!249 = !{i64 2150165265}
!250 = !{i64 2150241792}
!251 = !{i64 2150242117}
!252 = !{i64 2152618004}
!253 = !{!"auto-init"}
!254 = !{i64 2151777571}
!255 = !{i64 2151083701, i64 2151084192, i64 2151083738, i64 2151083794, i64 2151083828, i64 2151083852, i64 2151083893, i64 2151083914, i64 2151083942, i64 2151083976}
!256 = !{i64 2151101061, i64 2151101234, i64 2151101249, i64 2151101301, i64 2151101360, i64 2151101384, i64 2151101425, i64 2151101446, i64 2151101474, i64 2151101506}
!257 = !{i64 2151101936, i64 2151102109, i64 2151102124, i64 2151102176, i64 2151102235, i64 2151102259, i64 2151102300, i64 2151102321, i64 2151102349, i64 2151102381}
!258 = !{i64 2154912287, i64 2154912776, i64 2154912324, i64 2154912380, i64 2154912414, i64 2154912438, i64 2154912479, i64 2154912500, i64 2154912528, i64 2154912562}
!259 = !{i64 2154914133, i64 2154914622, i64 2154914170, i64 2154914226, i64 2154914260, i64 2154914284, i64 2154914325, i64 2154914346, i64 2154914374, i64 2154914408}
!260 = !{i64 2151793394, i64 2151793885, i64 2151793431, i64 2151793487, i64 2151793521, i64 2151793545, i64 2151793586, i64 2151793607, i64 2151793635, i64 2151793669}
!261 = !{i64 2151776500}
!262 = !{i8 0, i8 2}
!263 = !{i64 2155004111, i64 2155004595, i64 2155004148, i64 2155004204, i64 2155004238, i64 2155004262, i64 2155004303, i64 2155004324, i64 2155004352, i64 2155004386}
!264 = distinct !{!264, !265}
!265 = !{!"llvm.loop.peeled.count", i32 1}
!266 = !{i64 2151499205, i64 2151499378, i64 2151499393, i64 2151499445, i64 2151499504, i64 2151499528, i64 2151499569, i64 2151499590, i64 2151499618, i64 2151499650}
