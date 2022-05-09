; ModuleID = '/llk/IR_all_yes/fs/afs/fsclient.c_pt.bc'
source_filename = "../fs/afs/fsclient.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.afs_call_type = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.2 }
%union.anon.2 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.afs_operation = type { ptr, ptr, ptr, ptr, ptr, [2 x %struct.afs_vnode_param], ptr, %struct.afs_volsync, ptr, ptr, %struct.timespec64, %struct.timespec64, i16, i16, i32, i32, i32, %union.anon.158, %struct.afs_addr_cursor, ptr, ptr, ptr, i32, i16, i16, i32 }
%struct.afs_vnode_param = type { ptr, %struct.afs_fid, %struct.afs_status_cb, i64, i32, i8, i8 }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.afs_status_cb = type { %struct.afs_file_status, %struct.afs_callback, i8, i8, i8 }
%struct.afs_file_status = type { i64, i64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i32, i32, i16, i32, i32, i32, i32 }
%struct.afs_callback = type { i64 }
%struct.afs_volsync = type { i64 }
%struct.timespec64 = type { i64, i32 }
%union.anon.158 = type { %struct.anon.169 }
%struct.anon.169 = type { %struct.afs_volume_status, ptr }
%struct.afs_volume_status = type { i64, i64, i8, i8, i8, i8, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.4, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.5, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.6, %union.anon.10, ptr }
%union.anon.4 = type { %struct.rb_node }
%union.anon.5 = type { i64 }
%union.anon.6 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.7, ptr, ptr, ptr }
%union.anon.7 = type { i32 }
%union.anon.10 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.afs_call = type { ptr, ptr, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.iov_iter, ptr, ptr, %union.anon.148, ptr, %union.anon.149, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, %union.anon.150, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.79 }
%union.anon.20 = type { ptr }
%union.anon.79 = type { i64 }
%union.anon.148 = type { [1 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.149 = type { i32 }
%union.anon.150 = type { i64 }
%struct.afs_server = type { %struct.callback_head, %union.anon.143, ptr, ptr, %struct.rb_node, ptr, ptr, %struct.list_head, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.work_struct, ptr, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.rwlock_t, i32, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.147 }
%union.anon.143 = type { %struct.afs_uuid }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.147 = type { i32, i32, i16, i8 }
%struct.afs_read = type { i64, i64, i64, i64, ptr, ptr, ptr, i64, %struct.refcount_struct, i32, i32, i32, ptr, ptr, ptr, %struct.iov_iter }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.24, ptr }
%union.anon.24 = type { i64 }
%struct.lockref = type { %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.spinlock, i32 }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.anon.160 = type { i32, i16, ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.afs_acl = type { i32, [0 x i8] }
%struct.afs_xdr_AFSFetchStatus = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.151 = type { i32, i32 }
%struct.afs_volume = type { %union.anon.145, %struct.atomic_t, i64, ptr, %struct.rb_node, %struct.hlist_node, ptr, i32, ptr, ptr, %struct.rwlock_t, i32, i32, %struct.rwlock_t, i8, i8, i8, [65 x i8] }
%union.anon.145 = type { i64 }

@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_fs_fetch_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s] ==> %s(,%x,{%llx:%llu},,)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_fs_fetch_status\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/afs/fsclient.c\00", [46 x i8] zeroinitializer }, align 32
@afs_fs_fetch_status._entry_ptr = internal global ptr @afs_fs_fetch_status._entry, section ".printk_index", align 4
@afs_RXFSFetchStatus = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.27, i32 132, ptr @afs_deliver_fs_fetch_status, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_fetch_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"afs_fs_fetch_data\00", [46 x i8] zeroinitializer }, align 32
@afs_fs_fetch_data._entry_ptr = internal global ptr @afs_fs_fetch_data._entry, section ".printk_index", align 4
@afs_RXFSFetchData = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.61, i32 130, ptr @afs_deliver_fs_fetch_data, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_create_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.5, ptr @.str.2, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_fs_create_file\00", [45 x i8] zeroinitializer }, align 32
@afs_fs_create_file._entry_ptr = internal global ptr @afs_fs_create_file._entry, section ".printk_index", align 4
@afs_RXFSCreateFile = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.62, i32 137, ptr @afs_deliver_fs_create_vnode, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_make_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.6, ptr @.str.2, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_fs_make_dir\00", [16 x i8] zeroinitializer }, align 32
@afs_fs_make_dir._entry_ptr = internal global ptr @afs_fs_make_dir._entry, section ".printk_index", align 4
@afs_RXFSMakeDir = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.64, i32 141, ptr @afs_deliver_fs_create_vnode, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_remove_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.7, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_fs_remove_file\00", [45 x i8] zeroinitializer }, align 32
@afs_fs_remove_file._entry_ptr = internal global ptr @afs_fs_remove_file._entry, section ".printk_index", align 4
@afs_RXFSRemoveFile = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.65, i32 136, ptr @afs_deliver_fs_file_status_and_vol, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_remove_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.8, ptr @.str.2, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"afs_fs_remove_dir\00", [46 x i8] zeroinitializer }, align 32
@afs_fs_remove_dir._entry_ptr = internal global ptr @afs_fs_remove_dir._entry, section ".printk_index", align 4
@afs_RXFSRemoveDir = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.67, i32 142, ptr @afs_deliver_fs_file_status_and_vol, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.9, ptr @.str.2, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"afs_fs_link\00", [20 x i8] zeroinitializer }, align 32
@afs_fs_link._entry_ptr = internal global ptr @afs_fs_link._entry, section ".printk_index", align 4
@afs_RXFSLink = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.68, i32 140, ptr @afs_deliver_fs_link, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_symlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.10, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_fs_symlink\00", [17 x i8] zeroinitializer }, align 32
@afs_fs_symlink._entry_ptr = internal global ptr @afs_fs_symlink._entry, section ".printk_index", align 4
@afs_RXFSSymlink = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.73, i32 139, ptr @afs_deliver_fs_symlink, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_rename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.11, ptr @.str.2, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"afs_fs_rename\00", [18 x i8] zeroinitializer }, align 32
@afs_fs_rename._entry_ptr = internal global ptr @afs_fs_rename._entry, section ".printk_index", align 4
@afs_RXFSRename = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.77, i32 138, ptr @afs_deliver_fs_rename, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_store_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.12, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"afs_fs_store_data\00", [46 x i8] zeroinitializer }, align 32
@afs_fs_store_data._entry_ptr = internal global ptr @afs_fs_store_data._entry, section ".printk_index", align 4
@afs_fs_store_data._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%-6.6s]     size %llx, at %llx, i_size %llx\0A\00", [50 x i8] zeroinitializer }, align 32
@afs_fs_store_data._entry_ptr.15 = internal global ptr @afs_fs_store_data._entry.13, section ".printk_index", align 4
@afs_RXFSStoreData = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.84, i32 133, ptr @afs_deliver_fs_store_data, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_setattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.16, ptr @.str.2, i32 1269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_fs_setattr\00", [17 x i8] zeroinitializer }, align 32
@afs_fs_setattr._entry_ptr = internal global ptr @afs_fs_setattr._entry, section ".printk_index", align 4
@afs_RXFSStoreStatus = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.97, i32 135, ptr @afs_deliver_fs_store_data, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_get_volume_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.17, ptr @.str.2, i32 1437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"afs_fs_get_volume_status\00", [39 x i8] zeroinitializer }, align 32
@afs_fs_get_volume_status._entry_ptr = internal global ptr @afs_fs_get_volume_status._entry, section ".printk_index", align 4
@afs_RXFSGetVolumeStatus = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.98, i32 149, ptr @afs_deliver_fs_get_volume_status, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_set_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.18, ptr @.str.2, i32 1517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_fs_set_lock\00", [16 x i8] zeroinitializer }, align 32
@afs_fs_set_lock._entry_ptr = internal global ptr @afs_fs_set_lock._entry, section ".printk_index", align 4
@afs_RXFSSetLock = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.132, i32 156, ptr @afs_deliver_fs_xxxx_lock, ptr @afs_flat_call_destructor, ptr null, ptr @afs_lock_op_done }, [40 x i8] zeroinitializer }, align 32
@afs_fs_extend_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.19, ptr @.str.2, i32 1544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_fs_extend_lock\00", [45 x i8] zeroinitializer }, align 32
@afs_fs_extend_lock._entry_ptr = internal global ptr @afs_fs_extend_lock._entry, section ".printk_index", align 4
@afs_RXFSExtendLock = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.136, i32 157, ptr @afs_deliver_fs_xxxx_lock, ptr @afs_flat_call_destructor, ptr null, ptr @afs_lock_op_done }, [40 x i8] zeroinitializer }, align 32
@afs_fs_release_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.20, ptr @.str.2, i32 1570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_fs_release_lock\00", [44 x i8] zeroinitializer }, align 32
@afs_fs_release_lock._entry_ptr = internal global ptr @afs_fs_release_lock._entry, section ".printk_index", align 4
@afs_RXFSReleaseLock = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.137, i32 158, ptr @afs_deliver_fs_xxxx_lock, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_give_up_all_callbacks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.21, ptr @.str.2, i32 1616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"afs_fs_give_up_all_callbacks\00", [35 x i8] zeroinitializer }, align 32
@afs_fs_give_up_all_callbacks._entry_ptr = internal global ptr @afs_fs_give_up_all_callbacks._entry, section ".printk_index", align 4
@afs_RXFSGiveUpAllCallBacks = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.138, i32 65539, ptr @afs_deliver_fs_give_up_all_callbacks, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_get_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.22, ptr @.str.2, i32 1715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"afs_fs_get_capabilities\00", [40 x i8] zeroinitializer }, align 32
@afs_fs_get_capabilities._entry_ptr = internal global ptr @afs_fs_get_capabilities._entry, section ".printk_index", align 4
@afs_RXFSGetCapabilities = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.139, i32 65540, ptr @afs_deliver_fs_get_capabilities, ptr @afs_flat_call_destructor, ptr null, ptr @afs_fileserver_probe_result }, [40 x i8] zeroinitializer }, align 32
@afs_fs_inline_bulk_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%-6.6s] ==> %s(,%x,{%llx:%llu},%u)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"afs_fs_inline_bulk_status\00", [38 x i8] zeroinitializer }, align 32
@afs_fs_inline_bulk_status._entry_ptr = internal global ptr @afs_fs_inline_bulk_status._entry, section ".printk_index", align 4
@afs_RXFSInlineBulkStatus = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.144, i32 65536, ptr @afs_deliver_fs_inline_bulk_status, ptr @afs_flat_call_destructor, ptr null, ptr @afs_done_fs_inline_bulk_status }, [40 x i8] zeroinitializer }, align 32
@afs_fs_fetch_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.25, ptr @.str.2, i32 2023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_fs_fetch_acl\00", [47 x i8] zeroinitializer }, align 32
@afs_fs_fetch_acl._entry_ptr = internal global ptr @afs_fs_fetch_acl._entry, section ".printk_index", align 4
@afs_RXFSFetchACL = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.169, i32 131, ptr @afs_deliver_fs_fetch_acl, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_store_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.26, ptr @.str.2, i32 2062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_fs_store_acl\00", [47 x i8] zeroinitializer }, align 32
@afs_fs_store_acl._entry_ptr = internal global ptr @afs_fs_store_acl._entry, section ".printk_index", align 4
@afs_RXFSStoreACL = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.173, i32 134, ptr @afs_deliver_fs_file_status_and_vol, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FS.FetchStatus\00", [17 x i8] zeroinitializer }, align 32
@afs_deliver_fs_fetch_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = 0 [done]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"afs_deliver_fs_fetch_status\00", [36 x i8] zeroinitializer }, align 32
@afs_deliver_fs_fetch_status._entry_ptr = internal global ptr @afs_deliver_fs_fetch_status._entry, section ".printk_index", align 4
@xdr_decode_AFSFetchStatus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014Unknown AFSFetchStatus version %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xdr_decode_AFSFetchStatus\00", [38 x i8] zeroinitializer }, align 32
@xdr_decode_AFSFetchStatus._entry_ptr = internal global ptr @xdr_decode_AFSFetchStatus._entry, section ".printk_index", align 4
@xdr_dump_bad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015AFS XDR: Bad status record\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xdr_dump_bad\00", [19 x i8] zeroinitializer }, align 32
@xdr_dump_bad._entry_ptr = internal global ptr @xdr_dump_bad._entry, section ".printk_index", align 4
@xdr_dump_bad._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015%03x: %08x %08x %08x %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@xdr_dump_bad._entry_ptr.36 = internal global ptr @xdr_dump_bad._entry.34, section ".printk_index", align 4
@xdr_dump_bad._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0150x50: %08x\0A\00", [18 x i8] zeroinitializer }, align 32
@xdr_dump_bad._entry_ptr.39 = internal global ptr @xdr_dump_bad._entry.37, section ".printk_index", align 4
@__tracepoint_afs_make_fs_call = external dso_local global %struct.tracepoint, align 4
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_make_fs_call.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@afs_fs_fetch_data64._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.43, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_fs_fetch_data64\00", [44 x i8] zeroinitializer }, align 32
@afs_fs_fetch_data64._entry_ptr = internal global ptr @afs_fs_fetch_data64._entry, section ".printk_index", align 4
@afs_RXFSFetchData64 = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.44, i32 65537, ptr @afs_deliver_fs_fetch_data, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FS.FetchData64\00", [17 x i8] zeroinitializer }, align 32
@afs_deliver_fs_fetch_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s] ==> %s({%u,%zu,%zu/%llu})\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"afs_deliver_fs_fetch_data\00", [38 x i8] zeroinitializer }, align 32
@afs_deliver_fs_fetch_data._entry_ptr = internal global ptr @afs_deliver_fs_fetch_data._entry, section ".printk_index", align 4
@afs_deliver_fs_fetch_data._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s]     extract data length\0A\00", [62 x i8] zeroinitializer }, align 32
@afs_deliver_fs_fetch_data._entry_ptr.49 = internal global ptr @afs_deliver_fs_fetch_data._entry.47, section ".printk_index", align 4
@afs_deliver_fs_fetch_data._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s]     DATA length: %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@afs_deliver_fs_fetch_data._entry_ptr.52 = internal global ptr @afs_deliver_fs_fetch_data._entry.50, section ".printk_index", align 4
@afs_deliver_fs_fetch_data._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s]     extract data %zu/%llu\0A\00", [60 x i8] zeroinitializer }, align 32
@afs_deliver_fs_fetch_data._entry_ptr.55 = internal global ptr @afs_deliver_fs_fetch_data._entry.53, section ".printk_index", align 4
@afs_deliver_fs_fetch_data._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.46, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%-6.6s]     extract discard %zu/%llu\0A\00", [57 x i8] zeroinitializer }, align 32
@afs_deliver_fs_fetch_data._entry_ptr.58 = internal global ptr @afs_deliver_fs_fetch_data._entry.56, section ".printk_index", align 4
@afs_deliver_fs_fetch_data._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.46, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_fs_fetch_data._entry_ptr.60 = internal global ptr @afs_deliver_fs_fetch_data._entry.59, section ".printk_index", align 4
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FS.FetchData\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FS.CreateFile\00", [18 x i8] zeroinitializer }, align 32
@afs_deliver_fs_create_vnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.63, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"afs_deliver_fs_create_vnode\00", [36 x i8] zeroinitializer }, align 32
@afs_deliver_fs_create_vnode._entry_ptr = internal global ptr @afs_deliver_fs_create_vnode._entry, section ".printk_index", align 4
@__tracepoint_afs_make_fs_call1 = external dso_local global %struct.tracepoint, align 4
@trace_afs_make_fs_call1.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FS.MakeDir\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FS.RemoveFile\00", [18 x i8] zeroinitializer }, align 32
@afs_deliver_fs_file_status_and_vol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.66, ptr @.str.2, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"afs_deliver_fs_file_status_and_vol\00", [61 x i8] zeroinitializer }, align 32
@afs_deliver_fs_file_status_and_vol._entry_ptr = internal global ptr @afs_deliver_fs_file_status_and_vol._entry, section ".printk_index", align 4
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FS.RemoveDir\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FS.Link\00", [24 x i8] zeroinitializer }, align 32
@afs_deliver_fs_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] ==> %s({%u})\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_deliver_fs_link\00", [44 x i8] zeroinitializer }, align 32
@afs_deliver_fs_link._entry_ptr = internal global ptr @afs_deliver_fs_link._entry, section ".printk_index", align 4
@afs_deliver_fs_link._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.70, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_fs_link._entry_ptr.72 = internal global ptr @afs_deliver_fs_link._entry.71, section ".printk_index", align 4
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FS.Symlink\00", [21 x i8] zeroinitializer }, align 32
@afs_deliver_fs_symlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.74, ptr @.str.2, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"afs_deliver_fs_symlink\00", [41 x i8] zeroinitializer }, align 32
@afs_deliver_fs_symlink._entry_ptr = internal global ptr @afs_deliver_fs_symlink._entry, section ".printk_index", align 4
@afs_deliver_fs_symlink._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.74, ptr @.str.2, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_fs_symlink._entry_ptr.76 = internal global ptr @afs_deliver_fs_symlink._entry.75, section ".printk_index", align 4
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FS.Rename\00", [22 x i8] zeroinitializer }, align 32
@afs_deliver_fs_rename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.78, ptr @.str.2, i32 937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"afs_deliver_fs_rename\00", [42 x i8] zeroinitializer }, align 32
@afs_deliver_fs_rename._entry_ptr = internal global ptr @afs_deliver_fs_rename._entry, section ".printk_index", align 4
@__tracepoint_afs_make_fs_call2 = external dso_local global %struct.tracepoint, align 4
@trace_afs_make_fs_call2.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_fs_store_data64._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.79, ptr @.str.2, i32 1062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_fs_store_data64\00", [44 x i8] zeroinitializer }, align 32
@afs_fs_store_data64._entry_ptr = internal global ptr @afs_fs_store_data64._entry, section ".printk_index", align 4
@afs_RXFSStoreData64 = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.80, i32 65538, ptr @afs_deliver_fs_store_data, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FS.StoreData64\00", [17 x i8] zeroinitializer }, align 32
@afs_deliver_fs_store_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.81, ptr @.str.2, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"afs_deliver_fs_store_data\00", [38 x i8] zeroinitializer }, align 32
@afs_deliver_fs_store_data._entry_ptr = internal global ptr @afs_deliver_fs_store_data._entry, section ".printk_index", align 4
@afs_deliver_fs_store_data._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.81, ptr @.str.2, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_fs_store_data._entry_ptr.83 = internal global ptr @afs_deliver_fs_store_data._entry.82, section ".printk_index", align 4
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FS.StoreData\00", [19 x i8] zeroinitializer }, align 32
@afs_fs_setattr_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.85, ptr @.str.2, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_fs_setattr_size\00", [44 x i8] zeroinitializer }, align 32
@afs_fs_setattr_size._entry_ptr = internal global ptr @afs_fs_setattr_size._entry, section ".printk_index", align 4
@afs_fs_setattr_size._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@afs_fs_setattr_size._entry_ptr.88 = internal global ptr @afs_fs_setattr_size._entry.86, section ".printk_index", align 4
@afs_fs_setattr_size._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.2, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013AFS: Assertion failed\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_fs_setattr_size._entry_ptr.91 = internal global ptr @afs_fs_setattr_size._entry.89, section ".printk_index", align 4
@afs_RXFSStoreData_as_Status = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.84, i32 133, ptr @afs_deliver_fs_store_data, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_setattr_size64._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.92, ptr @.str.2, i32 1183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"afs_fs_setattr_size64\00", [42 x i8] zeroinitializer }, align 32
@afs_fs_setattr_size64._entry_ptr = internal global ptr @afs_fs_setattr_size64._entry, section ".printk_index", align 4
@afs_fs_setattr_size64._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.92, ptr @.str.2, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_setattr_size64._entry_ptr.94 = internal global ptr @afs_fs_setattr_size64._entry.93, section ".printk_index", align 4
@afs_fs_setattr_size64._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.92, ptr @.str.2, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_fs_setattr_size64._entry_ptr.96 = internal global ptr @afs_fs_setattr_size64._entry.95, section ".printk_index", align 4
@afs_RXFSStoreData64_as_Status = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.80, i32 65538, ptr @afs_deliver_fs_store_data, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FS.StoreStatus\00", [17 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FS.GetVolumeStatus\00", [45 x i8] zeroinitializer }, align 32
@afs_deliver_fs_get_volume_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.99, ptr @.str.2, i32 1301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"afs_deliver_fs_get_volume_status\00", [63 x i8] zeroinitializer }, align 32
@afs_deliver_fs_get_volume_status._entry_ptr = internal global ptr @afs_deliver_fs_get_volume_status._entry, section ".printk_index", align 4
@afs_deliver_fs_get_volume_status._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.2, i32 1311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s]     extract status\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_deliver_fs_get_volume_status._entry_ptr.102 = internal global ptr @afs_deliver_fs_get_volume_status._entry.100, section ".printk_index", align 4
@afs_deliver_fs_get_volume_status._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.2, i32 1329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s]     volname length: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@afs_deliver_fs_get_volume_status._entry_ptr.105 = internal global ptr @afs_deliver_fs_get_volume_status._entry.103, section ".printk_index", align 4
@afs_deliver_fs_get_volume_status._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.99, ptr @.str.2, i32 1339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     extract volname\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_deliver_fs_get_volume_status._entry_ptr.108 = internal global ptr @afs_deliver_fs_get_volume_status._entry.106, section ".printk_index", align 4
@afs_deliver_fs_get_volume_status._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.99, ptr @.str.2, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     volname '%s'\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_deliver_fs_get_volume_status._entry_ptr.111 = internal global ptr @afs_deliver_fs_get_volume_status._entry.109, section ".printk_index", align 4
@afs_deliver_fs_get_volume_status._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.99, ptr @.str.2, i32 1358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%-6.6s]     offline msg length: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@afs_deliver_fs_get_volume_status._entry_ptr.114 = internal global ptr @afs_deliver_fs_get_volume_status._entry.112, section ".printk_index", align 4
@afs_deliver_fs_get_volume_status._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.99, ptr @.str.2, i32 1368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     extract offline\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_deliver_fs_get_volume_status._entry_ptr.117 = internal global ptr @afs_deliver_fs_get_volume_status._entry.115, section ".printk_index", align 4
@afs_deliver_fs_get_volume_status._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.99, ptr @.str.2, i32 1375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     offline '%s'\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_deliver_fs_get_volume_status._entry_ptr.120 = internal global ptr @afs_deliver_fs_get_volume_status._entry.118, section ".printk_index", align 4
@afs_deliver_fs_get_volume_status._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.99, ptr @.str.2, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     motd length: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_deliver_fs_get_volume_status._entry_ptr.123 = internal global ptr @afs_deliver_fs_get_volume_status._entry.121, section ".printk_index", align 4
@afs_deliver_fs_get_volume_status._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.99, ptr @.str.2, i32 1398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     extract motd\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_deliver_fs_get_volume_status._entry_ptr.126 = internal global ptr @afs_deliver_fs_get_volume_status._entry.124, section ".printk_index", align 4
@afs_deliver_fs_get_volume_status._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.99, ptr @.str.2, i32 1405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s]     motd '%s'\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_deliver_fs_get_volume_status._entry_ptr.129 = internal global ptr @afs_deliver_fs_get_volume_status._entry.127, section ".printk_index", align 4
@afs_deliver_fs_get_volume_status._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.99, ptr @.str.2, i32 1414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_fs_get_volume_status._entry_ptr.131 = internal global ptr @afs_deliver_fs_get_volume_status._entry.130, section ".printk_index", align 4
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FS.SetLock\00", [21 x i8] zeroinitializer }, align 32
@afs_deliver_fs_xxxx_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.133, ptr @.str.2, i32 1462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"afs_deliver_fs_xxxx_lock\00", [39 x i8] zeroinitializer }, align 32
@afs_deliver_fs_xxxx_lock._entry_ptr = internal global ptr @afs_deliver_fs_xxxx_lock._entry, section ".printk_index", align 4
@afs_deliver_fs_xxxx_lock._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.133, ptr @.str.2, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_fs_xxxx_lock._entry_ptr.135 = internal global ptr @afs_deliver_fs_xxxx_lock._entry.134, section ".printk_index", align 4
@__tracepoint_afs_make_fs_calli = external dso_local global %struct.tracepoint, align 4
@trace_afs_make_fs_calli.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.136 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FS.ExtendLock\00", [18 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FS.ReleaseLock\00", [17 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FS.GiveUpAllCallBacks\00", [42 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FS.GetCapabilities\00", [45 x i8] zeroinitializer }, align 32
@afs_deliver_fs_get_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.2, i32 1641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s] ==> %s({%u,%zu})\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"afs_deliver_fs_get_capabilities\00", [32 x i8] zeroinitializer }, align 32
@afs_deliver_fs_get_capabilities._entry_ptr = internal global ptr @afs_deliver_fs_get_capabilities._entry, section ".printk_index", align 4
@afs_deliver_fs_get_capabilities._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.141, ptr @.str.2, i32 1688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_fs_get_capabilities._entry_ptr.143 = internal global ptr @afs_deliver_fs_get_capabilities._entry.142, section ".printk_index", align 4
@.str.144 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FS.InlineBulkStatus\00", [44 x i8] zeroinitializer }, align 32
@afs_deliver_fs_inline_bulk_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.145, ptr @.str.2, i32 1748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"afs_deliver_fs_inline_bulk_status\00", [62 x i8] zeroinitializer }, align 32
@afs_deliver_fs_inline_bulk_status._entry_ptr = internal global ptr @afs_deliver_fs_inline_bulk_status._entry, section ".printk_index", align 4
@afs_deliver_fs_inline_bulk_status._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.2, i32 1758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s]     extract status count\0A\00", [61 x i8] zeroinitializer }, align 32
@afs_deliver_fs_inline_bulk_status._entry_ptr.148 = internal global ptr @afs_deliver_fs_inline_bulk_status._entry.146, section ".printk_index", align 4
@afs_deliver_fs_inline_bulk_status._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.145, ptr @.str.2, i32 1764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s]     status count: %u/%u\0A\00", [62 x i8] zeroinitializer }, align 32
@afs_deliver_fs_inline_bulk_status._entry_ptr.151 = internal global ptr @afs_deliver_fs_inline_bulk_status._entry.149, section ".printk_index", align 4
@afs_deliver_fs_inline_bulk_status._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.145, ptr @.str.2, i32 1775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%-6.6s]     extract status array %u\0A\00", [58 x i8] zeroinitializer }, align 32
@afs_deliver_fs_inline_bulk_status._entry_ptr.154 = internal global ptr @afs_deliver_fs_inline_bulk_status._entry.152, section ".printk_index", align 4
@afs_deliver_fs_inline_bulk_status._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.145, ptr @.str.2, i32 1806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s]     extract CB count\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_deliver_fs_inline_bulk_status._entry_ptr.157 = internal global ptr @afs_deliver_fs_inline_bulk_status._entry.155, section ".printk_index", align 4
@afs_deliver_fs_inline_bulk_status._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.145, ptr @.str.2, i32 1812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     CB count: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_deliver_fs_inline_bulk_status._entry_ptr.160 = internal global ptr @afs_deliver_fs_inline_bulk_status._entry.158, section ".printk_index", align 4
@afs_deliver_fs_inline_bulk_status._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.145, ptr @.str.2, i32 1822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s]     extract CB array\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_deliver_fs_inline_bulk_status._entry_ptr.163 = internal global ptr @afs_deliver_fs_inline_bulk_status._entry.161, section ".printk_index", align 4
@afs_deliver_fs_inline_bulk_status._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.145, ptr @.str.2, i32 1827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s]     unmarshall CB array\0A\00", [62 x i8] zeroinitializer }, align 32
@afs_deliver_fs_inline_bulk_status._entry_ptr.166 = internal global ptr @afs_deliver_fs_inline_bulk_status._entry.164, section ".printk_index", align 4
@afs_deliver_fs_inline_bulk_status._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.145, ptr @.str.2, i32 1865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_fs_inline_bulk_status._entry_ptr.168 = internal global ptr @afs_deliver_fs_inline_bulk_status._entry.167, section ".printk_index", align 4
@.str.169 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FS.FetchACL\00", [20 x i8] zeroinitializer }, align 32
@afs_deliver_fs_fetch_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.170, ptr @.str.2, i32 1947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"afs_deliver_fs_fetch_acl\00", [39 x i8] zeroinitializer }, align 32
@afs_deliver_fs_fetch_acl._entry_ptr = internal global ptr @afs_deliver_fs_fetch_acl._entry, section ".printk_index", align 4
@afs_deliver_fs_fetch_acl._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.170, ptr @.str.2, i32 2000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_fs_fetch_acl._entry_ptr.172 = internal global ptr @afs_deliver_fs_fetch_acl._entry.171, section ".printk_index", align 4
@.str.173 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FS.StoreACL\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.174 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.175 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.176 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.177 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.180 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 278, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [20 x i8] c"afs_RXFSFetchStatus\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 262, i32 35 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 462, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [18 x i8] c"afs_RXFSFetchData\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 404, i32 35 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 531, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [19 x i8] c"afs_RXFSCreateFile\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 513, i32 35 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 584, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [16 x i8] c"afs_RXFSMakeDir\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 566, i32 35 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 663, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [19 x i8] c"afs_RXFSRemoveFile\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 645, i32 35 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 710, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [18 x i8] c"afs_RXFSRemoveDir\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 692, i32 35 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 788, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [13 x i8] c"afs_RXFSLink\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 769, i32 35 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 868, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [16 x i8] c"afs_RXFSSymlink\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 850, i32 35 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 964, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [15 x i8] c"afs_RXFSRename\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 944, i32 35 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1106, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1109, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [18 x i8] c"afs_RXFSStoreData\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1038, i32 35 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1268, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [20 x i8] c"afs_RXFSStoreStatus\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1150, i32 35 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1437, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [24 x i8] c"afs_RXFSGetVolumeStatus\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1421, i32 35 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1517, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [16 x i8] c"afs_RXFSSetLock\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1479, i32 35 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1544, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [19 x i8] c"afs_RXFSExtendLock\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1490, i32 35 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1570, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c"afs_RXFSReleaseLock\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1501, i32 35 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1616, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [27 x i8] c"afs_RXFSGiveUpAllCallBacks\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1598, i32 35 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1715, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [24 x i8] c"afs_RXFSGetCapabilities\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1695, i32 35 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1906, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant [25 x i8] c"afs_RXFSInlineBulkStatus\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1882, i32 35 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 2022, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [17 x i8] c"afs_RXFSFetchACL\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 2007, i32 35 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 2061, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [17 x i8] c"afs_RXFSStoreACL\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 2043, i32 35 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 263, i32 11 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 255, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 79, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 39, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 43, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 48, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 759, i32 1 }
@___asan_gen_.428 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 108, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 428, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant [20 x i8] c"afs_RXFSFetchData64\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 411, i32 35 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 412, i32 11 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 308, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 329, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 335, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 347, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 364, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 397, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 405, i32 11 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 514, i32 11 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 506, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 567, i32 11 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 646, i32 11 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 638, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 693, i32 11 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 770, i32 11 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 750, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 762, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 851, i32 11 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 830, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 843, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 945, i32 11 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 937, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1061, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant [20 x i8] c"afs_RXFSStoreData64\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1045, i32 35 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1046, i32 11 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1020, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1031, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1039, i32 11 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1224, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1227, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant [28 x i8] c"afs_RXFSStoreData_as_Status\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1157, i32 35 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1182, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1185, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant [30 x i8] c"afs_RXFSStoreData64_as_Status\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1164, i32 35 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1151, i32 11 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1422, i32 11 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1301, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1311, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1329, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1339, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1346, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1358, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1368, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1375, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1388, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1398, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1405, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1414, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1480, i32 11 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1462, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1472, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1491, i32 11 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1502, i32 11 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1599, i32 11 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1696, i32 11 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1641, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1688, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1883, i32 11 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1748, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1758, i32 3 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1764, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1775, i32 3 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1806, i32 3 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1812, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1822, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1827, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1865, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 2008, i32 11 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 1947, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 2000, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.779 = private constant [21 x i8] c"../fs/afs/fsclient.c\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.779, i32 2044, i32 11 }
@llvm.compiler.used = appending global [276 x ptr] [ptr @afs_deliver_fs_create_vnode._entry, ptr @afs_deliver_fs_create_vnode._entry_ptr, ptr @afs_deliver_fs_fetch_acl._entry, ptr @afs_deliver_fs_fetch_acl._entry.171, ptr @afs_deliver_fs_fetch_acl._entry_ptr, ptr @afs_deliver_fs_fetch_acl._entry_ptr.172, ptr @afs_deliver_fs_fetch_data._entry, ptr @afs_deliver_fs_fetch_data._entry.47, ptr @afs_deliver_fs_fetch_data._entry.50, ptr @afs_deliver_fs_fetch_data._entry.53, ptr @afs_deliver_fs_fetch_data._entry.56, ptr @afs_deliver_fs_fetch_data._entry.59, ptr @afs_deliver_fs_fetch_data._entry_ptr, ptr @afs_deliver_fs_fetch_data._entry_ptr.49, ptr @afs_deliver_fs_fetch_data._entry_ptr.52, ptr @afs_deliver_fs_fetch_data._entry_ptr.55, ptr @afs_deliver_fs_fetch_data._entry_ptr.58, ptr @afs_deliver_fs_fetch_data._entry_ptr.60, ptr @afs_deliver_fs_fetch_status._entry, ptr @afs_deliver_fs_fetch_status._entry_ptr, ptr @afs_deliver_fs_file_status_and_vol._entry, ptr @afs_deliver_fs_file_status_and_vol._entry_ptr, ptr @afs_deliver_fs_get_capabilities._entry, ptr @afs_deliver_fs_get_capabilities._entry.142, ptr @afs_deliver_fs_get_capabilities._entry_ptr, ptr @afs_deliver_fs_get_capabilities._entry_ptr.143, ptr @afs_deliver_fs_get_volume_status._entry, ptr @afs_deliver_fs_get_volume_status._entry.100, ptr @afs_deliver_fs_get_volume_status._entry.103, ptr @afs_deliver_fs_get_volume_status._entry.106, ptr @afs_deliver_fs_get_volume_status._entry.109, ptr @afs_deliver_fs_get_volume_status._entry.112, ptr @afs_deliver_fs_get_volume_status._entry.115, ptr @afs_deliver_fs_get_volume_status._entry.118, ptr @afs_deliver_fs_get_volume_status._entry.121, ptr @afs_deliver_fs_get_volume_status._entry.124, ptr @afs_deliver_fs_get_volume_status._entry.127, ptr @afs_deliver_fs_get_volume_status._entry.130, ptr @afs_deliver_fs_get_volume_status._entry_ptr, ptr @afs_deliver_fs_get_volume_status._entry_ptr.102, ptr @afs_deliver_fs_get_volume_status._entry_ptr.105, ptr @afs_deliver_fs_get_volume_status._entry_ptr.108, ptr @afs_deliver_fs_get_volume_status._entry_ptr.111, ptr @afs_deliver_fs_get_volume_status._entry_ptr.114, ptr @afs_deliver_fs_get_volume_status._entry_ptr.117, ptr @afs_deliver_fs_get_volume_status._entry_ptr.120, ptr @afs_deliver_fs_get_volume_status._entry_ptr.123, ptr @afs_deliver_fs_get_volume_status._entry_ptr.126, ptr @afs_deliver_fs_get_volume_status._entry_ptr.129, ptr @afs_deliver_fs_get_volume_status._entry_ptr.131, ptr @afs_deliver_fs_inline_bulk_status._entry, ptr @afs_deliver_fs_inline_bulk_status._entry.146, ptr @afs_deliver_fs_inline_bulk_status._entry.149, ptr @afs_deliver_fs_inline_bulk_status._entry.152, ptr @afs_deliver_fs_inline_bulk_status._entry.155, ptr @afs_deliver_fs_inline_bulk_status._entry.158, ptr @afs_deliver_fs_inline_bulk_status._entry.161, ptr @afs_deliver_fs_inline_bulk_status._entry.164, ptr @afs_deliver_fs_inline_bulk_status._entry.167, ptr @afs_deliver_fs_inline_bulk_status._entry_ptr, ptr @afs_deliver_fs_inline_bulk_status._entry_ptr.148, ptr @afs_deliver_fs_inline_bulk_status._entry_ptr.151, ptr @afs_deliver_fs_inline_bulk_status._entry_ptr.154, ptr @afs_deliver_fs_inline_bulk_status._entry_ptr.157, ptr @afs_deliver_fs_inline_bulk_status._entry_ptr.160, ptr @afs_deliver_fs_inline_bulk_status._entry_ptr.163, ptr @afs_deliver_fs_inline_bulk_status._entry_ptr.166, ptr @afs_deliver_fs_inline_bulk_status._entry_ptr.168, ptr @afs_deliver_fs_link._entry, ptr @afs_deliver_fs_link._entry.71, ptr @afs_deliver_fs_link._entry_ptr, ptr @afs_deliver_fs_link._entry_ptr.72, ptr @afs_deliver_fs_rename._entry, ptr @afs_deliver_fs_rename._entry_ptr, ptr @afs_deliver_fs_store_data._entry, ptr @afs_deliver_fs_store_data._entry.82, ptr @afs_deliver_fs_store_data._entry_ptr, ptr @afs_deliver_fs_store_data._entry_ptr.83, ptr @afs_deliver_fs_symlink._entry, ptr @afs_deliver_fs_symlink._entry.75, ptr @afs_deliver_fs_symlink._entry_ptr, ptr @afs_deliver_fs_symlink._entry_ptr.76, ptr @afs_deliver_fs_xxxx_lock._entry, ptr @afs_deliver_fs_xxxx_lock._entry.134, ptr @afs_deliver_fs_xxxx_lock._entry_ptr, ptr @afs_deliver_fs_xxxx_lock._entry_ptr.135, ptr @afs_fs_create_file._entry, ptr @afs_fs_create_file._entry_ptr, ptr @afs_fs_extend_lock._entry, ptr @afs_fs_extend_lock._entry_ptr, ptr @afs_fs_fetch_acl._entry, ptr @afs_fs_fetch_acl._entry_ptr, ptr @afs_fs_fetch_data._entry, ptr @afs_fs_fetch_data._entry_ptr, ptr @afs_fs_fetch_data64._entry, ptr @afs_fs_fetch_data64._entry_ptr, ptr @afs_fs_fetch_status._entry, ptr @afs_fs_fetch_status._entry_ptr, ptr @afs_fs_get_capabilities._entry, ptr @afs_fs_get_capabilities._entry_ptr, ptr @afs_fs_get_volume_status._entry, ptr @afs_fs_get_volume_status._entry_ptr, ptr @afs_fs_give_up_all_callbacks._entry, ptr @afs_fs_give_up_all_callbacks._entry_ptr, ptr @afs_fs_inline_bulk_status._entry, ptr @afs_fs_inline_bulk_status._entry_ptr, ptr @afs_fs_link._entry, ptr @afs_fs_link._entry_ptr, ptr @afs_fs_make_dir._entry, ptr @afs_fs_make_dir._entry_ptr, ptr @afs_fs_release_lock._entry, ptr @afs_fs_release_lock._entry_ptr, ptr @afs_fs_remove_dir._entry, ptr @afs_fs_remove_dir._entry_ptr, ptr @afs_fs_remove_file._entry, ptr @afs_fs_remove_file._entry_ptr, ptr @afs_fs_rename._entry, ptr @afs_fs_rename._entry_ptr, ptr @afs_fs_set_lock._entry, ptr @afs_fs_set_lock._entry_ptr, ptr @afs_fs_setattr._entry, ptr @afs_fs_setattr._entry_ptr, ptr @afs_fs_setattr_size._entry, ptr @afs_fs_setattr_size._entry.86, ptr @afs_fs_setattr_size._entry.89, ptr @afs_fs_setattr_size._entry_ptr, ptr @afs_fs_setattr_size._entry_ptr.88, ptr @afs_fs_setattr_size._entry_ptr.91, ptr @afs_fs_setattr_size64._entry, ptr @afs_fs_setattr_size64._entry.93, ptr @afs_fs_setattr_size64._entry.95, ptr @afs_fs_setattr_size64._entry_ptr, ptr @afs_fs_setattr_size64._entry_ptr.94, ptr @afs_fs_setattr_size64._entry_ptr.96, ptr @afs_fs_store_acl._entry, ptr @afs_fs_store_acl._entry_ptr, ptr @afs_fs_store_data._entry, ptr @afs_fs_store_data._entry.13, ptr @afs_fs_store_data._entry_ptr, ptr @afs_fs_store_data._entry_ptr.15, ptr @afs_fs_store_data64._entry, ptr @afs_fs_store_data64._entry_ptr, ptr @afs_fs_symlink._entry, ptr @afs_fs_symlink._entry_ptr, ptr @xdr_decode_AFSFetchStatus._entry, ptr @xdr_decode_AFSFetchStatus._entry_ptr, ptr @xdr_dump_bad._entry, ptr @xdr_dump_bad._entry.34, ptr @xdr_dump_bad._entry.37, ptr @xdr_dump_bad._entry_ptr, ptr @xdr_dump_bad._entry_ptr.36, ptr @xdr_dump_bad._entry_ptr.39, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @afs_RXFSFetchStatus, ptr @.str.3, ptr @.str.4, ptr @afs_RXFSFetchData, ptr @.str.5, ptr @afs_RXFSCreateFile, ptr @.str.6, ptr @afs_RXFSMakeDir, ptr @.str.7, ptr @afs_RXFSRemoveFile, ptr @.str.8, ptr @afs_RXFSRemoveDir, ptr @.str.9, ptr @afs_RXFSLink, ptr @.str.10, ptr @afs_RXFSSymlink, ptr @.str.11, ptr @afs_RXFSRename, ptr @.str.12, ptr @.str.14, ptr @afs_RXFSStoreData, ptr @.str.16, ptr @afs_RXFSStoreStatus, ptr @.str.17, ptr @afs_RXFSGetVolumeStatus, ptr @.str.18, ptr @afs_RXFSSetLock, ptr @.str.19, ptr @afs_RXFSExtendLock, ptr @.str.20, ptr @afs_RXFSReleaseLock, ptr @.str.21, ptr @afs_RXFSGiveUpAllCallBacks, ptr @.str.22, ptr @afs_RXFSGetCapabilities, ptr @.str.23, ptr @.str.24, ptr @afs_RXFSInlineBulkStatus, ptr @.str.25, ptr @afs_RXFSFetchACL, ptr @.str.26, ptr @afs_RXFSStoreACL, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @afs_RXFSFetchData64, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.73, ptr @.str.74, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @afs_RXFSStoreData64, ptr @.str.80, ptr @.str.81, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @afs_RXFSStoreData_as_Status, ptr @.str.92, ptr @afs_RXFSStoreData64_as_Status, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.132, ptr @.str.133, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.169, ptr @.str.170, ptr @.str.173], section "llvm.metadata"
@0 = internal global [200 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_fetch_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSFetchStatus to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_fetch_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSFetchData to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_create_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSCreateFile to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_make_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSMakeDir to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_remove_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSRemoveFile to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_remove_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSRemoveDir to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSLink to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_symlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSSymlink to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_rename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSRename to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_store_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_store_data._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSStoreData to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_setattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSStoreStatus to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_get_volume_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSGetVolumeStatus to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_set_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSSetLock to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_extend_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSExtendLock to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_release_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSReleaseLock to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_give_up_all_callbacks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSGiveUpAllCallBacks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_get_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSGetCapabilities to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_inline_bulk_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSInlineBulkStatus to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_fetch_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSFetchACL to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_store_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSStoreACL to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_fetch_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdr_decode_AFSFetchStatus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdr_dump_bad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdr_dump_bad._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdr_dump_bad._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_fetch_data64._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSFetchData64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_fetch_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_fetch_data._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_fetch_data._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_fetch_data._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_fetch_data._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_fetch_data._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_create_vnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_file_status_and_vol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_link._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_symlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_symlink._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_rename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_store_data64._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSStoreData64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_store_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_store_data._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_setattr_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_setattr_size._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_setattr_size._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSStoreData_as_Status to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_setattr_size64._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_setattr_size64._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_setattr_size64._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSStoreData64_as_Status to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_get_volume_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_get_volume_status._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_get_volume_status._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_get_volume_status._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_get_volume_status._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_get_volume_status._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_get_volume_status._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_get_volume_status._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_get_volume_status._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_get_volume_status._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_get_volume_status._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_get_volume_status._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_xxxx_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_xxxx_lock._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_get_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_get_capabilities._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_inline_bulk_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_inline_bulk_status._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_inline_bulk_status._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_inline_bulk_status._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_inline_bulk_status._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_inline_bulk_status._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_inline_bulk_status._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_inline_bulk_status._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_inline_bulk_status._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_fetch_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_fs_fetch_acl._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_fetch_status(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %3 = load i32, ptr @afs_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !420

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %key = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %8 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %key, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %serial.i = getelementptr inbounds %struct.key, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %11, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %fid = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 %2, i32 1
  %12 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fid, align 8
  %vnode = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 %2, i32 1, i32 1
  %14 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %vnode, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i32 noundef %cond.i, i64 noundef %13, i64 noundef %15) #12
  br label %do.end9

do.end9:                                          ; preds = %key_serial.exit, %entry.do.end9_crit_edge
  %16 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %op, align 8
  %call10 = tail call ptr @afs_alloc_flat_call(ptr noundef %17, ptr noundef nonnull @afs_RXFSFetchStatus, i32 noundef 16, i32 noundef 120) #9
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %18 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %request = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 10
  %19 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %request, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 132, ptr %20, align 4
  %fid15 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 %2, i32 1
  %22 = ptrtoint ptr %fid15 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %fid15, align 8
  %conv = trunc i64 %23 to i32
  %arrayidx17 = getelementptr i32, ptr %20, i32 1
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %arrayidx17, align 4
  %vnode19 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 %2, i32 1, i32 1
  %25 = ptrtoint ptr %vnode19 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %vnode19, align 8
  %conv20 = trunc i64 %26 to i32
  %arrayidx21 = getelementptr i32, ptr %20, i32 2
  %27 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv20, ptr %arrayidx21, align 4
  %unique = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 %2, i32 1, i32 3
  %28 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %unique, align 4
  %arrayidx23 = getelementptr i32, ptr %20, i32 3
  %30 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx23, align 4
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call10, ptr noundef %fid15)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %31 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call10, ptr %call1.i, align 4
  %32 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call10, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %34 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 18
  %35 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %36 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 6
  %38 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 36
  %41 = trunc i32 %40 to i8
  %42 = lshr i8 %41, 6
  %43 = and i8 %42, 1
  %44 = xor i8 %43, 1
  %45 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call10, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_alloc_flat_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_make_fs_call(ptr noundef %call, ptr noundef %fid) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_fs_call, i32 0, i32 1), ptr blockaddress(@trace_afs_make_fs_call, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !421

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !420

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !422
  %call43 = tail call i32 @__traceiter_afs_make_fs_call(ptr noundef null, ptr noundef %call, ptr noundef %fid) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !423
  %13 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !420

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !424
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_fs_call, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_fs_call, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_afs_make_fs_call.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_afs_make_fs_call.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 788, ptr noundef nonnull @.str.41) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !425
  %31 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_fetch_data(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %server = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 20
  %3 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %server, align 8
  %flags = getelementptr inbounds %struct.afs_server, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %8 = load i32, ptr @afs_debug, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.then.do.end8.i_crit_edge, label %do.end.i, !prof !420

if.then.do.end8.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 101
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm.i, ptr noundef nonnull @.str.43) #12
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %if.then.do.end8.i_crit_edge
  %13 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %op, align 8
  %call9.i = tail call ptr @afs_alloc_flat_call(ptr noundef %14, ptr noundef nonnull @afs_RXFSFetchData64, i32 noundef 32, i32 noundef 120) #9
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %error.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %15 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -12, ptr %error.i.i, align 2
  br label %cleanup

if.end12.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %request.i = getelementptr inbounds %struct.afs_call, ptr %call9.i, i32 0, i32 10
  %16 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %request.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 65537, ptr %17, align 4
  %fid.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %fid.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %fid.i, align 8
  %conv.i = trunc i64 %20 to i32
  %arrayidx14.i = getelementptr i32, ptr %17, i32 1
  %21 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i, ptr %arrayidx14.i, align 4
  %vnode.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %vnode.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vnode.i, align 8
  %conv16.i = trunc i64 %23 to i32
  %arrayidx17.i = getelementptr i32, ptr %17, i32 2
  %24 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv16.i, ptr %arrayidx17.i, align 4
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %unique.i, align 4
  %arrayidx19.i = getelementptr i32, ptr %17, i32 3
  %27 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx19.i, align 4
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %2, align 8
  %30 = lshr i64 %29, 32
  %conv21.i = trunc i64 %30 to i32
  %arrayidx22.i = getelementptr i32, ptr %17, i32 4
  %31 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv21.i, ptr %arrayidx22.i, align 4
  %32 = load i64, ptr %2, align 8
  %conv25.i = trunc i64 %32 to i32
  %arrayidx26.i = getelementptr i32, ptr %17, i32 5
  %33 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv25.i, ptr %arrayidx26.i, align 4
  %arrayidx27.i = getelementptr i32, ptr %17, i32 6
  %34 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx27.i, align 4
  %len.i = getelementptr inbounds %struct.afs_read, ptr %2, i32 0, i32 1
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %len.i, align 8
  %conv29.i = trunc i64 %36 to i32
  %arrayidx30.i = getelementptr i32, ptr %17, i32 7
  %37 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv29.i, ptr %arrayidx30.i, align 4
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call9.i, ptr noundef %fid.i) #9
  %call1.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %38 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call9.i, ptr %call1.i.i, align 4
  %39 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call9.i, align 8
  %type2.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %41 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %type2.i.i, align 8
  %op3.i.i = getelementptr inbounds %struct.afs_call, ptr %call9.i, i32 0, i32 18
  %42 = ptrtoint ptr %op3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %op, ptr %op3.i.i, align 4
  %key.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %43 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %key.i.i, align 4
  %key4.i.i = getelementptr inbounds %struct.afs_call, ptr %call9.i, i32 0, i32 6
  %45 = ptrtoint ptr %key4.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %key4.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %46 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i.i, align 8
  %intr.i.i = getelementptr inbounds %struct.afs_call, ptr %call9.i, i32 0, i32 36
  %48 = trunc i32 %47 to i8
  %49 = lshr i8 %48, 6
  %50 = and i8 %49, 1
  %51 = xor i8 %50, 1
  %52 = ptrtoint ptr %intr.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %intr.i.i, align 1
  %ac.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i.i, ptr noundef nonnull %call9.i, i32 noundef 3136) #9
  br label %cleanup

do.body:                                          ; preds = %entry
  br i1 %tobool3.not, label %do.body.do.end12_crit_edge, label %do.end, !prof !420

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %53 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i54 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i54 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 101
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.4) #12
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  %57 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %op, align 8
  %call13 = tail call ptr @afs_alloc_flat_call(ptr noundef %58, ptr noundef nonnull @afs_RXFSFetchData, i32 noundef 24, i32 noundef 120) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %59 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end16:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  %debug_id = getelementptr inbounds %struct.afs_call, ptr %call13, i32 0, i32 39
  %60 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %debug_id, align 4
  %call_debug_id = getelementptr inbounds %struct.afs_read, ptr %2, i32 0, i32 9
  %62 = ptrtoint ptr %call_debug_id to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %call_debug_id, align 4
  %request = getelementptr inbounds %struct.afs_call, ptr %call13, i32 0, i32 10
  %63 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %request, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 130, ptr %64, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %66 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %fid, align 8
  %conv = trunc i64 %67 to i32
  %arrayidx18 = getelementptr i32, ptr %64, i32 1
  %68 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv, ptr %arrayidx18, align 4
  %vnode = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %vnode, align 8
  %conv20 = trunc i64 %70 to i32
  %arrayidx21 = getelementptr i32, ptr %64, i32 2
  %71 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv20, ptr %arrayidx21, align 4
  %unique = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %72 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %unique, align 4
  %arrayidx23 = getelementptr i32, ptr %64, i32 3
  %74 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx23, align 4
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %2, align 8
  %conv25 = trunc i64 %76 to i32
  %arrayidx26 = getelementptr i32, ptr %64, i32 4
  %77 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv25, ptr %arrayidx26, align 4
  %len = getelementptr inbounds %struct.afs_read, ptr %2, i32 0, i32 1
  %78 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %len, align 8
  %conv28 = trunc i64 %79 to i32
  %arrayidx29 = getelementptr i32, ptr %64, i32 5
  %80 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv28, ptr %arrayidx29, align 4
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call13, ptr noundef %fid)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %81 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call13, ptr %call1.i, align 4
  %82 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call13, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %84 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call13, i32 0, i32 18
  %85 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %86 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call13, i32 0, i32 6
  %88 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %89 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call13, i32 0, i32 36
  %91 = trunc i32 %90 to i8
  %92 = lshr i8 %91, 6
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  %95 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call13, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then15, %if.end12.i, %if.then11.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_create_file(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !420

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.5) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %7 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_name, align 8
  %sub = sub i32 0, %8
  %and9 = and i32 %sub, 3
  %add10 = add i32 %8, 44
  %add11 = add i32 %add10, %and9
  %9 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %op, align 8
  %call12 = tail call ptr @afs_alloc_flat_call(ptr noundef %10, ptr noundef nonnull @afs_RXFSCreateFile, i32 noundef %add11, i32 noundef 216) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end15:                                         ; preds = %do.end7
  %request = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 10
  %12 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %request, align 8
  %incdec.ptr = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 137, ptr %13, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fid, align 8
  %conv = trunc i64 %16 to i32
  %incdec.ptr16 = getelementptr i32, ptr %13, i32 2
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %incdec.ptr, align 4
  %vnode = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %vnode, align 8
  %conv18 = trunc i64 %19 to i32
  %incdec.ptr19 = getelementptr i32, ptr %13, i32 3
  %20 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv18, ptr %incdec.ptr16, align 4
  %unique = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %unique, align 4
  %incdec.ptr21 = getelementptr i32, ptr %13, i32 4
  %23 = ptrtoint ptr %incdec.ptr19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %incdec.ptr19, align 4
  %incdec.ptr22 = getelementptr i32, ptr %13, i32 5
  %24 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %8, ptr %incdec.ptr21, align 4
  %name23 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %name23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name23, align 8
  %27 = call ptr @memcpy(ptr %incdec.ptr22, ptr %26, i32 %8)
  %add.ptr = getelementptr i8, ptr %incdec.ptr22, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp.not = icmp eq i32 %and9, 0
  br i1 %cmp.not, label %if.end15.if.end27_crit_edge, label %if.then25

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then25:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %28 = call ptr @memset(ptr %add.ptr, i32 0, i32 %and9)
  %add.ptr26 = getelementptr i8, ptr %add.ptr, i32 %and9
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end15.if.end27_crit_edge
  %bp.0 = phi ptr [ %add.ptr26, %if.then25 ], [ %add.ptr, %if.end15.if.end27_crit_edge ]
  %incdec.ptr28 = getelementptr i32, ptr %bp.0, i32 1
  %29 = ptrtoint ptr %bp.0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 9, ptr %bp.0, align 4
  %mtime = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 10
  %30 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %mtime, align 8
  %conv29 = trunc i64 %31 to i32
  %incdec.ptr30 = getelementptr i32, ptr %bp.0, i32 2
  %32 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv29, ptr %incdec.ptr28, align 4
  %incdec.ptr31 = getelementptr i32, ptr %bp.0, i32 3
  %33 = ptrtoint ptr %incdec.ptr30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %incdec.ptr30, align 4
  %incdec.ptr32 = getelementptr i32, ptr %bp.0, i32 4
  %34 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %incdec.ptr31, align 4
  %35 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %mode = getelementptr inbounds %struct.anon.160, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mode, align 4
  %38 = and i16 %37, 4095
  %and34 = zext i16 %38 to i32
  %incdec.ptr35 = getelementptr i32, ptr %bp.0, i32 5
  %39 = ptrtoint ptr %incdec.ptr32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and34, ptr %incdec.ptr32, align 4
  %40 = ptrtoint ptr %incdec.ptr35 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %incdec.ptr35, align 4
  tail call fastcc void @trace_afs_make_fs_call1(ptr noundef nonnull %call12, ptr noundef %fid, ptr noundef %d_name)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %41 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call12, ptr %call1.i, align 4
  %42 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call12, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %44 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 18
  %45 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %46 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 6
  %48 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 36
  %51 = trunc i32 %50 to i8
  %52 = lshr i8 %51, 6
  %53 = and i8 %52, 1
  %54 = xor i8 %53, 1
  %55 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call12, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_make_fs_call1(ptr noundef %call, ptr noundef %fid, ptr noundef %name) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_fs_call1, i32 0, i32 1), ptr blockaddress(@trace_afs_make_fs_call1, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !421

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !420

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !426
  %call43 = tail call i32 @__traceiter_afs_make_fs_call1(ptr noundef null, ptr noundef %call, ptr noundef %fid, ptr noundef %name) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !427
  %13 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !420

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !424
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_fs_call1, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_fs_call1, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_afs_make_fs_call1.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_afs_make_fs_call1.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 860, ptr noundef nonnull @.str.41) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !425
  %31 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_make_dir(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !420

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.6) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %7 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_name, align 8
  %sub = sub i32 0, %8
  %and9 = and i32 %sub, 3
  %add10 = add i32 %8, 44
  %add11 = add i32 %add10, %and9
  %9 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %op, align 8
  %call12 = tail call ptr @afs_alloc_flat_call(ptr noundef %10, ptr noundef nonnull @afs_RXFSMakeDir, i32 noundef %add11, i32 noundef 216) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end15:                                         ; preds = %do.end7
  %request = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 10
  %12 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %request, align 8
  %incdec.ptr = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 141, ptr %13, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fid, align 8
  %conv = trunc i64 %16 to i32
  %incdec.ptr16 = getelementptr i32, ptr %13, i32 2
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %incdec.ptr, align 4
  %vnode = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %vnode, align 8
  %conv18 = trunc i64 %19 to i32
  %incdec.ptr19 = getelementptr i32, ptr %13, i32 3
  %20 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv18, ptr %incdec.ptr16, align 4
  %unique = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %unique, align 4
  %incdec.ptr21 = getelementptr i32, ptr %13, i32 4
  %23 = ptrtoint ptr %incdec.ptr19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %incdec.ptr19, align 4
  %incdec.ptr22 = getelementptr i32, ptr %13, i32 5
  %24 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %8, ptr %incdec.ptr21, align 4
  %name23 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %name23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name23, align 8
  %27 = call ptr @memcpy(ptr %incdec.ptr22, ptr %26, i32 %8)
  %add.ptr = getelementptr i8, ptr %incdec.ptr22, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp.not = icmp eq i32 %and9, 0
  br i1 %cmp.not, label %if.end15.if.end27_crit_edge, label %if.then25

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then25:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %28 = call ptr @memset(ptr %add.ptr, i32 0, i32 %and9)
  %add.ptr26 = getelementptr i8, ptr %add.ptr, i32 %and9
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end15.if.end27_crit_edge
  %bp.0 = phi ptr [ %add.ptr26, %if.then25 ], [ %add.ptr, %if.end15.if.end27_crit_edge ]
  %incdec.ptr28 = getelementptr i32, ptr %bp.0, i32 1
  %29 = ptrtoint ptr %bp.0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 9, ptr %bp.0, align 4
  %mtime = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 10
  %30 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %mtime, align 8
  %conv29 = trunc i64 %31 to i32
  %incdec.ptr30 = getelementptr i32, ptr %bp.0, i32 2
  %32 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv29, ptr %incdec.ptr28, align 4
  %incdec.ptr31 = getelementptr i32, ptr %bp.0, i32 3
  %33 = ptrtoint ptr %incdec.ptr30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %incdec.ptr30, align 4
  %incdec.ptr32 = getelementptr i32, ptr %bp.0, i32 4
  %34 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %incdec.ptr31, align 4
  %35 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %mode = getelementptr inbounds %struct.anon.160, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mode, align 4
  %38 = and i16 %37, 4095
  %and34 = zext i16 %38 to i32
  %incdec.ptr35 = getelementptr i32, ptr %bp.0, i32 5
  %39 = ptrtoint ptr %incdec.ptr32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and34, ptr %incdec.ptr32, align 4
  %40 = ptrtoint ptr %incdec.ptr35 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %incdec.ptr35, align 4
  tail call fastcc void @trace_afs_make_fs_call1(ptr noundef nonnull %call12, ptr noundef %fid, ptr noundef %d_name)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %41 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call12, ptr %call1.i, align 4
  %42 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call12, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %44 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 18
  %45 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %46 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 6
  %48 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 36
  %51 = trunc i32 %50 to i8
  %52 = lshr i8 %51, 6
  %53 = and i8 %52, 1
  %54 = xor i8 %53, 1
  %55 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call12, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_remove_file(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !420

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.7) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %7 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_name, align 8
  %sub = sub i32 0, %8
  %and9 = and i32 %sub, 3
  %add = add i32 %8, 20
  %add10 = add i32 %add, %and9
  %9 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %op, align 8
  %call11 = tail call ptr @afs_alloc_flat_call(ptr noundef %10, ptr noundef nonnull @afs_RXFSRemoveFile, i32 noundef %add10, i32 noundef 108) #9
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end14:                                         ; preds = %do.end7
  %request = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 10
  %12 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %request, align 8
  %incdec.ptr = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 136, ptr %13, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fid, align 8
  %conv = trunc i64 %16 to i32
  %incdec.ptr15 = getelementptr i32, ptr %13, i32 2
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %incdec.ptr, align 4
  %vnode = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %vnode, align 8
  %conv17 = trunc i64 %19 to i32
  %incdec.ptr18 = getelementptr i32, ptr %13, i32 3
  %20 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv17, ptr %incdec.ptr15, align 4
  %unique = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %unique, align 4
  %incdec.ptr20 = getelementptr i32, ptr %13, i32 4
  %23 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %incdec.ptr18, align 4
  %incdec.ptr21 = getelementptr i32, ptr %13, i32 5
  %24 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %8, ptr %incdec.ptr20, align 4
  %name22 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name22, align 8
  %27 = call ptr @memcpy(ptr %incdec.ptr21, ptr %26, i32 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp.not = icmp eq i32 %and9, 0
  br i1 %cmp.not, label %if.end14.if.end26_crit_edge, label %if.then24

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then24:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %incdec.ptr21, i32 %8
  %28 = call ptr @memset(ptr %add.ptr, i32 0, i32 %and9)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end14.if.end26_crit_edge
  tail call fastcc void @trace_afs_make_fs_call1(ptr noundef nonnull %call11, ptr noundef %fid, ptr noundef %d_name)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %29 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call11, ptr %call1.i, align 4
  %30 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call11, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %32 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 18
  %33 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %34 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 6
  %36 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 36
  %39 = trunc i32 %38 to i8
  %40 = lshr i8 %39, 6
  %41 = and i8 %40, 1
  %42 = xor i8 %41, 1
  %43 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call11, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_remove_dir(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !420

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.8) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %7 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_name, align 8
  %sub = sub i32 0, %8
  %and9 = and i32 %sub, 3
  %add = add i32 %8, 20
  %add10 = add i32 %add, %and9
  %9 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %op, align 8
  %call11 = tail call ptr @afs_alloc_flat_call(ptr noundef %10, ptr noundef nonnull @afs_RXFSRemoveDir, i32 noundef %add10, i32 noundef 108) #9
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end14:                                         ; preds = %do.end7
  %request = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 10
  %12 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %request, align 8
  %incdec.ptr = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 142, ptr %13, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fid, align 8
  %conv = trunc i64 %16 to i32
  %incdec.ptr15 = getelementptr i32, ptr %13, i32 2
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %incdec.ptr, align 4
  %vnode = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %vnode, align 8
  %conv17 = trunc i64 %19 to i32
  %incdec.ptr18 = getelementptr i32, ptr %13, i32 3
  %20 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv17, ptr %incdec.ptr15, align 4
  %unique = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %unique, align 4
  %incdec.ptr20 = getelementptr i32, ptr %13, i32 4
  %23 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %incdec.ptr18, align 4
  %incdec.ptr21 = getelementptr i32, ptr %13, i32 5
  %24 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %8, ptr %incdec.ptr20, align 4
  %name22 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name22, align 8
  %27 = call ptr @memcpy(ptr %incdec.ptr21, ptr %26, i32 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp.not = icmp eq i32 %and9, 0
  br i1 %cmp.not, label %if.end14.if.end26_crit_edge, label %if.then24

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then24:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %incdec.ptr21, i32 %8
  %28 = call ptr @memset(ptr %add.ptr, i32 0, i32 %and9)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end14.if.end26_crit_edge
  tail call fastcc void @trace_afs_make_fs_call1(ptr noundef nonnull %call11, ptr noundef %fid, ptr noundef %d_name)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %29 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call11, ptr %call1.i, align 4
  %30 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call11, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %32 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 18
  %33 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %34 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 6
  %36 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 36
  %39 = trunc i32 %38 to i8
  %40 = lshr i8 %39, 6
  %41 = and i8 %40, 1
  %42 = xor i8 %41, 1
  %43 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call11, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_link(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !420

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.9) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %7 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_name, align 8
  %sub = sub i32 0, %8
  %and11 = and i32 %sub, 3
  %add12 = add i32 %8, 32
  %add13 = add i32 %add12, %and11
  %9 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %op, align 8
  %call14 = tail call ptr @afs_alloc_flat_call(ptr noundef %10, ptr noundef nonnull @afs_RXFSLink, i32 noundef %add13, i32 noundef 192) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end17:                                         ; preds = %do.end9
  %request = getelementptr inbounds %struct.afs_call, ptr %call14, i32 0, i32 10
  %12 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %request, align 8
  %incdec.ptr = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 140, ptr %13, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fid, align 8
  %conv = trunc i64 %16 to i32
  %incdec.ptr18 = getelementptr i32, ptr %13, i32 2
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %incdec.ptr, align 4
  %vnode = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %vnode, align 8
  %conv20 = trunc i64 %19 to i32
  %incdec.ptr21 = getelementptr i32, ptr %13, i32 3
  %20 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv20, ptr %incdec.ptr18, align 4
  %unique = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %unique, align 4
  %incdec.ptr23 = getelementptr i32, ptr %13, i32 4
  %23 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %incdec.ptr21, align 4
  %incdec.ptr24 = getelementptr i32, ptr %13, i32 5
  %24 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %8, ptr %incdec.ptr23, align 4
  %name25 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %name25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name25, align 8
  %27 = call ptr @memcpy(ptr %incdec.ptr24, ptr %26, i32 %8)
  %add.ptr = getelementptr i8, ptr %incdec.ptr24, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp.not = icmp eq i32 %and11, 0
  br i1 %cmp.not, label %if.end17.if.end29_crit_edge, label %if.then27

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then27:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %28 = call ptr @memset(ptr %add.ptr, i32 0, i32 %and11)
  %add.ptr28 = getelementptr i8, ptr %add.ptr, i32 %and11
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end17.if.end29_crit_edge
  %bp.0 = phi ptr [ %add.ptr28, %if.then27 ], [ %add.ptr, %if.end17.if.end29_crit_edge ]
  %fid30 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1
  %29 = ptrtoint ptr %fid30 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %fid30, align 8
  %conv32 = trunc i64 %30 to i32
  %incdec.ptr33 = getelementptr i32, ptr %bp.0, i32 1
  %31 = ptrtoint ptr %bp.0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv32, ptr %bp.0, align 4
  %vnode35 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 1
  %32 = ptrtoint ptr %vnode35 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %vnode35, align 8
  %conv36 = trunc i64 %33 to i32
  %incdec.ptr37 = getelementptr i32, ptr %bp.0, i32 2
  %34 = ptrtoint ptr %incdec.ptr33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv36, ptr %incdec.ptr33, align 4
  %unique39 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 3
  %35 = ptrtoint ptr %unique39 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %unique39, align 4
  %37 = ptrtoint ptr %incdec.ptr37 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %incdec.ptr37, align 4
  tail call fastcc void @trace_afs_make_fs_call1(ptr noundef nonnull %call14, ptr noundef %fid30, ptr noundef %d_name)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %38 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call14, ptr %call1.i, align 4
  %39 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call14, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %41 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call14, i32 0, i32 18
  %42 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %43 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call14, i32 0, i32 6
  %45 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call14, i32 0, i32 36
  %48 = trunc i32 %47 to i8
  %49 = lshr i8 %48, 6
  %50 = and i8 %49, 1
  %51 = xor i8 %50, 1
  %52 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call14, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_symlink(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !420

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.10) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %7 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_name, align 8
  %sub = sub i32 0, %8
  %and9 = and i32 %sub, 3
  %symlink = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %symlink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %symlink, align 8
  %call10 = tail call i32 @strlen(ptr noundef %10) #13
  %sub12 = sub i32 0, %call10
  %and13 = and i32 %sub12, 3
  %add14 = add i32 %8, 48
  %add15 = add i32 %add14, %and9
  %add16 = add i32 %add15, %call10
  %add17 = add i32 %add16, %and13
  %11 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %op, align 8
  %call18 = tail call ptr @afs_alloc_flat_call(ptr noundef %12, ptr noundef nonnull @afs_RXFSSymlink, i32 noundef %add17, i32 noundef 204) #9
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %13 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end21:                                         ; preds = %do.end7
  %request = getelementptr inbounds %struct.afs_call, ptr %call18, i32 0, i32 10
  %14 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %request, align 8
  %incdec.ptr = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 139, ptr %15, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %17 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %fid, align 8
  %conv = trunc i64 %18 to i32
  %incdec.ptr22 = getelementptr i32, ptr %15, i32 2
  %19 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %incdec.ptr, align 4
  %vnode = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %vnode, align 8
  %conv24 = trunc i64 %21 to i32
  %incdec.ptr25 = getelementptr i32, ptr %15, i32 3
  %22 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv24, ptr %incdec.ptr22, align 4
  %unique = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %unique, align 4
  %incdec.ptr27 = getelementptr i32, ptr %15, i32 4
  %25 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %incdec.ptr25, align 4
  %incdec.ptr28 = getelementptr i32, ptr %15, i32 5
  %26 = ptrtoint ptr %incdec.ptr27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %8, ptr %incdec.ptr27, align 4
  %name29 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name29, align 8
  %29 = call ptr @memcpy(ptr %incdec.ptr28, ptr %28, i32 %8)
  %add.ptr = getelementptr i8, ptr %incdec.ptr28, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp.not = icmp eq i32 %and9, 0
  br i1 %cmp.not, label %if.end21.if.end33_crit_edge, label %if.then31

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %30 = call ptr @memset(ptr %add.ptr, i32 0, i32 %and9)
  %add.ptr32 = getelementptr i8, ptr %add.ptr, i32 %and9
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end21.if.end33_crit_edge
  %bp.0 = phi ptr [ %add.ptr32, %if.then31 ], [ %add.ptr, %if.end21.if.end33_crit_edge ]
  %incdec.ptr34 = getelementptr i32, ptr %bp.0, i32 1
  %31 = ptrtoint ptr %bp.0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call10, ptr %bp.0, align 4
  %32 = ptrtoint ptr %symlink to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %symlink, align 8
  %34 = call ptr @memcpy(ptr %incdec.ptr34, ptr %33, i32 %call10)
  %add.ptr36 = getelementptr i8, ptr %incdec.ptr34, i32 %call10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp37.not = icmp eq i32 %and13, 0
  br i1 %cmp37.not, label %if.end33.if.end41_crit_edge, label %if.then39

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %35 = call ptr @memset(ptr %add.ptr36, i32 0, i32 %and13)
  %add.ptr40 = getelementptr i8, ptr %add.ptr36, i32 %and13
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end33.if.end41_crit_edge
  %bp.1 = phi ptr [ %add.ptr40, %if.then39 ], [ %add.ptr36, %if.end33.if.end41_crit_edge ]
  %incdec.ptr42 = getelementptr i32, ptr %bp.1, i32 1
  %36 = ptrtoint ptr %bp.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 9, ptr %bp.1, align 4
  %mtime = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 10
  %37 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %mtime, align 8
  %conv43 = trunc i64 %38 to i32
  %incdec.ptr44 = getelementptr i32, ptr %bp.1, i32 2
  %39 = ptrtoint ptr %incdec.ptr42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv43, ptr %incdec.ptr42, align 4
  %incdec.ptr45 = getelementptr i32, ptr %bp.1, i32 3
  %40 = ptrtoint ptr %incdec.ptr44 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %incdec.ptr44, align 4
  %incdec.ptr46 = getelementptr i32, ptr %bp.1, i32 4
  %41 = ptrtoint ptr %incdec.ptr45 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %incdec.ptr45, align 4
  %incdec.ptr47 = getelementptr i32, ptr %bp.1, i32 5
  %42 = ptrtoint ptr %incdec.ptr46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 511, ptr %incdec.ptr46, align 4
  %43 = ptrtoint ptr %incdec.ptr47 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %incdec.ptr47, align 4
  tail call fastcc void @trace_afs_make_fs_call1(ptr noundef nonnull %call18, ptr noundef %fid, ptr noundef %d_name)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %44 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call18, ptr %call1.i, align 4
  %45 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call18, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %47 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call18, i32 0, i32 18
  %48 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %49 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call18, i32 0, i32 6
  %51 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call18, i32 0, i32 36
  %54 = trunc i32 %53 to i8
  %55 = lshr i8 %54, 6
  %56 = and i8 %55, 1
  %57 = xor i8 %56, 1
  %58 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call18, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_rename(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %dentry_2 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 9
  %2 = ptrtoint ptr %dentry_2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry_2, align 4
  %d_name3 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %4 = load i32, ptr @afs_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !420

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.11) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %9 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d_name, align 8
  %sub = sub i32 0, %10
  %and12 = and i32 %sub, 3
  %11 = ptrtoint ptr %d_name3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d_name3, align 8
  %sub15 = sub i32 0, %12
  %and16 = and i32 %sub15, 3
  %add17 = add i32 %10, 36
  %add19 = add i32 %add17, %and12
  %add20 = add i32 %add19, %12
  %add21 = add i32 %add20, %and16
  %13 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %op, align 8
  %call22 = tail call ptr @afs_alloc_flat_call(ptr noundef %14, ptr noundef nonnull @afs_RXFSRename, i32 noundef %add21, i32 noundef 192) #9
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %15 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end25:                                         ; preds = %do.end10
  %request = getelementptr inbounds %struct.afs_call, ptr %call22, i32 0, i32 10
  %16 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %request, align 8
  %incdec.ptr = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 138, ptr %17, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %fid, align 8
  %conv = trunc i64 %20 to i32
  %incdec.ptr26 = getelementptr i32, ptr %17, i32 2
  %21 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %incdec.ptr, align 4
  %vnode = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vnode, align 8
  %conv28 = trunc i64 %23 to i32
  %incdec.ptr29 = getelementptr i32, ptr %17, i32 3
  %24 = ptrtoint ptr %incdec.ptr26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv28, ptr %incdec.ptr26, align 4
  %unique = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %unique, align 4
  %incdec.ptr31 = getelementptr i32, ptr %17, i32 4
  %27 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %incdec.ptr29, align 4
  %incdec.ptr32 = getelementptr i32, ptr %17, i32 5
  %28 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %10, ptr %incdec.ptr31, align 4
  %name = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name, align 8
  %31 = call ptr @memcpy(ptr %incdec.ptr32, ptr %30, i32 %10)
  %add.ptr = getelementptr i8, ptr %incdec.ptr32, i32 %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp.not = icmp eq i32 %and12, 0
  br i1 %cmp.not, label %if.end25.if.end36_crit_edge, label %if.then34

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %32 = call ptr @memset(ptr %add.ptr, i32 0, i32 %and12)
  %add.ptr35 = getelementptr i8, ptr %add.ptr, i32 %and12
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end25.if.end36_crit_edge
  %bp.0 = phi ptr [ %add.ptr35, %if.then34 ], [ %add.ptr, %if.end25.if.end36_crit_edge ]
  %fid37 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1
  %33 = ptrtoint ptr %fid37 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %fid37, align 8
  %conv39 = trunc i64 %34 to i32
  %incdec.ptr40 = getelementptr i32, ptr %bp.0, i32 1
  %35 = ptrtoint ptr %bp.0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv39, ptr %bp.0, align 4
  %vnode42 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 1
  %36 = ptrtoint ptr %vnode42 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %vnode42, align 8
  %conv43 = trunc i64 %37 to i32
  %incdec.ptr44 = getelementptr i32, ptr %bp.0, i32 2
  %38 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv43, ptr %incdec.ptr40, align 4
  %unique46 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 3
  %39 = ptrtoint ptr %unique46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %unique46, align 4
  %incdec.ptr47 = getelementptr i32, ptr %bp.0, i32 3
  %41 = ptrtoint ptr %incdec.ptr44 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %incdec.ptr44, align 4
  %incdec.ptr48 = getelementptr i32, ptr %bp.0, i32 4
  %42 = ptrtoint ptr %incdec.ptr47 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %12, ptr %incdec.ptr47, align 4
  %name49 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %name49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name49, align 8
  %45 = call ptr @memcpy(ptr %incdec.ptr48, ptr %44, i32 %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %cmp51.not = icmp eq i32 %and16, 0
  br i1 %cmp51.not, label %if.end36.if.end55_crit_edge, label %if.then53

if.end36.if.end55_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then53:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr50 = getelementptr i8, ptr %incdec.ptr48, i32 %12
  %46 = call ptr @memset(ptr %add.ptr50, i32 0, i32 %and16)
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end36.if.end55_crit_edge
  tail call fastcc void @trace_afs_make_fs_call2(ptr noundef nonnull %call22, ptr noundef %fid, ptr noundef %d_name, ptr noundef %d_name3)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %47 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call22, ptr %call1.i, align 4
  %48 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call22, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %50 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call22, i32 0, i32 18
  %51 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %52 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call22, i32 0, i32 6
  %54 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call22, i32 0, i32 36
  %57 = trunc i32 %56 to i8
  %58 = lshr i8 %57, 6
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  %61 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call22, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then24
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_make_fs_call2(ptr noundef %call, ptr noundef %fid, ptr noundef %name, ptr noundef %name2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_fs_call2, i32 0, i32 1), ptr blockaddress(@trace_afs_make_fs_call2, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !421

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !420

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !428
  %call43 = tail call i32 @__traceiter_afs_make_fs_call2(ptr noundef null, ptr noundef %call, ptr noundef %fid, ptr noundef %name, ptr noundef %name2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !429
  %13 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !420

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !424
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_fs_call2, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_fs_call2, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_afs_make_fs_call2.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_afs_make_fs_call2.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 902, ptr noundef nonnull @.str.41) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !425
  %31 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_store_data(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body10_crit_edge, label %do.end, !prof !420

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

do.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %key = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %5 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %key, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %serial.i = getelementptr inbounds %struct.key, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %8, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fid, align 8
  %vnode = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %vnode, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.12, i32 noundef %cond.i, i64 noundef %10, i64 noundef %12) #12
  br label %do.body10

do.body10:                                        ; preds = %key_serial.exit, %entry.do.body10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %13 = load i32, ptr @afs_debug, align 4
  %and11 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body10.do.end31_crit_edge, label %do.end22, !prof !420

do.body10.do.end31_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

do.end22:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %14 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i107 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i107 to ptr
  %task25 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task25, align 8
  %comm26 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %size = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size, align 8
  %pos = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pos, align 8
  %i_size = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 7
  %22 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_size, align 8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %comm26, i64 noundef %19, i64 noundef %21, i64 noundef %23) #12
  br label %do.end31

do.end31:                                         ; preds = %do.end22, %do.body10.do.end31_crit_edge
  %server = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 20
  %24 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %server, align 8
  %flags = getelementptr inbounds %struct.afs_server, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags, align 4
  %28 = and i32 %27, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool33.not = icmp eq i32 %28, 0
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %do.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %29 = load i32, ptr @afs_debug, align 4
  %and.i108 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i108)
  %tobool.not.i109 = icmp eq i32 %and.i108, 0
  br i1 %tobool.not.i109, label %if.then34.do.end9.i_crit_edge, label %do.end.i, !prof !420

if.then34.do.end9.i_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

do.end.i:                                         ; preds = %if.then34
  %30 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 101
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %34 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %key.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %do.end.i.key_serial.exit.i_crit_edge, label %cond.true.i.i

do.end.i.key_serial.exit.i_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %serial.i.i = getelementptr inbounds %struct.key, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %do.end.i.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %37, %cond.true.i.i ], [ 0, %do.end.i.key_serial.exit.i_crit_edge ]
  %fid.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %38 = ptrtoint ptr %fid.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %fid.i, align 8
  %vnode.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %vnode.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %vnode.i, align 8
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm.i, ptr noundef nonnull @.str.79, i32 noundef %cond.i.i, i64 noundef %39, i64 noundef %41) #12
  br label %do.end9.i

do.end9.i:                                        ; preds = %key_serial.exit.i, %if.then34.do.end9.i_crit_edge
  %42 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %op, align 8
  %call10.i = tail call ptr @afs_alloc_flat_call(ptr noundef %43, ptr noundef nonnull @afs_RXFSStoreData64, i32 noundef 64, i32 noundef 108) #9
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %error.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %44 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -12, ptr %error.i.i, align 2
  br label %cleanup

if.end13.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %write_iter14.i = getelementptr inbounds %struct.afs_call, ptr %call10.i, i32 0, i32 13
  %48 = ptrtoint ptr %write_iter14.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %write_iter14.i, align 8
  %request.i = getelementptr inbounds %struct.afs_call, ptr %call10.i, i32 0, i32 10
  %49 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %request.i, align 8
  %incdec.ptr.i = getelementptr i32, ptr %50, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 65538, ptr %50, align 4
  %fid15.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %52 = ptrtoint ptr %fid15.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %fid15.i, align 8
  %conv.i = trunc i64 %53 to i32
  %incdec.ptr17.i = getelementptr i32, ptr %50, i32 2
  %54 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv.i, ptr %incdec.ptr.i, align 4
  %vnode19.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %vnode19.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %vnode19.i, align 8
  %conv20.i = trunc i64 %56 to i32
  %incdec.ptr21.i = getelementptr i32, ptr %50, i32 3
  %57 = ptrtoint ptr %incdec.ptr17.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv20.i, ptr %incdec.ptr17.i, align 4
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %58 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %unique.i, align 4
  %incdec.ptr23.i = getelementptr i32, ptr %50, i32 4
  %60 = ptrtoint ptr %incdec.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %incdec.ptr21.i, align 4
  %incdec.ptr24.i = getelementptr i32, ptr %50, i32 5
  %61 = ptrtoint ptr %incdec.ptr23.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %incdec.ptr23.i, align 4
  %mtime.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 10
  %62 = ptrtoint ptr %mtime.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %mtime.i, align 8
  %conv25.i = trunc i64 %63 to i32
  %incdec.ptr26.i = getelementptr i32, ptr %50, i32 6
  %64 = ptrtoint ptr %incdec.ptr24.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv25.i, ptr %incdec.ptr24.i, align 4
  %incdec.ptr30.i = getelementptr i32, ptr %50, i32 10
  %pos.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 1
  %65 = call ptr @memset(ptr %incdec.ptr26.i, i32 0, i32 16)
  %66 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %pos.i, align 8
  %68 = lshr i64 %67, 32
  %conv32.i = trunc i64 %68 to i32
  %incdec.ptr33.i = getelementptr i32, ptr %50, i32 11
  %69 = ptrtoint ptr %incdec.ptr30.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv32.i, ptr %incdec.ptr30.i, align 4
  %70 = load i64, ptr %pos.i, align 8
  %conv36.i = trunc i64 %70 to i32
  %incdec.ptr37.i = getelementptr i32, ptr %50, i32 12
  %71 = ptrtoint ptr %incdec.ptr33.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv36.i, ptr %incdec.ptr33.i, align 4
  %size.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 2
  %72 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %size.i, align 8
  %74 = lshr i64 %73, 32
  %conv40.i = trunc i64 %74 to i32
  %incdec.ptr41.i = getelementptr i32, ptr %50, i32 13
  %75 = ptrtoint ptr %incdec.ptr37.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv40.i, ptr %incdec.ptr37.i, align 4
  %76 = load i64, ptr %size.i, align 8
  %conv44.i = trunc i64 %76 to i32
  %incdec.ptr45.i = getelementptr i32, ptr %50, i32 14
  %77 = ptrtoint ptr %incdec.ptr41.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv44.i, ptr %incdec.ptr41.i, align 4
  %i_size.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 7
  %78 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %i_size.i, align 8
  %80 = lshr i64 %79, 32
  %conv48.i = trunc i64 %80 to i32
  %incdec.ptr49.i = getelementptr i32, ptr %50, i32 15
  %81 = ptrtoint ptr %incdec.ptr45.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv48.i, ptr %incdec.ptr45.i, align 4
  %82 = load i64, ptr %i_size.i, align 8
  %conv52.i = trunc i64 %82 to i32
  %83 = ptrtoint ptr %incdec.ptr49.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv52.i, ptr %incdec.ptr49.i, align 4
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call10.i, ptr noundef %fid15.i) #9
  %call1.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %84 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call10.i, ptr %call1.i.i, align 4
  %85 = ptrtoint ptr %call10.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call10.i, align 8
  %type2.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %87 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %type2.i.i, align 8
  %op3.i.i = getelementptr inbounds %struct.afs_call, ptr %call10.i, i32 0, i32 18
  %88 = ptrtoint ptr %op3.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %op, ptr %op3.i.i, align 4
  %key.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %89 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %key.i.i, align 4
  %key4.i.i = getelementptr inbounds %struct.afs_call, ptr %call10.i, i32 0, i32 6
  %91 = ptrtoint ptr %key4.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %key4.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %92 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags.i.i, align 8
  %intr.i.i = getelementptr inbounds %struct.afs_call, ptr %call10.i, i32 0, i32 36
  %94 = trunc i32 %93 to i8
  %95 = lshr i8 %94, 6
  %96 = and i8 %95, 1
  %97 = xor i8 %96, 1
  %98 = ptrtoint ptr %intr.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %intr.i.i, align 1
  %ac.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i.i, ptr noundef nonnull %call10.i, i32 noundef 3136) #9
  br label %cleanup

if.end35:                                         ; preds = %do.end31
  %99 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %op, align 8
  %call36 = tail call ptr @afs_alloc_flat_call(ptr noundef %100, ptr noundef nonnull @afs_RXFSStoreData, i32 noundef 52, i32 noundef 108) #9
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %101 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %102 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 8
  %write_iter40 = getelementptr inbounds %struct.afs_call, ptr %call36, i32 0, i32 13
  %105 = ptrtoint ptr %write_iter40 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %write_iter40, align 8
  %request = getelementptr inbounds %struct.afs_call, ptr %call36, i32 0, i32 10
  %106 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %request, align 8
  %incdec.ptr = getelementptr i32, ptr %107, i32 1
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 133, ptr %107, align 4
  %fid41 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %109 = ptrtoint ptr %fid41 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %fid41, align 8
  %conv = trunc i64 %110 to i32
  %incdec.ptr43 = getelementptr i32, ptr %107, i32 2
  %111 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %conv, ptr %incdec.ptr, align 4
  %vnode45 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %112 = ptrtoint ptr %vnode45 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %vnode45, align 8
  %conv46 = trunc i64 %113 to i32
  %incdec.ptr47 = getelementptr i32, ptr %107, i32 3
  %114 = ptrtoint ptr %incdec.ptr43 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv46, ptr %incdec.ptr43, align 4
  %unique = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %115 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %unique, align 4
  %incdec.ptr49 = getelementptr i32, ptr %107, i32 4
  %117 = ptrtoint ptr %incdec.ptr47 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %incdec.ptr47, align 4
  %incdec.ptr50 = getelementptr i32, ptr %107, i32 5
  %118 = ptrtoint ptr %incdec.ptr49 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1, ptr %incdec.ptr49, align 4
  %mtime = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 10
  %119 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %mtime, align 8
  %conv51 = trunc i64 %120 to i32
  %incdec.ptr52 = getelementptr i32, ptr %107, i32 6
  %121 = ptrtoint ptr %incdec.ptr50 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %conv51, ptr %incdec.ptr50, align 4
  %incdec.ptr56 = getelementptr i32, ptr %107, i32 10
  %pos57 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 1
  %122 = call ptr @memset(ptr %incdec.ptr52, i32 0, i32 16)
  %123 = ptrtoint ptr %pos57 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %pos57, align 8
  %conv59 = trunc i64 %124 to i32
  %incdec.ptr60 = getelementptr i32, ptr %107, i32 11
  %125 = ptrtoint ptr %incdec.ptr56 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv59, ptr %incdec.ptr56, align 4
  %size61 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 2
  %126 = ptrtoint ptr %size61 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %size61, align 8
  %conv63 = trunc i64 %127 to i32
  %incdec.ptr64 = getelementptr i32, ptr %107, i32 12
  %128 = ptrtoint ptr %incdec.ptr60 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %conv63, ptr %incdec.ptr60, align 4
  %i_size65 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 7
  %129 = ptrtoint ptr %i_size65 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %i_size65, align 8
  %conv67 = trunc i64 %130 to i32
  %131 = ptrtoint ptr %incdec.ptr64 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %conv67, ptr %incdec.ptr64, align 4
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call36, ptr noundef %fid41)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %132 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call36, ptr %call1.i, align 4
  %133 = ptrtoint ptr %call36 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %call36, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %135 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %134, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call36, i32 0, i32 18
  %136 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %op, ptr %op3.i, align 4
  %key.i110 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %137 = ptrtoint ptr %key.i110 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %key.i110, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call36, i32 0, i32 6
  %139 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %140 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call36, i32 0, i32 36
  %142 = trunc i32 %141 to i8
  %143 = lshr i8 %142, 6
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  %146 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call36, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then38, %if.end13.i, %if.then12.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_setattr(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %5 = load i32, ptr @afs_debug, align 4
  %and2 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.then.do.body11.i_crit_edge, label %do.end.i, !prof !420

if.then.do.body11.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11.i

do.end.i:                                         ; preds = %if.then
  %6 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %10 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %key.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %do.end.i.key_serial.exit.i_crit_edge, label %cond.true.i.i

do.end.i.key_serial.exit.i_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %serial.i.i = getelementptr inbounds %struct.key, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %do.end.i.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %13, %cond.true.i.i ], [ 0, %do.end.i.key_serial.exit.i_crit_edge ]
  %fid.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %14 = ptrtoint ptr %fid.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %fid.i, align 8
  %vnode.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %vnode.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vnode.i, align 8
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm.i, ptr noundef nonnull @.str.85, i32 noundef %cond.i.i, i64 noundef %15, i64 noundef %17) #12
  br label %do.body11.i

do.body11.i:                                      ; preds = %key_serial.exit.i, %if.then.do.body11.i_crit_edge
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 8
  %and12.i = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %do.end25.i, label %do.end41.i, !prof !430

do.end25.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #12
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/fsclient.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1227, 0\0A.popsection", ""() #9, !srcloc !431
  unreachable

do.end41.i:                                       ; preds = %do.body11.i
  %server.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 20
  %20 = ptrtoint ptr %server.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %server.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_server, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i, align 4
  %24 = and i32 %23, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool43.not.i = icmp eq i32 %24, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.then44.i

if.then44.i:                                      ; preds = %do.end41.i
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %27 = load i32, ptr @afs_debug, align 4
  %and.i87.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87.i)
  %tobool.not.i88.i = icmp eq i32 %and.i87.i, 0
  br i1 %tobool.not.i88.i, label %if.then44.i.do.body11.i.i_crit_edge, label %do.end.i.i, !prof !420

if.then44.i.do.body11.i.i_crit_edge:              ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11.i.i

do.end.i.i:                                       ; preds = %if.then44.i
  %28 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i, align 8
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 101
  %key.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %32 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %key.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.key_serial.exit.i.i_crit_edge, label %cond.true.i.i.i

do.end.i.i.key_serial.exit.i.i_crit_edge:         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_serial.exit.i.i

cond.true.i.i.i:                                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %serial.i.i.i = getelementptr inbounds %struct.key, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %serial.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %serial.i.i.i, align 4
  br label %key_serial.exit.i.i

key_serial.exit.i.i:                              ; preds = %cond.true.i.i.i, %do.end.i.i.key_serial.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %35, %cond.true.i.i.i ], [ 0, %do.end.i.i.key_serial.exit.i.i_crit_edge ]
  %fid.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %36 = ptrtoint ptr %fid.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %fid.i.i, align 8
  %vnode.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %vnode.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %vnode.i.i, align 8
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm.i.i, ptr noundef nonnull @.str.92, i32 noundef %cond.i.i.i, i64 noundef %37, i64 noundef %39) #12
  br label %do.body11.i.i

do.body11.i.i:                                    ; preds = %key_serial.exit.i.i, %if.then44.i.do.body11.i.i_crit_edge
  %40 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %26, align 8
  %and12.i.i = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool13.not.i.i, label %do.end25.i.i, label %do.end41.i.i, !prof !430

do.end25.i.i:                                     ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call27.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #12
  %call32.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/fsclient.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1185, 0\0A.popsection", ""() #9, !srcloc !432
  unreachable

do.end41.i.i:                                     ; preds = %do.body11.i.i
  %42 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %op, align 8
  %call42.i.i = tail call ptr @afs_alloc_flat_call(ptr noundef %43, ptr noundef nonnull @afs_RXFSStoreData64_as_Status, i32 noundef 64, i32 noundef 108) #9
  %tobool43.not.i.i = icmp eq ptr %call42.i.i, null
  br i1 %tobool43.not.i.i, label %if.then44.i.i, label %if.end45.i.i

if.then44.i.i:                                    ; preds = %do.end41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %error.i.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %44 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -12, ptr %error.i.i.i, align 2
  br label %cleanup

if.end45.i.i:                                     ; preds = %do.end41.i.i
  %request.i.i = getelementptr inbounds %struct.afs_call, ptr %call42.i.i, i32 0, i32 10
  %45 = ptrtoint ptr %request.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %request.i.i, align 8
  %incdec.ptr.i.i = getelementptr i32, ptr %46, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 65538, ptr %46, align 4
  %fid46.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %48 = ptrtoint ptr %fid46.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %fid46.i.i, align 8
  %conv.i.i = trunc i64 %49 to i32
  %incdec.ptr48.i.i = getelementptr i32, ptr %46, i32 2
  %50 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv.i.i, ptr %incdec.ptr.i.i, align 4
  %vnode50.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %vnode50.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %vnode50.i.i, align 8
  %conv51.i.i = trunc i64 %52 to i32
  %incdec.ptr52.i.i = getelementptr i32, ptr %46, i32 3
  %53 = ptrtoint ptr %incdec.ptr48.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv51.i.i, ptr %incdec.ptr48.i.i, align 4
  %unique.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %unique.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %unique.i.i, align 4
  %incdec.ptr54.i.i = getelementptr i32, ptr %46, i32 4
  %56 = ptrtoint ptr %incdec.ptr52.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %incdec.ptr52.i.i, align 4
  %57 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %26, align 8
  %and.i95.i.i = and i32 %58, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95.i.i)
  %tobool.not.i96.i.i = icmp eq i32 %and.i95.i.i, 0
  br i1 %tobool.not.i96.i.i, label %if.end45.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.end45.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ia_mtime.i.i.i = getelementptr inbounds %struct.iattr, ptr %26, i32 0, i32 6
  %59 = ptrtoint ptr %ia_mtime.i.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %ia_mtime.i.i.i, align 8
  %conv.i.i.i = trunc i64 %60 to i32
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end45.i.i.if.end.i.i.i_crit_edge
  %mask.0.i.i.i = phi i32 [ 1, %if.then.i.i.i ], [ 0, %if.end45.i.i.if.end.i.i.i_crit_edge ]
  %mtime.0.i.i.i = phi i32 [ %conv.i.i.i, %if.then.i.i.i ], [ 0, %if.end45.i.i.if.end.i.i.i_crit_edge ]
  %and2.i.i.i = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.if.end6.i.i.i_crit_edge, label %if.then4.i.i.i

if.end.i.i.i.if.end6.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or5.i.i.i = or i32 %mask.0.i.i.i, 2
  %ia_uid.i.i.i = getelementptr inbounds %struct.iattr, ptr %26, i32 0, i32 2
  %61 = ptrtoint ptr %ia_uid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.unpack46.i.i.i = load i32, ptr %ia_uid.i.i.i, align 8
  %62 = insertvalue [1 x i32] undef, i32 %.unpack46.i.i.i, 0
  %call.i.i.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %62) #9
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %if.then4.i.i.i, %if.end.i.i.i.if.end6.i.i.i_crit_edge
  %mask.1.i.i.i = phi i32 [ %or5.i.i.i, %if.then4.i.i.i ], [ %mask.0.i.i.i, %if.end.i.i.i.if.end6.i.i.i_crit_edge ]
  %owner.0.i.i.i = phi i32 [ %call.i.i.i, %if.then4.i.i.i ], [ 0, %if.end.i.i.i.if.end6.i.i.i_crit_edge ]
  %63 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %26, align 8
  %and8.i.i.i = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.end6.i.i.i.if.end14.i.i.i_crit_edge, label %if.then10.i.i.i

if.end6.i.i.i.if.end14.i.i.i_crit_edge:           ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or11.i.i.i = or i32 %mask.1.i.i.i, 4
  %ia_gid.i.i.i = getelementptr inbounds %struct.iattr, ptr %26, i32 0, i32 3
  %65 = ptrtoint ptr %ia_gid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack.i.i.i = load i32, ptr %ia_gid.i.i.i, align 4
  %66 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i, 0
  %call13.i.i.i = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %66) #9
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.then10.i.i.i, %if.end6.i.i.i.if.end14.i.i.i_crit_edge
  %mask.2.i.i.i = phi i32 [ %or11.i.i.i, %if.then10.i.i.i ], [ %mask.1.i.i.i, %if.end6.i.i.i.if.end14.i.i.i_crit_edge ]
  %group.0.i.i.i = phi i32 [ %call13.i.i.i, %if.then10.i.i.i ], [ 0, %if.end6.i.i.i.if.end14.i.i.i_crit_edge ]
  %67 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %26, align 8
  %and16.i.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %and16.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %if.end14.i.i.i.xdr_encode_AFS_StoreStatus.exit.i.i_crit_edge, label %if.then18.i.i.i

if.end14.i.i.i.xdr_encode_AFS_StoreStatus.exit.i.i_crit_edge: ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_encode_AFS_StoreStatus.exit.i.i

if.then18.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or19.i.i.i = or i32 %mask.2.i.i.i, 8
  %ia_mode.i.i.i = getelementptr inbounds %struct.iattr, ptr %26, i32 0, i32 1
  %69 = ptrtoint ptr %ia_mode.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %ia_mode.i.i.i, align 4
  %71 = and i16 %70, 4095
  %and21.i.i.i = zext i16 %71 to i32
  br label %xdr_encode_AFS_StoreStatus.exit.i.i

xdr_encode_AFS_StoreStatus.exit.i.i:              ; preds = %if.then18.i.i.i, %if.end14.i.i.i.xdr_encode_AFS_StoreStatus.exit.i.i_crit_edge
  %mask.3.i.i.i = phi i32 [ %or19.i.i.i, %if.then18.i.i.i ], [ %mask.2.i.i.i, %if.end14.i.i.i.xdr_encode_AFS_StoreStatus.exit.i.i_crit_edge ]
  %mode.0.i.i.i = phi i32 [ %and21.i.i.i, %if.then18.i.i.i ], [ 0, %if.end14.i.i.i.xdr_encode_AFS_StoreStatus.exit.i.i_crit_edge ]
  %incdec.ptr.i.i.i = getelementptr i32, ptr %46, i32 5
  %72 = ptrtoint ptr %incdec.ptr54.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %mask.3.i.i.i, ptr %incdec.ptr54.i.i, align 4
  %incdec.ptr23.i.i.i = getelementptr i32, ptr %46, i32 6
  %73 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %mtime.0.i.i.i, ptr %incdec.ptr.i.i.i, align 4
  %incdec.ptr24.i.i.i = getelementptr i32, ptr %46, i32 7
  %74 = ptrtoint ptr %incdec.ptr23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %owner.0.i.i.i, ptr %incdec.ptr23.i.i.i, align 4
  %incdec.ptr25.i.i.i = getelementptr i32, ptr %46, i32 8
  %75 = ptrtoint ptr %incdec.ptr24.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %group.0.i.i.i, ptr %incdec.ptr24.i.i.i, align 4
  %incdec.ptr26.i.i.i = getelementptr i32, ptr %46, i32 9
  %76 = ptrtoint ptr %incdec.ptr25.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %mode.0.i.i.i, ptr %incdec.ptr25.i.i.i, align 4
  %incdec.ptr27.i.i.i = getelementptr i32, ptr %46, i32 10
  %77 = ptrtoint ptr %incdec.ptr26.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %incdec.ptr26.i.i.i, align 4
  %ia_size.i.i = getelementptr inbounds %struct.iattr, ptr %26, i32 0, i32 4
  %78 = ptrtoint ptr %ia_size.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %ia_size.i.i, align 8
  %80 = lshr i64 %79, 32
  %conv56.i.i = trunc i64 %80 to i32
  %incdec.ptr57.i.i = getelementptr i32, ptr %46, i32 11
  %81 = ptrtoint ptr %incdec.ptr27.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv56.i.i, ptr %incdec.ptr27.i.i.i, align 4
  %82 = load i64, ptr %ia_size.i.i, align 8
  %conv60.i.i = trunc i64 %82 to i32
  %incdec.ptr61.i.i = getelementptr i32, ptr %46, i32 12
  %83 = ptrtoint ptr %incdec.ptr57.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv60.i.i, ptr %incdec.ptr57.i.i, align 4
  %incdec.ptr62.i.i = getelementptr i32, ptr %46, i32 13
  %84 = ptrtoint ptr %incdec.ptr61.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %incdec.ptr61.i.i, align 4
  %incdec.ptr63.i.i = getelementptr i32, ptr %46, i32 14
  %85 = ptrtoint ptr %incdec.ptr62.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %incdec.ptr62.i.i, align 4
  %86 = load i64, ptr %ia_size.i.i, align 8
  %87 = lshr i64 %86, 32
  %conv67.i.i = trunc i64 %87 to i32
  %incdec.ptr68.i.i = getelementptr i32, ptr %46, i32 15
  %88 = ptrtoint ptr %incdec.ptr63.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv67.i.i, ptr %incdec.ptr63.i.i, align 4
  %89 = load i64, ptr %ia_size.i.i, align 8
  %conv71.i.i = trunc i64 %89 to i32
  %90 = ptrtoint ptr %incdec.ptr68.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv71.i.i, ptr %incdec.ptr68.i.i, align 4
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call42.i.i, ptr noundef %fid46.i.i) #9
  %call1.i.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %91 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call42.i.i, ptr %call1.i.i.i, align 4
  %92 = ptrtoint ptr %call42.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call42.i.i, align 8
  %type2.i.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %94 = ptrtoint ptr %type2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %type2.i.i.i, align 8
  %op3.i.i.i = getelementptr inbounds %struct.afs_call, ptr %call42.i.i, i32 0, i32 18
  %95 = ptrtoint ptr %op3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %op, ptr %op3.i.i.i, align 4
  %key.i.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %96 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %key.i.i.i, align 4
  %key4.i.i.i = getelementptr inbounds %struct.afs_call, ptr %call42.i.i, i32 0, i32 6
  %98 = ptrtoint ptr %key4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %key4.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %99 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags.i.i.i, align 8
  %intr.i.i.i = getelementptr inbounds %struct.afs_call, ptr %call42.i.i, i32 0, i32 36
  %101 = trunc i32 %100 to i8
  %102 = lshr i8 %101, 6
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  %105 = ptrtoint ptr %intr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %intr.i.i.i, align 1
  %ac.i.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i.i.i, ptr noundef nonnull %call42.i.i, i32 noundef 3136) #9
  br label %cleanup

if.end45.i:                                       ; preds = %do.end41.i
  %106 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %op, align 8
  %call46.i = tail call ptr @afs_alloc_flat_call(ptr noundef %107, ptr noundef nonnull @afs_RXFSStoreData_as_Status, i32 noundef 52, i32 noundef 108) #9
  %tobool47.not.i = icmp eq ptr %call46.i, null
  br i1 %tobool47.not.i, label %if.then48.i, label %if.end49.i

if.then48.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %error.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %108 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 -12, ptr %error.i.i, align 2
  br label %cleanup

if.end49.i:                                       ; preds = %if.end45.i
  %request.i = getelementptr inbounds %struct.afs_call, ptr %call46.i, i32 0, i32 10
  %109 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %request.i, align 8
  %incdec.ptr.i = getelementptr i32, ptr %110, i32 1
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 133, ptr %110, align 4
  %fid50.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %112 = ptrtoint ptr %fid50.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %fid50.i, align 8
  %conv.i = trunc i64 %113 to i32
  %incdec.ptr52.i = getelementptr i32, ptr %110, i32 2
  %114 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv.i, ptr %incdec.ptr.i, align 4
  %vnode54.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %115 = ptrtoint ptr %vnode54.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %vnode54.i, align 8
  %conv55.i = trunc i64 %116 to i32
  %incdec.ptr56.i = getelementptr i32, ptr %110, i32 3
  %117 = ptrtoint ptr %incdec.ptr52.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %conv55.i, ptr %incdec.ptr52.i, align 4
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %118 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %unique.i, align 4
  %incdec.ptr58.i = getelementptr i32, ptr %110, i32 4
  %120 = ptrtoint ptr %incdec.ptr56.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %incdec.ptr56.i, align 4
  %121 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %2, align 8
  %and.i89.i = and i32 %122, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89.i)
  %tobool.not.i90.i = icmp eq i32 %and.i89.i, 0
  br i1 %tobool.not.i90.i, label %if.end49.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end49.i.if.end.i.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  %ia_mtime.i.i = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 6
  %123 = ptrtoint ptr %ia_mtime.i.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %ia_mtime.i.i, align 8
  %conv.i91.i = trunc i64 %124 to i32
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end49.i.if.end.i.i_crit_edge
  %mask.0.i.i = phi i32 [ 1, %if.then.i.i ], [ 0, %if.end49.i.if.end.i.i_crit_edge ]
  %mtime.0.i.i = phi i32 [ %conv.i91.i, %if.then.i.i ], [ 0, %if.end49.i.if.end.i.i_crit_edge ]
  %and2.i.i = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or5.i.i = or i32 %mask.0.i.i, 2
  %ia_uid.i.i = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 2
  %125 = ptrtoint ptr %ia_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %.unpack46.i.i = load i32, ptr %ia_uid.i.i, align 8
  %126 = insertvalue [1 x i32] undef, i32 %.unpack46.i.i, 0
  %call.i.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %126) #9
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  %mask.1.i.i = phi i32 [ %or5.i.i, %if.then4.i.i ], [ %mask.0.i.i, %if.end.i.i.if.end6.i.i_crit_edge ]
  %owner.0.i.i = phi i32 [ %call.i.i, %if.then4.i.i ], [ 0, %if.end.i.i.if.end6.i.i_crit_edge ]
  %127 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %2, align 8
  %and8.i.i = and i32 %128, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end6.i.i.if.end14.i.i_crit_edge, label %if.then10.i.i

if.end6.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

if.then10.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or11.i.i = or i32 %mask.1.i.i, 4
  %ia_gid.i.i = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 3
  %129 = ptrtoint ptr %ia_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %.unpack.i.i = load i32, ptr %ia_gid.i.i, align 4
  %130 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call13.i.i = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %130) #9
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then10.i.i, %if.end6.i.i.if.end14.i.i_crit_edge
  %mask.2.i.i = phi i32 [ %or11.i.i, %if.then10.i.i ], [ %mask.1.i.i, %if.end6.i.i.if.end14.i.i_crit_edge ]
  %group.0.i.i = phi i32 [ %call13.i.i, %if.then10.i.i ], [ 0, %if.end6.i.i.if.end14.i.i_crit_edge ]
  %131 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %2, align 8
  %and16.i.i = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end14.i.i.xdr_encode_AFS_StoreStatus.exit.i_crit_edge, label %if.then18.i.i

if.end14.i.i.xdr_encode_AFS_StoreStatus.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_encode_AFS_StoreStatus.exit.i

if.then18.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or19.i.i = or i32 %mask.2.i.i, 8
  %ia_mode.i.i = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 1
  %133 = ptrtoint ptr %ia_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %ia_mode.i.i, align 4
  %135 = and i16 %134, 4095
  %and21.i.i = zext i16 %135 to i32
  br label %xdr_encode_AFS_StoreStatus.exit.i

xdr_encode_AFS_StoreStatus.exit.i:                ; preds = %if.then18.i.i, %if.end14.i.i.xdr_encode_AFS_StoreStatus.exit.i_crit_edge
  %mask.3.i.i = phi i32 [ %or19.i.i, %if.then18.i.i ], [ %mask.2.i.i, %if.end14.i.i.xdr_encode_AFS_StoreStatus.exit.i_crit_edge ]
  %mode.0.i.i = phi i32 [ %and21.i.i, %if.then18.i.i ], [ 0, %if.end14.i.i.xdr_encode_AFS_StoreStatus.exit.i_crit_edge ]
  %incdec.ptr.i92.i = getelementptr i32, ptr %110, i32 5
  %136 = ptrtoint ptr %incdec.ptr58.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %mask.3.i.i, ptr %incdec.ptr58.i, align 4
  %incdec.ptr23.i.i = getelementptr i32, ptr %110, i32 6
  %137 = ptrtoint ptr %incdec.ptr.i92.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %mtime.0.i.i, ptr %incdec.ptr.i92.i, align 4
  %incdec.ptr24.i.i = getelementptr i32, ptr %110, i32 7
  %138 = ptrtoint ptr %incdec.ptr23.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %owner.0.i.i, ptr %incdec.ptr23.i.i, align 4
  %incdec.ptr25.i.i = getelementptr i32, ptr %110, i32 8
  %139 = ptrtoint ptr %incdec.ptr24.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %group.0.i.i, ptr %incdec.ptr24.i.i, align 4
  %incdec.ptr26.i.i = getelementptr i32, ptr %110, i32 9
  %140 = ptrtoint ptr %incdec.ptr25.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %mode.0.i.i, ptr %incdec.ptr25.i.i, align 4
  %incdec.ptr27.i.i = getelementptr i32, ptr %110, i32 10
  %141 = ptrtoint ptr %incdec.ptr26.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %incdec.ptr26.i.i, align 4
  %ia_size.i = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 4
  %142 = ptrtoint ptr %ia_size.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %ia_size.i, align 8
  %conv59.i = trunc i64 %143 to i32
  %incdec.ptr60.i = getelementptr i32, ptr %110, i32 11
  %144 = ptrtoint ptr %incdec.ptr27.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %conv59.i, ptr %incdec.ptr27.i.i, align 4
  %incdec.ptr61.i = getelementptr i32, ptr %110, i32 12
  %145 = ptrtoint ptr %incdec.ptr60.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %incdec.ptr60.i, align 4
  %146 = load i64, ptr %ia_size.i, align 8
  %conv63.i = trunc i64 %146 to i32
  %147 = ptrtoint ptr %incdec.ptr61.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %conv63.i, ptr %incdec.ptr61.i, align 4
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call46.i, ptr noundef %fid50.i) #9
  %call1.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %148 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call46.i, ptr %call1.i.i, align 4
  %149 = ptrtoint ptr %call46.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %call46.i, align 8
  %type2.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %151 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %150, ptr %type2.i.i, align 8
  %op3.i.i = getelementptr inbounds %struct.afs_call, ptr %call46.i, i32 0, i32 18
  %152 = ptrtoint ptr %op3.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %op, ptr %op3.i.i, align 4
  %key.i93.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %153 = ptrtoint ptr %key.i93.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %key.i93.i, align 4
  %key4.i.i = getelementptr inbounds %struct.afs_call, ptr %call46.i, i32 0, i32 6
  %155 = ptrtoint ptr %key4.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %154, ptr %key4.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %156 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %flags.i.i, align 8
  %intr.i.i = getelementptr inbounds %struct.afs_call, ptr %call46.i, i32 0, i32 36
  %158 = trunc i32 %157 to i8
  %159 = lshr i8 %158, 6
  %160 = and i8 %159, 1
  %161 = xor i8 %160, 1
  %162 = ptrtoint ptr %intr.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %intr.i.i, align 1
  %ac.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i.i, ptr noundef nonnull %call46.i, i32 noundef 3136) #9
  br label %cleanup

do.body:                                          ; preds = %entry
  br i1 %tobool3.not, label %do.body.do.end14_crit_edge, label %do.end, !prof !420

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

do.end:                                           ; preds = %do.body
  %163 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i48 = and i32 %163, -16384
  %164 = inttoptr i32 %and.i48 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %166, i32 0, i32 101
  %key = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %167 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %key, align 4
  %tobool.not.i49 = icmp eq ptr %168, null
  br i1 %tobool.not.i49, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %serial.i = getelementptr inbounds %struct.key, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %170, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %171 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %fid, align 8
  %vnode = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %173 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %vnode, align 8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.16, i32 noundef %cond.i, i64 noundef %172, i64 noundef %174) #12
  br label %do.end14

do.end14:                                         ; preds = %key_serial.exit, %do.body.do.end14_crit_edge
  %175 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %op, align 8
  %call15 = tail call ptr @afs_alloc_flat_call(ptr noundef %176, ptr noundef nonnull @afs_RXFSStoreStatus, i32 noundef 40, i32 noundef 108) #9
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %177 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end18:                                         ; preds = %do.end14
  %request = getelementptr inbounds %struct.afs_call, ptr %call15, i32 0, i32 10
  %178 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %request, align 8
  %incdec.ptr = getelementptr i32, ptr %179, i32 1
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 135, ptr %179, align 4
  %fid19 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %181 = ptrtoint ptr %fid19 to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %fid19, align 8
  %conv = trunc i64 %182 to i32
  %incdec.ptr21 = getelementptr i32, ptr %179, i32 2
  %183 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %conv, ptr %incdec.ptr, align 4
  %vnode23 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %184 = ptrtoint ptr %vnode23 to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %vnode23, align 8
  %conv24 = trunc i64 %185 to i32
  %incdec.ptr25 = getelementptr i32, ptr %179, i32 3
  %186 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %conv24, ptr %incdec.ptr21, align 4
  %unique = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %187 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %unique, align 4
  %incdec.ptr27 = getelementptr i32, ptr %179, i32 4
  %189 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %incdec.ptr25, align 4
  %190 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %0, align 8
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %191, align 8
  %and.i50 = and i32 %193, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool.not.i51 = icmp eq i32 %and.i50, 0
  br i1 %tobool.not.i51, label %if.end18.if.end.i_crit_edge, label %if.then.i

if.end18.if.end.i_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %ia_mtime.i = getelementptr inbounds %struct.iattr, ptr %191, i32 0, i32 6
  %194 = ptrtoint ptr %ia_mtime.i to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %ia_mtime.i, align 8
  %conv.i52 = trunc i64 %195 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end18.if.end.i_crit_edge
  %mask.0.i = phi i32 [ 1, %if.then.i ], [ 0, %if.end18.if.end.i_crit_edge ]
  %mtime.0.i = phi i32 [ %conv.i52, %if.then.i ], [ 0, %if.end18.if.end.i_crit_edge ]
  %and2.i = and i32 %193, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %or5.i = or i32 %mask.0.i, 2
  %ia_uid.i = getelementptr inbounds %struct.iattr, ptr %191, i32 0, i32 2
  %196 = ptrtoint ptr %ia_uid.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %.unpack46.i = load i32, ptr %ia_uid.i, align 8
  %197 = insertvalue [1 x i32] undef, i32 %.unpack46.i, 0
  %call.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %197) #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %mask.1.i = phi i32 [ %or5.i, %if.then4.i ], [ %mask.0.i, %if.end.i.if.end6.i_crit_edge ]
  %owner.0.i = phi i32 [ %call.i, %if.then4.i ], [ 0, %if.end.i.if.end6.i_crit_edge ]
  %198 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %191, align 8
  %and8.i = and i32 %199, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end6.i.if.end14.i_crit_edge, label %if.then10.i

if.end6.i.if.end14.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %or11.i = or i32 %mask.1.i, 4
  %ia_gid.i = getelementptr inbounds %struct.iattr, ptr %191, i32 0, i32 3
  %200 = ptrtoint ptr %ia_gid.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %.unpack.i = load i32, ptr %ia_gid.i, align 4
  %201 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call13.i = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %201) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %if.end6.i.if.end14.i_crit_edge
  %mask.2.i = phi i32 [ %or11.i, %if.then10.i ], [ %mask.1.i, %if.end6.i.if.end14.i_crit_edge ]
  %group.0.i = phi i32 [ %call13.i, %if.then10.i ], [ 0, %if.end6.i.if.end14.i_crit_edge ]
  %202 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %191, align 8
  %and16.i = and i32 %203, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.xdr_encode_AFS_StoreStatus.exit_crit_edge, label %if.then18.i

if.end14.i.xdr_encode_AFS_StoreStatus.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_encode_AFS_StoreStatus.exit

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %or19.i = or i32 %mask.2.i, 8
  %ia_mode.i = getelementptr inbounds %struct.iattr, ptr %191, i32 0, i32 1
  %204 = ptrtoint ptr %ia_mode.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %ia_mode.i, align 4
  %206 = and i16 %205, 4095
  %and21.i = zext i16 %206 to i32
  br label %xdr_encode_AFS_StoreStatus.exit

xdr_encode_AFS_StoreStatus.exit:                  ; preds = %if.then18.i, %if.end14.i.xdr_encode_AFS_StoreStatus.exit_crit_edge
  %mask.3.i = phi i32 [ %or19.i, %if.then18.i ], [ %mask.2.i, %if.end14.i.xdr_encode_AFS_StoreStatus.exit_crit_edge ]
  %mode.0.i = phi i32 [ %and21.i, %if.then18.i ], [ 0, %if.end14.i.xdr_encode_AFS_StoreStatus.exit_crit_edge ]
  %incdec.ptr.i53 = getelementptr i32, ptr %179, i32 5
  %207 = ptrtoint ptr %incdec.ptr27 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %mask.3.i, ptr %incdec.ptr27, align 4
  %incdec.ptr23.i = getelementptr i32, ptr %179, i32 6
  %208 = ptrtoint ptr %incdec.ptr.i53 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %mtime.0.i, ptr %incdec.ptr.i53, align 4
  %incdec.ptr24.i = getelementptr i32, ptr %179, i32 7
  %209 = ptrtoint ptr %incdec.ptr23.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %owner.0.i, ptr %incdec.ptr23.i, align 4
  %incdec.ptr25.i = getelementptr i32, ptr %179, i32 8
  %210 = ptrtoint ptr %incdec.ptr24.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %group.0.i, ptr %incdec.ptr24.i, align 4
  %incdec.ptr26.i = getelementptr i32, ptr %179, i32 9
  %211 = ptrtoint ptr %incdec.ptr25.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %mode.0.i, ptr %incdec.ptr25.i, align 4
  %212 = ptrtoint ptr %incdec.ptr26.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %incdec.ptr26.i, align 4
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call15, ptr noundef %fid19)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %213 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call15, ptr %call1.i, align 4
  %214 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %call15, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %216 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %215, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call15, i32 0, i32 18
  %217 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %op, ptr %op3.i, align 4
  %key.i54 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %218 = ptrtoint ptr %key.i54 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %key.i54, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call15, i32 0, i32 6
  %220 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %219, ptr %key4.i, align 8
  %flags.i55 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %221 = ptrtoint ptr %flags.i55 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %flags.i55, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call15, i32 0, i32 36
  %223 = trunc i32 %222 to i8
  %224 = lshr i8 %223, 6
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  %227 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call15, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %xdr_encode_AFS_StoreStatus.exit, %if.then17, %xdr_encode_AFS_StoreStatus.exit.i, %if.then48.i, %xdr_encode_AFS_StoreStatus.exit.i.i, %if.then44.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_get_volume_status(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !420

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.17) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %5 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %op, align 8
  %call8 = tail call ptr @afs_alloc_flat_call(ptr noundef %6, ptr noundef nonnull @afs_RXFSGetVolumeStatus, i32 noundef 8, i32 noundef 1025) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %7 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %request = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 10
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 149, ptr %9, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fid, align 8
  %conv = trunc i64 %12 to i32
  %arrayidx13 = getelementptr i32, ptr %9, i32 1
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %arrayidx13, align 4
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call8, ptr noundef %fid)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %14 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8, ptr %call1.i, align 4
  %15 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call8, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %17 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 18
  %18 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %19 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 6
  %21 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 36
  %24 = trunc i32 %23 to i8
  %25 = lshr i8 %24, 6
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call8, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_set_lock(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !420

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.18) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %5 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %op, align 8
  %call8 = tail call ptr @afs_alloc_flat_call(ptr noundef %6, ptr noundef nonnull @afs_RXFSSetLock, i32 noundef 20, i32 noundef 24) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %7 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %request = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 10
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request, align 8
  %incdec.ptr = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 156, ptr %9, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fid, align 8
  %conv = trunc i64 %12 to i32
  %incdec.ptr12 = getelementptr i32, ptr %9, i32 2
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %incdec.ptr, align 4
  %vnode = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %vnode, align 8
  %conv14 = trunc i64 %15 to i32
  %incdec.ptr15 = getelementptr i32, ptr %9, i32 3
  %16 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv14, ptr %incdec.ptr12, align 4
  %unique = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %unique, align 4
  %incdec.ptr17 = getelementptr i32, ptr %9, i32 4
  %19 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %incdec.ptr15, align 4
  %20 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %23 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %incdec.ptr17, align 4
  %24 = load i32, ptr %20, align 8
  tail call fastcc void @trace_afs_make_fs_calli(ptr noundef nonnull %call8, ptr noundef %fid, i32 noundef %24)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %25 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8, ptr %call1.i, align 4
  %26 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call8, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %28 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 18
  %29 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %30 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 6
  %32 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 36
  %35 = trunc i32 %34 to i8
  %36 = lshr i8 %35, 6
  %37 = and i8 %36, 1
  %38 = xor i8 %37, 1
  %39 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call8, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_make_fs_calli(ptr noundef %call, ptr noundef %fid, i32 noundef %i) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_fs_calli, i32 0, i32 1), ptr blockaddress(@trace_afs_make_fs_calli, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !421

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !420

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !433
  %call43 = tail call i32 @__traceiter_afs_make_fs_calli(ptr noundef null, ptr noundef %call, ptr noundef %fid, i32 noundef %i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !434
  %13 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !420

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !424
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_fs_calli, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_fs_calli, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_afs_make_fs_calli.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_afs_make_fs_calli.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 823, ptr noundef nonnull @.str.41) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !425
  %31 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_extend_lock(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !420

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.19) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %5 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %op, align 8
  %call8 = tail call ptr @afs_alloc_flat_call(ptr noundef %6, ptr noundef nonnull @afs_RXFSExtendLock, i32 noundef 16, i32 noundef 24) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %7 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %request = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 10
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request, align 8
  %incdec.ptr = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 157, ptr %9, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fid, align 8
  %conv = trunc i64 %12 to i32
  %incdec.ptr12 = getelementptr i32, ptr %9, i32 2
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %incdec.ptr, align 4
  %vnode = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %vnode, align 8
  %conv14 = trunc i64 %15 to i32
  %incdec.ptr15 = getelementptr i32, ptr %9, i32 3
  %16 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv14, ptr %incdec.ptr12, align 4
  %unique = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %unique, align 4
  %19 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %incdec.ptr15, align 4
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call8, ptr noundef %fid)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %20 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8, ptr %call1.i, align 4
  %21 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call8, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %23 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 18
  %24 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %25 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 6
  %27 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 36
  %30 = trunc i32 %29 to i8
  %31 = lshr i8 %30, 6
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call8, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_release_lock(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !420

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.20) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %5 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %op, align 8
  %call8 = tail call ptr @afs_alloc_flat_call(ptr noundef %6, ptr noundef nonnull @afs_RXFSReleaseLock, i32 noundef 16, i32 noundef 24) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %7 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %request = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 10
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request, align 8
  %incdec.ptr = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 158, ptr %9, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fid, align 8
  %conv = trunc i64 %12 to i32
  %incdec.ptr12 = getelementptr i32, ptr %9, i32 2
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %incdec.ptr, align 4
  %vnode = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %vnode, align 8
  %conv14 = trunc i64 %15 to i32
  %incdec.ptr15 = getelementptr i32, ptr %9, i32 3
  %16 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv14, ptr %incdec.ptr12, align 4
  %unique = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %unique, align 4
  %19 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %incdec.ptr15, align 4
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call8, ptr noundef %fid)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %20 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8, ptr %call1.i, align 4
  %21 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call8, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %23 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 18
  %24 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %25 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 6
  %27 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 36
  %30 = trunc i32 %29 to i8
  %31 = lshr i8 %30, 6
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call8, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_fs_give_up_all_callbacks(ptr noundef %net, ptr noundef %server, ptr noundef %ac, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !420

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.21) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %call8 = tail call ptr @afs_alloc_flat_call(ptr noundef %net, ptr noundef nonnull @afs_RXFSGiveUpAllCallBacks, i32 noundef 4, i32 noundef 0) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end7.cleanup_crit_edge, label %if.end11

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %key12 = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 6
  %5 = ptrtoint ptr %key12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %key, ptr %key12, align 8
  %request = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 10
  %6 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %request, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65539, ptr %7, align 4
  %call13 = tail call ptr @afs_use_server(ptr noundef %server, i32 noundef 11) #9
  %server14 = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 8
  %9 = ptrtoint ptr %server14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call13, ptr %server14, align 8
  tail call void @afs_make_call(ptr noundef %ac, ptr noundef nonnull %call8, i32 noundef 3136) #9
  %call15 = tail call i32 @afs_wait_for_call_to_complete(ptr noundef nonnull %call8, ptr noundef %ac) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end11 ], [ -12, %do.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_use_server(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_make_call(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_wait_for_call_to_complete(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @afs_fs_get_capabilities(ptr noundef %net, ptr noundef %server, ptr noundef %ac, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !420

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.22) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %call8 = tail call ptr @afs_alloc_flat_call(ptr noundef %net, ptr noundef nonnull @afs_RXFSGetCapabilities, i32 noundef 4, i32 noundef 64) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end7.cleanup_crit_edge, label %if.end11

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %key12 = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 6
  %5 = ptrtoint ptr %key12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %key, ptr %key12, align 8
  %call13 = tail call ptr @afs_use_server(ptr noundef %server, i32 noundef 7) #9
  %server14 = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 8
  %6 = ptrtoint ptr %server14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %server14, align 8
  %upgrade = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 34
  %7 = ptrtoint ptr %upgrade to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %upgrade, align 1
  %async = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 33
  %8 = ptrtoint ptr %async to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %async, align 4
  %max_lifespan = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 25
  %9 = ptrtoint ptr %max_lifespan to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3000, ptr %max_lifespan, align 8
  %request = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 10
  %10 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %request, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 65540, ptr %11, align 4
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call8, ptr noundef null)
  tail call void @afs_make_call(ptr noundef %ac, ptr noundef nonnull %call8, i32 noundef 3136) #9
  tail call void @afs_put_call(ptr noundef nonnull %call8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end7.cleanup_crit_edge
  %13 = xor i1 %tobool9.not, true
  ret i1 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_call(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_inline_bulk_status(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %server = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 20
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 8
  %flags = getelementptr inbounds %struct.afs_server, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %error = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -524, ptr %error, align 2
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %6 = load i32, ptr @afs_debug, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.do.end15_crit_edge, label %do.end, !prof !420

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

do.end:                                           ; preds = %do.body
  %7 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 101
  %key = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %11 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %key, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %serial.i = getelementptr inbounds %struct.key, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %14, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %fid = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1
  %15 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fid, align 8
  %vnode = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %vnode, align 8
  %nr_files = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 12
  %19 = ptrtoint ptr %nr_files to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %nr_files, align 8
  %conv = sext i16 %20 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %comm, ptr noundef nonnull @.str.24, i32 noundef %cond.i, i64 noundef %16, i64 noundef %18, i32 noundef %conv) #12
  br label %do.end15

do.end15:                                         ; preds = %key_serial.exit, %do.body.do.end15_crit_edge
  %21 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %op, align 8
  %nr_files16 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 12
  %23 = ptrtoint ptr %nr_files16 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %nr_files16, align 8
  %conv17 = sext i16 %24 to i32
  %add = mul nsw i32 %conv17, 12
  %mul18 = add nsw i32 %add, 8
  %call19 = tail call ptr @afs_alloc_flat_call(ptr noundef %22, ptr noundef nonnull @afs_RXFSInlineBulkStatus, i32 noundef %mul18, i32 noundef 84) #9
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %25 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end22:                                         ; preds = %do.end15
  %request = getelementptr inbounds %struct.afs_call, ptr %call19, i32 0, i32 10
  %26 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %request, align 8
  %incdec.ptr = getelementptr i32, ptr %27, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 65536, ptr %27, align 4
  %29 = ptrtoint ptr %nr_files16 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %nr_files16, align 8
  %conv24 = sext i16 %30 to i32
  %incdec.ptr25 = getelementptr i32, ptr %27, i32 2
  %31 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv24, ptr %incdec.ptr, align 4
  %fid26 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %32 = ptrtoint ptr %fid26 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %fid26, align 8
  %conv28 = trunc i64 %33 to i32
  %incdec.ptr29 = getelementptr i32, ptr %27, i32 3
  %34 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv28, ptr %incdec.ptr25, align 4
  %vnode31 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %vnode31 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %vnode31, align 8
  %conv32 = trunc i64 %36 to i32
  %incdec.ptr33 = getelementptr i32, ptr %27, i32 4
  %37 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv32, ptr %incdec.ptr29, align 4
  %unique = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %unique, align 4
  %incdec.ptr35 = getelementptr i32, ptr %27, i32 5
  %40 = ptrtoint ptr %incdec.ptr33 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %incdec.ptr33, align 4
  %fid36 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1
  %41 = ptrtoint ptr %fid36 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %fid36, align 8
  %conv38 = trunc i64 %42 to i32
  %incdec.ptr39 = getelementptr i32, ptr %27, i32 6
  %43 = ptrtoint ptr %incdec.ptr35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv38, ptr %incdec.ptr35, align 4
  %vnode41 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 1
  %44 = ptrtoint ptr %vnode41 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %vnode41, align 8
  %conv42 = trunc i64 %45 to i32
  %incdec.ptr43 = getelementptr i32, ptr %27, i32 7
  %46 = ptrtoint ptr %incdec.ptr39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv42, ptr %incdec.ptr39, align 4
  %unique45 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 3
  %47 = ptrtoint ptr %unique45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %unique45, align 4
  %49 = ptrtoint ptr %incdec.ptr43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %incdec.ptr43, align 4
  %50 = load i16, ptr %nr_files16, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %50)
  %cmp111 = icmp sgt i16 %50, 2
  br i1 %cmp111, label %for.body.lr.ph, label %if.end22.for.end_crit_edge

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end22
  %incdec.ptr46 = getelementptr i32, ptr %27, i32 8
  %more_files = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %bp.0112 = phi ptr [ %incdec.ptr46, %for.body.lr.ph ], [ %incdec.ptr65, %for.body.for.body_crit_edge ]
  %51 = ptrtoint ptr %more_files to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %more_files, align 8
  %fid51 = getelementptr %struct.afs_vnode_param, ptr %52, i32 %i.0113, i32 1
  %53 = ptrtoint ptr %fid51 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %fid51, align 8
  %conv53 = trunc i64 %54 to i32
  %incdec.ptr54 = getelementptr i32, ptr %bp.0112, i32 1
  %55 = ptrtoint ptr %bp.0112 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv53, ptr %bp.0112, align 4
  %56 = load ptr, ptr %more_files, align 8
  %vnode58 = getelementptr %struct.afs_vnode_param, ptr %56, i32 %i.0113, i32 1, i32 1
  %57 = ptrtoint ptr %vnode58 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %vnode58, align 8
  %conv59 = trunc i64 %58 to i32
  %incdec.ptr60 = getelementptr i32, ptr %bp.0112, i32 2
  %59 = ptrtoint ptr %incdec.ptr54 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv59, ptr %incdec.ptr54, align 4
  %60 = load ptr, ptr %more_files, align 8
  %unique64 = getelementptr %struct.afs_vnode_param, ptr %60, i32 %i.0113, i32 1, i32 3
  %61 = ptrtoint ptr %unique64 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %unique64, align 4
  %incdec.ptr65 = getelementptr i32, ptr %bp.0112, i32 3
  %63 = ptrtoint ptr %incdec.ptr60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %incdec.ptr60, align 4
  %inc = add nuw nsw i32 %i.0113, 1
  %64 = ptrtoint ptr %nr_files16 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %nr_files16, align 8
  %conv48 = sext i16 %65 to i32
  %sub = add nsw i32 %conv48, -2
  %cmp = icmp slt i32 %inc, %sub
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end22.for.end_crit_edge
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call19, ptr noundef %fid36)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %66 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call19, ptr %call1.i, align 4
  %67 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call19, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %69 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call19, i32 0, i32 18
  %70 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %71 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call19, i32 0, i32 6
  %73 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call19, i32 0, i32 36
  %76 = trunc i32 %75 to i8
  %77 = lshr i8 %76, 6
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  %80 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call19, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then21, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_fetch_acl(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !420

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %key = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %5 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %key, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %serial.i = getelementptr inbounds %struct.key, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %8, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fid, align 8
  %vnode = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %vnode, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.25, i32 noundef %cond.i, i64 noundef %10, i64 noundef %12) #12
  br label %do.end9

do.end9:                                          ; preds = %key_serial.exit, %entry.do.end9_crit_edge
  %13 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %op, align 8
  %call10 = tail call ptr @afs_alloc_flat_call(ptr noundef %14, ptr noundef nonnull @afs_RXFSFetchACL, i32 noundef 16, i32 noundef 108) #9
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %15 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %request = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 10
  %16 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %request, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 131, ptr %17, align 4
  %fid15 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %fid15 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %fid15, align 8
  %conv = trunc i64 %20 to i32
  %arrayidx17 = getelementptr i32, ptr %17, i32 1
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %arrayidx17, align 4
  %vnode19 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %vnode19 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vnode19, align 8
  %conv20 = trunc i64 %23 to i32
  %arrayidx21 = getelementptr i32, ptr %17, i32 2
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv20, ptr %arrayidx21, align 4
  %unique = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %unique, align 4
  %arrayidx23 = getelementptr i32, ptr %17, i32 3
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx23, align 4
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call10, ptr noundef %fid15)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %28 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call10, ptr %call1.i, align 4
  %29 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call10, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %31 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 18
  %32 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %33 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 6
  %35 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 36
  %38 = trunc i32 %37 to i8
  %39 = lshr i8 %38, 6
  %40 = and i8 %39, 1
  %41 = xor i8 %40, 1
  %42 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call10, i32 noundef 3264) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_store_acl(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %3 = load i32, ptr @afs_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !420

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %key = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %8 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %key, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %serial.i = getelementptr inbounds %struct.key, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %11, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fid, align 8
  %vnode = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %vnode, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.26, i32 noundef %cond.i, i64 noundef %13, i64 noundef %15) #12
  br label %do.end9

do.end9:                                          ; preds = %key_serial.exit, %entry.do.end9_crit_edge
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %2, align 4
  %sub = add i32 %17, -1
  %or = or i32 %sub, 3
  %add = add i32 %or, 1
  %18 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %op, align 8
  %add11 = add i32 %or, 21
  %call12 = tail call ptr @afs_alloc_flat_call(ptr noundef %19, ptr noundef nonnull @afs_RXFSStoreACL, i32 noundef %add11, i32 noundef 108) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %20 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end15:                                         ; preds = %do.end9
  %request = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 10
  %21 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %request, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 134, ptr %22, align 4
  %fid17 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %24 = ptrtoint ptr %fid17 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %fid17, align 8
  %conv = trunc i64 %25 to i32
  %arrayidx19 = getelementptr i32, ptr %22, i32 1
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv, ptr %arrayidx19, align 4
  %vnode21 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %vnode21 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %vnode21, align 8
  %conv22 = trunc i64 %28 to i32
  %arrayidx23 = getelementptr i32, ptr %22, i32 2
  %29 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv22, ptr %arrayidx23, align 4
  %unique = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %unique, align 4
  %arrayidx25 = getelementptr i32, ptr %22, i32 3
  %32 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx25, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %2, align 4
  %arrayidx27 = getelementptr i32, ptr %22, i32 4
  %35 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr i32, ptr %22, i32 5
  %data = getelementptr inbounds %struct.afs_acl, ptr %2, i32 0, i32 1
  %36 = load i32, ptr %2, align 4
  %37 = call ptr @memcpy(ptr %arrayidx28, ptr %data, i32 %36)
  %38 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %38)
  %cmp.not = icmp eq i32 %add, %38
  br i1 %cmp.not, label %if.end15.if.end38_crit_edge, label %if.then33

if.end15.if.end38_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then33:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %arrayidx28, i32 %38
  %sub37 = sub i32 %add, %38
  %39 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub37)
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end15.if.end38_crit_edge
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call12, ptr noundef %fid17)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %40 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call12, ptr %call1.i, align 4
  %41 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call12, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %43 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 18
  %44 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %45 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 6
  %47 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 36
  %50 = trunc i32 %49 to i8
  %51 = lshr i8 %50, 6
  %52 = and i8 %51, 1
  %53 = xor i8 %52, 1
  %54 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call12, i32 noundef 3264) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then14
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_fs_fetch_status(ptr noundef %call) #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %op1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %op1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op1, align 4
  %2 = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %call1.i = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  %7 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %bp, align 4
  %scb = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 %4, i32 2
  call fastcc void @xdr_decode_AFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %callback.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 %4, i32 2, i32 1
  %8 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bp, align 4
  %incdec.ptr.i = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr.i, align 4
  %reply_time.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 43
  %12 = ptrtoint ptr %reply_time.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %reply_time.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp8.i.i.i = icmp slt i64 %13, 0
  %14 = tail call i64 @llvm.abs.i64(i64 %13, i1 false) #9
  %15 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %14, i32 0) #14, !srcloc !435
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %15, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %15, 1
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %14, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #14, !srcloc !436
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %16, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 29
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv.i.i = zext i32 %11 to i64
  %add.i.i = add nsw i64 %cond213.i.i.i, %conv.i.i
  %17 = ptrtoint ptr %callback.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add.i.i, ptr %callback.i, align 8
  %have_cb.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 %4, i32 2, i32 3
  %18 = ptrtoint ptr %have_cb.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %have_cb.i, align 1
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end.xdr_decode_AFSVolSync.exit_crit_edge, label %if.then.i

if.end.xdr_decode_AFSVolSync.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_AFSVolSync.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr3.i = getelementptr i32, ptr %9, i32 3
  %19 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr3.i, align 4
  %conv.i = zext i32 %20 to i64
  %21 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv.i, ptr %volsync, align 8
  br label %xdr_decode_AFSVolSync.exit

xdr_decode_AFSVolSync.exit:                       ; preds = %if.then.i, %if.end.xdr_decode_AFSVolSync.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %22 = load i32, ptr @afs_debug, align 4
  %and = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %xdr_decode_AFSVolSync.exit.cleanup_crit_edge, label %do.end, !prof !420

xdr_decode_AFSVolSync.exit.cleanup_crit_edge:     ; preds = %xdr_decode_AFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %xdr_decode_AFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  %23 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 101
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm, ptr noundef nonnull @.str.29) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %xdr_decode_AFSVolSync.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %xdr_decode_AFSVolSync.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_flat_call_destructor(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xdr_decode_AFSFetchStatus(ptr nocapture noundef %_bp, ptr noundef %call, ptr nocapture noundef writeonly %scb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_bp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_bp, align 4
  %operation_ID = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 40
  %2 = ptrtoint ptr %operation_ID to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %operation_ID, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %3)
  %cmp = icmp eq i32 %3, 65536
  %abort_code2 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %abort_code2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %abort_code2, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %1, align 1
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.do.end_crit_edge [
    i32 1, label %if.end12
    i32 0, label %land.lhs.true
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.not = icmp eq i32 %5, 0
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %cmp6.not, i1 true, i1 %cmp.not
  br i1 %brmerge, label %land.lhs.true.do.end_crit_edge, label %if.then8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %abort_code9 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 13
  %9 = ptrtoint ptr %abort_code9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %abort_code9, align 8
  %have_error = getelementptr inbounds %struct.afs_status_cb, ptr %scb, i32 0, i32 4
  %10 = ptrtoint ptr %have_error to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %have_error, align 2
  br label %advance

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %7) #12
  br label %bad

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.not = icmp eq i32 %5, 0
  %cmp.not99 = xor i1 %cmp, true
  %brmerge100 = select i1 %cmp13.not, i1 true, i1 %cmp.not99
  br i1 %brmerge100, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %abort_code17 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 13
  %11 = ptrtoint ptr %abort_code17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %abort_code17, align 8
  %have_error18 = getelementptr inbounds %struct.afs_status_cb, ptr %scb, i32 0, i32 4
  %12 = ptrtoint ptr %have_error18 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %have_error18, align 2
  br label %advance

if.end19:                                         ; preds = %if.end12
  %type20 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %type20 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %type20, align 1
  %.off = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %if.end19.bad_crit_edge

if.end19.bad_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

sw.bb:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %type21 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 10
  %15 = ptrtoint ptr %type21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %type21, align 4
  %nlink = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %nlink to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %nlink, align 1
  %nlink22 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 11
  %18 = ptrtoint ptr %nlink22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %nlink22, align 8
  %author = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %author to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %author, align 1
  %conv = zext i32 %20 to i64
  %author23 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 4
  %21 = ptrtoint ptr %author23 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv, ptr %author23, align 8
  %owner = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %owner to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %owner, align 1
  %conv24 = zext i32 %23 to i64
  %owner25 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 5
  %24 = ptrtoint ptr %owner25 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv24, ptr %owner25, align 8
  %caller_access = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %caller_access to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %caller_access, align 1
  %caller_access26 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 7
  %27 = ptrtoint ptr %caller_access26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %caller_access26, align 8
  %anon_access = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %anon_access to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %anon_access, align 1
  %anon_access27 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 8
  %30 = ptrtoint ptr %anon_access27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %anon_access27, align 4
  %mode = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %mode, align 1
  %33 = trunc i32 %32 to i16
  %conv28 = and i16 %33, 4095
  %mode29 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 9
  %34 = ptrtoint ptr %mode29 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv28, ptr %mode29, align 8
  %group = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, ptr %1, i32 0, i32 15
  %35 = ptrtoint ptr %group to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %group, align 1
  %conv30 = zext i32 %36 to i64
  %group31 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 6
  %37 = ptrtoint ptr %group31 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv30, ptr %group31, align 8
  %lock_count = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, ptr %1, i32 0, i32 18
  %38 = ptrtoint ptr %lock_count to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %lock_count, align 1
  %lock_count32 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 12
  %40 = ptrtoint ptr %lock_count32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %lock_count32, align 4
  %mtime_client = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, ptr %1, i32 0, i32 13
  %41 = ptrtoint ptr %mtime_client to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %mtime_client, align 1
  %conv33 = zext i32 %42 to i64
  %mtime_client34 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 2
  %43 = ptrtoint ptr %mtime_client34 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv33, ptr %mtime_client34, align 8
  %tv_nsec = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %tv_nsec, align 8
  %mtime_server = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, ptr %1, i32 0, i32 14
  %45 = ptrtoint ptr %mtime_server to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %mtime_server, align 1
  %conv36 = zext i32 %46 to i64
  %mtime_server37 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 3
  %47 = ptrtoint ptr %mtime_server37 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv36, ptr %mtime_server37, align 8
  %tv_nsec40 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %tv_nsec40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %tv_nsec40, align 8
  %size_lo = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %size_lo to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %size_lo, align 1
  %conv41 = zext i32 %50 to i64
  %size_hi = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, ptr %1, i32 0, i32 19
  %51 = ptrtoint ptr %size_hi to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %size_hi, align 1
  %conv42 = zext i32 %52 to i64
  %shl = shl nuw i64 %conv42, 32
  %or = or i64 %shl, %conv41
  %53 = ptrtoint ptr %scb to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %or, ptr %scb, align 8
  %data_version_lo = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %data_version_lo to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %data_version_lo, align 1
  %conv44 = zext i32 %55 to i64
  %data_version_hi = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, ptr %1, i32 0, i32 17
  %56 = ptrtoint ptr %data_version_hi to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %data_version_hi, align 1
  %conv45 = zext i32 %57 to i64
  %shl46 = shl nuw i64 %conv45, 32
  %or47 = or i64 %shl46, %conv44
  %data_version48 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 1
  %58 = ptrtoint ptr %data_version48 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %or47, ptr %data_version48, align 8
  %have_status = getelementptr inbounds %struct.afs_status_cb, ptr %scb, i32 0, i32 2
  %59 = ptrtoint ptr %have_status to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %have_status, align 8
  br label %advance

advance:                                          ; preds = %bad, %sw.bb, %if.then16, %if.then8
  %60 = ptrtoint ptr %_bp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %_bp, align 4
  %add.ptr = getelementptr i8, ptr %61, i32 84
  store ptr %add.ptr, ptr %_bp, align 4
  ret void

bad:                                              ; preds = %if.end19.bad_crit_edge, %do.end
  %62 = ptrtoint ptr %_bp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %_bp, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #12
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %x.sroa.0.0.copyload.i = load i32, ptr %63, align 4
  %x.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %63, i32 4
  %65 = ptrtoint ptr %x.sroa.7.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %x.sroa.7.0.copyload.i = load i32, ptr %x.sroa.7.0..sroa_idx.i, align 4
  %x.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %63, i32 8
  %66 = ptrtoint ptr %x.sroa.9.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %x.sroa.9.0.copyload.i = load i32, ptr %x.sroa.9.0..sroa_idx.i, align 4
  %x.sroa.11.0..sroa_idx.i = getelementptr inbounds i8, ptr %63, i32 12
  %67 = ptrtoint ptr %x.sroa.11.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %x.sroa.11.0.copyload.i = load i32, ptr %x.sroa.11.0..sroa_idx.i, align 4
  %add.ptr.i = getelementptr i32, ptr %63, i32 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef %x.sroa.0.0.copyload.i, i32 noundef %x.sroa.7.0.copyload.i, i32 noundef %x.sroa.9.0.copyload.i, i32 noundef %x.sroa.11.0.copyload.i) #12
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %x.sroa.0.0.copyload.1.i = load i32, ptr %add.ptr.i, align 4
  %x.sroa.7.0..sroa_idx.1.i = getelementptr i32, ptr %63, i32 5
  %69 = ptrtoint ptr %x.sroa.7.0..sroa_idx.1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %x.sroa.7.0.copyload.1.i = load i32, ptr %x.sroa.7.0..sroa_idx.1.i, align 4
  %x.sroa.9.0..sroa_idx.1.i = getelementptr i32, ptr %63, i32 6
  %70 = ptrtoint ptr %x.sroa.9.0..sroa_idx.1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %x.sroa.9.0.copyload.1.i = load i32, ptr %x.sroa.9.0..sroa_idx.1.i, align 4
  %x.sroa.11.0..sroa_idx.1.i = getelementptr i32, ptr %63, i32 7
  %71 = ptrtoint ptr %x.sroa.11.0..sroa_idx.1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %x.sroa.11.0.copyload.1.i = load i32, ptr %x.sroa.11.0..sroa_idx.1.i, align 4
  %add.ptr.1.i = getelementptr i32, ptr %63, i32 8
  %call8.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 16, i32 noundef %x.sroa.0.0.copyload.1.i, i32 noundef %x.sroa.7.0.copyload.1.i, i32 noundef %x.sroa.9.0.copyload.1.i, i32 noundef %x.sroa.11.0.copyload.1.i) #12
  %72 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %x.sroa.0.0.copyload.2.i = load i32, ptr %add.ptr.1.i, align 4
  %x.sroa.7.0..sroa_idx.2.i = getelementptr i32, ptr %63, i32 9
  %73 = ptrtoint ptr %x.sroa.7.0..sroa_idx.2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %x.sroa.7.0.copyload.2.i = load i32, ptr %x.sroa.7.0..sroa_idx.2.i, align 4
  %x.sroa.9.0..sroa_idx.2.i = getelementptr i32, ptr %63, i32 10
  %74 = ptrtoint ptr %x.sroa.9.0..sroa_idx.2.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %x.sroa.9.0.copyload.2.i = load i32, ptr %x.sroa.9.0..sroa_idx.2.i, align 4
  %x.sroa.11.0..sroa_idx.2.i = getelementptr i32, ptr %63, i32 11
  %75 = ptrtoint ptr %x.sroa.11.0..sroa_idx.2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %x.sroa.11.0.copyload.2.i = load i32, ptr %x.sroa.11.0..sroa_idx.2.i, align 4
  %add.ptr.2.i = getelementptr i32, ptr %63, i32 12
  %call8.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 32, i32 noundef %x.sroa.0.0.copyload.2.i, i32 noundef %x.sroa.7.0.copyload.2.i, i32 noundef %x.sroa.9.0.copyload.2.i, i32 noundef %x.sroa.11.0.copyload.2.i) #12
  %76 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %x.sroa.0.0.copyload.3.i = load i32, ptr %add.ptr.2.i, align 4
  %x.sroa.7.0..sroa_idx.3.i = getelementptr i32, ptr %63, i32 13
  %77 = ptrtoint ptr %x.sroa.7.0..sroa_idx.3.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %x.sroa.7.0.copyload.3.i = load i32, ptr %x.sroa.7.0..sroa_idx.3.i, align 4
  %x.sroa.9.0..sroa_idx.3.i = getelementptr i32, ptr %63, i32 14
  %78 = ptrtoint ptr %x.sroa.9.0..sroa_idx.3.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %x.sroa.9.0.copyload.3.i = load i32, ptr %x.sroa.9.0..sroa_idx.3.i, align 4
  %x.sroa.11.0..sroa_idx.3.i = getelementptr i32, ptr %63, i32 15
  %79 = ptrtoint ptr %x.sroa.11.0..sroa_idx.3.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %x.sroa.11.0.copyload.3.i = load i32, ptr %x.sroa.11.0..sroa_idx.3.i, align 4
  %add.ptr.3.i = getelementptr i32, ptr %63, i32 16
  %call8.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 48, i32 noundef %x.sroa.0.0.copyload.3.i, i32 noundef %x.sroa.7.0.copyload.3.i, i32 noundef %x.sroa.9.0.copyload.3.i, i32 noundef %x.sroa.11.0.copyload.3.i) #12
  %80 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %x.sroa.0.0.copyload.4.i = load i32, ptr %add.ptr.3.i, align 4
  %x.sroa.7.0..sroa_idx.4.i = getelementptr i32, ptr %63, i32 17
  %81 = ptrtoint ptr %x.sroa.7.0..sroa_idx.4.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %x.sroa.7.0.copyload.4.i = load i32, ptr %x.sroa.7.0..sroa_idx.4.i, align 4
  %x.sroa.9.0..sroa_idx.4.i = getelementptr i32, ptr %63, i32 18
  %82 = ptrtoint ptr %x.sroa.9.0..sroa_idx.4.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %x.sroa.9.0.copyload.4.i = load i32, ptr %x.sroa.9.0..sroa_idx.4.i, align 4
  %x.sroa.11.0..sroa_idx.4.i = getelementptr i32, ptr %63, i32 19
  %83 = ptrtoint ptr %x.sroa.11.0..sroa_idx.4.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %x.sroa.11.0.copyload.4.i = load i32, ptr %x.sroa.11.0..sroa_idx.4.i, align 4
  %add.ptr.4.i = getelementptr i32, ptr %63, i32 20
  %call8.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 64, i32 noundef %x.sroa.0.0.copyload.4.i, i32 noundef %x.sroa.7.0.copyload.4.i, i32 noundef %x.sroa.9.0.copyload.4.i, i32 noundef %x.sroa.11.0.copyload.4.i) #12
  %84 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %x.sroa.0.0.copyload19.i = load i32, ptr %add.ptr.4.i, align 4
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %x.sroa.0.0.copyload19.i) #12
  %call49 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 0) #9
  br label %advance
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_extract_data(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_protocol_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_make_fs_call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_fs_fetch_data(ptr noundef %call) #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %op1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %op1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op1, align 4
  %2 = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %5 = load i32, ptr @afs_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !420

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %unmarshall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %10 = ptrtoint ptr %unmarshall to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %unmarshall, align 8
  %conv = zext i8 %11 to i32
  %iov_len = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %12 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iov_len, align 4
  %iter = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iter, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i, align 8
  %actual_len = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 2
  %18 = ptrtoint ptr %actual_len to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %actual_len, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %comm, ptr noundef nonnull @.str.46, i32 noundef %conv, i32 noundef %13, i32 noundef %17, i64 noundef %19) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %unmarshall11 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %20 = ptrtoint ptr %unmarshall11 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %unmarshall11, align 8
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.174)
  switch i8 %21, label %do.end10.do.body174_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %do.end10.do.body19_crit_edge
    i8 2, label %do.end10.do.body86_crit_edge
    i8 3, label %do.end10.do.body128_crit_edge
    i8 4, label %do.end10.sw.bb161_crit_edge
  ]

do.end10.sw.bb161_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb161

do.end10.do.body128_crit_edge:                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body128

do.end10.do.body86_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body86

do.end10.do.body19_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

do.end10.do.body174_crit_edge:                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body174

sw.bb:                                            ; preds = %do.end10
  %actual_len13 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 2
  %23 = ptrtoint ptr %actual_len13 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %actual_len13, align 8
  %24 = ptrtoint ptr %unmarshall11 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %unmarshall11, align 8
  %inc = add i8 %25, 1
  store i8 %inc, ptr %unmarshall11, align 8
  %operation_ID = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 40
  %26 = ptrtoint ptr %operation_ID to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %operation_ID, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %27)
  %cmp = icmp eq i32 %27, 65537
  br i1 %cmp, label %if.then16, label %if.else

if.then16:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %28 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %29 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %iov_len.i, align 4
  %30 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %30, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %30, i32 noundef 1, i32 noundef 8) #9
  br label %do.body19

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %33 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %33, align 8
  %iov_len.i263 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %tmp.i = getelementptr inbounds %struct.anon.151, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %iov_len.i263 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %iov_len.i263, align 4
  %36 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %tmp.i, ptr %36, align 8
  %iov_len2.i.i264 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %iov_len2.i.i264 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %iov_len2.i.i264, align 4
  %def_iter.i.i265 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i265, i32 noundef 0, ptr noundef %36, i32 noundef 1, i32 noundef 4) #9
  br label %do.body19

do.body19:                                        ; preds = %if.else, %if.then16, %do.end10.do.body19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %39 = load i32, ptr @afs_debug, align 4
  %and20 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.do.end40_crit_edge, label %do.end31, !prof !420

do.body19.do.end40_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

do.end31:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %40 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i266 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i266 to ptr
  %task34 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task34, align 8
  %comm35 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 101
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %comm35) #12
  br label %do.end40

do.end40:                                         ; preds = %do.end31, %do.body19.do.end40_crit_edge
  %call41 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end40.cleanup_crit_edge, label %if.end45

do.end40.cleanup_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45:                                         ; preds = %do.end40
  %44 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %44, align 8
  %actual_len46 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 2
  %47 = ptrtoint ptr %actual_len46 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %actual_len46, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %48 = load i32, ptr @afs_debug, align 4
  %and48 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end45.do.end69_crit_edge, label %do.end59, !prof !420

if.end45.do.end69_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end69

do.end59:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %49 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i267 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i267 to ptr
  %task62 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task62 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task62, align 8
  %comm63 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 101
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %comm63, i64 noundef %46) #12
  %53 = ptrtoint ptr %actual_len46 to i32
  call void @__asan_load8_noabort(i32 %53)
  %.pr = load i64, ptr %actual_len46, align 8
  br label %do.end69

do.end69:                                         ; preds = %do.end59, %if.end45.do.end69_crit_edge
  %54 = phi i64 [ %.pr, %do.end59 ], [ %46, %if.end45.do.end69_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %54)
  %cmp71 = icmp eq i64 %54, 0
  br i1 %cmp71, label %do.end69.no_more_data_crit_edge, label %if.end74

do.end69.no_more_data_crit_edge:                  ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_more_data

if.end74:                                         ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #11
  %iter75 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 14
  %55 = ptrtoint ptr %iter75 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iter75, align 8
  %iter76 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %57 = ptrtoint ptr %iter76 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %iter76, align 4
  %58 = ptrtoint ptr %actual_len46 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %actual_len46, align 8
  %len = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 1
  %60 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %len, align 8
  %62 = tail call i64 @llvm.smin.i64(i64 %59, i64 %61)
  %cond.off0 = trunc i64 %62 to i32
  %iov_len82 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %63 = ptrtoint ptr %iov_len82 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %cond.off0, ptr %iov_len82, align 4
  %64 = ptrtoint ptr %unmarshall11 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %unmarshall11, align 8
  %inc84 = add i8 %65, 1
  store i8 %inc84, ptr %unmarshall11, align 8
  br label %do.body86

do.body86:                                        ; preds = %if.end74, %do.end10.do.body86_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %66 = load i32, ptr @afs_debug, align 4
  %and87 = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %do.body86.do.end110_crit_edge, label %do.end98, !prof !420

do.body86.do.end110_crit_edge:                    ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end110

do.end98:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  %67 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i268 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i268 to ptr
  %task101 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task101 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task101, align 8
  %comm102 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 101
  %iter104 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %71 = ptrtoint ptr %iter104 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iter104, align 4
  %count.i269 = getelementptr inbounds %struct.iov_iter, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %count.i269 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %count.i269, align 8
  %actual_len106 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 2
  %75 = ptrtoint ptr %actual_len106 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %actual_len106, align 8
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %comm102, i32 noundef %74, i64 noundef %76) #12
  br label %do.end110

do.end110:                                        ; preds = %do.end98, %do.body86.do.end110_crit_edge
  %call111 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %do.end110.cleanup_crit_edge, label %if.end115

do.end110.cleanup_crit_edge:                      ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end115:                                        ; preds = %do.end110
  %def_iter = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  %iter116 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %77 = ptrtoint ptr %iter116 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %def_iter, ptr %iter116, align 4
  %actual_len117 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 2
  %78 = ptrtoint ptr %actual_len117 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %actual_len117, align 8
  %len118 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 1
  %80 = ptrtoint ptr %len118 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %len118, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %79, i64 %81)
  %cmp119.not = icmp sgt i64 %79, %81
  br i1 %cmp119.not, label %if.end122, label %if.end115.no_more_data_crit_edge

if.end115.no_more_data_crit_edge:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_more_data

if.end122:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i64 %79, %81
  %conv125 = trunc i64 %sub to i32
  %iov_len.i270 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %82 = ptrtoint ptr %iov_len.i270 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv125, ptr %iov_len.i270, align 4
  tail call void @iov_iter_discard(ptr noundef %def_iter, i32 noundef 0, i32 noundef %conv125) #9
  %83 = ptrtoint ptr %unmarshall11 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 3, ptr %unmarshall11, align 8
  br label %do.body128

do.body128:                                       ; preds = %if.end122, %do.end10.do.body128_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %84 = load i32, ptr @afs_debug, align 4
  %and129 = and i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %do.body128.do.end154_crit_edge, label %do.end140, !prof !420

do.body128.do.end154_crit_edge:                   ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end154

do.end140:                                        ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #11
  %85 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i271 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i271 to ptr
  %task143 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %task143 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %task143, align 8
  %comm144 = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 101
  %iter146 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %89 = ptrtoint ptr %iter146 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %iter146, align 4
  %count.i272 = getelementptr inbounds %struct.iov_iter, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %count.i272 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %count.i272, align 8
  %actual_len148 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 2
  %93 = ptrtoint ptr %actual_len148 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %actual_len148, align 8
  %len149 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 1
  %95 = ptrtoint ptr %len149 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %len149, align 8
  %sub150 = sub i64 %94, %96
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %comm144, i32 noundef %92, i64 noundef %sub150) #12
  br label %do.end154

do.end154:                                        ; preds = %do.end140, %do.body128.do.end154_crit_edge
  %call155 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp156 = icmp slt i32 %call155, 0
  br i1 %cmp156, label %do.end154.cleanup_crit_edge, label %do.end154.no_more_data_crit_edge

do.end154.no_more_data_crit_edge:                 ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_more_data

do.end154.cleanup_crit_edge:                      ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

no_more_data:                                     ; preds = %do.end154.no_more_data_crit_edge, %if.end115.no_more_data_crit_edge, %do.end69.no_more_data_crit_edge
  %97 = ptrtoint ptr %unmarshall11 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 4, ptr %unmarshall11, align 8
  %iov_len.i273 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %98 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %buffer.i, align 4
  %100 = ptrtoint ptr %iov_len.i273 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 120, ptr %iov_len.i273, align 4
  %101 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %101, align 8
  %iov_len2.i.i274 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %103 = ptrtoint ptr %iov_len2.i.i274 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 120, ptr %iov_len2.i.i274, align 4
  %def_iter.i.i275 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i275, i32 noundef 0, ptr noundef %101, i32 noundef 1, i32 noundef 120) #9
  br label %sw.bb161

sw.bb161:                                         ; preds = %no_more_data, %do.end10.sw.bb161_crit_edge
  %call162 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %cmp163 = icmp slt i32 %call162, 0
  br i1 %cmp163, label %sw.bb161.cleanup_crit_edge, label %if.end166

sw.bb161.cleanup_crit_edge:                       ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end166:                                        ; preds = %sw.bb161
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %104 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %buffer, align 4
  %106 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %bp, align 4
  %scb = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  call fastcc void @xdr_decode_AFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %callback.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 1
  %107 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bp, align 4
  %incdec.ptr.i = getelementptr i32, ptr %108, i32 1
  %109 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %incdec.ptr.i, align 4
  %reply_time.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 43
  %111 = ptrtoint ptr %reply_time.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %reply_time.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %112)
  %cmp8.i.i.i = icmp slt i64 %112, 0
  %113 = tail call i64 @llvm.abs.i64(i64 %112, i1 false) #9
  %114 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %113, i32 0) #14, !srcloc !435
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %114, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %114, 1
  %115 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %113, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #14, !srcloc !436
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %115, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 29
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv.i.i = zext i32 %110 to i64
  %add.i.i = add nsw i64 %cond213.i.i.i, %conv.i.i
  %116 = ptrtoint ptr %callback.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %add.i.i, ptr %callback.i, align 8
  %incdec.ptr3.i = getelementptr i32, ptr %108, i32 3
  %have_cb.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 3
  %117 = ptrtoint ptr %have_cb.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %have_cb.i, align 1
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %118 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %incdec.ptr3.i, align 4
  %incdec.ptr5.i = getelementptr i32, ptr %108, i32 9
  %120 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %incdec.ptr5.i, ptr %bp, align 4
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end166.xdr_decode_AFSVolSync.exit_crit_edge, label %if.then.i

if.end166.xdr_decode_AFSVolSync.exit_crit_edge:   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_AFSVolSync.exit

if.then.i:                                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i32 %119 to i64
  %121 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %conv.i, ptr %volsync, align 8
  br label %xdr_decode_AFSVolSync.exit

xdr_decode_AFSVolSync.exit:                       ; preds = %if.then.i, %if.end166.xdr_decode_AFSVolSync.exit_crit_edge
  %data_version = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 0, i32 1
  %122 = ptrtoint ptr %data_version to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %data_version, align 8
  %data_version169 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 7
  %124 = ptrtoint ptr %data_version169 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %123, ptr %data_version169, align 8
  %125 = ptrtoint ptr %scb to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %scb, align 8
  %file_size = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 3
  %127 = ptrtoint ptr %file_size to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %126, ptr %file_size, align 8
  %128 = ptrtoint ptr %unmarshall11 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %unmarshall11, align 8
  %inc173 = add i8 %129, 1
  store i8 %inc173, ptr %unmarshall11, align 8
  br label %do.body174

do.body174:                                       ; preds = %xdr_decode_AFSVolSync.exit, %do.end10.do.body174_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %130 = load i32, ptr @afs_debug, align 4
  %and175 = and i32 %130, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %do.body174.cleanup_crit_edge, label %do.end186, !prof !420

do.body174.cleanup_crit_edge:                     ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end186:                                        ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #11
  %131 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i276 = and i32 %131, -16384
  %132 = inttoptr i32 %and.i276 to ptr
  %task189 = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %task189 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %task189, align 8
  %comm190 = getelementptr inbounds %struct.task_struct, ptr %134, i32 0, i32 101
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm190, ptr noundef nonnull @.str.46) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end186, %do.body174.cleanup_crit_edge, %sw.bb161.cleanup_crit_edge, %do.end154.cleanup_crit_edge, %do.end110.cleanup_crit_edge, %do.end40.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %do.end40.cleanup_crit_edge ], [ %call111, %do.end110.cleanup_crit_edge ], [ %call155, %do.end154.cleanup_crit_edge ], [ %call162, %sw.bb161.cleanup_crit_edge ], [ 0, %do.end186 ], [ 0, %do.body174.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_discard(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_fs_create_vnode(ptr noundef %call) #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %op1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %op1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %call1.i = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %fid = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 1
  %incdec.ptr.i = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %conv.i = zext i32 %5 to i64
  %6 = ptrtoint ptr %fid to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv.i, ptr %fid, align 8
  %incdec.ptr1.i = getelementptr i32, ptr %3, i32 2
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %incdec.ptr.i, align 4
  %conv2.i = zext i32 %8 to i64
  %vnode.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 1, i32 1
  %9 = ptrtoint ptr %vnode.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv2.i, ptr %vnode.i, align 8
  %incdec.ptr3.i = getelementptr i32, ptr %3, i32 3
  %10 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr1.i, align 4
  %unique.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 1, i32 3
  %12 = ptrtoint ptr %unique.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %unique.i, align 4
  %13 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %incdec.ptr3.i, ptr %bp, align 4
  %scb = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 2
  call fastcc void @xdr_decode_AFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %scb7 = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  call fastcc void @xdr_decode_AFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb7)
  %callback.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 2, i32 1
  %14 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bp, align 4
  %incdec.ptr.i32 = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %incdec.ptr.i32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr.i32, align 4
  %reply_time.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 43
  %18 = ptrtoint ptr %reply_time.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %reply_time.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp8.i.i.i = icmp slt i64 %19, 0
  %20 = tail call i64 @llvm.abs.i64(i64 %19, i1 false) #9
  %21 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %20, i32 0) #14, !srcloc !435
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %21, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %21, 1
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %20, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #14, !srcloc !436
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %22, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 29
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv.i.i = zext i32 %17 to i64
  %add.i.i = add nsw i64 %cond213.i.i.i, %conv.i.i
  %23 = ptrtoint ptr %callback.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %add.i.i, ptr %callback.i, align 8
  %have_cb.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 2, i32 3
  %24 = ptrtoint ptr %have_cb.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %have_cb.i, align 1
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end.xdr_decode_AFSVolSync.exit_crit_edge, label %if.then.i

if.end.xdr_decode_AFSVolSync.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_AFSVolSync.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr3.i33 = getelementptr i32, ptr %15, i32 3
  %25 = ptrtoint ptr %incdec.ptr3.i33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %incdec.ptr3.i33, align 4
  %conv.i34 = zext i32 %26 to i64
  %27 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv.i34, ptr %volsync, align 8
  br label %xdr_decode_AFSVolSync.exit

xdr_decode_AFSVolSync.exit:                       ; preds = %if.then.i, %if.end.xdr_decode_AFSVolSync.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %28 = load i32, ptr @afs_debug, align 4
  %and = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %xdr_decode_AFSVolSync.exit.cleanup_crit_edge, label %do.end, !prof !420

xdr_decode_AFSVolSync.exit.cleanup_crit_edge:     ; preds = %xdr_decode_AFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %xdr_decode_AFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  %29 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 101
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm, ptr noundef nonnull @.str.63) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %xdr_decode_AFSVolSync.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %xdr_decode_AFSVolSync.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_make_fs_call1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_fs_file_status_and_vol(ptr noundef %call) #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %op1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %op1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %call1.i = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %bp, align 4
  %scb = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  call fastcc void @xdr_decode_AFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end.xdr_decode_AFSVolSync.exit_crit_edge, label %if.then.i

if.end.xdr_decode_AFSVolSync.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_AFSVolSync.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bp, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %conv.i = zext i32 %8 to i64
  %9 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv.i, ptr %volsync, align 8
  br label %xdr_decode_AFSVolSync.exit

xdr_decode_AFSVolSync.exit:                       ; preds = %if.then.i, %if.end.xdr_decode_AFSVolSync.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %10 = load i32, ptr @afs_debug, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %xdr_decode_AFSVolSync.exit.cleanup_crit_edge, label %do.end, !prof !420

xdr_decode_AFSVolSync.exit.cleanup_crit_edge:     ; preds = %xdr_decode_AFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %xdr_decode_AFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 101
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm, ptr noundef nonnull @.str.66) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %xdr_decode_AFSVolSync.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %xdr_decode_AFSVolSync.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_fs_link(ptr noundef %call) #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %op1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %op1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !420

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %unmarshall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %7 = ptrtoint ptr %unmarshall to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %unmarshall, align 8
  %conv = zext i8 %8 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %comm, ptr noundef nonnull @.str.70, i32 noundef %conv) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %call1.i = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %do.end10.cleanup_crit_edge, label %if.end14

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  %11 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %bp, align 4
  %scb = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 2
  call fastcc void @xdr_decode_AFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %scb15 = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  call fastcc void @xdr_decode_AFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb15)
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end14.xdr_decode_AFSVolSync.exit_crit_edge, label %if.then.i

if.end14.xdr_decode_AFSVolSync.exit_crit_edge:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_AFSVolSync.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bp, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %conv.i = zext i32 %15 to i64
  %16 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv.i, ptr %volsync, align 8
  br label %xdr_decode_AFSVolSync.exit

xdr_decode_AFSVolSync.exit:                       ; preds = %if.then.i, %if.end14.xdr_decode_AFSVolSync.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %17 = load i32, ptr @afs_debug, align 4
  %and17 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %xdr_decode_AFSVolSync.exit.cleanup_crit_edge, label %do.end28, !prof !420

xdr_decode_AFSVolSync.exit.cleanup_crit_edge:     ; preds = %xdr_decode_AFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end28:                                         ; preds = %xdr_decode_AFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  %18 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i50 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i50 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task31, align 8
  %comm32 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 101
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm32, ptr noundef nonnull @.str.70) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %xdr_decode_AFSVolSync.exit.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %do.end10.cleanup_crit_edge ], [ 0, %do.end28 ], [ 0, %xdr_decode_AFSVolSync.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_fs_symlink(ptr noundef %call) #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %op1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %op1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !420

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %unmarshall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %7 = ptrtoint ptr %unmarshall to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %unmarshall, align 8
  %conv = zext i8 %8 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %comm, ptr noundef nonnull @.str.74, i32 noundef %conv) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %call1.i = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %do.end10.cleanup_crit_edge, label %if.end14

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  %fid = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 1
  %incdec.ptr.i = getelementptr i32, ptr %10, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %conv.i = zext i32 %12 to i64
  %13 = ptrtoint ptr %fid to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv.i, ptr %fid, align 8
  %incdec.ptr1.i = getelementptr i32, ptr %10, i32 2
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr.i, align 4
  %conv2.i = zext i32 %15 to i64
  %vnode.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %vnode.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv2.i, ptr %vnode.i, align 8
  %incdec.ptr3.i = getelementptr i32, ptr %10, i32 3
  %17 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr1.i, align 4
  %unique.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 1, i32 3
  %19 = ptrtoint ptr %unique.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %unique.i, align 4
  %20 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %incdec.ptr3.i, ptr %bp, align 4
  %scb = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 2
  call fastcc void @xdr_decode_AFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %scb15 = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  call fastcc void @xdr_decode_AFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb15)
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end14.xdr_decode_AFSVolSync.exit_crit_edge, label %if.then.i

if.end14.xdr_decode_AFSVolSync.exit_crit_edge:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_AFSVolSync.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bp, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %conv.i51 = zext i32 %24 to i64
  %25 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv.i51, ptr %volsync, align 8
  br label %xdr_decode_AFSVolSync.exit

xdr_decode_AFSVolSync.exit:                       ; preds = %if.then.i, %if.end14.xdr_decode_AFSVolSync.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %26 = load i32, ptr @afs_debug, align 4
  %and17 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %xdr_decode_AFSVolSync.exit.cleanup_crit_edge, label %do.end28, !prof !420

xdr_decode_AFSVolSync.exit.cleanup_crit_edge:     ; preds = %xdr_decode_AFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end28:                                         ; preds = %xdr_decode_AFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  %27 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i52 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i52 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task31, align 8
  %comm32 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm32, ptr noundef nonnull @.str.74) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %xdr_decode_AFSVolSync.exit.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %do.end10.cleanup_crit_edge ], [ 0, %do.end28 ], [ 0, %xdr_decode_AFSVolSync.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_fs_rename(ptr noundef %call) #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %op1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %op1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %call1.i = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %bp, align 4
  %scb = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  call fastcc void @xdr_decode_AFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %scb5 = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 2
  call fastcc void @xdr_decode_AFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb5)
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end.xdr_decode_AFSVolSync.exit_crit_edge, label %if.then.i

if.end.xdr_decode_AFSVolSync.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_AFSVolSync.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bp, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %conv.i = zext i32 %8 to i64
  %9 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv.i, ptr %volsync, align 8
  br label %xdr_decode_AFSVolSync.exit

xdr_decode_AFSVolSync.exit:                       ; preds = %if.then.i, %if.end.xdr_decode_AFSVolSync.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %10 = load i32, ptr @afs_debug, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %xdr_decode_AFSVolSync.exit.cleanup_crit_edge, label %do.end, !prof !420

xdr_decode_AFSVolSync.exit.cleanup_crit_edge:     ; preds = %xdr_decode_AFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %xdr_decode_AFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 101
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm, ptr noundef nonnull @.str.78) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %xdr_decode_AFSVolSync.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %xdr_decode_AFSVolSync.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_make_fs_call2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_fs_store_data(ptr noundef %call) #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %op1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %op1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !420

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.81) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %call1.i = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %do.end8.cleanup_crit_edge, label %if.end11

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %do.end8
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %9 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %bp, align 4
  %scb = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  call fastcc void @xdr_decode_AFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end11.xdr_decode_AFSVolSync.exit_crit_edge, label %if.then.i

if.end11.xdr_decode_AFSVolSync.exit_crit_edge:    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_AFSVolSync.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bp, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %conv.i = zext i32 %13 to i64
  %14 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv.i, ptr %volsync, align 8
  br label %xdr_decode_AFSVolSync.exit

xdr_decode_AFSVolSync.exit:                       ; preds = %if.then.i, %if.end11.xdr_decode_AFSVolSync.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %15 = load i32, ptr @afs_debug, align 4
  %and13 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %xdr_decode_AFSVolSync.exit.cleanup_crit_edge, label %do.end24, !prof !420

xdr_decode_AFSVolSync.exit.cleanup_crit_edge:     ; preds = %xdr_decode_AFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end24:                                         ; preds = %xdr_decode_AFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i42 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i42 to ptr
  %task27 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task27, align 8
  %comm28 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm28, ptr noundef nonnull @.str.81) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %xdr_decode_AFSVolSync.exit.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %do.end8.cleanup_crit_edge ], [ 0, %do.end24 ], [ 0, %xdr_decode_AFSVolSync.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_fs_get_volume_status(ptr noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %op1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %op1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !420

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %unmarshall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %7 = ptrtoint ptr %unmarshall to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %unmarshall, align 8
  %conv = zext i8 %8 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %comm, ptr noundef nonnull @.str.99, i32 noundef %conv) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %unmarshall9 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %9 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %unmarshall9, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.175)
  switch i8 %10, label %do.end8.do.body329_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %do.end8.do.body13_crit_edge
    i8 2, label %do.end8.sw.bb41_crit_edge
    i8 3, label %do.end8.do.body82_crit_edge
    i8 4, label %do.end8.sw.bb135_crit_edge
    i8 5, label %do.end8.do.body178_crit_edge
    i8 6, label %do.end8.sw.bb232_crit_edge
    i8 7, label %do.end8.do.body275_crit_edge
  ]

do.end8.do.body275_crit_edge:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body275

do.end8.sw.bb232_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb232

do.end8.do.body178_crit_edge:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body178

do.end8.sw.bb135_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb135

do.end8.do.body82_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body82

do.end8.sw.bb41_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb41

do.end8.do.body13_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

do.end8.do.body329_crit_edge:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body329

sw.bb:                                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %unmarshall9, align 8
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %13 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer.i, align 4
  %15 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 48, ptr %iov_len.i, align 4
  %16 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %16, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 48, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %16, i32 noundef 1, i32 noundef 48) #9
  br label %do.body13

do.body13:                                        ; preds = %sw.bb, %do.end8.do.body13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %19 = load i32, ptr @afs_debug, align 4
  %and14 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body13.do.end34_crit_edge, label %do.end25, !prof !420

do.body13.do.end34_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

do.end25:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %20 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i426 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i426 to ptr
  %task28 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task28, align 8
  %comm29 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 101
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %comm29) #12
  br label %do.end34

do.end34:                                         ; preds = %do.end25, %do.body13.do.end34_crit_edge
  %call35 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp = icmp slt i32 %call35, 0
  br i1 %cmp, label %do.end34.cleanup_crit_edge, label %if.end38

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  %26 = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17
  %incdec.ptr.i = getelementptr i32, ptr %25, i32 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %25, align 4
  %conv.i = zext i32 %28 to i64
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv.i, ptr %26, align 8
  %incdec.ptr1.i = getelementptr i32, ptr %25, i32 2
  %30 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %incdec.ptr.i, align 4
  %conv2.i = zext i32 %31 to i64
  %parent_id.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %parent_id.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv2.i, ptr %parent_id.i, align 8
  %incdec.ptr3.i = getelementptr i32, ptr %25, i32 3
  %33 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %incdec.ptr1.i, align 4
  %conv4.i = trunc i32 %34 to i8
  %online.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 2
  %35 = ptrtoint ptr %online.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv4.i, ptr %online.i, align 8
  %incdec.ptr5.i = getelementptr i32, ptr %25, i32 4
  %36 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %incdec.ptr3.i, align 4
  %conv6.i = trunc i32 %37 to i8
  %in_service.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 3
  %38 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv6.i, ptr %in_service.i, align 1
  %incdec.ptr7.i = getelementptr i32, ptr %25, i32 5
  %39 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %incdec.ptr5.i, align 4
  %conv8.i = trunc i32 %40 to i8
  %blessed.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 4
  %41 = ptrtoint ptr %blessed.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv8.i, ptr %blessed.i, align 2
  %incdec.ptr9.i = getelementptr i32, ptr %25, i32 6
  %42 = ptrtoint ptr %incdec.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %incdec.ptr7.i, align 4
  %conv10.i = trunc i32 %43 to i8
  %needs_salvage.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 5
  %44 = ptrtoint ptr %needs_salvage.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv10.i, ptr %needs_salvage.i, align 1
  %incdec.ptr11.i = getelementptr i32, ptr %25, i32 7
  %45 = ptrtoint ptr %incdec.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %incdec.ptr9.i, align 4
  %type.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 6
  %47 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %type.i, align 4
  %incdec.ptr12.i = getelementptr i32, ptr %25, i32 8
  %48 = ptrtoint ptr %incdec.ptr11.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %incdec.ptr11.i, align 4
  %conv13.i = zext i32 %49 to i64
  %min_quota.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 7
  %50 = ptrtoint ptr %min_quota.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv13.i, ptr %min_quota.i, align 8
  %incdec.ptr14.i = getelementptr i32, ptr %25, i32 9
  %51 = ptrtoint ptr %incdec.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %incdec.ptr12.i, align 4
  %conv15.i = zext i32 %52 to i64
  %max_quota.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 8
  %53 = ptrtoint ptr %max_quota.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv15.i, ptr %max_quota.i, align 8
  %incdec.ptr16.i = getelementptr i32, ptr %25, i32 10
  %54 = ptrtoint ptr %incdec.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %incdec.ptr14.i, align 4
  %conv17.i = zext i32 %55 to i64
  %blocks_in_use.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 9
  %56 = ptrtoint ptr %blocks_in_use.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv17.i, ptr %blocks_in_use.i, align 8
  %incdec.ptr18.i = getelementptr i32, ptr %25, i32 11
  %57 = ptrtoint ptr %incdec.ptr16.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %incdec.ptr16.i, align 4
  %conv19.i = zext i32 %58 to i64
  %part_blocks_avail.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 10
  %59 = ptrtoint ptr %part_blocks_avail.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv19.i, ptr %part_blocks_avail.i, align 8
  %60 = ptrtoint ptr %incdec.ptr18.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %incdec.ptr18.i, align 4
  %conv21.i = zext i32 %61 to i64
  %part_max_blocks.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 11
  %62 = ptrtoint ptr %part_max_blocks.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv21.i, ptr %part_max_blocks.i, align 8
  %vol_copy_date.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 12
  %63 = call ptr @memset(ptr %vol_copy_date.i, i32 0, i32 16)
  %64 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %unmarshall9, align 8
  %inc40 = add i8 %65, 1
  store i8 %inc40, ptr %unmarshall9, align 8
  %iov_len.i427 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %66 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i = getelementptr inbounds %struct.anon.151, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %iov_len.i427 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4, ptr %iov_len.i427, align 4
  %68 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %tmp.i, ptr %68, align 8
  %iov_len2.i.i428 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %70 = ptrtoint ptr %iov_len2.i.i428 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 4, ptr %iov_len2.i.i428, align 4
  %def_iter.i.i429 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i429, i32 noundef 0, ptr noundef %68, i32 noundef 1, i32 noundef 4) #9
  br label %sw.bb41

sw.bb41:                                          ; preds = %if.end38, %do.end8.sw.bb41_crit_edge
  %call42 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %sw.bb41.cleanup_crit_edge, label %if.end46

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end46:                                         ; preds = %sw.bb41
  %71 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp47 = getelementptr inbounds %struct.anon.151, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %tmp47 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tmp47, align 4
  %count = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %74 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %75 = load i32, ptr @afs_debug, align 4
  %and49 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end46.do.end70_crit_edge, label %do.end60, !prof !420

if.end46.do.end70_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70

do.end60:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %76 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i430 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i430 to ptr
  %task63 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %task63 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task63, align 8
  %comm64 = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 101
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %comm64, i32 noundef %73) #12
  %80 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pr = load i32, ptr %count, align 4
  br label %do.end70

do.end70:                                         ; preds = %do.end60, %if.end46.do.end70_crit_edge
  %81 = phi i32 [ %.pr, %do.end60 ], [ %73, %if.end46.do.end70_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %81)
  %cmp72 = icmp ugt i32 %81, 255
  br i1 %cmp72, label %if.then74, label %if.end76

if.then74:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #11
  %call75 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 9) #9
  br label %cleanup

if.end76:                                         ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw nsw i32 %81, 3
  %and78 = and i32 %add, -4
  %iov_len.i431 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i432 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %82 = ptrtoint ptr %buffer.i432 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %buffer.i432, align 4
  %84 = ptrtoint ptr %iov_len.i431 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and78, ptr %iov_len.i431, align 4
  %85 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %85, align 8
  %iov_len2.i.i433 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %87 = ptrtoint ptr %iov_len2.i.i433 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and78, ptr %iov_len2.i.i433, align 4
  %def_iter.i.i434 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i434, i32 noundef 0, ptr noundef %85, i32 noundef 1, i32 noundef %and78) #9
  %88 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %unmarshall9, align 8
  %inc80 = add i8 %89, 1
  store i8 %inc80, ptr %unmarshall9, align 8
  br label %do.body82

do.body82:                                        ; preds = %if.end76, %do.end8.do.body82_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %90 = load i32, ptr @afs_debug, align 4
  %and83 = and i32 %90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.body82.do.end103_crit_edge, label %do.end94, !prof !420

do.body82.do.end103_crit_edge:                    ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end103

do.end94:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  %91 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i435 = and i32 %91, -16384
  %92 = inttoptr i32 %and.i435 to ptr
  %task97 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %task97 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task97, align 8
  %comm98 = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 101
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %comm98) #12
  br label %do.end103

do.end103:                                        ; preds = %do.end94, %do.body82.do.end103_crit_edge
  %call104 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %do.end103.cleanup_crit_edge, label %if.end108

do.end103.cleanup_crit_edge:                      ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end108:                                        ; preds = %do.end103
  %buffer109 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %95 = ptrtoint ptr %buffer109 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %buffer109, align 4
  %count110 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %97 = ptrtoint ptr %count110 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %count110, align 4
  %arrayidx = getelementptr i8, ptr %96, i32 %98
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %arrayidx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %100 = load i32, ptr @afs_debug, align 4
  %and112 = and i32 %100, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end108.do.end132_crit_edge, label %do.end123, !prof !420

if.end108.do.end132_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end132

do.end123:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  %101 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i436 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i436 to ptr
  %task126 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task126 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task126, align 8
  %comm127 = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 101
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %comm127, ptr noundef %96) #12
  br label %do.end132

do.end132:                                        ; preds = %do.end123, %if.end108.do.end132_crit_edge
  %iov_len.i437 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %105 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i438 = getelementptr inbounds %struct.anon.151, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %iov_len.i437 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 4, ptr %iov_len.i437, align 4
  %107 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %tmp.i438, ptr %107, align 8
  %iov_len2.i.i439 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %109 = ptrtoint ptr %iov_len2.i.i439 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 4, ptr %iov_len2.i.i439, align 4
  %def_iter.i.i440 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i440, i32 noundef 0, ptr noundef %107, i32 noundef 1, i32 noundef 4) #9
  %110 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %unmarshall9, align 8
  %inc134 = add i8 %111, 1
  store i8 %inc134, ptr %unmarshall9, align 8
  br label %sw.bb135

sw.bb135:                                         ; preds = %do.end132, %do.end8.sw.bb135_crit_edge
  %call136 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %sw.bb135.cleanup_crit_edge, label %if.end140

sw.bb135.cleanup_crit_edge:                       ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end140:                                        ; preds = %sw.bb135
  %112 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp141 = getelementptr inbounds %struct.anon.151, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %tmp141 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tmp141, align 4
  %count142 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %115 = ptrtoint ptr %count142 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %count142, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %116 = load i32, ptr @afs_debug, align 4
  %and144 = and i32 %116, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end140.do.end165_crit_edge, label %do.end155, !prof !420

if.end140.do.end165_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end165

do.end155:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  %117 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i441 = and i32 %117, -16384
  %118 = inttoptr i32 %and.i441 to ptr
  %task158 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %task158 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %task158, align 8
  %comm159 = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 101
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %comm159, i32 noundef %114) #12
  %121 = ptrtoint ptr %count142 to i32
  call void @__asan_load4_noabort(i32 %121)
  %.pr460 = load i32, ptr %count142, align 4
  br label %do.end165

do.end165:                                        ; preds = %do.end155, %if.end140.do.end165_crit_edge
  %122 = phi i32 [ %.pr460, %do.end155 ], [ %114, %if.end140.do.end165_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %122)
  %cmp167 = icmp ugt i32 %122, 255
  br i1 %cmp167, label %if.then169, label %if.end171

if.then169:                                       ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #11
  %call170 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 8) #9
  br label %cleanup

if.end171:                                        ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #11
  %add173 = add nuw nsw i32 %122, 3
  %and174 = and i32 %add173, -4
  %iov_len.i442 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i443 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %123 = ptrtoint ptr %buffer.i443 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %buffer.i443, align 4
  %125 = ptrtoint ptr %iov_len.i442 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %and174, ptr %iov_len.i442, align 4
  %126 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %124, ptr %126, align 8
  %iov_len2.i.i444 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %128 = ptrtoint ptr %iov_len2.i.i444 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %and174, ptr %iov_len2.i.i444, align 4
  %def_iter.i.i445 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i445, i32 noundef 0, ptr noundef %126, i32 noundef 1, i32 noundef %and174) #9
  %129 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %unmarshall9, align 8
  %inc176 = add i8 %130, 1
  store i8 %inc176, ptr %unmarshall9, align 8
  br label %do.body178

do.body178:                                       ; preds = %if.end171, %do.end8.do.body178_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %131 = load i32, ptr @afs_debug, align 4
  %and179 = and i32 %131, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %do.body178.do.end199_crit_edge, label %do.end190, !prof !420

do.body178.do.end199_crit_edge:                   ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end199

do.end190:                                        ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #11
  %132 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i446 = and i32 %132, -16384
  %133 = inttoptr i32 %and.i446 to ptr
  %task193 = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %task193 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %task193, align 8
  %comm194 = getelementptr inbounds %struct.task_struct, ptr %135, i32 0, i32 101
  %call196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %comm194) #12
  br label %do.end199

do.end199:                                        ; preds = %do.end190, %do.body178.do.end199_crit_edge
  %call200 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %cmp201 = icmp slt i32 %call200, 0
  br i1 %cmp201, label %do.end199.cleanup_crit_edge, label %if.end204

do.end199.cleanup_crit_edge:                      ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end204:                                        ; preds = %do.end199
  %buffer205 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %136 = ptrtoint ptr %buffer205 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %buffer205, align 4
  %count206 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %138 = ptrtoint ptr %count206 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %count206, align 4
  %arrayidx207 = getelementptr i8, ptr %137, i32 %139
  %140 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %arrayidx207, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %141 = load i32, ptr @afs_debug, align 4
  %and209 = and i32 %141, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.end204.do.end229_crit_edge, label %do.end220, !prof !420

if.end204.do.end229_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end229

do.end220:                                        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  %142 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i447 = and i32 %142, -16384
  %143 = inttoptr i32 %and.i447 to ptr
  %task223 = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %task223 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %task223, align 8
  %comm224 = getelementptr inbounds %struct.task_struct, ptr %145, i32 0, i32 101
  %call226 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %comm224, ptr noundef %137) #12
  br label %do.end229

do.end229:                                        ; preds = %do.end220, %if.end204.do.end229_crit_edge
  %iov_len.i448 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %146 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i449 = getelementptr inbounds %struct.anon.151, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %iov_len.i448 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 4, ptr %iov_len.i448, align 4
  %148 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %tmp.i449, ptr %148, align 8
  %iov_len2.i.i450 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %150 = ptrtoint ptr %iov_len2.i.i450 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 4, ptr %iov_len2.i.i450, align 4
  %def_iter.i.i451 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i451, i32 noundef 0, ptr noundef %148, i32 noundef 1, i32 noundef 4) #9
  %151 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %unmarshall9, align 8
  %inc231 = add i8 %152, 1
  store i8 %inc231, ptr %unmarshall9, align 8
  br label %sw.bb232

sw.bb232:                                         ; preds = %do.end229, %do.end8.sw.bb232_crit_edge
  %call233 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %cmp234 = icmp slt i32 %call233, 0
  br i1 %cmp234, label %sw.bb232.cleanup_crit_edge, label %if.end237

sw.bb232.cleanup_crit_edge:                       ; preds = %sw.bb232
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end237:                                        ; preds = %sw.bb232
  %153 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp238 = getelementptr inbounds %struct.anon.151, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %tmp238 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %tmp238, align 4
  %count239 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %156 = ptrtoint ptr %count239 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %count239, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %157 = load i32, ptr @afs_debug, align 4
  %and241 = and i32 %157, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241)
  %tobool242.not = icmp eq i32 %and241, 0
  br i1 %tobool242.not, label %if.end237.do.end262_crit_edge, label %do.end252, !prof !420

if.end237.do.end262_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end262

do.end252:                                        ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #11
  %158 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i452 = and i32 %158, -16384
  %159 = inttoptr i32 %and.i452 to ptr
  %task255 = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %task255 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %task255, align 8
  %comm256 = getelementptr inbounds %struct.task_struct, ptr %161, i32 0, i32 101
  %call259 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %comm256, i32 noundef %155) #12
  %162 = ptrtoint ptr %count239 to i32
  call void @__asan_load4_noabort(i32 %162)
  %.pr461 = load i32, ptr %count239, align 4
  br label %do.end262

do.end262:                                        ; preds = %do.end252, %if.end237.do.end262_crit_edge
  %163 = phi i32 [ %.pr461, %do.end252 ], [ %155, %if.end237.do.end262_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %163)
  %cmp264 = icmp ugt i32 %163, 255
  br i1 %cmp264, label %if.then266, label %if.end268

if.then266:                                       ; preds = %do.end262
  call void @__sanitizer_cov_trace_pc() #11
  %call267 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 7) #9
  br label %cleanup

if.end268:                                        ; preds = %do.end262
  call void @__sanitizer_cov_trace_pc() #11
  %add270 = add nuw nsw i32 %163, 3
  %and271 = and i32 %add270, -4
  %iov_len.i453 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i454 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %164 = ptrtoint ptr %buffer.i454 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %buffer.i454, align 4
  %166 = ptrtoint ptr %iov_len.i453 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %and271, ptr %iov_len.i453, align 4
  %167 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %165, ptr %167, align 8
  %iov_len2.i.i455 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %169 = ptrtoint ptr %iov_len2.i.i455 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %and271, ptr %iov_len2.i.i455, align 4
  %def_iter.i.i456 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i456, i32 noundef 0, ptr noundef %167, i32 noundef 1, i32 noundef %and271) #9
  %170 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %unmarshall9, align 8
  %inc273 = add i8 %171, 1
  store i8 %inc273, ptr %unmarshall9, align 8
  br label %do.body275

do.body275:                                       ; preds = %if.end268, %do.end8.do.body275_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %172 = load i32, ptr @afs_debug, align 4
  %and276 = and i32 %172, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and276)
  %tobool277.not = icmp eq i32 %and276, 0
  br i1 %tobool277.not, label %do.body275.do.end296_crit_edge, label %do.end287, !prof !420

do.body275.do.end296_crit_edge:                   ; preds = %do.body275
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end296

do.end287:                                        ; preds = %do.body275
  call void @__sanitizer_cov_trace_pc() #11
  %173 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i457 = and i32 %173, -16384
  %174 = inttoptr i32 %and.i457 to ptr
  %task290 = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %task290 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %task290, align 8
  %comm291 = getelementptr inbounds %struct.task_struct, ptr %176, i32 0, i32 101
  %call293 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %comm291) #12
  br label %do.end296

do.end296:                                        ; preds = %do.end287, %do.body275.do.end296_crit_edge
  %call297 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call297)
  %cmp298 = icmp slt i32 %call297, 0
  br i1 %cmp298, label %do.end296.cleanup_crit_edge, label %if.end301

do.end296.cleanup_crit_edge:                      ; preds = %do.end296
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end301:                                        ; preds = %do.end296
  %buffer302 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %177 = ptrtoint ptr %buffer302 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %buffer302, align 4
  %count303 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %179 = ptrtoint ptr %count303 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %count303, align 4
  %arrayidx304 = getelementptr i8, ptr %178, i32 %180
  %181 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %arrayidx304, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %182 = load i32, ptr @afs_debug, align 4
  %and306 = and i32 %182, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and306)
  %tobool307.not = icmp eq i32 %and306, 0
  br i1 %tobool307.not, label %if.end301.do.end326_crit_edge, label %do.end317, !prof !420

if.end301.do.end326_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end326

do.end317:                                        ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #11
  %183 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i458 = and i32 %183, -16384
  %184 = inttoptr i32 %and.i458 to ptr
  %task320 = getelementptr inbounds %struct.thread_info, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %task320 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %task320, align 8
  %comm321 = getelementptr inbounds %struct.task_struct, ptr %186, i32 0, i32 101
  %call323 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %comm321, ptr noundef %178) #12
  br label %do.end326

do.end326:                                        ; preds = %do.end317, %if.end301.do.end326_crit_edge
  %187 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %unmarshall9, align 8
  %inc328 = add i8 %188, 1
  store i8 %inc328, ptr %unmarshall9, align 8
  br label %do.body329

do.body329:                                       ; preds = %do.end326, %do.end8.do.body329_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %189 = load i32, ptr @afs_debug, align 4
  %and330 = and i32 %189, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and330)
  %tobool331.not = icmp eq i32 %and330, 0
  br i1 %tobool331.not, label %do.body329.cleanup_crit_edge, label %do.end341, !prof !420

do.body329.cleanup_crit_edge:                     ; preds = %do.body329
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end341:                                        ; preds = %do.body329
  call void @__sanitizer_cov_trace_pc() #11
  %190 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i459 = and i32 %190, -16384
  %191 = inttoptr i32 %and.i459 to ptr
  %task344 = getelementptr inbounds %struct.thread_info, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %task344 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %task344, align 8
  %comm345 = getelementptr inbounds %struct.task_struct, ptr %193, i32 0, i32 101
  %call347 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm345, ptr noundef nonnull @.str.99) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end341, %do.body329.cleanup_crit_edge, %do.end296.cleanup_crit_edge, %if.then266, %sw.bb232.cleanup_crit_edge, %do.end199.cleanup_crit_edge, %if.then169, %sw.bb135.cleanup_crit_edge, %do.end103.cleanup_crit_edge, %if.then74, %sw.bb41.cleanup_crit_edge, %do.end34.cleanup_crit_edge
  %retval.0 = phi i32 [ %call267, %if.then266 ], [ %call170, %if.then169 ], [ %call75, %if.then74 ], [ %call35, %do.end34.cleanup_crit_edge ], [ %call42, %sw.bb41.cleanup_crit_edge ], [ %call104, %do.end103.cleanup_crit_edge ], [ %call136, %sw.bb135.cleanup_crit_edge ], [ %call200, %do.end199.cleanup_crit_edge ], [ %call233, %sw.bb232.cleanup_crit_edge ], [ %call297, %do.end296.cleanup_crit_edge ], [ 0, %do.end341 ], [ 0, %do.body329.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_fs_xxxx_lock(ptr noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %op1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %op1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !420

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %unmarshall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %7 = ptrtoint ptr %unmarshall to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %unmarshall, align 8
  %conv = zext i8 %8 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %comm, ptr noundef nonnull @.str.133, i32 noundef %conv) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %call1.i = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %do.end8.cleanup_crit_edge, label %if.end12

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end12.xdr_decode_AFSVolSync.exit_crit_edge, label %if.then.i

if.end12.xdr_decode_AFSVolSync.exit_crit_edge:    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_AFSVolSync.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %conv.i = zext i32 %12 to i64
  %13 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv.i, ptr %volsync, align 8
  br label %xdr_decode_AFSVolSync.exit

xdr_decode_AFSVolSync.exit:                       ; preds = %if.then.i, %if.end12.xdr_decode_AFSVolSync.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %14 = load i32, ptr @afs_debug, align 4
  %and14 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %xdr_decode_AFSVolSync.exit.cleanup_crit_edge, label %do.end25, !prof !420

xdr_decode_AFSVolSync.exit.cleanup_crit_edge:     ; preds = %xdr_decode_AFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end25:                                         ; preds = %xdr_decode_AFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i41 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i41 to ptr
  %task28 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task28, align 8
  %comm29 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 101
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm29, ptr noundef nonnull @.str.133) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %xdr_decode_AFSVolSync.exit.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %do.end8.cleanup_crit_edge ], [ 0, %do.end25 ], [ 0, %xdr_decode_AFSVolSync.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_lock_op_done(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_make_fs_calli(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_fs_give_up_all_callbacks(ptr noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #9
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_fs_get_capabilities(ptr noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !420

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %unmarshall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %5 = ptrtoint ptr %unmarshall to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %unmarshall, align 8
  %conv = zext i8 %6 to i32
  %iter = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iter, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %comm, ptr noundef nonnull @.str.141, i32 noundef %conv, i32 noundef %10) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %unmarshall9 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %11 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %unmarshall9, align 8
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.176)
  switch i8 %12, label %do.end8.do.body43_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %do.end8.sw.bb12_crit_edge
    i8 2, label %do.end8.sw.bb27_crit_edge
    i8 3, label %do.end8.sw.bb35_crit_edge
  ]

do.end8.sw.bb35_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35

do.end8.sw.bb27_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb27

do.end8.sw.bb12_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

do.end8.do.body43_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

sw.bb:                                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %14 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i = getelementptr inbounds %struct.anon.151, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %iov_len.i, align 4
  %16 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tmp.i, ptr %16, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %16, i32 noundef 1, i32 noundef 4) #9
  %19 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %unmarshall9, align 8
  %inc = add i8 %20, 1
  store i8 %inc, ptr %unmarshall9, align 8
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb, %do.end8.sw.bb12_crit_edge
  %call13 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %sw.bb12.cleanup_crit_edge, label %if.end16

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %sw.bb12
  %21 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp17 = getelementptr inbounds %struct.anon.151, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %tmp17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tmp17, align 4
  %count18 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %24 = ptrtoint ptr %count18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %count18, align 4
  %count2 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %25 = ptrtoint ptr %count2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %count2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp19 = icmp eq i32 %23, 0
  br i1 %cmp19, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %unmarshall9, align 8
  %27 = ptrtoint ptr %tmp17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %tmp17, align 4
  br label %do.body43

if.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %iov_len.i92 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %28 = ptrtoint ptr %iov_len.i92 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %iov_len.i92, align 4
  %29 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %tmp17, ptr %29, align 8
  %iov_len2.i.i94 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %iov_len2.i.i94 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %iov_len2.i.i94, align 4
  %def_iter.i.i95 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i95, i32 noundef 0, ptr noundef %29, i32 noundef 1, i32 noundef 4) #9
  %32 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %unmarshall9, align 8
  %inc26 = add i8 %33, 1
  store i8 %inc26, ptr %unmarshall9, align 8
  %phi.bo = shl i32 %23, 2
  %phi.bo91 = add i32 %phi.bo, -4
  br label %sw.bb27

sw.bb27:                                          ; preds = %if.end24, %do.end8.sw.bb27_crit_edge
  %count.0 = phi i32 [ -8, %do.end8.sw.bb27_crit_edge ], [ %phi.bo91, %if.end24 ]
  %call28 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %sw.bb27.cleanup_crit_edge, label %if.end32

sw.bb27.cleanup_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #11
  %iov_len.i96 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %34 = ptrtoint ptr %iov_len.i96 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %count.0, ptr %iov_len.i96, align 4
  %def_iter.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_discard(ptr noundef %def_iter.i, i32 noundef 0, i32 noundef %count.0) #9
  %35 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %unmarshall9, align 8
  %inc34 = add i8 %36, 1
  store i8 %inc34, ptr %unmarshall9, align 8
  br label %sw.bb35

sw.bb35:                                          ; preds = %if.end32, %do.end8.sw.bb35_crit_edge
  %call36 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %sw.bb35.cleanup_crit_edge, label %if.end40

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %unmarshall9, align 8
  %inc42 = add i8 %38, 1
  store i8 %inc42, ptr %unmarshall9, align 8
  br label %do.body43

do.body43:                                        ; preds = %if.end40, %if.then21, %do.end8.do.body43_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %39 = load i32, ptr @afs_debug, align 4
  %and44 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body43.cleanup_crit_edge, label %do.end55, !prof !420

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end55:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %40 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i97 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i97 to ptr
  %task58 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task58 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task58, align 8
  %comm59 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 101
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm59, ptr noundef nonnull @.str.141) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %do.body43.cleanup_crit_edge, %sw.bb35.cleanup_crit_edge, %sw.bb27.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %sw.bb12.cleanup_crit_edge ], [ %call28, %sw.bb27.cleanup_crit_edge ], [ %call36, %sw.bb35.cleanup_crit_edge ], [ 0, %do.end55 ], [ 0, %do.body43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fileserver_probe_result(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_fs_inline_bulk_status(ptr noundef %call) #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %op1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %op1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !420

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %unmarshall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %7 = ptrtoint ptr %unmarshall to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %unmarshall, align 8
  %conv = zext i8 %8 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %comm, ptr noundef nonnull @.str.145, i32 noundef %conv) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %unmarshall10 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %9 = ptrtoint ptr %unmarshall10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %unmarshall10, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.177)
  switch i8 %10, label %do.end9.do.body273_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %do.end9.do.body14_crit_edge
    i8 2, label %do.end9.do.body74_crit_edge
    i8 3, label %do.end9.do.body125_crit_edge
    i8 4, label %do.end9.do.body186_crit_edge
    i8 5, label %do.end9.sw.bb263_crit_edge
  ]

do.end9.sw.bb263_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb263

do.end9.do.body186_crit_edge:                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body186

do.end9.do.body125_crit_edge:                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body125

do.end9.do.body74_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body74

do.end9.do.body14_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

do.end9.do.body273_crit_edge:                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body273

sw.bb:                                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %12 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i = getelementptr inbounds %struct.anon.151, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %iov_len.i, align 4
  %14 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tmp.i, ptr %14, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %14, i32 noundef 1, i32 noundef 4) #9
  %17 = ptrtoint ptr %unmarshall10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %unmarshall10, align 8
  %inc = add i8 %18, 1
  store i8 %inc, ptr %unmarshall10, align 8
  br label %do.body14

do.body14:                                        ; preds = %sw.bb, %do.end9.do.body14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %19 = load i32, ptr @afs_debug, align 4
  %and15 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body14.do.end35_crit_edge, label %do.end26, !prof !420

do.body14.do.end35_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

do.end26:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %20 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i362 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i362 to ptr
  %task29 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task29, align 8
  %comm30 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 101
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef %comm30) #12
  br label %do.end35

do.end35:                                         ; preds = %do.end26, %do.body14.do.end35_crit_edge
  %call36 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp = icmp slt i32 %call36, 0
  br i1 %cmp, label %do.end35.cleanup_crit_edge, label %if.end39

do.end35.cleanup_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %do.end35
  %24 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp40 = getelementptr inbounds %struct.anon.151, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %tmp40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tmp40, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %27 = load i32, ptr @afs_debug, align 4
  %and42 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end39.do.end63_crit_edge, label %do.end53, !prof !420

if.end39.do.end63_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

do.end53:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %28 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i363 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i363 to ptr
  %task56 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task56, align 8
  %comm57 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 101
  %nr_files = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 12
  %32 = ptrtoint ptr %nr_files to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nr_files, align 8
  %conv59 = sext i16 %33 to i32
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %comm57, i32 noundef %26, i32 noundef %conv59) #12
  br label %do.end63

do.end63:                                         ; preds = %do.end53, %if.end39.do.end63_crit_edge
  %nr_files64 = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 12
  %34 = ptrtoint ptr %nr_files64 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %nr_files64, align 8
  %conv65 = sext i16 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv65)
  %cmp66.not = icmp eq i32 %26, %conv65
  br i1 %cmp66.not, label %if.end70, label %if.then68

if.then68:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #11
  %call69 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 6) #9
  br label %cleanup

if.end70:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #11
  %count = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %36 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %count, align 4
  %37 = ptrtoint ptr %unmarshall10 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %unmarshall10, align 8
  %inc72 = add i8 %38, 1
  store i8 %inc72, ptr %unmarshall10, align 8
  br label %more_counts

more_counts:                                      ; preds = %sw.epilog.more_counts_crit_edge, %if.end70
  %iov_len.i364 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %39 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer.i, align 4
  %41 = ptrtoint ptr %iov_len.i364 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 84, ptr %iov_len.i364, align 4
  %42 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %42, align 8
  %iov_len2.i.i365 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %iov_len2.i.i365 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 84, ptr %iov_len2.i.i365, align 4
  %def_iter.i.i366 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i366, i32 noundef 0, ptr noundef %42, i32 noundef 1, i32 noundef 84) #9
  br label %do.body74

do.body74:                                        ; preds = %more_counts, %do.end9.do.body74_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %45 = load i32, ptr @afs_debug, align 4
  %and75 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body74.do.end96_crit_edge, label %do.end86, !prof !420

do.body74.do.end96_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end96

do.end86:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  %46 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i367 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i367 to ptr
  %task89 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task89 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task89, align 8
  %comm90 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 101
  %count92 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %50 = ptrtoint ptr %count92 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %count92, align 4
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef %comm90, i32 noundef %51) #12
  br label %do.end96

do.end96:                                         ; preds = %do.end86, %do.body74.do.end96_crit_edge
  %call97 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %do.end96.cleanup_crit_edge, label %if.end101

do.end96.cleanup_crit_edge:                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end101:                                        ; preds = %do.end96
  %count102 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %52 = ptrtoint ptr %count102 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count102, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %53, label %sw.default [
    i32 0, label %sw.bb103
    i32 1, label %sw.bb105
  ]

sw.bb103:                                         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %scb104 = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %scb108 = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %more_files = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 6
  %55 = ptrtoint ptr %more_files to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %more_files, align 8
  %sub = add i32 %53, -2
  %scb111 = getelementptr %struct.afs_vnode_param, ptr %56, i32 %sub, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb105, %sw.bb103
  %scb.0 = phi ptr [ %scb111, %sw.default ], [ %scb108, %sw.bb105 ], [ %scb104, %sw.bb103 ]
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %57 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buffer, align 4
  %59 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %bp, align 4
  call fastcc void @xdr_decode_AFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb.0)
  %60 = ptrtoint ptr %count102 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %count102, align 4
  %inc113 = add i32 %61, 1
  store i32 %inc113, ptr %count102, align 4
  %nr_files115 = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 12
  %62 = ptrtoint ptr %nr_files115 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %nr_files115, align 8
  %conv116 = sext i16 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc113, i32 %conv116)
  %cmp117 = icmp ult i32 %inc113, %conv116
  br i1 %cmp117, label %sw.epilog.more_counts_crit_edge, label %if.end120

sw.epilog.more_counts_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %more_counts

if.end120:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %count102 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %count102, align 4
  %65 = ptrtoint ptr %unmarshall10 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %unmarshall10, align 8
  %inc123 = add i8 %66, 1
  store i8 %inc123, ptr %unmarshall10, align 8
  %iov_len.i368 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %67 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i369 = getelementptr inbounds %struct.anon.151, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %iov_len.i368 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4, ptr %iov_len.i368, align 4
  %69 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %tmp.i369, ptr %69, align 8
  %iov_len2.i.i370 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %71 = ptrtoint ptr %iov_len2.i.i370 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 4, ptr %iov_len2.i.i370, align 4
  %def_iter.i.i371 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i371, i32 noundef 0, ptr noundef %69, i32 noundef 1, i32 noundef 4) #9
  br label %do.body125

do.body125:                                       ; preds = %if.end120, %do.end9.do.body125_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %72 = load i32, ptr @afs_debug, align 4
  %and126 = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %do.body125.do.end146_crit_edge, label %do.end137, !prof !420

do.body125.do.end146_crit_edge:                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end146

do.end137:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #11
  %73 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i372 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i372 to ptr
  %task140 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task140 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task140, align 8
  %comm141 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 101
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef %comm141) #12
  br label %do.end146

do.end146:                                        ; preds = %do.end137, %do.body125.do.end146_crit_edge
  %call147 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %do.end146.cleanup_crit_edge, label %if.end151

do.end146.cleanup_crit_edge:                      ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end151:                                        ; preds = %do.end146
  %77 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp152 = getelementptr inbounds %struct.anon.151, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %tmp152 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tmp152, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %80 = load i32, ptr @afs_debug, align 4
  %and154 = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end151.do.end174_crit_edge, label %do.end165, !prof !420

if.end151.do.end174_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end174

do.end165:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  %81 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i373 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i373 to ptr
  %task168 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task168 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task168, align 8
  %comm169 = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 101
  %call171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef %comm169, i32 noundef %79) #12
  br label %do.end174

do.end174:                                        ; preds = %do.end165, %if.end151.do.end174_crit_edge
  %nr_files175 = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 12
  %85 = ptrtoint ptr %nr_files175 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %nr_files175, align 8
  %conv176 = sext i16 %86 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %conv176)
  %cmp177.not = icmp eq i32 %79, %conv176
  br i1 %cmp177.not, label %if.end181, label %if.then179

if.then179:                                       ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #11
  %call180 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 5) #9
  br label %cleanup

if.end181:                                        ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #11
  %count182 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %87 = ptrtoint ptr %count182 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %count182, align 4
  %88 = ptrtoint ptr %unmarshall10 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %unmarshall10, align 8
  %inc184 = add i8 %89, 1
  store i8 %inc184, ptr %unmarshall10, align 8
  br label %more_cbs

more_cbs:                                         ; preds = %sw.epilog250.more_cbs_crit_edge, %if.end181
  %iov_len.i374 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i375 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %90 = ptrtoint ptr %buffer.i375 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %buffer.i375, align 4
  %92 = ptrtoint ptr %iov_len.i374 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 12, ptr %iov_len.i374, align 4
  %93 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %93, align 8
  %iov_len2.i.i376 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %95 = ptrtoint ptr %iov_len2.i.i376 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 12, ptr %iov_len2.i.i376, align 4
  %def_iter.i.i377 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i377, i32 noundef 0, ptr noundef %93, i32 noundef 1, i32 noundef 12) #9
  br label %do.body186

do.body186:                                       ; preds = %more_cbs, %do.end9.do.body186_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %96 = load i32, ptr @afs_debug, align 4
  %and187 = and i32 %96, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %do.body186.do.end207_crit_edge, label %do.end198, !prof !420

do.body186.do.end207_crit_edge:                   ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end207

do.end198:                                        ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #11
  %97 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i378 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i378 to ptr
  %task201 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %task201 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task201, align 8
  %comm202 = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 101
  %call204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef %comm202) #12
  br label %do.end207

do.end207:                                        ; preds = %do.end198, %do.body186.do.end207_crit_edge
  %call208 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %cmp209 = icmp slt i32 %call208, 0
  br i1 %cmp209, label %do.end207.cleanup_crit_edge, label %do.body213

do.end207.cleanup_crit_edge:                      ; preds = %do.end207
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body213:                                       ; preds = %do.end207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %101 = load i32, ptr @afs_debug, align 4
  %and214 = and i32 %101, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %do.body213.do.end234_crit_edge, label %do.end225, !prof !420

do.body213.do.end234_crit_edge:                   ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end234

do.end225:                                        ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #11
  %102 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i379 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i379 to ptr
  %task228 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %task228 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task228, align 8
  %comm229 = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 101
  %call231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef %comm229) #12
  br label %do.end234

do.end234:                                        ; preds = %do.end225, %do.body213.do.end234_crit_edge
  %count235 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %106 = ptrtoint ptr %count235 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %count235, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %107, label %sw.default244 [
    i32 0, label %sw.bb236
    i32 1, label %sw.bb240
  ]

sw.bb236:                                         ; preds = %do.end234
  call void @__sanitizer_cov_trace_pc() #11
  %scb239 = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  br label %sw.epilog250

sw.bb240:                                         ; preds = %do.end234
  call void @__sanitizer_cov_trace_pc() #11
  %scb243 = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 2
  br label %sw.epilog250

sw.default244:                                    ; preds = %do.end234
  call void @__sanitizer_cov_trace_pc() #11
  %more_files245 = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 6
  %109 = ptrtoint ptr %more_files245 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %more_files245, align 8
  %sub247 = add i32 %107, -2
  %scb249 = getelementptr %struct.afs_vnode_param, ptr %110, i32 %sub247, i32 2
  br label %sw.epilog250

sw.epilog250:                                     ; preds = %sw.default244, %sw.bb240, %sw.bb236
  %scb.1 = phi ptr [ %scb249, %sw.default244 ], [ %scb243, %sw.bb240 ], [ %scb239, %sw.bb236 ]
  %buffer251 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %111 = ptrtoint ptr %buffer251 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %buffer251, align 4
  %callback.i = getelementptr inbounds %struct.afs_status_cb, ptr %scb.1, i32 0, i32 1
  %incdec.ptr.i = getelementptr i32, ptr %112, i32 1
  %113 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %incdec.ptr.i, align 4
  %reply_time.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 43
  %115 = ptrtoint ptr %reply_time.i.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %reply_time.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %116)
  %cmp8.i.i.i = icmp slt i64 %116, 0
  %117 = tail call i64 @llvm.abs.i64(i64 %116, i1 false) #9
  %118 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %117, i32 0) #14, !srcloc !435
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %118, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %118, 1
  %119 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %117, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #14, !srcloc !436
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %119, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 29
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv.i.i = zext i32 %114 to i64
  %add.i.i = add nsw i64 %cond213.i.i.i, %conv.i.i
  %120 = ptrtoint ptr %callback.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %add.i.i, ptr %callback.i, align 8
  %incdec.ptr3.i = getelementptr i32, ptr %112, i32 3
  %have_cb.i = getelementptr inbounds %struct.afs_status_cb, ptr %scb.1, i32 0, i32 3
  %121 = ptrtoint ptr %have_cb.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %have_cb.i, align 1
  %122 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %incdec.ptr3.i, ptr %bp, align 4
  %123 = ptrtoint ptr %count235 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %count235, align 4
  %inc253 = add i32 %124, 1
  store i32 %inc253, ptr %count235, align 4
  %nr_files255 = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 12
  %125 = ptrtoint ptr %nr_files255 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %nr_files255, align 8
  %conv256 = sext i16 %126 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc253, i32 %conv256)
  %cmp257 = icmp ult i32 %inc253, %conv256
  br i1 %cmp257, label %sw.epilog250.more_cbs_crit_edge, label %if.end260

sw.epilog250.more_cbs_crit_edge:                  ; preds = %sw.epilog250
  call void @__sanitizer_cov_trace_pc() #11
  br label %more_cbs

if.end260:                                        ; preds = %sw.epilog250
  call void @__sanitizer_cov_trace_pc() #11
  %iov_len.i380 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %127 = ptrtoint ptr %buffer251 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %buffer251, align 4
  %129 = ptrtoint ptr %iov_len.i380 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 24, ptr %iov_len.i380, align 4
  %130 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %128, ptr %130, align 8
  %iov_len2.i.i382 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %132 = ptrtoint ptr %iov_len2.i.i382 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 24, ptr %iov_len2.i.i382, align 4
  %def_iter.i.i383 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i383, i32 noundef 0, ptr noundef %130, i32 noundef 1, i32 noundef 24) #9
  %133 = ptrtoint ptr %unmarshall10 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %unmarshall10, align 8
  %inc262 = add i8 %134, 1
  store i8 %inc262, ptr %unmarshall10, align 8
  br label %sw.bb263

sw.bb263:                                         ; preds = %if.end260, %do.end9.sw.bb263_crit_edge
  %call264 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %cmp265 = icmp slt i32 %call264, 0
  br i1 %cmp265, label %sw.bb263.cleanup_crit_edge, label %if.end268

sw.bb263.cleanup_crit_edge:                       ; preds = %sw.bb263
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end268:                                        ; preds = %sw.bb263
  %buffer269 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %135 = ptrtoint ptr %buffer269 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %buffer269, align 4
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 4
  %incdec.ptr5.i = getelementptr i32, ptr %136, i32 6
  %139 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %incdec.ptr5.i, ptr %bp, align 4
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end268.xdr_decode_AFSVolSync.exit_crit_edge, label %if.then.i

if.end268.xdr_decode_AFSVolSync.exit_crit_edge:   ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_AFSVolSync.exit

if.then.i:                                        ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i32 %138 to i64
  %140 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %conv.i, ptr %volsync, align 8
  br label %xdr_decode_AFSVolSync.exit

xdr_decode_AFSVolSync.exit:                       ; preds = %if.then.i, %if.end268.xdr_decode_AFSVolSync.exit_crit_edge
  %141 = ptrtoint ptr %unmarshall10 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %unmarshall10, align 8
  %inc271 = add i8 %142, 1
  store i8 %inc271, ptr %unmarshall10, align 8
  br label %do.body273

do.body273:                                       ; preds = %xdr_decode_AFSVolSync.exit, %do.end9.do.body273_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %143 = load i32, ptr @afs_debug, align 4
  %and274 = and i32 %143, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274)
  %tobool275.not = icmp eq i32 %and274, 0
  br i1 %tobool275.not, label %do.body273.cleanup_crit_edge, label %do.end285, !prof !420

do.body273.cleanup_crit_edge:                     ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end285:                                        ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #11
  %144 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i384 = and i32 %144, -16384
  %145 = inttoptr i32 %and.i384 to ptr
  %task288 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %task288 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %task288, align 8
  %comm289 = getelementptr inbounds %struct.task_struct, ptr %147, i32 0, i32 101
  %call291 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm289, ptr noundef nonnull @.str.145) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end285, %do.body273.cleanup_crit_edge, %sw.bb263.cleanup_crit_edge, %do.end207.cleanup_crit_edge, %if.then179, %do.end146.cleanup_crit_edge, %do.end96.cleanup_crit_edge, %if.then68, %do.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ %call180, %if.then179 ], [ %call69, %if.then68 ], [ %call36, %do.end35.cleanup_crit_edge ], [ %call97, %do.end96.cleanup_crit_edge ], [ %call147, %do.end146.cleanup_crit_edge ], [ %call208, %do.end207.cleanup_crit_edge ], [ %call264, %sw.bb263.cleanup_crit_edge ], [ 0, %do.end285 ], [ 0, %do.body273.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_done_fs_inline_bulk_status(ptr nocapture noundef readonly %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 23
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -103, i32 %1)
  %cmp = icmp eq i32 %1, -103
  br i1 %cmp, label %land.lhs.true, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %abort_code = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 24
  %2 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %abort_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %3)
  %cmp1 = icmp eq i32 %3, -2
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %server = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %server, align 8
  %flags = getelementptr inbounds %struct.afs_server, ptr %5, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flags) #9
  %op = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 18
  %6 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %op, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %volume = getelementptr inbounds %struct.afs_operation, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %volume, align 8
  %flags4 = getelementptr inbounds %struct.afs_volume, ptr %9, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags4) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_fs_fetch_acl(ptr noundef %call) #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %op1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %op1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !420

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %unmarshall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %7 = ptrtoint ptr %unmarshall to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %unmarshall, align 8
  %conv = zext i8 %8 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %comm, ptr noundef nonnull @.str.170, i32 noundef %conv) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %unmarshall9 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %9 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %unmarshall9, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.180)
  switch i8 %10, label %do.end8.do.body44_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %do.end8.sw.bb12_crit_edge
    i8 2, label %do.end8.sw.bb28_crit_edge
    i8 3, label %do.end8.sw.bb36_crit_edge
  ]

do.end8.sw.bb36_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

do.end8.sw.bb28_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb28

do.end8.sw.bb12_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

do.end8.do.body44_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body44

sw.bb:                                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %12 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i = getelementptr inbounds %struct.anon.151, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %iov_len.i, align 4
  %14 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tmp.i, ptr %14, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %14, i32 noundef 1, i32 noundef 4) #9
  %17 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %unmarshall9, align 8
  %inc = add i8 %18, 1
  store i8 %inc, ptr %unmarshall9, align 8
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb, %do.end8.sw.bb12_crit_edge
  %call13 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %sw.bb12.cleanup_crit_edge, label %if.end16

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %sw.bb12
  %19 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp17 = getelementptr inbounds %struct.anon.151, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %tmp17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tmp17, align 4
  %count2 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %22 = ptrtoint ptr %count2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %count2, align 4
  %sub = add i32 %21, -1
  %or = or i32 %sub, 3
  %add = add i32 %or, 1
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %add, i32 4) #9
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 3264) #15
  %tobool20.not = icmp eq ptr %call9.i, null
  br i1 %tobool20.not, label %if.end16.cleanup_crit_edge, label %if.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %23 = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i, ptr %23, align 8
  %25 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count2, align 4
  %27 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %call9.i, align 128
  %data = getelementptr inbounds %struct.afs_acl, ptr %call9.i, i32 0, i32 1
  %iov_len.i100 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %28 = ptrtoint ptr %iov_len.i100 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %iov_len.i100, align 4
  %29 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %data, ptr %29, align 8
  %iov_len2.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %iov_len2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %iov_len2.i, align 4
  %def_iter.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i, i32 noundef 0, ptr noundef %29, i32 noundef 1, i32 noundef %add) #9
  %32 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %unmarshall9, align 8
  %inc27 = add i8 %33, 1
  store i8 %inc27, ptr %unmarshall9, align 8
  br label %sw.bb28

sw.bb28:                                          ; preds = %if.end22, %do.end8.sw.bb28_crit_edge
  %call29 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %sw.bb28.cleanup_crit_edge, label %if.end33

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %iov_len.i101 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %34 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buffer.i, align 4
  %36 = ptrtoint ptr %iov_len.i101 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 108, ptr %iov_len.i101, align 4
  %37 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %37, align 8
  %iov_len2.i.i102 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %iov_len2.i.i102 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 108, ptr %iov_len2.i.i102, align 4
  %def_iter.i.i103 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i103, i32 noundef 0, ptr noundef %37, i32 noundef 1, i32 noundef 108) #9
  %40 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %unmarshall9, align 8
  %inc35 = add i8 %41, 1
  store i8 %inc35, ptr %unmarshall9, align 8
  br label %sw.bb36

sw.bb36:                                          ; preds = %if.end33, %do.end8.sw.bb36_crit_edge
  %call37 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %sw.bb36.cleanup_crit_edge, label %if.end41

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %sw.bb36
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %42 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer, align 4
  %44 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %bp, align 4
  %scb = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  call fastcc void @xdr_decode_AFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %45 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bp, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %incdec.ptr5.i = getelementptr i32, ptr %46, i32 6
  store ptr %incdec.ptr5.i, ptr %bp, align 4
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end41.xdr_decode_AFSVolSync.exit_crit_edge, label %if.then.i104

if.end41.xdr_decode_AFSVolSync.exit_crit_edge:    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_AFSVolSync.exit

if.then.i104:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i32 %48 to i64
  %49 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv.i, ptr %volsync, align 8
  br label %xdr_decode_AFSVolSync.exit

xdr_decode_AFSVolSync.exit:                       ; preds = %if.then.i104, %if.end41.xdr_decode_AFSVolSync.exit_crit_edge
  %50 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %unmarshall9, align 8
  %inc43 = add i8 %51, 1
  store i8 %inc43, ptr %unmarshall9, align 8
  br label %do.body44

do.body44:                                        ; preds = %xdr_decode_AFSVolSync.exit, %do.end8.do.body44_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %52 = load i32, ptr @afs_debug, align 4
  %and45 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body44.cleanup_crit_edge, label %do.end56, !prof !420

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end56:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %53 = tail call i32 @llvm.read_register.i32(metadata !410) #9
  %and.i106 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i106 to ptr
  %task59 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task59 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task59, align 8
  %comm60 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 101
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm60, ptr noundef nonnull @.str.170) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %do.body44.cleanup_crit_edge, %sw.bb36.cleanup_crit_edge, %sw.bb28.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %sw.bb12.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ %call29, %sw.bb28.cleanup_crit_edge ], [ %call37, %sw.bb36.cleanup_crit_edge ], [ 0, %do.end56 ], [ 0, %do.body44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 200)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 200)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !125, !126, !127, !129, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !157, !159, !161, !163, !165, !166, !167, !169, !170, !172, !174, !176, !178, !180, !181, !182, !184, !186, !188, !190, !192, !193, !194, !195, !197, !198, !200, !202, !204, !205, !206, !208, !209, !211, !213, !215, !216, !217, !219, !220, !222, !223, !224, !226, !228, !230, !231, !232, !234, !235, !237, !239, !241, !242, !243, !245, !246, !247, !248, !249, !250, !252, !253, !254, !256, !257, !258, !259, !261, !263, !265, !267, !269, !271, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !320, !322, !324, !325, !326, !328, !329, !331, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !351, !352, !353, !355, !356, !358, !360, !362, !363, !364, !366, !367, !368, !370, !371, !372, !374, !375, !376, !378, !379, !380, !382, !383, !384, !386, !387, !388, !390, !391, !392, !394, !395, !397, !399, !401, !402, !403, !405, !406, !408}
!llvm.named.register.sp = !{!410}
!llvm.module.flags = !{!411, !412, !413, !414, !415, !416, !417, !418}
!llvm.ident = !{!419}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/fsclient.c", i32 278, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_fs_fetch_status._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_fs_fetch_status._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/fsclient.c", i32 462, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @afs_fs_fetch_data._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @afs_fs_fetch_data._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/afs/fsclient.c", i32 531, i32 2}
!13 = !{ptr @afs_fs_create_file._entry, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @afs_fs_create_file._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/afs/fsclient.c", i32 584, i32 2}
!17 = !{ptr @afs_fs_make_dir._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @afs_fs_make_dir._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/afs/fsclient.c", i32 663, i32 2}
!21 = !{ptr @afs_fs_remove_file._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @afs_fs_remove_file._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/afs/fsclient.c", i32 710, i32 2}
!25 = !{ptr @afs_fs_remove_dir._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @afs_fs_remove_dir._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/afs/fsclient.c", i32 788, i32 2}
!29 = !{ptr @afs_fs_link._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @afs_fs_link._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/afs/fsclient.c", i32 868, i32 2}
!33 = !{ptr @afs_fs_symlink._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @afs_fs_symlink._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/afs/fsclient.c", i32 964, i32 2}
!37 = !{ptr @afs_fs_rename._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @afs_fs_rename._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/afs/fsclient.c", i32 1106, i32 2}
!41 = !{ptr @afs_fs_store_data._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @afs_fs_store_data._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/afs/fsclient.c", i32 1109, i32 2}
!45 = !{ptr @afs_fs_store_data._entry.13, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @afs_fs_store_data._entry_ptr.15, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/afs/fsclient.c", i32 1268, i32 2}
!49 = !{ptr @afs_fs_setattr._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @afs_fs_setattr._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/afs/fsclient.c", i32 1437, i32 2}
!53 = !{ptr @afs_fs_get_volume_status._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @afs_fs_get_volume_status._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/afs/fsclient.c", i32 1517, i32 2}
!57 = !{ptr @afs_fs_set_lock._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @afs_fs_set_lock._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/afs/fsclient.c", i32 1544, i32 2}
!61 = !{ptr @afs_fs_extend_lock._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @afs_fs_extend_lock._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/afs/fsclient.c", i32 1570, i32 2}
!65 = !{ptr @afs_fs_release_lock._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @afs_fs_release_lock._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/afs/fsclient.c", i32 1616, i32 2}
!69 = !{ptr @afs_fs_give_up_all_callbacks._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @afs_fs_give_up_all_callbacks._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/afs/fsclient.c", i32 1715, i32 2}
!73 = !{ptr @afs_fs_get_capabilities._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @afs_fs_get_capabilities._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/afs/fsclient.c", i32 1906, i32 2}
!77 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @afs_fs_inline_bulk_status._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @afs_fs_inline_bulk_status._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/afs/fsclient.c", i32 2022, i32 2}
!82 = !{ptr @afs_fs_fetch_acl._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @afs_fs_fetch_acl._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/afs/fsclient.c", i32 2061, i32 2}
!86 = !{ptr @afs_fs_store_acl._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @afs_fs_store_acl._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/afs/fsclient.c", i32 263, i32 11}
!90 = !{ptr @afs_RXFSFetchStatus, !91, !"afs_RXFSFetchStatus", i1 false, i1 false}
!91 = !{!"../fs/afs/fsclient.c", i32 262, i32 35}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/afs/fsclient.c", i32 255, i32 2}
!94 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @afs_deliver_fs_fetch_status._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @afs_deliver_fs_fetch_status._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/afs/fsclient.c", i32 79, i32 3}
!99 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @xdr_decode_AFSFetchStatus._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @xdr_decode_AFSFetchStatus._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/afs/fsclient.c", i32 39, i32 2}
!104 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @xdr_dump_bad._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @xdr_dump_bad._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/afs/fsclient.c", i32 43, i32 3}
!109 = !{ptr @xdr_dump_bad._entry.34, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @xdr_dump_bad._entry_ptr.36, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/afs/fsclient.c", i32 48, i32 2}
!113 = !{ptr @xdr_dump_bad._entry.37, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @xdr_dump_bad._entry_ptr.39, !112, !"_entry_ptr", i1 false, i1 false}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../include/trace/events/afs.h", i32 759, i32 1}
!117 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!118 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!119 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!122 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.43, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/afs/fsclient.c", i32 428, i32 2}
!125 = !{ptr @afs_fs_fetch_data64._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @afs_fs_fetch_data64._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.44, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/afs/fsclient.c", i32 412, i32 11}
!129 = !{ptr @afs_RXFSFetchData64, !130, !"afs_RXFSFetchData64", i1 false, i1 false}
!130 = !{!"../fs/afs/fsclient.c", i32 411, i32 35}
!131 = !{ptr @.str.45, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/afs/fsclient.c", i32 308, i32 2}
!133 = !{ptr @.str.46, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @afs_deliver_fs_fetch_data._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @afs_deliver_fs_fetch_data._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.48, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/afs/fsclient.c", i32 329, i32 3}
!138 = !{ptr @afs_deliver_fs_fetch_data._entry.47, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @afs_deliver_fs_fetch_data._entry_ptr.49, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.51, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/afs/fsclient.c", i32 335, i32 3}
!142 = !{ptr @afs_deliver_fs_fetch_data._entry.50, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @afs_deliver_fs_fetch_data._entry_ptr.52, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/afs/fsclient.c", i32 347, i32 3}
!146 = !{ptr @afs_deliver_fs_fetch_data._entry.53, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @afs_deliver_fs_fetch_data._entry_ptr.55, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.57, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/afs/fsclient.c", i32 364, i32 3}
!150 = !{ptr @afs_deliver_fs_fetch_data._entry.56, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @afs_deliver_fs_fetch_data._entry_ptr.58, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @afs_deliver_fs_fetch_data._entry.59, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../fs/afs/fsclient.c", i32 397, i32 2}
!154 = !{ptr @afs_deliver_fs_fetch_data._entry_ptr.60, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.61, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/afs/fsclient.c", i32 405, i32 11}
!157 = !{ptr @afs_RXFSFetchData, !158, !"afs_RXFSFetchData", i1 false, i1 false}
!158 = !{!"../fs/afs/fsclient.c", i32 404, i32 35}
!159 = !{ptr @.str.62, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/afs/fsclient.c", i32 514, i32 11}
!161 = !{ptr @afs_RXFSCreateFile, !162, !"afs_RXFSCreateFile", i1 false, i1 false}
!162 = !{!"../fs/afs/fsclient.c", i32 513, i32 35}
!163 = !{ptr @.str.63, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/afs/fsclient.c", i32 506, i32 2}
!165 = !{ptr @afs_deliver_fs_create_vnode._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @afs_deliver_fs_create_vnode._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = distinct !{null, !168, !"__already_done", i1 false, i1 false}
!168 = !{!"../include/trace/events/afs.h", i32 825, i32 1}
!169 = distinct !{null, !168, !"__warned", i1 false, i1 false}
!170 = !{ptr @.str.64, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/afs/fsclient.c", i32 567, i32 11}
!172 = !{ptr @afs_RXFSMakeDir, !173, !"afs_RXFSMakeDir", i1 false, i1 false}
!173 = !{!"../fs/afs/fsclient.c", i32 566, i32 35}
!174 = !{ptr @.str.65, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/afs/fsclient.c", i32 646, i32 11}
!176 = !{ptr @afs_RXFSRemoveFile, !177, !"afs_RXFSRemoveFile", i1 false, i1 false}
!177 = !{!"../fs/afs/fsclient.c", i32 645, i32 35}
!178 = !{ptr @.str.66, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/afs/fsclient.c", i32 638, i32 2}
!180 = !{ptr @afs_deliver_fs_file_status_and_vol._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @afs_deliver_fs_file_status_and_vol._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.67, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/afs/fsclient.c", i32 693, i32 11}
!184 = !{ptr @afs_RXFSRemoveDir, !185, !"afs_RXFSRemoveDir", i1 false, i1 false}
!185 = !{!"../fs/afs/fsclient.c", i32 692, i32 35}
!186 = !{ptr @.str.68, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/afs/fsclient.c", i32 770, i32 11}
!188 = !{ptr @afs_RXFSLink, !189, !"afs_RXFSLink", i1 false, i1 false}
!189 = !{!"../fs/afs/fsclient.c", i32 769, i32 35}
!190 = !{ptr @.str.69, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/afs/fsclient.c", i32 750, i32 2}
!192 = !{ptr @.str.70, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @afs_deliver_fs_link._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @afs_deliver_fs_link._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @afs_deliver_fs_link._entry.71, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../fs/afs/fsclient.c", i32 762, i32 2}
!197 = !{ptr @afs_deliver_fs_link._entry_ptr.72, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.73, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/afs/fsclient.c", i32 851, i32 11}
!200 = !{ptr @afs_RXFSSymlink, !201, !"afs_RXFSSymlink", i1 false, i1 false}
!201 = !{!"../fs/afs/fsclient.c", i32 850, i32 35}
!202 = !{ptr @.str.74, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/afs/fsclient.c", i32 830, i32 2}
!204 = !{ptr @afs_deliver_fs_symlink._entry, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @afs_deliver_fs_symlink._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @afs_deliver_fs_symlink._entry.75, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../fs/afs/fsclient.c", i32 843, i32 2}
!208 = !{ptr @afs_deliver_fs_symlink._entry_ptr.76, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.77, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/afs/fsclient.c", i32 945, i32 11}
!211 = !{ptr @afs_RXFSRename, !212, !"afs_RXFSRename", i1 false, i1 false}
!212 = !{!"../fs/afs/fsclient.c", i32 944, i32 35}
!213 = !{ptr @.str.78, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/afs/fsclient.c", i32 937, i32 2}
!215 = !{ptr @afs_deliver_fs_rename._entry, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @afs_deliver_fs_rename._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!217 = distinct !{null, !218, !"__already_done", i1 false, i1 false}
!218 = !{!"../include/trace/events/afs.h", i32 862, i32 1}
!219 = distinct !{null, !218, !"__warned", i1 false, i1 false}
!220 = !{ptr @.str.79, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/afs/fsclient.c", i32 1061, i32 2}
!222 = !{ptr @afs_fs_store_data64._entry, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @afs_fs_store_data64._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.80, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/afs/fsclient.c", i32 1046, i32 11}
!226 = !{ptr @afs_RXFSStoreData64, !227, !"afs_RXFSStoreData64", i1 false, i1 false}
!227 = !{!"../fs/afs/fsclient.c", i32 1045, i32 35}
!228 = !{ptr @.str.81, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../fs/afs/fsclient.c", i32 1020, i32 2}
!230 = !{ptr @afs_deliver_fs_store_data._entry, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @afs_deliver_fs_store_data._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @afs_deliver_fs_store_data._entry.82, !233, !"_entry", i1 false, i1 false}
!233 = !{!"../fs/afs/fsclient.c", i32 1031, i32 2}
!234 = !{ptr @afs_deliver_fs_store_data._entry_ptr.83, !233, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.84, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/afs/fsclient.c", i32 1039, i32 11}
!237 = !{ptr @afs_RXFSStoreData, !238, !"afs_RXFSStoreData", i1 false, i1 false}
!238 = !{!"../fs/afs/fsclient.c", i32 1038, i32 35}
!239 = !{ptr @.str.85, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/afs/fsclient.c", i32 1224, i32 2}
!241 = !{ptr @afs_fs_setattr_size._entry, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @afs_fs_setattr_size._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.87, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/afs/fsclient.c", i32 1227, i32 2}
!245 = !{ptr @afs_fs_setattr_size._entry.86, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @afs_fs_setattr_size._entry_ptr.88, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.90, !244, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @afs_fs_setattr_size._entry.89, !244, !"_entry", i1 false, i1 false}
!249 = !{ptr @afs_fs_setattr_size._entry_ptr.91, !244, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.92, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../fs/afs/fsclient.c", i32 1182, i32 2}
!252 = !{ptr @afs_fs_setattr_size64._entry, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @afs_fs_setattr_size64._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @afs_fs_setattr_size64._entry.93, !255, !"_entry", i1 false, i1 false}
!255 = !{!"../fs/afs/fsclient.c", i32 1185, i32 2}
!256 = !{ptr @afs_fs_setattr_size64._entry_ptr.94, !255, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @afs_fs_setattr_size64._entry.95, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @afs_fs_setattr_size64._entry_ptr.96, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @afs_RXFSStoreData64_as_Status, !260, !"afs_RXFSStoreData64_as_Status", i1 false, i1 false}
!260 = !{!"../fs/afs/fsclient.c", i32 1164, i32 35}
!261 = !{ptr @afs_RXFSStoreData_as_Status, !262, !"afs_RXFSStoreData_as_Status", i1 false, i1 false}
!262 = !{!"../fs/afs/fsclient.c", i32 1157, i32 35}
!263 = !{ptr @.str.97, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../fs/afs/fsclient.c", i32 1151, i32 11}
!265 = !{ptr @afs_RXFSStoreStatus, !266, !"afs_RXFSStoreStatus", i1 false, i1 false}
!266 = !{!"../fs/afs/fsclient.c", i32 1150, i32 35}
!267 = !{ptr @.str.98, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../fs/afs/fsclient.c", i32 1422, i32 11}
!269 = !{ptr @afs_RXFSGetVolumeStatus, !270, !"afs_RXFSGetVolumeStatus", i1 false, i1 false}
!270 = !{!"../fs/afs/fsclient.c", i32 1421, i32 35}
!271 = !{ptr @.str.99, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../fs/afs/fsclient.c", i32 1301, i32 2}
!273 = !{ptr @afs_deliver_fs_get_volume_status._entry, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @afs_deliver_fs_get_volume_status._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.101, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../fs/afs/fsclient.c", i32 1311, i32 3}
!277 = !{ptr @afs_deliver_fs_get_volume_status._entry.100, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @afs_deliver_fs_get_volume_status._entry_ptr.102, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.104, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../fs/afs/fsclient.c", i32 1329, i32 3}
!281 = !{ptr @afs_deliver_fs_get_volume_status._entry.103, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @afs_deliver_fs_get_volume_status._entry_ptr.105, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.107, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../fs/afs/fsclient.c", i32 1339, i32 3}
!285 = !{ptr @afs_deliver_fs_get_volume_status._entry.106, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @afs_deliver_fs_get_volume_status._entry_ptr.108, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.110, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../fs/afs/fsclient.c", i32 1346, i32 3}
!289 = !{ptr @afs_deliver_fs_get_volume_status._entry.109, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @afs_deliver_fs_get_volume_status._entry_ptr.111, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.113, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../fs/afs/fsclient.c", i32 1358, i32 3}
!293 = !{ptr @afs_deliver_fs_get_volume_status._entry.112, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @afs_deliver_fs_get_volume_status._entry_ptr.114, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.116, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../fs/afs/fsclient.c", i32 1368, i32 3}
!297 = !{ptr @afs_deliver_fs_get_volume_status._entry.115, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @afs_deliver_fs_get_volume_status._entry_ptr.117, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.119, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../fs/afs/fsclient.c", i32 1375, i32 3}
!301 = !{ptr @afs_deliver_fs_get_volume_status._entry.118, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @afs_deliver_fs_get_volume_status._entry_ptr.120, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.122, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../fs/afs/fsclient.c", i32 1388, i32 3}
!305 = !{ptr @afs_deliver_fs_get_volume_status._entry.121, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @afs_deliver_fs_get_volume_status._entry_ptr.123, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.125, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../fs/afs/fsclient.c", i32 1398, i32 3}
!309 = !{ptr @afs_deliver_fs_get_volume_status._entry.124, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @afs_deliver_fs_get_volume_status._entry_ptr.126, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.128, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../fs/afs/fsclient.c", i32 1405, i32 3}
!313 = !{ptr @afs_deliver_fs_get_volume_status._entry.127, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @afs_deliver_fs_get_volume_status._entry_ptr.129, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @afs_deliver_fs_get_volume_status._entry.130, !316, !"_entry", i1 false, i1 false}
!316 = !{!"../fs/afs/fsclient.c", i32 1414, i32 2}
!317 = !{ptr @afs_deliver_fs_get_volume_status._entry_ptr.131, !316, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.132, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../fs/afs/fsclient.c", i32 1480, i32 11}
!320 = !{ptr @afs_RXFSSetLock, !321, !"afs_RXFSSetLock", i1 false, i1 false}
!321 = !{!"../fs/afs/fsclient.c", i32 1479, i32 35}
!322 = !{ptr @.str.133, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../fs/afs/fsclient.c", i32 1462, i32 2}
!324 = !{ptr @afs_deliver_fs_xxxx_lock._entry, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @afs_deliver_fs_xxxx_lock._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @afs_deliver_fs_xxxx_lock._entry.134, !327, !"_entry", i1 false, i1 false}
!327 = !{!"../fs/afs/fsclient.c", i32 1472, i32 2}
!328 = !{ptr @afs_deliver_fs_xxxx_lock._entry_ptr.135, !327, !"_entry_ptr", i1 false, i1 false}
!329 = distinct !{null, !330, !"__already_done", i1 false, i1 false}
!330 = !{!"../include/trace/events/afs.h", i32 790, i32 1}
!331 = distinct !{null, !330, !"__warned", i1 false, i1 false}
!332 = !{ptr @.str.136, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../fs/afs/fsclient.c", i32 1491, i32 11}
!334 = !{ptr @afs_RXFSExtendLock, !335, !"afs_RXFSExtendLock", i1 false, i1 false}
!335 = !{!"../fs/afs/fsclient.c", i32 1490, i32 35}
!336 = !{ptr @.str.137, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../fs/afs/fsclient.c", i32 1502, i32 11}
!338 = !{ptr @afs_RXFSReleaseLock, !339, !"afs_RXFSReleaseLock", i1 false, i1 false}
!339 = !{!"../fs/afs/fsclient.c", i32 1501, i32 35}
!340 = !{ptr @.str.138, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../fs/afs/fsclient.c", i32 1599, i32 11}
!342 = !{ptr @afs_RXFSGiveUpAllCallBacks, !343, !"afs_RXFSGiveUpAllCallBacks", i1 false, i1 false}
!343 = !{!"../fs/afs/fsclient.c", i32 1598, i32 35}
!344 = !{ptr @.str.139, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../fs/afs/fsclient.c", i32 1696, i32 11}
!346 = !{ptr @afs_RXFSGetCapabilities, !347, !"afs_RXFSGetCapabilities", i1 false, i1 false}
!347 = !{!"../fs/afs/fsclient.c", i32 1695, i32 35}
!348 = !{ptr @.str.140, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../fs/afs/fsclient.c", i32 1641, i32 2}
!350 = !{ptr @.str.141, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @afs_deliver_fs_get_capabilities._entry, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @afs_deliver_fs_get_capabilities._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @afs_deliver_fs_get_capabilities._entry.142, !354, !"_entry", i1 false, i1 false}
!354 = !{!"../fs/afs/fsclient.c", i32 1688, i32 2}
!355 = !{ptr @afs_deliver_fs_get_capabilities._entry_ptr.143, !354, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.144, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../fs/afs/fsclient.c", i32 1883, i32 11}
!358 = !{ptr @afs_RXFSInlineBulkStatus, !359, !"afs_RXFSInlineBulkStatus", i1 false, i1 false}
!359 = !{!"../fs/afs/fsclient.c", i32 1882, i32 35}
!360 = !{ptr @.str.145, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../fs/afs/fsclient.c", i32 1748, i32 2}
!362 = !{ptr @afs_deliver_fs_inline_bulk_status._entry, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @afs_deliver_fs_inline_bulk_status._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.147, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../fs/afs/fsclient.c", i32 1758, i32 3}
!366 = !{ptr @afs_deliver_fs_inline_bulk_status._entry.146, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @afs_deliver_fs_inline_bulk_status._entry_ptr.148, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.150, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../fs/afs/fsclient.c", i32 1764, i32 3}
!370 = !{ptr @afs_deliver_fs_inline_bulk_status._entry.149, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @afs_deliver_fs_inline_bulk_status._entry_ptr.151, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.153, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../fs/afs/fsclient.c", i32 1775, i32 3}
!374 = !{ptr @afs_deliver_fs_inline_bulk_status._entry.152, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @afs_deliver_fs_inline_bulk_status._entry_ptr.154, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.156, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../fs/afs/fsclient.c", i32 1806, i32 3}
!378 = !{ptr @afs_deliver_fs_inline_bulk_status._entry.155, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @afs_deliver_fs_inline_bulk_status._entry_ptr.157, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.159, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../fs/afs/fsclient.c", i32 1812, i32 3}
!382 = !{ptr @afs_deliver_fs_inline_bulk_status._entry.158, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @afs_deliver_fs_inline_bulk_status._entry_ptr.160, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.162, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../fs/afs/fsclient.c", i32 1822, i32 3}
!386 = !{ptr @afs_deliver_fs_inline_bulk_status._entry.161, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @afs_deliver_fs_inline_bulk_status._entry_ptr.163, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.165, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../fs/afs/fsclient.c", i32 1827, i32 3}
!390 = !{ptr @afs_deliver_fs_inline_bulk_status._entry.164, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @afs_deliver_fs_inline_bulk_status._entry_ptr.166, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @afs_deliver_fs_inline_bulk_status._entry.167, !393, !"_entry", i1 false, i1 false}
!393 = !{!"../fs/afs/fsclient.c", i32 1865, i32 2}
!394 = !{ptr @afs_deliver_fs_inline_bulk_status._entry_ptr.168, !393, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.169, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../fs/afs/fsclient.c", i32 2008, i32 11}
!397 = !{ptr @afs_RXFSFetchACL, !398, !"afs_RXFSFetchACL", i1 false, i1 false}
!398 = !{!"../fs/afs/fsclient.c", i32 2007, i32 35}
!399 = !{ptr @.str.170, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../fs/afs/fsclient.c", i32 1947, i32 2}
!401 = !{ptr @afs_deliver_fs_fetch_acl._entry, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @afs_deliver_fs_fetch_acl._entry_ptr, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @afs_deliver_fs_fetch_acl._entry.171, !404, !"_entry", i1 false, i1 false}
!404 = !{!"../fs/afs/fsclient.c", i32 2000, i32 2}
!405 = !{ptr @afs_deliver_fs_fetch_acl._entry_ptr.172, !404, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.173, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../fs/afs/fsclient.c", i32 2044, i32 11}
!408 = !{ptr @afs_RXFSStoreACL, !409, !"afs_RXFSStoreACL", i1 false, i1 false}
!409 = !{!"../fs/afs/fsclient.c", i32 2043, i32 35}
!410 = !{!"sp"}
!411 = !{i32 1, !"wchar_size", i32 2}
!412 = !{i32 1, !"min_enum_size", i32 4}
!413 = !{i32 8, !"branch-target-enforcement", i32 0}
!414 = !{i32 8, !"sign-return-address", i32 0}
!415 = !{i32 8, !"sign-return-address-all", i32 0}
!416 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!417 = !{i32 7, !"uwtable", i32 1}
!418 = !{i32 7, !"frame-pointer", i32 2}
!419 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!420 = !{!"branch_weights", i32 2000, i32 1}
!421 = !{i64 2148248230, i64 2148248235, i64 2148248248, i64 2148248292, i64 2148248326, i64 2148248347}
!422 = !{i64 2157323180}
!423 = !{i64 2157323393}
!424 = !{i64 2149972934}
!425 = !{i64 2149973970}
!426 = !{i64 2157361570}
!427 = !{i64 2157361797}
!428 = !{i64 2157379342}
!429 = !{i64 2157379583}
!430 = !{!"branch_weights", i32 1, i32 2000}
!431 = !{i64 2157932090, i64 2157932573, i64 2157932127, i64 2157932183, i64 2157932217, i64 2157932241, i64 2157932282, i64 2157932303, i64 2157932331, i64 2157932365}
!432 = !{i64 2157924132, i64 2157924615, i64 2157924169, i64 2157924225, i64 2157924259, i64 2157924283, i64 2157924324, i64 2157924345, i64 2157924373, i64 2157924407}
!433 = !{i64 2157340206}
!434 = !{i64 2157340427}
!435 = !{i64 991745, i64 991772, i64 991794, i64 991822}
!436 = !{i64 992153, i64 992180, i64 992213, i64 992234, i64 992261, i64 992287}
