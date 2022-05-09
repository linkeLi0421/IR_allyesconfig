; ModuleID = '/llk/IR_all_yes/fs/afs/yfsclient.c_pt.bc'
source_filename = "../fs/afs/yfsclient.c"
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
%struct.afs_read = type { i64, i64, i64, i64, ptr, ptr, ptr, i64, %struct.refcount_struct, i32, i32, i32, ptr, ptr, ptr, %struct.iov_iter }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.79 }
%union.anon.20 = type { ptr }
%union.anon.79 = type { i64 }
%struct.afs_call = type { ptr, ptr, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.iov_iter, ptr, ptr, %union.anon.148, ptr, %union.anon.149, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, %union.anon.150, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.148 = type { [1 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.149 = type { i32 }
%union.anon.150 = type { i64 }
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
%struct.yfs_xdr_YFSStoreStatus = type { i32, i32, %struct.yfs_xdr_u64, %struct.yfs_xdr_u64, %struct.yfs_xdr_u64 }
%struct.yfs_xdr_u64 = type { i32, i32 }
%struct.afs_server = type { %struct.callback_head, %union.anon.143, ptr, ptr, %struct.rb_node, ptr, ptr, %struct.list_head, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.work_struct, ptr, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.rwlock_t, i32, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.147 }
%union.anon.143 = type { %struct.afs_uuid }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.147 = type { i32, i32, i16, i8 }
%struct.yfs_xdr_YFSFid = type { %struct.yfs_xdr_u64, %struct.yfs_xdr_vnode }
%struct.yfs_xdr_vnode = type { %struct.yfs_xdr_u64, i32, i32 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.yfs_acl = type { ptr, ptr, i32, i32, i32 }
%struct.afs_acl = type { i32, [0 x i8] }
%struct.yfs_xdr_YFSCallBack = type { i32, %struct.yfs_xdr_u64, i32 }
%struct.yfs_xdr_YFSFetchStatus = type { i32, i32, %struct.yfs_xdr_u64, %struct.yfs_xdr_u64, %struct.yfs_xdr_u64, %struct.yfs_xdr_u64, %struct.yfs_xdr_u64, i32, i32, i32, %struct.yfs_xdr_vnode, i32, %struct.yfs_xdr_u64, %struct.yfs_xdr_u64, i32, i32 }
%struct.yfs_xdr_YFSFetchVolumeStatus = type { %struct.yfs_xdr_u64, %struct.yfs_xdr_u64, i32, i32, %struct.yfs_xdr_u64, %struct.yfs_xdr_u64, %struct.yfs_xdr_u64, %struct.yfs_xdr_u64, %struct.yfs_xdr_u64, %struct.yfs_xdr_u64 }
%struct.anon.151 = type { i32, i32 }

@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@yfs_fs_fetch_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%-6.6s] ==> %s(,%x,{%llx:%llu},%llx,%llx)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"yfs_fs_fetch_data\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/afs/yfsclient.c\00", [45 x i8] zeroinitializer }, align 32
@yfs_fs_fetch_data._entry_ptr = internal global ptr @yfs_fs_fetch_data._entry, section ".printk_index", align 4
@yfs_RXYFSFetchData64 = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.27, i32 64537, ptr @yfs_deliver_fs_fetch_data64, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_create_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"yfs_fs_create_file\00", [45 x i8] zeroinitializer }, align 32
@yfs_fs_create_file._entry_ptr = internal global ptr @yfs_fs_create_file._entry, section ".printk_index", align 4
@afs_RXFSCreateFile = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.61, i32 64137, ptr @yfs_deliver_fs_create_vnode, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_make_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.5, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"yfs_fs_make_dir\00", [16 x i8] zeroinitializer }, align 32
@yfs_fs_make_dir._entry_ptr = internal global ptr @yfs_fs_make_dir._entry, section ".printk_index", align 4
@yfs_RXFSMakeDir = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.66, i32 64141, ptr @yfs_deliver_fs_create_vnode, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_remove_file2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.6, ptr @.str.2, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"yfs_fs_remove_file2\00", [44 x i8] zeroinitializer }, align 32
@yfs_fs_remove_file2._entry_ptr = internal global ptr @yfs_fs_remove_file2._entry, section ".printk_index", align 4
@yfs_RXYFSRemoveFile2 = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.67, i32 64173, ptr @yfs_deliver_fs_remove_file2, ptr @afs_flat_call_destructor, ptr null, ptr @yfs_done_fs_remove_file2 }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_remove_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.7, ptr @.str.2, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"yfs_fs_remove_file\00", [45 x i8] zeroinitializer }, align 32
@yfs_fs_remove_file._entry_ptr = internal global ptr @yfs_fs_remove_file._entry, section ".printk_index", align 4
@yfs_RXYFSRemoveFile = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.69, i32 64136, ptr @yfs_deliver_fs_remove, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_remove_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.8, ptr @.str.2, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"yfs_fs_remove_dir\00", [46 x i8] zeroinitializer }, align 32
@yfs_fs_remove_dir._entry_ptr = internal global ptr @yfs_fs_remove_dir._entry, section ".printk_index", align 4
@yfs_RXYFSRemoveDir = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.71, i32 64142, ptr @yfs_deliver_fs_remove, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.9, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"yfs_fs_link\00", [20 x i8] zeroinitializer }, align 32
@yfs_fs_link._entry_ptr = internal global ptr @yfs_fs_link._entry, section ".printk_index", align 4
@yfs_RXYFSLink = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.72, i32 64140, ptr @yfs_deliver_fs_link, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_symlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.10, ptr @.str.2, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"yfs_fs_symlink\00", [17 x i8] zeroinitializer }, align 32
@yfs_fs_symlink._entry_ptr = internal global ptr @yfs_fs_symlink._entry, section ".printk_index", align 4
@yfs_RXYFSSymlink = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.76, i32 64139, ptr @yfs_deliver_fs_symlink, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_rename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.11, ptr @.str.2, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"yfs_fs_rename\00", [18 x i8] zeroinitializer }, align 32
@yfs_fs_rename._entry_ptr = internal global ptr @yfs_fs_rename._entry, section ".printk_index", align 4
@yfs_RXYFSRename = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.80, i32 64138, ptr @yfs_deliver_fs_rename, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_store_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s] ==> %s(,%x,{%llx:%llu},,)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"yfs_fs_store_data\00", [46 x i8] zeroinitializer }, align 32
@yfs_fs_store_data._entry_ptr = internal global ptr @yfs_fs_store_data._entry, section ".printk_index", align 4
@yfs_fs_store_data._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 1080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%-6.6s]     size %llx, at %llx, i_size %llx\0A\00", [50 x i8] zeroinitializer }, align 32
@yfs_fs_store_data._entry_ptr.16 = internal global ptr @yfs_fs_store_data._entry.14, section ".printk_index", align 4
@yfs_RXYFSStoreData64 = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.84, i32 64538, ptr @yfs_deliver_status_and_volsync, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_setattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.17, ptr @.str.2, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"yfs_fs_setattr\00", [17 x i8] zeroinitializer }, align 32
@yfs_fs_setattr._entry_ptr = internal global ptr @yfs_fs_setattr._entry, section ".printk_index", align 4
@yfs_RXYFSStoreStatus = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.87, i32 64135, ptr @yfs_deliver_status_and_volsync, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_get_volume_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.18, ptr @.str.2, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"yfs_fs_get_volume_status\00", [39 x i8] zeroinitializer }, align 32
@yfs_fs_get_volume_status._entry_ptr = internal global ptr @yfs_fs_get_volume_status._entry, section ".printk_index", align 4
@yfs_RXYFSGetVolumeStatus = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.88, i32 64149, ptr @yfs_deliver_fs_get_volume_status, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_set_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.19, ptr @.str.2, i32 1415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"yfs_fs_set_lock\00", [16 x i8] zeroinitializer }, align 32
@yfs_fs_set_lock._entry_ptr = internal global ptr @yfs_fs_set_lock._entry, section ".printk_index", align 4
@yfs_RXYFSSetLock = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.122, i32 64156, ptr @yfs_deliver_status_and_volsync, ptr @afs_flat_call_destructor, ptr null, ptr @afs_lock_op_done }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_extend_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.20, ptr @.str.2, i32 1447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"yfs_fs_extend_lock\00", [45 x i8] zeroinitializer }, align 32
@yfs_fs_extend_lock._entry_ptr = internal global ptr @yfs_fs_extend_lock._entry, section ".printk_index", align 4
@yfs_RXYFSExtendLock = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.123, i32 64157, ptr @yfs_deliver_status_and_volsync, ptr @afs_flat_call_destructor, ptr null, ptr @afs_lock_op_done }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_release_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.21, ptr @.str.2, i32 1477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"yfs_fs_release_lock\00", [44 x i8] zeroinitializer }, align 32
@yfs_fs_release_lock._entry_ptr = internal global ptr @yfs_fs_release_lock._entry, section ".printk_index", align 4
@yfs_RXYFSReleaseLock = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.124, i32 64158, ptr @yfs_deliver_status_and_volsync, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_fetch_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.22, ptr @.str.2, i32 1542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"yfs_fs_fetch_status\00", [44 x i8] zeroinitializer }, align 32
@yfs_fs_fetch_status._entry_ptr = internal global ptr @yfs_fs_fetch_status._entry, section ".printk_index", align 4
@yfs_RXYFSFetchStatus = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.125, i32 64132, ptr @yfs_deliver_fs_fetch_status, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_inline_bulk_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%-6.6s] ==> %s(,%x,{%llx:%llu},%u)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"yfs_fs_inline_bulk_status\00", [38 x i8] zeroinitializer }, align 32
@yfs_fs_inline_bulk_status._entry_ptr = internal global ptr @yfs_fs_inline_bulk_status._entry, section ".printk_index", align 4
@yfs_RXYFSInlineBulkStatus = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.127, i32 64536, ptr @yfs_deliver_fs_inline_bulk_status, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_fetch_opaque_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.25, ptr @.str.2, i32 1884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"yfs_fs_fetch_opaque_acl\00", [40 x i8] zeroinitializer }, align 32
@yfs_fs_fetch_opaque_acl._entry_ptr = internal global ptr @yfs_fs_fetch_opaque_acl._entry, section ".printk_index", align 4
@yfs_RXYFSFetchOpaqueACL = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.152, i32 64168, ptr @yfs_deliver_fs_fetch_opaque_acl, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_fs_store_opaque_acl2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.26, ptr @.str.2, i32 1928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"yfs_fs_store_opaque_acl2\00", [39 x i8] zeroinitializer }, align 32
@yfs_fs_store_opaque_acl2._entry_ptr = internal global ptr @yfs_fs_store_opaque_acl2._entry, section ".printk_index", align 4
@yfs_RXYFSStoreOpaqueACL2 = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.156, i32 64174, ptr @yfs_deliver_status_and_volsync, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"YFS.FetchData64\00", [16 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_fetch_data64._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%-6.6s] ==> %s({%u,%zu, %zu/%llu})\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"yfs_deliver_fs_fetch_data64\00", [36 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_fetch_data64._entry_ptr = internal global ptr @yfs_deliver_fs_fetch_data64._entry, section ".printk_index", align 4
@yfs_deliver_fs_fetch_data64._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s]     extract data length\0A\00", [62 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_fetch_data64._entry_ptr.32 = internal global ptr @yfs_deliver_fs_fetch_data64._entry.30, section ".printk_index", align 4
@yfs_deliver_fs_fetch_data64._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s]     DATA length: %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_fetch_data64._entry_ptr.35 = internal global ptr @yfs_deliver_fs_fetch_data64._entry.33, section ".printk_index", align 4
@yfs_deliver_fs_fetch_data64._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s]     extract data %zu/%llu\0A\00", [60 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_fetch_data64._entry_ptr.38 = internal global ptr @yfs_deliver_fs_fetch_data64._entry.36, section ".printk_index", align 4
@yfs_deliver_fs_fetch_data64._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%-6.6s]     extract discard %zu/%llu\0A\00", [57 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_fetch_data64._entry_ptr.41 = internal global ptr @yfs_deliver_fs_fetch_data64._entry.39, section ".printk_index", align 4
@yfs_deliver_fs_fetch_data64._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.29, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = 0 [done]\0A\00", [34 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_fetch_data64._entry_ptr.44 = internal global ptr @yfs_deliver_fs_fetch_data64._entry.42, section ".printk_index", align 4
@xdr_dump_bad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015YFS XDR: Bad status record\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xdr_dump_bad\00", [19 x i8] zeroinitializer }, align 32
@xdr_dump_bad._entry_ptr = internal global ptr @xdr_dump_bad._entry, section ".printk_index", align 4
@xdr_dump_bad._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015%03x: %08x %08x %08x %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@xdr_dump_bad._entry_ptr.49 = internal global ptr @xdr_dump_bad._entry.47, section ".printk_index", align 4
@xdr_dump_bad._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\0150x60: %08x %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@xdr_dump_bad._entry_ptr.52 = internal global ptr @xdr_dump_bad._entry.50, section ".printk_index", align 4
@yfs_check_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013kAFS: %s: Request buffer overflow (%zu>%u)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"yfs_check_req\00", [18 x i8] zeroinitializer }, align 32
@yfs_check_req._entry_ptr = internal global ptr @yfs_check_req._entry, section ".printk_index", align 4
@yfs_check_req._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014kAFS: %s: Request buffer underflow (%zu<%u)\0A\00", [49 x i8] zeroinitializer }, align 32
@yfs_check_req._entry_ptr.57 = internal global ptr @yfs_check_req._entry.55, section ".printk_index", align 4
@__tracepoint_afs_make_fs_call = external dso_local global %struct.tracepoint, align 4
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_make_fs_call.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"YFS.CreateFile\00", [17 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_create_vnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] ==> %s({%u})\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"yfs_deliver_fs_create_vnode\00", [36 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_create_vnode._entry_ptr = internal global ptr @yfs_deliver_fs_create_vnode._entry, section ".printk_index", align 4
@yfs_deliver_fs_create_vnode._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.63, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_create_vnode._entry_ptr.65 = internal global ptr @yfs_deliver_fs_create_vnode._entry.64, section ".printk_index", align 4
@__tracepoint_afs_make_fs_call1 = external dso_local global %struct.tracepoint, align 4
@trace_afs_make_fs_call1.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"YFS.MakeDir\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"YFS.RemoveFile2\00", [16 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_remove_file2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.68, ptr @.str.2, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"yfs_deliver_fs_remove_file2\00", [36 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_remove_file2._entry_ptr = internal global ptr @yfs_deliver_fs_remove_file2._entry, section ".printk_index", align 4
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"YFS.RemoveFile\00", [17 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.70, ptr @.str.2, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"yfs_deliver_fs_remove\00", [42 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_remove._entry_ptr = internal global ptr @yfs_deliver_fs_remove._entry, section ".printk_index", align 4
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"YFS.RemoveDir\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"YFS.Link\00", [23 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.73, ptr @.str.2, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"yfs_deliver_fs_link\00", [44 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_link._entry_ptr = internal global ptr @yfs_deliver_fs_link._entry, section ".printk_index", align 4
@yfs_deliver_fs_link._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.73, ptr @.str.2, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_link._entry_ptr.75 = internal global ptr @yfs_deliver_fs_link._entry.74, section ".printk_index", align 4
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"YFS.Symlink\00", [20 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_symlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.77, ptr @.str.2, i32 906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"yfs_deliver_fs_symlink\00", [41 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_symlink._entry_ptr = internal global ptr @yfs_deliver_fs_symlink._entry, section ".printk_index", align 4
@yfs_deliver_fs_symlink._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.77, ptr @.str.2, i32 919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_symlink._entry_ptr.79 = internal global ptr @yfs_deliver_fs_symlink._entry.78, section ".printk_index", align 4
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FS.Rename\00", [22 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_rename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.81, ptr @.str.2, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"yfs_deliver_fs_rename\00", [42 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_rename._entry_ptr = internal global ptr @yfs_deliver_fs_rename._entry, section ".printk_index", align 4
@yfs_deliver_fs_rename._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.81, ptr @.str.2, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_rename._entry_ptr.83 = internal global ptr @yfs_deliver_fs_rename._entry.82, section ".printk_index", align 4
@__tracepoint_afs_make_fs_call2 = external dso_local global %struct.tracepoint, align 4
@trace_afs_make_fs_call2.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"YFS.StoreData64\00", [16 x i8] zeroinitializer }, align 32
@yfs_deliver_status_and_volsync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.85, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"yfs_deliver_status_and_volsync\00", [33 x i8] zeroinitializer }, align 32
@yfs_deliver_status_and_volsync._entry_ptr = internal global ptr @yfs_deliver_status_and_volsync._entry, section ".printk_index", align 4
@yfs_fs_setattr_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.86, ptr @.str.2, i32 1139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"yfs_fs_setattr_size\00", [44 x i8] zeroinitializer }, align 32
@yfs_fs_setattr_size._entry_ptr = internal global ptr @yfs_fs_setattr_size._entry, section ".printk_index", align 4
@yfs_RXYFSStoreData64_as_Status = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.84, i32 64538, ptr @yfs_deliver_status_and_volsync, ptr @afs_flat_call_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"YFS.StoreStatus\00", [16 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"YFS.GetVolumeStatus\00", [44 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_get_volume_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.89, ptr @.str.2, i32 1215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"yfs_deliver_fs_get_volume_status\00", [63 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_get_volume_status._entry_ptr = internal global ptr @yfs_deliver_fs_get_volume_status._entry, section ".printk_index", align 4
@yfs_deliver_fs_get_volume_status._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s]     extract status\0A\00", [35 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_get_volume_status._entry_ptr.92 = internal global ptr @yfs_deliver_fs_get_volume_status._entry.90, section ".printk_index", align 4
@yfs_deliver_fs_get_volume_status._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.2, i32 1243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s]     volname length: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_get_volume_status._entry_ptr.95 = internal global ptr @yfs_deliver_fs_get_volume_status._entry.93, section ".printk_index", align 4
@yfs_deliver_fs_get_volume_status._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.89, ptr @.str.2, i32 1253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     extract volname\0A\00", [34 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_get_volume_status._entry_ptr.98 = internal global ptr @yfs_deliver_fs_get_volume_status._entry.96, section ".printk_index", align 4
@yfs_deliver_fs_get_volume_status._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.89, ptr @.str.2, i32 1260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     volname '%s'\0A\00", [37 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_get_volume_status._entry_ptr.101 = internal global ptr @yfs_deliver_fs_get_volume_status._entry.99, section ".printk_index", align 4
@yfs_deliver_fs_get_volume_status._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.89, ptr @.str.2, i32 1272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%-6.6s]     offline msg length: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_get_volume_status._entry_ptr.104 = internal global ptr @yfs_deliver_fs_get_volume_status._entry.102, section ".printk_index", align 4
@yfs_deliver_fs_get_volume_status._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.89, ptr @.str.2, i32 1282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     extract offline\0A\00", [34 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_get_volume_status._entry_ptr.107 = internal global ptr @yfs_deliver_fs_get_volume_status._entry.105, section ".printk_index", align 4
@yfs_deliver_fs_get_volume_status._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.89, ptr @.str.2, i32 1289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     offline '%s'\0A\00", [37 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_get_volume_status._entry_ptr.110 = internal global ptr @yfs_deliver_fs_get_volume_status._entry.108, section ".printk_index", align 4
@yfs_deliver_fs_get_volume_status._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.89, ptr @.str.2, i32 1302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     motd length: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_get_volume_status._entry_ptr.113 = internal global ptr @yfs_deliver_fs_get_volume_status._entry.111, section ".printk_index", align 4
@yfs_deliver_fs_get_volume_status._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.89, ptr @.str.2, i32 1312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     extract motd\0A\00", [37 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_get_volume_status._entry_ptr.116 = internal global ptr @yfs_deliver_fs_get_volume_status._entry.114, section ".printk_index", align 4
@yfs_deliver_fs_get_volume_status._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.89, ptr @.str.2, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s]     motd '%s'\0A\00", [40 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_get_volume_status._entry_ptr.119 = internal global ptr @yfs_deliver_fs_get_volume_status._entry.117, section ".printk_index", align 4
@yfs_deliver_fs_get_volume_status._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.89, ptr @.str.2, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_get_volume_status._entry_ptr.121 = internal global ptr @yfs_deliver_fs_get_volume_status._entry.120, section ".printk_index", align 4
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"YFS.SetLock\00", [20 x i8] zeroinitializer }, align 32
@__tracepoint_afs_make_fs_calli = external dso_local global %struct.tracepoint, align 4
@trace_afs_make_fs_calli.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"YFS.ExtendLock\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"YFS.ReleaseLock\00", [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"YFS.FetchStatus\00", [16 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_fetch_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.126, ptr @.str.2, i32 1518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"yfs_deliver_fs_fetch_status\00", [36 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_fetch_status._entry_ptr = internal global ptr @yfs_deliver_fs_fetch_status._entry, section ".printk_index", align 4
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"YFS.InlineBulkStatus\00", [43 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_inline_bulk_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.128, ptr @.str.2, i32 1575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"yfs_deliver_fs_inline_bulk_status\00", [62 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_inline_bulk_status._entry_ptr = internal global ptr @yfs_deliver_fs_inline_bulk_status._entry, section ".printk_index", align 4
@yfs_deliver_fs_inline_bulk_status._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.2, i32 1585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s]     extract status count\0A\00", [61 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_inline_bulk_status._entry_ptr.131 = internal global ptr @yfs_deliver_fs_inline_bulk_status._entry.129, section ".printk_index", align 4
@yfs_deliver_fs_inline_bulk_status._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.128, ptr @.str.2, i32 1591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s]     status count: %u/%u\0A\00", [62 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_inline_bulk_status._entry_ptr.134 = internal global ptr @yfs_deliver_fs_inline_bulk_status._entry.132, section ".printk_index", align 4
@yfs_deliver_fs_inline_bulk_status._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.128, ptr @.str.2, i32 1602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%-6.6s]     extract status array %u\0A\00", [58 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_inline_bulk_status._entry_ptr.137 = internal global ptr @yfs_deliver_fs_inline_bulk_status._entry.135, section ".printk_index", align 4
@yfs_deliver_fs_inline_bulk_status._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.128, ptr @.str.2, i32 1633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s]     extract CB count\0A\00", [33 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_inline_bulk_status._entry_ptr.140 = internal global ptr @yfs_deliver_fs_inline_bulk_status._entry.138, section ".printk_index", align 4
@yfs_deliver_fs_inline_bulk_status._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.128, ptr @.str.2, i32 1639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     CB count: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_inline_bulk_status._entry_ptr.143 = internal global ptr @yfs_deliver_fs_inline_bulk_status._entry.141, section ".printk_index", align 4
@yfs_deliver_fs_inline_bulk_status._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.128, ptr @.str.2, i32 1649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s]     extract CB array\0A\00", [33 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_inline_bulk_status._entry_ptr.146 = internal global ptr @yfs_deliver_fs_inline_bulk_status._entry.144, section ".printk_index", align 4
@yfs_deliver_fs_inline_bulk_status._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.128, ptr @.str.2, i32 1654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s]     unmarshall CB array\0A\00", [62 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_inline_bulk_status._entry_ptr.149 = internal global ptr @yfs_deliver_fs_inline_bulk_status._entry.147, section ".printk_index", align 4
@yfs_deliver_fs_inline_bulk_status._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.128, ptr @.str.2, i32 1692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_inline_bulk_status._entry_ptr.151 = internal global ptr @yfs_deliver_fs_inline_bulk_status._entry.150, section ".printk_index", align 4
@.str.152 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"YFS.FetchOpaqueACL\00", [45 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_fetch_opaque_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.153, ptr @.str.2, i32 1757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"yfs_deliver_fs_fetch_opaque_acl\00", [32 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_fetch_opaque_acl._entry_ptr = internal global ptr @yfs_deliver_fs_fetch_opaque_acl._entry, section ".printk_index", align 4
@yfs_deliver_fs_fetch_opaque_acl._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.153, ptr @.str.2, i32 1851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yfs_deliver_fs_fetch_opaque_acl._entry_ptr.155 = internal global ptr @yfs_deliver_fs_fetch_opaque_acl._entry.154, section ".printk_index", align 4
@.str.156 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"YFS.StoreOpaqueACL2\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 102]
@__sancov_gen_cov_switch_values.158 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.159 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.162 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 469, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [21 x i8] c"yfs_RXYFSFetchData64\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 452, i32 35 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 548, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [19 x i8] c"afs_RXFSCreateFile\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 530, i32 35 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 598, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [16 x i8] c"yfs_RXFSMakeDir\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 580, i32 35 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 686, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [21 x i8] c"yfs_RXYFSRemoveFile2\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 668, i32 35 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 754, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [20 x i8] c"yfs_RXYFSRemoveFile\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 737, i32 35 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 798, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [19 x i8] c"yfs_RXYFSRemoveDir\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 781, i32 35 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 868, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [14 x i8] c"yfs_RXYFSLink\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 850, i32 35 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 945, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"yfs_RXYFSSymlink\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 926, i32 35 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1026, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [16 x i8] c"yfs_RXYFSRename\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1007, i32 35 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1074, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1077, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [21 x i8] c"yfs_RXYFSStoreData64\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1058, i32 35 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1180, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [21 x i8] c"yfs_RXYFSStoreStatus\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1113, i32 35 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1351, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [25 x i8] c"yfs_RXYFSGetVolumeStatus\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1335, i32 35 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1415, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [17 x i8] c"yfs_RXYFSSetLock\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1377, i32 35 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1447, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [20 x i8] c"yfs_RXYFSExtendLock\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1388, i32 35 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1477, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [21 x i8] c"yfs_RXYFSReleaseLock\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1399, i32 35 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1541, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [21 x i8] c"yfs_RXYFSFetchStatus\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1525, i32 35 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1717, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [26 x i8] c"yfs_RXYFSInlineBulkStatus\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1699, i32 35 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1883, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant [24 x i8] c"yfs_RXYFSFetchOpaqueACL\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1867, i32 35 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1927, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [25 x i8] c"yfs_RXYFSStoreOpaqueACL2\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1909, i32 35 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 453, i32 11 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 358, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 374, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 380, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 392, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 409, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 445, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 158, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 162, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 167, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 143, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 146, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 759, i32 1 }
@___asan_gen_.440 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 108, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 531, i32 11 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 509, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 523, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 581, i32 11 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 669, i32 11 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 640, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 738, i32 11 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 722, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 782, i32 11 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 851, i32 11 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 833, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 843, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 927, i32 11 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 906, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 919, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1008, i32 11 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 987, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1000, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1059, i32 11 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 343, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1138, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant [31 x i8] c"yfs_RXYFSStoreData64_as_Status\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1120, i32 35 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1114, i32 11 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1336, i32 11 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1215, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1225, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1243, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1253, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1260, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1272, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1282, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1289, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1302, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1312, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1319, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1328, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1378, i32 11 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1389, i32 11 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1400, i32 11 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1526, i32 11 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1518, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1700, i32 11 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1575, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1585, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1591, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1602, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1633, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1639, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1649, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1654, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1692, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1868, i32 11 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1757, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1851, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.695 = private constant [22 x i8] c"../fs/afs/yfsclient.c\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1910, i32 11 }
@llvm.compiler.used = appending global [245 x ptr] [ptr @xdr_dump_bad._entry, ptr @xdr_dump_bad._entry.47, ptr @xdr_dump_bad._entry.50, ptr @xdr_dump_bad._entry_ptr, ptr @xdr_dump_bad._entry_ptr.49, ptr @xdr_dump_bad._entry_ptr.52, ptr @yfs_check_req._entry, ptr @yfs_check_req._entry.55, ptr @yfs_check_req._entry_ptr, ptr @yfs_check_req._entry_ptr.57, ptr @yfs_deliver_fs_create_vnode._entry, ptr @yfs_deliver_fs_create_vnode._entry.64, ptr @yfs_deliver_fs_create_vnode._entry_ptr, ptr @yfs_deliver_fs_create_vnode._entry_ptr.65, ptr @yfs_deliver_fs_fetch_data64._entry, ptr @yfs_deliver_fs_fetch_data64._entry.30, ptr @yfs_deliver_fs_fetch_data64._entry.33, ptr @yfs_deliver_fs_fetch_data64._entry.36, ptr @yfs_deliver_fs_fetch_data64._entry.39, ptr @yfs_deliver_fs_fetch_data64._entry.42, ptr @yfs_deliver_fs_fetch_data64._entry_ptr, ptr @yfs_deliver_fs_fetch_data64._entry_ptr.32, ptr @yfs_deliver_fs_fetch_data64._entry_ptr.35, ptr @yfs_deliver_fs_fetch_data64._entry_ptr.38, ptr @yfs_deliver_fs_fetch_data64._entry_ptr.41, ptr @yfs_deliver_fs_fetch_data64._entry_ptr.44, ptr @yfs_deliver_fs_fetch_opaque_acl._entry, ptr @yfs_deliver_fs_fetch_opaque_acl._entry.154, ptr @yfs_deliver_fs_fetch_opaque_acl._entry_ptr, ptr @yfs_deliver_fs_fetch_opaque_acl._entry_ptr.155, ptr @yfs_deliver_fs_fetch_status._entry, ptr @yfs_deliver_fs_fetch_status._entry_ptr, ptr @yfs_deliver_fs_get_volume_status._entry, ptr @yfs_deliver_fs_get_volume_status._entry.102, ptr @yfs_deliver_fs_get_volume_status._entry.105, ptr @yfs_deliver_fs_get_volume_status._entry.108, ptr @yfs_deliver_fs_get_volume_status._entry.111, ptr @yfs_deliver_fs_get_volume_status._entry.114, ptr @yfs_deliver_fs_get_volume_status._entry.117, ptr @yfs_deliver_fs_get_volume_status._entry.120, ptr @yfs_deliver_fs_get_volume_status._entry.90, ptr @yfs_deliver_fs_get_volume_status._entry.93, ptr @yfs_deliver_fs_get_volume_status._entry.96, ptr @yfs_deliver_fs_get_volume_status._entry.99, ptr @yfs_deliver_fs_get_volume_status._entry_ptr, ptr @yfs_deliver_fs_get_volume_status._entry_ptr.101, ptr @yfs_deliver_fs_get_volume_status._entry_ptr.104, ptr @yfs_deliver_fs_get_volume_status._entry_ptr.107, ptr @yfs_deliver_fs_get_volume_status._entry_ptr.110, ptr @yfs_deliver_fs_get_volume_status._entry_ptr.113, ptr @yfs_deliver_fs_get_volume_status._entry_ptr.116, ptr @yfs_deliver_fs_get_volume_status._entry_ptr.119, ptr @yfs_deliver_fs_get_volume_status._entry_ptr.121, ptr @yfs_deliver_fs_get_volume_status._entry_ptr.92, ptr @yfs_deliver_fs_get_volume_status._entry_ptr.95, ptr @yfs_deliver_fs_get_volume_status._entry_ptr.98, ptr @yfs_deliver_fs_inline_bulk_status._entry, ptr @yfs_deliver_fs_inline_bulk_status._entry.129, ptr @yfs_deliver_fs_inline_bulk_status._entry.132, ptr @yfs_deliver_fs_inline_bulk_status._entry.135, ptr @yfs_deliver_fs_inline_bulk_status._entry.138, ptr @yfs_deliver_fs_inline_bulk_status._entry.141, ptr @yfs_deliver_fs_inline_bulk_status._entry.144, ptr @yfs_deliver_fs_inline_bulk_status._entry.147, ptr @yfs_deliver_fs_inline_bulk_status._entry.150, ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr, ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr.131, ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr.134, ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr.137, ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr.140, ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr.143, ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr.146, ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr.149, ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr.151, ptr @yfs_deliver_fs_link._entry, ptr @yfs_deliver_fs_link._entry.74, ptr @yfs_deliver_fs_link._entry_ptr, ptr @yfs_deliver_fs_link._entry_ptr.75, ptr @yfs_deliver_fs_remove._entry, ptr @yfs_deliver_fs_remove._entry_ptr, ptr @yfs_deliver_fs_remove_file2._entry, ptr @yfs_deliver_fs_remove_file2._entry_ptr, ptr @yfs_deliver_fs_rename._entry, ptr @yfs_deliver_fs_rename._entry.82, ptr @yfs_deliver_fs_rename._entry_ptr, ptr @yfs_deliver_fs_rename._entry_ptr.83, ptr @yfs_deliver_fs_symlink._entry, ptr @yfs_deliver_fs_symlink._entry.78, ptr @yfs_deliver_fs_symlink._entry_ptr, ptr @yfs_deliver_fs_symlink._entry_ptr.79, ptr @yfs_deliver_status_and_volsync._entry, ptr @yfs_deliver_status_and_volsync._entry_ptr, ptr @yfs_fs_create_file._entry, ptr @yfs_fs_create_file._entry_ptr, ptr @yfs_fs_extend_lock._entry, ptr @yfs_fs_extend_lock._entry_ptr, ptr @yfs_fs_fetch_data._entry, ptr @yfs_fs_fetch_data._entry_ptr, ptr @yfs_fs_fetch_opaque_acl._entry, ptr @yfs_fs_fetch_opaque_acl._entry_ptr, ptr @yfs_fs_fetch_status._entry, ptr @yfs_fs_fetch_status._entry_ptr, ptr @yfs_fs_get_volume_status._entry, ptr @yfs_fs_get_volume_status._entry_ptr, ptr @yfs_fs_inline_bulk_status._entry, ptr @yfs_fs_inline_bulk_status._entry_ptr, ptr @yfs_fs_link._entry, ptr @yfs_fs_link._entry_ptr, ptr @yfs_fs_make_dir._entry, ptr @yfs_fs_make_dir._entry_ptr, ptr @yfs_fs_release_lock._entry, ptr @yfs_fs_release_lock._entry_ptr, ptr @yfs_fs_remove_dir._entry, ptr @yfs_fs_remove_dir._entry_ptr, ptr @yfs_fs_remove_file._entry, ptr @yfs_fs_remove_file._entry_ptr, ptr @yfs_fs_remove_file2._entry, ptr @yfs_fs_remove_file2._entry_ptr, ptr @yfs_fs_rename._entry, ptr @yfs_fs_rename._entry_ptr, ptr @yfs_fs_set_lock._entry, ptr @yfs_fs_set_lock._entry_ptr, ptr @yfs_fs_setattr._entry, ptr @yfs_fs_setattr._entry_ptr, ptr @yfs_fs_setattr_size._entry, ptr @yfs_fs_setattr_size._entry_ptr, ptr @yfs_fs_store_data._entry, ptr @yfs_fs_store_data._entry.14, ptr @yfs_fs_store_data._entry_ptr, ptr @yfs_fs_store_data._entry_ptr.16, ptr @yfs_fs_store_opaque_acl2._entry, ptr @yfs_fs_store_opaque_acl2._entry_ptr, ptr @yfs_fs_symlink._entry, ptr @yfs_fs_symlink._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @yfs_RXYFSFetchData64, ptr @.str.3, ptr @.str.4, ptr @afs_RXFSCreateFile, ptr @.str.5, ptr @yfs_RXFSMakeDir, ptr @.str.6, ptr @yfs_RXYFSRemoveFile2, ptr @.str.7, ptr @yfs_RXYFSRemoveFile, ptr @.str.8, ptr @yfs_RXYFSRemoveDir, ptr @.str.9, ptr @yfs_RXYFSLink, ptr @.str.10, ptr @yfs_RXYFSSymlink, ptr @.str.11, ptr @yfs_RXYFSRename, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @yfs_RXYFSStoreData64, ptr @.str.17, ptr @yfs_RXYFSStoreStatus, ptr @.str.18, ptr @yfs_RXYFSGetVolumeStatus, ptr @.str.19, ptr @yfs_RXYFSSetLock, ptr @.str.20, ptr @yfs_RXYFSExtendLock, ptr @.str.21, ptr @yfs_RXYFSReleaseLock, ptr @.str.22, ptr @yfs_RXYFSFetchStatus, ptr @.str.23, ptr @.str.24, ptr @yfs_RXYFSInlineBulkStatus, ptr @.str.25, ptr @yfs_RXYFSFetchOpaqueACL, ptr @.str.26, ptr @yfs_RXYFSStoreOpaqueACL2, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.76, ptr @.str.77, ptr @.str.80, ptr @.str.81, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @yfs_RXYFSStoreData64_as_Status, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.152, ptr @.str.153, ptr @.str.156], section "llvm.metadata"
@0 = internal global [178 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_fetch_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSFetchData64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_create_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXFSCreateFile to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_make_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXFSMakeDir to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_remove_file2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSRemoveFile2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_remove_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSRemoveFile to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_remove_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSRemoveDir to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSLink to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_symlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSSymlink to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_rename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSRename to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_store_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_store_data._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSStoreData64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_setattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSStoreStatus to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_get_volume_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSGetVolumeStatus to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_set_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSSetLock to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_extend_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSExtendLock to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_release_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSReleaseLock to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_fetch_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSFetchStatus to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_inline_bulk_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSInlineBulkStatus to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_fetch_opaque_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSFetchOpaqueACL to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_store_opaque_acl2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSStoreOpaqueACL2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_fetch_data64._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_fetch_data64._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_fetch_data64._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_fetch_data64._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_fetch_data64._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_fetch_data64._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdr_dump_bad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdr_dump_bad._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdr_dump_bad._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_check_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_check_req._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_create_vnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_create_vnode._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_remove_file2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_link._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_symlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_symlink._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_rename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_rename._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_status_and_volsync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fs_setattr_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_RXYFSStoreData64_as_Status to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_get_volume_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_get_volume_status._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_get_volume_status._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_get_volume_status._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_get_volume_status._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_get_volume_status._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_get_volume_status._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_get_volume_status._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_get_volume_status._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_get_volume_status._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_get_volume_status._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_get_volume_status._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_fetch_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_inline_bulk_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_inline_bulk_status._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_inline_bulk_status._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_inline_bulk_status._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_inline_bulk_status._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_inline_bulk_status._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_inline_bulk_status._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_inline_bulk_status._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_inline_bulk_status._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_fetch_opaque_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_deliver_fs_fetch_opaque_acl._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @yfs_fs_fetch_data(ptr noundef %op) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !375

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %2, align 8
  %len = getelementptr inbounds %struct.afs_read, ptr %2, i32 0, i32 1
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %len, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i32 noundef %cond.i, i64 noundef %13, i64 noundef %15, i64 noundef %17, i64 noundef %19) #12
  br label %do.end10

do.end10:                                         ; preds = %key_serial.exit, %entry.do.end10_crit_edge
  %20 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %op, align 8
  %call11 = tail call ptr @afs_alloc_flat_call(ptr noundef %21, ptr noundef nonnull @yfs_RXYFSFetchData64, i32 noundef 48, i32 noundef 160) #9
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %22 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  %debug_id = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 39
  %23 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_id, align 4
  %call_debug_id = getelementptr inbounds %struct.afs_read, ptr %2, i32 0, i32 9
  %25 = ptrtoint ptr %call_debug_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %call_debug_id, align 4
  %request = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 10
  %26 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %request, align 8
  %incdec.ptr.i = getelementptr i32, ptr %27, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 64537, ptr %27, align 4
  %incdec.ptr.i49 = getelementptr i32, ptr %27, i32 2
  %29 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid17 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %30 = ptrtoint ptr %fid17 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %fid17, align 8
  %32 = ptrtoint ptr %incdec.ptr.i49 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %31, ptr %incdec.ptr.i49, align 1
  %vnode.i = getelementptr i32, ptr %27, i32 4
  %vnode2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %vnode2.i, align 8
  %35 = ptrtoint ptr %vnode.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %34, ptr %vnode.i, align 1
  %vnode_hi.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %27, i32 6
  %38 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %hi.i, align 1
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %27, i32 7
  %41 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %27, i32 8
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %2, align 8
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %43, ptr %add.ptr.i, align 1
  %add.ptr.i50 = getelementptr i32, ptr %27, i32 10
  %len21 = getelementptr inbounds %struct.afs_read, ptr %2, i32 0, i32 1
  %45 = ptrtoint ptr %len21 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %len21, align 8
  %47 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %46, ptr %add.ptr.i50, align 1
  %add.ptr.i51 = getelementptr i32, ptr %27, i32 12
  %48 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i51 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 26
  %49 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %50)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %50
  br i1 %cmp.i, label %if.end14.if.end14.sink.split.i_crit_edge, label %if.else.i

if.end14.if.end14.sink.split.i_crit_edge:         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %50)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %50
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %if.end14.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %if.end14.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %51 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call11, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %54, i32 noundef %sub.ptr.sub.i, i32 noundef %50) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call11, ptr noundef %fid17)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %55 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call11, ptr %call1.i, align 4
  %56 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call11, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %58 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 18
  %59 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %60 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 6
  %62 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %63 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 36
  %65 = trunc i32 %64 to i8
  %66 = lshr i8 %65, 6
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  %69 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call11, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then13
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
          to label %if.end49 [label %do.body], !srcloc !376

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !375

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !377
  %call43 = tail call i32 @__traceiter_afs_make_fs_call(ptr noundef null, ptr noundef %call, ptr noundef %fid) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !378
  %13 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !375

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !379
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 788, ptr noundef nonnull @.str.59) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !380
  %31 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
define dso_local void @yfs_fs_create_file(ptr noundef %op) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !375

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.4) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %7 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_name, align 8
  %sub.i = add i32 %8, -1
  %or.i = or i32 %sub.i, 3
  %add10 = add i32 %or.i, 73
  %9 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %op, align 8
  %call11 = tail call ptr @afs_alloc_flat_call(ptr noundef %10, ptr noundef nonnull @afs_RXFSCreateFile, i32 noundef %add10, i32 noundef 288) #9
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
  %incdec.ptr.i = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64137, ptr %13, align 4
  %incdec.ptr.i46 = getelementptr i32, ptr %13, i32 2
  %15 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fid, align 8
  %18 = ptrtoint ptr %incdec.ptr.i46 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %incdec.ptr.i46, align 1
  %vnode.i = getelementptr i32, ptr %13, i32 4
  %vnode2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %vnode2.i, align 8
  %21 = ptrtoint ptr %vnode.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %vnode.i, align 1
  %vnode_hi.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %13, i32 6
  %24 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %hi.i, align 1
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %13, i32 7
  %27 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %13, i32 8
  %name.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name.i, align 8
  %30 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %d_name, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %13, i32 9
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %add.ptr.i, align 4
  %33 = call ptr @memcpy(ptr %incdec.ptr.i.i.i, ptr %29, i32 %31)
  %and.i.i = and i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end14.xdr_encode_name.exit_crit_edge, label %if.then.i.i

if.end14.xdr_encode_name.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_encode_name.exit

if.then.i.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub nuw nsw i32 4, %and.i.i
  %add.ptr.i.i = getelementptr i8, ptr %incdec.ptr.i.i.i, i32 %31
  %34 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  %add.i.i = add i32 %sub.i.i, %31
  br label %xdr_encode_name.exit

xdr_encode_name.exit:                             ; preds = %if.then.i.i, %if.end14.xdr_encode_name.exit_crit_edge
  %len.addr.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %31, %if.end14.xdr_encode_name.exit_crit_edge ]
  %div13.i.i = lshr i32 %len.addr.0.i.i, 2
  %add.ptr2.i.i = getelementptr i32, ptr %incdec.ptr.i.i.i, i32 %div13.i.i
  %35 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %mode = getelementptr inbounds %struct.anon.160, ptr %35, i32 0, i32 1
  %mtime = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 10
  %tobool.not.i = icmp eq ptr %mode, null
  br i1 %tobool.not.i, label %xdr_encode_name.exit.xdr_encode_YFSStoreStatus.exit_crit_edge, label %cond.true.i

xdr_encode_name.exit.xdr_encode_YFSStoreStatus.exit_crit_edge: ; preds = %xdr_encode_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_encode_YFSStoreStatus.exit

cond.true.i:                                      ; preds = %xdr_encode_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mode, align 2
  %and.i47 = and i16 %37, 4095
  %phi.cast.i = zext i16 %and.i47 to i32
  br label %xdr_encode_YFSStoreStatus.exit

xdr_encode_YFSStoreStatus.exit:                   ; preds = %cond.true.i, %xdr_encode_name.exit.xdr_encode_YFSStoreStatus.exit_crit_edge
  %cond3.i = phi i32 [ 1, %xdr_encode_name.exit.xdr_encode_YFSStoreStatus.exit_crit_edge ], [ 9, %cond.true.i ]
  %cond.i = phi i32 [ 0, %xdr_encode_name.exit.xdr_encode_YFSStoreStatus.exit_crit_edge ], [ %phi.cast.i, %cond.true.i ]
  %38 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %mtime, align 8
  %mul.i.i = mul i64 %39, 10000000
  %tv_nsec.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 10, i32 1
  %40 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tv_nsec.i.i, align 8
  %div.i.i = sdiv i32 %41, 100
  %conv.i.i = sext i32 %div.i.i to i64
  %add.i.i48 = add i64 %mul.i.i, %conv.i.i
  %42 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %cond3.i, ptr %add.ptr2.i.i, align 1
  %mode6.i = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, ptr %add.ptr2.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %mode6.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %cond.i, ptr %mode6.i, align 1
  %mtime_client.i = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, ptr %add.ptr2.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %mtime_client.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %add.i.i48, ptr %mtime_client.i, align 1
  %owner.i = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, ptr %add.ptr2.i.i, i32 0, i32 3
  %add.ptr.i49 = getelementptr i32, ptr %add.ptr2.i.i, i32 8
  %45 = call ptr @memset(ptr %owner.i, i32 0, i32 16)
  %incdec.ptr.i50 = getelementptr i32, ptr %add.ptr.i49, i32 1
  %46 = ptrtoint ptr %add.ptr.i49 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %add.ptr.i49, align 4
  %47 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr.i50 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 26
  %49 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %50)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %50
  br i1 %cmp.i, label %xdr_encode_YFSStoreStatus.exit.if.end14.sink.split.i_crit_edge, label %if.else.i

xdr_encode_YFSStoreStatus.exit.if.end14.sink.split.i_crit_edge: ; preds = %xdr_encode_YFSStoreStatus.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %xdr_encode_YFSStoreStatus.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %50)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %50
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %xdr_encode_YFSStoreStatus.exit.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %xdr_encode_YFSStoreStatus.exit.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %51 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call11, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %54, i32 noundef %sub.ptr.sub.i, i32 noundef %50) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call1(ptr noundef nonnull %call11, ptr noundef %fid, ptr noundef %d_name)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %55 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call11, ptr %call1.i, align 4
  %56 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call11, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %58 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 18
  %59 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %60 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 6
  %62 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %63 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call11, i32 0, i32 36
  %65 = trunc i32 %64 to i8
  %66 = lshr i8 %65, 6
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  %69 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call11, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_make_fs_call1(ptr noundef %call, ptr noundef %fid, ptr noundef %name) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_fs_call1, i32 0, i32 1), ptr blockaddress(@trace_afs_make_fs_call1, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !376

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !375

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !381
  %call43 = tail call i32 @__traceiter_afs_make_fs_call1(ptr noundef null, ptr noundef %call, ptr noundef %fid, ptr noundef %name) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !382
  %13 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !375

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !379
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 860, ptr noundef nonnull @.str.59) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !380
  %31 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
define dso_local void @yfs_fs_make_dir(ptr noundef %op) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !375

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %sub.i = add i32 %8, -1
  %or.i = or i32 %sub.i, 3
  %add9 = add i32 %or.i, 69
  %9 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %op, align 8
  %call10 = tail call ptr @afs_alloc_flat_call(ptr noundef %10, ptr noundef nonnull @yfs_RXFSMakeDir, i32 noundef %add9, i32 noundef 288) #9
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end13:                                         ; preds = %do.end7
  %request = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 10
  %12 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %request, align 8
  %incdec.ptr.i = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64141, ptr %13, align 4
  %incdec.ptr.i43 = getelementptr i32, ptr %13, i32 2
  %15 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fid, align 8
  %18 = ptrtoint ptr %incdec.ptr.i43 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %incdec.ptr.i43, align 1
  %vnode.i = getelementptr i32, ptr %13, i32 4
  %vnode2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %vnode2.i, align 8
  %21 = ptrtoint ptr %vnode.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %vnode.i, align 1
  %vnode_hi.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %13, i32 6
  %24 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %hi.i, align 1
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %13, i32 7
  %27 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %13, i32 8
  %name.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name.i, align 8
  %30 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %d_name, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %13, i32 9
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %add.ptr.i, align 4
  %33 = call ptr @memcpy(ptr %incdec.ptr.i.i.i, ptr %29, i32 %31)
  %and.i.i = and i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end13.xdr_encode_name.exit_crit_edge, label %if.then.i.i

if.end13.xdr_encode_name.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_encode_name.exit

if.then.i.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub nuw nsw i32 4, %and.i.i
  %add.ptr.i.i = getelementptr i8, ptr %incdec.ptr.i.i.i, i32 %31
  %34 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  %add.i.i = add i32 %sub.i.i, %31
  br label %xdr_encode_name.exit

xdr_encode_name.exit:                             ; preds = %if.then.i.i, %if.end13.xdr_encode_name.exit_crit_edge
  %len.addr.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %31, %if.end13.xdr_encode_name.exit_crit_edge ]
  %div13.i.i = lshr i32 %len.addr.0.i.i, 2
  %add.ptr2.i.i = getelementptr i32, ptr %incdec.ptr.i.i.i, i32 %div13.i.i
  %35 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %mode = getelementptr inbounds %struct.anon.160, ptr %35, i32 0, i32 1
  %mtime = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 10
  %tobool.not.i = icmp eq ptr %mode, null
  br i1 %tobool.not.i, label %xdr_encode_name.exit.xdr_encode_YFSStoreStatus.exit_crit_edge, label %cond.true.i

xdr_encode_name.exit.xdr_encode_YFSStoreStatus.exit_crit_edge: ; preds = %xdr_encode_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_encode_YFSStoreStatus.exit

cond.true.i:                                      ; preds = %xdr_encode_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mode, align 2
  %and.i44 = and i16 %37, 4095
  %phi.cast.i = zext i16 %and.i44 to i32
  br label %xdr_encode_YFSStoreStatus.exit

xdr_encode_YFSStoreStatus.exit:                   ; preds = %cond.true.i, %xdr_encode_name.exit.xdr_encode_YFSStoreStatus.exit_crit_edge
  %cond3.i = phi i32 [ 1, %xdr_encode_name.exit.xdr_encode_YFSStoreStatus.exit_crit_edge ], [ 9, %cond.true.i ]
  %cond.i = phi i32 [ 0, %xdr_encode_name.exit.xdr_encode_YFSStoreStatus.exit_crit_edge ], [ %phi.cast.i, %cond.true.i ]
  %38 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %mtime, align 8
  %mul.i.i = mul i64 %39, 10000000
  %tv_nsec.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 10, i32 1
  %40 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tv_nsec.i.i, align 8
  %div.i.i = sdiv i32 %41, 100
  %conv.i.i = sext i32 %div.i.i to i64
  %add.i.i45 = add i64 %mul.i.i, %conv.i.i
  %42 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %cond3.i, ptr %add.ptr2.i.i, align 1
  %mode6.i = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, ptr %add.ptr2.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %mode6.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %cond.i, ptr %mode6.i, align 1
  %mtime_client.i = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, ptr %add.ptr2.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %mtime_client.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %add.i.i45, ptr %mtime_client.i, align 1
  %owner.i = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, ptr %add.ptr2.i.i, i32 0, i32 3
  %add.ptr.i46 = getelementptr i32, ptr %add.ptr2.i.i, i32 8
  %45 = call ptr @memset(ptr %owner.i, i32 0, i32 16)
  %46 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i46 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 26
  %48 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %49)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %49
  br i1 %cmp.i, label %xdr_encode_YFSStoreStatus.exit.if.end14.sink.split.i_crit_edge, label %if.else.i

xdr_encode_YFSStoreStatus.exit.if.end14.sink.split.i_crit_edge: ; preds = %xdr_encode_YFSStoreStatus.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %xdr_encode_YFSStoreStatus.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %49)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %49
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %xdr_encode_YFSStoreStatus.exit.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %xdr_encode_YFSStoreStatus.exit.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %50 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call10, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %53, i32 noundef %sub.ptr.sub.i, i32 noundef %49) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call1(ptr noundef nonnull %call10, ptr noundef %fid, ptr noundef %d_name)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %54 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call10, ptr %call1.i, align 4
  %55 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call10, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %57 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 18
  %58 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %59 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 6
  %61 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 36
  %64 = trunc i32 %63 to i8
  %65 = lshr i8 %64, 6
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  %68 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call10, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @yfs_fs_remove_file2(ptr noundef %op) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !375

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %7 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %op, align 8
  %9 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d_name, align 8
  %sub.i = add i32 %10, -1
  %or.i = or i32 %sub.i, 3
  %add = add i32 %or.i, 37
  %call9 = tail call ptr @afs_alloc_flat_call(ptr noundef %8, ptr noundef nonnull @yfs_RXYFSRemoveFile2, i32 noundef %add, i32 noundef 272) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end12:                                         ; preds = %do.end7
  %request = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 10
  %12 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %request, align 8
  %incdec.ptr.i = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64173, ptr %13, align 4
  %incdec.ptr.i36 = getelementptr i32, ptr %13, i32 2
  %15 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fid, align 8
  %18 = ptrtoint ptr %incdec.ptr.i36 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %incdec.ptr.i36, align 1
  %vnode.i = getelementptr i32, ptr %13, i32 4
  %vnode2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %vnode2.i, align 8
  %21 = ptrtoint ptr %vnode.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %vnode.i, align 1
  %vnode_hi.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %13, i32 6
  %24 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %hi.i, align 1
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %13, i32 7
  %27 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %13, i32 8
  %name.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name.i, align 8
  %30 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %d_name, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %13, i32 9
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %add.ptr.i, align 4
  %33 = call ptr @memcpy(ptr %incdec.ptr.i.i.i, ptr %29, i32 %31)
  %and.i.i = and i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end12.xdr_encode_name.exit_crit_edge, label %if.then.i.i

if.end12.xdr_encode_name.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_encode_name.exit

if.then.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub nuw nsw i32 4, %and.i.i
  %add.ptr.i.i = getelementptr i8, ptr %incdec.ptr.i.i.i, i32 %31
  %34 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  %add.i.i = add i32 %sub.i.i, %31
  br label %xdr_encode_name.exit

xdr_encode_name.exit:                             ; preds = %if.then.i.i, %if.end12.xdr_encode_name.exit_crit_edge
  %len.addr.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %31, %if.end12.xdr_encode_name.exit_crit_edge ]
  %div13.i.i = lshr i32 %len.addr.0.i.i, 2
  %add.ptr2.i.i = getelementptr i32, ptr %incdec.ptr.i.i.i, i32 %div13.i.i
  %35 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr2.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 26
  %37 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %38)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %38
  br i1 %cmp.i, label %xdr_encode_name.exit.if.end14.sink.split.i_crit_edge, label %if.else.i

xdr_encode_name.exit.if.end14.sink.split.i_crit_edge: ; preds = %xdr_encode_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %xdr_encode_name.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %38)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %38
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %xdr_encode_name.exit.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %xdr_encode_name.exit.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %39 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call9, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %42, i32 noundef %sub.ptr.sub.i, i32 noundef %38) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call1(ptr noundef nonnull %call9, ptr noundef %fid, ptr noundef %d_name)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %43 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call9, ptr %call1.i, align 4
  %44 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call9, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %46 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 18
  %47 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %48 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 6
  %50 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 36
  %53 = trunc i32 %52 to i8
  %54 = lshr i8 %53, 6
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  %57 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call9, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @yfs_fs_remove_file(ptr noundef %op) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !375

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %server = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 20
  %7 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %server, align 8
  %flags = getelementptr inbounds %struct.afs_server, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @yfs_fs_remove_file2(ptr noundef %op)
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  %12 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %op, align 8
  %14 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %d_name, align 8
  %sub.i = add i32 %15, -1
  %or.i = or i32 %sub.i, 3
  %add = add i32 %or.i, 37
  %call13 = tail call ptr @afs_alloc_flat_call(ptr noundef %13, ptr noundef nonnull @yfs_RXYFSRemoveFile, i32 noundef %add, i32 noundef 144) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %16 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %request = getelementptr inbounds %struct.afs_call, ptr %call13, i32 0, i32 10
  %17 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %request, align 8
  %incdec.ptr.i = getelementptr i32, ptr %18, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 64136, ptr %18, align 4
  %incdec.ptr.i42 = getelementptr i32, ptr %18, i32 2
  %20 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %21 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %fid, align 8
  %23 = ptrtoint ptr %incdec.ptr.i42 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %incdec.ptr.i42, align 1
  %vnode.i = getelementptr i32, ptr %18, i32 4
  %vnode2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %vnode2.i, align 8
  %26 = ptrtoint ptr %vnode.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %vnode.i, align 1
  %vnode_hi.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %18, i32 6
  %29 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %hi.i, align 1
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %18, i32 7
  %32 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %18, i32 8
  %name.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name.i, align 8
  %35 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %d_name, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %18, i32 9
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %add.ptr.i, align 4
  %38 = call ptr @memcpy(ptr %incdec.ptr.i.i.i, ptr %34, i32 %36)
  %and.i.i = and i32 %36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end16.xdr_encode_name.exit_crit_edge, label %if.then.i.i

if.end16.xdr_encode_name.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_encode_name.exit

if.then.i.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub nuw nsw i32 4, %and.i.i
  %add.ptr.i.i = getelementptr i8, ptr %incdec.ptr.i.i.i, i32 %36
  %39 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  %add.i.i = add i32 %sub.i.i, %36
  br label %xdr_encode_name.exit

xdr_encode_name.exit:                             ; preds = %if.then.i.i, %if.end16.xdr_encode_name.exit_crit_edge
  %len.addr.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %36, %if.end16.xdr_encode_name.exit_crit_edge ]
  %div13.i.i = lshr i32 %len.addr.0.i.i, 2
  %add.ptr2.i.i = getelementptr i32, ptr %incdec.ptr.i.i.i, i32 %div13.i.i
  %40 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr2.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call13, i32 0, i32 26
  %42 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %43)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %43
  br i1 %cmp.i, label %xdr_encode_name.exit.if.end14.sink.split.i_crit_edge, label %if.else.i

xdr_encode_name.exit.if.end14.sink.split.i_crit_edge: ; preds = %xdr_encode_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %xdr_encode_name.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %43)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %43
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %xdr_encode_name.exit.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %xdr_encode_name.exit.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %44 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call13, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %47, i32 noundef %sub.ptr.sub.i, i32 noundef %43) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call1(ptr noundef nonnull %call13, ptr noundef %fid, ptr noundef %d_name)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %48 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call13, ptr %call1.i, align 4
  %49 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call13, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %51 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call13, i32 0, i32 18
  %52 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %53 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call13, i32 0, i32 6
  %55 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call13, i32 0, i32 36
  %58 = trunc i32 %57 to i8
  %59 = lshr i8 %58, 6
  %60 = and i8 %59, 1
  %61 = xor i8 %60, 1
  %62 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call13, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then15, %if.then10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @yfs_fs_remove_dir(ptr noundef %op) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !375

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %7 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %op, align 8
  %9 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d_name, align 8
  %sub.i = add i32 %10, -1
  %or.i = or i32 %sub.i, 3
  %add = add i32 %or.i, 37
  %call9 = tail call ptr @afs_alloc_flat_call(ptr noundef %8, ptr noundef nonnull @yfs_RXYFSRemoveDir, i32 noundef %add, i32 noundef 144) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end12:                                         ; preds = %do.end7
  %request = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 10
  %12 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %request, align 8
  %incdec.ptr.i = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64142, ptr %13, align 4
  %incdec.ptr.i36 = getelementptr i32, ptr %13, i32 2
  %15 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fid, align 8
  %18 = ptrtoint ptr %incdec.ptr.i36 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %incdec.ptr.i36, align 1
  %vnode.i = getelementptr i32, ptr %13, i32 4
  %vnode2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %vnode2.i, align 8
  %21 = ptrtoint ptr %vnode.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %vnode.i, align 1
  %vnode_hi.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %13, i32 6
  %24 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %hi.i, align 1
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %13, i32 7
  %27 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %13, i32 8
  %name.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name.i, align 8
  %30 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %d_name, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %13, i32 9
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %add.ptr.i, align 4
  %33 = call ptr @memcpy(ptr %incdec.ptr.i.i.i, ptr %29, i32 %31)
  %and.i.i = and i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end12.xdr_encode_name.exit_crit_edge, label %if.then.i.i

if.end12.xdr_encode_name.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_encode_name.exit

if.then.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub nuw nsw i32 4, %and.i.i
  %add.ptr.i.i = getelementptr i8, ptr %incdec.ptr.i.i.i, i32 %31
  %34 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  %add.i.i = add i32 %sub.i.i, %31
  br label %xdr_encode_name.exit

xdr_encode_name.exit:                             ; preds = %if.then.i.i, %if.end12.xdr_encode_name.exit_crit_edge
  %len.addr.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %31, %if.end12.xdr_encode_name.exit_crit_edge ]
  %div13.i.i = lshr i32 %len.addr.0.i.i, 2
  %add.ptr2.i.i = getelementptr i32, ptr %incdec.ptr.i.i.i, i32 %div13.i.i
  %35 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr2.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 26
  %37 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %38)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %38
  br i1 %cmp.i, label %xdr_encode_name.exit.if.end14.sink.split.i_crit_edge, label %if.else.i

xdr_encode_name.exit.if.end14.sink.split.i_crit_edge: ; preds = %xdr_encode_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %xdr_encode_name.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %38)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %38
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %xdr_encode_name.exit.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %xdr_encode_name.exit.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %39 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call9, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %42, i32 noundef %sub.ptr.sub.i, i32 noundef %38) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call1(ptr noundef nonnull %call9, ptr noundef %fid, ptr noundef %d_name)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %43 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call9, ptr %call1.i, align 4
  %44 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call9, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %46 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 18
  %47 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %48 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 6
  %50 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 36
  %53 = trunc i32 %52 to i8
  %54 = lshr i8 %53, 6
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  %57 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call9, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @yfs_fs_link(ptr noundef %op) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !375

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %7 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %op, align 8
  %9 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d_name, align 8
  %sub.i = add i32 %10, -1
  %or.i = or i32 %sub.i, 3
  %add11 = add i32 %or.i, 61
  %call12 = tail call ptr @afs_alloc_flat_call(ptr noundef %8, ptr noundef nonnull @yfs_RXYFSLink, i32 noundef %add11, i32 noundef 248) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end15:                                         ; preds = %do.end9
  %request = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 10
  %12 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %request, align 8
  %incdec.ptr.i = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64140, ptr %13, align 4
  %incdec.ptr.i44 = getelementptr i32, ptr %13, i32 2
  %15 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fid, align 8
  %18 = ptrtoint ptr %incdec.ptr.i44 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %incdec.ptr.i44, align 1
  %vnode.i = getelementptr i32, ptr %13, i32 4
  %vnode2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %vnode2.i, align 8
  %21 = ptrtoint ptr %vnode.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %vnode.i, align 1
  %vnode_hi.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %13, i32 6
  %24 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %hi.i, align 1
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %13, i32 7
  %27 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %13, i32 8
  %name.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name.i, align 8
  %30 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %d_name, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %13, i32 9
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %add.ptr.i, align 4
  %33 = call ptr @memcpy(ptr %incdec.ptr.i.i.i, ptr %29, i32 %31)
  %and.i.i = and i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end15.xdr_encode_name.exit_crit_edge, label %if.then.i.i

if.end15.xdr_encode_name.exit_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_encode_name.exit

if.then.i.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub nuw nsw i32 4, %and.i.i
  %add.ptr.i.i = getelementptr i8, ptr %incdec.ptr.i.i.i, i32 %31
  %34 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  %add.i.i = add i32 %sub.i.i, %31
  br label %xdr_encode_name.exit

xdr_encode_name.exit:                             ; preds = %if.then.i.i, %if.end15.xdr_encode_name.exit_crit_edge
  %len.addr.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %31, %if.end15.xdr_encode_name.exit_crit_edge ]
  %div13.i.i = lshr i32 %len.addr.0.i.i, 2
  %add.ptr2.i.i = getelementptr i32, ptr %incdec.ptr.i.i.i, i32 %div13.i.i
  %fid20 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1
  %35 = ptrtoint ptr %fid20 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %fid20, align 8
  %37 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %add.ptr2.i.i, align 1
  %vnode.i45 = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %add.ptr2.i.i, i32 0, i32 1
  %vnode2.i46 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 1
  %38 = ptrtoint ptr %vnode2.i46 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %vnode2.i46, align 8
  %40 = ptrtoint ptr %vnode.i45 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %39, ptr %vnode.i45, align 1
  %vnode_hi.i47 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 2
  %41 = ptrtoint ptr %vnode_hi.i47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vnode_hi.i47, align 8
  %hi.i48 = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %add.ptr2.i.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %hi.i48 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %hi.i48, align 1
  %unique.i49 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 3
  %44 = ptrtoint ptr %unique.i49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %unique.i49, align 4
  %unique5.i50 = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %add.ptr2.i.i, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %unique5.i50 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %unique5.i50, align 1
  %add.ptr.i51 = getelementptr i32, ptr %add.ptr2.i.i, i32 6
  %47 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i51 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 26
  %49 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %50)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %50
  br i1 %cmp.i, label %xdr_encode_name.exit.if.end14.sink.split.i_crit_edge, label %if.else.i

xdr_encode_name.exit.if.end14.sink.split.i_crit_edge: ; preds = %xdr_encode_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %xdr_encode_name.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %50)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %50
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %xdr_encode_name.exit.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %xdr_encode_name.exit.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %51 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call12, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %54, i32 noundef %sub.ptr.sub.i, i32 noundef %50) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call1(ptr noundef nonnull %call12, ptr noundef %fid20, ptr noundef %d_name)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %55 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call12, ptr %call1.i, align 4
  %56 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call12, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %58 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 18
  %59 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %60 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 6
  %62 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %63 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 36
  %65 = trunc i32 %64 to i8
  %66 = lshr i8 %65, 6
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  %69 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call12, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @yfs_fs_symlink(ptr noundef %op) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !375

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %symlink = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %symlink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %symlink, align 8
  %call8 = tail call i32 @strlen(ptr noundef %8) #13
  %9 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %op, align 8
  %11 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d_name, align 8
  %sub.i = add i32 %12, -1
  %or.i = or i32 %sub.i, 3
  %sub.i51 = add i32 %call8, -1
  %or.i52 = or i32 %sub.i51, 3
  %add1.i53 = add i32 %or.i52, 74
  %add12 = add i32 %add1.i53, %or.i
  %call13 = tail call ptr @afs_alloc_flat_call(ptr noundef %10, ptr noundef nonnull @yfs_RXYFSSymlink, i32 noundef %add12, i32 noundef 272) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %13 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end16:                                         ; preds = %do.end7
  %request = getelementptr inbounds %struct.afs_call, ptr %call13, i32 0, i32 10
  %14 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %request, align 8
  %incdec.ptr.i = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 64139, ptr %15, align 4
  %incdec.ptr.i54 = getelementptr i32, ptr %15, i32 2
  %17 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %18 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %fid, align 8
  %20 = ptrtoint ptr %incdec.ptr.i54 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %incdec.ptr.i54, align 1
  %vnode.i = getelementptr i32, ptr %15, i32 4
  %vnode2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %vnode2.i, align 8
  %23 = ptrtoint ptr %vnode.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %vnode.i, align 1
  %vnode_hi.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %15, i32 6
  %26 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %hi.i, align 1
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %15, i32 7
  %29 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %15, i32 8
  %name.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name.i, align 8
  %32 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %d_name, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %15, i32 9
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %add.ptr.i, align 4
  %35 = call ptr @memcpy(ptr %incdec.ptr.i.i.i, ptr %31, i32 %33)
  %and.i.i = and i32 %33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end16.xdr_encode_name.exit_crit_edge, label %if.then.i.i

if.end16.xdr_encode_name.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_encode_name.exit

if.then.i.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub nuw nsw i32 4, %and.i.i
  %add.ptr.i.i = getelementptr i8, ptr %incdec.ptr.i.i.i, i32 %33
  %36 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  %add.i.i = add i32 %sub.i.i, %33
  br label %xdr_encode_name.exit

xdr_encode_name.exit:                             ; preds = %if.then.i.i, %if.end16.xdr_encode_name.exit_crit_edge
  %len.addr.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %33, %if.end16.xdr_encode_name.exit_crit_edge ]
  %div13.i.i = lshr i32 %len.addr.0.i.i, 2
  %add.ptr2.i.i = getelementptr i32, ptr %incdec.ptr.i.i.i, i32 %div13.i.i
  %37 = ptrtoint ptr %symlink to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %symlink, align 8
  %incdec.ptr.i.i = getelementptr i32, ptr %add.ptr2.i.i, i32 1
  %39 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call8, ptr %add.ptr2.i.i, align 4
  %40 = call ptr @memcpy(ptr %incdec.ptr.i.i, ptr %38, i32 %call8)
  %and.i55 = and i32 %call8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool.not.i = icmp eq i32 %and.i55, 0
  br i1 %tobool.not.i, label %xdr_encode_name.exit.xdr_encode_string.exit_crit_edge, label %if.then.i

xdr_encode_name.exit.xdr_encode_string.exit_crit_edge: ; preds = %xdr_encode_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_encode_string.exit

if.then.i:                                        ; preds = %xdr_encode_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i56 = sub nuw nsw i32 4, %and.i55
  %add.ptr.i57 = getelementptr i8, ptr %incdec.ptr.i.i, i32 %call8
  %41 = call ptr @memset(ptr %add.ptr.i57, i32 0, i32 %sub.i56)
  %add.i = add i32 %sub.i56, %call8
  br label %xdr_encode_string.exit

xdr_encode_string.exit:                           ; preds = %if.then.i, %xdr_encode_name.exit.xdr_encode_string.exit_crit_edge
  %len.addr.0.i = phi i32 [ %add.i, %if.then.i ], [ %call8, %xdr_encode_name.exit.xdr_encode_string.exit_crit_edge ]
  %div13.i = lshr i32 %len.addr.0.i, 2
  %add.ptr2.i = getelementptr i32, ptr %incdec.ptr.i.i, i32 %div13.i
  %mtime = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 10
  %42 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %mtime, align 8
  %mul.i.i = mul i64 %43, 10000000
  %tv_nsec.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 10, i32 1
  %44 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tv_nsec.i.i, align 8
  %div.i.i = sdiv i32 %45, 100
  %conv.i.i = sext i32 %div.i.i to i64
  %add.i.i59 = add i64 %mul.i.i, %conv.i.i
  %46 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 9, ptr %add.ptr2.i, align 1
  %mode6.i = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, ptr %add.ptr2.i, i32 0, i32 1
  %47 = ptrtoint ptr %mode6.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 511, ptr %mode6.i, align 1
  %mtime_client.i = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, ptr %add.ptr2.i, i32 0, i32 2
  %48 = ptrtoint ptr %mtime_client.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %add.i.i59, ptr %mtime_client.i, align 1
  %owner.i = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, ptr %add.ptr2.i, i32 0, i32 3
  %add.ptr.i60 = getelementptr i32, ptr %add.ptr2.i, i32 8
  %49 = call ptr @memset(ptr %owner.i, i32 0, i32 16)
  %50 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i60 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call13, i32 0, i32 26
  %52 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %53)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %53
  br i1 %cmp.i, label %xdr_encode_string.exit.if.end14.sink.split.i_crit_edge, label %if.else.i

xdr_encode_string.exit.if.end14.sink.split.i_crit_edge: ; preds = %xdr_encode_string.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %xdr_encode_string.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %53)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %53
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %xdr_encode_string.exit.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %xdr_encode_string.exit.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %54 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call13, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %57, i32 noundef %sub.ptr.sub.i, i32 noundef %53) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call1(ptr noundef nonnull %call13, ptr noundef %fid, ptr noundef %d_name)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %58 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call13, ptr %call1.i, align 4
  %59 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call13, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %61 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call13, i32 0, i32 18
  %62 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %63 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call13, i32 0, i32 6
  %65 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call13, i32 0, i32 36
  %68 = trunc i32 %67 to i8
  %69 = lshr i8 %68, 6
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  %72 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call13, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @yfs_fs_rename(ptr noundef %op) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !375

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %9 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %op, align 8
  %11 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d_name, align 8
  %sub.i = add i32 %12, -1
  %or.i = or i32 %sub.i, 3
  %13 = ptrtoint ptr %d_name3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %d_name3, align 8
  %sub.i54 = add i32 %14, -1
  %or.i55 = or i32 %sub.i54, 3
  %add1.i56 = add i32 %or.i, 66
  %add15 = add i32 %add1.i56, %or.i55
  %call16 = tail call ptr @afs_alloc_flat_call(ptr noundef %10, ptr noundef nonnull @yfs_RXYFSRename, i32 noundef %add15, i32 noundef 248) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %15 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end19:                                         ; preds = %do.end10
  %request = getelementptr inbounds %struct.afs_call, ptr %call16, i32 0, i32 10
  %16 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %request, align 8
  %incdec.ptr.i = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 64138, ptr %17, align 4
  %incdec.ptr.i57 = getelementptr i32, ptr %17, i32 2
  %19 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fid, align 8
  %22 = ptrtoint ptr %incdec.ptr.i57 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %incdec.ptr.i57, align 1
  %vnode.i = getelementptr i32, ptr %17, i32 4
  %vnode2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %vnode2.i, align 8
  %25 = ptrtoint ptr %vnode.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %vnode.i, align 1
  %vnode_hi.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %17, i32 6
  %28 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %hi.i, align 1
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %17, i32 7
  %31 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %17, i32 8
  %name.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name.i, align 8
  %34 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %d_name, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %17, i32 9
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %add.ptr.i, align 4
  %37 = call ptr @memcpy(ptr %incdec.ptr.i.i.i, ptr %33, i32 %35)
  %and.i.i = and i32 %35, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end19.xdr_encode_name.exit_crit_edge, label %if.then.i.i

if.end19.xdr_encode_name.exit_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_encode_name.exit

if.then.i.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub nuw nsw i32 4, %and.i.i
  %add.ptr.i.i = getelementptr i8, ptr %incdec.ptr.i.i.i, i32 %35
  %38 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  %add.i.i = add i32 %sub.i.i, %35
  br label %xdr_encode_name.exit

xdr_encode_name.exit:                             ; preds = %if.then.i.i, %if.end19.xdr_encode_name.exit_crit_edge
  %len.addr.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %35, %if.end19.xdr_encode_name.exit_crit_edge ]
  %div13.i.i = lshr i32 %len.addr.0.i.i, 2
  %add.ptr2.i.i = getelementptr i32, ptr %incdec.ptr.i.i.i, i32 %div13.i.i
  %fid24 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1
  %39 = ptrtoint ptr %fid24 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %fid24, align 8
  %41 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %add.ptr2.i.i, align 1
  %vnode.i58 = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %add.ptr2.i.i, i32 0, i32 1
  %vnode2.i59 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 1
  %42 = ptrtoint ptr %vnode2.i59 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %vnode2.i59, align 8
  %44 = ptrtoint ptr %vnode.i58 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %43, ptr %vnode.i58, align 1
  %vnode_hi.i60 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 2
  %45 = ptrtoint ptr %vnode_hi.i60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vnode_hi.i60, align 8
  %hi.i61 = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %add.ptr2.i.i, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %hi.i61 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %hi.i61, align 1
  %unique.i62 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 3
  %48 = ptrtoint ptr %unique.i62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %unique.i62, align 4
  %unique5.i63 = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %add.ptr2.i.i, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %unique5.i63 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %unique5.i63, align 1
  %add.ptr.i64 = getelementptr i32, ptr %add.ptr2.i.i, i32 6
  %name.i65 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %name.i65 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name.i65, align 8
  %53 = ptrtoint ptr %d_name3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %d_name3, align 8
  %incdec.ptr.i.i.i66 = getelementptr i32, ptr %add.ptr.i64, i32 1
  %55 = ptrtoint ptr %add.ptr.i64 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %add.ptr.i64, align 4
  %56 = call ptr @memcpy(ptr %incdec.ptr.i.i.i66, ptr %52, i32 %54)
  %and.i.i67 = and i32 %54, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i67)
  %tobool.not.i.i68 = icmp eq i32 %and.i.i67, 0
  br i1 %tobool.not.i.i68, label %xdr_encode_name.exit.xdr_encode_name.exit76_crit_edge, label %if.then.i.i72

xdr_encode_name.exit.xdr_encode_name.exit76_crit_edge: ; preds = %xdr_encode_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_encode_name.exit76

if.then.i.i72:                                    ; preds = %xdr_encode_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i69 = sub nuw nsw i32 4, %and.i.i67
  %add.ptr.i.i70 = getelementptr i8, ptr %incdec.ptr.i.i.i66, i32 %54
  %57 = call ptr @memset(ptr %add.ptr.i.i70, i32 0, i32 %sub.i.i69)
  %add.i.i71 = add i32 %sub.i.i69, %54
  br label %xdr_encode_name.exit76

xdr_encode_name.exit76:                           ; preds = %if.then.i.i72, %xdr_encode_name.exit.xdr_encode_name.exit76_crit_edge
  %len.addr.0.i.i73 = phi i32 [ %add.i.i71, %if.then.i.i72 ], [ %54, %xdr_encode_name.exit.xdr_encode_name.exit76_crit_edge ]
  %div13.i.i74 = lshr i32 %len.addr.0.i.i73, 2
  %add.ptr2.i.i75 = getelementptr i32, ptr %incdec.ptr.i.i.i66, i32 %div13.i.i74
  %58 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr2.i.i75 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %59 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call16, i32 0, i32 26
  %60 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %61)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %61
  br i1 %cmp.i, label %xdr_encode_name.exit76.if.end14.sink.split.i_crit_edge, label %if.else.i

xdr_encode_name.exit76.if.end14.sink.split.i_crit_edge: ; preds = %xdr_encode_name.exit76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %xdr_encode_name.exit76
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %61)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %61
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %xdr_encode_name.exit76.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %xdr_encode_name.exit76.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %62 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call16, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %65, i32 noundef %sub.ptr.sub.i, i32 noundef %61) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call2(ptr noundef nonnull %call16, ptr noundef %fid, ptr noundef %d_name, ptr noundef %d_name3)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %66 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call16, ptr %call1.i, align 4
  %67 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call16, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %69 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call16, i32 0, i32 18
  %70 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %71 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call16, i32 0, i32 6
  %73 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call16, i32 0, i32 36
  %76 = trunc i32 %75 to i8
  %77 = lshr i8 %76, 6
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  %80 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call16, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then18
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_make_fs_call2(ptr noundef %call, ptr noundef %fid, ptr noundef %name, ptr noundef %name2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_fs_call2, i32 0, i32 1), ptr blockaddress(@trace_afs_make_fs_call2, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !376

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !375

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !383
  %call43 = tail call i32 @__traceiter_afs_make_fs_call2(ptr noundef null, ptr noundef %call, ptr noundef %fid, ptr noundef %name, ptr noundef %name2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !384
  %13 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !375

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !379
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 902, ptr noundef nonnull @.str.59) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !380
  %31 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
define dso_local void @yfs_fs_store_data(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body10_crit_edge, label %do.end, !prof !375

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

do.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm, ptr noundef nonnull @.str.13, i32 noundef %cond.i, i64 noundef %10, i64 noundef %12) #12
  br label %do.body10

do.body10:                                        ; preds = %key_serial.exit, %entry.do.body10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %13 = load i32, ptr @afs_debug, align 4
  %and11 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body10.do.end31_crit_edge, label %do.end22, !prof !375

do.body10.do.end31_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

do.end22:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %14 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i78 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i78 to ptr
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
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %comm26, i64 noundef %19, i64 noundef %21, i64 noundef %23) #12
  br label %do.end31

do.end31:                                         ; preds = %do.end22, %do.body10.do.end31_crit_edge
  %24 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %op, align 8
  %call32 = tail call ptr @afs_alloc_flat_call(ptr noundef %25, ptr noundef nonnull @yfs_RXYFSStoreData64, i32 noundef 88, i32 noundef 144) #9
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %26 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end35:                                         ; preds = %do.end31
  %27 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %write_iter36 = getelementptr inbounds %struct.afs_call, ptr %call32, i32 0, i32 13
  %30 = ptrtoint ptr %write_iter36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %write_iter36, align 8
  %request = getelementptr inbounds %struct.afs_call, ptr %call32, i32 0, i32 10
  %31 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %request, align 8
  %incdec.ptr.i = getelementptr i32, ptr %32, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 64538, ptr %32, align 4
  %incdec.ptr.i79 = getelementptr i32, ptr %32, i32 2
  %34 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid39 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %35 = ptrtoint ptr %fid39 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %fid39, align 8
  %37 = ptrtoint ptr %incdec.ptr.i79 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %incdec.ptr.i79, align 1
  %vnode.i = getelementptr i32, ptr %32, i32 4
  %vnode2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %vnode2.i, align 8
  %40 = ptrtoint ptr %vnode.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %39, ptr %vnode.i, align 1
  %vnode_hi.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %32, i32 6
  %43 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %hi.i, align 1
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %44 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %32, i32 7
  %46 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %32, i32 8
  %mtime = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 10
  %47 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %mtime, align 8
  %mul.i.i = mul i64 %48, 10000000
  %tv_nsec.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 10, i32 1
  %49 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tv_nsec.i.i, align 8
  %div.i.i = sdiv i32 %50, 100
  %conv.i.i = sext i32 %div.i.i to i64
  %add.i.i = add i64 %mul.i.i, %conv.i.i
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 1, ptr %add.ptr.i, align 1
  %mode6.i = getelementptr i32, ptr %32, i32 9
  %52 = ptrtoint ptr %mode6.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 0, ptr %mode6.i, align 1
  %mtime_client.i = getelementptr i32, ptr %32, i32 10
  %53 = ptrtoint ptr %mtime_client.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %add.i.i, ptr %mtime_client.i, align 1
  %owner.i = getelementptr i32, ptr %32, i32 12
  %add.ptr.i81 = getelementptr i32, ptr %32, i32 16
  %54 = call ptr @memset(ptr %owner.i, i32 0, i32 16)
  %pos42 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 1
  %55 = ptrtoint ptr %pos42 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %pos42, align 8
  %57 = ptrtoint ptr %add.ptr.i81 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %56, ptr %add.ptr.i81, align 1
  %add.ptr.i82 = getelementptr i32, ptr %32, i32 18
  %size44 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 2
  %58 = ptrtoint ptr %size44 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %size44, align 8
  %60 = ptrtoint ptr %add.ptr.i82 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 %59, ptr %add.ptr.i82, align 1
  %add.ptr.i83 = getelementptr i32, ptr %32, i32 20
  %i_size46 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17, i32 0, i32 0, i32 7
  %61 = ptrtoint ptr %i_size46 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %i_size46, align 8
  %63 = ptrtoint ptr %add.ptr.i83 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 %62, ptr %add.ptr.i83, align 1
  %add.ptr.i84 = getelementptr i32, ptr %32, i32 22
  %64 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i84 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call32, i32 0, i32 26
  %65 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %66)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %66
  br i1 %cmp.i, label %if.end35.if.end14.sink.split.i_crit_edge, label %if.else.i

if.end35.if.end14.sink.split.i_crit_edge:         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %66)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %66
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %if.end35.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %if.end35.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %67 = ptrtoint ptr %call32 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call32, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %70, i32 noundef %sub.ptr.sub.i, i32 noundef %66) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call32, ptr noundef %fid39)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %71 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call32, ptr %call1.i, align 4
  %72 = ptrtoint ptr %call32 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call32, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %74 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call32, i32 0, i32 18
  %75 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %76 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call32, i32 0, i32 6
  %78 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %79 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call32, i32 0, i32 36
  %81 = trunc i32 %80 to i8
  %82 = lshr i8 %81, 6
  %83 = and i8 %82, 1
  %84 = xor i8 %83, 1
  %85 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call32, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @yfs_fs_setattr(ptr noundef %op) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool3.not, label %if.then.do.end10.i_crit_edge, label %do.end.i, !prof !375

if.then.do.end10.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10.i

do.end.i:                                         ; preds = %if.then
  %6 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm.i, ptr noundef nonnull @.str.86, i32 noundef %cond.i.i, i64 noundef %15, i64 noundef %17) #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %key_serial.exit.i, %if.then.do.end10.i_crit_edge
  %18 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %op, align 8
  %call11.i = tail call ptr @afs_alloc_flat_call(ptr noundef %19, ptr noundef nonnull @yfs_RXYFSStoreData64_as_Status, i32 noundef 88, i32 noundef 144) #9
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end14.i

if.then13.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %error.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %20 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -12, ptr %error.i.i, align 2
  br label %cleanup

if.end14.i:                                       ; preds = %do.end10.i
  %request.i = getelementptr inbounds %struct.afs_call, ptr %call11.i, i32 0, i32 10
  %21 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %request.i, align 8
  %incdec.ptr.i.i = getelementptr i32, ptr %22, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 64538, ptr %22, align 4
  %incdec.ptr.i49.i = getelementptr i32, ptr %22, i32 2
  %24 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %incdec.ptr.i.i, align 4
  %fid17.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %25 = ptrtoint ptr %fid17.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %fid17.i, align 8
  %27 = ptrtoint ptr %incdec.ptr.i49.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %incdec.ptr.i49.i, align 1
  %vnode.i.i = getelementptr i32, ptr %22, i32 4
  %vnode2.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %vnode2.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %vnode2.i.i, align 8
  %30 = ptrtoint ptr %vnode.i.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %vnode.i.i, align 1
  %vnode_hi.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %vnode_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vnode_hi.i.i, align 8
  %hi.i.i = getelementptr i32, ptr %22, i32 6
  %33 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %hi.i.i, align 1
  %unique.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %unique.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %unique.i.i, align 4
  %unique5.i.i = getelementptr i32, ptr %22, i32 7
  %36 = ptrtoint ptr %unique5.i.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %unique5.i.i, align 1
  %add.ptr.i.i = getelementptr i32, ptr %22, i32 8
  %call19.i = tail call fastcc ptr @xdr_encode_YFS_StoreStatus(ptr noundef %add.ptr.i.i, ptr noundef %2) #9
  %ia_size.i = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 4
  %37 = ptrtoint ptr %ia_size.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ia_size.i, align 8
  %39 = ptrtoint ptr %call19.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %38, ptr %call19.i, align 1
  %add.ptr.i50.i = getelementptr i32, ptr %call19.i, i32 2
  %40 = ptrtoint ptr %add.ptr.i50.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 0, ptr %add.ptr.i50.i, align 1
  %add.ptr.i51.i = getelementptr i32, ptr %call19.i, i32 4
  %41 = load i64, ptr %ia_size.i, align 8
  %42 = ptrtoint ptr %add.ptr.i51.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %41, ptr %add.ptr.i51.i, align 1
  %add.ptr.i52.i = getelementptr i32, ptr %call19.i, i32 6
  %43 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %request.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i52.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %request_size.i.i = getelementptr inbounds %struct.afs_call, ptr %call11.i, i32 0, i32 26
  %45 = ptrtoint ptr %request_size.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %request_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %46)
  %cmp.i.i = icmp ugt i32 %sub.ptr.sub.i.i, %46
  br i1 %cmp.i.i, label %if.end14.i.if.end14.sink.split.i.i_crit_edge, label %if.else.i.i

if.end14.i.if.end14.sink.split.i.i_crit_edge:     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %46)
  %cmp4.i.i = icmp ult i32 %sub.ptr.sub.i.i, %46
  br i1 %cmp4.i.i, label %if.else.i.i.if.end14.sink.split.i.i_crit_edge, label %if.else.i.i.yfs_check_req.exit.i_crit_edge

if.else.i.i.yfs_check_req.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit.i

if.else.i.i.if.end14.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i.i

if.end14.sink.split.i.i:                          ; preds = %if.else.i.i.if.end14.sink.split.i.i_crit_edge, %if.end14.i.if.end14.sink.split.i.i_crit_edge
  %.str.56.sink.i.i = phi ptr [ @.str.53, %if.end14.i.if.end14.sink.split.i.i_crit_edge ], [ @.str.56, %if.else.i.i.if.end14.sink.split.i.i_crit_edge ]
  %47 = ptrtoint ptr %call11.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call11.i, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i.i, ptr noundef %50, i32 noundef %sub.ptr.sub.i.i, i32 noundef %46) #12
  br label %yfs_check_req.exit.i

yfs_check_req.exit.i:                             ; preds = %if.end14.sink.split.i.i, %if.else.i.i.yfs_check_req.exit.i_crit_edge
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call11.i, ptr noundef %fid17.i) #9
  %call1.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %51 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call11.i, ptr %call1.i.i, align 4
  %52 = ptrtoint ptr %call11.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call11.i, align 8
  %type2.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %54 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %type2.i.i, align 8
  %op3.i.i = getelementptr inbounds %struct.afs_call, ptr %call11.i, i32 0, i32 18
  %55 = ptrtoint ptr %op3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %op, ptr %op3.i.i, align 4
  %key.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %56 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %key.i.i, align 4
  %key4.i.i = getelementptr inbounds %struct.afs_call, ptr %call11.i, i32 0, i32 6
  %58 = ptrtoint ptr %key4.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %key4.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %59 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i.i, align 8
  %intr.i.i = getelementptr inbounds %struct.afs_call, ptr %call11.i, i32 0, i32 36
  %61 = trunc i32 %60 to i8
  %62 = lshr i8 %61, 6
  %63 = and i8 %62, 1
  %64 = xor i8 %63, 1
  %65 = ptrtoint ptr %intr.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %intr.i.i, align 1
  %ac.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i.i, ptr noundef nonnull %call11.i, i32 noundef 3136) #9
  br label %cleanup

do.body:                                          ; preds = %entry
  br i1 %tobool3.not, label %do.body.do.end14_crit_edge, label %do.end, !prof !375

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

do.end:                                           ; preds = %do.body
  %66 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i46 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i46 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 101
  %key = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %70 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %key, align 4
  %tobool.not.i47 = icmp eq ptr %71, null
  br i1 %tobool.not.i47, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %serial.i = getelementptr inbounds %struct.key, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %73, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %74 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %fid, align 8
  %vnode = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %vnode, align 8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm, ptr noundef nonnull @.str.17, i32 noundef %cond.i, i64 noundef %75, i64 noundef %77) #12
  br label %do.end14

do.end14:                                         ; preds = %key_serial.exit, %do.body.do.end14_crit_edge
  %78 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %op, align 8
  %call15 = tail call ptr @afs_alloc_flat_call(ptr noundef %79, ptr noundef nonnull @yfs_RXYFSStoreStatus, i32 noundef 64, i32 noundef 144) #9
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %80 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end18:                                         ; preds = %do.end14
  %request = getelementptr inbounds %struct.afs_call, ptr %call15, i32 0, i32 10
  %81 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %request, align 8
  %incdec.ptr.i = getelementptr i32, ptr %82, i32 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 64135, ptr %82, align 4
  %incdec.ptr.i48 = getelementptr i32, ptr %82, i32 2
  %84 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid21 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %85 = ptrtoint ptr %fid21 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %fid21, align 8
  %87 = ptrtoint ptr %incdec.ptr.i48 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 8)
  store i64 %86, ptr %incdec.ptr.i48, align 1
  %vnode.i49 = getelementptr i32, ptr %82, i32 4
  %vnode2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %vnode2.i, align 8
  %90 = ptrtoint ptr %vnode.i49 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 8)
  store i64 %89, ptr %vnode.i49, align 1
  %vnode_hi.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %91 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %82, i32 6
  %93 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %92, ptr %hi.i, align 1
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %94 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %82, i32 7
  %96 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %95, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %82, i32 8
  %call23 = tail call fastcc ptr @xdr_encode_YFS_StoreStatus(ptr noundef %add.ptr.i, ptr noundef %2)
  %97 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call23 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %98 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call15, i32 0, i32 26
  %99 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %100)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %100
  br i1 %cmp.i, label %if.end18.if.end14.sink.split.i_crit_edge, label %if.else.i

if.end18.if.end14.sink.split.i_crit_edge:         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %100)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %100
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %if.end18.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %if.end18.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %101 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call15, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %104, i32 noundef %sub.ptr.sub.i, i32 noundef %100) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call15, ptr noundef %fid21)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %105 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call15, ptr %call1.i, align 4
  %106 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call15, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %108 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %107, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call15, i32 0, i32 18
  %109 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %op, ptr %op3.i, align 4
  %key.i52 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %110 = ptrtoint ptr %key.i52 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %key.i52, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call15, i32 0, i32 6
  %112 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %113 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call15, i32 0, i32 36
  %115 = trunc i32 %114 to i8
  %116 = lshr i8 %115, 6
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  %119 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call15, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then17, %yfs_check_req.exit.i, %if.then13.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xdr_encode_YFS_StoreStatus(ptr noundef writeonly %bp, ptr nocapture noundef readonly %attr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6
  %2 = ptrtoint ptr %ia_mtime to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ia_mtime, align 8
  %mul.i = mul i64 %3, 10000000
  %tv_nsec.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %5, 100
  %conv.i = sext i32 %div.i to i64
  %add.i = add i64 %mul.i, %conv.i
  %extract.t = trunc i64 %add.i to i32
  %extract = lshr i64 %add.i, 32
  %extract.t57 = trunc i64 %extract to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mtime.0.off0 = phi i32 [ %extract.t, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %mtime.0.off32 = phi i32 [ %extract.t57, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %mask.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or5 = or i32 %mask.0, 2
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack47 = load i32, ptr %ia_uid, align 8
  %7 = insertvalue [1 x i32] undef, i32 %.unpack47, 0
  %call6 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %7) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %owner.0.off0 = phi i32 [ %call6, %if.then4 ], [ 0, %if.end.if.end7_crit_edge ]
  %mask.1 = phi i32 [ %or5, %if.then4 ], [ %mask.0, %if.end.if.end7_crit_edge ]
  %8 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attr, align 8
  %and9 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end16_crit_edge, label %if.then11

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %or12 = or i32 %mask.1, 4
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %10 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack = load i32, ptr %ia_gid, align 4
  %11 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call14 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %11) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end7.if.end16_crit_edge
  %group.0.off0 = phi i32 [ %call14, %if.then11 ], [ 0, %if.end7.if.end16_crit_edge ]
  %mask.2 = phi i32 [ %or12, %if.then11 ], [ %mask.1, %if.end7.if.end16_crit_edge ]
  %12 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %attr, align 8
  %and18 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end24_crit_edge, label %if.then20

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %or21 = or i32 %mask.2, 8
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %14 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ia_mode, align 4
  %16 = and i16 %15, 4095
  %and23 = zext i16 %16 to i32
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end16.if.end24_crit_edge
  %mask.3 = phi i32 [ %or21, %if.then20 ], [ %mask.2, %if.end16.if.end24_crit_edge ]
  %mode.0 = phi i32 [ %and23, %if.then20 ], [ 0, %if.end16.if.end24_crit_edge ]
  %17 = ptrtoint ptr %bp to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %mask.3, ptr %bp, align 1
  %mode26 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, ptr %bp, i32 0, i32 1
  %18 = ptrtoint ptr %mode26 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %mode.0, ptr %mode26, align 1
  %mtime_client = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, ptr %bp, i32 0, i32 2
  %tmp.sroa.4.0.insert.ext = zext i32 %mtime.0.off0 to i64
  %tmp.sroa.0.0.insert.ext = zext i32 %mtime.0.off32 to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %tmp.sroa.0.0.insert.insert = or i64 %tmp.sroa.0.0.insert.shift, %tmp.sroa.4.0.insert.ext
  %19 = ptrtoint ptr %mtime_client to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %tmp.sroa.0.0.insert.insert, ptr %mtime_client, align 1
  %owner27 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, ptr %bp, i32 0, i32 3
  %tmp28.sroa.4.0.insert.ext = zext i32 %owner.0.off0 to i64
  %20 = ptrtoint ptr %owner27 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %tmp28.sroa.4.0.insert.ext, ptr %owner27, align 1
  %group29 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, ptr %bp, i32 0, i32 4
  %tmp30.sroa.4.0.insert.ext = zext i32 %group.0.off0 to i64
  %21 = ptrtoint ptr %group29 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %tmp30.sroa.4.0.insert.ext, ptr %group29, align 1
  %add.ptr = getelementptr i32, ptr %bp, i32 8
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @yfs_fs_get_volume_status(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !375

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call8 = tail call ptr @afs_alloc_flat_call(ptr noundef %6, ptr noundef nonnull @yfs_RXYFSGetVolumeStatus, i32 noundef 16, i32 noundef 1025) #9
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
  %request = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 10
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request, align 8
  %incdec.ptr.i = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 64149, ptr %9, align 4
  %incdec.ptr.i29 = getelementptr i32, ptr %9, i32 2
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fid, align 8
  %14 = ptrtoint ptr %incdec.ptr.i29 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %incdec.ptr.i29, align 1
  %add.ptr.i = getelementptr i32, ptr %9, i32 4
  %15 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 26
  %16 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %17)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %17
  br i1 %cmp.i, label %if.end11.if.end14.sink.split.i_crit_edge, label %if.else.i

if.end11.if.end14.sink.split.i_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %17)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %17
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %if.end11.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %if.end11.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %18 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call8, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %21, i32 noundef %sub.ptr.sub.i, i32 noundef %17) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call8, ptr noundef %fid)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %22 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call8, ptr %call1.i, align 4
  %23 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call8, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %25 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 18
  %26 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %27 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 6
  %29 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 36
  %32 = trunc i32 %31 to i8
  %33 = lshr i8 %32, 6
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  %36 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call8, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @yfs_fs_set_lock(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !375

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call8 = tail call ptr @afs_alloc_flat_call(ptr noundef %6, ptr noundef nonnull @yfs_RXYFSSetLock, i32 noundef 36, i32 noundef 144) #9
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
  %request = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 10
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request, align 8
  %incdec.ptr.i = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 64156, ptr %9, align 4
  %incdec.ptr.i34 = getelementptr i32, ptr %9, i32 2
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fid, align 8
  %14 = ptrtoint ptr %incdec.ptr.i34 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %incdec.ptr.i34, align 1
  %vnode.i = getelementptr i32, ptr %9, i32 4
  %vnode2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %vnode2.i, align 8
  %17 = ptrtoint ptr %vnode.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %vnode.i, align 1
  %vnode_hi.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %9, i32 6
  %20 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %hi.i, align 1
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %9, i32 7
  %23 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %9, i32 8
  %24 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %incdec.ptr.i35 = getelementptr i32, ptr %9, i32 9
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %add.ptr.i, align 4
  %28 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr.i35 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 26
  %29 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %30)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %30
  br i1 %cmp.i, label %if.end11.if.end14.sink.split.i_crit_edge, label %if.else.i

if.end11.if.end14.sink.split.i_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %30)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %30
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %if.end11.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %if.end11.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %31 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call8, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %34, i32 noundef %sub.ptr.sub.i, i32 noundef %30) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  %35 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %24, align 8
  tail call fastcc void @trace_afs_make_fs_calli(ptr noundef nonnull %call8, ptr noundef %fid, i32 noundef %36)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %37 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8, ptr %call1.i, align 4
  %38 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call8, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %40 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 18
  %41 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %42 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 6
  %44 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 36
  %47 = trunc i32 %46 to i8
  %48 = lshr i8 %47, 6
  %49 = and i8 %48, 1
  %50 = xor i8 %49, 1
  %51 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call8, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_make_fs_calli(ptr noundef %call, ptr noundef %fid, i32 noundef %i) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_fs_calli, i32 0, i32 1), ptr blockaddress(@trace_afs_make_fs_calli, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !376

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !375

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !385
  %call43 = tail call i32 @__traceiter_afs_make_fs_calli(ptr noundef null, ptr noundef %call, ptr noundef %fid, i32 noundef %i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !386
  %13 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !375

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !379
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 823, ptr noundef nonnull @.str.59) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !380
  %31 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
define dso_local void @yfs_fs_extend_lock(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !375

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call8 = tail call ptr @afs_alloc_flat_call(ptr noundef %6, ptr noundef nonnull @yfs_RXYFSExtendLock, i32 noundef 32, i32 noundef 144) #9
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
  %request = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 10
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request, align 8
  %incdec.ptr.i = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 64157, ptr %9, align 4
  %incdec.ptr.i29 = getelementptr i32, ptr %9, i32 2
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fid, align 8
  %14 = ptrtoint ptr %incdec.ptr.i29 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %incdec.ptr.i29, align 1
  %vnode.i = getelementptr i32, ptr %9, i32 4
  %vnode2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %vnode2.i, align 8
  %17 = ptrtoint ptr %vnode.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %vnode.i, align 1
  %vnode_hi.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %9, i32 6
  %20 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %hi.i, align 1
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %9, i32 7
  %23 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %9, i32 8
  %24 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 26
  %25 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %26)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %26
  br i1 %cmp.i, label %if.end11.if.end14.sink.split.i_crit_edge, label %if.else.i

if.end11.if.end14.sink.split.i_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %26)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %26
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %if.end11.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %if.end11.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %27 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call8, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %30, i32 noundef %sub.ptr.sub.i, i32 noundef %26) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call8, ptr noundef %fid)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %31 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call8, ptr %call1.i, align 4
  %32 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call8, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %34 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 18
  %35 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %36 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 6
  %38 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 36
  %41 = trunc i32 %40 to i8
  %42 = lshr i8 %41, 6
  %43 = and i8 %42, 1
  %44 = xor i8 %43, 1
  %45 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call8, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @yfs_fs_release_lock(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !375

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %5 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %op, align 8
  %call8 = tail call ptr @afs_alloc_flat_call(ptr noundef %6, ptr noundef nonnull @yfs_RXYFSReleaseLock, i32 noundef 32, i32 noundef 144) #9
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
  %request = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 10
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request, align 8
  %incdec.ptr.i = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 64158, ptr %9, align 4
  %incdec.ptr.i29 = getelementptr i32, ptr %9, i32 2
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fid, align 8
  %14 = ptrtoint ptr %incdec.ptr.i29 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %incdec.ptr.i29, align 1
  %vnode.i = getelementptr i32, ptr %9, i32 4
  %vnode2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %vnode2.i, align 8
  %17 = ptrtoint ptr %vnode.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %vnode.i, align 1
  %vnode_hi.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %9, i32 6
  %20 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %hi.i, align 1
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %9, i32 7
  %23 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %9, i32 8
  %24 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 26
  %25 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %26)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %26
  br i1 %cmp.i, label %if.end11.if.end14.sink.split.i_crit_edge, label %if.else.i

if.end11.if.end14.sink.split.i_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %26)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %26
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %if.end11.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %if.end11.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %27 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call8, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %30, i32 noundef %sub.ptr.sub.i, i32 noundef %26) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call8, ptr noundef %fid)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %31 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call8, ptr %call1.i, align 4
  %32 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call8, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %34 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 18
  %35 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %36 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 6
  %38 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 36
  %41 = trunc i32 %40 to i8
  %42 = lshr i8 %41, 6
  %43 = and i8 %42, 1
  %44 = xor i8 %43, 1
  %45 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call8, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @yfs_fs_fetch_status(ptr noundef %op) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !375

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm, ptr noundef nonnull @.str.22, i32 noundef %cond.i, i64 noundef %13, i64 noundef %15) #12
  br label %do.end9

do.end9:                                          ; preds = %key_serial.exit, %entry.do.end9_crit_edge
  %16 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %op, align 8
  %call10 = tail call ptr @afs_alloc_flat_call(ptr noundef %17, ptr noundef nonnull @yfs_RXYFSFetchStatus, i32 noundef 32, i32 noundef 160) #9
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
  %request = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 10
  %19 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %request, align 8
  %incdec.ptr.i = getelementptr i32, ptr %20, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 64132, ptr %20, align 4
  %incdec.ptr.i36 = getelementptr i32, ptr %20, i32 2
  %22 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid16 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 %2, i32 1
  %23 = ptrtoint ptr %fid16 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %fid16, align 8
  %25 = ptrtoint ptr %incdec.ptr.i36 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %incdec.ptr.i36, align 1
  %vnode.i = getelementptr i32, ptr %20, i32 4
  %vnode2.i = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 %2, i32 1, i32 1
  %26 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %vnode2.i, align 8
  %28 = ptrtoint ptr %vnode.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %vnode.i, align 1
  %vnode_hi.i = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 %2, i32 1, i32 2
  %29 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %20, i32 6
  %31 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %hi.i, align 1
  %unique.i = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 %2, i32 1, i32 3
  %32 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %20, i32 7
  %34 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %20, i32 8
  %35 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 26
  %36 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %37)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %37
  br i1 %cmp.i, label %if.end13.if.end14.sink.split.i_crit_edge, label %if.else.i

if.end13.if.end14.sink.split.i_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %37)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %37
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %if.end13.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %if.end13.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %38 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call10, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %41, i32 noundef %sub.ptr.sub.i, i32 noundef %37) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call10, ptr noundef %fid16)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %42 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call10, ptr %call1.i, align 4
  %43 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call10, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %45 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 18
  %46 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %47 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 6
  %49 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 36
  %52 = trunc i32 %51 to i8
  %53 = lshr i8 %52, 6
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  %56 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call10, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @yfs_fs_inline_bulk_status(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.end, !prof !375

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %fid = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1
  %9 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fid, align 8
  %vnode = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 1
  %11 = ptrtoint ptr %vnode to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %vnode, align 8
  %nr_files = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 12
  %13 = ptrtoint ptr %nr_files to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nr_files, align 8
  %conv = sext i16 %14 to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %comm, ptr noundef nonnull @.str.24, i32 noundef %cond.i, i64 noundef %10, i64 noundef %12, i32 noundef %conv) #12
  br label %do.end11

do.end11:                                         ; preds = %key_serial.exit, %entry.do.end11_crit_edge
  %15 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %op, align 8
  %nr_files12 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 12
  %17 = ptrtoint ptr %nr_files12 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nr_files12, align 8
  %conv13 = sext i16 %18 to i32
  %mul = mul nsw i32 %conv13, 24
  %add = add nsw i32 %mul, 12
  %call14 = tail call ptr @afs_alloc_flat_call(ptr noundef %16, ptr noundef nonnull @yfs_RXYFSInlineBulkStatus, i32 noundef %add, i32 noundef 104) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %19 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -12, ptr %error.i, align 2
  br label %cleanup

if.end17:                                         ; preds = %do.end11
  %request = getelementptr inbounds %struct.afs_call, ptr %call14, i32 0, i32 10
  %20 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %request, align 8
  %incdec.ptr.i = getelementptr i32, ptr %21, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 64536, ptr %21, align 4
  %incdec.ptr.i63 = getelementptr i32, ptr %21, i32 2
  %23 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %incdec.ptr.i, align 4
  %24 = ptrtoint ptr %nr_files12 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nr_files12, align 8
  %conv21 = sext i16 %25 to i32
  %incdec.ptr.i64 = getelementptr i32, ptr %21, i32 3
  %26 = ptrtoint ptr %incdec.ptr.i63 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv21, ptr %incdec.ptr.i63, align 4
  %fid23 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %27 = ptrtoint ptr %fid23 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %fid23, align 8
  %29 = ptrtoint ptr %incdec.ptr.i64 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %incdec.ptr.i64, align 1
  %vnode.i = getelementptr i32, ptr %21, i32 5
  %vnode2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %vnode2.i, align 8
  %32 = ptrtoint ptr %vnode.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %31, ptr %vnode.i, align 1
  %vnode_hi.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %21, i32 7
  %35 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %hi.i, align 1
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %21, i32 8
  %38 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %21, i32 9
  %fid25 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1
  %39 = ptrtoint ptr %fid25 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %fid25, align 8
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %add.ptr.i, align 1
  %vnode.i65 = getelementptr i32, ptr %21, i32 11
  %vnode2.i66 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 1
  %42 = ptrtoint ptr %vnode2.i66 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %vnode2.i66, align 8
  %44 = ptrtoint ptr %vnode.i65 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %43, ptr %vnode.i65, align 1
  %vnode_hi.i67 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 2
  %45 = ptrtoint ptr %vnode_hi.i67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vnode_hi.i67, align 8
  %hi.i68 = getelementptr i32, ptr %21, i32 13
  %47 = ptrtoint ptr %hi.i68 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %hi.i68, align 1
  %unique.i69 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 3
  %48 = ptrtoint ptr %unique.i69 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %unique.i69, align 4
  %unique5.i70 = getelementptr i32, ptr %21, i32 14
  %50 = ptrtoint ptr %unique5.i70 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %unique5.i70, align 1
  %add.ptr.i71 = getelementptr i32, ptr %21, i32 15
  %51 = load i16, ptr %nr_files12, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %51)
  %cmp81 = icmp sgt i16 %51, 2
  br i1 %cmp81, label %for.body.lr.ph, label %if.end17.for.end_crit_edge

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end17
  %more_files = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %bp.082 = phi ptr [ %add.ptr.i71, %for.body.lr.ph ], [ %add.ptr.i78, %for.body.for.body_crit_edge ]
  %52 = ptrtoint ptr %more_files to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %more_files, align 8
  %fid31 = getelementptr %struct.afs_vnode_param, ptr %53, i32 %i.083, i32 1
  %54 = ptrtoint ptr %fid31 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %fid31, align 8
  %56 = ptrtoint ptr %bp.082 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 8)
  store i64 %55, ptr %bp.082, align 1
  %vnode.i72 = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %bp.082, i32 0, i32 1
  %vnode2.i73 = getelementptr %struct.afs_vnode_param, ptr %53, i32 %i.083, i32 1, i32 1
  %57 = ptrtoint ptr %vnode2.i73 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %vnode2.i73, align 8
  %59 = ptrtoint ptr %vnode.i72 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %58, ptr %vnode.i72, align 1
  %vnode_hi.i74 = getelementptr %struct.afs_vnode_param, ptr %53, i32 %i.083, i32 1, i32 2
  %60 = ptrtoint ptr %vnode_hi.i74 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vnode_hi.i74, align 8
  %hi.i75 = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %bp.082, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %hi.i75 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %hi.i75, align 1
  %unique.i76 = getelementptr %struct.afs_vnode_param, ptr %53, i32 %i.083, i32 1, i32 3
  %63 = ptrtoint ptr %unique.i76 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %unique.i76, align 4
  %unique5.i77 = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %bp.082, i32 0, i32 1, i32 2
  %65 = ptrtoint ptr %unique5.i77 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %unique5.i77, align 1
  %add.ptr.i78 = getelementptr i32, ptr %bp.082, i32 6
  %inc = add nuw nsw i32 %i.083, 1
  %66 = ptrtoint ptr %nr_files12 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %nr_files12, align 8
  %conv28 = sext i16 %67 to i32
  %sub = add nsw i32 %conv28, -2
  %cmp = icmp slt i32 %inc, %sub
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end17.for.end_crit_edge
  %bp.0.lcssa = phi ptr [ %add.ptr.i71, %if.end17.for.end_crit_edge ], [ %add.ptr.i78, %for.body.for.end_crit_edge ]
  %68 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %bp.0.lcssa to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %69 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call14, i32 0, i32 26
  %70 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %71)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %71
  br i1 %cmp.i, label %for.end.if.end14.sink.split.i_crit_edge, label %if.else.i

for.end.if.end14.sink.split.i_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %71)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %71
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %for.end.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %for.end.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %72 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call14, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %75, i32 noundef %sub.ptr.sub.i, i32 noundef %71) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call14, ptr noundef %fid25)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %76 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call14, ptr %call1.i, align 4
  %77 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call14, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %79 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call14, i32 0, i32 18
  %80 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %81 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call14, i32 0, i32 6
  %83 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %84 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call14, i32 0, i32 36
  %86 = trunc i32 %85 to i8
  %87 = lshr i8 %86, 6
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  %90 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call14, i32 noundef 3136) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @yfs_free_opaque_acl(ptr noundef %yacl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %yacl, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %yacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %yacl, align 4
  tail call void @kfree(ptr noundef %1) #9
  %vol_acl = getelementptr inbounds %struct.yfs_acl, ptr %yacl, i32 0, i32 1
  %2 = ptrtoint ptr %vol_acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vol_acl, align 4
  tail call void @kfree(ptr noundef %3) #9
  tail call void @kfree(ptr noundef nonnull %yacl) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @yfs_fs_fetch_opaque_acl(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !375

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm, ptr noundef nonnull @.str.25, i32 noundef %cond.i, i64 noundef %10, i64 noundef %12) #12
  br label %do.end9

do.end9:                                          ; preds = %key_serial.exit, %entry.do.end9_crit_edge
  %13 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %op, align 8
  %call10 = tail call ptr @afs_alloc_flat_call(ptr noundef %14, ptr noundef nonnull @yfs_RXYFSFetchOpaqueACL, i32 noundef 32, i32 noundef 152) #9
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
  %request = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 10
  %16 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %request, align 8
  %incdec.ptr.i = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 64168, ptr %17, align 4
  %incdec.ptr.i35 = getelementptr i32, ptr %17, i32 2
  %19 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid16 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %fid16 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fid16, align 8
  %22 = ptrtoint ptr %incdec.ptr.i35 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %incdec.ptr.i35, align 1
  %vnode.i = getelementptr i32, ptr %17, i32 4
  %vnode2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %vnode2.i, align 8
  %25 = ptrtoint ptr %vnode.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %vnode.i, align 1
  %vnode_hi.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %17, i32 6
  %28 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %hi.i, align 1
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %17, i32 7
  %31 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %17, i32 8
  %32 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 26
  %33 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %34)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %34
  br i1 %cmp.i, label %if.end13.if.end14.sink.split.i_crit_edge, label %if.else.i

if.end13.if.end14.sink.split.i_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %34)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %34
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %if.end13.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %if.end13.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %35 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call10, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %38, i32 noundef %sub.ptr.sub.i, i32 noundef %34) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call10, ptr noundef %fid16)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %39 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call10, ptr %call1.i, align 4
  %40 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call10, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %42 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 18
  %43 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %44 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 6
  %46 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call10, i32 0, i32 36
  %49 = trunc i32 %48 to i8
  %50 = lshr i8 %49, 6
  %51 = and i8 %50, 1
  %52 = xor i8 %51, 1
  %53 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call10, i32 noundef 3264) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @yfs_fs_store_opaque_acl2(ptr noundef %op) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !375

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm, ptr noundef nonnull @.str.26, i32 noundef %cond.i, i64 noundef %13, i64 noundef %15) #12
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
  %add11 = add i32 %or, 37
  %call12 = tail call ptr @afs_alloc_flat_call(ptr noundef %19, ptr noundef nonnull @yfs_RXYFSStoreOpaqueACL2, i32 noundef %add11, i32 noundef 144) #9
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
  %incdec.ptr.i = getelementptr i32, ptr %22, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 64174, ptr %22, align 4
  %incdec.ptr.i65 = getelementptr i32, ptr %22, i32 2
  %24 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %incdec.ptr.i, align 4
  %fid18 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %25 = ptrtoint ptr %fid18 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %fid18, align 8
  %27 = ptrtoint ptr %incdec.ptr.i65 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %incdec.ptr.i65, align 1
  %vnode.i = getelementptr i32, ptr %22, i32 4
  %vnode2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %vnode2.i, align 8
  %30 = ptrtoint ptr %vnode.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %vnode.i, align 1
  %vnode_hi.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vnode_hi.i, align 8
  %hi.i = getelementptr i32, ptr %22, i32 6
  %33 = ptrtoint ptr %hi.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %hi.i, align 1
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %unique.i, align 4
  %unique5.i = getelementptr i32, ptr %22, i32 7
  %36 = ptrtoint ptr %unique5.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %unique5.i, align 1
  %add.ptr.i = getelementptr i32, ptr %22, i32 8
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %2, align 4
  %incdec.ptr.i66 = getelementptr i32, ptr %22, i32 9
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %add.ptr.i, align 4
  %data = getelementptr inbounds %struct.afs_acl, ptr %2, i32 0, i32 1
  %40 = load i32, ptr %2, align 4
  %41 = call ptr @memcpy(ptr %incdec.ptr.i66, ptr %data, i32 %40)
  %42 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %42)
  %cmp.not = icmp eq i32 %add, %42
  br i1 %cmp.not, label %if.end15.if.end29_crit_edge, label %if.then25

if.end15.if.end29_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then25:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %incdec.ptr.i66, i32 %42
  %sub28 = sub i32 %add, %42
  %43 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub28)
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end15.if.end29_crit_edge
  %div64 = lshr exact i32 %add, 2
  %add.ptr30 = getelementptr i32, ptr %incdec.ptr.i66, i32 %div64
  %44 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %request, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr30 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %request_size.i = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 26
  %46 = ptrtoint ptr %request_size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %request_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %47)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, %47
  br i1 %cmp.i, label %if.end29.if.end14.sink.split.i_crit_edge, label %if.else.i

if.end29.if.end14.sink.split.i_crit_edge:         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %47)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i, %47
  br i1 %cmp4.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i.yfs_check_req.exit_crit_edge

if.else.i.yfs_check_req.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yfs_check_req.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %if.end29.if.end14.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.53, %if.end29.if.end14.sink.split.i_crit_edge ], [ @.str.56, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %48 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call12, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i, ptr noundef %51, i32 noundef %sub.ptr.sub.i, i32 noundef %47) #12
  br label %yfs_check_req.exit

yfs_check_req.exit:                               ; preds = %if.end14.sink.split.i, %if.else.i.yfs_check_req.exit_crit_edge
  tail call fastcc void @trace_afs_make_fs_call(ptr noundef nonnull %call12, ptr noundef %fid18)
  %call1.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %52 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call12, ptr %call1.i, align 4
  %53 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call12, align 8
  %type2.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 2
  %55 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %type2.i, align 8
  %op3.i = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 18
  %56 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %op, ptr %op3.i, align 4
  %key.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %57 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %key.i, align 4
  %key4.i = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 6
  %59 = ptrtoint ptr %key4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %key4.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.i, align 8
  %intr.i = getelementptr inbounds %struct.afs_call, ptr %call12, i32 0, i32 36
  %62 = trunc i32 %61 to i8
  %63 = lshr i8 %62, 6
  %64 = and i8 %63, 1
  %65 = xor i8 %64, 1
  %66 = ptrtoint ptr %intr.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %intr.i, align 1
  %ac.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  tail call void @afs_make_call(ptr noundef %ac.i, ptr noundef nonnull %call12, i32 noundef 3264) #9
  br label %cleanup

cleanup:                                          ; preds = %yfs_check_req.exit, %if.then14
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yfs_deliver_fs_fetch_data64(ptr noundef %call) #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !375

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm, ptr noundef nonnull @.str.29, i32 noundef %conv, i32 noundef %13, i32 noundef %17, i64 noundef %19) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %unmarshall11 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %20 = ptrtoint ptr %unmarshall11 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %unmarshall11, align 8
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %do.end10.do.body170_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %do.end10.do.body16_crit_edge
    i8 2, label %do.end10.do.body82_crit_edge
    i8 3, label %do.end10.do.body124_crit_edge
    i8 4, label %do.end10.sw.bb157_crit_edge
  ]

do.end10.sw.bb157_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb157

do.end10.do.body124_crit_edge:                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body124

do.end10.do.body82_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body82

do.end10.do.body16_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

do.end10.do.body170_crit_edge:                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body170

sw.bb:                                            ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  %actual_len13 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 2
  %23 = ptrtoint ptr %actual_len13 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %actual_len13, align 8
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %24 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %25 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %iov_len.i, align 4
  %26 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %26, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %26, i32 noundef 1, i32 noundef 8) #9
  %29 = ptrtoint ptr %unmarshall11 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %unmarshall11, align 8
  %inc = add i8 %30, 1
  store i8 %inc, ptr %unmarshall11, align 8
  br label %do.body16

do.body16:                                        ; preds = %sw.bb, %do.end10.do.body16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %31 = load i32, ptr @afs_debug, align 4
  %and17 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.do.end37_crit_edge, label %do.end28, !prof !375

do.body16.do.end37_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

do.end28:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %32 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i256 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i256 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task31, align 8
  %comm32 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 101
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm32) #12
  br label %do.end37

do.end37:                                         ; preds = %do.end28, %do.body16.do.end37_crit_edge
  %call38 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp = icmp slt i32 %call38, 0
  br i1 %cmp, label %do.end37.cleanup_crit_edge, label %if.end41

do.end37.cleanup_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %do.end37
  %36 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %36, align 8
  %actual_len42 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 2
  %39 = ptrtoint ptr %actual_len42 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %actual_len42, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %40 = load i32, ptr @afs_debug, align 4
  %and44 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end41.do.end65_crit_edge, label %do.end55, !prof !375

if.end41.do.end65_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

do.end55:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %41 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i257 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i257 to ptr
  %task58 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task58 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task58, align 8
  %comm59 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 101
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %comm59, i64 noundef %38) #12
  %45 = ptrtoint ptr %actual_len42 to i32
  call void @__asan_load8_noabort(i32 %45)
  %.pr = load i64, ptr %actual_len42, align 8
  br label %do.end65

do.end65:                                         ; preds = %do.end55, %if.end41.do.end65_crit_edge
  %46 = phi i64 [ %.pr, %do.end55 ], [ %38, %if.end41.do.end65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %cmp67 = icmp eq i64 %46, 0
  br i1 %cmp67, label %do.end65.no_more_data_crit_edge, label %if.end70

do.end65.no_more_data_crit_edge:                  ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_more_data

if.end70:                                         ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #11
  %iter71 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 14
  %47 = ptrtoint ptr %iter71 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iter71, align 8
  %iter72 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %49 = ptrtoint ptr %iter72 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %iter72, align 4
  %50 = ptrtoint ptr %actual_len42 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %actual_len42, align 8
  %len = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 1
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %len, align 8
  %54 = tail call i64 @llvm.smin.i64(i64 %51, i64 %53)
  %cond.off0 = trunc i64 %54 to i32
  %iov_len78 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %55 = ptrtoint ptr %iov_len78 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cond.off0, ptr %iov_len78, align 4
  %56 = ptrtoint ptr %unmarshall11 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %unmarshall11, align 8
  %inc80 = add i8 %57, 1
  store i8 %inc80, ptr %unmarshall11, align 8
  br label %do.body82

do.body82:                                        ; preds = %if.end70, %do.end10.do.body82_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %58 = load i32, ptr @afs_debug, align 4
  %and83 = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.body82.do.end106_crit_edge, label %do.end94, !prof !375

do.body82.do.end106_crit_edge:                    ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end106

do.end94:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  %59 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i258 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i258 to ptr
  %task97 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task97 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task97, align 8
  %comm98 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 101
  %iter100 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %63 = ptrtoint ptr %iter100 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %iter100, align 4
  %count.i259 = getelementptr inbounds %struct.iov_iter, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %count.i259 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count.i259, align 8
  %actual_len102 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 2
  %67 = ptrtoint ptr %actual_len102 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %actual_len102, align 8
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %comm98, i32 noundef %66, i64 noundef %68) #12
  br label %do.end106

do.end106:                                        ; preds = %do.end94, %do.body82.do.end106_crit_edge
  %call107 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %do.end106.cleanup_crit_edge, label %if.end111

do.end106.cleanup_crit_edge:                      ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end111:                                        ; preds = %do.end106
  %def_iter = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  %iter112 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %69 = ptrtoint ptr %iter112 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %def_iter, ptr %iter112, align 4
  %actual_len113 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 2
  %70 = ptrtoint ptr %actual_len113 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %actual_len113, align 8
  %len114 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 1
  %72 = ptrtoint ptr %len114 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %len114, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %73)
  %cmp115.not = icmp sgt i64 %71, %73
  br i1 %cmp115.not, label %if.end118, label %if.end111.no_more_data_crit_edge

if.end111.no_more_data_crit_edge:                 ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_more_data

if.end118:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i64 %71, %73
  %conv121 = trunc i64 %sub to i32
  %iov_len.i260 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %74 = ptrtoint ptr %iov_len.i260 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv121, ptr %iov_len.i260, align 4
  tail call void @iov_iter_discard(ptr noundef %def_iter, i32 noundef 0, i32 noundef %conv121) #9
  %75 = ptrtoint ptr %unmarshall11 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 3, ptr %unmarshall11, align 8
  br label %do.body124

do.body124:                                       ; preds = %if.end118, %do.end10.do.body124_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %76 = load i32, ptr @afs_debug, align 4
  %and125 = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %do.body124.do.end150_crit_edge, label %do.end136, !prof !375

do.body124.do.end150_crit_edge:                   ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end150

do.end136:                                        ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #11
  %77 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i261 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i261 to ptr
  %task139 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task139 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task139, align 8
  %comm140 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 101
  %iter142 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %81 = ptrtoint ptr %iter142 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %iter142, align 4
  %count.i262 = getelementptr inbounds %struct.iov_iter, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %count.i262 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %count.i262, align 8
  %actual_len144 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 2
  %85 = ptrtoint ptr %actual_len144 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %actual_len144, align 8
  %len145 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 1
  %87 = ptrtoint ptr %len145 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %len145, align 8
  %sub146 = sub i64 %86, %88
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm140, i32 noundef %84, i64 noundef %sub146) #12
  br label %do.end150

do.end150:                                        ; preds = %do.end136, %do.body124.do.end150_crit_edge
  %call151 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %do.end150.cleanup_crit_edge, label %do.end150.no_more_data_crit_edge

do.end150.no_more_data_crit_edge:                 ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_more_data

do.end150.cleanup_crit_edge:                      ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

no_more_data:                                     ; preds = %do.end150.no_more_data_crit_edge, %if.end111.no_more_data_crit_edge, %do.end65.no_more_data_crit_edge
  %89 = ptrtoint ptr %unmarshall11 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 4, ptr %unmarshall11, align 8
  %iov_len.i263 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %90 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %buffer.i, align 4
  %92 = ptrtoint ptr %iov_len.i263 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 160, ptr %iov_len.i263, align 4
  %93 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %93, align 8
  %iov_len2.i.i264 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %95 = ptrtoint ptr %iov_len2.i.i264 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 160, ptr %iov_len2.i.i264, align 4
  %def_iter.i.i265 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i265, i32 noundef 0, ptr noundef %93, i32 noundef 1, i32 noundef 160) #9
  br label %sw.bb157

sw.bb157:                                         ; preds = %no_more_data, %do.end10.sw.bb157_crit_edge
  %call158 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %cmp159 = icmp slt i32 %call158, 0
  br i1 %cmp159, label %sw.bb157.cleanup_crit_edge, label %if.end162

sw.bb157.cleanup_crit_edge:                       ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end162:                                        ; preds = %sw.bb157
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %96 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %buffer, align 4
  %98 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %bp, align 4
  %scb = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  call fastcc void @xdr_decode_YFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %99 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bp, align 4
  %callback.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 1
  %reply_time.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 43
  %101 = ptrtoint ptr %reply_time.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %reply_time.i, align 8
  %expiration_time.i = getelementptr inbounds %struct.yfs_xdr_YFSCallBack, ptr %100, i32 0, i32 1
  %103 = ptrtoint ptr %expiration_time.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %.unpack.i = load i32, ptr %expiration_time.i, align 1
  %.elt6.i = getelementptr inbounds %struct.yfs_xdr_YFSCallBack, ptr %100, i32 0, i32 1, i32 1
  %104 = ptrtoint ptr %.elt6.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %.unpack7.i = load i32, ptr %.elt6.i, align 1
  %conv.i.i = zext i32 %.unpack.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %.unpack7.i to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %mul.i = mul i64 %or.i.i, 100
  %add.i = add i64 %mul.i, %102
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp8.i.i = icmp slt i64 %add.i, 0
  %105 = tail call i64 @llvm.abs.i64(i64 %add.i, i1 false) #9
  %106 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %105, i32 0) #14, !srcloc !387
  %asmresult.i.i.i = extractvalue { i64, i32 } %106, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %106, 1
  %107 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %105, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #14, !srcloc !388
  %asmresult10.i.i.i = extractvalue { i64, i32 } %107, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 29
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %108 = ptrtoint ptr %callback.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %cond213.i.i, ptr %callback.i, align 8
  %have_cb.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 3
  %109 = ptrtoint ptr %have_cb.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %have_cb.i, align 1
  %add.ptr.i = getelementptr i32, ptr %100, i32 4
  %110 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %add.ptr.i, ptr %bp, align 4
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end162.xdr_decode_YFSVolSync.exit_crit_edge, label %if.end181.i

if.end162.xdr_decode_YFSVolSync.exit_crit_edge:   ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_YFSVolSync.exit

if.end181.i:                                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %.unpack.i266 = load i32, ptr %add.ptr.i, align 1
  %.elt266.i = getelementptr i32, ptr %100, i32 5
  %112 = ptrtoint ptr %.elt266.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %.unpack267.i = load i32, ptr %.elt266.i, align 1
  %conv.i.i267 = zext i32 %.unpack.i266 to i64
  %shl.i.i268 = shl nuw i64 %conv.i.i267, 32
  %conv1.i.i269 = zext i32 %.unpack267.i to i64
  %or.i.i270 = or i64 %shl.i.i268, %conv1.i.i269
  %113 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %or.i.i270) #14, !srcloc !389
  %114 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %or.i.i270, i64 %113, i32 0) #14, !srcloc !388
  %asmresult10.i.i = extractvalue { i64, i32 } %114, 0
  %creation.0.i = lshr i64 %asmresult10.i.i, 23
  %115 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %creation.0.i, ptr %volsync, align 8
  br label %xdr_decode_YFSVolSync.exit

xdr_decode_YFSVolSync.exit:                       ; preds = %if.end181.i, %if.end162.xdr_decode_YFSVolSync.exit_crit_edge
  %data_version = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 0, i32 1
  %116 = ptrtoint ptr %data_version to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %data_version, align 8
  %data_version165 = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 7
  %118 = ptrtoint ptr %data_version165 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %117, ptr %data_version165, align 8
  %119 = ptrtoint ptr %scb to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %scb, align 8
  %file_size = getelementptr inbounds %struct.afs_read, ptr %4, i32 0, i32 3
  %121 = ptrtoint ptr %file_size to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %120, ptr %file_size, align 8
  %122 = ptrtoint ptr %unmarshall11 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %unmarshall11, align 8
  %inc169 = add i8 %123, 1
  store i8 %inc169, ptr %unmarshall11, align 8
  br label %do.body170

do.body170:                                       ; preds = %xdr_decode_YFSVolSync.exit, %do.end10.do.body170_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %124 = load i32, ptr @afs_debug, align 4
  %and171 = and i32 %124, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %do.body170.cleanup_crit_edge, label %do.end182, !prof !375

do.body170.cleanup_crit_edge:                     ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end182:                                        ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #11
  %125 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i272 = and i32 %125, -16384
  %126 = inttoptr i32 %and.i272 to ptr
  %task185 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %task185 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %task185, align 8
  %comm186 = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 101
  %call188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm186, ptr noundef nonnull @.str.29) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end182, %do.body170.cleanup_crit_edge, %sw.bb157.cleanup_crit_edge, %do.end150.cleanup_crit_edge, %do.end106.cleanup_crit_edge, %do.end37.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %do.end37.cleanup_crit_edge ], [ %call107, %do.end106.cleanup_crit_edge ], [ %call151, %do.end150.cleanup_crit_edge ], [ %call158, %sw.bb157.cleanup_crit_edge ], [ 0, %do.end182 ], [ 0, %do.body170.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_flat_call_destructor(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_extract_data(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xdr_decode_YFSFetchStatus(ptr nocapture noundef %_bp, ptr noundef %call, ptr nocapture noundef writeonly %scb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_bp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_bp, align 4
  %abort_code = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %abort_code to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %abort_code, align 1
  %abort_code2 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 13
  %4 = ptrtoint ptr %abort_code2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %abort_code2, align 8
  %5 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %3, label %entry.if.end_crit_edge [
    i32 0, label %if.end7
    i32 102, label %if.then6
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %nlink = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 11
  %6 = ptrtoint ptr %nlink to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %nlink, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %entry.if.end_crit_edge
  %have_error = getelementptr inbounds %struct.afs_status_cb, ptr %scb, i32 0, i32 4
  %7 = ptrtoint ptr %have_error to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %have_error, align 2
  br label %advance

if.end7:                                          ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %1, align 1
  %.off = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %bad

sw.bb:                                            ; preds = %if.end7
  %type9 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 10
  %10 = ptrtoint ptr %type9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %type9, align 4
  %nlink10 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %nlink10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %nlink10, align 1
  %nlink11 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 11
  %13 = ptrtoint ptr %nlink11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %nlink11, align 8
  %author = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %author to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %.unpack = load i32, ptr %author, align 1
  %.elt64 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %.elt64 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %.unpack65 = load i32, ptr %.elt64, align 1
  %conv.i = zext i32 %.unpack to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %.unpack65 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %author13 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 4
  %16 = ptrtoint ptr %author13 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %or.i, ptr %author13, align 8
  %owner = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %owner to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %.unpack66 = load i32, ptr %owner, align 1
  %.elt67 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %.elt67 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %.unpack68 = load i32, ptr %.elt67, align 1
  %conv.i84 = zext i32 %.unpack66 to i64
  %shl.i85 = shl nuw i64 %conv.i84, 32
  %conv1.i86 = zext i32 %.unpack68 to i64
  %or.i87 = or i64 %shl.i85, %conv1.i86
  %owner15 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 5
  %19 = ptrtoint ptr %owner15 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %or.i87, ptr %owner15, align 8
  %caller_access = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %caller_access to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %caller_access, align 1
  %caller_access16 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 7
  %22 = ptrtoint ptr %caller_access16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %caller_access16, align 8
  %anon_access = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %anon_access to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %anon_access, align 1
  %anon_access17 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 8
  %25 = ptrtoint ptr %anon_access17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %anon_access17, align 4
  %mode = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %mode, align 1
  %28 = trunc i32 %27 to i16
  %conv = and i16 %28, 4095
  %mode18 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 9
  %29 = ptrtoint ptr %mode18 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv, ptr %mode18, align 8
  %group = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %group to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %.unpack69 = load i32, ptr %group, align 1
  %.elt70 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %.elt70 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %.unpack71 = load i32, ptr %.elt70, align 1
  %conv.i88 = zext i32 %.unpack69 to i64
  %shl.i89 = shl nuw i64 %conv.i88, 32
  %conv1.i90 = zext i32 %.unpack71 to i64
  %or.i91 = or i64 %shl.i89, %conv1.i90
  %group20 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 6
  %32 = ptrtoint ptr %group20 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %or.i91, ptr %group20, align 8
  %lock_count = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 14
  %33 = ptrtoint ptr %lock_count to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %lock_count, align 1
  %lock_count21 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 12
  %35 = ptrtoint ptr %lock_count21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %lock_count21, align 4
  %mtime_client = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 2
  %mtime_client22 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 12
  %36 = ptrtoint ptr %mtime_client22 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %.unpack72 = load i32, ptr %mtime_client22, align 1
  %.elt73 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 12, i32 1
  %37 = ptrtoint ptr %.elt73 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %.unpack74 = load i32, ptr %.elt73, align 1
  %conv.i.i = zext i32 %.unpack72 to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %.unpack74 to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i.i)
  %cmp.i.i = icmp slt i64 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end181.i.i, label %if.end410.i.i

if.end181.i.i:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i64 0, %or.i.i
  %conv17.i.i = trunc i64 %sub.i.i to i32
  %38 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub.i.i) #14, !srcloc !389
  %39 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub.i.i, i64 %38, i32 0) #14, !srcloc !388
  %asmresult10.i.i.i = extractvalue { i64, i32 } %39, 0
  %div161579.i.i = lshr i64 %asmresult10.i.i.i, 23
  %conv162.i.i = trunc i64 %div161579.i.i to i32
  %mul163.neg.i.i = mul i32 %conv162.i.i, -10000000
  %sub164.i.i = add i32 %mul163.neg.i.i, %conv17.i.i
  %mul183.neg.i.i = mul i32 %sub164.i.i, -100
  %sub189.i.i = sub nsw i64 0, %div161579.i.i
  br label %xdr_to_time.exit

if.end410.i.i:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %40 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %or.i.i) #14, !srcloc !389
  %41 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %or.i.i, i64 %40, i32 0) #14, !srcloc !388
  %asmresult10.i580.i.i = extractvalue { i64, i32 } %41, 0
  %div386578.i.i = lshr i64 %asmresult10.i580.i.i, 23
  %conv387.i.i = trunc i64 %div386578.i.i to i32
  %mul388.neg.i.i = mul i32 %conv387.i.i, -10000000
  %sub389.i.i = add i32 %mul388.neg.i.i, %.unpack74
  %mul413.i.i = mul i32 %sub389.i.i, 100
  br label %xdr_to_time.exit

xdr_to_time.exit:                                 ; preds = %if.end410.i.i, %if.end181.i.i
  %mul413.sink.i.i = phi i32 [ %mul183.neg.i.i, %if.end181.i.i ], [ %mul413.i.i, %if.end410.i.i ]
  %storemerge.i.i = phi i64 [ %sub189.i.i, %if.end181.i.i ], [ %div386578.i.i, %if.end410.i.i ]
  %tmp.sroa.4.8.insert.ext = zext i32 %mul413.sink.i.i to i64
  %tmp.sroa.4.8.insert.shift = shl nuw i64 %tmp.sroa.4.8.insert.ext, 32
  %tmp.sroa.4.8.insert.insert = or i64 %tmp.sroa.4.8.insert.shift, 4294967295
  %42 = ptrtoint ptr %mtime_client to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %storemerge.i.i, ptr %mtime_client, align 8
  %tmp.sroa.4.0.mtime_client.sroa_idx = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %tmp.sroa.4.0.mtime_client.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %tmp.sroa.4.8.insert.insert, ptr %tmp.sroa.4.0.mtime_client.sroa_idx, align 8
  %mtime_server = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 3
  %mtime_server24 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 13
  %44 = ptrtoint ptr %mtime_server24 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %.unpack75 = load i32, ptr %mtime_server24, align 1
  %.elt76 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 13, i32 1
  %45 = ptrtoint ptr %.elt76 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %.unpack77 = load i32, ptr %.elt76, align 1
  %conv.i.i92 = zext i32 %.unpack75 to i64
  %shl.i.i93 = shl nuw i64 %conv.i.i92, 32
  %conv1.i.i94 = zext i32 %.unpack77 to i64
  %or.i.i95 = or i64 %shl.i.i93, %conv1.i.i94
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i.i95)
  %cmp.i.i96 = icmp slt i64 %or.i.i95, 0
  br i1 %cmp.i.i96, label %if.end181.i.i106, label %if.end410.i.i113

if.end181.i.i106:                                 ; preds = %xdr_to_time.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i97 = sub i64 0, %or.i.i95
  %conv17.i.i98 = trunc i64 %sub.i.i97 to i32
  %46 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub.i.i97) #14, !srcloc !389
  %47 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub.i.i97, i64 %46, i32 0) #14, !srcloc !388
  %asmresult10.i.i.i99 = extractvalue { i64, i32 } %47, 0
  %div161579.i.i100 = lshr i64 %asmresult10.i.i.i99, 23
  %conv162.i.i101 = trunc i64 %div161579.i.i100 to i32
  %mul163.neg.i.i102 = mul i32 %conv162.i.i101, -10000000
  %sub164.i.i103 = add i32 %mul163.neg.i.i102, %conv17.i.i98
  %mul183.neg.i.i104 = mul i32 %sub164.i.i103, -100
  %sub189.i.i105 = sub nsw i64 0, %div161579.i.i100
  br label %xdr_to_time.exit116

if.end410.i.i113:                                 ; preds = %xdr_to_time.exit
  call void @__sanitizer_cov_trace_pc() #11
  %48 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %or.i.i95) #14, !srcloc !389
  %49 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %or.i.i95, i64 %48, i32 0) #14, !srcloc !388
  %asmresult10.i580.i.i107 = extractvalue { i64, i32 } %49, 0
  %div386578.i.i108 = lshr i64 %asmresult10.i580.i.i107, 23
  %conv387.i.i109 = trunc i64 %div386578.i.i108 to i32
  %mul388.neg.i.i110 = mul i32 %conv387.i.i109, -10000000
  %sub389.i.i111 = add i32 %mul388.neg.i.i110, %.unpack77
  %mul413.i.i112 = mul i32 %sub389.i.i111, 100
  br label %xdr_to_time.exit116

xdr_to_time.exit116:                              ; preds = %if.end410.i.i113, %if.end181.i.i106
  %mul413.sink.i.i114 = phi i32 [ %mul183.neg.i.i104, %if.end181.i.i106 ], [ %mul413.i.i112, %if.end410.i.i113 ]
  %storemerge.i.i115 = phi i64 [ %sub189.i.i105, %if.end181.i.i106 ], [ %div386578.i.i108, %if.end410.i.i113 ]
  %tmp23.sroa.4.8.insert.ext = zext i32 %mul413.sink.i.i114 to i64
  %tmp23.sroa.4.8.insert.shift = shl nuw i64 %tmp23.sroa.4.8.insert.ext, 32
  %tmp23.sroa.4.8.insert.insert = or i64 %tmp23.sroa.4.8.insert.shift, 4294967295
  %50 = ptrtoint ptr %mtime_server to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %storemerge.i.i115, ptr %mtime_server, align 8
  %tmp23.sroa.4.0.mtime_server.sroa_idx = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %tmp23.sroa.4.0.mtime_server.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %tmp23.sroa.4.8.insert.insert, ptr %tmp23.sroa.4.0.mtime_server.sroa_idx, align 8
  %size = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %.unpack78 = load i32, ptr %size, align 1
  %.elt79 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %.elt79 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %.unpack80 = load i32, ptr %.elt79, align 1
  %conv.i117 = zext i32 %.unpack78 to i64
  %shl.i118 = shl nuw i64 %conv.i117, 32
  %conv1.i119 = zext i32 %.unpack80 to i64
  %or.i120 = or i64 %shl.i118, %conv1.i119
  %54 = ptrtoint ptr %scb to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %or.i120, ptr %scb, align 8
  %data_version = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %data_version to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %.unpack81 = load i32, ptr %data_version, align 1
  %.elt82 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, ptr %1, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %.elt82 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %.unpack83 = load i32, ptr %.elt82, align 1
  %conv.i121 = zext i32 %.unpack81 to i64
  %shl.i122 = shl nuw i64 %conv.i121, 32
  %conv1.i123 = zext i32 %.unpack83 to i64
  %or.i124 = or i64 %shl.i122, %conv1.i123
  %data_version28 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 1
  %57 = ptrtoint ptr %data_version28 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %or.i124, ptr %data_version28, align 8
  %have_status = getelementptr inbounds %struct.afs_status_cb, ptr %scb, i32 0, i32 2
  %58 = ptrtoint ptr %have_status to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %have_status, align 8
  br label %advance

advance:                                          ; preds = %bad, %xdr_to_time.exit116, %if.end
  %59 = ptrtoint ptr %_bp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %_bp, align 4
  %add.ptr = getelementptr i32, ptr %60, i32 26
  store ptr %add.ptr, ptr %_bp, align 4
  ret void

bad:                                              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %_bp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %_bp, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #12
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %x.sroa.0.0.copyload.i = load i32, ptr %62, align 4
  %x.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %62, i32 4
  %64 = ptrtoint ptr %x.sroa.7.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %x.sroa.7.0.copyload.i = load i32, ptr %x.sroa.7.0..sroa_idx.i, align 4
  %x.sroa.10.0..sroa_idx.i = getelementptr inbounds i8, ptr %62, i32 8
  %65 = ptrtoint ptr %x.sroa.10.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %x.sroa.10.0.copyload.i = load i32, ptr %x.sroa.10.0..sroa_idx.i, align 4
  %x.sroa.12.0..sroa_idx.i = getelementptr inbounds i8, ptr %62, i32 12
  %66 = ptrtoint ptr %x.sroa.12.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %x.sroa.12.0.copyload.i = load i32, ptr %x.sroa.12.0..sroa_idx.i, align 4
  %add.ptr.i = getelementptr i32, ptr %62, i32 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef 0, i32 noundef %x.sroa.0.0.copyload.i, i32 noundef %x.sroa.7.0.copyload.i, i32 noundef %x.sroa.10.0.copyload.i, i32 noundef %x.sroa.12.0.copyload.i) #12
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %x.sroa.0.0.copyload.1.i = load i32, ptr %add.ptr.i, align 4
  %x.sroa.7.0..sroa_idx.1.i = getelementptr i32, ptr %62, i32 5
  %68 = ptrtoint ptr %x.sroa.7.0..sroa_idx.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %x.sroa.7.0.copyload.1.i = load i32, ptr %x.sroa.7.0..sroa_idx.1.i, align 4
  %x.sroa.10.0..sroa_idx.1.i = getelementptr i32, ptr %62, i32 6
  %69 = ptrtoint ptr %x.sroa.10.0..sroa_idx.1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %x.sroa.10.0.copyload.1.i = load i32, ptr %x.sroa.10.0..sroa_idx.1.i, align 4
  %x.sroa.12.0..sroa_idx.1.i = getelementptr i32, ptr %62, i32 7
  %70 = ptrtoint ptr %x.sroa.12.0..sroa_idx.1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %x.sroa.12.0.copyload.1.i = load i32, ptr %x.sroa.12.0..sroa_idx.1.i, align 4
  %add.ptr.1.i = getelementptr i32, ptr %62, i32 8
  %call8.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef 16, i32 noundef %x.sroa.0.0.copyload.1.i, i32 noundef %x.sroa.7.0.copyload.1.i, i32 noundef %x.sroa.10.0.copyload.1.i, i32 noundef %x.sroa.12.0.copyload.1.i) #12
  %71 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %x.sroa.0.0.copyload.2.i = load i32, ptr %add.ptr.1.i, align 4
  %x.sroa.7.0..sroa_idx.2.i = getelementptr i32, ptr %62, i32 9
  %72 = ptrtoint ptr %x.sroa.7.0..sroa_idx.2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %x.sroa.7.0.copyload.2.i = load i32, ptr %x.sroa.7.0..sroa_idx.2.i, align 4
  %x.sroa.10.0..sroa_idx.2.i = getelementptr i32, ptr %62, i32 10
  %73 = ptrtoint ptr %x.sroa.10.0..sroa_idx.2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %x.sroa.10.0.copyload.2.i = load i32, ptr %x.sroa.10.0..sroa_idx.2.i, align 4
  %x.sroa.12.0..sroa_idx.2.i = getelementptr i32, ptr %62, i32 11
  %74 = ptrtoint ptr %x.sroa.12.0..sroa_idx.2.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %x.sroa.12.0.copyload.2.i = load i32, ptr %x.sroa.12.0..sroa_idx.2.i, align 4
  %add.ptr.2.i = getelementptr i32, ptr %62, i32 12
  %call8.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef 32, i32 noundef %x.sroa.0.0.copyload.2.i, i32 noundef %x.sroa.7.0.copyload.2.i, i32 noundef %x.sroa.10.0.copyload.2.i, i32 noundef %x.sroa.12.0.copyload.2.i) #12
  %75 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %x.sroa.0.0.copyload.3.i = load i32, ptr %add.ptr.2.i, align 4
  %x.sroa.7.0..sroa_idx.3.i = getelementptr i32, ptr %62, i32 13
  %76 = ptrtoint ptr %x.sroa.7.0..sroa_idx.3.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %x.sroa.7.0.copyload.3.i = load i32, ptr %x.sroa.7.0..sroa_idx.3.i, align 4
  %x.sroa.10.0..sroa_idx.3.i = getelementptr i32, ptr %62, i32 14
  %77 = ptrtoint ptr %x.sroa.10.0..sroa_idx.3.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %x.sroa.10.0.copyload.3.i = load i32, ptr %x.sroa.10.0..sroa_idx.3.i, align 4
  %x.sroa.12.0..sroa_idx.3.i = getelementptr i32, ptr %62, i32 15
  %78 = ptrtoint ptr %x.sroa.12.0..sroa_idx.3.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %x.sroa.12.0.copyload.3.i = load i32, ptr %x.sroa.12.0..sroa_idx.3.i, align 4
  %add.ptr.3.i = getelementptr i32, ptr %62, i32 16
  %call8.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef 48, i32 noundef %x.sroa.0.0.copyload.3.i, i32 noundef %x.sroa.7.0.copyload.3.i, i32 noundef %x.sroa.10.0.copyload.3.i, i32 noundef %x.sroa.12.0.copyload.3.i) #12
  %79 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %x.sroa.0.0.copyload.4.i = load i32, ptr %add.ptr.3.i, align 4
  %x.sroa.7.0..sroa_idx.4.i = getelementptr i32, ptr %62, i32 17
  %80 = ptrtoint ptr %x.sroa.7.0..sroa_idx.4.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %x.sroa.7.0.copyload.4.i = load i32, ptr %x.sroa.7.0..sroa_idx.4.i, align 4
  %x.sroa.10.0..sroa_idx.4.i = getelementptr i32, ptr %62, i32 18
  %81 = ptrtoint ptr %x.sroa.10.0..sroa_idx.4.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %x.sroa.10.0.copyload.4.i = load i32, ptr %x.sroa.10.0..sroa_idx.4.i, align 4
  %x.sroa.12.0..sroa_idx.4.i = getelementptr i32, ptr %62, i32 19
  %82 = ptrtoint ptr %x.sroa.12.0..sroa_idx.4.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %x.sroa.12.0.copyload.4.i = load i32, ptr %x.sroa.12.0..sroa_idx.4.i, align 4
  %add.ptr.4.i = getelementptr i32, ptr %62, i32 20
  %call8.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef 64, i32 noundef %x.sroa.0.0.copyload.4.i, i32 noundef %x.sroa.7.0.copyload.4.i, i32 noundef %x.sroa.10.0.copyload.4.i, i32 noundef %x.sroa.12.0.copyload.4.i) #12
  %83 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %x.sroa.0.0.copyload.5.i = load i32, ptr %add.ptr.4.i, align 4
  %x.sroa.7.0..sroa_idx.5.i = getelementptr i32, ptr %62, i32 21
  %84 = ptrtoint ptr %x.sroa.7.0..sroa_idx.5.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %x.sroa.7.0.copyload.5.i = load i32, ptr %x.sroa.7.0..sroa_idx.5.i, align 4
  %x.sroa.10.0..sroa_idx.5.i = getelementptr i32, ptr %62, i32 22
  %85 = ptrtoint ptr %x.sroa.10.0..sroa_idx.5.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %x.sroa.10.0.copyload.5.i = load i32, ptr %x.sroa.10.0..sroa_idx.5.i, align 4
  %x.sroa.12.0..sroa_idx.5.i = getelementptr i32, ptr %62, i32 23
  %86 = ptrtoint ptr %x.sroa.12.0..sroa_idx.5.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %x.sroa.12.0.copyload.5.i = load i32, ptr %x.sroa.12.0..sroa_idx.5.i, align 4
  %add.ptr.5.i = getelementptr i32, ptr %62, i32 24
  %call8.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef 80, i32 noundef %x.sroa.0.0.copyload.5.i, i32 noundef %x.sroa.7.0.copyload.5.i, i32 noundef %x.sroa.10.0.copyload.5.i, i32 noundef %x.sroa.12.0.copyload.5.i) #12
  %87 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %x.sroa.0.0.copyload20.i = load i32, ptr %add.ptr.5.i, align 4
  %x.sroa.7.0..sroa_idx21.i = getelementptr i32, ptr %62, i32 25
  %88 = ptrtoint ptr %x.sroa.7.0..sroa_idx21.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %x.sroa.7.0.copyload22.i = load i32, ptr %x.sroa.7.0..sroa_idx21.i, align 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %x.sroa.0.0.copyload20.i, i32 noundef %x.sroa.7.0.copyload22.i) #12
  %call29 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 0) #9
  br label %advance
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_discard(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_make_call(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yfs_deliver_fs_create_vnode(ptr noundef %call) #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !375

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %comm, ptr noundef nonnull @.str.63, i32 noundef %conv) #12
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
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %.unpack.i = load i32, ptr %10, align 1
  %.elt13.i = getelementptr inbounds [2 x i32], ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %.elt13.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %.unpack14.i = load i32, ptr %.elt13.i, align 1
  %conv.i.i = zext i32 %.unpack.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %.unpack14.i to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %13 = ptrtoint ptr %fid to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %or.i.i, ptr %fid, align 8
  %vnode.i = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %vnode.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %.unpack15.i = load i32, ptr %vnode.i, align 1
  %.elt16.i = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %10, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %.elt16.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %.unpack17.i = load i32, ptr %.elt16.i, align 1
  %conv.i18.i = zext i32 %.unpack15.i to i64
  %shl.i19.i = shl nuw i64 %conv.i18.i, 32
  %conv1.i20.i = zext i32 %.unpack17.i to i64
  %or.i21.i = or i64 %shl.i19.i, %conv1.i20.i
  %vnode2.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %or.i21.i, ptr %vnode2.i, align 8
  %hi.i = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %10, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %hi.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %hi.i, align 1
  %vnode_hi.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 1, i32 2
  %19 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %vnode_hi.i, align 8
  %unique.i = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %10, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %unique.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %unique.i, align 1
  %unique5.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 1, i32 3
  %22 = ptrtoint ptr %unique5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %unique5.i, align 4
  %add.ptr.i = getelementptr i32, ptr %10, i32 6
  %23 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %bp, align 4
  %scb = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 2
  call fastcc void @xdr_decode_YFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %scb17 = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  call fastcc void @xdr_decode_YFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb17)
  %24 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bp, align 4
  %callback.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 2, i32 1
  %reply_time.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 43
  %26 = ptrtoint ptr %reply_time.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %reply_time.i, align 8
  %expiration_time.i = getelementptr inbounds %struct.yfs_xdr_YFSCallBack, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %expiration_time.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %.unpack.i56 = load i32, ptr %expiration_time.i, align 1
  %.elt6.i = getelementptr inbounds %struct.yfs_xdr_YFSCallBack, ptr %25, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %.elt6.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %.unpack7.i = load i32, ptr %.elt6.i, align 1
  %conv.i.i57 = zext i32 %.unpack.i56 to i64
  %shl.i.i58 = shl nuw i64 %conv.i.i57, 32
  %conv1.i.i59 = zext i32 %.unpack7.i to i64
  %or.i.i60 = or i64 %shl.i.i58, %conv1.i.i59
  %mul.i = mul i64 %or.i.i60, 100
  %add.i = add i64 %mul.i, %27
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp8.i.i = icmp slt i64 %add.i, 0
  %30 = tail call i64 @llvm.abs.i64(i64 %add.i, i1 false) #9
  %31 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %30, i32 0) #14, !srcloc !387
  %asmresult.i.i.i = extractvalue { i64, i32 } %31, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %31, 1
  %32 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %30, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #14, !srcloc !388
  %asmresult10.i.i.i = extractvalue { i64, i32 } %32, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 29
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %33 = ptrtoint ptr %callback.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %cond213.i.i, ptr %callback.i, align 8
  %have_cb.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 2, i32 3
  %34 = ptrtoint ptr %have_cb.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %have_cb.i, align 1
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end14.xdr_decode_YFSVolSync.exit_crit_edge, label %if.end181.i

if.end14.xdr_decode_YFSVolSync.exit_crit_edge:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_YFSVolSync.exit

if.end181.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i61 = getelementptr i32, ptr %25, i32 4
  %35 = ptrtoint ptr %add.ptr.i61 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %.unpack.i62 = load i32, ptr %add.ptr.i61, align 1
  %.elt266.i = getelementptr i32, ptr %25, i32 5
  %36 = ptrtoint ptr %.elt266.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %.unpack267.i = load i32, ptr %.elt266.i, align 1
  %conv.i.i63 = zext i32 %.unpack.i62 to i64
  %shl.i.i64 = shl nuw i64 %conv.i.i63, 32
  %conv1.i.i65 = zext i32 %.unpack267.i to i64
  %or.i.i66 = or i64 %shl.i.i64, %conv1.i.i65
  %37 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %or.i.i66) #14, !srcloc !389
  %38 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %or.i.i66, i64 %37, i32 0) #14, !srcloc !388
  %asmresult10.i.i = extractvalue { i64, i32 } %38, 0
  %creation.0.i = lshr i64 %asmresult10.i.i, 23
  %39 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %creation.0.i, ptr %volsync, align 8
  br label %xdr_decode_YFSVolSync.exit

xdr_decode_YFSVolSync.exit:                       ; preds = %if.end181.i, %if.end14.xdr_decode_YFSVolSync.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %40 = load i32, ptr @afs_debug, align 4
  %and20 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %xdr_decode_YFSVolSync.exit.cleanup_crit_edge, label %do.end31, !prof !375

xdr_decode_YFSVolSync.exit.cleanup_crit_edge:     ; preds = %xdr_decode_YFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end31:                                         ; preds = %xdr_decode_YFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  %41 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i68 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i68 to ptr
  %task34 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task34, align 8
  %comm35 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 101
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm35, ptr noundef nonnull @.str.63) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %xdr_decode_YFSVolSync.exit.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %do.end10.cleanup_crit_edge ], [ 0, %do.end31 ], [ 0, %xdr_decode_YFSVolSync.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_make_fs_call1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yfs_deliver_fs_remove_file2(ptr noundef %call) #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !375

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %comm, ptr noundef nonnull @.str.68, i32 noundef %conv) #12
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
  %scb = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  call fastcc void @xdr_decode_YFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %12 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bp, align 4
  %add.ptr.i = getelementptr i32, ptr %13, i32 6
  store ptr %add.ptr.i, ptr %bp, align 4
  %scb15 = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 2
  call fastcc void @xdr_decode_YFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb15)
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end14.cleanup_crit_edge, label %if.end181.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end181.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bp, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %.unpack.i29 = load i32, ptr %15, align 1
  %.elt266.i = getelementptr inbounds [2 x i32], ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %.elt266.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %.unpack267.i = load i32, ptr %.elt266.i, align 1
  %conv.i.i30 = zext i32 %.unpack.i29 to i64
  %shl.i.i31 = shl nuw i64 %conv.i.i30, 32
  %conv1.i.i32 = zext i32 %.unpack267.i to i64
  %or.i.i33 = or i64 %shl.i.i31, %conv1.i.i32
  %18 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %or.i.i33) #14, !srcloc !389
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %or.i.i33, i64 %18, i32 0) #14, !srcloc !388
  %asmresult10.i.i = extractvalue { i64, i32 } %19, 0
  %creation.0.i = lshr i64 %asmresult10.i.i, 23
  %20 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %creation.0.i, ptr %volsync, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end181.i, %if.end14.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %do.end10.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end181.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yfs_done_fs_remove_file2(ptr nocapture noundef readonly %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 23
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -103, i32 %1)
  %cmp = icmp eq i32 %1, -103
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %abort_code = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 24
  %2 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %abort_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %3)
  %cmp1 = icmp eq i32 %3, -2
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %server = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %server, align 8
  %flags = getelementptr inbounds %struct.afs_server, ptr %5, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 18, ptr noundef %flags) #9
  %op = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 18
  %6 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %op, align 4
  %flags2 = getelementptr inbounds %struct.afs_operation, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags2, align 8
  %or = or i32 %9, 128
  store i32 %or, ptr %flags2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yfs_deliver_fs_remove(ptr noundef %call) #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !375

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %comm, ptr noundef nonnull @.str.70, i32 noundef %conv) #12
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
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  %11 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %bp, align 4
  %scb = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  call fastcc void @xdr_decode_YFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end12.cleanup_crit_edge, label %if.end181.i

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end181.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bp, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %.unpack.i = load i32, ptr %13, align 1
  %.elt266.i = getelementptr inbounds [2 x i32], ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %.elt266.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %.unpack267.i = load i32, ptr %.elt266.i, align 1
  %conv.i.i = zext i32 %.unpack.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %.unpack267.i to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %16 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %or.i.i) #14, !srcloc !389
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %or.i.i, i64 %16, i32 0) #14, !srcloc !388
  %asmresult10.i.i = extractvalue { i64, i32 } %17, 0
  %creation.0.i = lshr i64 %asmresult10.i.i, 23
  %18 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %creation.0.i, ptr %volsync, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end181.i, %if.end12.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %do.end8.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.end181.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yfs_deliver_fs_link(ptr noundef %call) #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !375

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %comm, ptr noundef nonnull @.str.73, i32 noundef %conv) #12
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
  call fastcc void @xdr_decode_YFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %scb15 = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  call fastcc void @xdr_decode_YFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb15)
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end14.xdr_decode_YFSVolSync.exit_crit_edge, label %if.end181.i

if.end14.xdr_decode_YFSVolSync.exit_crit_edge:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_YFSVolSync.exit

if.end181.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bp, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %.unpack.i = load i32, ptr %13, align 1
  %.elt266.i = getelementptr inbounds [2 x i32], ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %.elt266.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %.unpack267.i = load i32, ptr %.elt266.i, align 1
  %conv.i.i = zext i32 %.unpack.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %.unpack267.i to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %16 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %or.i.i) #14, !srcloc !389
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %or.i.i, i64 %16, i32 0) #14, !srcloc !388
  %asmresult10.i.i = extractvalue { i64, i32 } %17, 0
  %creation.0.i = lshr i64 %asmresult10.i.i, 23
  %18 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %creation.0.i, ptr %volsync, align 8
  br label %xdr_decode_YFSVolSync.exit

xdr_decode_YFSVolSync.exit:                       ; preds = %if.end181.i, %if.end14.xdr_decode_YFSVolSync.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %19 = load i32, ptr @afs_debug, align 4
  %and17 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %xdr_decode_YFSVolSync.exit.cleanup_crit_edge, label %do.end28, !prof !375

xdr_decode_YFSVolSync.exit.cleanup_crit_edge:     ; preds = %xdr_decode_YFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end28:                                         ; preds = %xdr_decode_YFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i50 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i50 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task31, align 8
  %comm32 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 101
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm32, ptr noundef nonnull @.str.73) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %xdr_decode_YFSVolSync.exit.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %do.end10.cleanup_crit_edge ], [ 0, %do.end28 ], [ 0, %xdr_decode_YFSVolSync.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yfs_deliver_fs_symlink(ptr noundef %call) #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !375

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %comm, ptr noundef nonnull @.str.77, i32 noundef %conv) #12
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
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %.unpack.i = load i32, ptr %10, align 1
  %.elt13.i = getelementptr inbounds [2 x i32], ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %.elt13.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %.unpack14.i = load i32, ptr %.elt13.i, align 1
  %conv.i.i = zext i32 %.unpack.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %.unpack14.i to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %13 = ptrtoint ptr %fid to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %or.i.i, ptr %fid, align 8
  %vnode.i = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %vnode.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %.unpack15.i = load i32, ptr %vnode.i, align 1
  %.elt16.i = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %10, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %.elt16.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %.unpack17.i = load i32, ptr %.elt16.i, align 1
  %conv.i18.i = zext i32 %.unpack15.i to i64
  %shl.i19.i = shl nuw i64 %conv.i18.i, 32
  %conv1.i20.i = zext i32 %.unpack17.i to i64
  %or.i21.i = or i64 %shl.i19.i, %conv1.i20.i
  %vnode2.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %vnode2.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %or.i21.i, ptr %vnode2.i, align 8
  %hi.i = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %10, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %hi.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %hi.i, align 1
  %vnode_hi.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 1, i32 2
  %19 = ptrtoint ptr %vnode_hi.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %vnode_hi.i, align 8
  %unique.i = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %10, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %unique.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %unique.i, align 1
  %unique5.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 1, i32 3
  %22 = ptrtoint ptr %unique5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %unique5.i, align 4
  %add.ptr.i = getelementptr i32, ptr %10, i32 6
  %23 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %bp, align 4
  %scb = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 2
  call fastcc void @xdr_decode_YFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %scb15 = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  call fastcc void @xdr_decode_YFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb15)
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end14.xdr_decode_YFSVolSync.exit_crit_edge, label %if.end181.i

if.end14.xdr_decode_YFSVolSync.exit_crit_edge:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_YFSVolSync.exit

if.end181.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bp, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %.unpack.i51 = load i32, ptr %25, align 1
  %.elt266.i = getelementptr inbounds [2 x i32], ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %.elt266.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %.unpack267.i = load i32, ptr %.elt266.i, align 1
  %conv.i.i52 = zext i32 %.unpack.i51 to i64
  %shl.i.i53 = shl nuw i64 %conv.i.i52, 32
  %conv1.i.i54 = zext i32 %.unpack267.i to i64
  %or.i.i55 = or i64 %shl.i.i53, %conv1.i.i54
  %28 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %or.i.i55) #14, !srcloc !389
  %29 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %or.i.i55, i64 %28, i32 0) #14, !srcloc !388
  %asmresult10.i.i = extractvalue { i64, i32 } %29, 0
  %creation.0.i = lshr i64 %asmresult10.i.i, 23
  %30 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %creation.0.i, ptr %volsync, align 8
  br label %xdr_decode_YFSVolSync.exit

xdr_decode_YFSVolSync.exit:                       ; preds = %if.end181.i, %if.end14.xdr_decode_YFSVolSync.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %31 = load i32, ptr @afs_debug, align 4
  %and17 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %xdr_decode_YFSVolSync.exit.cleanup_crit_edge, label %do.end28, !prof !375

xdr_decode_YFSVolSync.exit.cleanup_crit_edge:     ; preds = %xdr_decode_YFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end28:                                         ; preds = %xdr_decode_YFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  %32 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i57 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i57 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task31, align 8
  %comm32 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 101
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm32, ptr noundef nonnull @.str.77) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %xdr_decode_YFSVolSync.exit.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %do.end10.cleanup_crit_edge ], [ 0, %do.end28 ], [ 0, %xdr_decode_YFSVolSync.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yfs_deliver_fs_rename(ptr noundef %call) #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !375

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %comm, ptr noundef nonnull @.str.81, i32 noundef %conv) #12
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
  %scb = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  call fastcc void @xdr_decode_YFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %scb15 = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 1, i32 2
  call fastcc void @xdr_decode_YFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb15)
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end14.xdr_decode_YFSVolSync.exit_crit_edge, label %if.end181.i

if.end14.xdr_decode_YFSVolSync.exit_crit_edge:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_YFSVolSync.exit

if.end181.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bp, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %.unpack.i = load i32, ptr %13, align 1
  %.elt266.i = getelementptr inbounds [2 x i32], ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %.elt266.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %.unpack267.i = load i32, ptr %.elt266.i, align 1
  %conv.i.i = zext i32 %.unpack.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %.unpack267.i to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %16 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %or.i.i) #14, !srcloc !389
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %or.i.i, i64 %16, i32 0) #14, !srcloc !388
  %asmresult10.i.i = extractvalue { i64, i32 } %17, 0
  %creation.0.i = lshr i64 %asmresult10.i.i, 23
  %18 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %creation.0.i, ptr %volsync, align 8
  br label %xdr_decode_YFSVolSync.exit

xdr_decode_YFSVolSync.exit:                       ; preds = %if.end181.i, %if.end14.xdr_decode_YFSVolSync.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %19 = load i32, ptr @afs_debug, align 4
  %and17 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %xdr_decode_YFSVolSync.exit.cleanup_crit_edge, label %do.end28, !prof !375

xdr_decode_YFSVolSync.exit.cleanup_crit_edge:     ; preds = %xdr_decode_YFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end28:                                         ; preds = %xdr_decode_YFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i50 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i50 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task31, align 8
  %comm32 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 101
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm32, ptr noundef nonnull @.str.81) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %xdr_decode_YFSVolSync.exit.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %do.end10.cleanup_crit_edge ], [ 0, %do.end28 ], [ 0, %xdr_decode_YFSVolSync.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_make_fs_call2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yfs_deliver_status_and_volsync(ptr noundef %call) #0 align 64 {
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
  call fastcc void @xdr_decode_YFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end.xdr_decode_YFSVolSync.exit_crit_edge, label %if.end181.i

if.end.xdr_decode_YFSVolSync.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_YFSVolSync.exit

if.end181.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bp, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %.unpack.i = load i32, ptr %6, align 1
  %.elt266.i = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %.elt266.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %.unpack267.i = load i32, ptr %.elt266.i, align 1
  %conv.i.i = zext i32 %.unpack.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %.unpack267.i to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %9 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %or.i.i) #14, !srcloc !389
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %or.i.i, i64 %9, i32 0) #14, !srcloc !388
  %asmresult10.i.i = extractvalue { i64, i32 } %10, 0
  %creation.0.i = lshr i64 %asmresult10.i.i, 23
  %11 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %creation.0.i, ptr %volsync, align 8
  br label %xdr_decode_YFSVolSync.exit

xdr_decode_YFSVolSync.exit:                       ; preds = %if.end181.i, %if.end.xdr_decode_YFSVolSync.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %12 = load i32, ptr @afs_debug, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %xdr_decode_YFSVolSync.exit.cleanup_crit_edge, label %do.end, !prof !375

xdr_decode_YFSVolSync.exit.cleanup_crit_edge:     ; preds = %xdr_decode_YFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %xdr_decode_YFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 101
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm, ptr noundef nonnull @.str.85) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %xdr_decode_YFSVolSync.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %xdr_decode_YFSVolSync.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yfs_deliver_fs_get_volume_status(ptr noundef %call) #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !375

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %comm, ptr noundef nonnull @.str.89, i32 noundef %conv) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %unmarshall9 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %9 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %unmarshall9, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.158)
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
  store i32 72, ptr %iov_len.i, align 4
  %16 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %16, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 72, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %16, i32 noundef 1, i32 noundef 72) #9
  br label %do.body13

do.body13:                                        ; preds = %sw.bb, %do.end8.do.body13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %19 = load i32, ptr @afs_debug, align 4
  %and14 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body13.do.end34_crit_edge, label %do.end25, !prof !375

do.body13.do.end34_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

do.end25:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %20 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i426 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i426 to ptr
  %task28 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task28, align 8
  %comm29 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 101
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %comm29) #12
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
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %.unpack.i = load i32, ptr %25, align 1
  %.elt50.i = getelementptr inbounds [2 x i32], ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %.elt50.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %.unpack51.i = load i32, ptr %.elt50.i, align 1
  %conv.i.i = zext i32 %.unpack.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %.unpack51.i to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %or.i.i, ptr %26, align 8
  %parent_id.i = getelementptr inbounds %struct.yfs_xdr_YFSFetchVolumeStatus, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %parent_id.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %.unpack52.i = load i32, ptr %parent_id.i, align 1
  %.elt53.i = getelementptr inbounds %struct.yfs_xdr_YFSFetchVolumeStatus, ptr %25, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %.elt53.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %.unpack54.i = load i32, ptr %.elt53.i, align 1
  %conv.i73.i = zext i32 %.unpack52.i to i64
  %shl.i74.i = shl nuw i64 %conv.i73.i, 32
  %conv1.i75.i = zext i32 %.unpack54.i to i64
  %or.i76.i = or i64 %shl.i74.i, %conv1.i75.i
  %parent_id3.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %parent_id3.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %or.i76.i, ptr %parent_id3.i, align 8
  %flags4.i = getelementptr inbounds %struct.yfs_xdr_YFSFetchVolumeStatus, ptr %25, i32 0, i32 2
  %33 = ptrtoint ptr %flags4.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %flags4.i, align 1
  %35 = trunc i32 %34 to i8
  %conv.i = and i8 %35, 1
  %online.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %online.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i, ptr %online.i, align 8
  %conv6.i = and i8 %35, 2
  %in_service.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 3
  %37 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv6.i, ptr %in_service.i, align 1
  %conv8.i = and i8 %35, 4
  %blessed.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 4
  %38 = ptrtoint ptr %blessed.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv8.i, ptr %blessed.i, align 2
  %conv10.i = and i8 %35, 8
  %needs_salvage.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 5
  %39 = ptrtoint ptr %needs_salvage.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv10.i, ptr %needs_salvage.i, align 1
  %type.i = getelementptr inbounds %struct.yfs_xdr_YFSFetchVolumeStatus, ptr %25, i32 0, i32 3
  %40 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %type.i, align 1
  %type11.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 6
  %42 = ptrtoint ptr %type11.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %type11.i, align 4
  %min_quota.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 7
  %43 = ptrtoint ptr %min_quota.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %min_quota.i, align 8
  %max_quota.i = getelementptr inbounds %struct.yfs_xdr_YFSFetchVolumeStatus, ptr %25, i32 0, i32 4
  %44 = ptrtoint ptr %max_quota.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %.unpack55.i = load i32, ptr %max_quota.i, align 1
  %.elt56.i = getelementptr inbounds %struct.yfs_xdr_YFSFetchVolumeStatus, ptr %25, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %.elt56.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %.unpack57.i = load i32, ptr %.elt56.i, align 1
  %conv.i77.i = zext i32 %.unpack55.i to i64
  %shl.i78.i = shl nuw i64 %conv.i77.i, 32
  %conv1.i79.i = zext i32 %.unpack57.i to i64
  %or.i80.i = or i64 %shl.i78.i, %conv1.i79.i
  %max_quota13.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 8
  %46 = ptrtoint ptr %max_quota13.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %or.i80.i, ptr %max_quota13.i, align 8
  %blocks_in_use.i = getelementptr inbounds %struct.yfs_xdr_YFSFetchVolumeStatus, ptr %25, i32 0, i32 5
  %47 = ptrtoint ptr %blocks_in_use.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %.unpack58.i = load i32, ptr %blocks_in_use.i, align 1
  %.elt59.i = getelementptr inbounds %struct.yfs_xdr_YFSFetchVolumeStatus, ptr %25, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %.elt59.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %.unpack60.i = load i32, ptr %.elt59.i, align 1
  %conv.i81.i = zext i32 %.unpack58.i to i64
  %shl.i82.i = shl nuw i64 %conv.i81.i, 32
  %conv1.i83.i = zext i32 %.unpack60.i to i64
  %or.i84.i = or i64 %shl.i82.i, %conv1.i83.i
  %blocks_in_use15.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 9
  %49 = ptrtoint ptr %blocks_in_use15.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %or.i84.i, ptr %blocks_in_use15.i, align 8
  %part_blocks_avail.i = getelementptr inbounds %struct.yfs_xdr_YFSFetchVolumeStatus, ptr %25, i32 0, i32 6
  %50 = ptrtoint ptr %part_blocks_avail.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %.unpack61.i = load i32, ptr %part_blocks_avail.i, align 1
  %.elt62.i = getelementptr inbounds %struct.yfs_xdr_YFSFetchVolumeStatus, ptr %25, i32 0, i32 6, i32 1
  %51 = ptrtoint ptr %.elt62.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %.unpack63.i = load i32, ptr %.elt62.i, align 1
  %conv.i85.i = zext i32 %.unpack61.i to i64
  %shl.i86.i = shl nuw i64 %conv.i85.i, 32
  %conv1.i87.i = zext i32 %.unpack63.i to i64
  %or.i88.i = or i64 %shl.i86.i, %conv1.i87.i
  %part_blocks_avail17.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 10
  %52 = ptrtoint ptr %part_blocks_avail17.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %or.i88.i, ptr %part_blocks_avail17.i, align 8
  %part_max_blocks.i = getelementptr inbounds %struct.yfs_xdr_YFSFetchVolumeStatus, ptr %25, i32 0, i32 7
  %53 = ptrtoint ptr %part_max_blocks.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %.unpack64.i = load i32, ptr %part_max_blocks.i, align 1
  %.elt65.i = getelementptr inbounds %struct.yfs_xdr_YFSFetchVolumeStatus, ptr %25, i32 0, i32 7, i32 1
  %54 = ptrtoint ptr %.elt65.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %.unpack66.i = load i32, ptr %.elt65.i, align 1
  %conv.i89.i = zext i32 %.unpack64.i to i64
  %shl.i90.i = shl nuw i64 %conv.i89.i, 32
  %conv1.i91.i = zext i32 %.unpack66.i to i64
  %or.i92.i = or i64 %shl.i90.i, %conv1.i91.i
  %part_max_blocks19.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 11
  %55 = ptrtoint ptr %part_max_blocks19.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %or.i92.i, ptr %part_max_blocks19.i, align 8
  %vol_copy_date.i = getelementptr inbounds %struct.yfs_xdr_YFSFetchVolumeStatus, ptr %25, i32 0, i32 8
  %56 = ptrtoint ptr %vol_copy_date.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %.unpack67.i = load i32, ptr %vol_copy_date.i, align 1
  %.elt68.i = getelementptr inbounds %struct.yfs_xdr_YFSFetchVolumeStatus, ptr %25, i32 0, i32 8, i32 1
  %57 = ptrtoint ptr %.elt68.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %.unpack69.i = load i32, ptr %.elt68.i, align 1
  %conv.i93.i = zext i32 %.unpack67.i to i64
  %shl.i94.i = shl nuw i64 %conv.i93.i, 32
  %conv1.i95.i = zext i32 %.unpack69.i to i64
  %or.i96.i = or i64 %shl.i94.i, %conv1.i95.i
  %vol_copy_date21.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 12
  %58 = ptrtoint ptr %vol_copy_date21.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %or.i96.i, ptr %vol_copy_date21.i, align 8
  %vol_backup_date.i = getelementptr inbounds %struct.yfs_xdr_YFSFetchVolumeStatus, ptr %25, i32 0, i32 9
  %59 = ptrtoint ptr %vol_backup_date.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %.unpack70.i = load i32, ptr %vol_backup_date.i, align 1
  %.elt71.i = getelementptr inbounds %struct.yfs_xdr_YFSFetchVolumeStatus, ptr %25, i32 0, i32 9, i32 1
  %60 = ptrtoint ptr %.elt71.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %.unpack72.i = load i32, ptr %.elt71.i, align 1
  %conv.i97.i = zext i32 %.unpack70.i to i64
  %shl.i98.i = shl nuw i64 %conv.i97.i, 32
  %conv1.i99.i = zext i32 %.unpack72.i to i64
  %or.i100.i = or i64 %shl.i98.i, %conv1.i99.i
  %vol_backup_date23.i = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 13
  %61 = ptrtoint ptr %vol_backup_date23.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %or.i100.i, ptr %vol_backup_date23.i, align 8
  %62 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %unmarshall9, align 8
  %inc40 = add i8 %63, 1
  store i8 %inc40, ptr %unmarshall9, align 8
  %iov_len.i427 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %64 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i = getelementptr inbounds %struct.anon.151, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %iov_len.i427 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4, ptr %iov_len.i427, align 4
  %66 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %tmp.i, ptr %66, align 8
  %iov_len2.i.i428 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %68 = ptrtoint ptr %iov_len2.i.i428 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4, ptr %iov_len2.i.i428, align 4
  %def_iter.i.i429 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i429, i32 noundef 0, ptr noundef %66, i32 noundef 1, i32 noundef 4) #9
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
  %69 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp47 = getelementptr inbounds %struct.anon.151, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %tmp47 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tmp47, align 4
  %count = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %72 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %73 = load i32, ptr @afs_debug, align 4
  %and49 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end46.do.end70_crit_edge, label %do.end60, !prof !375

if.end46.do.end70_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70

do.end60:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %74 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i430 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i430 to ptr
  %task63 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task63 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task63, align 8
  %comm64 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 101
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %comm64, i32 noundef %71) #12
  %78 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pr = load i32, ptr %count, align 4
  br label %do.end70

do.end70:                                         ; preds = %do.end60, %if.end46.do.end70_crit_edge
  %79 = phi i32 [ %.pr, %do.end60 ], [ %71, %if.end46.do.end70_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %79)
  %cmp72 = icmp ugt i32 %79, 255
  br i1 %cmp72, label %if.then74, label %if.end76

if.then74:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #11
  %call75 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 9) #9
  br label %cleanup

if.end76:                                         ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw nsw i32 %79, 3
  %and78 = and i32 %add, -4
  %iov_len.i431 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i432 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %80 = ptrtoint ptr %buffer.i432 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %buffer.i432, align 4
  %82 = ptrtoint ptr %iov_len.i431 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %and78, ptr %iov_len.i431, align 4
  %83 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %83, align 8
  %iov_len2.i.i433 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %85 = ptrtoint ptr %iov_len2.i.i433 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %and78, ptr %iov_len2.i.i433, align 4
  %def_iter.i.i434 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i434, i32 noundef 0, ptr noundef %83, i32 noundef 1, i32 noundef %and78) #9
  %86 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %unmarshall9, align 8
  %inc80 = add i8 %87, 1
  store i8 %inc80, ptr %unmarshall9, align 8
  br label %do.body82

do.body82:                                        ; preds = %if.end76, %do.end8.do.body82_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %88 = load i32, ptr @afs_debug, align 4
  %and83 = and i32 %88, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.body82.do.end103_crit_edge, label %do.end94, !prof !375

do.body82.do.end103_crit_edge:                    ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end103

do.end94:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  %89 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i435 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i435 to ptr
  %task97 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task97 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task97, align 8
  %comm98 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 101
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %comm98) #12
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
  %93 = ptrtoint ptr %buffer109 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %buffer109, align 4
  %count110 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %95 = ptrtoint ptr %count110 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %count110, align 4
  %arrayidx = getelementptr i8, ptr %94, i32 %96
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %arrayidx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %98 = load i32, ptr @afs_debug, align 4
  %and112 = and i32 %98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end108.do.end132_crit_edge, label %do.end123, !prof !375

if.end108.do.end132_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end132

do.end123:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  %99 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i436 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i436 to ptr
  %task126 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %task126 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %task126, align 8
  %comm127 = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 101
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %comm127, ptr noundef %94) #12
  br label %do.end132

do.end132:                                        ; preds = %do.end123, %if.end108.do.end132_crit_edge
  %iov_len.i437 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %103 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i438 = getelementptr inbounds %struct.anon.151, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %iov_len.i437 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 4, ptr %iov_len.i437, align 4
  %105 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %tmp.i438, ptr %105, align 8
  %iov_len2.i.i439 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %107 = ptrtoint ptr %iov_len2.i.i439 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 4, ptr %iov_len2.i.i439, align 4
  %def_iter.i.i440 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i440, i32 noundef 0, ptr noundef %105, i32 noundef 1, i32 noundef 4) #9
  %108 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %unmarshall9, align 8
  %inc134 = add i8 %109, 1
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
  %110 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp141 = getelementptr inbounds %struct.anon.151, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %tmp141 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tmp141, align 4
  %count142 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %113 = ptrtoint ptr %count142 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %count142, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %114 = load i32, ptr @afs_debug, align 4
  %and144 = and i32 %114, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end140.do.end165_crit_edge, label %do.end155, !prof !375

if.end140.do.end165_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end165

do.end155:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  %115 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i441 = and i32 %115, -16384
  %116 = inttoptr i32 %and.i441 to ptr
  %task158 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %task158 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %task158, align 8
  %comm159 = getelementptr inbounds %struct.task_struct, ptr %118, i32 0, i32 101
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %comm159, i32 noundef %112) #12
  %119 = ptrtoint ptr %count142 to i32
  call void @__asan_load4_noabort(i32 %119)
  %.pr461 = load i32, ptr %count142, align 4
  br label %do.end165

do.end165:                                        ; preds = %do.end155, %if.end140.do.end165_crit_edge
  %120 = phi i32 [ %.pr461, %do.end155 ], [ %112, %if.end140.do.end165_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %120)
  %cmp167 = icmp ugt i32 %120, 255
  br i1 %cmp167, label %if.then169, label %if.end171

if.then169:                                       ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #11
  %call170 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 8) #9
  br label %cleanup

if.end171:                                        ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #11
  %add173 = add nuw nsw i32 %120, 3
  %and174 = and i32 %add173, -4
  %iov_len.i442 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i443 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %121 = ptrtoint ptr %buffer.i443 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %buffer.i443, align 4
  %123 = ptrtoint ptr %iov_len.i442 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %and174, ptr %iov_len.i442, align 4
  %124 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %122, ptr %124, align 8
  %iov_len2.i.i444 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %126 = ptrtoint ptr %iov_len2.i.i444 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %and174, ptr %iov_len2.i.i444, align 4
  %def_iter.i.i445 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i445, i32 noundef 0, ptr noundef %124, i32 noundef 1, i32 noundef %and174) #9
  %127 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %unmarshall9, align 8
  %inc176 = add i8 %128, 1
  store i8 %inc176, ptr %unmarshall9, align 8
  br label %do.body178

do.body178:                                       ; preds = %if.end171, %do.end8.do.body178_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %129 = load i32, ptr @afs_debug, align 4
  %and179 = and i32 %129, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %do.body178.do.end199_crit_edge, label %do.end190, !prof !375

do.body178.do.end199_crit_edge:                   ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end199

do.end190:                                        ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #11
  %130 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i446 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i446 to ptr
  %task193 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %task193 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %task193, align 8
  %comm194 = getelementptr inbounds %struct.task_struct, ptr %133, i32 0, i32 101
  %call196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %comm194) #12
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
  %134 = ptrtoint ptr %buffer205 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %buffer205, align 4
  %count206 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %136 = ptrtoint ptr %count206 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %count206, align 4
  %arrayidx207 = getelementptr i8, ptr %135, i32 %137
  %138 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %arrayidx207, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %139 = load i32, ptr @afs_debug, align 4
  %and209 = and i32 %139, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.end204.do.end229_crit_edge, label %do.end220, !prof !375

if.end204.do.end229_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end229

do.end220:                                        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  %140 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i447 = and i32 %140, -16384
  %141 = inttoptr i32 %and.i447 to ptr
  %task223 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %task223 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %task223, align 8
  %comm224 = getelementptr inbounds %struct.task_struct, ptr %143, i32 0, i32 101
  %call226 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %comm224, ptr noundef %135) #12
  br label %do.end229

do.end229:                                        ; preds = %do.end220, %if.end204.do.end229_crit_edge
  %iov_len.i448 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %144 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i449 = getelementptr inbounds %struct.anon.151, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %iov_len.i448 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 4, ptr %iov_len.i448, align 4
  %146 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %tmp.i449, ptr %146, align 8
  %iov_len2.i.i450 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %148 = ptrtoint ptr %iov_len2.i.i450 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 4, ptr %iov_len2.i.i450, align 4
  %def_iter.i.i451 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i451, i32 noundef 0, ptr noundef %146, i32 noundef 1, i32 noundef 4) #9
  %149 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %unmarshall9, align 8
  %inc231 = add i8 %150, 1
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
  %151 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp238 = getelementptr inbounds %struct.anon.151, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %tmp238 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %tmp238, align 4
  %count239 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %154 = ptrtoint ptr %count239 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %count239, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %155 = load i32, ptr @afs_debug, align 4
  %and241 = and i32 %155, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241)
  %tobool242.not = icmp eq i32 %and241, 0
  br i1 %tobool242.not, label %if.end237.do.end262_crit_edge, label %do.end252, !prof !375

if.end237.do.end262_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end262

do.end252:                                        ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #11
  %156 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i452 = and i32 %156, -16384
  %157 = inttoptr i32 %and.i452 to ptr
  %task255 = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %task255 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %task255, align 8
  %comm256 = getelementptr inbounds %struct.task_struct, ptr %159, i32 0, i32 101
  %call259 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %comm256, i32 noundef %153) #12
  %160 = ptrtoint ptr %count239 to i32
  call void @__asan_load4_noabort(i32 %160)
  %.pr462 = load i32, ptr %count239, align 4
  br label %do.end262

do.end262:                                        ; preds = %do.end252, %if.end237.do.end262_crit_edge
  %161 = phi i32 [ %.pr462, %do.end252 ], [ %153, %if.end237.do.end262_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %161)
  %cmp264 = icmp ugt i32 %161, 255
  br i1 %cmp264, label %if.then266, label %if.end268

if.then266:                                       ; preds = %do.end262
  call void @__sanitizer_cov_trace_pc() #11
  %call267 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 7) #9
  br label %cleanup

if.end268:                                        ; preds = %do.end262
  call void @__sanitizer_cov_trace_pc() #11
  %add270 = add nuw nsw i32 %161, 3
  %and271 = and i32 %add270, -4
  %iov_len.i453 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i454 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %162 = ptrtoint ptr %buffer.i454 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %buffer.i454, align 4
  %164 = ptrtoint ptr %iov_len.i453 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %and271, ptr %iov_len.i453, align 4
  %165 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %163, ptr %165, align 8
  %iov_len2.i.i455 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %167 = ptrtoint ptr %iov_len2.i.i455 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %and271, ptr %iov_len2.i.i455, align 4
  %def_iter.i.i456 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i456, i32 noundef 0, ptr noundef %165, i32 noundef 1, i32 noundef %and271) #9
  %168 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %unmarshall9, align 8
  %inc273 = add i8 %169, 1
  store i8 %inc273, ptr %unmarshall9, align 8
  br label %do.body275

do.body275:                                       ; preds = %if.end268, %do.end8.do.body275_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %170 = load i32, ptr @afs_debug, align 4
  %and276 = and i32 %170, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and276)
  %tobool277.not = icmp eq i32 %and276, 0
  br i1 %tobool277.not, label %do.body275.do.end296_crit_edge, label %do.end287, !prof !375

do.body275.do.end296_crit_edge:                   ; preds = %do.body275
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end296

do.end287:                                        ; preds = %do.body275
  call void @__sanitizer_cov_trace_pc() #11
  %171 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i457 = and i32 %171, -16384
  %172 = inttoptr i32 %and.i457 to ptr
  %task290 = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 2
  %173 = ptrtoint ptr %task290 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %task290, align 8
  %comm291 = getelementptr inbounds %struct.task_struct, ptr %174, i32 0, i32 101
  %call293 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %comm291) #12
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
  %175 = ptrtoint ptr %buffer302 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %buffer302, align 4
  %count303 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %177 = ptrtoint ptr %count303 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %count303, align 4
  %arrayidx304 = getelementptr i8, ptr %176, i32 %178
  %179 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %arrayidx304, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %180 = load i32, ptr @afs_debug, align 4
  %and306 = and i32 %180, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and306)
  %tobool307.not = icmp eq i32 %and306, 0
  br i1 %tobool307.not, label %if.end301.do.end326_crit_edge, label %do.end317, !prof !375

if.end301.do.end326_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end326

do.end317:                                        ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #11
  %181 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i458 = and i32 %181, -16384
  %182 = inttoptr i32 %and.i458 to ptr
  %task320 = getelementptr inbounds %struct.thread_info, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %task320 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %task320, align 8
  %comm321 = getelementptr inbounds %struct.task_struct, ptr %184, i32 0, i32 101
  %call323 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %comm321, ptr noundef %176) #12
  br label %do.end326

do.end326:                                        ; preds = %do.end317, %if.end301.do.end326_crit_edge
  %185 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %unmarshall9, align 8
  %inc328 = add i8 %186, 1
  store i8 %inc328, ptr %unmarshall9, align 8
  br label %do.body329

do.body329:                                       ; preds = %do.end326, %do.end8.do.body329_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %187 = load i32, ptr @afs_debug, align 4
  %and330 = and i32 %187, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and330)
  %tobool331.not = icmp eq i32 %and330, 0
  br i1 %tobool331.not, label %do.body329.cleanup_crit_edge, label %do.end341, !prof !375

do.body329.cleanup_crit_edge:                     ; preds = %do.body329
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end341:                                        ; preds = %do.body329
  call void @__sanitizer_cov_trace_pc() #11
  %188 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i459 = and i32 %188, -16384
  %189 = inttoptr i32 %and.i459 to ptr
  %task344 = getelementptr inbounds %struct.thread_info, ptr %189, i32 0, i32 2
  %190 = ptrtoint ptr %task344 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %task344, align 8
  %comm345 = getelementptr inbounds %struct.task_struct, ptr %191, i32 0, i32 101
  %call347 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm345, ptr noundef nonnull @.str.89) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end341, %do.body329.cleanup_crit_edge, %do.end296.cleanup_crit_edge, %if.then266, %sw.bb232.cleanup_crit_edge, %do.end199.cleanup_crit_edge, %if.then169, %sw.bb135.cleanup_crit_edge, %do.end103.cleanup_crit_edge, %if.then74, %sw.bb41.cleanup_crit_edge, %do.end34.cleanup_crit_edge
  %retval.0 = phi i32 [ %call267, %if.then266 ], [ %call170, %if.then169 ], [ %call75, %if.then74 ], [ %call35, %do.end34.cleanup_crit_edge ], [ %call42, %sw.bb41.cleanup_crit_edge ], [ %call104, %do.end103.cleanup_crit_edge ], [ %call136, %sw.bb135.cleanup_crit_edge ], [ %call200, %do.end199.cleanup_crit_edge ], [ %call233, %sw.bb232.cleanup_crit_edge ], [ %call297, %do.end296.cleanup_crit_edge ], [ 0, %do.end341 ], [ 0, %do.body329.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_lock_op_done(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_make_fs_calli(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yfs_deliver_fs_fetch_status(ptr noundef %call) #0 align 64 {
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
  call fastcc void @xdr_decode_YFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %8 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bp, align 4
  %callback.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 %4, i32 2, i32 1
  %reply_time.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 43
  %10 = ptrtoint ptr %reply_time.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %reply_time.i, align 8
  %expiration_time.i = getelementptr inbounds %struct.yfs_xdr_YFSCallBack, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %expiration_time.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %.unpack.i = load i32, ptr %expiration_time.i, align 1
  %.elt6.i = getelementptr inbounds %struct.yfs_xdr_YFSCallBack, ptr %9, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %.elt6.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %.unpack7.i = load i32, ptr %.elt6.i, align 1
  %conv.i.i = zext i32 %.unpack.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %.unpack7.i to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %mul.i = mul i64 %or.i.i, 100
  %add.i = add i64 %mul.i, %11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp8.i.i = icmp slt i64 %add.i, 0
  %14 = tail call i64 @llvm.abs.i64(i64 %add.i, i1 false) #9
  %15 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %14, i32 0) #14, !srcloc !387
  %asmresult.i.i.i = extractvalue { i64, i32 } %15, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %15, 1
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %14, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #14, !srcloc !388
  %asmresult10.i.i.i = extractvalue { i64, i32 } %16, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 29
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %17 = ptrtoint ptr %callback.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %cond213.i.i, ptr %callback.i, align 8
  %have_cb.i = getelementptr %struct.afs_operation, ptr %1, i32 0, i32 5, i32 %4, i32 2, i32 3
  %18 = ptrtoint ptr %have_cb.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %have_cb.i, align 1
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end.xdr_decode_YFSVolSync.exit_crit_edge, label %if.end181.i

if.end.xdr_decode_YFSVolSync.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_YFSVolSync.exit

if.end181.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i32, ptr %9, i32 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %.unpack.i24 = load i32, ptr %add.ptr.i, align 1
  %.elt266.i = getelementptr i32, ptr %9, i32 5
  %20 = ptrtoint ptr %.elt266.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %.unpack267.i = load i32, ptr %.elt266.i, align 1
  %conv.i.i25 = zext i32 %.unpack.i24 to i64
  %shl.i.i26 = shl nuw i64 %conv.i.i25, 32
  %conv1.i.i27 = zext i32 %.unpack267.i to i64
  %or.i.i28 = or i64 %shl.i.i26, %conv1.i.i27
  %21 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %or.i.i28) #14, !srcloc !389
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %or.i.i28, i64 %21, i32 0) #14, !srcloc !388
  %asmresult10.i.i = extractvalue { i64, i32 } %22, 0
  %creation.0.i = lshr i64 %asmresult10.i.i, 23
  %23 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %creation.0.i, ptr %volsync, align 8
  br label %xdr_decode_YFSVolSync.exit

xdr_decode_YFSVolSync.exit:                       ; preds = %if.end181.i, %if.end.xdr_decode_YFSVolSync.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %24 = load i32, ptr @afs_debug, align 4
  %and = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %xdr_decode_YFSVolSync.exit.cleanup_crit_edge, label %do.end, !prof !375

xdr_decode_YFSVolSync.exit.cleanup_crit_edge:     ; preds = %xdr_decode_YFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %xdr_decode_YFSVolSync.exit
  call void @__sanitizer_cov_trace_pc() #11
  %25 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 101
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm, ptr noundef nonnull @.str.126) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %xdr_decode_YFSVolSync.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %xdr_decode_YFSVolSync.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yfs_deliver_fs_inline_bulk_status(ptr noundef %call) #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !375

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %comm, ptr noundef nonnull @.str.128, i32 noundef %conv) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %unmarshall10 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %9 = ptrtoint ptr %unmarshall10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %unmarshall10, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.159)
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
  br i1 %tobool16.not, label %do.body14.do.end35_crit_edge, label %do.end26, !prof !375

do.body14.do.end35_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

do.end26:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %20 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i362 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i362 to ptr
  %task29 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task29, align 8
  %comm30 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 101
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %comm30) #12
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
  br i1 %tobool43.not, label %if.end39.do.end63_crit_edge, label %do.end53, !prof !375

if.end39.do.end63_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

do.end53:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %28 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %comm57, i32 noundef %26, i32 noundef %conv59) #12
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
  store i32 104, ptr %iov_len.i364, align 4
  %42 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %42, align 8
  %iov_len2.i.i365 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %iov_len2.i.i365 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 104, ptr %iov_len2.i.i365, align 4
  %def_iter.i.i366 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i366, i32 noundef 0, ptr noundef %42, i32 noundef 1, i32 noundef 104) #9
  br label %do.body74

do.body74:                                        ; preds = %more_counts, %do.end9.do.body74_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %45 = load i32, ptr @afs_debug, align 4
  %and75 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body74.do.end96_crit_edge, label %do.end86, !prof !375

do.body74.do.end96_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end96

do.end86:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  %46 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %comm90, i32 noundef %51) #12
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
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.160)
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
  call fastcc void @xdr_decode_YFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb.0)
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
  br i1 %tobool127.not, label %do.body125.do.end146_crit_edge, label %do.end137, !prof !375

do.body125.do.end146_crit_edge:                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end146

do.end137:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #11
  %73 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i372 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i372 to ptr
  %task140 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task140 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task140, align 8
  %comm141 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 101
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %comm141) #12
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
  br i1 %tobool155.not, label %if.end151.do.end174_crit_edge, label %do.end165, !prof !375

if.end151.do.end174_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end174

do.end165:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  %81 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i373 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i373 to ptr
  %task168 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task168 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task168, align 8
  %comm169 = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 101
  %call171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %comm169, i32 noundef %79) #12
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
  store i32 16, ptr %iov_len.i374, align 4
  %93 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %93, align 8
  %iov_len2.i.i376 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %95 = ptrtoint ptr %iov_len2.i.i376 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 16, ptr %iov_len2.i.i376, align 4
  %def_iter.i.i377 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i377, i32 noundef 0, ptr noundef %93, i32 noundef 1, i32 noundef 16) #9
  br label %do.body186

do.body186:                                       ; preds = %more_cbs, %do.end9.do.body186_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %96 = load i32, ptr @afs_debug, align 4
  %and187 = and i32 %96, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %do.body186.do.end207_crit_edge, label %do.end198, !prof !375

do.body186.do.end207_crit_edge:                   ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end207

do.end198:                                        ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #11
  %97 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i378 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i378 to ptr
  %task201 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %task201 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task201, align 8
  %comm202 = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 101
  %call204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %comm202) #12
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
  br i1 %tobool215.not, label %do.body213.do.end234_crit_edge, label %do.end225, !prof !375

do.body213.do.end234_crit_edge:                   ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end234

do.end225:                                        ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #11
  %102 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i379 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i379 to ptr
  %task228 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %task228 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task228, align 8
  %comm229 = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 101
  %call231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef %comm229) #12
  br label %do.end234

do.end234:                                        ; preds = %do.end225, %do.body213.do.end234_crit_edge
  %count235 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %106 = ptrtoint ptr %count235 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %count235, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.161)
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
  %reply_time.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 43
  %113 = ptrtoint ptr %reply_time.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %reply_time.i, align 8
  %expiration_time.i = getelementptr inbounds %struct.yfs_xdr_YFSCallBack, ptr %112, i32 0, i32 1
  %115 = ptrtoint ptr %expiration_time.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %.unpack.i = load i32, ptr %expiration_time.i, align 1
  %.elt6.i = getelementptr inbounds %struct.yfs_xdr_YFSCallBack, ptr %112, i32 0, i32 1, i32 1
  %116 = ptrtoint ptr %.elt6.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %.unpack7.i = load i32, ptr %.elt6.i, align 1
  %conv.i.i = zext i32 %.unpack.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %.unpack7.i to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %mul.i = mul i64 %or.i.i, 100
  %add.i = add i64 %mul.i, %114
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp8.i.i = icmp slt i64 %add.i, 0
  %117 = tail call i64 @llvm.abs.i64(i64 %add.i, i1 false) #9
  %118 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %117, i32 0) #14, !srcloc !387
  %asmresult.i.i.i = extractvalue { i64, i32 } %118, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %118, 1
  %119 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %117, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #14, !srcloc !388
  %asmresult10.i.i.i = extractvalue { i64, i32 } %119, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 29
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %120 = ptrtoint ptr %callback.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %cond213.i.i, ptr %callback.i, align 8
  %have_cb.i = getelementptr inbounds %struct.afs_status_cb, ptr %scb.1, i32 0, i32 3
  %121 = ptrtoint ptr %have_cb.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %have_cb.i, align 1
  %add.ptr.i = getelementptr i32, ptr %112, i32 4
  %122 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %add.ptr.i, ptr %bp, align 4
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
  store i32 40, ptr %iov_len.i380, align 4
  %130 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %128, ptr %130, align 8
  %iov_len2.i.i382 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %132 = ptrtoint ptr %iov_len2.i.i382 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 40, ptr %iov_len2.i.i382, align 4
  %def_iter.i.i383 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i383, i32 noundef 0, ptr noundef %130, i32 noundef 1, i32 noundef 40) #9
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
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end268.xdr_decode_YFSVolSync.exit_crit_edge, label %if.end181.i

if.end268.xdr_decode_YFSVolSync.exit_crit_edge:   ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_YFSVolSync.exit

if.end181.i:                                      ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %.unpack.i384 = load i32, ptr %136, align 1
  %.elt266.i = getelementptr inbounds [2 x i32], ptr %136, i32 0, i32 1
  %138 = ptrtoint ptr %.elt266.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %.unpack267.i = load i32, ptr %.elt266.i, align 1
  %conv.i.i385 = zext i32 %.unpack.i384 to i64
  %shl.i.i386 = shl nuw i64 %conv.i.i385, 32
  %conv1.i.i387 = zext i32 %.unpack267.i to i64
  %or.i.i388 = or i64 %shl.i.i386, %conv1.i.i387
  %139 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %or.i.i388) #14, !srcloc !389
  %140 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %or.i.i388, i64 %139, i32 0) #14, !srcloc !388
  %asmresult10.i.i = extractvalue { i64, i32 } %140, 0
  %creation.0.i = lshr i64 %asmresult10.i.i, 23
  %141 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %creation.0.i, ptr %volsync, align 8
  br label %xdr_decode_YFSVolSync.exit

xdr_decode_YFSVolSync.exit:                       ; preds = %if.end181.i, %if.end268.xdr_decode_YFSVolSync.exit_crit_edge
  %add.ptr.i389 = getelementptr i32, ptr %136, i32 10
  %142 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %add.ptr.i389, ptr %bp, align 4
  %143 = ptrtoint ptr %unmarshall10 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %unmarshall10, align 8
  %inc271 = add i8 %144, 1
  store i8 %inc271, ptr %unmarshall10, align 8
  br label %do.body273

do.body273:                                       ; preds = %xdr_decode_YFSVolSync.exit, %do.end9.do.body273_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %145 = load i32, ptr @afs_debug, align 4
  %and274 = and i32 %145, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274)
  %tobool275.not = icmp eq i32 %and274, 0
  br i1 %tobool275.not, label %do.body273.cleanup_crit_edge, label %do.end285, !prof !375

do.body273.cleanup_crit_edge:                     ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end285:                                        ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #11
  %146 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i390 = and i32 %146, -16384
  %147 = inttoptr i32 %and.i390 to ptr
  %task288 = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %task288 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %task288, align 8
  %comm289 = getelementptr inbounds %struct.task_struct, ptr %149, i32 0, i32 101
  %call291 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm289, ptr noundef nonnull @.str.128) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end285, %do.body273.cleanup_crit_edge, %sw.bb263.cleanup_crit_edge, %do.end207.cleanup_crit_edge, %if.then179, %do.end146.cleanup_crit_edge, %do.end96.cleanup_crit_edge, %if.then68, %do.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ %call180, %if.then179 ], [ %call69, %if.then68 ], [ %call36, %do.end35.cleanup_crit_edge ], [ %call97, %do.end96.cleanup_crit_edge ], [ %call147, %do.end146.cleanup_crit_edge ], [ %call208, %do.end207.cleanup_crit_edge ], [ %call264, %sw.bb263.cleanup_crit_edge ], [ 0, %do.end285 ], [ 0, %do.body273.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yfs_deliver_fs_fetch_opaque_acl(ptr noundef %call) #0 align 64 {
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
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !375

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !365) #9
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
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %comm, ptr noundef nonnull @.str.153, i32 noundef %conv) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %unmarshall9 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %12 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %unmarshall9, align 8
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.162)
  switch i8 %13, label %do.end8.do.body86_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %do.end8.sw.bb12_crit_edge
    i8 2, label %do.end8.sw.bb33_crit_edge
    i8 3, label %do.end8.sw.bb41_crit_edge
    i8 4, label %do.end8.sw.bb69_crit_edge
    i8 5, label %do.end8.sw.bb77_crit_edge
  ]

do.end8.sw.bb77_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb77

do.end8.sw.bb69_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb69

do.end8.sw.bb41_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb41

do.end8.sw.bb33_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb33

do.end8.sw.bb12_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

do.end8.do.body86_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body86

sw.bb:                                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %15 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i = getelementptr inbounds %struct.anon.151, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %iov_len.i, align 4
  %17 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tmp.i, ptr %17, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %17, i32 noundef 1, i32 noundef 4) #9
  %20 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %unmarshall9, align 8
  %inc = add i8 %21, 1
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
  %22 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp17 = getelementptr inbounds %struct.anon.151, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %tmp17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tmp17, align 4
  %count2 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %25 = ptrtoint ptr %count2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %count2, align 4
  %sub = add i32 %24, -1
  %or = or i32 %sub, 3
  %add = add i32 %or, 1
  %flags = getelementptr inbounds %struct.yfs_acl, ptr %4, i32 0, i32 4
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and18 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else, label %if.end8.i

if.end8.i:                                        ; preds = %if.end16
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %add, i32 4) #9
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 3264) #15
  %tobool23.not = icmp eq ptr %call9.i, null
  br i1 %tobool23.not, label %if.end8.i.cleanup_crit_edge, label %if.end25

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call9.i, ptr %4, align 4
  %29 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count2, align 4
  %31 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %call9.i, align 128
  %data = getelementptr inbounds %struct.afs_acl, ptr %call9.i, i32 0, i32 1
  %iov_len.i201 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %32 = ptrtoint ptr %iov_len.i201 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add, ptr %iov_len.i201, align 4
  %33 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %data, ptr %33, align 8
  %iov_len2.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %iov_len2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add, ptr %iov_len2.i, align 4
  %def_iter.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i, i32 noundef 0, ptr noundef %33, i32 noundef 1, i32 noundef %add) #9
  br label %if.end30

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %iov_len.i202 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %36 = ptrtoint ptr %iov_len.i202 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add, ptr %iov_len.i202, align 4
  %def_iter.i203 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_discard(ptr noundef %def_iter.i203, i32 noundef 0, i32 noundef %add) #9
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.end25
  %37 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %unmarshall9, align 8
  %inc32 = add i8 %38, 1
  store i8 %inc32, ptr %unmarshall9, align 8
  br label %sw.bb33

sw.bb33:                                          ; preds = %if.end30, %do.end8.sw.bb33_crit_edge
  %call34 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %sw.bb33.cleanup_crit_edge, label %if.end38

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  %iov_len.i204 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %39 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i205 = getelementptr inbounds %struct.anon.151, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %iov_len.i204 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4, ptr %iov_len.i204, align 4
  %41 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %tmp.i205, ptr %41, align 8
  %iov_len2.i.i206 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %43 = ptrtoint ptr %iov_len2.i.i206 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %iov_len2.i.i206, align 4
  %def_iter.i.i207 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i207, i32 noundef 0, ptr noundef %41, i32 noundef 1, i32 noundef 4) #9
  %44 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %unmarshall9, align 8
  %inc40 = add i8 %45, 1
  store i8 %inc40, ptr %unmarshall9, align 8
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
  %46 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp47 = getelementptr inbounds %struct.anon.151, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %tmp47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tmp47, align 4
  %count248 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %49 = ptrtoint ptr %count248 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %count248, align 4
  %sub49 = add i32 %48, -1
  %or50 = or i32 %sub49, 3
  %add51 = add i32 %or50, 1
  %flags52 = getelementptr inbounds %struct.yfs_acl, ptr %4, i32 0, i32 4
  %50 = ptrtoint ptr %flags52 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags52, align 4
  %and53 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.else65, label %if.end8.i198

if.end8.i198:                                     ; preds = %if.end46
  %spec.select.i208 = tail call i32 @llvm.uadd.sat.i32(i32 %add51, i32 4) #9
  %call9.i197 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i208, i32 noundef 3264) #15
  %tobool58.not = icmp eq ptr %call9.i197, null
  br i1 %tobool58.not, label %if.end8.i198.cleanup_crit_edge, label %if.end60

if.end8.i198.cleanup_crit_edge:                   ; preds = %if.end8.i198
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end60:                                         ; preds = %if.end8.i198
  call void @__sanitizer_cov_trace_pc() #11
  %vol_acl = getelementptr inbounds %struct.yfs_acl, ptr %4, i32 0, i32 1
  %52 = ptrtoint ptr %vol_acl to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call9.i197, ptr %vol_acl, align 4
  %53 = ptrtoint ptr %count248 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count248, align 4
  %55 = ptrtoint ptr %call9.i197 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %call9.i197, align 128
  %data63 = getelementptr inbounds %struct.afs_acl, ptr %call9.i197, i32 0, i32 1
  %iov_len.i209 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %56 = ptrtoint ptr %iov_len.i209 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add51, ptr %iov_len.i209, align 4
  %57 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %data63, ptr %57, align 8
  %iov_len2.i210 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %iov_len2.i210 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add51, ptr %iov_len2.i210, align 4
  %def_iter.i211 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i211, i32 noundef 0, ptr noundef %57, i32 noundef 1, i32 noundef %add51) #9
  br label %if.end66

if.else65:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %iov_len.i212 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %60 = ptrtoint ptr %iov_len.i212 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add51, ptr %iov_len.i212, align 4
  %def_iter.i213 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_discard(ptr noundef %def_iter.i213, i32 noundef 0, i32 noundef %add51) #9
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.end60
  %61 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %unmarshall9, align 8
  %inc68 = add i8 %62, 1
  store i8 %inc68, ptr %unmarshall9, align 8
  br label %sw.bb69

sw.bb69:                                          ; preds = %if.end66, %do.end8.sw.bb69_crit_edge
  %call70 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %sw.bb69.cleanup_crit_edge, label %if.end74

sw.bb69.cleanup_crit_edge:                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end74:                                         ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  %iov_len.i214 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %63 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buffer.i, align 4
  %65 = ptrtoint ptr %iov_len.i214 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 152, ptr %iov_len.i214, align 4
  %66 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %66, align 8
  %iov_len2.i.i215 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %68 = ptrtoint ptr %iov_len2.i.i215 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 152, ptr %iov_len2.i.i215, align 4
  %def_iter.i.i216 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i216, i32 noundef 0, ptr noundef %66, i32 noundef 1, i32 noundef 152) #9
  %69 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %unmarshall9, align 8
  %inc76 = add i8 %70, 1
  store i8 %inc76, ptr %unmarshall9, align 8
  br label %sw.bb77

sw.bb77:                                          ; preds = %if.end74, %do.end8.sw.bb77_crit_edge
  %call78 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %sw.bb77.cleanup_crit_edge, label %if.end82

sw.bb77.cleanup_crit_edge:                        ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end82:                                         ; preds = %sw.bb77
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %71 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %buffer, align 4
  %incdec.ptr = getelementptr i32, ptr %72, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %inherit_flag = getelementptr inbounds %struct.yfs_acl, ptr %4, i32 0, i32 2
  %75 = ptrtoint ptr %inherit_flag to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %inherit_flag, align 4
  %incdec.ptr83 = getelementptr i32, ptr %72, i32 2
  %76 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %incdec.ptr83, ptr %bp, align 4
  %77 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %incdec.ptr, align 4
  %num_cleaned = getelementptr inbounds %struct.yfs_acl, ptr %4, i32 0, i32 3
  %79 = ptrtoint ptr %num_cleaned to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %num_cleaned, align 4
  %scb = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 5, i32 0, i32 2
  call fastcc void @xdr_decode_YFSFetchStatus(ptr noundef nonnull %bp, ptr noundef %call, ptr noundef %scb)
  %volsync = getelementptr inbounds %struct.afs_operation, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %volsync, null
  br i1 %tobool.not.i, label %if.end82.xdr_decode_YFSVolSync.exit_crit_edge, label %if.end181.i

if.end82.xdr_decode_YFSVolSync.exit_crit_edge:    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %xdr_decode_YFSVolSync.exit

if.end181.i:                                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bp, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %.unpack.i = load i32, ptr %81, align 1
  %.elt266.i = getelementptr inbounds [2 x i32], ptr %81, i32 0, i32 1
  %83 = ptrtoint ptr %.elt266.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %.unpack267.i = load i32, ptr %.elt266.i, align 1
  %conv.i.i = zext i32 %.unpack.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %.unpack267.i to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %84 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %or.i.i) #14, !srcloc !389
  %85 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %or.i.i, i64 %84, i32 0) #14, !srcloc !388
  %asmresult10.i.i = extractvalue { i64, i32 } %85, 0
  %creation.0.i = lshr i64 %asmresult10.i.i, 23
  %86 = ptrtoint ptr %volsync to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %creation.0.i, ptr %volsync, align 8
  br label %xdr_decode_YFSVolSync.exit

xdr_decode_YFSVolSync.exit:                       ; preds = %if.end181.i, %if.end82.xdr_decode_YFSVolSync.exit_crit_edge
  %87 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bp, align 4
  %add.ptr.i = getelementptr i32, ptr %88, i32 10
  store ptr %add.ptr.i, ptr %bp, align 4
  %89 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %unmarshall9, align 8
  %inc85 = add i8 %90, 1
  store i8 %inc85, ptr %unmarshall9, align 8
  br label %do.body86

do.body86:                                        ; preds = %xdr_decode_YFSVolSync.exit, %do.end8.do.body86_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %91 = load i32, ptr @afs_debug, align 4
  %and87 = and i32 %91, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %do.body86.cleanup_crit_edge, label %do.end98, !prof !375

do.body86.cleanup_crit_edge:                      ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end98:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  %92 = tail call i32 @llvm.read_register.i32(metadata !365) #9
  %and.i217 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i217 to ptr
  %task101 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %task101 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %task101, align 8
  %comm102 = getelementptr inbounds %struct.task_struct, ptr %95, i32 0, i32 101
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm102, ptr noundef nonnull @.str.153) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end98, %do.body86.cleanup_crit_edge, %sw.bb77.cleanup_crit_edge, %sw.bb69.cleanup_crit_edge, %if.end8.i198.cleanup_crit_edge, %sw.bb41.cleanup_crit_edge, %sw.bb33.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %sw.bb12.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %call34, %sw.bb33.cleanup_crit_edge ], [ %call42, %sw.bb41.cleanup_crit_edge ], [ -12, %if.end8.i198.cleanup_crit_edge ], [ %call70, %sw.bb69.cleanup_crit_edge ], [ %call78, %sw.bb77.cleanup_crit_edge ], [ 0, %do.end98 ], [ 0, %do.body86.cleanup_crit_edge ]
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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !146, !148, !150, !151, !152, !153, !155, !156, !158, !159, !161, !163, !165, !167, !169, !170, !171, !173, !175, !177, !178, !179, !181, !183, !185, !187, !189, !190, !191, !193, !194, !196, !198, !200, !201, !202, !204, !205, !207, !209, !211, !212, !213, !215, !216, !218, !219, !221, !223, !225, !226, !227, !229, !230, !231, !233, !235, !237, !239, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !290, !292, !294, !295, !297, !299, !301, !303, !305, !307, !309, !310, !311, !313, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !343, !345, !346, !347, !349, !350, !352, !354, !356, !357, !358, !360, !361, !363}
!llvm.named.register.sp = !{!365}
!llvm.module.flags = !{!366, !367, !368, !369, !370, !371, !372, !373}
!llvm.ident = !{!374}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/yfsclient.c", i32 469, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @yfs_fs_fetch_data._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @yfs_fs_fetch_data._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/yfsclient.c", i32 548, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @yfs_fs_create_file._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @yfs_fs_create_file._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/afs/yfsclient.c", i32 598, i32 2}
!13 = !{ptr @yfs_fs_make_dir._entry, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @yfs_fs_make_dir._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/afs/yfsclient.c", i32 686, i32 2}
!17 = !{ptr @yfs_fs_remove_file2._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @yfs_fs_remove_file2._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/afs/yfsclient.c", i32 754, i32 2}
!21 = !{ptr @yfs_fs_remove_file._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @yfs_fs_remove_file._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/afs/yfsclient.c", i32 798, i32 2}
!25 = !{ptr @yfs_fs_remove_dir._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @yfs_fs_remove_dir._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/afs/yfsclient.c", i32 868, i32 2}
!29 = !{ptr @yfs_fs_link._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @yfs_fs_link._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/afs/yfsclient.c", i32 945, i32 2}
!33 = !{ptr @yfs_fs_symlink._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @yfs_fs_symlink._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/afs/yfsclient.c", i32 1026, i32 2}
!37 = !{ptr @yfs_fs_rename._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @yfs_fs_rename._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/afs/yfsclient.c", i32 1074, i32 2}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @yfs_fs_store_data._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @yfs_fs_store_data._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/afs/yfsclient.c", i32 1077, i32 2}
!46 = !{ptr @yfs_fs_store_data._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @yfs_fs_store_data._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/afs/yfsclient.c", i32 1180, i32 2}
!50 = !{ptr @yfs_fs_setattr._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @yfs_fs_setattr._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/afs/yfsclient.c", i32 1351, i32 2}
!54 = !{ptr @yfs_fs_get_volume_status._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @yfs_fs_get_volume_status._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/afs/yfsclient.c", i32 1415, i32 2}
!58 = !{ptr @yfs_fs_set_lock._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @yfs_fs_set_lock._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/afs/yfsclient.c", i32 1447, i32 2}
!62 = !{ptr @yfs_fs_extend_lock._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @yfs_fs_extend_lock._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/afs/yfsclient.c", i32 1477, i32 2}
!66 = !{ptr @yfs_fs_release_lock._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @yfs_fs_release_lock._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/afs/yfsclient.c", i32 1541, i32 2}
!70 = !{ptr @yfs_fs_fetch_status._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @yfs_fs_fetch_status._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/afs/yfsclient.c", i32 1717, i32 2}
!74 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @yfs_fs_inline_bulk_status._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @yfs_fs_inline_bulk_status._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/afs/yfsclient.c", i32 1883, i32 2}
!79 = !{ptr @yfs_fs_fetch_opaque_acl._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @yfs_fs_fetch_opaque_acl._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/afs/yfsclient.c", i32 1927, i32 2}
!83 = !{ptr @yfs_fs_store_opaque_acl2._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @yfs_fs_store_opaque_acl2._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/afs/yfsclient.c", i32 453, i32 11}
!87 = !{ptr @yfs_RXYFSFetchData64, !88, !"yfs_RXYFSFetchData64", i1 false, i1 false}
!88 = !{!"../fs/afs/yfsclient.c", i32 452, i32 35}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/afs/yfsclient.c", i32 358, i32 2}
!91 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @yfs_deliver_fs_fetch_data64._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @yfs_deliver_fs_fetch_data64._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/afs/yfsclient.c", i32 374, i32 3}
!96 = !{ptr @yfs_deliver_fs_fetch_data64._entry.30, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @yfs_deliver_fs_fetch_data64._entry_ptr.32, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/afs/yfsclient.c", i32 380, i32 3}
!100 = !{ptr @yfs_deliver_fs_fetch_data64._entry.33, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @yfs_deliver_fs_fetch_data64._entry_ptr.35, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/afs/yfsclient.c", i32 392, i32 3}
!104 = !{ptr @yfs_deliver_fs_fetch_data64._entry.36, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @yfs_deliver_fs_fetch_data64._entry_ptr.38, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/afs/yfsclient.c", i32 409, i32 3}
!108 = !{ptr @yfs_deliver_fs_fetch_data64._entry.39, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @yfs_deliver_fs_fetch_data64._entry_ptr.41, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/afs/yfsclient.c", i32 445, i32 2}
!112 = !{ptr @yfs_deliver_fs_fetch_data64._entry.42, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @yfs_deliver_fs_fetch_data64._entry_ptr.44, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/afs/yfsclient.c", i32 158, i32 2}
!116 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @xdr_dump_bad._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @xdr_dump_bad._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/afs/yfsclient.c", i32 162, i32 3}
!121 = !{ptr @xdr_dump_bad._entry.47, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @xdr_dump_bad._entry_ptr.49, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/afs/yfsclient.c", i32 167, i32 2}
!125 = !{ptr @xdr_dump_bad._entry.50, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @xdr_dump_bad._entry_ptr.52, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/afs/yfsclient.c", i32 143, i32 3}
!129 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @yfs_check_req._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @yfs_check_req._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/afs/yfsclient.c", i32 146, i32 3}
!134 = !{ptr @yfs_check_req._entry.55, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @yfs_check_req._entry_ptr.57, !133, !"_entry_ptr", i1 false, i1 false}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../include/trace/events/afs.h", i32 759, i32 1}
!138 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!139 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!140 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!141 = distinct !{null, !142, !"__already_done", i1 false, i1 false}
!142 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!143 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/afs/yfsclient.c", i32 531, i32 11}
!146 = !{ptr @afs_RXFSCreateFile, !147, !"afs_RXFSCreateFile", i1 false, i1 false}
!147 = !{!"../fs/afs/yfsclient.c", i32 530, i32 35}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/afs/yfsclient.c", i32 509, i32 2}
!150 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @yfs_deliver_fs_create_vnode._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @yfs_deliver_fs_create_vnode._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @yfs_deliver_fs_create_vnode._entry.64, !154, !"_entry", i1 false, i1 false}
!154 = !{!"../fs/afs/yfsclient.c", i32 523, i32 2}
!155 = !{ptr @yfs_deliver_fs_create_vnode._entry_ptr.65, !154, !"_entry_ptr", i1 false, i1 false}
!156 = distinct !{null, !157, !"__already_done", i1 false, i1 false}
!157 = !{!"../include/trace/events/afs.h", i32 825, i32 1}
!158 = distinct !{null, !157, !"__warned", i1 false, i1 false}
!159 = !{ptr @.str.66, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/afs/yfsclient.c", i32 581, i32 11}
!161 = !{ptr @yfs_RXFSMakeDir, !162, !"yfs_RXFSMakeDir", i1 false, i1 false}
!162 = !{!"../fs/afs/yfsclient.c", i32 580, i32 35}
!163 = !{ptr @.str.67, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/afs/yfsclient.c", i32 669, i32 11}
!165 = !{ptr @yfs_RXYFSRemoveFile2, !166, !"yfs_RXYFSRemoveFile2", i1 false, i1 false}
!166 = !{!"../fs/afs/yfsclient.c", i32 668, i32 35}
!167 = !{ptr @.str.68, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/afs/yfsclient.c", i32 640, i32 2}
!169 = !{ptr @yfs_deliver_fs_remove_file2._entry, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @yfs_deliver_fs_remove_file2._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.69, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/afs/yfsclient.c", i32 738, i32 11}
!173 = !{ptr @yfs_RXYFSRemoveFile, !174, !"yfs_RXYFSRemoveFile", i1 false, i1 false}
!174 = !{!"../fs/afs/yfsclient.c", i32 737, i32 35}
!175 = !{ptr @.str.70, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/afs/yfsclient.c", i32 722, i32 2}
!177 = !{ptr @yfs_deliver_fs_remove._entry, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @yfs_deliver_fs_remove._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.71, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/afs/yfsclient.c", i32 782, i32 11}
!181 = !{ptr @yfs_RXYFSRemoveDir, !182, !"yfs_RXYFSRemoveDir", i1 false, i1 false}
!182 = !{!"../fs/afs/yfsclient.c", i32 781, i32 35}
!183 = !{ptr @.str.72, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/afs/yfsclient.c", i32 851, i32 11}
!185 = !{ptr @yfs_RXYFSLink, !186, !"yfs_RXYFSLink", i1 false, i1 false}
!186 = !{!"../fs/afs/yfsclient.c", i32 850, i32 35}
!187 = !{ptr @.str.73, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/afs/yfsclient.c", i32 833, i32 2}
!189 = !{ptr @yfs_deliver_fs_link._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @yfs_deliver_fs_link._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @yfs_deliver_fs_link._entry.74, !192, !"_entry", i1 false, i1 false}
!192 = !{!"../fs/afs/yfsclient.c", i32 843, i32 2}
!193 = !{ptr @yfs_deliver_fs_link._entry_ptr.75, !192, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.76, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/afs/yfsclient.c", i32 927, i32 11}
!196 = !{ptr @yfs_RXYFSSymlink, !197, !"yfs_RXYFSSymlink", i1 false, i1 false}
!197 = !{!"../fs/afs/yfsclient.c", i32 926, i32 35}
!198 = !{ptr @.str.77, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/afs/yfsclient.c", i32 906, i32 2}
!200 = !{ptr @yfs_deliver_fs_symlink._entry, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @yfs_deliver_fs_symlink._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @yfs_deliver_fs_symlink._entry.78, !203, !"_entry", i1 false, i1 false}
!203 = !{!"../fs/afs/yfsclient.c", i32 919, i32 2}
!204 = !{ptr @yfs_deliver_fs_symlink._entry_ptr.79, !203, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.80, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/afs/yfsclient.c", i32 1008, i32 11}
!207 = !{ptr @yfs_RXYFSRename, !208, !"yfs_RXYFSRename", i1 false, i1 false}
!208 = !{!"../fs/afs/yfsclient.c", i32 1007, i32 35}
!209 = !{ptr @.str.81, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/afs/yfsclient.c", i32 987, i32 2}
!211 = !{ptr @yfs_deliver_fs_rename._entry, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @yfs_deliver_fs_rename._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @yfs_deliver_fs_rename._entry.82, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../fs/afs/yfsclient.c", i32 1000, i32 2}
!215 = !{ptr @yfs_deliver_fs_rename._entry_ptr.83, !214, !"_entry_ptr", i1 false, i1 false}
!216 = distinct !{null, !217, !"__already_done", i1 false, i1 false}
!217 = !{!"../include/trace/events/afs.h", i32 862, i32 1}
!218 = distinct !{null, !217, !"__warned", i1 false, i1 false}
!219 = !{ptr @.str.84, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/afs/yfsclient.c", i32 1059, i32 11}
!221 = !{ptr @yfs_RXYFSStoreData64, !222, !"yfs_RXYFSStoreData64", i1 false, i1 false}
!222 = !{!"../fs/afs/yfsclient.c", i32 1058, i32 35}
!223 = !{ptr @.str.85, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/afs/yfsclient.c", i32 343, i32 2}
!225 = !{ptr @yfs_deliver_status_and_volsync._entry, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @yfs_deliver_status_and_volsync._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.86, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/afs/yfsclient.c", i32 1138, i32 2}
!229 = !{ptr @yfs_fs_setattr_size._entry, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @yfs_fs_setattr_size._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @yfs_RXYFSStoreData64_as_Status, !232, !"yfs_RXYFSStoreData64_as_Status", i1 false, i1 false}
!232 = !{!"../fs/afs/yfsclient.c", i32 1120, i32 35}
!233 = !{ptr @.str.87, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/afs/yfsclient.c", i32 1114, i32 11}
!235 = !{ptr @yfs_RXYFSStoreStatus, !236, !"yfs_RXYFSStoreStatus", i1 false, i1 false}
!236 = !{!"../fs/afs/yfsclient.c", i32 1113, i32 35}
!237 = !{ptr @.str.88, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/afs/yfsclient.c", i32 1336, i32 11}
!239 = !{ptr @yfs_RXYFSGetVolumeStatus, !240, !"yfs_RXYFSGetVolumeStatus", i1 false, i1 false}
!240 = !{!"../fs/afs/yfsclient.c", i32 1335, i32 35}
!241 = !{ptr @.str.89, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../fs/afs/yfsclient.c", i32 1215, i32 2}
!243 = !{ptr @yfs_deliver_fs_get_volume_status._entry, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @yfs_deliver_fs_get_volume_status._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.91, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/afs/yfsclient.c", i32 1225, i32 3}
!247 = !{ptr @yfs_deliver_fs_get_volume_status._entry.90, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @yfs_deliver_fs_get_volume_status._entry_ptr.92, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.94, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/afs/yfsclient.c", i32 1243, i32 3}
!251 = !{ptr @yfs_deliver_fs_get_volume_status._entry.93, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @yfs_deliver_fs_get_volume_status._entry_ptr.95, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.97, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/afs/yfsclient.c", i32 1253, i32 3}
!255 = !{ptr @yfs_deliver_fs_get_volume_status._entry.96, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @yfs_deliver_fs_get_volume_status._entry_ptr.98, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.100, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../fs/afs/yfsclient.c", i32 1260, i32 3}
!259 = !{ptr @yfs_deliver_fs_get_volume_status._entry.99, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @yfs_deliver_fs_get_volume_status._entry_ptr.101, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.103, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/afs/yfsclient.c", i32 1272, i32 3}
!263 = !{ptr @yfs_deliver_fs_get_volume_status._entry.102, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @yfs_deliver_fs_get_volume_status._entry_ptr.104, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.106, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../fs/afs/yfsclient.c", i32 1282, i32 3}
!267 = !{ptr @yfs_deliver_fs_get_volume_status._entry.105, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @yfs_deliver_fs_get_volume_status._entry_ptr.107, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.109, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../fs/afs/yfsclient.c", i32 1289, i32 3}
!271 = !{ptr @yfs_deliver_fs_get_volume_status._entry.108, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @yfs_deliver_fs_get_volume_status._entry_ptr.110, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.112, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/afs/yfsclient.c", i32 1302, i32 3}
!275 = !{ptr @yfs_deliver_fs_get_volume_status._entry.111, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @yfs_deliver_fs_get_volume_status._entry_ptr.113, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.115, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../fs/afs/yfsclient.c", i32 1312, i32 3}
!279 = !{ptr @yfs_deliver_fs_get_volume_status._entry.114, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @yfs_deliver_fs_get_volume_status._entry_ptr.116, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.118, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../fs/afs/yfsclient.c", i32 1319, i32 3}
!283 = !{ptr @yfs_deliver_fs_get_volume_status._entry.117, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @yfs_deliver_fs_get_volume_status._entry_ptr.119, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @yfs_deliver_fs_get_volume_status._entry.120, !286, !"_entry", i1 false, i1 false}
!286 = !{!"../fs/afs/yfsclient.c", i32 1328, i32 2}
!287 = !{ptr @yfs_deliver_fs_get_volume_status._entry_ptr.121, !286, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.122, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../fs/afs/yfsclient.c", i32 1378, i32 11}
!290 = !{ptr @yfs_RXYFSSetLock, !291, !"yfs_RXYFSSetLock", i1 false, i1 false}
!291 = !{!"../fs/afs/yfsclient.c", i32 1377, i32 35}
!292 = distinct !{null, !293, !"__already_done", i1 false, i1 false}
!293 = !{!"../include/trace/events/afs.h", i32 790, i32 1}
!294 = distinct !{null, !293, !"__warned", i1 false, i1 false}
!295 = !{ptr @.str.123, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../fs/afs/yfsclient.c", i32 1389, i32 11}
!297 = !{ptr @yfs_RXYFSExtendLock, !298, !"yfs_RXYFSExtendLock", i1 false, i1 false}
!298 = !{!"../fs/afs/yfsclient.c", i32 1388, i32 35}
!299 = !{ptr @.str.124, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../fs/afs/yfsclient.c", i32 1400, i32 11}
!301 = !{ptr @yfs_RXYFSReleaseLock, !302, !"yfs_RXYFSReleaseLock", i1 false, i1 false}
!302 = !{!"../fs/afs/yfsclient.c", i32 1399, i32 35}
!303 = !{ptr @.str.125, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../fs/afs/yfsclient.c", i32 1526, i32 11}
!305 = !{ptr @yfs_RXYFSFetchStatus, !306, !"yfs_RXYFSFetchStatus", i1 false, i1 false}
!306 = !{!"../fs/afs/yfsclient.c", i32 1525, i32 35}
!307 = !{ptr @.str.126, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../fs/afs/yfsclient.c", i32 1518, i32 2}
!309 = !{ptr @yfs_deliver_fs_fetch_status._entry, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @yfs_deliver_fs_fetch_status._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.127, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../fs/afs/yfsclient.c", i32 1700, i32 11}
!313 = !{ptr @yfs_RXYFSInlineBulkStatus, !314, !"yfs_RXYFSInlineBulkStatus", i1 false, i1 false}
!314 = !{!"../fs/afs/yfsclient.c", i32 1699, i32 35}
!315 = !{ptr @.str.128, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../fs/afs/yfsclient.c", i32 1575, i32 2}
!317 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.130, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../fs/afs/yfsclient.c", i32 1585, i32 3}
!321 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry.129, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr.131, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.133, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../fs/afs/yfsclient.c", i32 1591, i32 3}
!325 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry.132, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr.134, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.136, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../fs/afs/yfsclient.c", i32 1602, i32 3}
!329 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry.135, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr.137, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.139, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../fs/afs/yfsclient.c", i32 1633, i32 3}
!333 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry.138, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr.140, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.142, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../fs/afs/yfsclient.c", i32 1639, i32 3}
!337 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry.141, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr.143, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.145, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../fs/afs/yfsclient.c", i32 1649, i32 3}
!341 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry.144, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr.146, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.148, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../fs/afs/yfsclient.c", i32 1654, i32 3}
!345 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry.147, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr.149, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry.150, !348, !"_entry", i1 false, i1 false}
!348 = !{!"../fs/afs/yfsclient.c", i32 1692, i32 2}
!349 = !{ptr @yfs_deliver_fs_inline_bulk_status._entry_ptr.151, !348, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.152, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../fs/afs/yfsclient.c", i32 1868, i32 11}
!352 = !{ptr @yfs_RXYFSFetchOpaqueACL, !353, !"yfs_RXYFSFetchOpaqueACL", i1 false, i1 false}
!353 = !{!"../fs/afs/yfsclient.c", i32 1867, i32 35}
!354 = !{ptr @.str.153, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../fs/afs/yfsclient.c", i32 1757, i32 2}
!356 = !{ptr @yfs_deliver_fs_fetch_opaque_acl._entry, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @yfs_deliver_fs_fetch_opaque_acl._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @yfs_deliver_fs_fetch_opaque_acl._entry.154, !359, !"_entry", i1 false, i1 false}
!359 = !{!"../fs/afs/yfsclient.c", i32 1851, i32 2}
!360 = !{ptr @yfs_deliver_fs_fetch_opaque_acl._entry_ptr.155, !359, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.156, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../fs/afs/yfsclient.c", i32 1910, i32 11}
!363 = !{ptr @yfs_RXYFSStoreOpaqueACL2, !364, !"yfs_RXYFSStoreOpaqueACL2", i1 false, i1 false}
!364 = !{!"../fs/afs/yfsclient.c", i32 1909, i32 35}
!365 = !{!"sp"}
!366 = !{i32 1, !"wchar_size", i32 2}
!367 = !{i32 1, !"min_enum_size", i32 4}
!368 = !{i32 8, !"branch-target-enforcement", i32 0}
!369 = !{i32 8, !"sign-return-address", i32 0}
!370 = !{i32 8, !"sign-return-address-all", i32 0}
!371 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!372 = !{i32 7, !"uwtable", i32 1}
!373 = !{i32 7, !"frame-pointer", i32 2}
!374 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!375 = !{!"branch_weights", i32 2000, i32 1}
!376 = !{i64 2148247811, i64 2148247816, i64 2148247829, i64 2148247873, i64 2148247907, i64 2148247928}
!377 = !{i64 2157322761}
!378 = !{i64 2157322974}
!379 = !{i64 2149972515}
!380 = !{i64 2149973551}
!381 = !{i64 2157361151}
!382 = !{i64 2157361378}
!383 = !{i64 2157378923}
!384 = !{i64 2157379164}
!385 = !{i64 2157339787}
!386 = !{i64 2157340008}
!387 = !{i64 991326, i64 991353, i64 991375, i64 991403}
!388 = !{i64 991734, i64 991761, i64 991794, i64 991815, i64 991842, i64 991868}
!389 = !{i64 991039, i64 991066}
