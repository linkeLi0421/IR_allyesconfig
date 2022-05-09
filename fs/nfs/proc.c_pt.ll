; ModuleID = '/llk/IR_all_yes/fs/nfs/proc.c_pt.bc'
source_filename = "../fs/nfs/proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfs2_fsstat = type { i32, i32, i32, i32, i32 }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.rb_root = type { ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.137 }
%union.anon.137 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfs_fsinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i64, %struct.timespec64, i32, i32, [8 x i32], i32, i32, i32, i32 }
%struct.nfs_sattrargs = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.160, %struct.list_head, %struct.list_head, %union.anon.161 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.158 }
%union.anon.158 = type { %struct.anon.159 }
%struct.anon.159 = type { %struct.spinlock, i32 }
%union.anon.160 = type { %struct.list_head }
%union.anon.161 = type { %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.154, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.155, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.156, ptr, %struct.address_space, %struct.list_head, %union.anon.157, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.154 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.155 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.156 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.157 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.nfs_diropargs = type { ptr, ptr, i32 }
%struct.nfs_diropok = type { ptr, ptr }
%struct.nfs_readlinkargs = type { ptr, i32, i32, ptr }
%struct.nfs_createargs = type { ptr, ptr, i32, ptr }
%struct.nfs_createdata = type { %struct.nfs_createargs, %struct.nfs_diropok, %struct.nfs_fh, %struct.nfs_fattr }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.143, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.143 = type { %struct.anon.145 }
%struct.anon.145 = type { i64 }
%struct.nfs_removeargs = type { %struct.nfs4_sequence_args, ptr, %struct.qstr }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.nfs_linkargs = type { ptr, ptr, ptr, i32 }
%struct.nfs_symlinkargs = type { ptr, ptr, i32, ptr, i32, ptr }
%struct.nfs4_label = type { i32, i32, i32, ptr }
%struct.nfs_readdirargs = type { ptr, i32, i32, ptr }
%struct.nfs_readdir_arg = type { ptr, ptr, ptr, i64, ptr, i32, i8 }
%struct.nfs_fsstat = type { ptr, i64, i64, i64, i64, i64, i64 }
%struct.nfs_pathconf = type { ptr, i32, i32 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.139, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.139 = type { %struct.work_struct }
%struct.nfs_pgio_header = type { ptr, ptr, %struct.list_head, ptr, %struct.nfs_writeverf, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rpc_task, %struct.nfs_fattr, %struct.nfs_pgio_args, %struct.nfs_pgio_res, i32, ptr, i64, %struct.nfs_page_array, ptr, i32, i32 }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.148 }
%struct.nfs4_stateid_struct = type { %union.anon.146, i32 }
%union.anon.146 = type { %struct.anon.147 }
%struct.anon.147 = type { i32, [12 x i8] }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { ptr, [3 x i32], i32 }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.150 }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { i32, i32 }
%struct.nfs_page_array = type { ptr, i32, [8 x ptr] }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.136 }
%union.anon.136 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }

@nfs_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@nfs_dir_inode_operations = internal constant %struct.inode_operations { ptr @nfs_lookup, ptr null, ptr @nfs_permission, ptr null, ptr null, ptr @nfs_create, ptr @nfs_link, ptr @nfs_unlink, ptr @nfs_symlink, ptr @nfs_mkdir, ptr @nfs_rmdir, ptr @nfs_mknod, ptr @nfs_rename, ptr @nfs_setattr, ptr @nfs_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@nfs_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr @nfs_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfs_setattr, ptr @nfs_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@nfs_file_operations = external dso_local constant %struct.file_operations, align 4
@nfs_v2_clientops = dso_local constant { %struct.nfs_rpc_ops, [40 x i8] } { %struct.nfs_rpc_ops { i32 2, ptr @nfs_dentry_operations, ptr @nfs_dir_inode_operations, ptr @nfs_file_inode_operations, ptr @nfs_file_operations, ptr null, ptr @nfs_proc_get_root, ptr @nfs_submount, ptr @nfs_try_get_tree, ptr @nfs_proc_getattr, ptr @nfs_proc_setattr, ptr @nfs_proc_lookup, ptr null, ptr null, ptr @nfs_proc_readlink, ptr @nfs_proc_create, ptr @nfs_proc_remove, ptr @nfs_proc_unlink_setup, ptr @nfs_proc_unlink_rpc_prepare, ptr @nfs_proc_unlink_done, ptr @nfs_proc_rename_setup, ptr @nfs_proc_rename_rpc_prepare, ptr @nfs_proc_rename_done, ptr @nfs_proc_link, ptr @nfs_proc_symlink, ptr @nfs_proc_mkdir, ptr @nfs_proc_rmdir, ptr @nfs_proc_readdir, ptr @nfs_proc_mknod, ptr @nfs_proc_statfs, ptr @nfs_proc_fsinfo, ptr @nfs_proc_pathconf, ptr null, ptr @nfs2_decode_dirent, ptr @nfs_proc_pgio_rpc_prepare, ptr @nfs_proc_read_setup, ptr @nfs_read_done, ptr @nfs_proc_write_setup, ptr @nfs_write_done, ptr @nfs_proc_commit_setup, ptr @nfs_proc_commit_rpc_prepare, ptr null, ptr @nfs_proc_lock, ptr @nfs_lock_check_bounds, ptr null, ptr @nfs_close_context, ptr null, ptr @nfs_have_delegation, ptr @nfs_alloc_client, ptr @nfs_init_client, ptr @nfs_free_client, ptr @nfs_create_server, ptr @nfs_clone_server, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfs_procedures = external dso_local constant [0 x %struct.rpc_procinfo], align 4
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs_proc_get_root._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: call getattr\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfs_proc_get_root\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/nfs/proc.c\00", [18 x i8] zeroinitializer }, align 32
@nfs_proc_get_root._entry_ptr = internal global ptr @nfs_proc_get_root._entry, section ".printk_index", align 4
@nfs_proc_get_root._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: reply getattr: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nfs_proc_get_root._entry_ptr.5 = internal global ptr @nfs_proc_get_root._entry.3, section ".printk_index", align 4
@nfs_proc_get_root._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: call statfs\0A\00", [47 x i8] zeroinitializer }, align 32
@nfs_proc_get_root._entry_ptr.8 = internal global ptr @nfs_proc_get_root._entry.6, section ".printk_index", align 4
@nfs_proc_get_root._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: reply statfs: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nfs_proc_get_root._entry_ptr.11 = internal global ptr @nfs_proc_get_root._entry.9, section ".printk_index", align 4
@nfs_proc_getattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NFS call  getattr\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfs_proc_getattr\00", [47 x i8] zeroinitializer }, align 32
@nfs_proc_getattr._entry_ptr = internal global ptr @nfs_proc_getattr._entry, section ".printk_index", align 4
@nfs_proc_getattr._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NFS reply getattr: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nfs_proc_getattr._entry_ptr.16 = internal global ptr @nfs_proc_getattr._entry.14, section ".printk_index", align 4
@nfs_proc_setattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NFS call  setattr\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfs_proc_setattr\00", [47 x i8] zeroinitializer }, align 32
@nfs_proc_setattr._entry_ptr = internal global ptr @nfs_proc_setattr._entry, section ".printk_index", align 4
@nfs_proc_setattr._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NFS reply setattr: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nfs_proc_setattr._entry_ptr.21 = internal global ptr @nfs_proc_setattr._entry.19, section ".printk_index", align 4
@nfs_proc_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NFS call  lookup %pd2\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfs_proc_lookup\00", [16 x i8] zeroinitializer }, align 32
@nfs_proc_lookup._entry_ptr = internal global ptr @nfs_proc_lookup._entry, section ".printk_index", align 4
@nfs_proc_lookup._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFS reply lookup: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nfs_proc_lookup._entry_ptr.26 = internal global ptr @nfs_proc_lookup._entry.24, section ".printk_index", align 4
@nfs_proc_readlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NFS call  readlink\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfs_proc_readlink\00", [46 x i8] zeroinitializer }, align 32
@nfs_proc_readlink._entry_ptr = internal global ptr @nfs_proc_readlink._entry, section ".printk_index", align 4
@nfs_proc_readlink._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NFS reply readlink: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@nfs_proc_readlink._entry_ptr.31 = internal global ptr @nfs_proc_readlink._entry.29, section ".printk_index", align 4
@nfs_proc_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFS call  create %pd\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfs_proc_create\00", [16 x i8] zeroinitializer }, align 32
@nfs_proc_create._entry_ptr = internal global ptr @nfs_proc_create._entry, section ".printk_index", align 4
@nfs_proc_create._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFS reply create: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nfs_proc_create._entry_ptr.36 = internal global ptr @nfs_proc_create._entry.34, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfs_proc_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NFS call  remove %pd2\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfs_proc_remove\00", [16 x i8] zeroinitializer }, align 32
@nfs_proc_remove._entry_ptr = internal global ptr @nfs_proc_remove._entry, section ".printk_index", align 4
@nfs_proc_remove._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFS reply remove: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nfs_proc_remove._entry_ptr.41 = internal global ptr @nfs_proc_remove._entry.39, section ".printk_index", align 4
@nfs_proc_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NFS call  link %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfs_proc_link\00", [18 x i8] zeroinitializer }, align 32
@nfs_proc_link._entry_ptr = internal global ptr @nfs_proc_link._entry, section ".printk_index", align 4
@nfs_proc_link._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NFS reply link: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@nfs_proc_link._entry_ptr.46 = internal global ptr @nfs_proc_link._entry.44, section ".printk_index", align 4
@nfs_proc_symlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NFS call  symlink %pd\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfs_proc_symlink\00", [47 x i8] zeroinitializer }, align 32
@nfs_proc_symlink._entry_ptr = internal global ptr @nfs_proc_symlink._entry, section ".printk_index", align 4
@nfs_proc_symlink._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NFS reply symlink: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nfs_proc_symlink._entry_ptr.51 = internal global ptr @nfs_proc_symlink._entry.49, section ".printk_index", align 4
@__const.nfs_proc_mkdir.msg = private unnamed_addr constant %struct.rpc_message { ptr getelementptr (i8, ptr @nfs_procedures, i64 448), ptr null, ptr null, ptr null }, align 4
@nfs_proc_mkdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NFS call  mkdir %pd\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfs_proc_mkdir\00", [17 x i8] zeroinitializer }, align 32
@nfs_proc_mkdir._entry_ptr = internal global ptr @nfs_proc_mkdir._entry, section ".printk_index", align 4
@nfs_proc_mkdir._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NFS reply mkdir: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@nfs_proc_mkdir._entry_ptr.56 = internal global ptr @nfs_proc_mkdir._entry.54, section ".printk_index", align 4
@nfs_proc_rmdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NFS call  rmdir %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfs_proc_rmdir\00", [17 x i8] zeroinitializer }, align 32
@nfs_proc_rmdir._entry_ptr = internal global ptr @nfs_proc_rmdir._entry, section ".printk_index", align 4
@nfs_proc_rmdir._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NFS reply rmdir: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@nfs_proc_rmdir._entry_ptr.61 = internal global ptr @nfs_proc_rmdir._entry.59, section ".printk_index", align 4
@nfs_proc_readdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NFS call  readdir %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfs_proc_readdir\00", [47 x i8] zeroinitializer }, align 32
@nfs_proc_readdir._entry_ptr = internal global ptr @nfs_proc_readdir._entry, section ".printk_index", align 4
@nfs_proc_readdir._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NFS reply readdir: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nfs_proc_readdir._entry_ptr.66 = internal global ptr @nfs_proc_readdir._entry.64, section ".printk_index", align 4
@__const.nfs_proc_mknod.msg = private unnamed_addr constant %struct.rpc_message { ptr getelementptr (i8, ptr @nfs_procedures, i64 288), ptr null, ptr null, ptr null }, align 4
@nfs_proc_mknod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NFS call  mknod %pd\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfs_proc_mknod\00", [17 x i8] zeroinitializer }, align 32
@nfs_proc_mknod._entry_ptr = internal global ptr @nfs_proc_mknod._entry, section ".printk_index", align 4
@nfs_proc_mknod._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NFS reply mknod: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@nfs_proc_mknod._entry_ptr.71 = internal global ptr @nfs_proc_mknod._entry.69, section ".printk_index", align 4
@nfs_proc_statfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NFS call  statfs\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfs_proc_statfs\00", [16 x i8] zeroinitializer }, align 32
@nfs_proc_statfs._entry_ptr = internal global ptr @nfs_proc_statfs._entry, section ".printk_index", align 4
@nfs_proc_statfs._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFS reply statfs: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nfs_proc_statfs._entry_ptr.76 = internal global ptr @nfs_proc_statfs._entry.74, section ".printk_index", align 4
@nfs_proc_fsinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NFS call  fsinfo\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfs_proc_fsinfo\00", [16 x i8] zeroinitializer }, align 32
@nfs_proc_fsinfo._entry_ptr = internal global ptr @nfs_proc_fsinfo._entry, section ".printk_index", align 4
@nfs_proc_fsinfo._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFS reply fsinfo: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nfs_proc_fsinfo._entry_ptr.81 = internal global ptr @nfs_proc_fsinfo._entry.79, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"nfs_v2_clientops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 714, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 66, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 72, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 75, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 82, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 117, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 120, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 143, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 150, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 179, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 182, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 201, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 203, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 249, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 261, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 325, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 329, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 389, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 393, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 417, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 443, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 456, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 469, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 487, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 490, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 518, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 524, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 279, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 308, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 540, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 543, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 568, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.322 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.323 = private constant [17 x i8] c"../fs/nfs/proc.c\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 571, i32 2 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @nfs_proc_create._entry, ptr @nfs_proc_create._entry.34, ptr @nfs_proc_create._entry_ptr, ptr @nfs_proc_create._entry_ptr.36, ptr @nfs_proc_fsinfo._entry, ptr @nfs_proc_fsinfo._entry.79, ptr @nfs_proc_fsinfo._entry_ptr, ptr @nfs_proc_fsinfo._entry_ptr.81, ptr @nfs_proc_get_root._entry, ptr @nfs_proc_get_root._entry.3, ptr @nfs_proc_get_root._entry.6, ptr @nfs_proc_get_root._entry.9, ptr @nfs_proc_get_root._entry_ptr, ptr @nfs_proc_get_root._entry_ptr.11, ptr @nfs_proc_get_root._entry_ptr.5, ptr @nfs_proc_get_root._entry_ptr.8, ptr @nfs_proc_getattr._entry, ptr @nfs_proc_getattr._entry.14, ptr @nfs_proc_getattr._entry_ptr, ptr @nfs_proc_getattr._entry_ptr.16, ptr @nfs_proc_link._entry, ptr @nfs_proc_link._entry.44, ptr @nfs_proc_link._entry_ptr, ptr @nfs_proc_link._entry_ptr.46, ptr @nfs_proc_lookup._entry, ptr @nfs_proc_lookup._entry.24, ptr @nfs_proc_lookup._entry_ptr, ptr @nfs_proc_lookup._entry_ptr.26, ptr @nfs_proc_mkdir._entry, ptr @nfs_proc_mkdir._entry.54, ptr @nfs_proc_mkdir._entry_ptr, ptr @nfs_proc_mkdir._entry_ptr.56, ptr @nfs_proc_mknod._entry, ptr @nfs_proc_mknod._entry.69, ptr @nfs_proc_mknod._entry_ptr, ptr @nfs_proc_mknod._entry_ptr.71, ptr @nfs_proc_readdir._entry, ptr @nfs_proc_readdir._entry.64, ptr @nfs_proc_readdir._entry_ptr, ptr @nfs_proc_readdir._entry_ptr.66, ptr @nfs_proc_readlink._entry, ptr @nfs_proc_readlink._entry.29, ptr @nfs_proc_readlink._entry_ptr, ptr @nfs_proc_readlink._entry_ptr.31, ptr @nfs_proc_remove._entry, ptr @nfs_proc_remove._entry.39, ptr @nfs_proc_remove._entry_ptr, ptr @nfs_proc_remove._entry_ptr.41, ptr @nfs_proc_rmdir._entry, ptr @nfs_proc_rmdir._entry.59, ptr @nfs_proc_rmdir._entry_ptr, ptr @nfs_proc_rmdir._entry_ptr.61, ptr @nfs_proc_setattr._entry, ptr @nfs_proc_setattr._entry.19, ptr @nfs_proc_setattr._entry_ptr, ptr @nfs_proc_setattr._entry_ptr.21, ptr @nfs_proc_statfs._entry, ptr @nfs_proc_statfs._entry.74, ptr @nfs_proc_statfs._entry_ptr, ptr @nfs_proc_statfs._entry_ptr.76, ptr @nfs_proc_symlink._entry, ptr @nfs_proc_symlink._entry.49, ptr @nfs_proc_symlink._entry_ptr, ptr @nfs_proc_symlink._entry_ptr.51, ptr @nfs_v2_clientops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_v2_clientops to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_get_root._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_get_root._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_get_root._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_get_root._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_getattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_getattr._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_setattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_setattr._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_lookup._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_readlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_readlink._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_create._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_remove._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_link._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_symlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_symlink._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_mkdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_mkdir._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_rmdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_rmdir._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_readdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_readdir._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_mknod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_mknod._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_statfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_statfs._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_fsinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_proc_fsinfo._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_get_root(ptr nocapture noundef readonly %server, ptr noundef %fhandle, ptr nocapture noundef %info) #0 align 64 {
entry:
  %fsinfo = alloca %struct.nfs2_fsstat, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fsinfo) #9
  %2 = getelementptr inbounds %struct.nfs2_fsstat, ptr %fsinfo, i32 0, i32 1
  %3 = call ptr @memset(ptr %fsinfo, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #9
  %4 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %6 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 1), ptr %msg, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fhandle, ptr %4, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %5, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %11 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !159

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  tail call void @nfs_fattr_init(ptr noundef %1) #9
  %client = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 3
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 4
  %call7 = call i32 @rpc_call_sync(ptr noundef %13, ptr noundef nonnull %msg, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end6.do.body15_crit_edge, label %land.lhs.true

do.end6.do.body15_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15

land.lhs.true:                                    ; preds = %do.end6
  %14 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %server, align 8
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cl_rpcclient, align 8
  %18 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client, align 4
  %cmp.not = icmp eq ptr %17, %19
  br i1 %cmp.not, label %land.lhs.true.do.body15_crit_edge, label %if.then10

land.lhs.true.do.body15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = call i32 @rpc_call_sync(ptr noundef %17, ptr noundef nonnull %msg, i32 noundef 0) #9
  br label %do.body15

do.body15:                                        ; preds = %if.then10, %land.lhs.true.do.body15_crit_edge, %do.end6.do.body15_crit_edge
  %status.0 = phi i32 [ %call13, %if.then10 ], [ %call7, %land.lhs.true.do.body15_crit_edge ], [ 0, %do.end6.do.body15_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %20 = load i32, ptr @nfs_debug, align 4
  %and16 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.do.end32_crit_edge, label %do.end27, !prof !159

do.body15.do.end32_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

do.end27:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %status.0) #12
  br label %do.end32

do.end32:                                         ; preds = %do.end27, %do.body15.do.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool33.not = icmp eq i32 %status.0, 0
  br i1 %tobool33.not, label %do.body36, label %do.end32.cleanup_crit_edge

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body36:                                        ; preds = %do.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %21 = load i32, ptr @nfs_debug, align 4
  %and37 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body36.do.end53_crit_edge, label %do.end48, !prof !159

do.body36.do.end53_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53

do.end48:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #12
  br label %do.end53

do.end53:                                         ; preds = %do.end48, %do.body36.do.end53_crit_edge
  %22 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 17), ptr %msg, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %fsinfo, ptr %5, align 4
  %24 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client, align 4
  %call57 = call i32 @rpc_call_sync(ptr noundef %25, ptr noundef nonnull %msg, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %do.end53.do.body69_crit_edge, label %land.lhs.true59

do.end53.do.body69_crit_edge:                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body69

land.lhs.true59:                                  ; preds = %do.end53
  %26 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %server, align 8
  %cl_rpcclient61 = getelementptr inbounds %struct.nfs_client, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %cl_rpcclient61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cl_rpcclient61, align 8
  %30 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client, align 4
  %cmp63.not = icmp eq ptr %29, %31
  br i1 %cmp63.not, label %land.lhs.true59.do.body69_crit_edge, label %if.then64

land.lhs.true59.do.body69_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body69

if.then64:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #11
  %call67 = call i32 @rpc_call_sync(ptr noundef %29, ptr noundef nonnull %msg, i32 noundef 0) #9
  br label %do.body69

do.body69:                                        ; preds = %if.then64, %land.lhs.true59.do.body69_crit_edge, %do.end53.do.body69_crit_edge
  %status.1 = phi i32 [ %call67, %if.then64 ], [ %call57, %land.lhs.true59.do.body69_crit_edge ], [ 0, %do.end53.do.body69_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %32 = load i32, ptr @nfs_debug, align 4
  %and70 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body69.do.end86_crit_edge, label %do.end81, !prof !159

do.body69.do.end86_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end86

do.end81:                                         ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %status.1) #12
  br label %do.end86

do.end86:                                         ; preds = %do.end81, %do.body69.do.end86_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %tobool87.not = icmp eq i32 %status.1, 0
  br i1 %tobool87.not, label %if.end89, label %do.end86.cleanup_crit_edge

do.end86.cleanup_crit_edge:                       ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end89:                                         ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #11
  %rtmax = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 1
  %33 = ptrtoint ptr %rtmax to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8192, ptr %rtmax, align 4
  %34 = ptrtoint ptr %fsinfo to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fsinfo, align 4
  %rtpref = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 2
  %36 = ptrtoint ptr %rtpref to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %rtpref, align 8
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %2, align 4
  %rtmult = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 3
  %39 = ptrtoint ptr %rtmult to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %rtmult, align 4
  %wtmax = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 4
  %40 = ptrtoint ptr %wtmax to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8192, ptr %wtmax, align 8
  %wtpref = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 5
  %41 = ptrtoint ptr %wtpref to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %35, ptr %wtpref, align 4
  %wtmult = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 6
  %42 = ptrtoint ptr %wtmult to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %38, ptr %wtmult, align 8
  %dtpref = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 7
  %43 = ptrtoint ptr %dtpref to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %35, ptr %dtpref, align 4
  %maxfilesize = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 8
  %44 = ptrtoint ptr %maxfilesize to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 2147483647, ptr %maxfilesize, align 8
  %lease_time = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 10
  %45 = ptrtoint ptr %lease_time to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %lease_time, align 8
  %change_attr_type = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 15
  %46 = ptrtoint ptr %change_attr_type to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %change_attr_type, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %do.end86.cleanup_crit_edge, %do.end32.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end89 ], [ %status.0, %do.end32.cleanup_crit_edge ], [ %status.1, %do.end86.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fsinfo) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_submount(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_try_get_tree(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_getattr(ptr nocapture noundef readonly %server, ptr noundef %fhandle, ptr noundef %fattr, ptr noundef readnone %inode) #0 align 64 {
entry:
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #9
  %0 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 1), ptr %msg, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fhandle, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fattr, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %2, align 4
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 8
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and = lshr i32 %8, 11
  %9 = and i32 %and, 4096
  br label %do.body

do.body:                                          ; preds = %land.lhs.true, %entry.do.body_crit_edge
  %task_flags.0 = phi i32 [ 0, %entry.do.body_crit_edge ], [ %9, %land.lhs.true ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %10 = load i32, ptr @nfs_debug, align 4
  %and3 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.body.do.end11_crit_edge, label %do.end, !prof !159

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  tail call void @nfs_fattr_init(ptr noundef %fattr) #9
  %client = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 3
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client, align 4
  %call13 = call i32 @rpc_call_sync(ptr noundef %12, ptr noundef nonnull %msg, i32 noundef %task_flags.0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %13 = load i32, ptr @nfs_debug, align 4
  %and15 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.end11.do.end31_crit_edge, label %do.end26, !prof !159

do.end11.do.end31_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

do.end26:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call13) #12
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %do.end11.do.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #9
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_setattr(ptr nocapture noundef readonly %dentry, ptr noundef %fattr, ptr noundef %sattr) #0 align 64 {
entry:
  %arg = alloca %struct.nfs_sattrargs, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #9
  %2 = getelementptr inbounds %struct.nfs_sattrargs, ptr %arg, i32 0, i32 1
  %fh.i = getelementptr i8, ptr %1, i32 -440
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fh.i, ptr %arg, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sattr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #9
  %5 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %6 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %7 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 2), ptr %msg, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arg, ptr %5, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fattr, ptr %6, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %7, align 4
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %sattr, i32 0, i32 1
  %12 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ia_mode, align 4
  %14 = and i16 %13, 4095
  store i16 %14, ptr %ia_mode, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %15 = load i32, ptr @nfs_debug, align 4
  %and4 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !159

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %16 = ptrtoint ptr %sattr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sattr, align 8
  %and11 = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.end10.if.end16_crit_edge, label %if.then13

do.end10.if.end16_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %do.end10
  %ia_file = getelementptr inbounds %struct.iattr, ptr %sattr, i32 0, i32 8
  %18 = ptrtoint ptr %ia_file to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ia_file, align 8
  %cmp.not.i = icmp eq ptr %19, null
  br i1 %cmp.not.i, label %if.then13.nfs_file_cred.exit_crit_edge, label %if.then.i

if.then13.nfs_file_cred.exit_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_file_cred.exit

if.then.i:                                        ; preds = %if.then13
  %private_data.i.i = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then.i.nfs_file_cred.exit_crit_edge, label %cleanup.i

if.then.i.nfs_file_cred.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_file_cred.exit

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %cred.i = getelementptr inbounds %struct.nfs_open_context, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred.i, align 4
  br label %nfs_file_cred.exit

nfs_file_cred.exit:                               ; preds = %cleanup.i, %if.then.i.nfs_file_cred.exit_crit_edge, %if.then13.nfs_file_cred.exit_crit_edge
  %retval.1.i = phi ptr [ %23, %cleanup.i ], [ null, %if.then13.nfs_file_cred.exit_crit_edge ], [ null, %if.then.i.nfs_file_cred.exit_crit_edge ]
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.1.i, ptr %7, align 4
  br label %if.end16

if.end16:                                         ; preds = %nfs_file_cred.exit, %do.end10.if.end16_crit_edge
  call void @nfs_fattr_init(ptr noundef %fattr) #9
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client.i, align 4
  %call18 = call i32 @rpc_call_sync(ptr noundef %30, ptr noundef nonnull %msg, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp eq i32 %call18, 0
  br i1 %cmp, label %if.then20, label %if.end16.do.body22_crit_edge

if.end16.do.body22_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  call void @nfs_setattr_update_inode(ptr noundef %1, ptr noundef %sattr, ptr noundef %fattr) #9
  br label %do.body22

do.body22:                                        ; preds = %if.then20, %if.end16.do.body22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %31 = load i32, ptr @nfs_debug, align 4
  %and23 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.do.end39_crit_edge, label %do.end34, !prof !159

do.body22.do.end39_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39

do.end34:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call18) #12
  br label %do.end39

do.end39:                                         ; preds = %do.end34, %do.body22.do.end39_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #9
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_lookup(ptr noundef %dir, ptr noundef %dentry, ptr noundef %fhandle, ptr noundef %fattr) #0 align 64 {
entry:
  %arg = alloca %struct.nfs_diropargs, align 4
  %res = alloca %struct.nfs_diropok, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg) #9
  %0 = getelementptr inbounds %struct.nfs_diropargs, ptr %arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nfs_diropargs, ptr %arg, i32 0, i32 2
  %fh.i = getelementptr i8, ptr %dir, i32 -440
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fh.i, ptr %arg, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name1, align 8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %0, align 4
  %6 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d_name, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #9
  %9 = getelementptr inbounds %struct.nfs_diropok, ptr %res, i32 0, i32 1
  %10 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fhandle, ptr %res, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fattr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #9
  %12 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %13 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %14 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 4), ptr %msg, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arg, ptr %12, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %res, ptr %13, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %14, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %19 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i, align 16
  %flags.i = getelementptr inbounds %struct.nfs_server, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %24, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.nfs_lookup_is_soft_revalidate.exit.thread_crit_edge, label %if.end.i

entry.nfs_lookup_is_soft_revalidate.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_lookup_is_soft_revalidate.exit.thread

if.end.i:                                         ; preds = %entry
  %25 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dentry, align 8
  %and.i.i.i.i.i = and i32 %26, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %cmp.i.i.i.not.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.not.i, label %if.end.i.nfs_lookup_is_soft_revalidate.exit.thread_crit_edge, label %nfs_lookup_is_soft_revalidate.exit

if.end.i.nfs_lookup_is_soft_revalidate.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_lookup_is_soft_revalidate.exit.thread

nfs_lookup_is_soft_revalidate.exit:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %27 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_inode.i.i, align 8
  %fh.i.i = getelementptr i8, ptr %28, i32 -440
  %29 = ptrtoint ptr %fh.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %fh.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool4.not.i.not = icmp eq i16 %30, 0
  %spec.select = select i1 %tobool4.not.i.not, i32 0, i32 4096
  br label %nfs_lookup_is_soft_revalidate.exit.thread

nfs_lookup_is_soft_revalidate.exit.thread:        ; preds = %nfs_lookup_is_soft_revalidate.exit, %if.end.i.nfs_lookup_is_soft_revalidate.exit.thread_crit_edge, %entry.nfs_lookup_is_soft_revalidate.exit.thread_crit_edge
  %31 = phi i32 [ 0, %entry.nfs_lookup_is_soft_revalidate.exit.thread_crit_edge ], [ 0, %if.end.i.nfs_lookup_is_soft_revalidate.exit.thread_crit_edge ], [ %spec.select, %nfs_lookup_is_soft_revalidate.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %32 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %nfs_lookup_is_soft_revalidate.exit.thread.do.end15_crit_edge, label %do.end, !prof !159

nfs_lookup_is_soft_revalidate.exit.thread.do.end15_crit_edge: ; preds = %nfs_lookup_is_soft_revalidate.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

do.end:                                           ; preds = %nfs_lookup_is_soft_revalidate.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %dentry) #12
  br label %do.end15

do.end15:                                         ; preds = %do.end, %nfs_lookup_is_soft_revalidate.exit.thread.do.end15_crit_edge
  call void @nfs_fattr_init(ptr noundef %fattr) #9
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %33 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 33
  %35 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client.i, align 4
  %call18 = call i32 @rpc_call_sync(ptr noundef %38, ptr noundef nonnull %msg, i32 noundef %31) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %39 = load i32, ptr @nfs_debug, align 4
  %and20 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.end15.do.end36_crit_edge, label %do.end31, !prof !159

do.end15.do.end36_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

do.end31:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %call18) #12
  br label %do.end36

do.end36:                                         ; preds = %do.end31, %do.end15.do.end36_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg) #9
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_readlink(ptr noundef %inode, ptr noundef %page, i32 noundef %pgbase, i32 noundef %pglen) #0 align 64 {
entry:
  %page.addr = alloca ptr, align 4
  %args = alloca %struct.nfs_readlinkargs, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %page, ptr %page.addr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #9
  %1 = getelementptr inbounds %struct.nfs_readlinkargs, ptr %args, i32 0, i32 1
  %2 = getelementptr inbounds %struct.nfs_readlinkargs, ptr %args, i32 0, i32 2
  %3 = getelementptr inbounds %struct.nfs_readlinkargs, ptr %args, i32 0, i32 3
  %fh.i = getelementptr i8, ptr %inode, i32 -440
  %4 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fh.i, ptr %args, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %pgbase, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %pglen, ptr %2, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %page.addr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #9
  %8 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %9 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %10 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 5), ptr %msg, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %args, ptr %8, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %9, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %10, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %15 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !159

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i, align 4
  %call10 = call i32 @rpc_call_sync(ptr noundef %21, ptr noundef nonnull %msg, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %22 = load i32, ptr @nfs_debug, align 4
  %and12 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.end8.do.end28_crit_edge, label %do.end23, !prof !159

do.end8.do.end28_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

do.end23:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %call10) #12
  br label %do.end28

do.end28:                                         ; preds = %do.end23, %do.end8.do.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #9
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_create(ptr noundef %dir, ptr noundef %dentry, ptr noundef %sattr, i32 noundef %flags) #0 align 64 {
entry:
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #9
  %0 = call ptr @memcpy(ptr %msg, ptr @__const.nfs_proc_mknod.msg, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %1 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !159

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %dentry) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 360) #13
  %cmp.not.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.not.i, label %do.end5.do.body17_crit_edge, label %if.end8

do.end5.do.body17_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

if.end8:                                          ; preds = %do.end5
  %fh.i.i = getelementptr i8, ptr %dir, i32 -440
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fh.i.i, ptr %call7.i.i, align 8
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i, align 8
  %name3.i = getelementptr inbounds %struct.nfs_createargs, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %name3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %name3.i, align 4
  %7 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_name.i, align 8
  %len6.i = getelementptr inbounds %struct.nfs_createargs, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %len6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %len6.i, align 8
  %sattr8.i = getelementptr inbounds %struct.nfs_createargs, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %sattr8.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sattr, ptr %sattr8.i, align 4
  %fattr.i = getelementptr inbounds %struct.nfs_createdata, ptr %call7.i.i, i32 0, i32 3
  tail call void @nfs_fattr_init(ptr noundef %fattr.i) #9
  %fhandle.i = getelementptr inbounds %struct.nfs_createdata, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %fhandle.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %fhandle.i, align 8
  %res.i = getelementptr inbounds %struct.nfs_createdata, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %fhandle.i, ptr %res.i, align 8
  %fattr13.i = getelementptr inbounds %struct.nfs_createdata, ptr %call7.i.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %fattr13.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %fattr.i, ptr %fattr13.i, align 4
  %rpc_argp = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %14 = ptrtoint ptr %rpc_argp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %rpc_argp, align 4
  %rpc_resp = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %15 = ptrtoint ptr %rpc_resp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %res.i, ptr %rpc_resp, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i, align 4
  %call10 = call i32 @rpc_call_sync(ptr noundef %21, ptr noundef nonnull %msg, i32 noundef 0) #9
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock.i) #9
  %cache_validity.i = getelementptr i8, ptr %dir, i32 -304
  %22 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %23, 824
  store i32 %or.i, ptr %cache_validity.i, align 8
  %24 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %dir, align 8
  %26 = and i16 %25, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %26)
  %cmp.i = icmp eq i16 %26, 16384
  br i1 %cmp.i, label %if.then.i46, label %if.end8.nfs_mark_for_revalidate.exit_crit_edge

if.end8.nfs_mark_for_revalidate.exit_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_for_revalidate.exit

if.then.i46:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %or3.i = or i32 %23, 826
  %27 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or3.i, ptr %cache_validity.i, align 8
  br label %nfs_mark_for_revalidate.exit

nfs_mark_for_revalidate.exit:                     ; preds = %if.then.i46, %if.end8.nfs_mark_for_revalidate.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %nfs_mark_for_revalidate.exit.if.end16_crit_edge

nfs_mark_for_revalidate.exit.if.end16_crit_edge:  ; preds = %nfs_mark_for_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then12:                                        ; preds = %nfs_mark_for_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %res.i, align 8
  %30 = ptrtoint ptr %fattr13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fattr13.i, align 4
  %call15 = call i32 @nfs_instantiate(ptr noundef %dentry, ptr noundef %29, ptr noundef %31) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %nfs_mark_for_revalidate.exit.if.end16_crit_edge
  %status.0 = phi i32 [ %call15, %if.then12 ], [ %call10, %nfs_mark_for_revalidate.exit.if.end16_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %do.body17

do.body17:                                        ; preds = %if.end16, %do.end5.do.body17_crit_edge
  %status.1 = phi i32 [ %status.0, %if.end16 ], [ -12, %do.end5.do.body17_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %32 = load i32, ptr @nfs_debug, align 4
  %and18 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body17.do.end34_crit_edge, label %do.end29, !prof !159

do.body17.do.end34_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

do.end29:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %status.1) #12
  br label %do.end34

do.end34:                                         ; preds = %do.end29, %do.body17.do.end34_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #9
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_remove(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %arg = alloca %struct.nfs_removeargs, align 8
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arg) #9
  %0 = getelementptr inbounds i8, ptr %arg, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %arg, align 8
  %fh = getelementptr inbounds %struct.nfs_removeargs, ptr %arg, i32 0, i32 1
  %fh.i = getelementptr i8, ptr %dir, i32 -440
  %3 = ptrtoint ptr %fh to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fh.i, ptr %fh, align 8
  %name = getelementptr inbounds %struct.nfs_removeargs, ptr %arg, i32 0, i32 2
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %4 = call ptr @memcpy(ptr %name, ptr %d_name, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #9
  %5 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %6 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %7 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 10), ptr %msg, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arg, ptr %5, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %6, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %12 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !159

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %dentry) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client.i, align 4
  %call8 = call i32 @rpc_call_sync(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 0) #9
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock.i) #9
  %cache_validity.i = getelementptr i8, ptr %dir, i32 -304
  %19 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %20, 824
  store i32 %or.i, ptr %cache_validity.i, align 8
  %21 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %dir, align 8
  %23 = and i16 %22, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %23)
  %cmp.i = icmp eq i16 %23, 16384
  br i1 %cmp.i, label %if.then.i, label %do.end6.nfs_mark_for_revalidate.exit_crit_edge

do.end6.nfs_mark_for_revalidate.exit_crit_edge:   ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_for_revalidate.exit

if.then.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  %or3.i = or i32 %20, 826
  %24 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or3.i, ptr %cache_validity.i, align 8
  br label %nfs_mark_for_revalidate.exit

nfs_mark_for_revalidate.exit:                     ; preds = %if.then.i, %do.end6.nfs_mark_for_revalidate.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %25 = load i32, ptr @nfs_debug, align 4
  %and10 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %nfs_mark_for_revalidate.exit.do.end26_crit_edge, label %do.end21, !prof !159

nfs_mark_for_revalidate.exit.do.end26_crit_edge:  ; preds = %nfs_mark_for_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

do.end21:                                         ; preds = %nfs_mark_for_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %call8) #12
  br label %do.end26

do.end26:                                         ; preds = %do.end21, %nfs_mark_for_revalidate.exit.do.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg) #9
  ret i32 %call8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @nfs_proc_unlink_setup(ptr nocapture noundef writeonly %msg, ptr nocapture noundef readnone %dentry, ptr nocapture noundef readnone %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 10), ptr %msg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_proc_unlink_rpc_prepare(ptr noundef %task, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rpc_call_start(ptr noundef %task) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_unlink_done(ptr nocapture noundef readnone %task, ptr noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock.i) #9
  %cache_validity.i = getelementptr i8, ptr %dir, i32 -304
  %0 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %1, 824
  store i32 %or.i, ptr %cache_validity.i, align 8
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dir, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp.i = icmp eq i16 %4, 16384
  br i1 %cmp.i, label %if.then.i, label %entry.nfs_mark_for_revalidate.exit_crit_edge

entry.nfs_mark_for_revalidate.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_for_revalidate.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or3.i = or i32 %1, 826
  %5 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or3.i, ptr %cache_validity.i, align 8
  br label %nfs_mark_for_revalidate.exit

nfs_mark_for_revalidate.exit:                     ; preds = %if.then.i, %entry.nfs_mark_for_revalidate.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #9
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @nfs_proc_rename_setup(ptr nocapture noundef writeonly %msg, ptr nocapture noundef readnone %old_dentry, ptr nocapture noundef readnone %new_dentry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 11), ptr %msg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_proc_rename_rpc_prepare(ptr noundef %task, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rpc_call_start(ptr noundef %task) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_rename_done(ptr nocapture noundef readnone %task, ptr noundef %old_dir, ptr noundef %new_dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock.i) #9
  %cache_validity.i = getelementptr i8, ptr %old_dir, i32 -304
  %0 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %1, 824
  store i32 %or.i, ptr %cache_validity.i, align 8
  %2 = ptrtoint ptr %old_dir to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %old_dir, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp.i = icmp eq i16 %4, 16384
  br i1 %cmp.i, label %if.then.i, label %entry.nfs_mark_for_revalidate.exit_crit_edge

entry.nfs_mark_for_revalidate.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_for_revalidate.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or3.i = or i32 %1, 826
  %5 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or3.i, ptr %cache_validity.i, align 8
  br label %nfs_mark_for_revalidate.exit

nfs_mark_for_revalidate.exit:                     ; preds = %if.then.i, %entry.nfs_mark_for_revalidate.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #9
  %i_lock.i1 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock.i1) #9
  %cache_validity.i2 = getelementptr i8, ptr %new_dir, i32 -304
  %6 = ptrtoint ptr %cache_validity.i2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cache_validity.i2, align 8
  %or.i3 = or i32 %7, 824
  store i32 %or.i3, ptr %cache_validity.i2, align 8
  %8 = ptrtoint ptr %new_dir to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %new_dir, align 8
  %10 = and i16 %9, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %10)
  %cmp.i4 = icmp eq i16 %10, 16384
  br i1 %cmp.i4, label %if.then.i6, label %nfs_mark_for_revalidate.exit.nfs_mark_for_revalidate.exit7_crit_edge

nfs_mark_for_revalidate.exit.nfs_mark_for_revalidate.exit7_crit_edge: ; preds = %nfs_mark_for_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_for_revalidate.exit7

if.then.i6:                                       ; preds = %nfs_mark_for_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or3.i5 = or i32 %7, 826
  %11 = ptrtoint ptr %cache_validity.i2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or3.i5, ptr %cache_validity.i2, align 8
  br label %nfs_mark_for_revalidate.exit7

nfs_mark_for_revalidate.exit7:                    ; preds = %if.then.i6, %nfs_mark_for_revalidate.exit.nfs_mark_for_revalidate.exit7_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i1) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_link(ptr noundef %inode, ptr noundef %dir, ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  %arg = alloca %struct.nfs_linkargs, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %arg) #9
  %0 = getelementptr inbounds %struct.nfs_linkargs, ptr %arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nfs_linkargs, ptr %arg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nfs_linkargs, ptr %arg, i32 0, i32 3
  %fh.i = getelementptr i8, ptr %inode, i32 -440
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fh.i, ptr %arg, align 4
  %fh.i36 = getelementptr i8, ptr %dir, i32 -440
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fh.i36, ptr %0, align 4
  %name2 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %5 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name2, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %1, align 4
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %name, align 8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #9
  %11 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %12 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %13 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 12), ptr %msg, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arg, ptr %11, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %12, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %18 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !159

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %6) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client.i, align 4
  %call11 = call i32 @rpc_call_sync(ptr noundef %24, ptr noundef nonnull %msg, i32 noundef 0) #9
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock.i) #9
  %cache_validity.i = getelementptr i8, ptr %inode, i32 -304
  %25 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %26, 824
  store i32 %or.i, ptr %cache_validity.i, align 8
  %27 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %inode, align 8
  %29 = and i16 %28, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %29)
  %cmp.i = icmp eq i16 %29, 16384
  br i1 %cmp.i, label %if.then.i, label %do.end9.nfs_mark_for_revalidate.exit_crit_edge

do.end9.nfs_mark_for_revalidate.exit_crit_edge:   ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_for_revalidate.exit

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %or3.i = or i32 %26, 826
  %30 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or3.i, ptr %cache_validity.i, align 8
  br label %nfs_mark_for_revalidate.exit

nfs_mark_for_revalidate.exit:                     ; preds = %if.then.i, %do.end9.nfs_mark_for_revalidate.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #9
  %i_lock.i37 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock.i37) #9
  %cache_validity.i38 = getelementptr i8, ptr %dir, i32 -304
  %31 = ptrtoint ptr %cache_validity.i38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cache_validity.i38, align 8
  %or.i39 = or i32 %32, 824
  store i32 %or.i39, ptr %cache_validity.i38, align 8
  %33 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %dir, align 8
  %35 = and i16 %34, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %35)
  %cmp.i40 = icmp eq i16 %35, 16384
  br i1 %cmp.i40, label %if.then.i42, label %nfs_mark_for_revalidate.exit.nfs_mark_for_revalidate.exit43_crit_edge

nfs_mark_for_revalidate.exit.nfs_mark_for_revalidate.exit43_crit_edge: ; preds = %nfs_mark_for_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_for_revalidate.exit43

if.then.i42:                                      ; preds = %nfs_mark_for_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or3.i41 = or i32 %32, 826
  %36 = ptrtoint ptr %cache_validity.i38 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or3.i41, ptr %cache_validity.i38, align 8
  br label %nfs_mark_for_revalidate.exit43

nfs_mark_for_revalidate.exit43:                   ; preds = %if.then.i42, %nfs_mark_for_revalidate.exit.nfs_mark_for_revalidate.exit43_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_lock.i37) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %37 = load i32, ptr @nfs_debug, align 4
  %and13 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %nfs_mark_for_revalidate.exit43.do.end29_crit_edge, label %do.end24, !prof !159

nfs_mark_for_revalidate.exit43.do.end29_crit_edge: ; preds = %nfs_mark_for_revalidate.exit43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

do.end24:                                         ; preds = %nfs_mark_for_revalidate.exit43
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %call11) #12
  br label %do.end29

do.end29:                                         ; preds = %do.end24, %nfs_mark_for_revalidate.exit43.do.end29_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %arg) #9
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_symlink(ptr noundef %dir, ptr noundef %dentry, ptr noundef %page, i32 noundef %len, ptr noundef %sattr) #0 align 64 {
entry:
  %page.addr = alloca ptr, align 4
  %arg = alloca %struct.nfs_symlinkargs, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %page, ptr %page.addr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg) #9
  %1 = getelementptr inbounds %struct.nfs_symlinkargs, ptr %arg, i32 0, i32 1
  %2 = getelementptr inbounds %struct.nfs_symlinkargs, ptr %arg, i32 0, i32 2
  %3 = getelementptr inbounds %struct.nfs_symlinkargs, ptr %arg, i32 0, i32 3
  %4 = getelementptr inbounds %struct.nfs_symlinkargs, ptr %arg, i32 0, i32 4
  %5 = getelementptr inbounds %struct.nfs_symlinkargs, ptr %arg, i32 0, i32 5
  %fh.i = getelementptr i8, ptr %dir, i32 -440
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fh.i, ptr %arg, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %1, align 4
  %10 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %d_name, align 8
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %2, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %page.addr, ptr %3, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %len, ptr %4, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sattr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #9
  %16 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %17 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %18 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %19 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 13), ptr %msg, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arg, ptr %16, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %17, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %18, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %23 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !159

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %dentry) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %len)
  %cmp = icmp ugt i32 %len, 1024
  br i1 %cmp, label %do.end9.do.body24_crit_edge, label %if.end11

do.end9.do.body24_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

if.end11:                                         ; preds = %do.end9
  %call12 = call ptr @nfs_alloc_fhandle() #9
  %call13 = call ptr @nfs_alloc_fattr() #9
  %cmp14 = icmp eq ptr %call12, null
  %cmp15 = icmp eq ptr %call13, null
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp15
  br i1 %or.cond, label %if.end11.out_free_crit_edge, label %if.end17

if.end11.out_free_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end17:                                         ; preds = %if.end11
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client.i, align 4
  %call19 = call i32 @rpc_call_sync(ptr noundef %29, ptr noundef nonnull %msg, i32 noundef 0) #9
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock.i) #9
  %cache_validity.i = getelementptr i8, ptr %dir, i32 -304
  %30 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %31, 824
  store i32 %or.i, ptr %cache_validity.i, align 8
  %32 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dir, align 8
  %34 = and i16 %33, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %34)
  %cmp.i = icmp eq i16 %34, 16384
  br i1 %cmp.i, label %if.then.i, label %if.end17.nfs_mark_for_revalidate.exit_crit_edge

if.end17.nfs_mark_for_revalidate.exit_crit_edge:  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_for_revalidate.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %or3.i = or i32 %31, 826
  %35 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or3.i, ptr %cache_validity.i, align 8
  br label %nfs_mark_for_revalidate.exit

nfs_mark_for_revalidate.exit:                     ; preds = %if.then.i, %if.end17.nfs_mark_for_revalidate.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %nfs_mark_for_revalidate.exit.out_free_crit_edge

nfs_mark_for_revalidate.exit.out_free_crit_edge:  ; preds = %nfs_mark_for_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.then21:                                        ; preds = %nfs_mark_for_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = call i32 @nfs_instantiate(ptr noundef %dentry, ptr noundef nonnull %call12, ptr noundef nonnull %call13) #9
  br label %out_free

out_free:                                         ; preds = %if.then21, %nfs_mark_for_revalidate.exit.out_free_crit_edge, %if.end11.out_free_crit_edge
  %status.0 = phi i32 [ -12, %if.end11.out_free_crit_edge ], [ %call22, %if.then21 ], [ %call19, %nfs_mark_for_revalidate.exit.out_free_crit_edge ]
  br i1 %cmp15, label %out_free.nfs_free_fattr.exit_crit_edge, label %if.then.i54

out_free.nfs_free_fattr.exit_crit_edge:           ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_free_fattr.exit

if.then.i54:                                      ; preds = %out_free
  %label.i = getelementptr inbounds %struct.nfs_fattr, ptr %call13, i32 0, i32 24
  %36 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %label.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.then.i54.nfs_free_fattr.exit_crit_edge, label %if.then.i.i

if.then.i54.nfs_free_fattr.exit_crit_edge:        ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_free_fattr.exit

if.then.i.i:                                      ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #11
  %label1.i.i = getelementptr inbounds %struct.nfs4_label, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %label1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %label1.i.i, align 4
  call void @kfree(ptr noundef %39) #9
  call void @kfree(ptr noundef nonnull %37) #9
  br label %nfs_free_fattr.exit

nfs_free_fattr.exit:                              ; preds = %if.then.i.i, %if.then.i54.nfs_free_fattr.exit_crit_edge, %out_free.nfs_free_fattr.exit_crit_edge
  call void @kfree(ptr noundef %call13) #9
  call void @kfree(ptr noundef %call12) #9
  br label %do.body24

do.body24:                                        ; preds = %nfs_free_fattr.exit, %do.end9.do.body24_crit_edge
  %status.1 = phi i32 [ -36, %do.end9.do.body24_crit_edge ], [ %status.0, %nfs_free_fattr.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %40 = load i32, ptr @nfs_debug, align 4
  %and25 = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.do.end41_crit_edge, label %do.end36, !prof !159

do.body24.do.end41_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

do.end36:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %status.1) #12
  br label %do.end41

do.end41:                                         ; preds = %do.end36, %do.body24.do.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg) #9
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_mkdir(ptr noundef %dir, ptr noundef %dentry, ptr noundef %sattr) #0 align 64 {
entry:
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #9
  %0 = call ptr @memcpy(ptr %msg, ptr @__const.nfs_proc_mkdir.msg, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %1 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !159

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %dentry) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 360) #13
  %cmp.not.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.not.i, label %do.end5.do.body17_crit_edge, label %if.end8

do.end5.do.body17_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

if.end8:                                          ; preds = %do.end5
  %fh.i.i = getelementptr i8, ptr %dir, i32 -440
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fh.i.i, ptr %call7.i.i, align 8
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i, align 8
  %name3.i = getelementptr inbounds %struct.nfs_createargs, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %name3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %name3.i, align 4
  %7 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_name.i, align 8
  %len6.i = getelementptr inbounds %struct.nfs_createargs, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %len6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %len6.i, align 8
  %sattr8.i = getelementptr inbounds %struct.nfs_createargs, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %sattr8.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sattr, ptr %sattr8.i, align 4
  %fattr.i = getelementptr inbounds %struct.nfs_createdata, ptr %call7.i.i, i32 0, i32 3
  tail call void @nfs_fattr_init(ptr noundef %fattr.i) #9
  %fhandle.i = getelementptr inbounds %struct.nfs_createdata, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %fhandle.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %fhandle.i, align 8
  %res.i = getelementptr inbounds %struct.nfs_createdata, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %fhandle.i, ptr %res.i, align 8
  %fattr13.i = getelementptr inbounds %struct.nfs_createdata, ptr %call7.i.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %fattr13.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %fattr.i, ptr %fattr13.i, align 4
  %rpc_argp = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %14 = ptrtoint ptr %rpc_argp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %rpc_argp, align 4
  %rpc_resp = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %15 = ptrtoint ptr %rpc_resp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %res.i, ptr %rpc_resp, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i, align 4
  %call10 = call i32 @rpc_call_sync(ptr noundef %21, ptr noundef nonnull %msg, i32 noundef 0) #9
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock.i) #9
  %cache_validity.i = getelementptr i8, ptr %dir, i32 -304
  %22 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %23, 824
  store i32 %or.i, ptr %cache_validity.i, align 8
  %24 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %dir, align 8
  %26 = and i16 %25, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %26)
  %cmp.i = icmp eq i16 %26, 16384
  br i1 %cmp.i, label %if.then.i46, label %if.end8.nfs_mark_for_revalidate.exit_crit_edge

if.end8.nfs_mark_for_revalidate.exit_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_for_revalidate.exit

if.then.i46:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %or3.i = or i32 %23, 826
  %27 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or3.i, ptr %cache_validity.i, align 8
  br label %nfs_mark_for_revalidate.exit

nfs_mark_for_revalidate.exit:                     ; preds = %if.then.i46, %if.end8.nfs_mark_for_revalidate.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %nfs_mark_for_revalidate.exit.if.end16_crit_edge

nfs_mark_for_revalidate.exit.if.end16_crit_edge:  ; preds = %nfs_mark_for_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then12:                                        ; preds = %nfs_mark_for_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %res.i, align 8
  %30 = ptrtoint ptr %fattr13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fattr13.i, align 4
  %call15 = call i32 @nfs_instantiate(ptr noundef %dentry, ptr noundef %29, ptr noundef %31) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %nfs_mark_for_revalidate.exit.if.end16_crit_edge
  %status.0 = phi i32 [ %call15, %if.then12 ], [ %call10, %nfs_mark_for_revalidate.exit.if.end16_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %do.body17

do.body17:                                        ; preds = %if.end16, %do.end5.do.body17_crit_edge
  %status.1 = phi i32 [ %status.0, %if.end16 ], [ -12, %do.end5.do.body17_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %32 = load i32, ptr @nfs_debug, align 4
  %and18 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body17.do.end34_crit_edge, label %do.end29, !prof !159

do.body17.do.end34_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

do.end29:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %status.1) #12
  br label %do.end34

do.end34:                                         ; preds = %do.end29, %do.body17.do.end34_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #9
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_rmdir(ptr noundef %dir, ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  %arg = alloca %struct.nfs_diropargs, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg) #9
  %0 = getelementptr inbounds %struct.nfs_diropargs, ptr %arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nfs_diropargs, ptr %arg, i32 0, i32 2
  %fh.i = getelementptr i8, ptr %dir, i32 -440
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fh.i, ptr %arg, align 4
  %name2 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %3 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name2, align 8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %0, align 4
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %name, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #9
  %9 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %10 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %11 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 15), ptr %msg, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arg, ptr %9, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %10, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %16 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !159

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %4) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client.i, align 4
  %call12 = call i32 @rpc_call_sync(ptr noundef %22, ptr noundef nonnull %msg, i32 noundef 0) #9
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock.i) #9
  %cache_validity.i = getelementptr i8, ptr %dir, i32 -304
  %23 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %24, 824
  store i32 %or.i, ptr %cache_validity.i, align 8
  %25 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dir, align 8
  %27 = and i16 %26, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %27)
  %cmp.i = icmp eq i16 %27, 16384
  br i1 %cmp.i, label %if.then.i, label %do.end10.nfs_mark_for_revalidate.exit_crit_edge

do.end10.nfs_mark_for_revalidate.exit_crit_edge:  ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_for_revalidate.exit

if.then.i:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  %or3.i = or i32 %24, 826
  %28 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or3.i, ptr %cache_validity.i, align 8
  br label %nfs_mark_for_revalidate.exit

nfs_mark_for_revalidate.exit:                     ; preds = %if.then.i, %do.end10.nfs_mark_for_revalidate.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %29 = load i32, ptr @nfs_debug, align 4
  %and14 = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %nfs_mark_for_revalidate.exit.do.end30_crit_edge, label %do.end25, !prof !159

nfs_mark_for_revalidate.exit.do.end30_crit_edge:  ; preds = %nfs_mark_for_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

do.end25:                                         ; preds = %nfs_mark_for_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %call12) #12
  br label %do.end30

do.end30:                                         ; preds = %do.end25, %nfs_mark_for_revalidate.exit.do.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg) #9
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_readdir(ptr nocapture noundef readonly %nr_arg, ptr nocapture noundef readonly %nr_res) #0 align 64 {
entry:
  %arg = alloca %struct.nfs_readdirargs, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nr_arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nr_arg, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %arg) #9
  %4 = getelementptr inbounds %struct.nfs_readdirargs, ptr %arg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nfs_readdirargs, ptr %arg, i32 0, i32 2
  %6 = getelementptr inbounds %struct.nfs_readdirargs, ptr %arg, i32 0, i32 3
  %fh.i = getelementptr i8, ptr %3, i32 -440
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fh.i, ptr %arg, align 4
  %cookie2 = getelementptr inbounds %struct.nfs_readdir_arg, ptr %nr_arg, i32 0, i32 3
  %8 = ptrtoint ptr %cookie2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cookie2, align 8
  %conv = trunc i64 %9 to i32
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %4, align 4
  %page_len = getelementptr inbounds %struct.nfs_readdir_arg, ptr %nr_arg, i32 0, i32 5
  %11 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %page_len, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %5, align 4
  %pages3 = getelementptr inbounds %struct.nfs_readdir_arg, ptr %nr_arg, i32 0, i32 4
  %14 = ptrtoint ptr %pages3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages3, align 8
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #9
  %17 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %18 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %19 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 16), ptr %msg, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arg, ptr %17, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %18, align 4
  %cred = getelementptr inbounds %struct.nfs_readdir_arg, ptr %nr_arg, i32 0, i32 1
  %23 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cred, align 4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %19, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %26 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !159

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i64 noundef %9) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 33
  %29 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client.i, align 4
  %call12 = call i32 @rpc_call_sync(ptr noundef %32, ptr noundef nonnull %msg, i32 noundef 0) #9
  %33 = ptrtoint ptr %nr_res to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nr_res, align 4
  %arrayidx = getelementptr i32, ptr %34, i32 1
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx, align 4
  %36 = load ptr, ptr %nr_res, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %36, align 4
  call void @nfs_invalidate_atime(ptr noundef %3) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %38 = load i32, ptr @nfs_debug, align 4
  %and16 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.end10.do.end32_crit_edge, label %do.end27, !prof !159

do.end10.do.end32_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

do.end27:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %call12) #12
  br label %do.end32

do.end32:                                         ; preds = %do.end27, %do.end10.do.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %arg) #9
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_mknod(ptr noundef %dir, ptr noundef %dentry, ptr noundef %sattr, i32 noundef %rdev) #0 align 64 {
entry:
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #9
  %0 = call ptr @memcpy(ptr %msg, ptr @__const.nfs_proc_mknod.msg, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %1 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !159

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %dentry) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %sattr, i32 0, i32 1
  %2 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ia_mode, align 4
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %4)
  %cmp = icmp eq i16 %4, 4096
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  %and10 = and i16 %3, 4095
  %or = or i16 %and10, 8192
  %5 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %or, ptr %ia_mode, align 4
  %6 = ptrtoint ptr %sattr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sattr, align 8
  %and13 = and i32 %7, -9
  store i32 %and13, ptr %sattr, align 8
  br label %if.end28

if.else:                                          ; preds = %do.end5
  %8 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %4, label %if.else.if.end28_crit_edge [
    i16 8192, label %if.else.if.then22_crit_edge
    i16 24576, label %if.else.if.then22_crit_edge104
  ]

if.else.if.then22_crit_edge104:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.else.if.then22_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then22:                                        ; preds = %if.else.if.then22_crit_edge, %if.else.if.then22_crit_edge104
  %9 = ptrtoint ptr %sattr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sattr, align 8
  %or24 = or i32 %10, 8
  store i32 %or24, ptr %sattr, align 8
  %and1.i = and i32 %rdev, 255
  %11 = lshr i32 %rdev, 12
  %shl.i = and i32 %11, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %rdev, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  %conv26 = zext i32 %or4.i to i64
  %ia_size = getelementptr inbounds %struct.iattr, ptr %sattr, i32 0, i32 4
  %12 = ptrtoint ptr %ia_size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv26, ptr %ia_size, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.else.if.end28_crit_edge, %if.then8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 360) #13
  %cmp.not.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.not.i, label %if.end28.do.body56_crit_edge, label %if.end33

if.end28.do.body56_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body56

if.end33:                                         ; preds = %if.end28
  %fh.i.i = getelementptr i8, ptr %dir, i32 -440
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %fh.i.i, ptr %call7.i.i, align 8
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i, align 8
  %name3.i = getelementptr inbounds %struct.nfs_createargs, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %name3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %name3.i, align 4
  %18 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %d_name.i, align 8
  %len6.i = getelementptr inbounds %struct.nfs_createargs, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %len6.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %len6.i, align 8
  %sattr8.i = getelementptr inbounds %struct.nfs_createargs, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %sattr8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sattr, ptr %sattr8.i, align 4
  %fattr.i = getelementptr inbounds %struct.nfs_createdata, ptr %call7.i.i, i32 0, i32 3
  tail call void @nfs_fattr_init(ptr noundef %fattr.i) #9
  %fhandle.i = getelementptr inbounds %struct.nfs_createdata, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %fhandle.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %fhandle.i, align 8
  %res.i = getelementptr inbounds %struct.nfs_createdata, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %fhandle.i, ptr %res.i, align 8
  %fattr13.i = getelementptr inbounds %struct.nfs_createdata, ptr %call7.i.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %fattr13.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %fattr.i, ptr %fattr13.i, align 4
  %rpc_argp = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %25 = ptrtoint ptr %rpc_argp to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %rpc_argp, align 4
  %rpc_resp = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %26 = ptrtoint ptr %rpc_resp to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %res.i, ptr %rpc_resp, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 33
  %29 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client.i, align 4
  %call35 = call i32 @rpc_call_sync(ptr noundef %32, ptr noundef nonnull %msg, i32 noundef 0) #9
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock.i) #9
  %cache_validity.i = getelementptr i8, ptr %dir, i32 -304
  %33 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cache_validity.i, align 8
  %or.i99 = or i32 %34, 824
  store i32 %or.i99, ptr %cache_validity.i, align 8
  %35 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %dir, align 8
  %37 = and i16 %36, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %37)
  %cmp.i = icmp eq i16 %37, 16384
  br i1 %cmp.i, label %if.then.i100, label %if.end33.nfs_mark_for_revalidate.exit_crit_edge

if.end33.nfs_mark_for_revalidate.exit_crit_edge:  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_for_revalidate.exit

if.then.i100:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %or3.i = or i32 %34, 826
  %38 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or3.i, ptr %cache_validity.i, align 8
  br label %nfs_mark_for_revalidate.exit

nfs_mark_for_revalidate.exit:                     ; preds = %if.then.i100, %if.end33.nfs_mark_for_revalidate.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call35)
  %cmp36 = icmp ne i32 %call35, -22
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %cmp36, i1 true, i1 %cmp.not
  br i1 %brmerge, label %nfs_mark_for_revalidate.exit.if.end47_crit_edge, label %if.then42

nfs_mark_for_revalidate.exit.if.end47_crit_edge:  ; preds = %nfs_mark_for_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then42:                                        ; preds = %nfs_mark_for_revalidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %3, ptr %ia_mode, align 4
  %40 = ptrtoint ptr %fattr13.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fattr13.i, align 4
  call void @nfs_fattr_init(ptr noundef %41) #9
  %42 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i102 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 33
  %44 = ptrtoint ptr %s_fs_info.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i.i.i102, align 16
  %client.i103 = getelementptr inbounds %struct.nfs_server, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %client.i103 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client.i103, align 4
  %call46 = call i32 @rpc_call_sync(ptr noundef %47, ptr noundef nonnull %msg, i32 noundef 0) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %nfs_mark_for_revalidate.exit.if.end47_crit_edge
  %status.0 = phi i32 [ %call46, %if.then42 ], [ %call35, %nfs_mark_for_revalidate.exit.if.end47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %cmp48 = icmp eq i32 %status.0, 0
  br i1 %cmp48, label %if.then50, label %if.end47.if.end55_crit_edge

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %res.i, align 8
  %50 = ptrtoint ptr %fattr13.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fattr13.i, align 4
  %call54 = call i32 @nfs_instantiate(ptr noundef %dentry, ptr noundef %49, ptr noundef %51) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %if.end47.if.end55_crit_edge
  %status.1 = phi i32 [ %call54, %if.then50 ], [ %status.0, %if.end47.if.end55_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %do.body56

do.body56:                                        ; preds = %if.end55, %if.end28.do.body56_crit_edge
  %status.2 = phi i32 [ %status.1, %if.end55 ], [ -12, %if.end28.do.body56_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %52 = load i32, ptr @nfs_debug, align 4
  %and57 = and i32 %52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body56.do.end73_crit_edge, label %do.end68, !prof !159

do.body56.do.end73_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

do.end68:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %status.2) #12
  br label %do.end73

do.end73:                                         ; preds = %do.end68, %do.body56.do.end73_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #9
  ret i32 %status.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_statfs(ptr nocapture noundef readonly %server, ptr noundef %fhandle, ptr nocapture noundef %stat) #0 align 64 {
entry:
  %fsinfo = alloca %struct.nfs2_fsstat, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fsinfo) #9
  %0 = getelementptr inbounds %struct.nfs2_fsstat, ptr %fsinfo, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nfs2_fsstat, ptr %fsinfo, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nfs2_fsstat, ptr %fsinfo, i32 0, i32 3
  %3 = getelementptr inbounds %struct.nfs2_fsstat, ptr %fsinfo, i32 0, i32 4
  %4 = call ptr @memset(ptr %fsinfo, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #9
  %5 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %6 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %7 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 17), ptr %msg, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %fhandle, ptr %5, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fsinfo, ptr %6, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %12 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !159

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %13 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stat, align 8
  call void @nfs_fattr_init(ptr noundef %14) #9
  %client = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 3
  %15 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client, align 4
  %call6 = call i32 @rpc_call_sync(ptr noundef %16, ptr noundef nonnull %msg, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %17 = load i32, ptr @nfs_debug, align 4
  %and8 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.end5.do.end24_crit_edge, label %do.end19, !prof !159

do.end5.do.end24_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

do.end19:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %call6) #12
  br label %do.end24

do.end24:                                         ; preds = %do.end19, %do.end5.do.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool25.not = icmp eq i32 %call6, 0
  br i1 %tobool25.not, label %if.end27, label %do.end24.out_crit_edge

do.end24.out_crit_edge:                           ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end27:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %conv = zext i32 %19 to i64
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %0, align 4
  %conv28 = zext i32 %21 to i64
  %mul = mul nuw i64 %conv28, %conv
  %tbytes = getelementptr inbounds %struct.nfs_fsstat, ptr %stat, i32 0, i32 1
  %22 = ptrtoint ptr %tbytes to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %mul, ptr %tbytes, align 8
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %2, align 4
  %conv29 = zext i32 %24 to i64
  %mul32 = mul nuw i64 %conv29, %conv28
  %fbytes = getelementptr inbounds %struct.nfs_fsstat, ptr %stat, i32 0, i32 2
  %25 = ptrtoint ptr %fbytes to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %mul32, ptr %fbytes, align 8
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  %conv33 = zext i32 %27 to i64
  %mul36 = mul nuw i64 %conv33, %conv28
  %abytes = getelementptr inbounds %struct.nfs_fsstat, ptr %stat, i32 0, i32 3
  %28 = ptrtoint ptr %abytes to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %mul36, ptr %abytes, align 8
  %tfiles = getelementptr inbounds %struct.nfs_fsstat, ptr %stat, i32 0, i32 4
  %29 = call ptr @memset(ptr %tfiles, i32 0, i32 24)
  br label %out

out:                                              ; preds = %if.end27, %do.end24.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fsinfo) #9
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_fsinfo(ptr nocapture noundef readonly %server, ptr noundef %fhandle, ptr nocapture noundef %info) #0 align 64 {
entry:
  %fsinfo = alloca %struct.nfs2_fsstat, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fsinfo) #9
  %0 = getelementptr inbounds %struct.nfs2_fsstat, ptr %fsinfo, i32 0, i32 1
  %1 = call ptr @memset(ptr %fsinfo, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #9
  %2 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %3 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %4 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 17), ptr %msg, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fhandle, ptr %2, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fsinfo, ptr %3, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %9 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !159

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 8
  call void @nfs_fattr_init(ptr noundef %11) #9
  %client = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 3
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 4
  %call6 = call i32 @rpc_call_sync(ptr noundef %13, ptr noundef nonnull %msg, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %14 = load i32, ptr @nfs_debug, align 4
  %and8 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.end5.do.end24_crit_edge, label %do.end19, !prof !159

do.end5.do.end24_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

do.end19:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %call6) #12
  br label %do.end24

do.end24:                                         ; preds = %do.end19, %do.end5.do.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool25.not = icmp eq i32 %call6, 0
  br i1 %tobool25.not, label %if.end27, label %do.end24.out_crit_edge

do.end24.out_crit_edge:                           ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end27:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  %rtmax = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 1
  %15 = ptrtoint ptr %rtmax to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8192, ptr %rtmax, align 4
  %16 = ptrtoint ptr %fsinfo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fsinfo, align 4
  %rtpref = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 2
  %18 = ptrtoint ptr %rtpref to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rtpref, align 8
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %0, align 4
  %rtmult = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 3
  %21 = ptrtoint ptr %rtmult to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rtmult, align 4
  %wtmax = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 4
  %22 = ptrtoint ptr %wtmax to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8192, ptr %wtmax, align 8
  %wtpref = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 5
  %23 = ptrtoint ptr %wtpref to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %17, ptr %wtpref, align 4
  %wtmult = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 6
  %24 = ptrtoint ptr %wtmult to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %20, ptr %wtmult, align 8
  %dtpref = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 7
  %25 = ptrtoint ptr %dtpref to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %17, ptr %dtpref, align 4
  %maxfilesize = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 8
  %26 = ptrtoint ptr %maxfilesize to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 2147483647, ptr %maxfilesize, align 8
  %lease_time = getelementptr inbounds %struct.nfs_fsinfo, ptr %info, i32 0, i32 10
  %27 = ptrtoint ptr %lease_time to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %lease_time, align 8
  br label %out

out:                                              ; preds = %if.end27, %do.end24.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fsinfo) #9
  ret i32 %call6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nfs_proc_pathconf(ptr nocapture noundef readnone %server, ptr nocapture noundef readnone %fhandle, ptr nocapture noundef writeonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_link = getelementptr inbounds %struct.nfs_pathconf, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %max_link to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %max_link, align 4
  %max_namelen = getelementptr inbounds %struct.nfs_pathconf, ptr %info, i32 0, i32 2
  %1 = ptrtoint ptr %max_namelen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 255, ptr %max_namelen, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs2_decode_dirent(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_pgio_rpc_prepare(ptr noundef %task, ptr nocapture noundef readnone %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rpc_call_start(ptr noundef %task) #9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @nfs_proc_read_setup(ptr nocapture noundef readnone %hdr, ptr nocapture noundef writeonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 6), ptr %msg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_read_done(ptr nocapture noundef readonly %task, ptr nocapture noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdr, align 8
  tail call void @nfs_invalidate_atime(ptr noundef %1) #9
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %2 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %entry
  %fattr = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 21, i32 1
  %4 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fattr, align 8
  %call = tail call i32 @nfs_refresh_inode(ptr noundef %1, ptr noundef %5) #9
  %count = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 21, i32 2
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp3 = icmp eq i64 %7, 0
  br i1 %cmp3, label %land.lhs.true, label %if.then.lor.lhs.false_crit_edge

if.then.lor.lhs.false_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %count4 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 6
  %8 = ptrtoint ptr %count4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5.not = icmp eq i32 %9, 0
  br i1 %cmp5.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then12_crit_edge

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.then.lor.lhs.false_crit_edge
  %offset = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 5
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset, align 8
  %add = add i64 %11, %7
  %12 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fattr, align 8
  %size = getelementptr inbounds %struct.nfs_fattr, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %15)
  %cmp11.not = icmp ult i64 %add, %15
  br i1 %cmp11.not, label %lor.lhs.false.if.end14_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %land.lhs.true.if.then12_crit_edge
  %eof = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 21, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %eof to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %eof, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %lor.lhs.false.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @nfs_proc_write_setup(ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %msg, ptr nocapture noundef readnone %clnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stable = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 9, i32 0, i32 2
  %0 = ptrtoint ptr %stable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %stable, align 4
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 8), ptr %msg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_write_done(ptr nocapture noundef readonly %task, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %count = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 6
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  %conv = zext i32 %3 to i64
  %count1 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 21, i32 2
  %4 = ptrtoint ptr %count1 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %count1, align 8
  tail call void @nfs_writeback_update_inode(ptr noundef %hdr) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_proc_commit_setup(ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %msg, ptr nocapture noundef readnone %clnt) #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/proc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 653, 0\0A.popsection", ""() #9, !srcloc !160
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_proc_commit_rpc_prepare(ptr nocapture noundef readnone %task, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/proc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 646, 0\0A.popsection", ""() #9, !srcloc !161
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_proc_lock(ptr nocapture noundef readonly %filp, i32 noundef %cmd, ptr noundef %fl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %nlm_host = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %nlm_host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nlm_host, align 4
  %call2 = tail call i32 @nlmclnt_proc(ptr noundef %7, i32 noundef %cmd, ptr noundef %fl, ptr noundef null) #9
  ret i32 %call2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfs_lock_check_bounds(ptr nocapture noundef readonly %fl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_start = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %0 = ptrtoint ptr %fl_start to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %fl_start, align 8
  %conv = trunc i64 %1 to i32
  %conv1 = sext i32 %conv to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv1)
  %cmp.not = icmp eq i64 %1, %conv1
  br i1 %cmp.not, label %if.end, label %entry.out_einval_crit_edge

entry.out_einval_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_einval

if.end:                                           ; preds = %entry
  %fl_end = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 13
  %2 = ptrtoint ptr %fl_end to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %fl_end, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %3)
  %cmp4.not = icmp eq i64 %3, 9223372036854775807
  br i1 %cmp4.not, label %if.end.if.end15_crit_edge, label %if.then6

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then6:                                         ; preds = %if.end
  %conv8 = trunc i64 %3 to i32
  %conv9 = sext i32 %conv8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv9)
  %cmp11.not = icmp eq i64 %3, %conv9
  br i1 %cmp11.not, label %if.then6.if.end15_crit_edge, label %if.then6.out_einval_crit_edge

if.then6.out_einval_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_einval

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %if.then6.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %end.0 = phi i32 [ %conv8, %if.then6.if.end15_crit_edge ], [ 2147483647, %if.end.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp16 = icmp slt i32 %conv, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %end.0, i32 %conv)
  %cmp18 = icmp slt i32 %end.0, %conv
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp18
  br i1 %or.cond, label %if.end15.out_einval_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.out_einval_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_einval

out_einval:                                       ; preds = %if.end15.out_einval_crit_edge, %if.then6.out_einval_crit_edge, %entry.out_einval_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %out_einval, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %out_einval ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_close_context(ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfs_have_delegation(ptr nocapture noundef readnone %inode, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_client(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_init_client(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_client(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_create_server(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_clone_server(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_lookup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_permission(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_create(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_link(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_unlink(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_symlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_mkdir(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_rmdir(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_mknod(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_setattr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_fattr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_call_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_setattr_update_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_instantiate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_call_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fhandle() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_invalidate_atime(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_refresh_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_writeback_update_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmclnt_proc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @nfs_v2_clientops, !1, !"nfs_v2_clientops", i1 false, i1 false}
!1 = !{!"../fs/nfs/proc.c", i32 714, i32 26}
!2 = !{ptr @nfs_dir_inode_operations, !3, !"nfs_dir_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/nfs/proc.c", i32 693, i32 38}
!4 = !{ptr @nfs_file_inode_operations, !5, !"nfs_file_inode_operations", i1 false, i1 false}
!5 = !{!"../fs/nfs/proc.c", i32 708, i32 38}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfs/proc.c", i32 66, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nfs_proc_get_root._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @nfs_proc_get_root._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nfs/proc.c", i32 72, i32 2}
!14 = !{ptr @nfs_proc_get_root._entry.3, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nfs_proc_get_root._entry_ptr.5, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/nfs/proc.c", i32 75, i32 2}
!18 = !{ptr @nfs_proc_get_root._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @nfs_proc_get_root._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/nfs/proc.c", i32 82, i32 2}
!22 = !{ptr @nfs_proc_get_root._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @nfs_proc_get_root._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/nfs/proc.c", i32 117, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nfs_proc_getattr._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @nfs_proc_getattr._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/nfs/proc.c", i32 120, i32 2}
!31 = !{ptr @nfs_proc_getattr._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @nfs_proc_getattr._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/nfs/proc.c", i32 143, i32 2}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nfs_proc_setattr._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @nfs_proc_setattr._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/nfs/proc.c", i32 150, i32 2}
!40 = !{ptr @nfs_proc_setattr._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @nfs_proc_setattr._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/nfs/proc.c", i32 179, i32 2}
!44 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nfs_proc_lookup._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @nfs_proc_lookup._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/nfs/proc.c", i32 182, i32 2}
!49 = !{ptr @nfs_proc_lookup._entry.24, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @nfs_proc_lookup._entry_ptr.26, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/nfs/proc.c", i32 201, i32 2}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @nfs_proc_readlink._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @nfs_proc_readlink._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/nfs/proc.c", i32 203, i32 2}
!58 = !{ptr @nfs_proc_readlink._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @nfs_proc_readlink._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/nfs/proc.c", i32 249, i32 2}
!62 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @nfs_proc_create._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @nfs_proc_create._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/nfs/proc.c", i32 261, i32 2}
!67 = !{ptr @nfs_proc_create._entry.34, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @nfs_proc_create._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/nfs/proc.c", i32 325, i32 2}
!71 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @nfs_proc_remove._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @nfs_proc_remove._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/nfs/proc.c", i32 329, i32 2}
!76 = !{ptr @nfs_proc_remove._entry.39, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @nfs_proc_remove._entry_ptr.41, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/nfs/proc.c", i32 389, i32 2}
!80 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @nfs_proc_link._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @nfs_proc_link._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/nfs/proc.c", i32 393, i32 2}
!85 = !{ptr @nfs_proc_link._entry.44, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @nfs_proc_link._entry_ptr.46, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/nfs/proc.c", i32 417, i32 2}
!89 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @nfs_proc_symlink._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @nfs_proc_symlink._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/nfs/proc.c", i32 443, i32 2}
!94 = !{ptr @nfs_proc_symlink._entry.49, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @nfs_proc_symlink._entry_ptr.51, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/nfs/proc.c", i32 456, i32 2}
!98 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @nfs_proc_mkdir._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @nfs_proc_mkdir._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/nfs/proc.c", i32 469, i32 2}
!103 = !{ptr @nfs_proc_mkdir._entry.54, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @nfs_proc_mkdir._entry_ptr.56, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/nfs/proc.c", i32 487, i32 2}
!107 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @nfs_proc_rmdir._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @nfs_proc_rmdir._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/nfs/proc.c", i32 490, i32 2}
!112 = !{ptr @nfs_proc_rmdir._entry.59, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @nfs_proc_rmdir._entry_ptr.61, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/nfs/proc.c", i32 518, i32 2}
!116 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @nfs_proc_readdir._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @nfs_proc_readdir._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/nfs/proc.c", i32 524, i32 2}
!121 = !{ptr @nfs_proc_readdir._entry.64, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @nfs_proc_readdir._entry_ptr.66, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/nfs/proc.c", i32 279, i32 2}
!125 = !{ptr @.str.68, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @nfs_proc_mknod._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @nfs_proc_mknod._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.70, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/nfs/proc.c", i32 308, i32 2}
!130 = !{ptr @nfs_proc_mknod._entry.69, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @nfs_proc_mknod._entry_ptr.71, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/nfs/proc.c", i32 540, i32 2}
!134 = !{ptr @.str.73, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @nfs_proc_statfs._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @nfs_proc_statfs._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/nfs/proc.c", i32 543, i32 2}
!139 = !{ptr @nfs_proc_statfs._entry.74, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @nfs_proc_statfs._entry_ptr.76, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.77, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/nfs/proc.c", i32 568, i32 2}
!143 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @nfs_proc_fsinfo._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @nfs_proc_fsinfo._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.80, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/nfs/proc.c", i32 571, i32 2}
!148 = !{ptr @nfs_proc_fsinfo._entry.79, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @nfs_proc_fsinfo._entry_ptr.81, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{!"branch_weights", i32 2000, i32 1}
!160 = !{i64 2157683530, i64 2157684008, i64 2157683567, i64 2157683623, i64 2157683657, i64 2157683681, i64 2157683722, i64 2157683743, i64 2157683771, i64 2157683805}
!161 = !{i64 2157682070, i64 2157682548, i64 2157682107, i64 2157682163, i64 2157682197, i64 2157682221, i64 2157682262, i64 2157682283, i64 2157682311, i64 2157682345}
