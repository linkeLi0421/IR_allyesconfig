; ModuleID = '/llk/IR_all_yes/fs/ksmbd/vfs.c_pt.bc'
source_filename = "../fs/ksmbd/vfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.170, %struct.list_head, %struct.list_head, %union.anon.171 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.168 }
%union.anon.168 = type { %struct.anon.169 }
%struct.anon.169 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%union.anon.170 = type { %struct.list_head }
%union.anon.171 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.164, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.165, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.166, ptr, %struct.address_space, %struct.list_head, %union.anon.167, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.164 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.165 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.166 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.167 = type { ptr }
%struct.path = type { ptr, ptr }
%struct.ksmbd_work = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32, i32, i32, ptr, i8, i8, i32, i32, ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ksmbd_tree_connect = type { i32, i32, ptr, ptr, %struct.list_head, i32, i8 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.ksmbd_share_config = type { ptr, ptr, i32, i32, %struct.list_head, %struct.path, %struct.atomic_t, %struct.hlist_node, i16, i16, i16, i16, i16, i16 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ksmbd_conn = type { ptr, ptr, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.wait_queue_head, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_stats, [16 x i8], %struct.ntlmssp_auth, %struct.spinlock, %struct.list_head, ptr, i8, i32, i32, i8, i8, i16, i16, i16, ptr, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.ida, i16, i16, i8, i8, i16, i8 }
%struct.ksmbd_stats = type { %struct.atomic_t, %struct.atomic64_t }
%struct.ntlmssp_auth = type { i8, i32, i32, [16 x i8], [8 x i8] }
%struct.__kernel_sockaddr_storage = type { %union.anon.191 }
%union.anon.191 = type { ptr, [124 x i8] }
%struct.ida = type { %struct.xarray }
%struct.ksmbd_file = type { ptr, ptr, i64, i64, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i64, i64, i8, i8, [16 x i8], [16 x i8], [16 x i8], %struct.stream, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_readdir_data, [2 x i32] }
%struct.stream = type { ptr, i32 }
%struct.ksmbd_readdir_data = type { %struct.dir_context, %union.anon.193, i32, i32, i32 }
%struct.dir_context = type { ptr, i64 }
%union.anon.193 = type { ptr }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ksmbd_session = type { i64, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, [40 x i8], %struct.hlist_node, %struct.list_head, %struct.xarray, %struct.ida, %struct.list_head, [32 x i8], [32 x i8], [16 x i8], %struct.list_head, %struct.ksmbd_file_table, %struct.atomic_t }
%struct.ksmbd_file_table = type { %struct.rwlock_t, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.151, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.151 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.renamedata = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.134 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.134 = type { %struct.work_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ksmbd_inode = type { %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_allocated_range_buffer = type { i64, i64 }
%struct.ndr = type { ptr, i32, i32 }
%struct.xattr_ntacl = type { i16, ptr, i32, i16, [10 x i8], i16, i64, [64 x i8], [64 x i8] }
%struct.smb_ntsd = type { i16, i16, i32, i32, i32, i32 }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.16 }
%union.anon.16 = type { %struct.kuid_t }
%struct.xattr_smb_acl = type { i32, i32, [0 x %struct.xattr_acl_entry] }
%struct.xattr_acl_entry = type { i32, i32, i32, i16 }
%struct.file_directory_info = type <{ i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, [1 x i8] }>
%struct.ksmbd_kstat = type { ptr, i64, i32 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.xattr_dos_attrib = type { i16, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.srv_copychunk = type { i64, i64, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.162 }
%union.anon.162 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.posix_acl_state = type { %struct.posix_ace_state, %struct.posix_ace_state, %struct.posix_ace_state, %struct.posix_ace_state, %struct.posix_ace_state, ptr, ptr }
%struct.posix_ace_state = type { i32, i32 }
%struct.posix_ace_state_array = type { i32, [0 x %struct.posix_user_ace_state] }
%struct.posix_user_ace_state = type { %union.anon.194, %struct.posix_ace_state }
%union.anon.194 = type { %struct.kuid_t }

@ksmbd_vfs_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ksmbd: path create failed for %s, err %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ksmbd_vfs_create\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ksmbd/vfs.c\00", [17 x i8] zeroinitializer }, align 32
@ksmbd_vfs_create._entry_ptr = internal global ptr @ksmbd_vfs_create._entry, section ".printk_index", align 4
@ksmbd_vfs_create._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ksmbd: File(%s): creation failed (err:%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@ksmbd_vfs_create._entry_ptr.5 = internal global ptr @ksmbd_vfs_create._entry.3, section ".printk_index", align 4
@ksmbd_debug_types = external dso_local local_unnamed_addr global i32, align 4
@ksmbd_vfs_mkdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016ksmbd: path create failed for %s, err %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ksmbd_vfs_mkdir\00", [16 x i8] zeroinitializer }, align 32
@ksmbd_vfs_mkdir._entry_ptr = internal global ptr @ksmbd_vfs_mkdir._entry, section ".printk_index", align 4
@ksmbd_vfs_mkdir._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ksmbd: mkdir(%s): creation failed (err:%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@ksmbd_vfs_mkdir._entry_ptr.10 = internal global ptr @ksmbd_vfs_mkdir._entry.8, section ".printk_index", align 4
@ksmbd_vfs_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ksmbd: no right to read(%pd)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ksmbd_vfs_read\00", [17 x i8] zeroinitializer }, align 32
@ksmbd_vfs_read._entry_ptr = internal global ptr @ksmbd_vfs_read._entry, section ".printk_index", align 4
@ksmbd_vfs_read._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ksmbd: unable to read due to lock\0A\00", [59 x i8] zeroinitializer }, align 32
@ksmbd_vfs_read._entry_ptr.15 = internal global ptr @ksmbd_vfs_read._entry.13, section ".printk_index", align 4
@ksmbd_vfs_read._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ksmbd: smb read failed for (%s), err = %zd\0A\00", [50 x i8] zeroinitializer }, align 32
@ksmbd_vfs_read._entry_ptr.18 = internal global ptr @ksmbd_vfs_read._entry.16, section ".printk_index", align 4
@ksmbd_vfs_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013ksmbd: no right to write(%pd)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ksmbd_vfs_write\00", [16 x i8] zeroinitializer }, align 32
@ksmbd_vfs_write._entry_ptr = internal global ptr @ksmbd_vfs_write._entry, section ".printk_index", align 4
@ksmbd_vfs_write._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ksmbd: unable to write due to lock\0A\00", [58 x i8] zeroinitializer }, align 32
@ksmbd_vfs_write._entry_ptr.23 = internal global ptr @ksmbd_vfs_write._entry.21, section ".printk_index", align 4
@ksmbd_vfs_write._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016ksmbd: smb write failed, err = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ksmbd_vfs_write._entry_ptr.26 = internal global ptr @ksmbd_vfs_write._entry.24, section ".printk_index", align 4
@ksmbd_vfs_write._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.2, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013ksmbd: fsync failed for filename = %pd, err = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ksmbd_vfs_write._entry_ptr.29 = internal global ptr @ksmbd_vfs_write._entry.27, section ".printk_index", align 4
@ksmbd_vfs_getattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013ksmbd: getattr failed, err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ksmbd_vfs_getattr\00", [46 x i8] zeroinitializer }, align 32
@ksmbd_vfs_getattr._entry_ptr = internal global ptr @ksmbd_vfs_getattr._entry, section ".printk_index", align 4
@ksmbd_vfs_fsync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ksmbd: failed to get filp for fid %llu\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ksmbd_vfs_fsync\00", [16 x i8] zeroinitializer }, align 32
@ksmbd_vfs_fsync._entry_ptr = internal global ptr @ksmbd_vfs_fsync._entry, section ".printk_index", align 4
@ksmbd_vfs_fsync._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ksmbd: smb fsync failed, err = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ksmbd_vfs_fsync._entry_ptr.36 = internal global ptr @ksmbd_vfs_fsync._entry.34, section ".printk_index", align 4
@ksmbd_vfs_remove_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016ksmbd: can't get %s, err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ksmbd_vfs_remove_file\00", [42 x i8] zeroinitializer }, align 32
@ksmbd_vfs_remove_file._entry_ptr = internal global ptr @ksmbd_vfs_remove_file._entry, section ".printk_index", align 4
@ksmbd_vfs_remove_file._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016ksmbd: %s: rmdir failed, err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ksmbd_vfs_remove_file._entry_ptr.41 = internal global ptr @ksmbd_vfs_remove_file._entry.39, section ".printk_index", align 4
@ksmbd_vfs_remove_file._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016ksmbd: %s: unlink failed, err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ksmbd_vfs_remove_file._entry_ptr.44 = internal global ptr @ksmbd_vfs_remove_file._entry.42, section ".printk_index", align 4
@ksmbd_vfs_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ksmbd: cannot get linux path for %s, err = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ksmbd_vfs_link\00", [17 x i8] zeroinitializer }, align 32
@ksmbd_vfs_link._entry_ptr = internal global ptr @ksmbd_vfs_link._entry, section ".printk_index", align 4
@ksmbd_vfs_link._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ksmbd: path create err for %s, err %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ksmbd_vfs_link._entry_ptr.49 = internal global ptr @ksmbd_vfs_link._entry.47, section ".printk_index", align 4
@ksmbd_vfs_link._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013ksmbd: vfs_link failed err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ksmbd_vfs_link._entry_ptr.52 = internal global ptr @ksmbd_vfs_link._entry.50, section ".printk_index", align 4
@ksmbd_vfs_link._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.2, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ksmbd: vfs_link failed err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ksmbd_vfs_link._entry_ptr.55 = internal global ptr @ksmbd_vfs_link._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ksmbd_vfs_fp_rename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ksmbd: Cannot get path for %s [%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ksmbd_vfs_fp_rename\00", [44 x i8] zeroinitializer }, align 32
@ksmbd_vfs_fp_rename._entry_ptr = internal global ptr @ksmbd_vfs_fp_rename._entry, section ".printk_index", align 4
@ksmbd_vfs_truncate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013ksmbd: failed due to lock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ksmbd_vfs_truncate\00", [45 x i8] zeroinitializer }, align 32
@ksmbd_vfs_truncate._entry_ptr = internal global ptr @ksmbd_vfs_truncate._entry, section ".printk_index", align 4
@ksmbd_vfs_truncate._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013ksmbd: truncate failed for filename : %s err %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ksmbd_vfs_truncate._entry_ptr.63 = internal global ptr @ksmbd_vfs_truncate._entry.61, section ".printk_index", align 4
@ksmbd_vfs_listxattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016ksmbd: listxattr failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ksmbd_vfs_listxattr\00", [44 x i8] zeroinitializer }, align 32
@ksmbd_vfs_listxattr._entry_ptr = internal global ptr @ksmbd_vfs_listxattr._entry, section ".printk_index", align 4
@ksmbd_vfs_setxattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ksmbd: setxattr failed, err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ksmbd_vfs_setxattr\00", [45 x i8] zeroinitializer }, align 32
@ksmbd_vfs_setxattr._entry_ptr = internal global ptr @ksmbd_vfs_setxattr._entry, section ".printk_index", align 4
@ksmbd_vfs_unlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016ksmbd: failed to delete, err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ksmbd_vfs_unlink\00", [47 x i8] zeroinitializer }, align 32
@ksmbd_vfs_unlink._entry_ptr = internal global ptr @ksmbd_vfs_unlink._entry, section ".printk_index", align 4
@ksmbd_vfs_remove_acl_xattrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 1304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ksmbd: empty xattr in the file\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ksmbd_vfs_remove_acl_xattrs\00", [36 x i8] zeroinitializer }, align 32
@ksmbd_vfs_remove_acl_xattrs._entry_ptr = internal global ptr @ksmbd_vfs_remove_acl_xattrs._entry, section ".printk_index", align 4
@ksmbd_vfs_remove_acl_xattrs._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 1310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016ksmbd: %s, len %zd\0A\00", [42 x i8] zeroinitializer }, align 32
@ksmbd_vfs_remove_acl_xattrs._entry_ptr.74 = internal global ptr @ksmbd_vfs_remove_acl_xattrs._entry.72, section ".printk_index", align 4
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system.posix_acl_access\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"system.posix_acl_default\00", [39 x i8] zeroinitializer }, align 32
@ksmbd_vfs_remove_acl_xattrs._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.71, ptr @.str.2, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ksmbd: remove acl xattr failed : %s\0A\00", [57 x i8] zeroinitializer }, align 32
@ksmbd_vfs_remove_acl_xattrs._entry_ptr.79 = internal global ptr @ksmbd_vfs_remove_acl_xattrs._entry.77, section ".printk_index", align 4
@ksmbd_vfs_remove_sd_xattrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.80, ptr @.str.2, i32 1338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ksmbd_vfs_remove_sd_xattrs\00", [37 x i8] zeroinitializer }, align 32
@ksmbd_vfs_remove_sd_xattrs._entry_ptr = internal global ptr @ksmbd_vfs_remove_sd_xattrs._entry, section ".printk_index", align 4
@ksmbd_vfs_remove_sd_xattrs._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.80, ptr @.str.2, i32 1344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ksmbd_vfs_remove_sd_xattrs._entry_ptr.82 = internal global ptr @ksmbd_vfs_remove_sd_xattrs._entry.81, section ".printk_index", align 4
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"security.NTACL\00", [17 x i8] zeroinitializer }, align 32
@ksmbd_vfs_remove_sd_xattrs._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.2, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016ksmbd: remove xattr failed : %s\0A\00", [61 x i8] zeroinitializer }, align 32
@ksmbd_vfs_remove_sd_xattrs._entry_ptr.86 = internal global ptr @ksmbd_vfs_remove_sd_xattrs._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"posix_acl\00", [22 x i8] zeroinitializer }, align 32
@ksmbd_vfs_set_sd_xattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 1452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ksmbd: failed to generate hash for ndr acl\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ksmbd_vfs_set_sd_xattr\00", [41 x i8] zeroinitializer }, align 32
@ksmbd_vfs_set_sd_xattr._entry_ptr = internal global ptr @ksmbd_vfs_set_sd_xattr._entry, section ".printk_index", align 4
@ksmbd_vfs_set_sd_xattr._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 1465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ksmbd: failed to encode ndr to posix acl\0A\00", [52 x i8] zeroinitializer }, align 32
@ksmbd_vfs_set_sd_xattr._entry_ptr.92 = internal global ptr @ksmbd_vfs_set_sd_xattr._entry.90, section ".printk_index", align 4
@ksmbd_vfs_set_sd_xattr._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ksmbd_vfs_set_sd_xattr._entry_ptr.94 = internal global ptr @ksmbd_vfs_set_sd_xattr._entry.93, section ".printk_index", align 4
@ksmbd_vfs_set_sd_xattr._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 1478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ksmbd_vfs_set_sd_xattr._entry_ptr.96 = internal global ptr @ksmbd_vfs_set_sd_xattr._entry.95, section ".printk_index", align 4
@ksmbd_vfs_set_sd_xattr._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.89, ptr @.str.2, i32 1486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ksmbd: Failed to store XATTR ntacl :%d\0A\00", [54 x i8] zeroinitializer }, align 32
@ksmbd_vfs_set_sd_xattr._entry_ptr.99 = internal global ptr @ksmbd_vfs_set_sd_xattr._entry.97, section ".printk_index", align 4
@ksmbd_vfs_get_sd_xattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.100, ptr @.str.2, i32 1527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ksmbd_vfs_get_sd_xattr\00", [41 x i8] zeroinitializer }, align 32
@ksmbd_vfs_get_sd_xattr._entry_ptr = internal global ptr @ksmbd_vfs_get_sd_xattr._entry, section ".printk_index", align 4
@ksmbd_vfs_get_sd_xattr._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.100, ptr @.str.2, i32 1533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ksmbd_vfs_get_sd_xattr._entry_ptr.102 = internal global ptr @ksmbd_vfs_get_sd_xattr._entry.101, section ".printk_index", align 4
@ksmbd_vfs_get_sd_xattr._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.100, ptr @.str.2, i32 1538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013ksmbd: hash value diff\0A\00", [38 x i8] zeroinitializer }, align 32
@ksmbd_vfs_get_sd_xattr._entry_ptr.105 = internal global ptr @ksmbd_vfs_get_sd_xattr._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"user.DOSATTRIB\00", [17 x i8] zeroinitializer }, align 32
@ksmbd_vfs_set_dos_attrib_xattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 1580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016ksmbd: failed to store dos attribute in xattr\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ksmbd_vfs_set_dos_attrib_xattr\00", [33 x i8] zeroinitializer }, align 32
@ksmbd_vfs_set_dos_attrib_xattr._entry_ptr = internal global ptr @ksmbd_vfs_set_dos_attrib_xattr._entry, section ".printk_index", align 4
@ksmbd_vfs_get_dos_attrib_xattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 1601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016ksmbd: failed to load dos attribute in xattr\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ksmbd_vfs_get_dos_attrib_xattr\00", [33 x i8] zeroinitializer }, align 32
@ksmbd_vfs_get_dos_attrib_xattr._entry_ptr = internal global ptr @ksmbd_vfs_get_dos_attrib_xattr._entry, section ".printk_index", align 4
@ksmbd_vfs_fill_dentry_attrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 1670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ksmbd: fail to load dos attribute.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ksmbd_vfs_fill_dentry_attrs\00", [36 x i8] zeroinitializer }, align 32
@ksmbd_vfs_fill_dentry_attrs._entry_ptr = internal global ptr @ksmbd_vfs_fill_dentry_attrs._entry, section ".printk_index", align 4
@ksmbd_vfs_casexattr_len._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.113, ptr @.str.2, i32 1690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ksmbd_vfs_casexattr_len\00", [40 x i8] zeroinitializer }, align 32
@ksmbd_vfs_casexattr_len._entry_ptr = internal global ptr @ksmbd_vfs_casexattr_len._entry, section ".printk_index", align 4
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c":$INDEX_ALLOCATION\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c":$DATA\00", [25 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s%s%s\00", [25 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"user.DosStream.\00", [16 x i8] zeroinitializer }, align 32
@ksmbd_vfs_copy_file_ranges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.118, ptr @.str.2, i32 1743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ksmbd_vfs_copy_file_ranges\00", [37 x i8] zeroinitializer }, align 32
@ksmbd_vfs_copy_file_ranges._entry_ptr = internal global ptr @ksmbd_vfs_copy_file_ranges._entry, section ".printk_index", align 4
@ksmbd_vfs_copy_file_ranges._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.118, ptr @.str.2, i32 1747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ksmbd_vfs_copy_file_ranges._entry_ptr.120 = internal global ptr @ksmbd_vfs_copy_file_ranges._entry.119, section ".printk_index", align 4
@ksmbd_vfs_set_init_posix_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 1819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016ksmbd: Set posix acls\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ksmbd_vfs_set_init_posix_acl\00", [35 x i8] zeroinitializer }, align 32
@ksmbd_vfs_set_init_posix_acl._entry_ptr = internal global ptr @ksmbd_vfs_set_init_posix_acl._entry, section ".printk_index", align 4
@ksmbd_vfs_set_init_posix_acl._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.2, i32 1845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016ksmbd: Set posix acl(ACL_TYPE_ACCESS) failed, rc : %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ksmbd_vfs_set_init_posix_acl._entry_ptr.125 = internal global ptr @ksmbd_vfs_set_init_posix_acl._entry.123, section ".printk_index", align 4
@ksmbd_vfs_set_init_posix_acl._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.122, ptr @.str.2, i32 1852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016ksmbd: Set posix acl(ACL_TYPE_DEFAULT) failed, rc : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ksmbd_vfs_set_init_posix_acl._entry_ptr.128 = internal global ptr @ksmbd_vfs_set_init_posix_acl._entry.126, section ".printk_index", align 4
@ksmbd_vfs_inherit_posix_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.129, ptr @.str.2, i32 1884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ksmbd_vfs_inherit_posix_acl\00", [36 x i8] zeroinitializer }, align 32
@ksmbd_vfs_inherit_posix_acl._entry_ptr = internal global ptr @ksmbd_vfs_inherit_posix_acl._entry, section ".printk_index", align 4
@ksmbd_vfs_inherit_posix_acl._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.129, ptr @.str.2, i32 1890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ksmbd_vfs_inherit_posix_acl._entry_ptr.131 = internal global ptr @ksmbd_vfs_inherit_posix_acl._entry.130, section ".printk_index", align 4
@ksmbd_vfs_stream_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016ksmbd: read stream data pos : %llu, count : %zd\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ksmbd_vfs_stream_read\00", [42 x i8] zeroinitializer }, align 32
@ksmbd_vfs_stream_read._entry_ptr = internal global ptr @ksmbd_vfs_stream_read._entry, section ".printk_index", align 4
@ksmbd_vfs_getcasexattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.134, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ksmbd_vfs_getcasexattr\00", [41 x i8] zeroinitializer }, align 32
@ksmbd_vfs_getcasexattr._entry_ptr = internal global ptr @ksmbd_vfs_getcasexattr._entry, section ".printk_index", align 4
@ksmbd_vfs_getcasexattr._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ksmbd: failed to get xattr in file\0A\00", [58 x i8] zeroinitializer }, align 32
@ksmbd_vfs_getcasexattr._entry_ptr.137 = internal global ptr @ksmbd_vfs_getcasexattr._entry.135, section ".printk_index", align 4
@check_lock_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ksmbd: not allow write by shared lock\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_lock_range\00", [47 x i8] zeroinitializer }, align 32
@check_lock_range._entry_ptr = internal global ptr @check_lock_range._entry, section ".printk_index", align 4
@check_lock_range._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013ksmbd: not allow rw access by exclusive lock from other opens\0A\00", [63 x i8] zeroinitializer }, align 32
@check_lock_range._entry_ptr.142 = internal global ptr @check_lock_range._entry.140, section ".printk_index", align 4
@ksmbd_vfs_stream_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016ksmbd: write stream data pos : %llu, count : %zd\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ksmbd_vfs_stream_write\00", [41 x i8] zeroinitializer }, align 32
@ksmbd_vfs_stream_write._entry_ptr = internal global ptr @ksmbd_vfs_stream_write._entry, section ".printk_index", align 4
@ksmbd_vfs_stream_write._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ksmbd: not found stream in xattr : %zd\0A\00", [54 x i8] zeroinitializer }, align 32
@ksmbd_vfs_stream_write._entry_ptr.147 = internal global ptr @ksmbd_vfs_stream_write._entry.145, section ".printk_index", align 4
@__ksmbd_vfs_rename._entry = internal constant %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 752, ptr null, ptr null }, align 1
@.str.148 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ksmbd: lookup failed %s [%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__ksmbd_vfs_rename\00", [45 x i8] zeroinitializer }, align 32
@__ksmbd_vfs_rename._entry_ptr = internal global ptr @__ksmbd_vfs_rename._entry, section ".printk_index", align 4
@__ksmbd_vfs_rename._entry.150 = internal constant %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.2, i32 769, ptr null, ptr null }, align 1
@.str.151 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013ksmbd: vfs_rename failed err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@__ksmbd_vfs_rename._entry_ptr.152 = internal global ptr @__ksmbd_vfs_rename._entry.150, section ".printk_index", align 4
@ksmbd_validate_entry_in_use._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.2, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016ksmbd: Forbid rename, sub file/dir is in use\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ksmbd_validate_entry_in_use\00", [36 x i8] zeroinitializer }, align 32
@ksmbd_validate_entry_in_use._entry_ptr = internal global ptr @ksmbd_validate_entry_in_use._entry, section ".printk_index", align 4
@ksmbd_vfs_make_xattr_posix_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.2, i32 1406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013ksmbd: unknown type : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ksmbd_vfs_make_xattr_posix_acl\00", [33 x i8] zeroinitializer }, align 32
@ksmbd_vfs_make_xattr_posix_acl._entry_ptr = internal global ptr @ksmbd_vfs_make_xattr_posix_acl._entry, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967257]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.160 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 175, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 187, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 214, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 245, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 381, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 395, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 402, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 493, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 512, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 523, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 533, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 555, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 573, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 578, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 601, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 624, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 629, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 660, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 670, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 676, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 684, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 790, i32 13 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 800, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 872, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 879, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 908, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 980, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1105, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1304, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1310, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1312, i32 22 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1314, i32 22 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1318, i32 5 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1338, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1344, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1346, i32 22 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1349, i32 5 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1437, i32 19 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1452, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1465, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1472, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1478, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1486, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1527, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1533, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1538, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1577, i32 44 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1580, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1601, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1670, i32 4 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1690, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1709, i32 10 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1711, i32 10 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1713, i32 30 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1714, i32 4 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1743, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1747, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1819, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1844, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1851, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1883, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1889, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 286, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 262, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 271, i32 4 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 337, i32 6 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 345, i32 6 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 419, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 434, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 752, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 769, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 709, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.621 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.622 = private constant [18 x i8] c"../fs/ksmbd/vfs.c\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1406, i32 4 }
@llvm.compiler.used = appending global [219 x ptr] [ptr @__ksmbd_vfs_rename._entry, ptr @__ksmbd_vfs_rename._entry.150, ptr @__ksmbd_vfs_rename._entry_ptr, ptr @__ksmbd_vfs_rename._entry_ptr.152, ptr @check_lock_range._entry, ptr @check_lock_range._entry.140, ptr @check_lock_range._entry_ptr, ptr @check_lock_range._entry_ptr.142, ptr @ksmbd_validate_entry_in_use._entry, ptr @ksmbd_validate_entry_in_use._entry_ptr, ptr @ksmbd_vfs_casexattr_len._entry, ptr @ksmbd_vfs_casexattr_len._entry_ptr, ptr @ksmbd_vfs_copy_file_ranges._entry, ptr @ksmbd_vfs_copy_file_ranges._entry.119, ptr @ksmbd_vfs_copy_file_ranges._entry_ptr, ptr @ksmbd_vfs_copy_file_ranges._entry_ptr.120, ptr @ksmbd_vfs_create._entry, ptr @ksmbd_vfs_create._entry.3, ptr @ksmbd_vfs_create._entry_ptr, ptr @ksmbd_vfs_create._entry_ptr.5, ptr @ksmbd_vfs_fill_dentry_attrs._entry, ptr @ksmbd_vfs_fill_dentry_attrs._entry_ptr, ptr @ksmbd_vfs_fp_rename._entry, ptr @ksmbd_vfs_fp_rename._entry_ptr, ptr @ksmbd_vfs_fsync._entry, ptr @ksmbd_vfs_fsync._entry.34, ptr @ksmbd_vfs_fsync._entry_ptr, ptr @ksmbd_vfs_fsync._entry_ptr.36, ptr @ksmbd_vfs_get_dos_attrib_xattr._entry, ptr @ksmbd_vfs_get_dos_attrib_xattr._entry_ptr, ptr @ksmbd_vfs_get_sd_xattr._entry, ptr @ksmbd_vfs_get_sd_xattr._entry.101, ptr @ksmbd_vfs_get_sd_xattr._entry.103, ptr @ksmbd_vfs_get_sd_xattr._entry_ptr, ptr @ksmbd_vfs_get_sd_xattr._entry_ptr.102, ptr @ksmbd_vfs_get_sd_xattr._entry_ptr.105, ptr @ksmbd_vfs_getattr._entry, ptr @ksmbd_vfs_getattr._entry_ptr, ptr @ksmbd_vfs_getcasexattr._entry, ptr @ksmbd_vfs_getcasexattr._entry.135, ptr @ksmbd_vfs_getcasexattr._entry_ptr, ptr @ksmbd_vfs_getcasexattr._entry_ptr.137, ptr @ksmbd_vfs_inherit_posix_acl._entry, ptr @ksmbd_vfs_inherit_posix_acl._entry.130, ptr @ksmbd_vfs_inherit_posix_acl._entry_ptr, ptr @ksmbd_vfs_inherit_posix_acl._entry_ptr.131, ptr @ksmbd_vfs_link._entry, ptr @ksmbd_vfs_link._entry.47, ptr @ksmbd_vfs_link._entry.50, ptr @ksmbd_vfs_link._entry.53, ptr @ksmbd_vfs_link._entry_ptr, ptr @ksmbd_vfs_link._entry_ptr.49, ptr @ksmbd_vfs_link._entry_ptr.52, ptr @ksmbd_vfs_link._entry_ptr.55, ptr @ksmbd_vfs_listxattr._entry, ptr @ksmbd_vfs_listxattr._entry_ptr, ptr @ksmbd_vfs_make_xattr_posix_acl._entry, ptr @ksmbd_vfs_make_xattr_posix_acl._entry_ptr, ptr @ksmbd_vfs_mkdir._entry, ptr @ksmbd_vfs_mkdir._entry.8, ptr @ksmbd_vfs_mkdir._entry_ptr, ptr @ksmbd_vfs_mkdir._entry_ptr.10, ptr @ksmbd_vfs_read._entry, ptr @ksmbd_vfs_read._entry.13, ptr @ksmbd_vfs_read._entry.16, ptr @ksmbd_vfs_read._entry_ptr, ptr @ksmbd_vfs_read._entry_ptr.15, ptr @ksmbd_vfs_read._entry_ptr.18, ptr @ksmbd_vfs_remove_acl_xattrs._entry, ptr @ksmbd_vfs_remove_acl_xattrs._entry.72, ptr @ksmbd_vfs_remove_acl_xattrs._entry.77, ptr @ksmbd_vfs_remove_acl_xattrs._entry_ptr, ptr @ksmbd_vfs_remove_acl_xattrs._entry_ptr.74, ptr @ksmbd_vfs_remove_acl_xattrs._entry_ptr.79, ptr @ksmbd_vfs_remove_file._entry, ptr @ksmbd_vfs_remove_file._entry.39, ptr @ksmbd_vfs_remove_file._entry.42, ptr @ksmbd_vfs_remove_file._entry_ptr, ptr @ksmbd_vfs_remove_file._entry_ptr.41, ptr @ksmbd_vfs_remove_file._entry_ptr.44, ptr @ksmbd_vfs_remove_sd_xattrs._entry, ptr @ksmbd_vfs_remove_sd_xattrs._entry.81, ptr @ksmbd_vfs_remove_sd_xattrs._entry.84, ptr @ksmbd_vfs_remove_sd_xattrs._entry_ptr, ptr @ksmbd_vfs_remove_sd_xattrs._entry_ptr.82, ptr @ksmbd_vfs_remove_sd_xattrs._entry_ptr.86, ptr @ksmbd_vfs_set_dos_attrib_xattr._entry, ptr @ksmbd_vfs_set_dos_attrib_xattr._entry_ptr, ptr @ksmbd_vfs_set_init_posix_acl._entry, ptr @ksmbd_vfs_set_init_posix_acl._entry.123, ptr @ksmbd_vfs_set_init_posix_acl._entry.126, ptr @ksmbd_vfs_set_init_posix_acl._entry_ptr, ptr @ksmbd_vfs_set_init_posix_acl._entry_ptr.125, ptr @ksmbd_vfs_set_init_posix_acl._entry_ptr.128, ptr @ksmbd_vfs_set_sd_xattr._entry, ptr @ksmbd_vfs_set_sd_xattr._entry.90, ptr @ksmbd_vfs_set_sd_xattr._entry.93, ptr @ksmbd_vfs_set_sd_xattr._entry.95, ptr @ksmbd_vfs_set_sd_xattr._entry.97, ptr @ksmbd_vfs_set_sd_xattr._entry_ptr, ptr @ksmbd_vfs_set_sd_xattr._entry_ptr.92, ptr @ksmbd_vfs_set_sd_xattr._entry_ptr.94, ptr @ksmbd_vfs_set_sd_xattr._entry_ptr.96, ptr @ksmbd_vfs_set_sd_xattr._entry_ptr.99, ptr @ksmbd_vfs_setxattr._entry, ptr @ksmbd_vfs_setxattr._entry_ptr, ptr @ksmbd_vfs_stream_read._entry, ptr @ksmbd_vfs_stream_read._entry_ptr, ptr @ksmbd_vfs_stream_write._entry, ptr @ksmbd_vfs_stream_write._entry.145, ptr @ksmbd_vfs_stream_write._entry_ptr, ptr @ksmbd_vfs_stream_write._entry_ptr.147, ptr @ksmbd_vfs_truncate._entry, ptr @ksmbd_vfs_truncate._entry.61, ptr @ksmbd_vfs_truncate._entry_ptr, ptr @ksmbd_vfs_truncate._entry_ptr.63, ptr @ksmbd_vfs_unlink._entry, ptr @ksmbd_vfs_unlink._entry_ptr, ptr @ksmbd_vfs_write._entry, ptr @ksmbd_vfs_write._entry.21, ptr @ksmbd_vfs_write._entry.24, ptr @ksmbd_vfs_write._entry.27, ptr @ksmbd_vfs_write._entry_ptr, ptr @ksmbd_vfs_write._entry_ptr.23, ptr @ksmbd_vfs_write._entry_ptr.26, ptr @ksmbd_vfs_write._entry_ptr.29, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.98, ptr @.str.100, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.127, ptr @.str.129, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156], section "llvm.metadata"
@0 = internal global [154 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_create._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_mkdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_mkdir._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_read._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_read._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_write._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_write._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_write._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_getattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_fsync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_fsync._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_remove_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_remove_file._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_remove_file._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_link._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_link._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_link._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_fp_rename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_truncate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_truncate._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_listxattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_setxattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_unlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_remove_acl_xattrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_remove_acl_xattrs._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_remove_acl_xattrs._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_remove_sd_xattrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_remove_sd_xattrs._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_remove_sd_xattrs._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_set_sd_xattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_set_sd_xattr._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_set_sd_xattr._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_set_sd_xattr._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_set_sd_xattr._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_get_sd_xattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_get_sd_xattr._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_get_sd_xattr._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_set_dos_attrib_xattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_get_dos_attrib_xattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_fill_dentry_attrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_casexattr_len._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_copy_file_ranges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_copy_file_ranges._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_set_init_posix_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_set_init_posix_acl._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_set_init_posix_acl._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_inherit_posix_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_inherit_posix_acl._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_stream_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_getcasexattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_getcasexattr._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_lock_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_lock_range._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_stream_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_stream_write._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_validate_entry_in_use._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_vfs_make_xattr_posix_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_lock_parent(ptr noundef %user_ns, ptr noundef %parent, ptr noundef readonly %child) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #14
  %d_name = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %4 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d_name, align 8
  %call2 = tail call ptr @lookup_one(ptr noundef %user_ns, ptr noundef %3, ptr noundef %parent, i32 noundef %5) #14
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %call2 to i32
  br label %out_err

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq ptr %call2, %child
  br i1 %cmp.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dput(ptr noundef %call2) #14
  br label %out_err

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dput(ptr noundef %child) #14
  br label %cleanup

out_err:                                          ; preds = %if.then5, %if.then
  %ret.0 = phi i32 [ %6, %if.then ], [ -116, %if.then5 ]
  %7 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i18 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i18) #14
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end6
  %retval.0 = phi i32 [ %ret.0, %out_err ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_may_delete(ptr noundef %user_ns, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dget_parent(ptr noundef %dentry) #14
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #14
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 8
  %4 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d_name.i, align 8
  %call2.i = tail call ptr @lookup_one(ptr noundef %user_ns, ptr noundef %3, ptr noundef %call, i32 noundef %5) #14
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %call2.i to i32
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %cmp.not.i = icmp eq ptr %call2.i, %dentry
  br i1 %cmp.not.i, label %ksmbd_vfs_lock_parent.exit.thread, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dput(ptr noundef %call2.i) #14
  br label %cleanup

ksmbd_vfs_lock_parent.exit.thread:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dput(ptr noundef %dentry) #14
  %7 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i.i, align 8
  %call3 = tail call i32 @inode_permission(ptr noundef %user_ns, ptr noundef %8, i32 noundef 3) #14
  br label %cleanup

cleanup:                                          ; preds = %ksmbd_vfs_lock_parent.exit.thread, %if.then5.i, %if.then.i
  %retval.0 = phi i32 [ %call3, %ksmbd_vfs_lock_parent.exit.thread ], [ %6, %if.then.i ], [ -116, %if.then5.i ]
  %9 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #14
  tail call void @dput(ptr noundef %call) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_query_maximal_access(ptr noundef %user_ns, ptr noundef %dentry, ptr nocapture noundef %daccess) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %daccess to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -2147483136, ptr %daccess, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call i32 @inode_permission(ptr noundef %user_ns, ptr noundef %2, i32 noundef 34) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %daccess to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %daccess, align 4
  %or = or i32 %4, 1442913280
  store i32 %or, ptr %daccess, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  %call3 = tail call i32 @inode_permission(ptr noundef %user_ns, ptr noundef %6, i32 noundef 36) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %daccess to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %daccess, align 4
  %or6 = or i32 %8, 150994944
  store i32 %or6, ptr %daccess, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  %call9 = tail call i32 @inode_permission(ptr noundef %user_ns, ptr noundef %10, i32 noundef 33) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %daccess to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %daccess, align 4
  %or12 = or i32 %12, 536870912
  store i32 %or12, ptr %daccess, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7.if.end13_crit_edge
  %call14 = tail call ptr @dget_parent(ptr noundef %dentry) #14
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call14, i32 0, i32 5
  %13 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #14
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i, align 8
  %17 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %d_name.i, align 8
  %call2.i = tail call ptr @lookup_one(ptr noundef %user_ns, ptr noundef %16, ptr noundef %call14, i32 noundef %18) #14
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %call2.i to i32
  br label %cleanup

if.end.i:                                         ; preds = %if.end13
  %cmp.not.i = icmp eq ptr %call2.i, %dentry
  br i1 %cmp.not.i, label %ksmbd_vfs_lock_parent.exit.thread, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dput(ptr noundef %call2.i) #14
  br label %cleanup

ksmbd_vfs_lock_parent.exit.thread:                ; preds = %if.end.i
  tail call void @dput(ptr noundef %dentry) #14
  %20 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i.i, align 8
  %call20 = tail call i32 @inode_permission(ptr noundef %user_ns, ptr noundef %21, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %ksmbd_vfs_lock_parent.exit.thread.cleanup_crit_edge

ksmbd_vfs_lock_parent.exit.thread.cleanup_crit_edge: ; preds = %ksmbd_vfs_lock_parent.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then22:                                        ; preds = %ksmbd_vfs_lock_parent.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %daccess to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %daccess, align 4
  %or23 = or i32 %23, 256
  store i32 %or23, ptr %daccess, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %ksmbd_vfs_lock_parent.exit.thread.cleanup_crit_edge, %if.then5.i, %if.then.i
  %retval.0.i51 = phi i32 [ %19, %if.then.i ], [ -116, %if.then5.i ], [ 0, %if.then22 ], [ 0, %ksmbd_vfs_lock_parent.exit.thread.cleanup_crit_edge ]
  %24 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #14
  tail call void @dput(ptr noundef %call14) #14
  ret i32 %retval.0.i51
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_create(ptr nocapture noundef readonly %work, ptr noundef %name, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #14
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !304
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !304
  %tcon.i = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %3 = ptrtoint ptr %tcon.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tcon.i, align 8
  %share_conf.i = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %share_conf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %share_conf.i, align 4
  %call.i = tail call ptr @convert_to_unix_name(ptr noundef %6, ptr noundef %name) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %ksmbd_vfs_kern_path_create.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

ksmbd_vfs_kern_path_create.exit:                  ; preds = %entry
  %call2.i = call ptr @kern_path_create(i32 noundef -100, ptr noundef nonnull %call.i, ptr noundef nonnull %path, i32 noundef 65536) #14
  call void @kfree(ptr noundef nonnull %call.i) #14
  %cmp.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end5

if.then:                                          ; preds = %ksmbd_vfs_kern_path_create.exit
  %cmp.not = icmp eq ptr %call2.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i4447 = phi ptr [ %call2.i, %if.then.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.do.end_crit_edge ]
  %7 = ptrtoint ptr %retval.0.i4447 to i32
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %7) #17
  br label %cleanup

if.end5:                                          ; preds = %ksmbd_vfs_kern_path_create.exit
  %8 = or i16 %mode, -32768
  %9 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %path, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %mnt_userns.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !305
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %call10 = call i32 @vfs_create(ptr noundef %12, ptr noundef %16, ptr noundef %call2.i, i16 noundef zeroext %8, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then11, label %do.end17

if.then11:                                        ; preds = %if.end5
  %17 = ptrtoint ptr %tcon.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tcon.i, align 8
  %share_conf.i39 = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %share_conf.i39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %share_conf.i39, align 4
  %flags.i.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i40 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i40, label %if.then11.if.end20_crit_edge, label %if.end.i41

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.end.i41:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  %d_inode.i37 = getelementptr inbounds %struct.dentry, ptr %call2.i, i32 0, i32 5
  %23 = ptrtoint ptr %d_inode.i37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i37, align 8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %d_inode.i36 = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %d_inode.i36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_inode.i36, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 53
  %31 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 2
  %33 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack.i.i = load i32, ptr %i_uid.i.i, align 4
  %34 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call1.i.i = call i32 @from_kuid(ptr noundef %32, [1 x i32] %34) #14
  %i_uid.i2.i = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 2
  %i_sb.i.i3.i = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 8
  %35 = ptrtoint ptr %i_sb.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb.i.i3.i, align 4
  %s_user_ns.i.i4.i = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 53
  %37 = ptrtoint ptr %s_user_ns.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_user_ns.i.i4.i, align 8
  %call1.i5.i = call i32 @make_kuid(ptr noundef %38, i32 noundef %call1.i.i) #14
  %39 = ptrtoint ptr %i_uid.i2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call1.i5.i, ptr %i_uid.i2.i, align 4
  br label %if.end20

do.end17:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name, i32 noundef %call10) #17
  br label %if.end20

if.end20:                                         ; preds = %do.end17, %if.end.i41, %if.then11.if.end20_crit_edge
  call void @done_path_create(ptr noundef nonnull %path, ptr noundef %call2.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end20 ], [ %7, %do.end ], [ -2, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_vfs_kern_path_create(ptr nocapture noundef readonly %work, ptr noundef %name, i32 noundef %flags, ptr noundef %path) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tcon = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcon, align 8
  %share_conf = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %share_conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %share_conf, align 4
  %call = tail call ptr @convert_to_unix_name(ptr noundef %3, ptr noundef %name) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call ptr @kern_path_create(i32 noundef -100, ptr noundef nonnull %call, ptr noundef %path, i32 noundef %flags) #14
  tail call void @kfree(ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_create(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @done_path_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_mkdir(ptr nocapture noundef readonly %work, ptr noundef %name, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #14
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !304
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !304
  %tcon.i = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %3 = ptrtoint ptr %tcon.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tcon.i, align 8
  %share_conf.i = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %share_conf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %share_conf.i, align 4
  %call.i = tail call ptr @convert_to_unix_name(ptr noundef %6, ptr noundef %name) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %ksmbd_vfs_kern_path_create.exit

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

ksmbd_vfs_kern_path_create.exit:                  ; preds = %entry
  %call2.i = call ptr @kern_path_create(i32 noundef -100, ptr noundef nonnull %call.i, ptr noundef nonnull %path, i32 noundef 65538) #14
  call void @kfree(ptr noundef nonnull %call.i) #14
  %cmp.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end10

if.then:                                          ; preds = %ksmbd_vfs_kern_path_create.exit
  %7 = ptrtoint ptr %call2.i to i32
  %cmp.not = icmp eq ptr %call2.i, inttoptr (i32 -17 to ptr)
  br i1 %cmp.not, label %if.then.cleanup46_crit_edge, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then.cleanup46_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup46

do.body:                                          ; preds = %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %8 = phi i32 [ %7, %if.then.do.body_crit_edge ], [ -12, %entry.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %9 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup46_crit_edge, label %do.end

do.body.cleanup46_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup46

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %8) #17
  br label %cleanup46

if.end10:                                         ; preds = %ksmbd_vfs_kern_path_create.exit
  %10 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %path, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %mnt_userns.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !305
  %14 = or i16 %mode, 16384
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i, align 8
  %call15 = call i32 @vfs_mkdir(ptr noundef %13, ptr noundef %18, ptr noundef %call2.i, i16 noundef zeroext %14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else, label %if.end10.do.end42_crit_edge

if.end10.do.end42_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

if.else:                                          ; preds = %if.end10
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %call2.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.not, label %if.then20, label %if.else.out.thread_crit_edge

if.else.out.thread_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

if.then20:                                        ; preds = %if.else
  %d_name = getelementptr inbounds %struct.dentry, ptr %call2.i, i32 0, i32 4
  %name21 = getelementptr inbounds %struct.dentry, ptr %call2.i, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name21, align 8
  %d_parent = getelementptr inbounds %struct.dentry, ptr %call2.i, i32 0, i32 3
  %23 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_parent, align 8
  %25 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %d_name, align 8
  %call23 = call ptr @lookup_one(ptr noundef %13, ptr noundef %22, ptr noundef %24, i32 noundef %26) #14
  %cmp.i73 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %out, label %if.end27

if.end27:                                         ; preds = %if.then20
  %27 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call23, align 8
  %and.i.i.i = and i32 %28, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i, label %if.then31, label %if.end32, !prof !306

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  call void @dput(ptr noundef %call23) #14
  br label %do.end42

if.end32:                                         ; preds = %if.end27
  %29 = ptrtoint ptr %tcon.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tcon.i, align 8
  %share_conf.i77 = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %share_conf.i77 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %share_conf.i77, align 4
  %flags.i.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %34, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i78 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i78, label %if.end32.ksmbd_vfs_inherit_owner.exit_crit_edge, label %if.end.i79

if.end32.ksmbd_vfs_inherit_owner.exit_crit_edge:  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %ksmbd_vfs_inherit_owner.exit

if.end.i79:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %d_inode.i75 = getelementptr inbounds %struct.dentry, ptr %call23, i32 0, i32 5
  %35 = ptrtoint ptr %d_inode.i75 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_inode.i75, align 8
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %d_inode.i74 = getelementptr inbounds %struct.dentry, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %d_inode.i74 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d_inode.i74, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 53
  %43 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 2
  %45 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack.i.i = load i32, ptr %i_uid.i.i, align 4
  %46 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call1.i.i = call i32 @from_kuid(ptr noundef %44, [1 x i32] %46) #14
  %i_uid.i2.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 2
  %i_sb.i.i3.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 8
  %47 = ptrtoint ptr %i_sb.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb.i.i3.i, align 4
  %s_user_ns.i.i4.i = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 53
  %49 = ptrtoint ptr %s_user_ns.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_user_ns.i.i4.i, align 8
  %call1.i5.i = call i32 @make_kuid(ptr noundef %50, i32 noundef %call1.i.i) #14
  %51 = ptrtoint ptr %i_uid.i2.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call1.i5.i, ptr %i_uid.i2.i, align 4
  br label %ksmbd_vfs_inherit_owner.exit

ksmbd_vfs_inherit_owner.exit:                     ; preds = %if.end.i79, %if.end32.ksmbd_vfs_inherit_owner.exit_crit_edge
  call void @dput(ptr noundef %call23) #14
  br label %out.thread

out.thread:                                       ; preds = %ksmbd_vfs_inherit_owner.exit, %if.else.out.thread_crit_edge
  call void @done_path_create(ptr noundef nonnull %path, ptr noundef %call2.i) #14
  br label %cleanup46

out:                                              ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %call23 to i32
  br label %do.end42

do.end42:                                         ; preds = %out, %if.then31, %if.end10.do.end42_crit_edge
  %err.192 = phi i32 [ %52, %out ], [ -2, %if.then31 ], [ %call15, %if.end10.do.end42_crit_edge ]
  call void @done_path_create(ptr noundef nonnull %path, ptr noundef %call2.i) #14
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %err.192) #17
  br label %cleanup46

cleanup46:                                        ; preds = %do.end42, %out.thread, %do.end, %do.body.cleanup46_crit_edge, %if.then.cleanup46_crit_edge
  %retval.0 = phi i32 [ %8, %do.body.cleanup46_crit_edge ], [ %8, %do.end ], [ -17, %if.then.cleanup46_crit_edge ], [ %err.192, %do.end42 ], [ 0, %out.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mkdir(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_read(ptr nocapture noundef readonly %work, ptr nocapture noundef readonly %fp, i32 noundef %count, ptr noundef %pos) local_unnamed_addr #0 align 64 {
entry:
  %stream_buf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp, align 8
  %aux_payload_buf = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 5
  %2 = ptrtoint ptr %aux_payload_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux_payload_buf, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %8)
  %cmp = icmp eq i16 %8, 16384
  br i1 %cmp, label %entry.cleanup44_crit_edge, label %if.end

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup44

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3 = icmp eq i32 %count, 0
  br i1 %cmp3, label %if.end.cleanup44_crit_edge, label %if.end7, !prof !306

if.end.cleanup44_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup44

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %work, align 8
  %connection_type = getelementptr inbounds %struct.ksmbd_conn, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %connection_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %connection_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.end7.if.end16_crit_edge, label %if.then9

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then9:                                         ; preds = %if.end7
  %daccess = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 11
  %13 = ptrtoint ptr %daccess to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %daccess, align 4
  %and10 = and i32 %14, 553648128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.end, label %if.then9.if.end16_crit_edge

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  %dentry = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dentry, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %16) #17
  br label %cleanup44

if.end16:                                         ; preds = %if.then9.if.end16_crit_edge, %if.end7.if.end16_crit_edge
  %stream.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 22
  %17 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream.i, align 4
  %cmp.i.not = icmp eq ptr %18, null
  br i1 %cmp.i.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stream_buf.i) #14
  %19 = ptrtoint ptr %stream_buf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %stream_buf.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %20 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then18.do.end3.i_crit_edge, label %do.end.i

if.then18.do.end3.i_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pos, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, i64 noundef %22, i32 noundef %count) #17
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then18.do.end3.i_crit_edge
  %23 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fp, align 8
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %f_path.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f_path.i.i, align 8
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !305
  %29 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fp, align 8
  %dentry.i = getelementptr inbounds %struct.file, ptr %30, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dentry.i, align 4
  %33 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stream.i, align 4
  %size.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 22, i32 1
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i, align 4
  %call7.i = call fastcc i32 @ksmbd_vfs_getcasexattr(ptr noundef %28, ptr noundef %32, ptr noundef %34, i32 noundef %36, ptr noundef nonnull %stream_buf.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %cmp.i70 = icmp slt i32 %call7.i, 1
  br i1 %cmp.i70, label %do.end3.i.ksmbd_vfs_stream_read.exit_crit_edge, label %if.end9.i

do.end3.i.ksmbd_vfs_stream_read.exit_crit_edge:   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ksmbd_vfs_stream_read.exit

if.end9.i:                                        ; preds = %do.end3.i
  %conv38.i = zext i32 %call7.i to i64
  %37 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %conv38.i)
  %cmp10.not.i = icmp slt i64 %38, %conv38.i
  br i1 %cmp10.not.i, label %if.end13.i, label %if.end9.i.free_buf.i_crit_edge

if.end9.i.free_buf.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_buf.i

if.end13.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = sub i64 %conv38.i, %38
  %conv15.i = zext i32 %count to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %conv15.i)
  %cmp16.i = icmp slt i64 %sub.i, %conv15.i
  %conv21.i = trunc i64 %sub.i to i32
  %spec.select.i = select i1 %cmp16.i, i32 %conv21.i, i32 %count
  %39 = ptrtoint ptr %stream_buf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stream_buf.i, align 4
  %idxprom.i = trunc i64 %38 to i32
  %arrayidx.i = getelementptr i8, ptr %40, i32 %idxprom.i
  %41 = call ptr @memcpy(ptr %3, ptr %arrayidx.i, i32 %spec.select.i)
  br label %free_buf.i

free_buf.i:                                       ; preds = %if.end13.i, %if.end9.i.free_buf.i_crit_edge
  %count.addr.1.i = phi i32 [ %spec.select.i, %if.end13.i ], [ -22, %if.end9.i.free_buf.i_crit_edge ]
  %42 = ptrtoint ptr %stream_buf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %stream_buf.i, align 4
  tail call void @kvfree(ptr noundef %43) #14
  br label %ksmbd_vfs_stream_read.exit

ksmbd_vfs_stream_read.exit:                       ; preds = %free_buf.i, %do.end3.i.ksmbd_vfs_stream_read.exit_crit_edge
  %retval.0.i = phi i32 [ %count.addr.1.i, %free_buf.i ], [ %call7.i, %do.end3.i.ksmbd_vfs_stream_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stream_buf.i) #14
  br label %cleanup44

if.end20:                                         ; preds = %if.end16
  %tcon = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %44 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tcon, align 8
  %posix_extensions = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %posix_extensions to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %posix_extensions, align 4, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool21.not = icmp eq i8 %47, 0
  br i1 %tobool21.not, label %if.then22, label %if.end20.if.end33_crit_edge

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then22:                                        ; preds = %if.end20
  %48 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %pos, align 8
  %conv23 = zext i32 %count to i64
  %add = add nsw i64 %conv23, -1
  %sub = add i64 %add, %49
  %i_flctx.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 45
  %50 = ptrtoint ptr %i_flctx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_flctx.i, align 4
  %tobool.not.i71 = icmp eq ptr %51, null
  br i1 %tobool.not.i71, label %if.then22.if.end33_crit_edge, label %lor.lhs.false.i

if.then22.if.end33_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

lor.lhs.false.i:                                  ; preds = %if.then22
  %flc_posix.i = getelementptr inbounds %struct.file_lock_context, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %flc_posix.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %flc_posix.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !308
  %cmp.i.not.i.i = icmp eq ptr %53, %flc_posix.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

list_empty_careful.exit.i:                        ; preds = %lor.lhs.false.i
  %prev.i.i = getelementptr inbounds %struct.file_lock_context, ptr %51, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %55, %flc_posix.i
  br i1 %cmp.i.not.i, label %list_empty_careful.exit.i.if.end33_crit_edge, label %list_empty_careful.exit.i.if.end.i_crit_edge

list_empty_careful.exit.i.if.end.i_crit_edge:     ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

list_empty_careful.exit.i.if.end33_crit_edge:     ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.end.i:                                         ; preds = %list_empty_careful.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull %51) #14
  %56 = ptrtoint ptr %flc_posix.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn56.i = load ptr, ptr %flc_posix.i, align 4
  %cmp.not57.i = icmp eq ptr %.pn56.i, %flc_posix.i
  br i1 %cmp.not57.i, label %if.end.i.check_lock_range.exit.thread76_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.check_lock_range.exit.thread76_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_lock_range.exit.thread76

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn58.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn56.i, %if.end.i.for.body.i_crit_edge ]
  %fl_end.i = getelementptr i8, ptr %.pn58.i, i32 116
  %57 = ptrtoint ptr %fl_end.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %fl_end.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %49)
  %cmp5.not.i = icmp slt i64 %58, %49
  br i1 %cmp5.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %fl_start.i = getelementptr i8, ptr %.pn58.i, i32 108
  %59 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %fl_start.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %sub)
  %cmp6.not.i = icmp sgt i64 %60, %sub
  br i1 %cmp6.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then7.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  %fl_type.i = getelementptr i8, ptr %.pn58.i, i32 40
  %61 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %fl_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %62)
  %cond = icmp eq i8 %62, 1
  br i1 %cond, label %if.then22.i, label %if.then7.i.for.inc.i_crit_edge

if.then7.i.for.inc.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then22.i:                                      ; preds = %if.then7.i
  %fl_file.i = getelementptr i8, ptr %.pn58.i, i32 104
  %63 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fl_file.i, align 4
  %cmp23.not.i = icmp eq ptr %64, %1
  br i1 %cmp23.not.i, label %if.then22.i.for.inc.i_crit_edge, label %do.end29

if.then22.i.for.inc.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then22.i.for.inc.i_crit_edge, %if.then7.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %65 = ptrtoint ptr %.pn58.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn.i = load ptr, ptr %.pn58.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %flc_posix.i
  br i1 %cmp.not.i, label %for.inc.i.check_lock_range.exit.thread76_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.check_lock_range.exit.thread76_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_lock_range.exit.thread76

check_lock_range.exit.thread76:                   ; preds = %for.inc.i.check_lock_range.exit.thread76_crit_edge, %if.end.i.check_lock_range.exit.thread76_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull %51) #14
  br label %if.end33

do.end29:                                         ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #17
  tail call void @_raw_spin_unlock(ptr noundef nonnull %51) #14
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #17
  br label %cleanup44

if.end33:                                         ; preds = %check_lock_range.exit.thread76, %list_empty_careful.exit.i.if.end33_crit_edge, %if.then22.if.end33_crit_edge, %if.end20.if.end33_crit_edge
  %call34 = tail call i32 @kernel_read(ptr noundef %1, ptr noundef %3, i32 noundef %count, ptr noundef %pos) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end40, label %if.end43

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %filename = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 1
  %66 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %filename, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %67, i32 noundef %call34) #17
  br label %cleanup44

if.end43:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %68 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %pos, align 8
  %f_pos = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 10
  %70 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %f_pos, align 8
  br label %cleanup44

cleanup44:                                        ; preds = %if.end43, %do.end40, %do.end29, %ksmbd_vfs_stream_read.exit, %do.end, %if.end.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.1 = phi i32 [ %retval.0.i, %ksmbd_vfs_stream_read.exit ], [ %call34, %do.end40 ], [ %call34, %if.end43 ], [ -13, %do.end ], [ -21, %entry.cleanup44_crit_edge ], [ 0, %if.end.cleanup44_crit_edge ], [ -11, %do.end29 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_write(ptr noundef %work, ptr noundef %fp, ptr noundef %buf, i32 noundef %count, ptr noundef %pos, i1 noundef zeroext %sync, ptr nocapture noundef writeonly %written) local_unnamed_addr #0 align 64 {
entry:
  %stream_buf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %conn = getelementptr inbounds %struct.ksmbd_session, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn, align 4
  %connection_type = getelementptr inbounds %struct.ksmbd_conn, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %connection_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %connection_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  %daccess = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 11
  %8 = ptrtoint ptr %daccess to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %daccess, align 4
  %and = and i32 %9, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.end, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fp, align 8
  %dentry = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dentry, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %13) #17
  br label %out

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %14 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fp, align 8
  %stream.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 22
  %16 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream.i, align 4
  %cmp.i.not = icmp eq ptr %17, null
  br i1 %cmp.i.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stream_buf.i) #14
  %18 = ptrtoint ptr %stream_buf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %stream_buf.i, align 4
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %f_path.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f_path.i.i, align 8
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !305
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %23 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then8.do.end4.i_crit_edge, label %do.end.i

if.then8.do.end4.i_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %pos, align 8
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, i64 noundef %25, i32 noundef %count) #17
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then8.do.end4.i_crit_edge
  %26 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pos, align 8
  %28 = trunc i64 %27 to i32
  %conv5.i = add i32 %28, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %conv5.i)
  %cmp.i90 = icmp ugt i32 %conv5.i, 65536
  %conv10.i = add i32 %conv5.i, -65536
  %29 = tail call i32 @llvm.umin.i32(i32 %conv5.i, i32 65536) #14
  %count.addr.0.i = select i1 %cmp.i90, i32 %conv10.i, i32 %count
  %30 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fp, align 8
  %dentry.i = getelementptr inbounds %struct.file, ptr %31, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dentry.i, align 4
  %34 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stream.i, align 4
  %size14.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 22, i32 1
  %36 = ptrtoint ptr %size14.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size14.i, align 4
  %call15.i = call fastcc i32 @ksmbd_vfs_getcasexattr(ptr noundef %22, ptr noundef %33, ptr noundef %35, i32 noundef %37, ptr noundef nonnull %stream_buf.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %do.end21.i, label %if.end24.i

do.end21.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %call15.i) #17
  br label %ksmbd_vfs_stream_write.exit.thread

if.end24.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call15.i, i32 %29)
  %cmp25.i = icmp ult i32 %call15.i, %29
  br i1 %cmp25.i, label %if.then27.i, label %if.end24.i.if.end36.i_crit_edge

if.end24.i.if.end36.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

if.then27.i:                                      ; preds = %if.end24.i
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %29, i32 noundef 3520, i32 noundef -1) #18
  %tobool29.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool29.not.i, label %if.then27.i.ksmbd_vfs_stream_write.exit.thread_crit_edge, label %if.end31.i

if.then27.i.ksmbd_vfs_stream_write.exit.thread_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ksmbd_vfs_stream_write.exit.thread

if.end31.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp32.not.i = icmp eq i32 %call15.i, 0
  br i1 %cmp32.not.i, label %if.end31.i.if.end35.i_crit_edge, label %if.then34.i

if.end31.i.if.end35.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %stream_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stream_buf.i, align 4
  %40 = call ptr @memcpy(ptr %call.i.i, ptr %39, i32 %call15.i)
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then34.i, %if.end31.i.if.end35.i_crit_edge
  %41 = ptrtoint ptr %stream_buf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stream_buf.i, align 4
  tail call void @kvfree(ptr noundef %42) #14
  %43 = ptrtoint ptr %stream_buf.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i.i, ptr %stream_buf.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end35.i, %if.end24.i.if.end36.i_crit_edge
  %44 = ptrtoint ptr %stream_buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stream_buf.i, align 4
  %46 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %pos, align 8
  %idxprom.i = trunc i64 %47 to i32
  %arrayidx.i = getelementptr i8, ptr %45, i32 %idxprom.i
  %48 = call ptr @memcpy(ptr %arrayidx.i, ptr %buf, i32 %count.addr.0.i)
  %49 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fp, align 8
  %dentry39.i = getelementptr inbounds %struct.file, ptr %50, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %dentry39.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dentry39.i, align 4
  %53 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stream.i, align 4
  %call.i73.i = tail call i32 @vfs_setxattr(ptr noundef %22, ptr noundef %52, ptr noundef %54, ptr noundef %45, i32 noundef %29, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %tobool.not.i.i = icmp eq i32 %call.i73.i, 0
  br i1 %tobool.not.i.i, label %if.end36.i.if.then11_crit_edge, label %do.body.i.i

if.end36.i.if.then11_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11

do.body.i.i:                                      ; preds = %if.end36.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %55 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i.i = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %do.body.i.i.ksmbd_vfs_setxattr.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.ksmbd_vfs_setxattr.exit.i_crit_edge:  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ksmbd_vfs_setxattr.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %call.i73.i) #17
  br label %ksmbd_vfs_setxattr.exit.i

ksmbd_vfs_setxattr.exit.i:                        ; preds = %do.end.i.i, %do.body.i.i.ksmbd_vfs_setxattr.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %cmp43.i = icmp slt i32 %call.i73.i, 0
  br i1 %cmp43.i, label %ksmbd_vfs_setxattr.exit.i.ksmbd_vfs_stream_write.exit.thread_crit_edge, label %ksmbd_vfs_setxattr.exit.i.if.then11_crit_edge

ksmbd_vfs_setxattr.exit.i.if.then11_crit_edge:    ; preds = %ksmbd_vfs_setxattr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11

ksmbd_vfs_setxattr.exit.i.ksmbd_vfs_stream_write.exit.thread_crit_edge: ; preds = %ksmbd_vfs_setxattr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ksmbd_vfs_stream_write.exit.thread

ksmbd_vfs_stream_write.exit.thread:               ; preds = %ksmbd_vfs_setxattr.exit.i.ksmbd_vfs_stream_write.exit.thread_crit_edge, %if.then27.i.ksmbd_vfs_stream_write.exit.thread_crit_edge, %do.end21.i
  %err.0.i.ph = phi i32 [ -12, %if.then27.i.ksmbd_vfs_stream_write.exit.thread_crit_edge ], [ %call.i73.i, %ksmbd_vfs_setxattr.exit.i.ksmbd_vfs_stream_write.exit.thread_crit_edge ], [ %call15.i, %do.end21.i ]
  %56 = ptrtoint ptr %stream_buf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %stream_buf.i, align 4
  tail call void @kvfree(ptr noundef %57) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stream_buf.i) #14
  br label %out

if.then11:                                        ; preds = %ksmbd_vfs_setxattr.exit.i.if.then11_crit_edge, %if.end36.i.if.then11_crit_edge
  %58 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %pos, align 8
  %60 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fp, align 8
  %f_pos.i = getelementptr inbounds %struct.file, ptr %61, i32 0, i32 10
  %62 = ptrtoint ptr %f_pos.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %59, ptr %f_pos.i, align 8
  %63 = ptrtoint ptr %stream_buf.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %stream_buf.i, align 4
  tail call void @kvfree(ptr noundef %64) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stream_buf.i) #14
  %65 = ptrtoint ptr %written to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %count, ptr %written, align 4
  br label %out

if.end13:                                         ; preds = %if.end5
  %tcon = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %66 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tcon, align 8
  %posix_extensions = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %posix_extensions to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %posix_extensions, align 4, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool14.not = icmp eq i8 %69, 0
  br i1 %tobool14.not, label %if.then15, label %if.end13.if.end25_crit_edge

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then15:                                        ; preds = %if.end13
  %conv = zext i32 %count to i64
  %add = add nsw i64 %conv, -1
  %sub = add i64 %add, %3
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 2
  %70 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %f_inode.i.i, align 8
  %i_flctx.i = getelementptr inbounds %struct.inode, ptr %71, i32 0, i32 45
  %72 = ptrtoint ptr %i_flctx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_flctx.i, align 4
  %tobool.not.i92 = icmp eq ptr %73, null
  br i1 %tobool.not.i92, label %if.then15.if.end25_crit_edge, label %lor.lhs.false.i

if.then15.if.end25_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

lor.lhs.false.i:                                  ; preds = %if.then15
  %flc_posix.i = getelementptr inbounds %struct.file_lock_context, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %flc_posix.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %flc_posix.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !308
  %cmp.i.not.i.i = icmp eq ptr %75, %flc_posix.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

list_empty_careful.exit.i:                        ; preds = %lor.lhs.false.i
  %prev.i.i = getelementptr inbounds %struct.file_lock_context, ptr %73, i32 0, i32 2, i32 1
  %76 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %77, %flc_posix.i
  br i1 %cmp.i.not.i, label %list_empty_careful.exit.i.if.end25_crit_edge, label %list_empty_careful.exit.i.if.end.i_crit_edge

list_empty_careful.exit.i.if.end.i_crit_edge:     ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

list_empty_careful.exit.i.if.end25_crit_edge:     ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.end.i:                                         ; preds = %list_empty_careful.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull %73) #14
  %78 = ptrtoint ptr %flc_posix.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn56.i = load ptr, ptr %flc_posix.i, align 4
  %cmp.not57.i = icmp eq ptr %.pn56.i, %flc_posix.i
  br i1 %cmp.not57.i, label %if.end.i.check_lock_range.exit.thread98_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.check_lock_range.exit.thread98_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_lock_range.exit.thread98

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn58.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn56.i, %if.end.i.for.body.i_crit_edge ]
  %fl_end.i = getelementptr i8, ptr %.pn58.i, i32 116
  %79 = ptrtoint ptr %fl_end.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %fl_end.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %80, i64 %3)
  %cmp5.not.i = icmp slt i64 %80, %3
  br i1 %cmp5.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %fl_start.i = getelementptr i8, ptr %.pn58.i, i32 108
  %81 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %fl_start.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %82, i64 %sub)
  %cmp6.not.i = icmp sgt i64 %82, %sub
  br i1 %cmp6.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then7.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  %fl_type.i = getelementptr i8, ptr %.pn58.i, i32 40
  %83 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %fl_type.i, align 4
  %85 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values)
  switch i8 %84, label %if.then7.i.for.inc.i_crit_edge [
    i8 0, label %if.then7.i.do.end21_crit_edge
    i8 1, label %if.then22.i
  ]

if.then7.i.do.end21_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end21

if.then7.i.for.inc.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then22.i:                                      ; preds = %if.then7.i
  %fl_file.i = getelementptr i8, ptr %.pn58.i, i32 104
  %86 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fl_file.i, align 4
  %cmp23.not.i = icmp eq ptr %87, %15
  br i1 %cmp23.not.i, label %if.then22.i.for.inc.i_crit_edge, label %if.then22.i.do.end21_crit_edge

if.then22.i.do.end21_crit_edge:                   ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end21

if.then22.i.for.inc.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then22.i.for.inc.i_crit_edge, %if.then7.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %88 = ptrtoint ptr %.pn58.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn.i = load ptr, ptr %.pn58.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %flc_posix.i
  br i1 %cmp.not.i, label %for.inc.i.check_lock_range.exit.thread98_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.check_lock_range.exit.thread98_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_lock_range.exit.thread98

check_lock_range.exit.thread98:                   ; preds = %for.inc.i.check_lock_range.exit.thread98_crit_edge, %if.end.i.check_lock_range.exit.thread98_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull %73) #14
  br label %if.end25

do.end21:                                         ; preds = %if.then22.i.do.end21_crit_edge, %if.then7.i.do.end21_crit_edge
  %.str.141.sink.i = phi ptr [ @.str.141, %if.then22.i.do.end21_crit_edge ], [ @.str.138, %if.then7.i.do.end21_crit_edge ]
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.141.sink.i) #17
  tail call void @_raw_spin_unlock(ptr noundef nonnull %73) #14
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #17
  br label %out

if.end25:                                         ; preds = %check_lock_range.exit.thread98, %list_empty_careful.exit.i.if.end25_crit_edge, %if.then15.if.end25_crit_edge, %if.end13.if.end25_crit_edge
  tail call void @smb_break_all_levII_oplock(ptr noundef %work, ptr noundef %fp, i32 noundef 1) #14
  %call26 = tail call i32 @kernel_write(ptr noundef %15, ptr noundef %buf, i32 noundef %count, ptr noundef %pos) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %do.body29, label %if.end41

do.body29:                                        ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %89 = load i32, ptr @ksmbd_debug_types, align 4
  %and30 = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body29.out_crit_edge, label %do.end35

do.body29.out_crit_edge:                          ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #16
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %call26) #17
  br label %out

if.end41:                                         ; preds = %if.end25
  %90 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %pos, align 8
  %f_pos = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 10
  %92 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %f_pos, align 8
  %93 = ptrtoint ptr %written to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call26, ptr %written, align 4
  br i1 %sync, label %if.then43, label %if.end41.out_crit_edge

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then43:                                        ; preds = %if.end41
  %conv44101 = zext i32 %call26 to i64
  %add45 = add i64 %3, %conv44101
  %call46 = tail call i32 @vfs_fsync_range(ptr noundef %15, i64 noundef %3, i64 noundef %add45, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end52, label %if.then43.out_crit_edge

if.then43.out_crit_edge:                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.end52:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fp, align 8
  %dentry56 = getelementptr inbounds %struct.file, ptr %95, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %dentry56 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dentry56, align 4
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %97, i32 noundef %call46) #17
  br label %out

out:                                              ; preds = %do.end52, %if.then43.out_crit_edge, %if.end41.out_crit_edge, %do.end35, %do.body29.out_crit_edge, %do.end21, %if.then11, %ksmbd_vfs_stream_write.exit.thread, %do.end
  %err.0 = phi i32 [ 0, %if.then11 ], [ %call26, %do.end35 ], [ %call26, %do.body29.out_crit_edge ], [ %call46, %do.end52 ], [ %call46, %if.then43.out_crit_edge ], [ 0, %if.end41.out_crit_edge ], [ -11, %do.end21 ], [ -13, %do.end ], [ %err.0.i.ph, %ksmbd_vfs_stream_write.exit.thread ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smb_break_all_levII_oplock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_getattr(ptr noundef %path, ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vfs_getattr(ptr noundef %path, ptr noundef %stat, i32 noundef 2048, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %call) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_fsync(ptr noundef %work, i64 noundef %fid, i64 noundef %p_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ksmbd_lookup_fd_slow(ptr noundef %work, i64 noundef %fid, i64 noundef %p_id) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i64 noundef %fid) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 8
  %call2 = tail call i32 @vfs_fsync(ptr noundef %1, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %call2) #17
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  tail call void @ksmbd_fd_put(ptr noundef %work, ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end
  %retval.0 = phi i32 [ %call2, %if.end9 ], [ -2, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_lookup_fd_slow(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_fd_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_remove_file(ptr noundef %work, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #14
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !304
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !304
  %call = tail call i32 @ksmbd_override_fsids(ptr noundef %work) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tcon.i = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %3 = ptrtoint ptr %tcon.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tcon.i, align 8
  %share_conf1.i = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %share_conf1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %share_conf1.i, align 4
  %vfs_path.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %6, i32 0, i32 5
  %dentry.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %6, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dentry.i, align 4
  %9 = ptrtoint ptr %vfs_path.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vfs_path.i, align 4
  %call.i = call i32 @vfs_path_lookup(ptr noundef %8, ptr noundef %10, ptr noundef %name, i32 noundef 589824, ptr noundef nonnull %path) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end11, label %do.body

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %11 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.cleanup.sink.split_crit_edge, label %do.end

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name, i32 noundef %call.i) #17
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end
  %12 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %path, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %mnt_userns.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !305
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call13 = call ptr @dget_parent(ptr noundef %17) #14
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call13, i32 0, i32 5
  %20 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 25
  call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #14
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i, align 8
  %24 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %d_name.i, align 8
  %call2.i = call ptr @lookup_one(ptr noundef %15, ptr noundef %23, ptr noundef %call13, i32 noundef %25) #14
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %call2.i to i32
  br label %ksmbd_vfs_lock_parent.exit

if.end.i:                                         ; preds = %if.end11
  %cmp.not.i = icmp eq ptr %call2.i, %19
  br i1 %cmp.not.i, label %ksmbd_vfs_lock_parent.exit.thread, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dput(ptr noundef %call2.i) #14
  br label %ksmbd_vfs_lock_parent.exit

ksmbd_vfs_lock_parent.exit.thread:                ; preds = %if.end.i
  call void @dput(ptr noundef %19) #14
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_inode.i, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 12
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool21.not = icmp eq i32 %33, 0
  br i1 %tobool21.not, label %ksmbd_vfs_lock_parent.exit.thread.out_err_crit_edge, label %if.end23

ksmbd_vfs_lock_parent.exit.thread.out_err_crit_edge: ; preds = %ksmbd_vfs_lock_parent.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

ksmbd_vfs_lock_parent.exit:                       ; preds = %if.then5.i, %if.then.i
  %ret.0.i = phi i32 [ %26, %if.then.i ], [ -116, %if.then5.i ]
  %34 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i18.i = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i18.i) #14
  call void @dput(ptr noundef %call13) #14
  call void @path_put(ptr noundef nonnull %path) #14
  br label %cleanup.sink.split

if.end23:                                         ; preds = %ksmbd_vfs_lock_parent.exit.thread
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %30, align 8
  %38 = and i16 %37, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %38)
  %cmp = icmp eq i16 %38, 16384
  %39 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d_inode.i.i, align 8
  br i1 %cmp, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end23
  %call31 = call i32 @vfs_rmdir(ptr noundef %15, ptr noundef %40, ptr noundef %28) #14
  %41 = zext i32 %call31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %call31, label %do.body36 [
    i32 0, label %if.then28.out_err_crit_edge
    i32 -39, label %out_err.fold.split
  ]

if.then28.out_err_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

do.body36:                                        ; preds = %if.then28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %42 = load i32, ptr @ksmbd_debug_types, align 4
  %and37 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body36.out_err_crit_edge, label %do.end42

do.body36.out_err_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

do.end42:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #16
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name, i32 noundef %call31) #17
  br label %out_err

if.else:                                          ; preds = %if.end23
  %call51 = call i32 @vfs_unlink(ptr noundef %15, ptr noundef %40, ptr noundef %28, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.else.out_err_crit_edge, label %do.body54

if.else.out_err_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

do.body54:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %43 = load i32, ptr @ksmbd_debug_types, align 4
  %and55 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body54.out_err_crit_edge, label %do.end60

do.body54.out_err_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

do.end60:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #16
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name, i32 noundef %call51) #17
  br label %out_err

out_err.fold.split:                               ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

out_err:                                          ; preds = %out_err.fold.split, %do.end60, %do.body54.out_err_crit_edge, %if.else.out_err_crit_edge, %do.end42, %do.body36.out_err_crit_edge, %if.then28.out_err_crit_edge, %ksmbd_vfs_lock_parent.exit.thread.out_err_crit_edge
  %err.0 = phi i32 [ %call31, %do.end42 ], [ %call31, %do.body36.out_err_crit_edge ], [ %call31, %if.then28.out_err_crit_edge ], [ %call51, %do.end60 ], [ %call51, %do.body54.out_err_crit_edge ], [ 0, %if.else.out_err_crit_edge ], [ -2, %ksmbd_vfs_lock_parent.exit.thread.out_err_crit_edge ], [ -39, %out_err.fold.split ]
  %44 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i) #14
  call void @dput(ptr noundef %call13) #14
  call void @path_put(ptr noundef nonnull %path) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_err, %ksmbd_vfs_lock_parent.exit, %do.end, %do.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %err.0, %out_err ], [ %ret.0.i, %ksmbd_vfs_lock_parent.exit ], [ %call.i, %do.end ], [ %call.i, %do.body.cleanup.sink.split_crit_edge ]
  call void @ksmbd_revert_fsids(ptr noundef %work) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_override_fsids(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_kern_path(ptr nocapture noundef readonly %work, ptr noundef %name, i32 noundef %flags, ptr noundef %path, i1 noundef zeroext %caseless) local_unnamed_addr #0 align 64 {
entry:
  %readdir_data.i = alloca %struct.ksmbd_readdir_data, align 8
  %parent = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tcon = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcon, align 8
  %share_conf1 = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %share_conf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %share_conf1, align 4
  %or = or i32 %flags, 524288
  %vfs_path = getelementptr inbounds %struct.ksmbd_share_config, ptr %3, i32 0, i32 5
  %dentry = getelementptr inbounds %struct.ksmbd_share_config, ptr %3, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  %6 = ptrtoint ptr %vfs_path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vfs_path, align 4
  %call = tail call i32 @vfs_path_lookup(ptr noundef %5, ptr noundef %7, ptr noundef %name, i32 noundef %or, ptr noundef %path) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %8 = and i1 %tobool.not, %caseless
  br i1 %8, label %if.then4, label %entry.cleanup46_crit_edge

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup46

if.then4:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent) #14
  %9 = getelementptr inbounds %struct.path, ptr %parent, i32 0, i32 1
  %call5 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #14
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %cleanup39, label %if.end8

if.end8:                                          ; preds = %if.then4
  %call9 = tail call i32 @strlen(ptr noundef nonnull %call5) #19
  %10 = ptrtoint ptr %vfs_path to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %vfs_path, align 4
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %parent, align 8
  call void @path_get(ptr noundef nonnull %parent) #14
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %9, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %and.i.i86 = and i32 %16, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %and.i.i86)
  %cmp.i87 = icmp eq i32 %and.i.i86, 2097152
  br i1 %cmp.i87, label %while.body.lr.ph, label %if.end8.while.end_crit_edge

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end8
  %add.ptr = getelementptr i8, ptr %call5, i32 %call9
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %readdir_data.i, i32 0, i32 1
  %17 = getelementptr inbounds %struct.ksmbd_readdir_data, ptr %readdir_data.i, i32 0, i32 1
  %used.i = getelementptr inbounds %struct.ksmbd_readdir_data, ptr %readdir_data.i, i32 0, i32 2
  %dirent_count.i = getelementptr inbounds %struct.ksmbd_readdir_data, ptr %readdir_data.i, i32 0, i32 3
  %file_attr.i = getelementptr inbounds %struct.ksmbd_readdir_data, ptr %readdir_data.i, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %remain_len.088 = phi i32 [ %call9, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %idx.neg = sub i32 0, %remain_len.088
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %call14 = call ptr @strchrnul(ptr noundef %add.ptr13, i32 noundef 47) #14
  %sub.ptr.lhs.cast = ptrtoint ptr %call14 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %18 = ptrtoint ptr %call14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool15.not = icmp eq i8 %19, 0
  %cmp = icmp eq ptr %call14, %add.ptr13
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end18

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end18:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %readdir_data.i) #14
  %20 = ptrtoint ptr %readdir_data.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %readdir_data.i, align 8
  store ptr @__caseless_lookup, ptr %readdir_data.i, align 8
  %21 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %pos.i, align 8
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr13, ptr %17, align 8
  %23 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.ptr.sub, ptr %used.i, align 4
  %24 = ptrtoint ptr %dirent_count.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %dirent_count.i, align 8
  %25 = ptrtoint ptr %file_attr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %file_attr.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !294) #14
  %and.i.i73 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i73 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 99
  %30 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cred.i, align 16
  %call1.i = call ptr @dentry_open(ptr noundef nonnull %parent, i32 noundef 131072, ptr noundef %31) #14
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %call1.i to i32
  br label %ksmbd_vfs_lookup_in_dir.exit

if.end.i:                                         ; preds = %if.end18
  %call5.i = call i32 @iterate_dir(ptr noundef %call1.i, ptr noundef nonnull %readdir_data.i) #14
  %33 = ptrtoint ptr %dirent_count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dirent_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.not.i = icmp eq i32 %34, 0
  call void @fput(ptr noundef %call1.i) #14
  br i1 %cmp.not.i, label %if.end.i.ksmbd_vfs_lookup_in_dir.exit_crit_edge, label %ksmbd_vfs_lookup_in_dir.exit.thread

if.end.i.ksmbd_vfs_lookup_in_dir.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ksmbd_vfs_lookup_in_dir.exit

ksmbd_vfs_lookup_in_dir.exit.thread:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %readdir_data.i) #14
  call void @path_put(ptr noundef nonnull %parent) #14
  br label %if.end22

ksmbd_vfs_lookup_in_dir.exit:                     ; preds = %if.end.i.ksmbd_vfs_lookup_in_dir.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %32, %if.then.i ], [ %call5.i, %if.end.i.ksmbd_vfs_lookup_in_dir.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %readdir_data.i) #14
  call void @path_put(ptr noundef nonnull %parent) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool20.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool20.not, label %ksmbd_vfs_lookup_in_dir.exit.if.end22_crit_edge, label %ksmbd_vfs_lookup_in_dir.exit.cleanup39.thread_crit_edge

ksmbd_vfs_lookup_in_dir.exit.cleanup39.thread_crit_edge: ; preds = %ksmbd_vfs_lookup_in_dir.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup39.thread

ksmbd_vfs_lookup_in_dir.exit.if.end22_crit_edge:  ; preds = %ksmbd_vfs_lookup_in_dir.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.end22:                                         ; preds = %ksmbd_vfs_lookup_in_dir.exit.if.end22_crit_edge, %ksmbd_vfs_lookup_in_dir.exit.thread
  %35 = ptrtoint ptr %call14 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %call14, align 1
  %36 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dentry, align 4
  %38 = ptrtoint ptr %vfs_path to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vfs_path, align 4
  %call28 = call i32 @vfs_path_lookup(ptr noundef %37, ptr noundef %39, ptr noundef nonnull %call5, i32 noundef %or, ptr noundef nonnull %parent) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.else, label %if.end22.cleanup39.thread_crit_edge

if.end22.cleanup39.thread_crit_edge:              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup39.thread

if.else:                                          ; preds = %if.end22
  br i1 %tobool15.not, label %if.then32, label %cleanup

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %parent to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %parent, align 8
  %42 = ptrtoint ptr %path to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %41, ptr %path, align 4
  br label %cleanup39.thread

cleanup:                                          ; preds = %if.else
  %43 = ptrtoint ptr %call14 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 47, ptr %call14, align 1
  %add.neg = xor i32 %sub.ptr.sub, -1
  %sub = add i32 %remain_len.088, %add.neg
  %44 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %9, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %and.i.i = and i32 %47, 7340032
  %cmp.i = icmp eq i32 %and.i.i, 2097152
  br i1 %cmp.i, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end8.while.end_crit_edge
  call void @path_put(ptr noundef nonnull %parent) #14
  br label %cleanup39.thread

cleanup39.thread:                                 ; preds = %while.end, %if.then32, %if.end22.cleanup39.thread_crit_edge, %ksmbd_vfs_lookup_in_dir.exit.cleanup39.thread_crit_edge
  %err.2 = phi i32 [ -22, %while.end ], [ 0, %if.then32 ], [ %retval.0.i, %ksmbd_vfs_lookup_in_dir.exit.cleanup39.thread_crit_edge ], [ %call28, %if.end22.cleanup39.thread_crit_edge ]
  call void @kfree(ptr noundef nonnull %call5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent) #14
  br label %cleanup46

cleanup39:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent) #14
  br label %cleanup46

cleanup46:                                        ; preds = %cleanup39, %cleanup39.thread, %entry.cleanup46_crit_edge
  %retval.1 = phi i32 [ -12, %cleanup39 ], [ %call, %entry.cleanup46_crit_edge ], [ %err.2, %cleanup39.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_revert_fsids(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_rmdir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_link(ptr noundef %work, ptr noundef %oldname, ptr noundef %newname) local_unnamed_addr #0 align 64 {
entry:
  %oldpath = alloca %struct.path, align 4
  %newpath = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oldpath) #14
  %0 = ptrtoint ptr %oldpath to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %oldpath, align 4, !annotation !304
  %1 = getelementptr inbounds %struct.path, ptr %oldpath, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %newpath) #14
  %3 = ptrtoint ptr %newpath to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %newpath, align 4, !annotation !304
  %4 = getelementptr inbounds %struct.path, ptr %newpath, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !304
  %call = tail call i32 @ksmbd_override_fsids(ptr noundef %work) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kern_path(ptr noundef %oldname, i32 noundef 65536, ptr noundef nonnull %oldpath) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %oldname, i32 noundef %call1) #17
  br label %out1

if.end5:                                          ; preds = %if.end
  %tcon.i = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %6 = ptrtoint ptr %tcon.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tcon.i, align 8
  %share_conf.i = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %share_conf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %share_conf.i, align 4
  %call.i = call ptr @convert_to_unix_name(ptr noundef %9, ptr noundef %newname) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end5.if.then8_crit_edge, label %ksmbd_vfs_kern_path_create.exit

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

ksmbd_vfs_kern_path_create.exit:                  ; preds = %if.end5
  %call2.i = call ptr @kern_path_create(i32 noundef -100, ptr noundef nonnull %call.i, ptr noundef nonnull %newpath, i32 noundef 65568) #14
  call void @kfree(ptr noundef nonnull %call.i) #14
  %cmp.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ksmbd_vfs_kern_path_create.exit.if.then8_crit_edge, label %if.end15

ksmbd_vfs_kern_path_create.exit.if.then8_crit_edge: ; preds = %ksmbd_vfs_kern_path_create.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

if.then8:                                         ; preds = %ksmbd_vfs_kern_path_create.exit.if.then8_crit_edge, %if.end5.if.then8_crit_edge
  %retval.0.i63 = phi ptr [ %call2.i, %ksmbd_vfs_kern_path_create.exit.if.then8_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end5.if.then8_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i63 to i32
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %newname, i32 noundef %10) #17
  br label %out2

if.end15:                                         ; preds = %ksmbd_vfs_kern_path_create.exit
  %11 = ptrtoint ptr %oldpath to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %oldpath, align 4
  %13 = ptrtoint ptr %newpath to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %newpath, align 4
  %cmp.not = icmp eq ptr %12, %14
  br i1 %cmp.not, label %if.end23, label %do.end20

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef -18) #17
  br label %out3

if.end23:                                         ; preds = %if.end15
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %12, i32 0, i32 3
  %17 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %mnt_userns.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !305
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i, align 8
  %call29 = call i32 @vfs_link(ptr noundef %16, ptr noundef %18, ptr noundef %22, ptr noundef %call2.i, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end23.out3_crit_edge, label %do.body32

if.end23.out3_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %out3

do.body32:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %23 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %do.body32.out3_crit_edge, label %do.end37

do.body32.out3_crit_edge:                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #16
  br label %out3

do.end37:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #16
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call29) #17
  br label %out3

out3:                                             ; preds = %do.end37, %do.body32.out3_crit_edge, %if.end23.out3_crit_edge, %do.end20
  %err.0 = phi i32 [ -18, %do.end20 ], [ %call29, %do.end37 ], [ %call29, %do.body32.out3_crit_edge ], [ 0, %if.end23.out3_crit_edge ]
  call void @done_path_create(ptr noundef nonnull %newpath, ptr noundef %call2.i) #14
  br label %out2

out2:                                             ; preds = %out3, %if.then8
  %err.1 = phi i32 [ %10, %if.then8 ], [ %err.0, %out3 ]
  call void @path_put(ptr noundef nonnull %oldpath) #14
  br label %out1

out1:                                             ; preds = %out2, %do.end
  %err.2 = phi i32 [ %call1, %do.end ], [ %err.1, %out2 ]
  call void @ksmbd_revert_fsids(ptr noundef %work) #14
  br label %cleanup

cleanup:                                          ; preds = %out1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %out1 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %newpath) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oldpath) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_fp_rename(ptr noundef %work, ptr nocapture noundef readonly %fp, ptr noundef %newname) local_unnamed_addr #0 align 64 {
entry:
  %rd.i = alloca %struct.renamedata, align 4
  %dst_path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dst_path) #14
  %0 = ptrtoint ptr %dst_path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dst_path, align 4, !annotation !304
  %1 = getelementptr inbounds %struct.path, ptr %dst_path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !304
  %call.i = tail call ptr @strrchr(ptr noundef %newname, i32 noundef 47) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.extract_last_component.exit_crit_edge, label %land.lhs.true.i

entry.extract_last_component.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %extract_last_component.exit

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not.i = icmp eq i8 %4, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.extract_last_component.exit_crit_edge, label %if.then.i

land.lhs.true.i.extract_last_component.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %extract_last_component.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %call.i, align 1
  br label %extract_last_component.exit

extract_last_component.exit:                      ; preds = %if.then.i, %land.lhs.true.i.extract_last_component.exit_crit_edge, %entry.extract_last_component.exit_crit_edge
  %p.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ null, %land.lhs.true.i.extract_last_component.exit_crit_edge ], [ null, %entry.extract_last_component.exit_crit_edge ]
  %tobool.not = icmp eq ptr %p.0.i, null
  %spec.select = select i1 %tobool.not, ptr %newname, ptr %p.0.i
  %spec.select59 = select i1 %tobool.not, ptr @.str.56, ptr %newname
  %6 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fp, align 8
  %dentry = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry, align 4
  %call1 = tail call ptr @dget_parent(ptr noundef %9) #14
  %10 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fp, align 8
  %dentry4 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %dentry4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dentry4, align 4
  %tcon.i = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %14 = ptrtoint ptr %tcon.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tcon.i, align 8
  %share_conf1.i = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %share_conf1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %share_conf1.i, align 4
  %vfs_path.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %17, i32 0, i32 5
  %dentry.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %17, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dentry.i, align 4
  %20 = ptrtoint ptr %vfs_path.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vfs_path.i, align 4
  %call.i60 = call i32 @vfs_path_lookup(ptr noundef %19, ptr noundef %21, ptr noundef %spec.select59, i32 noundef 589826, ptr noundef nonnull %dst_path) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool6.not = icmp eq i32 %call.i60, 0
  br i1 %tobool6.not, label %if.end15, label %do.body

do.body:                                          ; preds = %extract_last_component.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %22 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %spec.select59, i32 noundef %call.i60) #17
  br label %out

if.end15:                                         ; preds = %extract_last_component.exit
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call17 = call ptr @lock_rename(ptr noundef %call1, ptr noundef %24) #14
  %tobool.not.i62 = icmp eq ptr %13, null
  br i1 %tobool.not.i62, label %if.end15.dget.exit_crit_edge, label %if.then.i63

if.end15.dget.exit_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %dget.exit

if.then.i63:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #14
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i63, %if.end15.dget.exit_crit_edge
  %tobool.not.i64 = icmp eq ptr %24, null
  br i1 %tobool.not.i64, label %dget.exit.dget.exit67_crit_edge, label %if.then.i66

dget.exit.dget.exit67_crit_edge:                  ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %dget.exit67

if.then.i66:                                      ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref.i65 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i65) #14
  br label %dget.exit67

dget.exit67:                                      ; preds = %if.then.i66, %dget.exit.dget.exit67_crit_edge
  %25 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fp, align 8
  %f_path.i = getelementptr inbounds %struct.file, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f_path.i, align 8
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !305
  %d_name = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 8
  %33 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %d_name, align 8
  %call23 = call ptr @lookup_one(ptr noundef %30, ptr noundef %32, ptr noundef %call1, i32 noundef %34) #14
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end27

if.then25:                                        ; preds = %dget.exit67
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %call23 to i32
  br label %out_lock

if.end27:                                         ; preds = %dget.exit67
  %cmp.not = icmp eq ptr %call23, %13
  br i1 %cmp.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  call void @dput(ptr noundef %call23) #14
  br label %out_lock

if.end29:                                         ; preds = %if.end27
  call void @dput(ptr noundef %13) #14
  %36 = ptrtoint ptr %dst_path to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dst_path, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %mnt_userns.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !305
  %40 = ptrtoint ptr %tcon.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tcon.i, align 8
  %posix_extensions.i = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %posix_extensions.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %posix_extensions.i, align 4, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i69 = icmp eq i8 %43, 0
  br i1 %tobool.not.i69, label %if.then.i70, label %if.end29.if.end3.i_crit_edge

if.end29.if.end3.i_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3.i

if.then.i70:                                      ; preds = %if.end29
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i.i) #14
  %d_subdirs.i.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 14
  %44 = ptrtoint ptr %d_subdirs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn33.i.i = load ptr, ptr %d_subdirs.i.i, align 8
  %cmp.not34.i.i = icmp eq ptr %.pn33.i.i, %d_subdirs.i.i
  br i1 %cmp.not34.i.i, label %if.then.i70.ksmbd_validate_entry_in_use.exit.i_crit_edge, label %if.then.i70.for.body.i.i_crit_edge

if.then.i70.for.body.i.i_crit_edge:               ; preds = %if.then.i70
  br label %for.body.i.i

if.then.i70.ksmbd_validate_entry_in_use.exit.i_crit_edge: ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #16
  br label %ksmbd_validate_entry_in_use.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i70.for.body.i.i_crit_edge
  %.pn35.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn33.i.i, %if.then.i70.for.body.i.i_crit_edge ]
  %d_inode.i.i.i = getelementptr i8, ptr %.pn35.i.i, i32 -112
  %45 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %d_inode.i.i.i, align 8
  %cmp.i.i.i = icmp eq ptr %46, null
  br i1 %cmp.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %call3.i.i = call ptr @ksmbd_lookup_fd_inode(ptr noundef nonnull %46) #14
  %tobool.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %47 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i.i = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then4.i.i.out_lock_crit_edge, label %do.end.i.i

if.then4.i.i.out_lock_crit_edge:                  ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_lock

do.end.i.i:                                       ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153) #17
  br label %out_lock

for.inc.i.i:                                      ; preds = %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %48 = ptrtoint ptr %.pn35.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i.i = load ptr, ptr %.pn35.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %d_subdirs.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.ksmbd_validate_entry_in_use.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.ksmbd_validate_entry_in_use.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ksmbd_validate_entry_in_use.exit.i

ksmbd_validate_entry_in_use.exit.i:               ; preds = %for.inc.i.i.ksmbd_validate_entry_in_use.exit.i_crit_edge, %if.then.i70.ksmbd_validate_entry_in_use.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i) #14
  br label %if.end3.i

if.end3.i:                                        ; preds = %ksmbd_validate_entry_in_use.exit.i, %if.end29.if.end3.i_crit_edge
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call1, i32 0, i32 5
  %49 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.i = icmp eq ptr %50, null
  br i1 %cmp.i.i, label %if.end3.i.out_lock_crit_edge, label %if.end6.i

if.end3.i.out_lock_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_lock

if.end6.i:                                        ; preds = %if.end3.i
  %d_inode.i68.i = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 5
  %51 = ptrtoint ptr %d_inode.i68.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %d_inode.i68.i, align 8
  %cmp.i69.i = icmp eq ptr %52, null
  br i1 %cmp.i69.i, label %if.end6.i.out_lock_crit_edge, label %if.end9.i

if.end6.i.out_lock_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_lock

if.end9.i:                                        ; preds = %if.end6.i
  %d_inode.i70.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %53 = ptrtoint ptr %d_inode.i70.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %d_inode.i70.i, align 8
  %cmp.i71.i = icmp eq ptr %54, null
  br i1 %cmp.i71.i, label %if.end9.i.out_lock_crit_edge, label %if.end12.i

if.end9.i.out_lock_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_lock

if.end12.i:                                       ; preds = %if.end9.i
  %cmp.i71 = icmp eq ptr %13, %call17
  br i1 %cmp.i71, label %if.end12.i.out_lock_crit_edge, label %if.end14.i

if.end12.i.out_lock_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_lock

if.end14.i:                                       ; preds = %if.end12.i
  %call15.i = call i32 @ksmbd_override_fsids(ptr noundef %work) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.out_lock_crit_edge

if.end14.i.out_lock_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_lock

if.end18.i:                                       ; preds = %if.end14.i
  %call19.i = call i32 @strlen(ptr noundef %spec.select) #20
  %call20.i = call ptr @lookup_one(ptr noundef %39, ptr noundef %spec.select, ptr noundef %24, i32 noundef %call19.i) #14
  %cmp.i72.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72.i, label %do.end.i, label %if.end25.i

do.end.i:                                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %call20.i to i32
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef %spec.select, i32 noundef %55) #17
  br label %out.i

if.end25.i:                                       ; preds = %if.end18.i
  %cmp26.not.i = icmp eq ptr %call20.i, %call17
  br i1 %cmp26.not.i, label %if.end25.i.do.end37.i_crit_edge, label %land.lhs.true.i72

if.end25.i.do.end37.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end37.i

land.lhs.true.i72:                                ; preds = %if.end25.i
  %d_inode.i73.i = getelementptr inbounds %struct.dentry, ptr %call20.i, i32 0, i32 5
  %56 = ptrtoint ptr %d_inode.i73.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %d_inode.i73.i, align 8
  %cmp.i74.not.i = icmp eq ptr %57, null
  br i1 %cmp.i74.not.i, label %if.end32.i, label %land.lhs.true.i72.do.end37.i_crit_edge

land.lhs.true.i72.do.end37.i_crit_edge:           ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end37.i

if.end32.i:                                       ; preds = %land.lhs.true.i72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rd.i) #14
  %58 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 1
  %59 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 2
  %60 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 3
  %61 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 4
  %62 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 5
  %63 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 6
  %64 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 7
  %65 = ptrtoint ptr %rd.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %30, ptr %rd.i, align 4
  %66 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %d_inode.i.i, align 8
  %68 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %58, align 4
  %69 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %13, ptr %59, align 4
  %70 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %39, ptr %60, align 4
  %71 = ptrtoint ptr %d_inode.i68.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %d_inode.i68.i, align 8
  %73 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %61, align 4
  %74 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call20.i, ptr %62, align 4
  %75 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %63, align 4
  %76 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %64, align 4
  %call31.i = call i32 @vfs_rename(ptr noundef nonnull %rd.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rd.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool33.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool33.not.i, label %if.end32.i.if.end40.i_crit_edge, label %if.end32.i.do.end37.i_crit_edge

if.end32.i.do.end37.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end37.i

if.end32.i.if.end40.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.i

do.end37.i:                                       ; preds = %if.end32.i.do.end37.i_crit_edge, %land.lhs.true.i72.do.end37.i_crit_edge, %if.end25.i.do.end37.i_crit_edge
  %err.081.i = phi i32 [ %call31.i, %if.end32.i.do.end37.i_crit_edge ], [ -39, %land.lhs.true.i72.do.end37.i_crit_edge ], [ -39, %if.end25.i.do.end37.i_crit_edge ]
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, i32 noundef %err.081.i) #17
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end37.i, %if.end32.i.if.end40.i_crit_edge
  %err.082.i = phi i32 [ %err.081.i, %do.end37.i ], [ 0, %if.end32.i.if.end40.i_crit_edge ]
  %tobool41.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool41.not.i, label %if.end40.i.out.i_crit_edge, label %if.then42.i

if.end40.i.out.i_crit_edge:                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.then42.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dput(ptr noundef nonnull %call20.i) #14
  br label %out.i

out.i:                                            ; preds = %if.then42.i, %if.end40.i.out.i_crit_edge, %do.end.i
  %err.1.i = phi i32 [ %55, %do.end.i ], [ %err.082.i, %if.then42.i ], [ %err.082.i, %if.end40.i.out.i_crit_edge ]
  call void @ksmbd_revert_fsids(ptr noundef %work) #14
  br label %out_lock

out_lock:                                         ; preds = %out.i, %if.end14.i.out_lock_crit_edge, %if.end12.i.out_lock_crit_edge, %if.end9.i.out_lock_crit_edge, %if.end6.i.out_lock_crit_edge, %if.end3.i.out_lock_crit_edge, %do.end.i.i, %if.then4.i.i.out_lock_crit_edge, %if.then28, %if.then25
  %err.0 = phi i32 [ %35, %if.then25 ], [ -116, %if.then28 ], [ %err.1.i, %out.i ], [ -2, %if.end3.i.out_lock_crit_edge ], [ -2, %if.end6.i.out_lock_crit_edge ], [ -2, %if.end9.i.out_lock_crit_edge ], [ -22, %if.end12.i.out_lock_crit_edge ], [ -12, %if.end14.i.out_lock_crit_edge ], [ -13, %do.end.i.i ], [ -13, %if.then4.i.i.out_lock_crit_edge ]
  call void @dput(ptr noundef %13) #14
  call void @dput(ptr noundef %24) #14
  call void @unlock_rename(ptr noundef %call1, ptr noundef %24) #14
  call void @path_put(ptr noundef nonnull %dst_path) #14
  br label %out

out:                                              ; preds = %out_lock, %do.end, %do.body.out_crit_edge
  %err.1 = phi i32 [ %call.i60, %do.end ], [ %call.i60, %do.body.out_crit_edge ], [ %err.0, %out_lock ]
  call void @dput(ptr noundef %call1) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dst_path) #14
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lock_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_truncate(ptr noundef %work, ptr noundef %fp, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp, align 8
  tail call void @smb_break_all_levII_oplock(ptr noundef %work, ptr noundef %fp, i32 noundef 1) #14
  %tcon = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %2 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcon, align 8
  %posix_extensions = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %posix_extensions to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %posix_extensions, align 4, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then:                                          ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %size)
  %cmp = icmp sgt i64 %9, %size
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %i_flctx.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 45
  %10 = ptrtoint ptr %i_flctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_flctx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then2.if.end12_crit_edge, label %lor.lhs.false.i

if.then2.if.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

lor.lhs.false.i:                                  ; preds = %if.then2
  %flc_posix.i = getelementptr inbounds %struct.file_lock_context, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %flc_posix.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %flc_posix.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !308
  %cmp.i.not.i.i = icmp eq ptr %13, %flc_posix.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

list_empty_careful.exit.i:                        ; preds = %lor.lhs.false.i
  %prev.i.i = getelementptr inbounds %struct.file_lock_context, ptr %11, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %flc_posix.i
  br i1 %cmp.i.not.i, label %list_empty_careful.exit.i.if.end12_crit_edge, label %list_empty_careful.exit.i.if.end.i_crit_edge

list_empty_careful.exit.i.if.end.i_crit_edge:     ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

list_empty_careful.exit.i.if.end12_crit_edge:     ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end.i:                                         ; preds = %list_empty_careful.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull %11) #14
  %16 = ptrtoint ptr %flc_posix.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn56.i = load ptr, ptr %flc_posix.i, align 4
  %cmp.not57.i = icmp eq ptr %.pn56.i, %flc_posix.i
  br i1 %cmp.not57.i, label %if.end.i.if.end12.sink.split_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end12.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.sink.split

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn58.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn56.i, %if.end.i.for.body.i_crit_edge ]
  %fl_end.i = getelementptr i8, ptr %.pn58.i, i32 116
  %17 = ptrtoint ptr %fl_end.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %fl_end.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %size)
  %cmp5.not.i = icmp slt i64 %18, %size
  br i1 %cmp5.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %fl_start.i = getelementptr i8, ptr %.pn58.i, i32 108
  %19 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %fl_start.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %9)
  %cmp6.not.i.not = icmp slt i64 %20, %9
  br i1 %cmp6.not.i.not, label %if.then7.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  %fl_type.i = getelementptr i8, ptr %.pn58.i, i32 40
  %21 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fl_type.i, align 4
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.158)
  switch i8 %22, label %if.then7.i.for.inc.i_crit_edge [
    i8 0, label %if.then7.i.if.end.sink.split_crit_edge
    i8 1, label %if.then22.i
  ]

if.then7.i.if.end.sink.split_crit_edge:           ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split

if.then7.i.for.inc.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then22.i:                                      ; preds = %if.then7.i
  %fl_file.i = getelementptr i8, ptr %.pn58.i, i32 104
  %24 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fl_file.i, align 4
  %cmp23.not.i = icmp eq ptr %25, %1
  br i1 %cmp23.not.i, label %if.then22.i.for.inc.i_crit_edge, label %if.then22.i.if.end.sink.split_crit_edge

if.then22.i.if.end.sink.split_crit_edge:          ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split

if.then22.i.for.inc.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then22.i.for.inc.i_crit_edge, %if.then7.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %26 = ptrtoint ptr %.pn58.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i = load ptr, ptr %.pn58.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %flc_posix.i
  br i1 %cmp.not.i, label %for.inc.i.if.end12.sink.split_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.if.end12.sink.split_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.sink.split

if.else:                                          ; preds = %if.then
  %sub6 = add i64 %size, -1
  %i_flctx.i39 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 45
  %27 = ptrtoint ptr %i_flctx.i39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_flctx.i39, align 4
  %tobool.not.i40 = icmp eq ptr %28, null
  br i1 %tobool.not.i40, label %if.else.if.end12_crit_edge, label %lor.lhs.false.i43

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

lor.lhs.false.i43:                                ; preds = %if.else
  %flc_posix.i41 = getelementptr inbounds %struct.file_lock_context, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %flc_posix.i41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %flc_posix.i41, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !308
  %cmp.i.not.i.i42 = icmp eq ptr %30, %flc_posix.i41
  br i1 %cmp.i.not.i.i42, label %list_empty_careful.exit.i46, label %lor.lhs.false.i43.if.end.i49_crit_edge

lor.lhs.false.i43.if.end.i49_crit_edge:           ; preds = %lor.lhs.false.i43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i49

list_empty_careful.exit.i46:                      ; preds = %lor.lhs.false.i43
  %prev.i.i44 = getelementptr inbounds %struct.file_lock_context, ptr %28, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %prev.i.i44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i44, align 4
  %cmp.i.not.i45 = icmp eq ptr %32, %flc_posix.i41
  br i1 %cmp.i.not.i45, label %list_empty_careful.exit.i46.if.end12_crit_edge, label %list_empty_careful.exit.i46.if.end.i49_crit_edge

list_empty_careful.exit.i46.if.end.i49_crit_edge: ; preds = %list_empty_careful.exit.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i49

list_empty_careful.exit.i46.if.end12_crit_edge:   ; preds = %list_empty_careful.exit.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end.i49:                                       ; preds = %list_empty_careful.exit.i46.if.end.i49_crit_edge, %lor.lhs.false.i43.if.end.i49_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull %28) #14
  %33 = ptrtoint ptr %flc_posix.i41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn56.i47 = load ptr, ptr %flc_posix.i41, align 4
  %cmp.not57.i48 = icmp eq ptr %.pn56.i47, %flc_posix.i41
  br i1 %cmp.not57.i48, label %if.end.i49.if.end12.sink.split_crit_edge, label %if.end.i49.for.body.i54_crit_edge

if.end.i49.for.body.i54_crit_edge:                ; preds = %if.end.i49
  br label %for.body.i54

if.end.i49.if.end12.sink.split_crit_edge:         ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.sink.split

for.body.i54:                                     ; preds = %for.inc.i66.for.body.i54_crit_edge, %if.end.i49.for.body.i54_crit_edge
  %.pn58.i51 = phi ptr [ %.pn.i64, %for.inc.i66.for.body.i54_crit_edge ], [ %.pn56.i47, %if.end.i49.for.body.i54_crit_edge ]
  %fl_end.i52 = getelementptr i8, ptr %.pn58.i51, i32 116
  %34 = ptrtoint ptr %fl_end.i52 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %fl_end.i52, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %9)
  %cmp5.not.i53 = icmp slt i64 %35, %9
  br i1 %cmp5.not.i53, label %for.body.i54.for.inc.i66_crit_edge, label %land.lhs.true.i57

for.body.i54.for.inc.i66_crit_edge:               ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i66

land.lhs.true.i57:                                ; preds = %for.body.i54
  %fl_start.i55 = getelementptr i8, ptr %.pn58.i51, i32 108
  %36 = ptrtoint ptr %fl_start.i55 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %fl_start.i55, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %sub6)
  %cmp6.not.i56 = icmp sgt i64 %37, %sub6
  br i1 %cmp6.not.i56, label %land.lhs.true.i57.for.inc.i66_crit_edge, label %if.then7.i59

land.lhs.true.i57.for.inc.i66_crit_edge:          ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i66

if.then7.i59:                                     ; preds = %land.lhs.true.i57
  %fl_type.i58 = getelementptr i8, ptr %.pn58.i51, i32 40
  %38 = ptrtoint ptr %fl_type.i58 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fl_type.i58, align 4
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.159)
  switch i8 %39, label %if.then7.i59.for.inc.i66_crit_edge [
    i8 0, label %if.then7.i59.if.end.sink.split_crit_edge
    i8 1, label %if.then22.i63
  ]

if.then7.i59.if.end.sink.split_crit_edge:         ; preds = %if.then7.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split

if.then7.i59.for.inc.i66_crit_edge:               ; preds = %if.then7.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i66

if.then22.i63:                                    ; preds = %if.then7.i59
  %fl_file.i61 = getelementptr i8, ptr %.pn58.i51, i32 104
  %41 = ptrtoint ptr %fl_file.i61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fl_file.i61, align 4
  %cmp23.not.i62 = icmp eq ptr %42, %1
  br i1 %cmp23.not.i62, label %if.then22.i63.for.inc.i66_crit_edge, label %if.then22.i63.if.end.sink.split_crit_edge

if.then22.i63.if.end.sink.split_crit_edge:        ; preds = %if.then22.i63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split

if.then22.i63.for.inc.i66_crit_edge:              ; preds = %if.then22.i63
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i66

for.inc.i66:                                      ; preds = %if.then22.i63.for.inc.i66_crit_edge, %if.then7.i59.for.inc.i66_crit_edge, %land.lhs.true.i57.for.inc.i66_crit_edge, %for.body.i54.for.inc.i66_crit_edge
  %43 = ptrtoint ptr %.pn58.i51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i64 = load ptr, ptr %.pn58.i51, align 4
  %cmp.not.i65 = icmp eq ptr %.pn.i64, %flc_posix.i41
  br i1 %cmp.not.i65, label %for.inc.i66.if.end12.sink.split_crit_edge, label %for.inc.i66.for.body.i54_crit_edge

for.inc.i66.for.body.i54_crit_edge:               ; preds = %for.inc.i66
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i54

for.inc.i66.if.end12.sink.split_crit_edge:        ; preds = %for.inc.i66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.sink.split

if.end.sink.split:                                ; preds = %if.then22.i63.if.end.sink.split_crit_edge, %if.then7.i59.if.end.sink.split_crit_edge, %if.then22.i.if.end.sink.split_crit_edge, %if.then7.i.if.end.sink.split_crit_edge
  %.str.141.sink.i67.sink = phi ptr [ @.str.141, %if.then22.i.if.end.sink.split_crit_edge ], [ @.str.138, %if.then7.i.if.end.sink.split_crit_edge ], [ @.str.141, %if.then22.i63.if.end.sink.split_crit_edge ], [ @.str.138, %if.then7.i59.if.end.sink.split_crit_edge ]
  %.sink.ph = phi ptr [ %11, %if.then7.i.if.end.sink.split_crit_edge ], [ %11, %if.then22.i.if.end.sink.split_crit_edge ], [ %28, %if.then7.i59.if.end.sink.split_crit_edge ], [ %28, %if.then22.i63.if.end.sink.split_crit_edge ]
  %call30.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.141.sink.i67.sink) #17
  tail call void @_raw_spin_unlock(ptr noundef nonnull %.sink.ph) #14
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #17
  br label %cleanup22

if.end12.sink.split:                              ; preds = %for.inc.i66.if.end12.sink.split_crit_edge, %if.end.i49.if.end12.sink.split_crit_edge, %for.inc.i.if.end12.sink.split_crit_edge, %if.end.i.if.end12.sink.split_crit_edge
  %.sink.sink = phi ptr [ %11, %if.end.i.if.end12.sink.split_crit_edge ], [ %28, %if.end.i49.if.end12.sink.split_crit_edge ], [ %11, %for.inc.i.if.end12.sink.split_crit_edge ], [ %28, %for.inc.i66.if.end12.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull %.sink.sink) #14
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %list_empty_careful.exit.i46.if.end12_crit_edge, %if.else.if.end12_crit_edge, %list_empty_careful.exit.i.if.end12_crit_edge, %if.then2.if.end12_crit_edge, %entry.if.end12_crit_edge
  %f_path = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1
  %call13 = tail call i32 @vfs_truncate(ptr noundef %f_path, i64 noundef %size) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup22_crit_edge, label %do.end18

if.end12.cleanup22_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup22

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %filename = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 1
  %44 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %filename, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %45, i32 noundef %call13) #17
  br label %cleanup22

cleanup22:                                        ; preds = %do.end18, %if.end12.cleanup22_crit_edge, %if.end.sink.split
  %retval.1 = phi i32 [ -11, %if.end.sink.split ], [ %call13, %do.end18 ], [ 0, %if.end12.cleanup22_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_truncate(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_listxattr(ptr noundef %dentry, ptr nocapture noundef writeonly %list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vfs_listxattr(ptr noundef %dentry, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %call, i32 noundef 3520, i32 noundef -1) #18
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %list, align 4
  %call4 = tail call i32 @vfs_listxattr(ptr noundef %dentry, ptr noundef nonnull %call.i, i32 noundef %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.body, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %1 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.do.end13_crit_edge, label %do.end

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #17
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body.do.end13_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i) #14
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %list, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call4, %do.end13 ], [ %call4, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_listxattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_getxattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef %xattr_name, ptr nocapture noundef writeonly %xattr_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xattr_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %xattr_buf, align 4
  %call.i = tail call i32 @vfs_getxattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %add = add nuw i32 %call.i, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #18
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end3

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end8.i
  %call4 = tail call i32 @vfs_getxattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef nonnull %call9.i, i32 noundef %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %xattr_buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9.i, ptr %xattr_buf, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %call4, %if.else ], [ %call4, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_setxattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef %attr_name, ptr noundef %attr_value, i32 noundef %attr_size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vfs_setxattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef %attr_name, ptr noundef %attr_value, i32 noundef %attr_size, i32 noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.if.end7_crit_edge, label %do.end

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %call) #17
  br label %if.end7

if.end7:                                          ; preds = %do.end, %do.body.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_setxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_vfs_set_fadvise(ptr noundef %filp, i32 noundef %option) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %option)
  %tobool.not = icmp eq i32 %option, 0
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %option, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %or = or i32 %3, 1052672
  store i32 %or, ptr %f_flags, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %and4 = and i32 %option, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else10, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call = tail call ptr @inode_to_bdi(ptr noundef %5) #14
  %ra_pages = getelementptr inbounds %struct.backing_dev_info, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %ra_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ra_pages, align 4
  %mul = shl i32 %7, 1
  %ra_pages7 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 13, i32 3
  %8 = ptrtoint ptr %ra_pages7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %ra_pages7, align 4
  %f_lock = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock) #14
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %9 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_mode, align 8
  %and8 = and i32 %10, -4097
  store i32 %and8, ptr %f_mode, align 8
  tail call void @_raw_spin_unlock(ptr noundef %f_lock) #14
  br label %cleanup

if.else10:                                        ; preds = %if.else
  %and11 = and i32 %option, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else10.cleanup_crit_edge, label %if.then13

if.else10.cleanup_crit_edge:                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then13:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #16
  %f_lock14 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock14) #14
  %f_mode15 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %11 = ptrtoint ptr %f_mode15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_mode15, align 8
  %or16 = or i32 %12, 4096
  store i32 %or16, ptr %f_mode15, align 8
  tail call void @_raw_spin_unlock(ptr noundef %f_lock14) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.else10.cleanup_crit_edge, %if.then6, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_zero_data(ptr noundef %work, ptr noundef %fp, i64 noundef %off, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @smb_break_all_levII_oplock(ptr noundef %work, ptr noundef %fp, i32 noundef 1) #14
  %f_ci = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 5
  %0 = ptrtoint ptr %f_ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_ci, align 4
  %m_fattr = getelementptr inbounds %struct.ksmbd_inode, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %m_fattr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_fattr, align 4
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %4 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fp, align 8
  %. = select i1 %tobool.not, i32 16, i32 3
  %call2 = tail call i32 @vfs_fallocate(ptr noundef %5, i32 noundef %., i64 noundef %off, i64 noundef %len) #14
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fallocate(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_fqar_lseek(ptr nocapture noundef readonly %fp, i64 noundef %start, i64 noundef %length, ptr nocapture noundef writeonly %ranges, i32 noundef %in_count, ptr nocapture noundef %out_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %s_maxbytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %start)
  %cmp = icmp slt i64 %7, %start
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_count)
  %tobool.not = icmp eq i32 %in_count, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %length)
  %cmp4 = icmp slt i64 %7, %length
  %sub = sub i64 %7, %length
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %start)
  %cmp5 = icmp slt i64 %sub, %start
  %or.cond = or i1 %cmp4, %cmp5
  %sub7 = sub i64 %7, %start
  %length.addr.0 = select i1 %or.cond, i64 %sub7, i64 %length
  %add = add i64 %length.addr.0, %start
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %9)
  %cmp9 = icmp sgt i64 %add, %9
  %sub12 = sub i64 %9, %start
  %length.addr.1 = select i1 %cmp9, i64 %sub12, i64 %length.addr.0
  %10 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %out_count, align 4
  %add14 = add i64 %length.addr.1, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %add14, i64 %start)
  %cmp1598 = icmp sgt i64 %add14, %start
  br i1 %cmp1598, label %land.rhs.lr.ph, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %if.end3
  %f_op = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %if.end43.land.rhs_crit_edge, %land.rhs.lr.ph
  %start.addr.099 = phi i64 [ %start, %land.rhs.lr.ph ], [ %call30, %if.end43.land.rhs_crit_edge ]
  %11 = ptrtoint ptr %out_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %out_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %in_count)
  %cmp16 = icmp ult i32 %12, %in_count
  br i1 %cmp16, label %while.body, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %13 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f_op, align 4
  %llseek = getelementptr inbounds %struct.file_operations, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %llseek to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %llseek, align 4
  %call17 = tail call i64 %16(ptr noundef %1, i64 noundef %start.addr.099, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call17)
  %cmp18 = icmp slt i64 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6, i64 %call17)
  %cmp20.not = icmp eq i64 %call17, -6
  %conv = trunc i64 %call17 to i32
  %spec.select = select i1 %cmp20.not, i32 0, i32 %conv
  br label %cleanup

if.end23:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add14)
  %cmp24.not = icmp slt i64 %call17, %add14
  br i1 %cmp24.not, label %if.end27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %17 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %f_op, align 4
  %llseek29 = getelementptr inbounds %struct.file_operations, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %llseek29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %llseek29, align 4
  %call30 = tail call i64 %20(ptr noundef %1, i64 noundef %call17, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call30)
  %cmp31 = icmp slt i64 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6, i64 %call30)
  %cmp34.not = icmp eq i64 %call30, -6
  %conv37 = trunc i64 %call30 to i32
  %spec.select96 = select i1 %cmp34.not, i32 0, i32 %conv37
  br label %cleanup

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %call30)
  %cmp39.not = icmp ult i64 %call17, %call30
  br i1 %cmp39.not, label %if.end43, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end43:                                         ; preds = %if.else
  %21 = tail call i64 @llvm.bswap.i64(i64 %call17)
  %22 = ptrtoint ptr %out_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %out_count, align 4
  %arrayidx = getelementptr %struct.file_allocated_range_buffer, ptr %ranges, i32 %23
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %21, ptr %arrayidx, align 1
  %25 = tail call i64 @llvm.smin.i64(i64 %call30, i64 %add14)
  %sub46 = sub i64 %25, %call17
  %26 = tail call i64 @llvm.bswap.i64(i64 %sub46)
  %27 = ptrtoint ptr %out_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %out_count, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %out_count, align 4
  %length48 = getelementptr %struct.file_allocated_range_buffer, ptr %ranges, i32 %28, i32 1
  %29 = ptrtoint ptr %length48 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %26, ptr %length48, align 1
  %cmp15 = icmp slt i64 %call30, %add14
  br i1 %cmp15, label %if.end43.land.rhs_crit_edge, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end43.land.rhs_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

cleanup:                                          ; preds = %if.end43.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then33, %if.end23.cleanup_crit_edge, %if.then19, %land.rhs.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -27, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %if.then19 ], [ %spec.select96, %if.then33 ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_remove_xattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef %attr_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vfs_removexattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef %attr_name) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_removexattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_unlink(ptr noundef %user_ns, ptr noundef %dir, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #14
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 8
  %4 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d_name.i, align 8
  %call2.i = tail call ptr @lookup_one(ptr noundef %user_ns, ptr noundef %3, ptr noundef %dir, i32 noundef %5) #14
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %call2.i to i32
  br label %ksmbd_vfs_lock_parent.exit

if.end.i:                                         ; preds = %entry
  %cmp.not.i = icmp eq ptr %call2.i, %dentry
  br i1 %cmp.not.i, label %ksmbd_vfs_lock_parent.exit.thread, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dput(ptr noundef %call2.i) #14
  br label %ksmbd_vfs_lock_parent.exit

ksmbd_vfs_lock_parent.exit.thread:                ; preds = %if.end.i
  tail call void @dput(ptr noundef %dentry) #14
  %tobool.not.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i, label %ksmbd_vfs_lock_parent.exit.thread.dget.exit_crit_edge, label %if.then.i36

ksmbd_vfs_lock_parent.exit.thread.dget.exit_crit_edge: ; preds = %ksmbd_vfs_lock_parent.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %dget.exit

ksmbd_vfs_lock_parent.exit:                       ; preds = %if.then5.i, %if.then.i
  %ret.0.i = phi i32 [ %6, %if.then.i ], [ -116, %if.then5.i ]
  %7 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i18.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i18.i) #14
  br label %cleanup

if.then.i36:                                      ; preds = %ksmbd_vfs_lock_parent.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #14
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i36, %ksmbd_vfs_lock_parent.exit.thread.dget.exit_crit_edge
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 8
  %13 = and i16 %12, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %13)
  %cmp = icmp eq i16 %13, 16384
  %14 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i.i, align 8
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call i32 @vfs_rmdir(ptr noundef %user_ns, ptr noundef %15, ptr noundef %dentry) #14
  br label %if.end9

if.else:                                          ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = tail call i32 @vfs_unlink(ptr noundef %user_ns, ptr noundef %15, ptr noundef %dentry, ptr noundef null) #14
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %err.0 = phi i32 [ %call6, %if.then4 ], [ %call8, %if.else ]
  tail call void @dput(ptr noundef %dentry) #14
  %16 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool11.not = icmp eq i32 %err.0, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %do.body

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %18 = load i32, ptr @ksmbd_debug_types, align 4
  %and13 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %err.0) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %ksmbd_vfs_lock_parent.exit
  %retval.0 = phi i32 [ %ret.0.i, %ksmbd_vfs_lock_parent.exit ], [ %err.0, %do.body.cleanup_crit_edge ], [ %err.0, %do.end ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_empty_dir(ptr nocapture noundef readonly %fp) local_unnamed_addr #0 align 64 {
entry:
  %readdir_data = alloca %struct.ksmbd_readdir_data, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %readdir_data) #14
  %0 = call ptr @memset(ptr %readdir_data, i32 0, i32 32)
  %1 = ptrtoint ptr %readdir_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @__dir_empty, ptr %readdir_data, align 8
  %dirent_count = getelementptr inbounds %struct.ksmbd_readdir_data, ptr %readdir_data, i32 0, i32 3
  %2 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fp, align 8
  %call = call i32 @iterate_dir(ptr noundef %3, ptr noundef nonnull %readdir_data) #14
  %4 = ptrtoint ptr %dirent_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dirent_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  %. = select i1 %cmp, i32 -39, i32 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %readdir_data) #14
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__dir_empty(ptr nocapture noundef %ctx, ptr nocapture noundef readnone %name, i32 noundef %namlen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dirent_count = getelementptr inbounds %struct.ksmbd_readdir_data, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %dirent_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dirent_count, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %dirent_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp = icmp ugt i32 %inc, 2
  %. = select i1 %cmp, i32 -39, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iterate_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_path_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @convert_to_unix_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_path_create(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_remove_acl_xattrs(ptr noundef %user_ns, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @vfs_listxattr(ptr noundef %dentry, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %ksmbd_vfs_listxattr.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %call.i, i32 noundef 3520, i32 noundef -1) #18
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.out_crit_edge, label %if.end3.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call i32 @vfs_listxattr(ptr noundef %dentry, ptr noundef nonnull %call.i.i, i32 noundef %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.body.i, label %if.else

do.body.i:                                        ; preds = %if.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %do.body.i.do.end13.i_crit_edge, label %do.end.i

do.body.i.do.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #17
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %do.body.i.do.end13.i_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #14
  br label %out

ksmbd_vfs_listxattr.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %ksmbd_vfs_listxattr.exit.out_crit_edge, label %ksmbd_vfs_listxattr.exit.do.body_crit_edge

ksmbd_vfs_listxattr.exit.do.body_crit_edge:       ; preds = %ksmbd_vfs_listxattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

ksmbd_vfs_listxattr.exit.out_crit_edge:           ; preds = %ksmbd_vfs_listxattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.else:                                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.else.do.body_crit_edge, label %do.body11.preheader

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body11.preheader:                              ; preds = %if.else
  %sub.ptr.rhs.cast = ptrtoint ptr %call.i.i to i32
  br label %do.body11

do.body:                                          ; preds = %if.else.do.body_crit_edge, %ksmbd_vfs_listxattr.exit.do.body_crit_edge
  %xattr_list.07075 = phi ptr [ %call.i.i, %if.else.do.body_crit_edge ], [ null, %ksmbd_vfs_listxattr.exit.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %1 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #17
  br label %out

do.body11:                                        ; preds = %for.inc.do.body11_crit_edge, %do.body11.preheader
  %name.079 = phi ptr [ %add.ptr, %for.inc.do.body11_crit_edge ], [ %call.i.i, %do.body11.preheader ]
  %err.078 = phi i32 [ %err.1, %for.inc.do.body11_crit_edge ], [ 0, %do.body11.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %2 = load i32, ptr @ksmbd_debug_types, align 4
  %and12 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.do.end23_crit_edge, label %do.end17

do.body11.do.end23_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = tail call i32 @strlen(ptr noundef %name.079) #19
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name.079, i32 noundef %call19) #17
  br label %do.end23

do.end23:                                         ; preds = %do.end17, %do.body11.do.end23_crit_edge
  %call24 = tail call i32 @strncmp(ptr noundef %name.079, ptr noundef nonnull dereferenceable(24) @.str.75, i32 noundef 23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end23.if.then28_crit_edge, label %lor.lhs.false

do.end23.if.then28_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28

lor.lhs.false:                                    ; preds = %do.end23
  %call26 = tail call i32 @strncmp(ptr noundef %name.079, ptr noundef nonnull dereferenceable(25) @.str.76, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %lor.lhs.false.if.then28_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %do.end23.if.then28_crit_edge
  %call.i59 = tail call i32 @vfs_removexattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef %name.079) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool30.not = icmp eq i32 %call.i59, 0
  br i1 %tobool30.not, label %if.then28.for.inc_crit_edge, label %do.body32

if.then28.for.inc_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.body32:                                        ; preds = %if.then28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %3 = load i32, ptr @ksmbd_debug_types, align 4
  %and33 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body32.for.inc_crit_edge, label %do.end38

do.body32.for.inc_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.end38:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #16
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name.079) #17
  br label %for.inc

for.inc:                                          ; preds = %do.end38, %do.body32.for.inc_crit_edge, %if.then28.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %err.1 = phi i32 [ %err.078, %lor.lhs.false.for.inc_crit_edge ], [ %call.i59, %do.end38 ], [ %call.i59, %do.body32.for.inc_crit_edge ], [ 0, %if.then28.for.inc_crit_edge ]
  %call46 = tail call i32 @strlen(ptr noundef %name.079) #19
  %add = add i32 %call46, 1
  %add.ptr = getelementptr i8, ptr %name.079, i32 %add
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp10 = icmp slt i32 %sub.ptr.sub, %call4.i
  br i1 %cmp10, label %for.inc.do.body11_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.inc.do.body11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11

out:                                              ; preds = %for.inc.out_crit_edge, %do.end, %do.body.out_crit_edge, %ksmbd_vfs_listxattr.exit.out_crit_edge, %do.end13.i, %if.end.i.out_crit_edge
  %xattr_list.065 = phi ptr [ null, %ksmbd_vfs_listxattr.exit.out_crit_edge ], [ %xattr_list.07075, %do.end ], [ %xattr_list.07075, %do.body.out_crit_edge ], [ null, %if.end.i.out_crit_edge ], [ null, %do.end13.i ], [ %call.i.i, %for.inc.out_crit_edge ]
  %err.2 = phi i32 [ 0, %ksmbd_vfs_listxattr.exit.out_crit_edge ], [ 0, %do.end ], [ 0, %do.body.out_crit_edge ], [ 0, %if.end.i.out_crit_edge ], [ 0, %do.end13.i ], [ %err.1, %for.inc.out_crit_edge ]
  tail call void @kvfree(ptr noundef %xattr_list.065) #14
  ret i32 %err.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_remove_sd_xattrs(ptr noundef %user_ns, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @vfs_listxattr(ptr noundef %dentry, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %ksmbd_vfs_listxattr.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %call.i, i32 noundef 3520, i32 noundef -1) #18
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.out_crit_edge, label %if.end3.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call i32 @vfs_listxattr(ptr noundef %dentry, ptr noundef nonnull %call.i.i, i32 noundef %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.body.i, label %if.else

do.body.i:                                        ; preds = %if.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %do.body.i.do.end13.i_crit_edge, label %do.end.i

do.body.i.do.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #17
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %do.body.i.do.end13.i_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #14
  br label %out

ksmbd_vfs_listxattr.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %ksmbd_vfs_listxattr.exit.out_crit_edge, label %ksmbd_vfs_listxattr.exit.do.body_crit_edge

ksmbd_vfs_listxattr.exit.do.body_crit_edge:       ; preds = %ksmbd_vfs_listxattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

ksmbd_vfs_listxattr.exit.out_crit_edge:           ; preds = %ksmbd_vfs_listxattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.else:                                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.else.do.body_crit_edge, label %do.body11.preheader

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body11.preheader:                              ; preds = %if.else
  %sub.ptr.rhs.cast = ptrtoint ptr %call.i.i to i32
  br label %do.body11

do.body:                                          ; preds = %if.else.do.body_crit_edge, %ksmbd_vfs_listxattr.exit.do.body_crit_edge
  %xattr_list.06772 = phi ptr [ %call.i.i, %if.else.do.body_crit_edge ], [ null, %ksmbd_vfs_listxattr.exit.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %1 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #17
  br label %out

do.body11:                                        ; preds = %for.inc.do.body11_crit_edge, %do.body11.preheader
  %name.076 = phi ptr [ %add.ptr, %for.inc.do.body11_crit_edge ], [ %call.i.i, %do.body11.preheader ]
  %err.075 = phi i32 [ %err.1, %for.inc.do.body11_crit_edge ], [ 0, %do.body11.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %2 = load i32, ptr @ksmbd_debug_types, align 4
  %and12 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.do.end23_crit_edge, label %do.end17

do.body11.do.end23_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = tail call i32 @strlen(ptr noundef %name.076) #19
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name.076, i32 noundef %call19) #17
  br label %do.end23

do.end23:                                         ; preds = %do.end17, %do.body11.do.end23_crit_edge
  %call24 = tail call i32 @strncmp(ptr noundef %name.076, ptr noundef nonnull dereferenceable(15) @.str.83, i32 noundef 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %do.end23.for.inc_crit_edge

do.end23.for.inc_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then26:                                        ; preds = %do.end23
  %call.i56 = tail call i32 @vfs_removexattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef %name.076) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool28.not = icmp eq i32 %call.i56, 0
  br i1 %tobool28.not, label %if.then26.for.inc_crit_edge, label %do.body30

if.then26.for.inc_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.body30:                                        ; preds = %if.then26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %3 = load i32, ptr @ksmbd_debug_types, align 4
  %and31 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body30.for.inc_crit_edge, label %do.end36

do.body30.for.inc_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.end36:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #16
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name.076) #17
  br label %for.inc

for.inc:                                          ; preds = %do.end36, %do.body30.for.inc_crit_edge, %if.then26.for.inc_crit_edge, %do.end23.for.inc_crit_edge
  %err.1 = phi i32 [ %err.075, %do.end23.for.inc_crit_edge ], [ %call.i56, %do.end36 ], [ %call.i56, %do.body30.for.inc_crit_edge ], [ 0, %if.then26.for.inc_crit_edge ]
  %call44 = tail call i32 @strlen(ptr noundef %name.076) #19
  %add = add i32 %call44, 1
  %add.ptr = getelementptr i8, ptr %name.076, i32 %add
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp10 = icmp slt i32 %sub.ptr.sub, %call4.i
  br i1 %cmp10, label %for.inc.do.body11_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.inc.do.body11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11

out:                                              ; preds = %for.inc.out_crit_edge, %do.end, %do.body.out_crit_edge, %ksmbd_vfs_listxattr.exit.out_crit_edge, %do.end13.i, %if.end.i.out_crit_edge
  %xattr_list.062 = phi ptr [ null, %ksmbd_vfs_listxattr.exit.out_crit_edge ], [ %xattr_list.06772, %do.end ], [ %xattr_list.06772, %do.body.out_crit_edge ], [ null, %if.end.i.out_crit_edge ], [ null, %do.end13.i ], [ %call.i.i, %for.inc.out_crit_edge ]
  %err.2 = phi i32 [ 0, %ksmbd_vfs_listxattr.exit.out_crit_edge ], [ 0, %do.end ], [ 0, %do.body.out_crit_edge ], [ 0, %if.end.i.out_crit_edge ], [ 0, %do.end13.i ], [ %err.1, %for.inc.out_crit_edge ]
  tail call void @kvfree(ptr noundef %xattr_list.062) #14
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_set_sd_xattr(ptr noundef %conn, ptr noundef %user_ns, ptr noundef %dentry, ptr noundef %pntsd, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %sd_ndr = alloca %struct.ndr, align 4
  %acl_ndr = alloca %struct.ndr, align 4
  %acl = alloca %struct.xattr_ntacl, align 8
  %agg.tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sd_ndr) #14
  %0 = call ptr @memset(ptr %sd_ndr, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %acl_ndr) #14
  %1 = call ptr @memset(ptr %acl_ndr, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %acl) #14
  %2 = call ptr @memset(ptr %acl, i32 0, i32 168)
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i, align 8
  %5 = ptrtoint ptr %acl to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4, ptr %acl, align 8
  %hash_type = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 3
  %6 = ptrtoint ptr %hash_type to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %hash_type, align 4
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %agg.tmp, ptr noundef %4) #14
  %7 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load8_noabort(i32 %7)
  %.fca.0.load = load i64, ptr %agg.tmp, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %agg.tmp, i32 0, i32 1
  %8 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %8)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.fca.1.load, 1
  %call1 = call i64 @ksmbd_UnixTimeToNT([2 x i64] %.fca.1.insert) #14
  %current_time = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 6
  %9 = ptrtoint ptr %current_time to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call1, ptr %current_time, align 8
  %desc = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 4
  %10 = call ptr @memcpy(ptr %desc, ptr @.str.87, i32 9)
  %desc_len = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 5
  %11 = ptrtoint ptr %desc_len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 10, ptr %desc_len, align 8
  %osidoffset = getelementptr inbounds %struct.smb_ntsd, ptr %pntsd, i32 0, i32 2
  %12 = ptrtoint ptr %osidoffset to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %osidoffset, align 1
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %add = add i32 %14, 160
  %15 = call i32 @llvm.bswap.i32(i32 %add)
  %16 = ptrtoint ptr %osidoffset to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %osidoffset, align 1
  %gsidoffset = getelementptr inbounds %struct.smb_ntsd, ptr %pntsd, i32 0, i32 3
  %17 = ptrtoint ptr %gsidoffset to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %gsidoffset, align 1
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %add3 = add i32 %19, 160
  %20 = call i32 @llvm.bswap.i32(i32 %add3)
  %21 = ptrtoint ptr %gsidoffset to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %gsidoffset, align 1
  %dacloffset = getelementptr inbounds %struct.smb_ntsd, ptr %pntsd, i32 0, i32 5
  %22 = ptrtoint ptr %dacloffset to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %dacloffset, align 1
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %add5 = add i32 %24, 160
  %25 = call i32 @llvm.bswap.i32(i32 %add5)
  %26 = ptrtoint ptr %dacloffset to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %dacloffset, align 1
  %sd_buf = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 1
  %27 = ptrtoint ptr %sd_buf to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pntsd, ptr %sd_buf, align 4
  %sd_size = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 2
  %28 = ptrtoint ptr %sd_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %len, ptr %sd_size, align 8
  %hash = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 7
  %call10 = call i32 @ksmbd_gen_sd_hash(ptr noundef %conn, ptr noundef %pntsd, i32 noundef %len, ptr noundef %hash) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call12 = call fastcc ptr @ksmbd_vfs_make_xattr_posix_acl(ptr noundef %user_ns, ptr noundef %4, i32 noundef 32768)
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %4, align 8
  %31 = and i16 %30, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %31)
  %cmp = icmp eq i16 %31, 16384
  br i1 %cmp, label %if.then14, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call15 = call fastcc ptr @ksmbd_vfs_make_xattr_posix_acl(ptr noundef %user_ns, ptr noundef %4, i32 noundef 16384)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end.if.end16_crit_edge
  %def_smb_acl.0 = phi ptr [ %call15, %if.then14 ], [ null, %if.end.if.end16_crit_edge ]
  %call17 = call i32 @ndr_encode_posix_acl(ptr noundef nonnull %acl_ndr, ptr noundef %user_ns, ptr noundef %4, ptr noundef %call12, ptr noundef %def_smb_acl.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #17
  br label %out

if.end25:                                         ; preds = %if.end16
  %32 = ptrtoint ptr %acl_ndr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %acl_ndr, align 4
  %offset = getelementptr inbounds %struct.ndr, ptr %acl_ndr, i32 0, i32 1
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset, align 4
  %posix_acl_hash = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 8
  %call27 = call i32 @ksmbd_gen_sd_hash(ptr noundef %conn, ptr noundef %33, i32 noundef %35, ptr noundef %posix_acl_hash) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end35, label %do.end32

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #17
  br label %out

if.end35:                                         ; preds = %if.end25
  %call36 = call i32 @ndr_encode_v4_ntacl(ptr noundef nonnull %sd_ndr, ptr noundef nonnull %acl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end44, label %do.end41

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #17
  br label %out

if.end44:                                         ; preds = %if.end35
  %36 = ptrtoint ptr %sd_ndr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sd_ndr, align 4
  %offset46 = getelementptr inbounds %struct.ndr, ptr %sd_ndr, i32 0, i32 1
  %38 = ptrtoint ptr %offset46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset46, align 4
  %call.i = call i32 @vfs_setxattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef nonnull @.str.83, ptr noundef %37, i32 noundef %39, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end44.if.end56_crit_edge, label %do.body.i

if.end44.if.end56_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

do.body.i:                                        ; preds = %if.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %40 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.ksmbd_vfs_setxattr.exit_crit_edge, label %do.end.i

do.body.i.ksmbd_vfs_setxattr.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ksmbd_vfs_setxattr.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %call.i) #17
  br label %ksmbd_vfs_setxattr.exit

ksmbd_vfs_setxattr.exit:                          ; preds = %do.end.i, %do.body.i.ksmbd_vfs_setxattr.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp48 = icmp slt i32 %call.i, 0
  br i1 %cmp48, label %do.end53, label %ksmbd_vfs_setxattr.exit.if.end56_crit_edge

ksmbd_vfs_setxattr.exit.if.end56_crit_edge:       ; preds = %ksmbd_vfs_setxattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

do.end53:                                         ; preds = %ksmbd_vfs_setxattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %call.i) #17
  br label %if.end56

if.end56:                                         ; preds = %do.end53, %ksmbd_vfs_setxattr.exit.if.end56_crit_edge, %if.end44.if.end56_crit_edge
  %41 = ptrtoint ptr %sd_ndr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sd_ndr, align 4
  call void @kfree(ptr noundef %42) #14
  br label %out

out:                                              ; preds = %if.end56, %do.end41, %do.end32, %do.end22
  %rc.0 = phi i32 [ %call17, %do.end22 ], [ %call27, %do.end32 ], [ %call36, %do.end41 ], [ %call.i, %if.end56 ]
  %43 = ptrtoint ptr %acl_ndr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %acl_ndr, align 4
  call void @kfree(ptr noundef %44) #14
  call void @kfree(ptr noundef %call12) #14
  call void @kfree(ptr noundef %def_smb_acl.0) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %call10, %do.end ], [ %rc.0, %out ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %acl) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %acl_ndr) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sd_ndr) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ksmbd_UnixTimeToNT([2 x i64]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_gen_sd_hash(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ksmbd_vfs_make_xattr_posix_acl(ptr noundef %user_ns, ptr noundef %inode, i32 noundef %acl_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_acl(ptr noundef %inode, i32 noundef %acl_type) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a_count, align 4
  %mul = shl i32 %1, 4
  %add = or i32 %mul, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #18
  %tobool2.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not, label %if.end.land.lhs.true.i_crit_edge, label %if.end4

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a_count, align 4
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp93.not = icmp eq i32 %3, 0
  br i1 %cmp93.not, label %if.end4.land.lhs.true.i_crit_edge, label %for.body.lr.ph

if.end4.land.lhs.true.i_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

for.body.lr.ph:                                   ; preds = %if.end4
  %entries = getelementptr inbounds %struct.xattr_smb_acl, ptr %call9.i.i, i32 0, i32 2
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %call, i32 0, i32 3
  %cmp.i.i.i.i84 = icmp eq ptr %user_ns, @init_user_ns
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.098 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %xa_entry.096 = phi ptr [ %entries, %for.body.lr.ph ], [ %incdec.ptr49, %for.inc.for.body_crit_edge ]
  %pa_entry.094 = phi ptr [ %a_entries, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %pa_entry.094 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pa_entry.094, align 4
  %conv = sext i16 %6 to i32
  %7 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %conv, label %do.end [
    i32 2, label %sw.bb
    i32 1, label %sw.bb9
    i32 8, label %sw.bb11
    i32 4, label %sw.bb14
    i32 32, label %sw.bb16
    i32 16, label %sw.bb18
  ]

sw.bb:                                            ; preds = %for.body
  %8 = ptrtoint ptr %xa_entry.096 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %xa_entry.096, align 4
  %9 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa_entry.094, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack.i = load i32, ptr %9, align 4
  br i1 %cmp.i.i.i.i84, label %sw.bb.posix_acl_uid_translate.exit_crit_edge, label %if.end7.i.i

sw.bb.posix_acl_uid_translate.exit_crit_edge:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %posix_acl_uid_translate.exit

if.end7.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack.i)
  %cmp.i.i82 = icmp eq i32 %.unpack.i, -1
  br i1 %cmp.i.i82, label %if.end7.i.i.posix_acl_uid_translate.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.posix_acl_uid_translate.exit_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %posix_acl_uid_translate.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call10.i.i = tail call i32 @make_kuid(ptr noundef %user_ns, i32 noundef %.unpack.i) #14
  br label %posix_acl_uid_translate.exit

posix_acl_uid_translate.exit:                     ; preds = %if.end9.i.i, %if.end7.i.i.posix_acl_uid_translate.exit_crit_edge, %sw.bb.posix_acl_uid_translate.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.posix_acl_uid_translate.exit_crit_edge ], [ %.unpack.i, %sw.bb.posix_acl_uid_translate.exit_crit_edge ]
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i, 0
  %call3.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #14
  %uid = getelementptr inbounds %struct.xattr_acl_entry, ptr %xa_entry.096, i32 0, i32 1
  %11 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call3.i, ptr %uid, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %xa_entry.096 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %xa_entry.096, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %for.body
  %13 = ptrtoint ptr %xa_entry.096 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %xa_entry.096, align 4
  %14 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa_entry.094, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack.i83 = load i32, ptr %14, align 4
  br i1 %cmp.i.i.i.i84, label %sw.bb11.posix_acl_gid_translate.exit_crit_edge, label %if.end7.i.i86

sw.bb11.posix_acl_gid_translate.exit_crit_edge:   ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #16
  br label %posix_acl_gid_translate.exit

if.end7.i.i86:                                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack.i83)
  %cmp.i.i85 = icmp eq i32 %.unpack.i83, -1
  br i1 %cmp.i.i85, label %if.end7.i.i86.posix_acl_gid_translate.exit_crit_edge, label %if.end9.i.i88

if.end7.i.i86.posix_acl_gid_translate.exit_crit_edge: ; preds = %if.end7.i.i86
  call void @__sanitizer_cov_trace_pc() #16
  br label %posix_acl_gid_translate.exit

if.end9.i.i88:                                    ; preds = %if.end7.i.i86
  call void @__sanitizer_cov_trace_pc() #16
  %call10.i.i87 = tail call i32 @make_kgid(ptr noundef %user_ns, i32 noundef %.unpack.i83) #14
  br label %posix_acl_gid_translate.exit

posix_acl_gid_translate.exit:                     ; preds = %if.end9.i.i88, %if.end7.i.i86.posix_acl_gid_translate.exit_crit_edge, %sw.bb11.posix_acl_gid_translate.exit_crit_edge
  %retval.sroa.0.0.i.i89 = phi i32 [ %call10.i.i87, %if.end9.i.i88 ], [ -1, %if.end7.i.i86.posix_acl_gid_translate.exit_crit_edge ], [ %.unpack.i83, %sw.bb11.posix_acl_gid_translate.exit_crit_edge ]
  %.fca.0.insert.i90 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i89, 0
  %call3.i91 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i90) #14
  %gid = getelementptr inbounds %struct.xattr_acl_entry, ptr %xa_entry.096, i32 0, i32 2
  %16 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call3.i91, ptr %gid, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %xa_entry.096 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %xa_entry.096, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %xa_entry.096 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %xa_entry.096, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %xa_entry.096 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6, ptr %xa_entry.096, align 4
  br label %sw.epilog

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %conv.le = sext i16 %6 to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, i32 noundef %conv.le) #17
  br label %land.lhs.true.i

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb16, %sw.bb14, %posix_acl_gid_translate.exit, %sw.bb9, %posix_acl_uid_translate.exit
  %e_perm = getelementptr inbounds %struct.posix_acl_entry, ptr %pa_entry.094, i32 0, i32 1
  %20 = ptrtoint ptr %e_perm to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %e_perm, align 2
  %22 = and i16 %21, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool24.not = icmp eq i16 %22, 0
  br i1 %tobool24.not, label %sw.epilog.if.end28_crit_edge, label %if.then25

sw.epilog.if.end28_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then25:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %perm = getelementptr inbounds %struct.xattr_acl_entry, ptr %xa_entry.096, i32 0, i32 3
  %23 = ptrtoint ptr %perm to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %perm, align 4
  %25 = or i16 %24, 4
  store i16 %25, ptr %perm, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %sw.epilog.if.end28_crit_edge
  %26 = ptrtoint ptr %e_perm to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %e_perm, align 2
  %28 = and i16 %27, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool32.not = icmp eq i16 %28, 0
  br i1 %tobool32.not, label %if.end28.if.end38_crit_edge, label %if.then33

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %perm34 = getelementptr inbounds %struct.xattr_acl_entry, ptr %xa_entry.096, i32 0, i32 3
  %29 = ptrtoint ptr %perm34 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %perm34, align 4
  %31 = or i16 %30, 2
  store i16 %31, ptr %perm34, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end28.if.end38_crit_edge
  %32 = ptrtoint ptr %e_perm to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %e_perm, align 2
  %34 = and i16 %33, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool42.not = icmp eq i16 %34, 0
  br i1 %tobool42.not, label %if.end38.for.inc_crit_edge, label %if.then43

if.end38.for.inc_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %perm44 = getelementptr inbounds %struct.xattr_acl_entry, ptr %xa_entry.096, i32 0, i32 3
  %35 = ptrtoint ptr %perm44 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %perm44, align 4
  %37 = or i16 %36, 1
  store i16 %37, ptr %perm44, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %if.end38.for.inc_crit_edge
  %inc = add nuw i32 %i.098, 1
  %incdec.ptr = getelementptr %struct.posix_acl_entry, ptr %pa_entry.094, i32 1
  %incdec.ptr49 = getelementptr %struct.xattr_acl_entry, ptr %xa_entry.096, i32 1
  %38 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %a_count, align 4
  %cmp = icmp ult i32 %inc, %39
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.land.lhs.true.i_crit_edge

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %do.end, %if.end4.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !309
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #14
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #14, !srcloc !310
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i92 = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i92, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !311

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #14
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !312
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %call, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call9.i.i, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call9.i.i, %if.then10.i.i.i.i ], [ %call9.i.i, %do.end.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ndr_encode_posix_acl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ndr_encode_v4_ntacl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_get_sd_xattr(ptr noundef %conn, ptr noundef %user_ns, ptr noundef %dentry, ptr nocapture noundef %pntsd) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca %struct.ndr, align 4
  %acl_ndr = alloca %struct.ndr, align 4
  %acl = alloca %struct.xattr_ntacl, align 8
  %cmp_hash = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %n) #14
  %0 = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !304
  %2 = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 2
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %acl_ndr) #14
  %5 = call ptr @memset(ptr %acl_ndr, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %acl) #14
  %6 = call ptr @memset(ptr %acl, i32 255, i32 168)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmp_hash) #14
  %7 = call ptr @memset(ptr %cmp_hash, i32 0, i32 64)
  %call.i.i = tail call i32 @vfs_getxattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef nonnull @.str.83, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %add.i = add nuw i32 %call.i.i, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #18
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.cleanup_crit_edge, label %if.end3.i

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3.i:                                        ; preds = %if.end8.i.i
  %call4.i = tail call i32 @vfs_getxattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef nonnull @.str.83, ptr noundef nonnull %call9.i.i, i32 noundef %call.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp sgt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end, label %if.else.i

if.else.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.end3.i
  %8 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i, ptr %n, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call4.i, ptr %2, align 4
  %call2 = call i32 @ndr_decode_v4_ntacl(ptr noundef nonnull %n, ptr noundef nonnull %acl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.free_n_data_crit_edge

if.end.free_n_data_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_n_data

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc ptr @ksmbd_vfs_make_xattr_posix_acl(ptr noundef %user_ns, ptr noundef %4, i32 noundef 32768)
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %4, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp6 = icmp eq i16 %12, 16384
  br i1 %cmp6, label %if.then8, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = call fastcc ptr @ksmbd_vfs_make_xattr_posix_acl(ptr noundef %user_ns, ptr noundef %4, i32 noundef 16384)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end4.if.end10_crit_edge
  %def_smb_acl.0 = phi ptr [ %call9, %if.then8 ], [ null, %if.end4.if.end10_crit_edge ]
  %call11 = call i32 @ndr_encode_posix_acl(ptr noundef nonnull %acl_ndr, ptr noundef %user_ns, ptr noundef %4, ptr noundef %call5, ptr noundef %def_smb_acl.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #17
  br label %out_free

if.end15:                                         ; preds = %if.end10
  %13 = ptrtoint ptr %acl_ndr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %acl_ndr, align 4
  %offset = getelementptr inbounds %struct.ndr, ptr %acl_ndr, i32 0, i32 1
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %call17 = call i32 @ksmbd_gen_sd_hash(ptr noundef %conn, ptr noundef %14, i32 noundef %16, ptr noundef nonnull %cmp_hash) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #17
  br label %out_free

if.end25:                                         ; preds = %if.end15
  %posix_acl_hash = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 8
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %cmp_hash, ptr noundef dereferenceable(64) %posix_acl_hash, i32 64) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool29.not = icmp eq i32 %bcmp, 0
  br i1 %tobool29.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #17
  br label %out_free

if.end36:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %sd_buf = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 1
  %17 = ptrtoint ptr %sd_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd_buf, align 4
  %19 = ptrtoint ptr %pntsd to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %pntsd, align 4
  %osidoffset = getelementptr inbounds %struct.smb_ntsd, ptr %18, i32 0, i32 2
  %20 = ptrtoint ptr %osidoffset to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %osidoffset, align 1
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %sub = add i32 %22, -160
  %23 = call i32 @llvm.bswap.i32(i32 %sub)
  %24 = ptrtoint ptr %osidoffset to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %osidoffset, align 1
  %25 = ptrtoint ptr %pntsd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pntsd, align 4
  %gsidoffset = getelementptr inbounds %struct.smb_ntsd, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %gsidoffset to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %gsidoffset, align 1
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %sub38 = add i32 %29, -160
  %30 = call i32 @llvm.bswap.i32(i32 %sub38)
  %31 = ptrtoint ptr %gsidoffset to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %gsidoffset, align 1
  %32 = ptrtoint ptr %pntsd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pntsd, align 4
  %dacloffset = getelementptr inbounds %struct.smb_ntsd, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %dacloffset to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %dacloffset, align 1
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %sub40 = add i32 %36, -160
  %37 = call i32 @llvm.bswap.i32(i32 %sub40)
  %38 = ptrtoint ptr %dacloffset to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %dacloffset, align 1
  %sd_size = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 2
  %39 = ptrtoint ptr %sd_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sd_size, align 8
  br label %out_free

out_free:                                         ; preds = %if.end36, %do.end33, %do.end22, %do.end
  %rc.0 = phi i32 [ %call11, %do.end ], [ %call17, %do.end22 ], [ -22, %do.end33 ], [ %40, %if.end36 ]
  %41 = ptrtoint ptr %acl_ndr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %acl_ndr, align 4
  call void @kfree(ptr noundef %42) #14
  call void @kfree(ptr noundef %call5) #14
  call void @kfree(ptr noundef %def_smb_acl.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp43 = icmp slt i32 %rc.0, 0
  br i1 %cmp43, label %if.then45, label %out_free.free_n_data_crit_edge

out_free.free_n_data_crit_edge:                   ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_n_data

if.then45:                                        ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #16
  %sd_buf46 = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 1
  %43 = ptrtoint ptr %sd_buf46 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sd_buf46, align 4
  call void @kfree(ptr noundef %44) #14
  %45 = ptrtoint ptr %pntsd to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %pntsd, align 4
  br label %free_n_data

free_n_data:                                      ; preds = %if.then45, %out_free.free_n_data_crit_edge, %if.end.free_n_data_crit_edge
  %rc.1 = phi i32 [ %call2, %if.end.free_n_data_crit_edge ], [ %rc.0, %if.then45 ], [ %rc.0, %out_free.free_n_data_crit_edge ]
  %46 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %n, align 4
  call void @kfree(ptr noundef %47) #14
  br label %cleanup

cleanup:                                          ; preds = %free_n_data, %if.else.i, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %free_n_data ], [ %call4.i, %if.else.i ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmp_hash) #14
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %acl) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %acl_ndr) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %n) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ndr_decode_v4_ntacl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_set_dos_attrib_xattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef %da) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca %struct.ndr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %n) #14
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %n, align 4, !annotation !304
  %1 = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !304
  %3 = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !304
  %call = call i32 @ndr_encode_dos_attr(ptr noundef nonnull %n, ptr noundef %da) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %n, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %call.i = call i32 @vfs_setxattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef nonnull @.str.106, ptr noundef %6, i32 noundef %8, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.if.end11_crit_edge, label %do.body.i

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %9 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.body_crit_edge, label %do.end.i

do.body.i.do.body_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %call.i) #17
  br label %do.body

do.body:                                          ; preds = %do.end.i, %do.body.i.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %10 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.if.end11_crit_edge, label %do.end

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #17
  br label %if.end11

if.end11:                                         ; preds = %do.end, %do.body.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %11 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %n, align 4
  call void @kfree(ptr noundef %12) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end11 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %n) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ndr_encode_dos_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_get_dos_attrib_xattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef %da) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca %struct.ndr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %n) #14
  %0 = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !304
  %2 = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 2
  %call.i.i = tail call i32 @vfs_getxattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef nonnull @.str.106, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.do.body_crit_edge, label %if.end8.i.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end8.i.i:                                      ; preds = %entry
  %add.i = add nuw i32 %call.i.i, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #18
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.do.body_crit_edge, label %if.end3.i

if.end8.i.i.do.body_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end3.i:                                        ; preds = %if.end8.i.i
  %call4.i = tail call i32 @vfs_getxattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef nonnull @.str.106, ptr noundef nonnull %call9.i.i, i32 noundef %call.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp sgt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then, label %if.else.i

if.else.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %do.body

if.then:                                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i, ptr %n, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call4.i, ptr %2, align 4
  %call1 = call i32 @ndr_decode_dos_attr(ptr noundef nonnull %n, ptr noundef %da) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool.not, i32 %call4.i, i32 -22
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %n, align 4
  call void @kfree(ptr noundef %6) #14
  br label %if.end11

do.body:                                          ; preds = %if.else.i, %if.end8.i.i.do.body_crit_edge, %entry.do.body_crit_edge
  %retval.0.i.ph = phi i32 [ %call4.i, %if.else.i ], [ -12, %if.end8.i.i.do.body_crit_edge ], [ %call.i.i, %entry.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %7 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.if.end11_crit_edge, label %do.end

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #17
  br label %if.end11

if.end11:                                         ; preds = %do.end, %do.body.if.end11_crit_edge, %if.then
  %err.1 = phi i32 [ %spec.select, %if.then ], [ %retval.0.i.ph, %do.end ], [ %retval.0.i.ph, %do.body.if.end11_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %n) #14
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ndr_decode_dos_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_vfs_init_kstat(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %ksmbd_kstat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %2 = ptrtoint ptr %ksmbd_kstat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ksmbd_kstat, align 8
  %FileIndex = getelementptr inbounds %struct.file_directory_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %FileIndex to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 0, ptr %FileIndex, align 1
  %create_time = getelementptr inbounds %struct.ksmbd_kstat, ptr %ksmbd_kstat, i32 0, i32 1
  %5 = ptrtoint ptr %create_time to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %create_time, align 8
  %7 = tail call i64 @llvm.bswap.i64(i64 %6)
  %CreationTime = getelementptr inbounds %struct.file_directory_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %CreationTime to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %CreationTime, align 1
  %atime = getelementptr inbounds %struct.kstat, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %atime to i32
  call void @__asan_load8_noabort(i32 %9)
  %.unpack = load i64, ptr %atime, align 8
  %10 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt26 = getelementptr inbounds %struct.kstat, ptr %3, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %.elt26 to i32
  call void @__asan_load8_noabort(i32 %11)
  %.unpack27 = load i64, ptr %.elt26, align 8
  %12 = insertvalue [2 x i64] %10, i64 %.unpack27, 1
  %call = tail call i64 @ksmbd_UnixTimeToNT([2 x i64] %12) #14
  %13 = tail call i64 @llvm.bswap.i64(i64 %call)
  %LastAccessTime = getelementptr inbounds %struct.file_directory_info, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %LastAccessTime to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %LastAccessTime, align 1
  %mtime = getelementptr inbounds %struct.kstat, ptr %3, i32 0, i32 13
  %15 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %15)
  %.unpack28 = load i64, ptr %mtime, align 8
  %16 = insertvalue [2 x i64] undef, i64 %.unpack28, 0
  %.elt29 = getelementptr inbounds %struct.kstat, ptr %3, i32 0, i32 13, i32 1
  %17 = ptrtoint ptr %.elt29 to i32
  call void @__asan_load8_noabort(i32 %17)
  %.unpack30 = load i64, ptr %.elt29, align 8
  %18 = insertvalue [2 x i64] %16, i64 %.unpack30, 1
  %call2 = tail call i64 @ksmbd_UnixTimeToNT([2 x i64] %18) #14
  %19 = tail call i64 @llvm.bswap.i64(i64 %call2)
  %LastWriteTime = getelementptr inbounds %struct.file_directory_info, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %LastWriteTime to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %LastWriteTime, align 1
  %ctime = getelementptr inbounds %struct.kstat, ptr %3, i32 0, i32 14
  %21 = ptrtoint ptr %ctime to i32
  call void @__asan_load8_noabort(i32 %21)
  %.unpack31 = load i64, ptr %ctime, align 8
  %22 = insertvalue [2 x i64] undef, i64 %.unpack31, 0
  %.elt32 = getelementptr inbounds %struct.kstat, ptr %3, i32 0, i32 14, i32 1
  %23 = ptrtoint ptr %.elt32 to i32
  call void @__asan_load8_noabort(i32 %23)
  %.unpack33 = load i64, ptr %.elt32, align 8
  %24 = insertvalue [2 x i64] %22, i64 %.unpack33, 1
  %call3 = tail call i64 @ksmbd_UnixTimeToNT([2 x i64] %24) #14
  %25 = tail call i64 @llvm.bswap.i64(i64 %call3)
  %ChangeTime = getelementptr inbounds %struct.file_directory_info, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %ChangeTime to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %ChangeTime, align 1
  %file_attributes = getelementptr inbounds %struct.ksmbd_kstat, ptr %ksmbd_kstat, i32 0, i32 2
  %27 = ptrtoint ptr %file_attributes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %file_attributes, align 8
  %and = and i32 %28, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %EndOfFile = getelementptr inbounds %struct.file_directory_info, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %EndOfFile to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 0, ptr %EndOfFile, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %size = getelementptr inbounds %struct.kstat, ptr %3, i32 0, i32 11
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %size, align 8
  %32 = tail call i64 @llvm.bswap.i64(i64 %31)
  %EndOfFile4 = getelementptr inbounds %struct.file_directory_info, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %EndOfFile4 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %EndOfFile4, align 1
  %blocks = getelementptr inbounds %struct.kstat, ptr %3, i32 0, i32 16
  %34 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %blocks, align 8
  %shl = shl i64 %35, 9
  %36 = tail call i64 @llvm.bswap.i64(i64 %shl)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i64 [ %36, %if.else ], [ 0, %if.then ]
  %37 = getelementptr inbounds %struct.file_directory_info, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %.sink, ptr %37, align 1
  %39 = ptrtoint ptr %file_attributes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %file_attributes, align 8
  %ExtFileAttributes = getelementptr inbounds %struct.file_directory_info, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %ExtFileAttributes to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %ExtFileAttributes, align 1
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_fill_dentry_attrs(ptr nocapture noundef readonly %work, ptr noundef %user_ns, ptr noundef %dentry, ptr nocapture noundef %ksmbd_kstat) local_unnamed_addr #0 align 64 {
entry:
  %da = alloca %struct.xattr_dos_attrib, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %ksmbd_kstat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ksmbd_kstat, align 8
  tail call void @generic_fillattr(ptr noundef %user_ns, ptr noundef %1, ptr noundef %3) #14
  %4 = ptrtoint ptr %ksmbd_kstat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ksmbd_kstat, align 8
  %ctime = getelementptr inbounds %struct.kstat, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %ctime to i32
  call void @__asan_load8_noabort(i32 %6)
  %.unpack = load i64, ptr %ctime, align 8
  %7 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt35 = getelementptr inbounds %struct.kstat, ptr %5, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %.elt35 to i32
  call void @__asan_load8_noabort(i32 %8)
  %.unpack36 = load i64, ptr %.elt35, align 8
  %9 = insertvalue [2 x i64] %7, i64 %.unpack36, 1
  %call2 = tail call i64 @ksmbd_UnixTimeToNT([2 x i64] %9) #14
  %create_time = getelementptr inbounds %struct.ksmbd_kstat, ptr %ksmbd_kstat, i32 0, i32 1
  %10 = ptrtoint ptr %create_time to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call2, ptr %create_time, align 8
  %11 = ptrtoint ptr %ksmbd_kstat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ksmbd_kstat, align 8
  %mode = getelementptr inbounds %struct.kstat, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mode, align 4
  %15 = and i16 %14, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %15)
  %cmp = icmp eq i16 %15, 16384
  %spec.select = select i1 %cmp, i32 268435456, i32 536870912
  %16 = getelementptr inbounds %struct.ksmbd_kstat, ptr %ksmbd_kstat, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select, ptr %16, align 8
  %tcon = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %18 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tcon, align 8
  %share_conf = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %share_conf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %share_conf, align 4
  %flags.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then7

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then7:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %da) #14
  %24 = call ptr @memset(ptr %da, i32 255, i32 56)
  %call8 = call i32 @ksmbd_vfs_get_dos_attrib_xattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef nonnull %da)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp sgt i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %do.body

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  %attr = getelementptr inbounds %struct.xattr_dos_attrib, ptr %da, i32 0, i32 2
  %25 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %attr, align 8
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %16, align 8
  %create_time13 = getelementptr inbounds %struct.xattr_dos_attrib, ptr %da, i32 0, i32 6
  %29 = ptrtoint ptr %create_time13 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %create_time13, align 8
  %31 = ptrtoint ptr %create_time to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %create_time, align 8
  br label %if.end24

do.body:                                          ; preds = %if.then7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %32 = load i32, ptr @ksmbd_debug_types, align 4
  %and16 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body.if.end24_crit_edge, label %do.end

do.body.if.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #17
  br label %if.end24

if.end24:                                         ; preds = %do.end, %do.body.if.end24_crit_edge, %if.then11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %da) #14
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %entry.if.end25_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_casexattr_len(ptr noundef %user_ns, ptr noundef %dentry, ptr nocapture noundef readonly %attr_name, i32 noundef %attr_name_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @vfs_listxattr(ptr noundef %dentry, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %call.i, i32 noundef 3520, i32 noundef -1) #18
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.out_crit_edge, label %if.end3.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call i32 @vfs_listxattr(ptr noundef %dentry, ptr noundef nonnull %call.i.i, i32 noundef %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.body.i, label %ksmbd_vfs_listxattr.exit

do.body.i:                                        ; preds = %if.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %do.body.i.do.end13.i_crit_edge, label %do.end.i

do.body.i.do.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #17
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %do.body.i.do.end13.i_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #14
  br label %out

ksmbd_vfs_listxattr.exit:                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp eq i32 %call4.i, 0
  br i1 %cmp, label %ksmbd_vfs_listxattr.exit.out_crit_edge, label %do.body.preheader

ksmbd_vfs_listxattr.exit.out_crit_edge:           ; preds = %ksmbd_vfs_listxattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body.preheader:                                ; preds = %ksmbd_vfs_listxattr.exit
  %sub.ptr.rhs.cast = ptrtoint ptr %call.i.i to i32
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.preheader
  %name.033 = phi ptr [ %add.ptr, %for.inc.do.body_crit_edge ], [ %call.i.i, %do.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %1 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call i32 @strlen(ptr noundef %name.033) #19
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name.033, i32 noundef %call4) #17
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %call9 = tail call i32 @strncasecmp(ptr noundef %attr_name, ptr noundef %name.033, i32 noundef %attr_name_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %for.inc

if.end12:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  %call.i23 = tail call i32 @vfs_getxattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef %name.033, ptr noundef null, i32 noundef 0) #14
  br label %out

for.inc:                                          ; preds = %do.end8
  %call14 = tail call i32 @strlen(ptr noundef %name.033) #19
  %add = add i32 %call14, 1
  %add.ptr = getelementptr i8, ptr %name.033, i32 %add
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp slt i32 %sub.ptr.sub, %call4.i
  br i1 %cmp1, label %for.inc.do.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

out:                                              ; preds = %for.inc.out_crit_edge, %if.end12, %ksmbd_vfs_listxattr.exit.out_crit_edge, %do.end13.i, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %xattr_list.029 = phi ptr [ %call.i.i, %ksmbd_vfs_listxattr.exit.out_crit_edge ], [ %call.i.i, %if.end12 ], [ null, %entry.out_crit_edge ], [ null, %if.end.i.out_crit_edge ], [ null, %do.end13.i ], [ %call.i.i, %for.inc.out_crit_edge ]
  %value_len.0 = phi i32 [ -2, %ksmbd_vfs_listxattr.exit.out_crit_edge ], [ %call.i23, %if.end12 ], [ -2, %entry.out_crit_edge ], [ -2, %if.end.i.out_crit_edge ], [ -2, %do.end13.i ], [ -2, %for.inc.out_crit_edge ]
  tail call void @kvfree(ptr noundef %xattr_list.029) #14
  ret i32 %value_len.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_xattr_stream_name(ptr noundef %stream_name, ptr nocapture noundef writeonly %xattr_stream_name, ptr nocapture noundef writeonly %xattr_stream_name_size, i32 noundef %s_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %s_type)
  %cmp = icmp eq i32 %s_type, 2
  %.str.114..str.115 = select i1 %cmp, ptr @.str.114, ptr @.str.115
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, ptr noundef %stream_name, ptr noundef nonnull %.str.114..str.115) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %xattr_stream_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %xattr_stream_name, align 4
  %call3 = tail call i32 @strlen(ptr noundef nonnull %call) #19
  %add = add i32 %call3, 1
  %1 = ptrtoint ptr %xattr_stream_name_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %xattr_stream_name_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_copy_file_ranges(ptr noundef %work, ptr nocapture noundef readonly %src_fp, ptr noundef %dst_fp, ptr nocapture noundef readonly %chunks, i32 noundef %chunk_count, ptr nocapture noundef %chunk_count_written, ptr nocapture noundef writeonly %chunk_size_written, ptr nocapture noundef %total_size_written) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chunk_count_written to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %chunk_count_written, align 4
  %1 = ptrtoint ptr %chunk_size_written to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %chunk_size_written, align 4
  %2 = ptrtoint ptr %total_size_written to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %total_size_written, align 8
  %daccess = getelementptr inbounds %struct.ksmbd_file, ptr %src_fp, i32 0, i32 11
  %3 = ptrtoint ptr %daccess to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %daccess, align 4
  %and = and i32 %4, 553648128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %src_fp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %src_fp, align 8
  %dentry = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dentry, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %8) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %daccess1 = getelementptr inbounds %struct.ksmbd_file, ptr %dst_fp, i32 0, i32 11
  %9 = ptrtoint ptr %daccess1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %daccess1, align 4
  %and2 = and i32 %10, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.end7, label %if.end13

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %dst_fp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst_fp, align 8
  %dentry11 = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %dentry11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dentry11, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %14) #17
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %stream.i = getelementptr inbounds %struct.ksmbd_file, ptr %src_fp, i32 0, i32 22
  %15 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stream.i, align 4
  %cmp.i.not = icmp eq ptr %16, null
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end13
  %stream.i111 = getelementptr inbounds %struct.ksmbd_file, ptr %dst_fp, i32 0, i32 22
  %17 = ptrtoint ptr %stream.i111 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream.i111, align 4
  %cmp.i112.not = icmp eq ptr %18, null
  br i1 %cmp.i112.not, label %if.end17, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  tail call void @smb_break_all_levII_oplock(ptr noundef %work, ptr noundef %dst_fp, i32 noundef 1) #14
  %tcon = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %19 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tcon, align 8
  %posix_extensions = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %posix_extensions to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %posix_extensions, align 4, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool18.not = icmp eq i8 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chunk_count)
  %cmp166 = icmp ne i32 %chunk_count, 0
  %or.cond = and i1 %tobool18.not, %cmp166
  br i1 %or.cond, label %if.end17.for.body_crit_edge, label %if.end17.if.end35_crit_edge

if.end17.if.end35_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end17.for.body_crit_edge
  %i.0167 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end17.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.srv_copychunk, ptr %chunks, i32 %i.0167
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %arrayidx, align 1
  %25 = tail call i64 @llvm.bswap.i64(i64 %24)
  %TargetOffset = getelementptr %struct.srv_copychunk, ptr %chunks, i32 %i.0167, i32 1
  %26 = ptrtoint ptr %TargetOffset to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %TargetOffset, align 1
  %Length = getelementptr %struct.srv_copychunk, ptr %chunks, i32 %i.0167, i32 2
  %28 = ptrtoint ptr %Length to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %Length, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %src_fp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %src_fp, align 8
  %conv = zext i32 %30 to i64
  %add = add nsw i64 %conv, -1
  %sub = add i64 %add, %25
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %f_inode.i.i, align 8
  %i_flctx.i = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 45
  %35 = ptrtoint ptr %i_flctx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_flctx.i, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %for.body.if.end26_crit_edge, label %lor.lhs.false.i

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

lor.lhs.false.i:                                  ; preds = %for.body
  %flc_posix.i = getelementptr inbounds %struct.file_lock_context, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %flc_posix.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %flc_posix.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !308
  %cmp.i.not.i.i = icmp eq ptr %38, %flc_posix.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

list_empty_careful.exit.i:                        ; preds = %lor.lhs.false.i
  %prev.i.i = getelementptr inbounds %struct.file_lock_context, ptr %36, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %40, %flc_posix.i
  br i1 %cmp.i.not.i, label %list_empty_careful.exit.i.if.end26_crit_edge, label %list_empty_careful.exit.i.if.end.i_crit_edge

list_empty_careful.exit.i.if.end.i_crit_edge:     ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

list_empty_careful.exit.i.if.end26_crit_edge:     ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.end.i:                                         ; preds = %list_empty_careful.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull %36) #14
  %41 = ptrtoint ptr %flc_posix.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn56.i = load ptr, ptr %flc_posix.i, align 4
  %cmp.not57.i = icmp eq ptr %.pn56.i, %flc_posix.i
  br i1 %cmp.not57.i, label %if.end.i.check_lock_range.exit.thread152_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.check_lock_range.exit.thread152_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_lock_range.exit.thread152

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn58.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn56.i, %if.end.i.for.body.i_crit_edge ]
  %fl_end.i = getelementptr i8, ptr %.pn58.i, i32 116
  %42 = ptrtoint ptr %fl_end.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %fl_end.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %25)
  %cmp5.not.i = icmp slt i64 %43, %25
  br i1 %cmp5.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %fl_start.i = getelementptr i8, ptr %.pn58.i, i32 108
  %44 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %fl_start.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %sub)
  %cmp6.not.i = icmp sgt i64 %45, %sub
  br i1 %cmp6.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then7.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  %fl_type.i = getelementptr i8, ptr %.pn58.i, i32 40
  %46 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %fl_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cond = icmp eq i8 %47, 1
  br i1 %cond, label %if.then22.i, label %if.then7.i.for.inc.i_crit_edge

if.then7.i.for.inc.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then22.i:                                      ; preds = %if.then7.i
  %fl_file.i = getelementptr i8, ptr %.pn58.i, i32 104
  %48 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fl_file.i, align 4
  %cmp23.not.i = icmp eq ptr %49, %32
  br i1 %cmp23.not.i, label %if.then22.i.for.inc.i_crit_edge, label %check_lock_range.exit

if.then22.i.for.inc.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then22.i.for.inc.i_crit_edge, %if.then7.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %50 = ptrtoint ptr %.pn58.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn.i = load ptr, ptr %.pn58.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %flc_posix.i
  br i1 %cmp.not.i, label %for.inc.i.check_lock_range.exit.thread152_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.check_lock_range.exit.thread152_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_lock_range.exit.thread152

check_lock_range.exit.thread152:                  ; preds = %for.inc.i.check_lock_range.exit.thread152_crit_edge, %if.end.i.check_lock_range.exit.thread152_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull %36) #14
  br label %if.end26

check_lock_range.exit:                            ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #17
  tail call void @_raw_spin_unlock(ptr noundef nonnull %36) #14
  br label %cleanup

if.end26:                                         ; preds = %check_lock_range.exit.thread152, %list_empty_careful.exit.i.if.end26_crit_edge, %for.body.if.end26_crit_edge
  %51 = tail call i64 @llvm.bswap.i64(i64 %27)
  %52 = ptrtoint ptr %dst_fp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dst_fp, align 8
  %sub30 = add i64 %add, %51
  %f_inode.i.i113 = getelementptr inbounds %struct.file, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %f_inode.i.i113 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %f_inode.i.i113, align 8
  %i_flctx.i114 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 45
  %56 = ptrtoint ptr %i_flctx.i114 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_flctx.i114, align 4
  %tobool.not.i115 = icmp eq ptr %57, null
  br i1 %tobool.not.i115, label %if.end26.for.inc_crit_edge, label %lor.lhs.false.i118

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false.i118:                               ; preds = %if.end26
  %flc_posix.i116 = getelementptr inbounds %struct.file_lock_context, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %flc_posix.i116 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %flc_posix.i116, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !308
  %cmp.i.not.i.i117 = icmp eq ptr %59, %flc_posix.i116
  br i1 %cmp.i.not.i.i117, label %list_empty_careful.exit.i121, label %lor.lhs.false.i118.if.end.i124_crit_edge

lor.lhs.false.i118.if.end.i124_crit_edge:         ; preds = %lor.lhs.false.i118
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i124

list_empty_careful.exit.i121:                     ; preds = %lor.lhs.false.i118
  %prev.i.i119 = getelementptr inbounds %struct.file_lock_context, ptr %57, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %prev.i.i119 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i119, align 4
  %cmp.i.not.i120 = icmp eq ptr %61, %flc_posix.i116
  br i1 %cmp.i.not.i120, label %list_empty_careful.exit.i121.for.inc_crit_edge, label %list_empty_careful.exit.i121.if.end.i124_crit_edge

list_empty_careful.exit.i121.if.end.i124_crit_edge: ; preds = %list_empty_careful.exit.i121
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i124

list_empty_careful.exit.i121.for.inc_crit_edge:   ; preds = %list_empty_careful.exit.i121
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end.i124:                                      ; preds = %list_empty_careful.exit.i121.if.end.i124_crit_edge, %lor.lhs.false.i118.if.end.i124_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull %57) #14
  %62 = ptrtoint ptr %flc_posix.i116 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn56.i122 = load ptr, ptr %flc_posix.i116, align 4
  %cmp.not57.i123 = icmp eq ptr %.pn56.i122, %flc_posix.i116
  br i1 %cmp.not57.i123, label %if.end.i124.check_lock_range.exit147.thread158_crit_edge, label %if.end.i124.for.body.i129_crit_edge

if.end.i124.for.body.i129_crit_edge:              ; preds = %if.end.i124
  br label %for.body.i129

if.end.i124.check_lock_range.exit147.thread158_crit_edge: ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_lock_range.exit147.thread158

for.body.i129:                                    ; preds = %for.inc.i141.for.body.i129_crit_edge, %if.end.i124.for.body.i129_crit_edge
  %.pn58.i126 = phi ptr [ %.pn.i139, %for.inc.i141.for.body.i129_crit_edge ], [ %.pn56.i122, %if.end.i124.for.body.i129_crit_edge ]
  %fl_end.i127 = getelementptr i8, ptr %.pn58.i126, i32 116
  %63 = ptrtoint ptr %fl_end.i127 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %fl_end.i127, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %51)
  %cmp5.not.i128 = icmp slt i64 %64, %51
  br i1 %cmp5.not.i128, label %for.body.i129.for.inc.i141_crit_edge, label %land.lhs.true.i132

for.body.i129.for.inc.i141_crit_edge:             ; preds = %for.body.i129
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i141

land.lhs.true.i132:                               ; preds = %for.body.i129
  %fl_start.i130 = getelementptr i8, ptr %.pn58.i126, i32 108
  %65 = ptrtoint ptr %fl_start.i130 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %fl_start.i130, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %sub30)
  %cmp6.not.i131 = icmp sgt i64 %66, %sub30
  br i1 %cmp6.not.i131, label %land.lhs.true.i132.for.inc.i141_crit_edge, label %if.then7.i134

land.lhs.true.i132.for.inc.i141_crit_edge:        ; preds = %land.lhs.true.i132
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i141

if.then7.i134:                                    ; preds = %land.lhs.true.i132
  %fl_type.i133 = getelementptr i8, ptr %.pn58.i126, i32 40
  %67 = ptrtoint ptr %fl_type.i133 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %fl_type.i133, align 4
  %69 = zext i8 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.161)
  switch i8 %68, label %if.then7.i134.for.inc.i141_crit_edge [
    i8 0, label %if.then7.i134.check_lock_range.exit147_crit_edge
    i8 1, label %if.then22.i138
  ]

if.then7.i134.check_lock_range.exit147_crit_edge: ; preds = %if.then7.i134
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_lock_range.exit147

if.then7.i134.for.inc.i141_crit_edge:             ; preds = %if.then7.i134
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i141

if.then22.i138:                                   ; preds = %if.then7.i134
  %fl_file.i136 = getelementptr i8, ptr %.pn58.i126, i32 104
  %70 = ptrtoint ptr %fl_file.i136 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fl_file.i136, align 4
  %cmp23.not.i137 = icmp eq ptr %71, %53
  br i1 %cmp23.not.i137, label %if.then22.i138.for.inc.i141_crit_edge, label %if.then22.i138.check_lock_range.exit147_crit_edge

if.then22.i138.check_lock_range.exit147_crit_edge: ; preds = %if.then22.i138
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_lock_range.exit147

if.then22.i138.for.inc.i141_crit_edge:            ; preds = %if.then22.i138
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i141

for.inc.i141:                                     ; preds = %if.then22.i138.for.inc.i141_crit_edge, %if.then7.i134.for.inc.i141_crit_edge, %land.lhs.true.i132.for.inc.i141_crit_edge, %for.body.i129.for.inc.i141_crit_edge
  %72 = ptrtoint ptr %.pn58.i126 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn.i139 = load ptr, ptr %.pn58.i126, align 4
  %cmp.not.i140 = icmp eq ptr %.pn.i139, %flc_posix.i116
  br i1 %cmp.not.i140, label %for.inc.i141.check_lock_range.exit147.thread158_crit_edge, label %for.inc.i141.for.body.i129_crit_edge

for.inc.i141.for.body.i129_crit_edge:             ; preds = %for.inc.i141
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i129

for.inc.i141.check_lock_range.exit147.thread158_crit_edge: ; preds = %for.inc.i141
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_lock_range.exit147.thread158

check_lock_range.exit147.thread158:               ; preds = %for.inc.i141.check_lock_range.exit147.thread158_crit_edge, %if.end.i124.check_lock_range.exit147.thread158_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull %57) #14
  br label %for.inc

check_lock_range.exit147:                         ; preds = %if.then22.i138.check_lock_range.exit147_crit_edge, %if.then7.i134.check_lock_range.exit147_crit_edge
  %.str.141.sink.i = phi ptr [ @.str.141, %if.then22.i138.check_lock_range.exit147_crit_edge ], [ @.str.138, %if.then7.i134.check_lock_range.exit147_crit_edge ]
  %call30.i142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.141.sink.i) #17
  tail call void @_raw_spin_unlock(ptr noundef nonnull %57) #14
  br label %cleanup

for.inc:                                          ; preds = %check_lock_range.exit147.thread158, %list_empty_careful.exit.i121.for.inc_crit_edge, %if.end26.for.inc_crit_edge
  %inc = add nuw i32 %i.0167, 1
  %exitcond.not = icmp eq i32 %inc, %chunk_count
  br i1 %exitcond.not, label %for.inc.if.end35_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.if.end35_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.end35:                                         ; preds = %for.inc.if.end35_crit_edge, %if.end17.if.end35_crit_edge
  %73 = ptrtoint ptr %src_fp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %src_fp, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %f_inode.i, align 8
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %76, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %76, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %76, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end35
  %77 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !313
  %and.i.i.i = and i32 %77, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  %78 = tail call ptr @llvm.returnaddress(i32 0) #14
  %79 = ptrtoint ptr %78 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %79) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %79) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %80 = tail call ptr @llvm.returnaddress(i32 0) #14
  %81 = ptrtoint ptr %80 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %81) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %81) #14
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %82 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !314
  %and.i.i.i.i = and i32 %82, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !306

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %77) #14, !srcloc !315
  %83 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !316
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !317
  %85 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %86, 1
  %tobool.not.i148 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i148, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %84, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %86, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !318
  %87 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !319
  %89 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %90, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %for.cond39.preheader, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

for.cond39.preheader:                             ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chunk_count)
  %cmp40168.not = icmp eq i32 %chunk_count, 0
  br i1 %cmp40168.not, label %for.cond39.preheader.cleanup_crit_edge, label %for.cond39.preheader.for.body42_crit_edge

for.cond39.preheader.for.body42_crit_edge:        ; preds = %for.cond39.preheader
  br label %for.body42

for.cond39.preheader.cleanup_crit_edge:           ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body42:                                       ; preds = %if.end61.for.body42_crit_edge, %for.cond39.preheader.for.body42_crit_edge
  %i.1169 = phi i32 [ %inc66, %if.end61.for.body42_crit_edge ], [ 0, %for.cond39.preheader.for.body42_crit_edge ]
  %arrayidx43 = getelementptr %struct.srv_copychunk, ptr %chunks, i32 %i.1169
  %91 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 8)
  %92 = load i64, ptr %arrayidx43, align 1
  %93 = tail call i64 @llvm.bswap.i64(i64 %92)
  %Length48 = getelementptr %struct.srv_copychunk, ptr %chunks, i32 %i.1169, i32 2
  %94 = ptrtoint ptr %Length48 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %Length48, align 1
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  %conv49 = zext i32 %96 to i64
  %add50 = add i64 %93, %conv49
  call void @__sanitizer_cov_trace_cmp8(i64 %add50, i64 %88)
  %cmp51 = icmp sgt i64 %add50, %88
  br i1 %cmp51, label %for.body42.cleanup_crit_edge, label %if.end54

for.body42.cleanup_crit_edge:                     ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end54:                                         ; preds = %for.body42
  %TargetOffset46 = getelementptr %struct.srv_copychunk, ptr %chunks, i32 %i.1169, i32 1
  %97 = ptrtoint ptr %TargetOffset46 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 8)
  %98 = load i64, ptr %TargetOffset46, align 1
  %99 = tail call i64 @llvm.bswap.i64(i64 %98)
  %100 = ptrtoint ptr %src_fp to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %src_fp, align 8
  %102 = ptrtoint ptr %dst_fp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dst_fp, align 8
  %call57 = tail call i32 @vfs_copy_file_range(ptr noundef %101, i64 noundef %93, ptr noundef %103, i64 noundef %99, i32 noundef %96, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end54.cleanup_crit_edge, label %if.end61

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end61:                                         ; preds = %if.end54
  %104 = ptrtoint ptr %chunk_count_written to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %chunk_count_written, align 4
  %add62 = add i32 %105, 1
  store i32 %add62, ptr %chunk_count_written, align 4
  %conv63161 = zext i32 %call57 to i64
  %106 = ptrtoint ptr %total_size_written to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %total_size_written, align 8
  %add64 = add i64 %107, %conv63161
  store i64 %add64, ptr %total_size_written, align 8
  %inc66 = add nuw i32 %i.1169, 1
  %exitcond178.not = icmp eq i32 %inc66, %chunk_count
  br i1 %exitcond178.not, label %if.end61.cleanup_crit_edge, label %if.end61.for.body42_crit_edge

if.end61.for.body42_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body42

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end61.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %for.body42.cleanup_crit_edge, %for.cond39.preheader.cleanup_crit_edge, %check_lock_range.exit147, %check_lock_range.exit, %lor.lhs.false.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -13, %do.end7 ], [ -13, %do.end ], [ -9, %lor.lhs.false.cleanup_crit_edge ], [ -9, %if.end13.cleanup_crit_edge ], [ -11, %check_lock_range.exit ], [ -11, %check_lock_range.exit147 ], [ 0, %for.cond39.preheader.cleanup_crit_edge ], [ -7, %for.body42.cleanup_crit_edge ], [ %call57, %if.end54.cleanup_crit_edge ], [ 0, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_copy_file_range(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_vfs_posix_lock_wait(ptr noundef %flock) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1794) #14
  %0 = ptrtoint ptr %flock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flock, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %if.end

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %fl_wait = getelementptr inbounds %struct.file_lock, ptr %flock, i32 0, i32 10
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %fl_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %3 = ptrtoint ptr %flock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %flock, align 8
  %tobool5.not16 = icmp eq ptr %4, null
  br i1 %tobool5.not16, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #14
  %call = call i32 @prepare_to_wait_event(ptr noundef %fl_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %5 = ptrtoint ptr %flock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %flock, align 8
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %fl_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end9

do.end9:                                          ; preds = %for.end, %entry.do.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_posix_lock_wait_timeout(ptr noundef %flock, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1801) #14
  %0 = ptrtoint ptr %flock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flock, align 8
  %tobool.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool5.not = icmp eq i32 %timeout, 0
  %2 = and i1 %tobool5.not, %tobool.not
  %__ret.0 = select i1 %2, i32 1, i32 %timeout
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool7.not = icmp eq i32 %__ret.0, 0
  %3 = select i1 %tobool.not, i1 true, i1 %tobool7.not
  br i1 %3, label %entry.if.end38_crit_edge, label %if.then10

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then10:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %fl_wait = getelementptr inbounds %struct.file_lock, ptr %flock, i32 0, i32 10
  %call63 = call i32 @prepare_to_wait_event(ptr noundef %fl_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %5 = ptrtoint ptr %flock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %flock, align 8
  %tobool14.not64 = icmp eq ptr %6, null
  %7 = and i1 %tobool14.not64, %tobool5.not
  %__ret11.166 = select i1 %7, i32 1, i32 %timeout
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.166)
  %tobool25.not67 = icmp eq i32 %__ret11.166, 0
  %8 = select i1 %tobool14.not64, i1 true, i1 %tobool25.not67
  br i1 %8, label %if.then10.for.end_crit_edge, label %if.then10.if.end31_crit_edge

if.then10.if.end31_crit_edge:                     ; preds = %if.then10
  br label %if.end31

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end31:                                         ; preds = %cleanup.if.end31_crit_edge, %if.then10.if.end31_crit_edge
  %__ret11.169 = phi i32 [ %__ret11.1, %cleanup.if.end31_crit_edge ], [ %__ret11.166, %if.then10.if.end31_crit_edge ]
  %call68 = phi i32 [ %call, %cleanup.if.end31_crit_edge ], [ %call63, %if.then10.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool32.not = icmp eq i32 %call68, 0
  br i1 %tobool32.not, label %cleanup, label %if.end31.__out_crit_edge

if.end31.__out_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

cleanup:                                          ; preds = %if.end31
  %call35 = call i32 @schedule_timeout(i32 noundef %__ret11.169) #14
  %call = call i32 @prepare_to_wait_event(ptr noundef %fl_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %9 = ptrtoint ptr %flock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %flock, align 8
  %tobool14.not = icmp eq ptr %10, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool19.not = icmp eq i32 %call35, 0
  %11 = select i1 %tobool14.not, i1 %tobool19.not, i1 false
  %__ret11.1 = select i1 %11, i32 1, i32 %call35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1)
  %tobool25.not = icmp eq i32 %__ret11.1, 0
  %12 = select i1 %tobool14.not, i1 true, i1 %tobool25.not
  br i1 %12, label %cleanup.for.end_crit_edge, label %cleanup.if.end31_crit_edge

cleanup.if.end31_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then10.for.end_crit_edge
  %__ret11.1.lcssa = phi i32 [ %__ret11.166, %if.then10.for.end_crit_edge ], [ %__ret11.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %fl_wait, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end31.__out_crit_edge
  %__ret11.255 = phi i32 [ %__ret11.1.lcssa, %for.end ], [ %call68, %if.end31.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end38

if.end38:                                         ; preds = %__out, %entry.if.end38_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %entry.if.end38_crit_edge ], [ %__ret11.255, %__out ]
  ret i32 %__ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_vfs_posix_lock_unblock(ptr noundef %flock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @locks_delete_block(ptr noundef %flock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @locks_delete_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_set_init_posix_acl(ptr noundef %user_ns, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %acl_state = alloca %struct.posix_acl_state, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %acl_state) #14
  %0 = call ptr @memset(ptr %acl_state, i32 255, i32 48)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %1 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #17
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = call i32 @init_acl_state(ptr noundef nonnull %acl_state, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = lshr i16 %3, 6
  %5 = and i16 %4, 7
  %6 = zext i16 %5 to i32
  %7 = ptrtoint ptr %acl_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %acl_state, align 4
  %8 = lshr i16 %3, 3
  %9 = and i16 %8, 7
  %10 = zext i16 %9 to i32
  %group = getelementptr inbounds %struct.posix_acl_state, ptr %acl_state, i32 0, i32 1
  %11 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %group, align 4
  %12 = and i16 %3, 7
  %and16 = zext i16 %12 to i32
  %other = getelementptr inbounds %struct.posix_acl_state, ptr %acl_state, i32 0, i32 2
  %13 = ptrtoint ptr %other to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and16, ptr %other, align 4
  %users = getelementptr inbounds %struct.posix_acl_state, ptr %acl_state, i32 0, i32 5
  %14 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %users, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %arrayidx = getelementptr %struct.posix_ace_state_array, ptr %15, i32 0, i32 1, i32 %17
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %18 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_uid, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx, align 4
  %21 = load i32, ptr %acl_state, align 4
  %22 = load ptr, ptr %users, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %22, align 4
  %perms = getelementptr %struct.posix_ace_state_array, ptr %22, i32 0, i32 1, i32 %24, i32 1
  %25 = ptrtoint ptr %perms to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %21, ptr %perms, align 4
  %groups = getelementptr inbounds %struct.posix_acl_state, ptr %acl_state, i32 0, i32 6
  %26 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %groups, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %arrayidx30 = getelementptr %struct.posix_ace_state_array, ptr %27, i32 0, i32 1, i32 %29
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %30 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_gid, align 8
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx30, align 4
  %33 = load i32, ptr %group, align 4
  %34 = load ptr, ptr %groups, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %inc37 = add i32 %36, 1
  store i32 %inc37, ptr %34, align 4
  %perms39 = getelementptr %struct.posix_ace_state_array, ptr %34, i32 0, i32 1, i32 %36, i32 1
  %37 = ptrtoint ptr %perms39 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %33, ptr %perms39, align 4
  %mask = getelementptr inbounds %struct.posix_acl_state, ptr %acl_state, i32 0, i32 4
  %38 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 7, ptr %mask, align 4
  %call42 = call ptr @posix_acl_alloc(i32 noundef 6, i32 noundef 3264) #14
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  call void @free_acl_state(ptr noundef nonnull %acl_state) #14
  br label %cleanup

if.end45:                                         ; preds = %if.end7
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %call42, i32 0, i32 3
  call void @posix_state_to_acl(ptr noundef nonnull %acl_state, ptr noundef %a_entries) #14
  %call46 = call i32 @set_posix_acl(ptr noundef %user_ns, ptr noundef %inode, i32 noundef 32768, ptr noundef nonnull %call42) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp = icmp slt i32 %call46, 0
  br i1 %cmp, label %do.body49, label %if.else

do.body49:                                        ; preds = %if.end45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %39 = load i32, ptr @ksmbd_debug_types, align 4
  %and50 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body49.land.lhs.true.i_crit_edge, label %do.end55

do.body49.land.lhs.true.i_crit_edge:              ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end55:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #16
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %call46) #17
  br label %land.lhs.true.i

if.else:                                          ; preds = %if.end45
  %40 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %inode, align 8
  %42 = and i16 %41, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %42)
  %cmp64 = icmp eq i16 %42, 16384
  br i1 %cmp64, label %if.then66, label %if.else.land.lhs.true.i_crit_edge

if.else.land.lhs.true.i_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

if.then66:                                        ; preds = %if.else
  call void @posix_state_to_acl(ptr noundef nonnull %acl_state, ptr noundef %a_entries) #14
  %call69 = call i32 @set_posix_acl(ptr noundef %user_ns, ptr noundef %inode, i32 noundef 16384, ptr noundef nonnull %call42) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %do.body73, label %if.then66.land.lhs.true.i_crit_edge

if.then66.land.lhs.true.i_crit_edge:              ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.body73:                                        ; preds = %if.then66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %43 = load i32, ptr @ksmbd_debug_types, align 4
  %and74 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body73.land.lhs.true.i_crit_edge, label %do.end79

do.body73.land.lhs.true.i_crit_edge:              ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end79:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #16
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %call69) #17
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end79, %do.body73.land.lhs.true.i_crit_edge, %if.then66.land.lhs.true.i_crit_edge, %if.else.land.lhs.true.i_crit_edge, %do.end55, %do.body49.land.lhs.true.i_crit_edge
  %rc.0 = phi i32 [ %call46, %do.end55 ], [ %call46, %do.body49.land.lhs.true.i_crit_edge ], [ %call69, %do.end79 ], [ %call69, %do.body73.land.lhs.true.i_crit_edge ], [ %call69, %if.then66.land.lhs.true.i_crit_edge ], [ %call46, %if.else.land.lhs.true.i_crit_edge ]
  call void @free_acl_state(ptr noundef nonnull %acl_state) #14
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call42, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !309
  call void @llvm.prefetch.p0(ptr nonnull %call42, i32 1, i32 3, i32 1) #14
  %44 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call42, ptr nonnull %call42, i32 1, ptr nonnull elementtype(i32) %call42) #14, !srcloc !310
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !311

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef nonnull %call42, i32 noundef 3) #14
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !312
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %call42, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then44, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then44 ], [ %call4, %do.end3.cleanup_crit_edge ], [ %rc.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %rc.0, %if.then10.i.i.i.i ], [ %rc.0, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %acl_state) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_acl_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_acl_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_state_to_acl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_posix_acl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_vfs_inherit_posix_acl(ptr noundef %user_ns, ptr noundef %inode, ptr noundef %parent_inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_acl(ptr noundef %parent_inode, i32 noundef 16384) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp59.not = icmp eq i32 %1, 0
  br i1 %cmp59.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %call, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.061 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %pace.060 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %a_entries, %for.body.preheader ]
  %2 = ptrtoint ptr %pace.060 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pace.060, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %3)
  %cmp1 = icmp eq i16 %3, 16
  br i1 %cmp1, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %e_perm = getelementptr inbounds %struct.posix_acl_entry, ptr %pace.060, i32 0, i32 1
  %4 = ptrtoint ptr %e_perm to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 7, ptr %e_perm, align 2
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.061, 1
  %incdec.ptr = getelementptr %struct.posix_acl_entry, ptr %pace.060, i32 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then3, %if.end.for.end_crit_edge
  %call5 = tail call i32 @set_posix_acl(ptr noundef %user_ns, ptr noundef %inode, i32 noundef 32768, ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.body, label %for.end.if.end16_crit_edge

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

do.body:                                          ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %5 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body.if.end16_crit_edge, label %do.end

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %call5) #17
  br label %if.end16

if.end16:                                         ; preds = %do.end, %do.body.if.end16_crit_edge, %for.end.if.end16_crit_edge
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %8)
  %cmp19 = icmp eq i16 %8, 16384
  br i1 %cmp19, label %if.then21, label %if.end16.land.lhs.true.i_crit_edge

if.end16.land.lhs.true.i_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

if.then21:                                        ; preds = %if.end16
  %call22 = tail call i32 @set_posix_acl(ptr noundef %user_ns, ptr noundef %inode, i32 noundef 16384, ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.body26, label %if.then21.land.lhs.true.i_crit_edge

if.then21.land.lhs.true.i_crit_edge:              ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.body26:                                        ; preds = %if.then21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %9 = load i32, ptr @ksmbd_debug_types, align 4
  %and27 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.land.lhs.true.i_crit_edge, label %do.end32

do.body26.land.lhs.true.i_crit_edge:              ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %call22) #17
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end32, %do.body26.land.lhs.true.i_crit_edge, %if.then21.land.lhs.true.i_crit_edge, %if.end16.land.lhs.true.i_crit_edge
  %rc.0 = phi i32 [ %call22, %do.end32 ], [ %call22, %do.body26.land.lhs.true.i_crit_edge ], [ %call22, %if.then21.land.lhs.true.i_crit_edge ], [ %call5, %if.end16.land.lhs.true.i_crit_edge ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !309
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #14, !srcloc !310
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !311

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #14
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !312
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %call, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %rc.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %rc.0, %if.then10.i.i.i.i ], [ %rc.0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_acl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ksmbd_vfs_getcasexattr(ptr noundef %user_ns, ptr noundef %dentry, ptr nocapture noundef readonly %attr_name, i32 noundef %attr_name_len, ptr nocapture noundef writeonly %attr_value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @vfs_listxattr(ptr noundef %dentry, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %call.i, i32 noundef 3520, i32 noundef -1) #18
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.out_crit_edge, label %if.end3.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call i32 @vfs_listxattr(ptr noundef %dentry, ptr noundef nonnull %call.i.i, i32 noundef %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.body.i, label %ksmbd_vfs_listxattr.exit

do.body.i:                                        ; preds = %if.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %do.body.i.do.end13.i_crit_edge, label %do.end.i

do.body.i.do.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #17
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %do.body.i.do.end13.i_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #14
  br label %out

ksmbd_vfs_listxattr.exit:                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp eq i32 %call4.i, 0
  br i1 %cmp, label %ksmbd_vfs_listxattr.exit.out_crit_edge, label %do.body.preheader

ksmbd_vfs_listxattr.exit.out_crit_edge:           ; preds = %ksmbd_vfs_listxattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body.preheader:                                ; preds = %ksmbd_vfs_listxattr.exit
  %sub.ptr.rhs.cast = ptrtoint ptr %call.i.i to i32
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.preheader
  %name.055 = phi ptr [ %add.ptr, %for.inc.do.body_crit_edge ], [ %call.i.i, %do.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %1 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call i32 @strlen(ptr noundef %name.055) #19
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name.055, i32 noundef %call4) #17
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %call9 = tail call i32 @strncasecmp(ptr noundef %attr_name, ptr noundef %name.055, i32 noundef %attr_name_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %for.inc

if.end12:                                         ; preds = %do.end8
  %2 = ptrtoint ptr %attr_value to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %attr_value, align 4
  %call.i.i32 = tail call i32 @vfs_getxattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef %name.055, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %cmp.i33 = icmp slt i32 %call.i.i32, 0
  br i1 %cmp.i33, label %if.end12.do.end18_crit_edge, label %if.end8.i.i

if.end12.do.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end18

if.end8.i.i:                                      ; preds = %if.end12
  %add.i = add nuw i32 %call.i.i32, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #18
  %tobool.not.i35 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i35, label %if.end8.i.i.do.end18_crit_edge, label %if.end3.i38

if.end8.i.i.do.end18_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end18

if.end3.i38:                                      ; preds = %if.end8.i.i
  %call4.i36 = tail call i32 @vfs_getxattr(ptr noundef %user_ns, ptr noundef %dentry, ptr noundef %name.055, ptr noundef nonnull %call9.i.i, i32 noundef %call.i.i32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i36)
  %cmp5.i37 = icmp sgt i32 %call4.i36, 0
  br i1 %cmp5.i37, label %ksmbd_vfs_getxattr.exit.thread49, label %ksmbd_vfs_getxattr.exit

ksmbd_vfs_getxattr.exit.thread49:                 ; preds = %if.end3.i38
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %attr_value to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i, ptr %attr_value, align 4
  br label %out

ksmbd_vfs_getxattr.exit:                          ; preds = %if.end3.i38
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i36)
  %cmp14 = icmp slt i32 %call4.i36, 0
  br i1 %cmp14, label %ksmbd_vfs_getxattr.exit.do.end18_crit_edge, label %ksmbd_vfs_getxattr.exit.out_crit_edge

ksmbd_vfs_getxattr.exit.out_crit_edge:            ; preds = %ksmbd_vfs_getxattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

ksmbd_vfs_getxattr.exit.do.end18_crit_edge:       ; preds = %ksmbd_vfs_getxattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end18

do.end18:                                         ; preds = %ksmbd_vfs_getxattr.exit.do.end18_crit_edge, %if.end8.i.i.do.end18_crit_edge, %if.end12.do.end18_crit_edge
  %retval.0.i3948 = phi i32 [ %call4.i36, %ksmbd_vfs_getxattr.exit.do.end18_crit_edge ], [ -12, %if.end8.i.i.do.end18_crit_edge ], [ %call.i.i32, %if.end12.do.end18_crit_edge ]
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #17
  br label %out

for.inc:                                          ; preds = %do.end8
  %call22 = tail call i32 @strlen(ptr noundef %name.055) #19
  %add = add i32 %call22, 1
  %add.ptr = getelementptr i8, ptr %name.055, i32 %add
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp slt i32 %sub.ptr.sub, %call4.i
  br i1 %cmp1, label %for.inc.do.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

out:                                              ; preds = %for.inc.out_crit_edge, %do.end18, %ksmbd_vfs_getxattr.exit.out_crit_edge, %ksmbd_vfs_getxattr.exit.thread49, %ksmbd_vfs_listxattr.exit.out_crit_edge, %do.end13.i, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %xattr_list.045 = phi ptr [ %call.i.i, %ksmbd_vfs_listxattr.exit.out_crit_edge ], [ %call.i.i, %do.end18 ], [ %call.i.i, %ksmbd_vfs_getxattr.exit.out_crit_edge ], [ %call.i.i, %ksmbd_vfs_getxattr.exit.thread49 ], [ null, %entry.out_crit_edge ], [ null, %if.end.i.out_crit_edge ], [ null, %do.end13.i ], [ %call.i.i, %for.inc.out_crit_edge ]
  %value_len.0 = phi i32 [ -2, %ksmbd_vfs_listxattr.exit.out_crit_edge ], [ %retval.0.i3948, %do.end18 ], [ 0, %ksmbd_vfs_getxattr.exit.out_crit_edge ], [ %call4.i36, %ksmbd_vfs_getxattr.exit.thread49 ], [ -2, %entry.out_crit_edge ], [ -2, %if.end.i.out_crit_edge ], [ -2, %do.end13.i ], [ -2, %for.inc.out_crit_edge ]
  tail call void @kvfree(ptr noundef %xattr_list.045) #14
  ret i32 %value_len.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_rename(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_lookup_fd_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__caseless_lookup(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %name, i32 noundef %namlen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %used = getelementptr inbounds %struct.ksmbd_readdir_data, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %namlen)
  %cmp.not = icmp eq i32 %1, %namlen
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.ksmbd_readdir_data, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %call = tail call i32 @strncasecmp(ptr noundef %4, ptr noundef %name, i32 noundef %namlen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = call ptr @memcpy(ptr %4, ptr %name, i32 %namlen)
  %dirent_count = getelementptr inbounds %struct.ksmbd_readdir_data, ptr %ctx, i32 0, i32 3
  %6 = ptrtoint ptr %dirent_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %dirent_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %if.then1 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !137, !139, !140, !141, !143, !144, !145, !147, !148, !150, !152, !153, !154, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !184, !185, !186, !188, !190, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !209, !211, !213, !215, !217, !218, !219, !221, !222, !224, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !244, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !260, !262, !263, !264, !266, !267, !268, !269, !271, !272, !273, !275, !276, !277, !278, !280, !281, !282, !284, !285, !286, !287, !289, !291, !292, !293}
!llvm.named.register.sp = !{!294}
!llvm.module.flags = !{!295, !296, !297, !298, !299, !300, !301, !302}
!llvm.ident = !{!303}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/vfs.c", i32 175, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ksmbd_vfs_create._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ksmbd_vfs_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ksmbd/vfs.c", i32 187, i32 3}
!8 = !{ptr @ksmbd_vfs_create._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ksmbd_vfs_create._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ksmbd/vfs.c", i32 214, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ksmbd_vfs_mkdir._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @ksmbd_vfs_mkdir._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ksmbd/vfs.c", i32 245, i32 3}
!17 = !{ptr @ksmbd_vfs_mkdir._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @ksmbd_vfs_mkdir._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ksmbd/vfs.c", i32 381, i32 4}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ksmbd_vfs_read._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @ksmbd_vfs_read._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ksmbd/vfs.c", i32 395, i32 4}
!26 = !{ptr @ksmbd_vfs_read._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ksmbd_vfs_read._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ksmbd/vfs.c", i32 402, i32 3}
!30 = !{ptr @ksmbd_vfs_read._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ksmbd_vfs_read._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ksmbd/vfs.c", i32 493, i32 4}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ksmbd_vfs_write._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ksmbd_vfs_write._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ksmbd/vfs.c", i32 512, i32 4}
!39 = !{ptr @ksmbd_vfs_write._entry.21, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ksmbd_vfs_write._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ksmbd/vfs.c", i32 523, i32 3}
!43 = !{ptr @ksmbd_vfs_write._entry.24, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ksmbd_vfs_write._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ksmbd/vfs.c", i32 533, i32 4}
!47 = !{ptr @ksmbd_vfs_write._entry.27, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ksmbd_vfs_write._entry_ptr.29, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ksmbd/vfs.c", i32 555, i32 3}
!51 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ksmbd_vfs_getattr._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ksmbd_vfs_getattr._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ksmbd/vfs.c", i32 573, i32 3}
!56 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ksmbd_vfs_fsync._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ksmbd_vfs_fsync._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ksmbd/vfs.c", i32 578, i32 3}
!61 = !{ptr @ksmbd_vfs_fsync._entry.34, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ksmbd_vfs_fsync._entry_ptr.36, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ksmbd/vfs.c", i32 601, i32 3}
!65 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ksmbd_vfs_remove_file._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ksmbd_vfs_remove_file._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ksmbd/vfs.c", i32 624, i32 4}
!70 = !{ptr @ksmbd_vfs_remove_file._entry.39, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ksmbd_vfs_remove_file._entry_ptr.41, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ksmbd/vfs.c", i32 629, i32 4}
!74 = !{ptr @ksmbd_vfs_remove_file._entry.42, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ksmbd_vfs_remove_file._entry_ptr.44, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ksmbd/vfs.c", i32 660, i32 3}
!78 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ksmbd_vfs_link._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @ksmbd_vfs_link._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ksmbd/vfs.c", i32 670, i32 3}
!83 = !{ptr @ksmbd_vfs_link._entry.47, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ksmbd_vfs_link._entry_ptr.49, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ksmbd/vfs.c", i32 676, i32 3}
!87 = !{ptr @ksmbd_vfs_link._entry.50, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @ksmbd_vfs_link._entry_ptr.52, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.54, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ksmbd/vfs.c", i32 684, i32 3}
!91 = !{ptr @ksmbd_vfs_link._entry.53, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ksmbd_vfs_link._entry_ptr.55, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.56, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ksmbd/vfs.c", i32 790, i32 13}
!95 = !{ptr @.str.57, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ksmbd/vfs.c", i32 800, i32 3}
!97 = !{ptr @.str.58, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ksmbd_vfs_fp_rename._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @ksmbd_vfs_fp_rename._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/ksmbd/vfs.c", i32 872, i32 4}
!102 = !{ptr @.str.60, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @ksmbd_vfs_truncate._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @ksmbd_vfs_truncate._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.62, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ksmbd/vfs.c", i32 879, i32 3}
!107 = !{ptr @ksmbd_vfs_truncate._entry.61, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ksmbd_vfs_truncate._entry_ptr.63, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.64, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ksmbd/vfs.c", i32 908, i32 3}
!111 = !{ptr @.str.65, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ksmbd_vfs_listxattr._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @ksmbd_vfs_listxattr._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.66, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ksmbd/vfs.c", i32 980, i32 3}
!116 = !{ptr @.str.67, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ksmbd_vfs_setxattr._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @ksmbd_vfs_setxattr._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/ksmbd/vfs.c", i32 1105, i32 3}
!121 = !{ptr @.str.69, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ksmbd_vfs_unlink._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @ksmbd_vfs_unlink._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/ksmbd/vfs.c", i32 1304, i32 3}
!126 = !{ptr @.str.71, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @ksmbd_vfs_remove_acl_xattrs._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @ksmbd_vfs_remove_acl_xattrs._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.73, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/ksmbd/vfs.c", i32 1310, i32 3}
!131 = !{ptr @ksmbd_vfs_remove_acl_xattrs._entry.72, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @ksmbd_vfs_remove_acl_xattrs._entry_ptr.74, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.75, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/ksmbd/vfs.c", i32 1312, i32 22}
!135 = !{ptr @.str.76, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/ksmbd/vfs.c", i32 1314, i32 22}
!137 = !{ptr @.str.78, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/ksmbd/vfs.c", i32 1318, i32 5}
!139 = !{ptr @ksmbd_vfs_remove_acl_xattrs._entry.77, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @ksmbd_vfs_remove_acl_xattrs._entry_ptr.79, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.80, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/ksmbd/vfs.c", i32 1338, i32 3}
!143 = !{ptr @ksmbd_vfs_remove_sd_xattrs._entry, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @ksmbd_vfs_remove_sd_xattrs._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @ksmbd_vfs_remove_sd_xattrs._entry.81, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../fs/ksmbd/vfs.c", i32 1344, i32 3}
!147 = !{ptr @ksmbd_vfs_remove_sd_xattrs._entry_ptr.82, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.83, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/ksmbd/vfs.c", i32 1346, i32 22}
!150 = !{ptr @.str.85, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/ksmbd/vfs.c", i32 1349, i32 5}
!152 = !{ptr @ksmbd_vfs_remove_sd_xattrs._entry.84, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @ksmbd_vfs_remove_sd_xattrs._entry_ptr.86, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.87, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ksmbd/vfs.c", i32 1437, i32 19}
!156 = !{ptr @.str.88, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/ksmbd/vfs.c", i32 1452, i32 3}
!158 = !{ptr @.str.89, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @ksmbd_vfs_set_sd_xattr._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @ksmbd_vfs_set_sd_xattr._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.91, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/ksmbd/vfs.c", i32 1465, i32 3}
!163 = !{ptr @ksmbd_vfs_set_sd_xattr._entry.90, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @ksmbd_vfs_set_sd_xattr._entry_ptr.92, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @ksmbd_vfs_set_sd_xattr._entry.93, !166, !"_entry", i1 false, i1 false}
!166 = !{!"../fs/ksmbd/vfs.c", i32 1472, i32 3}
!167 = !{ptr @ksmbd_vfs_set_sd_xattr._entry_ptr.94, !166, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @ksmbd_vfs_set_sd_xattr._entry.95, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../fs/ksmbd/vfs.c", i32 1478, i32 3}
!170 = !{ptr @ksmbd_vfs_set_sd_xattr._entry_ptr.96, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.98, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/ksmbd/vfs.c", i32 1486, i32 3}
!173 = !{ptr @ksmbd_vfs_set_sd_xattr._entry.97, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @ksmbd_vfs_set_sd_xattr._entry_ptr.99, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.100, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/ksmbd/vfs.c", i32 1527, i32 3}
!177 = !{ptr @ksmbd_vfs_get_sd_xattr._entry, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @ksmbd_vfs_get_sd_xattr._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @ksmbd_vfs_get_sd_xattr._entry.101, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../fs/ksmbd/vfs.c", i32 1533, i32 3}
!181 = !{ptr @ksmbd_vfs_get_sd_xattr._entry_ptr.102, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.104, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/ksmbd/vfs.c", i32 1538, i32 3}
!184 = !{ptr @ksmbd_vfs_get_sd_xattr._entry.103, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @ksmbd_vfs_get_sd_xattr._entry_ptr.105, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.106, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/ksmbd/vfs.c", i32 1577, i32 44}
!188 = !{ptr @.str.107, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/ksmbd/vfs.c", i32 1580, i32 3}
!190 = !{ptr @.str.108, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @ksmbd_vfs_set_dos_attrib_xattr._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @ksmbd_vfs_set_dos_attrib_xattr._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.109, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/ksmbd/vfs.c", i32 1601, i32 3}
!195 = !{ptr @.str.110, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @ksmbd_vfs_get_dos_attrib_xattr._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @ksmbd_vfs_get_dos_attrib_xattr._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.111, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/ksmbd/vfs.c", i32 1670, i32 4}
!200 = !{ptr @.str.112, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @ksmbd_vfs_fill_dentry_attrs._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @ksmbd_vfs_fill_dentry_attrs._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.113, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/ksmbd/vfs.c", i32 1690, i32 3}
!205 = !{ptr @ksmbd_vfs_casexattr_len._entry, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @ksmbd_vfs_casexattr_len._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.114, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/ksmbd/vfs.c", i32 1709, i32 10}
!209 = !{ptr @.str.115, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/ksmbd/vfs.c", i32 1711, i32 10}
!211 = !{ptr @.str.116, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/ksmbd/vfs.c", i32 1713, i32 30}
!213 = !{ptr @.str.117, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/ksmbd/vfs.c", i32 1714, i32 4}
!215 = !{ptr @.str.118, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/ksmbd/vfs.c", i32 1743, i32 3}
!217 = !{ptr @ksmbd_vfs_copy_file_ranges._entry, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @ksmbd_vfs_copy_file_ranges._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @ksmbd_vfs_copy_file_ranges._entry.119, !220, !"_entry", i1 false, i1 false}
!220 = !{!"../fs/ksmbd/vfs.c", i32 1747, i32 3}
!221 = !{ptr @ksmbd_vfs_copy_file_ranges._entry_ptr.120, !220, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.121, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/ksmbd/vfs.c", i32 1819, i32 2}
!224 = !{ptr @.str.122, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @ksmbd_vfs_set_init_posix_acl._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @ksmbd_vfs_set_init_posix_acl._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.124, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/ksmbd/vfs.c", i32 1844, i32 3}
!229 = !{ptr @ksmbd_vfs_set_init_posix_acl._entry.123, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @ksmbd_vfs_set_init_posix_acl._entry_ptr.125, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.127, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/ksmbd/vfs.c", i32 1851, i32 4}
!233 = !{ptr @ksmbd_vfs_set_init_posix_acl._entry.126, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @ksmbd_vfs_set_init_posix_acl._entry_ptr.128, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.129, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/ksmbd/vfs.c", i32 1883, i32 3}
!237 = !{ptr @ksmbd_vfs_inherit_posix_acl._entry, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @ksmbd_vfs_inherit_posix_acl._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @ksmbd_vfs_inherit_posix_acl._entry.130, !240, !"_entry", i1 false, i1 false}
!240 = !{!"../fs/ksmbd/vfs.c", i32 1889, i32 4}
!241 = !{ptr @ksmbd_vfs_inherit_posix_acl._entry_ptr.131, !240, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.132, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/ksmbd/vfs.c", i32 286, i32 2}
!244 = !{ptr @.str.133, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @ksmbd_vfs_stream_read._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @ksmbd_vfs_stream_read._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.134, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/ksmbd/vfs.c", i32 262, i32 3}
!249 = !{ptr @ksmbd_vfs_getcasexattr._entry, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @ksmbd_vfs_getcasexattr._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.136, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/ksmbd/vfs.c", i32 271, i32 4}
!253 = !{ptr @ksmbd_vfs_getcasexattr._entry.135, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @ksmbd_vfs_getcasexattr._entry_ptr.137, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.138, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../fs/ksmbd/vfs.c", i32 337, i32 6}
!257 = !{ptr @.str.139, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @check_lock_range._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @check_lock_range._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.141, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../fs/ksmbd/vfs.c", i32 345, i32 6}
!262 = !{ptr @check_lock_range._entry.140, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @check_lock_range._entry_ptr.142, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.143, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../fs/ksmbd/vfs.c", i32 419, i32 2}
!266 = !{ptr @.str.144, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @ksmbd_vfs_stream_write._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @ksmbd_vfs_stream_write._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.146, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../fs/ksmbd/vfs.c", i32 434, i32 3}
!271 = !{ptr @ksmbd_vfs_stream_write._entry.145, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @ksmbd_vfs_stream_write._entry_ptr.147, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.148, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/ksmbd/vfs.c", i32 752, i32 3}
!275 = !{ptr @.str.149, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @__ksmbd_vfs_rename._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @__ksmbd_vfs_rename._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.151, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../fs/ksmbd/vfs.c", i32 769, i32 3}
!280 = !{ptr @__ksmbd_vfs_rename._entry.150, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @__ksmbd_vfs_rename._entry_ptr.152, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.153, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/ksmbd/vfs.c", i32 709, i32 4}
!284 = !{ptr @.str.154, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @ksmbd_validate_entry_in_use._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @ksmbd_validate_entry_in_use._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = distinct !{null, !288, !"__warned", i1 false, i1 false}
!288 = !{!"../fs/ksmbd/vfs.c", i32 1185, i32 34}
!289 = !{ptr @.str.155, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../fs/ksmbd/vfs.c", i32 1406, i32 4}
!291 = !{ptr @.str.156, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @ksmbd_vfs_make_xattr_posix_acl._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @ksmbd_vfs_make_xattr_posix_acl._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{!"sp"}
!295 = !{i32 1, !"wchar_size", i32 2}
!296 = !{i32 1, !"min_enum_size", i32 4}
!297 = !{i32 8, !"branch-target-enforcement", i32 0}
!298 = !{i32 8, !"sign-return-address", i32 0}
!299 = !{i32 8, !"sign-return-address-all", i32 0}
!300 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!301 = !{i32 7, !"uwtable", i32 1}
!302 = !{i32 7, !"frame-pointer", i32 2}
!303 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!304 = !{!"auto-init"}
!305 = !{i64 2152446998}
!306 = !{!"branch_weights", i32 1, i32 2000}
!307 = !{i8 0, i8 2}
!308 = !{i64 2148972408}
!309 = !{i64 2148342534}
!310 = !{i64 2148256998, i64 2148257030, i64 2148257059, i64 2148257093, i64 2148257124, i64 2148257147}
!311 = !{!"branch_weights", i32 2000, i32 1}
!312 = !{i64 2150406182}
!313 = !{i64 645484, i64 645545}
!314 = !{i64 648216}
!315 = !{i64 648501}
!316 = !{i64 2152538369}
!317 = !{i64 2152538211}
!318 = !{i64 2152538539}
!319 = !{i64 2150124353}
