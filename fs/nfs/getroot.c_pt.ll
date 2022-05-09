; ModuleID = '/llk/IR_all_yes/fs/nfs/getroot.c_pt.bc'
source_filename = "../fs/nfs/getroot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_fsinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i64, %struct.timespec64, i32, i32, [8 x i32], i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.p_log = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.125 }
%union.anon.125 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_fs_context = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_auth_info, i32, ptr, i32, i32, ptr, i16, i16, i8, %struct.anon.165, %struct.anon.167, ptr, ptr, ptr, %struct.nfs_clone_mount }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.anon.165 = type { %union.anon.166, i32, ptr, i32, i32, i16 }
%union.anon.166 = type { %struct.__kernel_sockaddr_storage }
%struct.anon.167 = type { %union.anon.168, i32, ptr, ptr, i32, i16, i16, i16, i16 }
%union.anon.168 = type { %struct.__kernel_sockaddr_storage }
%struct.nfs_clone_mount = type { ptr, ptr, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.145, %struct.list_head, %struct.list_head, %union.anon.146 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.143 }
%union.anon.143 = type { %struct.anon.144 }
%struct.anon.144 = type { %struct.spinlock, i32 }
%union.anon.145 = type { %struct.list_head }
%union.anon.146 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.121, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.122, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.123, ptr, %struct.address_space, %struct.list_head, %union.anon.142, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.123 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.142 = type { ptr }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.ida = type { %struct.xarray }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.131, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.131 = type { %struct.anon.133 }
%struct.anon.133 = type { i64 }
%struct.nfs4_label = type { i32, i32, i32, ptr }

@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs_get_root._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nfs_get_root: getattr error = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nfs_get_root\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/nfs/getroot.c\00", [47 x i8] zeroinitializer }, align 32
@nfs_get_root._entry_ptr = internal global ptr @nfs_get_root._entry, section ".printk_index", align 4
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFS: Couldn't getattr on root\00", [34 x i8] zeroinitializer }, align 32
@nfs_get_root._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NFS: Couldn't getattr on root\0A\00", [33 x i8] zeroinitializer }, align 32
@nfs_get_root._entry_ptr.6 = internal global ptr @nfs_get_root._entry.4, section ".printk_index", align 4
@nfs_get_root._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nfs_get_root: get root inode failed\0A\00", [59 x i8] zeroinitializer }, align 32
@nfs_get_root._entry_ptr.9 = internal global ptr @nfs_get_root._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NFS: Couldn't get root inode\00", [35 x i8] zeroinitializer }, align 32
@nfs_get_root._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFS: Couldn't get root inode\0A\00", [34 x i8] zeroinitializer }, align 32
@nfs_get_root._entry_ptr.13 = internal global ptr @nfs_get_root._entry.11, section ".printk_index", align 4
@nfs_get_root._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nfs_get_root: get root dentry failed\0A\00", [58 x i8] zeroinitializer }, align 32
@nfs_get_root._entry_ptr.16 = internal global ptr @nfs_get_root._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFS: Couldn't get root dentry\00", [34 x i8] zeroinitializer }, align 32
@nfs_get_root._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NFS: Couldn't get root dentry\0A\00", [33 x i8] zeroinitializer }, align 32
@nfs_get_root._entry_ptr.20 = internal global ptr @nfs_get_root._entry.18, section ".printk_index", align 4
@nfs_dir_operations = external dso_local constant %struct.file_operations, align 4
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 89, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 90, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 96, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 98, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 112, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [20 x i8] c"../fs/nfs/getroot.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 114, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @nfs_get_root._entry, ptr @nfs_get_root._entry.11, ptr @nfs_get_root._entry.14, ptr @nfs_get_root._entry.18, ptr @nfs_get_root._entry.4, ptr @nfs_get_root._entry.7, ptr @nfs_get_root._entry_ptr, ptr @nfs_get_root._entry_ptr.13, ptr @nfs_get_root._entry_ptr.16, ptr @nfs_get_root._entry_ptr.20, ptr @nfs_get_root._entry_ptr.6, ptr @nfs_get_root._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_get_root._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_get_root._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_get_root._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_get_root._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_get_root._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_get_root._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_get_root(ptr noundef %s, ptr nocapture noundef %fc) local_unnamed_addr #0 align 64 {
entry:
  %fsinfo = alloca %struct.nfs_fsinfo, align 8
  %kflags_out = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %fsinfo) #4
  %4 = call ptr @memset(ptr %fsinfo, i32 255, i32 112)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kflags_out) #4
  %5 = ptrtoint ptr %kflags_out to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %kflags_out, align 4
  %source = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 10
  %6 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %source, align 4
  %call2 = tail call noalias ptr @kstrdup(ptr noundef %7, i32 noundef 3264) #4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @nfs_alloc_fattr_with_label(ptr noundef %3) #4
  %8 = ptrtoint ptr %fsinfo to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3, ptr %fsinfo, align 8
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %if.end.out_name_crit_edge, label %if.end6

if.end.out_name_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_name

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %rpc_ops = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %rpc_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rpc_ops, align 4
  %getroot = getelementptr inbounds %struct.nfs_rpc_ops, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %getroot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %getroot, align 4
  %mntfh = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 27
  %15 = ptrtoint ptr %mntfh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mntfh, align 4
  %call7 = call i32 %14(ptr noundef %3, ptr noundef %16, ptr noundef nonnull %fsinfo) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.body, label %if.end41

do.body:                                          ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %17 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body.do.end18_crit_edge, label %do.end, !prof !38

do.body.do.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end18

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %sub = sub i32 0, %call7
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %sub) #7
  br label %do.end18

do.end18:                                         ; preds = %do.end, %do.body.do.end18_crit_edge
  %log19 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %log19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %log19, align 4
  %tobool20.not = icmp eq ptr %19, null
  br i1 %tobool20.not, label %do.body23, label %cond.true

cond.true:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %19, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.3) #4
  br label %out_fattr

do.body23:                                        ; preds = %do.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %20 = load i32, ptr @nfs_debug, align 4
  %and24 = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.out_fattr_crit_edge, label %do.end35, !prof !38

do.body23.out_fattr_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_fattr

do.end35:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #7
  br label %out_fattr

if.end41:                                         ; preds = %if.end6
  %21 = ptrtoint ptr %mntfh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mntfh, align 4
  %23 = ptrtoint ptr %fsinfo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fsinfo, align 8
  %call44 = call ptr @nfs_fhget(ptr noundef %s, ptr noundef %22, ptr noundef %24) #4
  %cmp.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body47, label %if.end92

do.body47:                                        ; preds = %if.end41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %25 = load i32, ptr @nfs_debug, align 4
  %and48 = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body47.do.end64_crit_edge, label %do.end59, !prof !38

do.body47.do.end64_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end64

do.end59:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #6
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #7
  br label %do.end64

do.end64:                                         ; preds = %do.end59, %do.body47.do.end64_crit_edge
  %26 = ptrtoint ptr %call44 to i32
  %log67 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %log67 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %log67, align 4
  %tobool68.not = icmp eq ptr %28, null
  br i1 %tobool68.not, label %do.body73, label %cond.true69

cond.true69:                                      ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %28, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.10) #4
  br label %out_fattr

do.body73:                                        ; preds = %do.end64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %29 = load i32, ptr @nfs_debug, align 4
  %and74 = and i32 %29, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body73.out_fattr_crit_edge, label %do.end85, !prof !38

do.body73.out_fattr_crit_edge:                    ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_fattr

do.end85:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #6
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #7
  br label %out_fattr

if.end92:                                         ; preds = %if.end41
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %30 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_root.i, align 64
  %cmp.i250 = icmp eq ptr %31, null
  br i1 %cmp.i250, label %if.then.i, label %if.end92.if.end96_crit_edge

if.end92.if.end96_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then.i:                                        ; preds = %if.end92
  %call.i = call ptr @d_make_root(ptr noundef %call44) #4
  %32 = ptrtoint ptr %s_root.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %s_root.i, align 64
  %cmp3.i = icmp eq ptr %call.i, null
  br i1 %cmp3.i, label %if.then.i.out_fattr_crit_edge, label %if.end.i

if.then.i.out_fattr_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_fattr

if.end.i:                                         ; preds = %if.then.i
  call void @ihold(ptr noundef %call44) #4
  %33 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_root.i, align 64
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_inode.i.i, align 8
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock.i) #4
  %37 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_root.i, align 64
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %38, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i) #4
  %39 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_root.i, align 64
  %d_u.i = getelementptr inbounds %struct.dentry, ptr %40, i32 0, i32 15
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %40, i32 0, i32 15, i32 0, i32 1
  %41 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.not.i.i, label %if.end.i.hlist_del_init.exit.i_crit_edge, label %if.then.i.i

if.end.i.hlist_del_init.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hlist_del_init.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %43 = ptrtoint ptr %d_u.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %d_u.i, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %44, ptr %42, align 4
  %tobool.not.i3.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %42, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %47 = ptrtoint ptr %d_u.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %d_u.i, align 4
  %48 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hlist_del_init.exit.i

hlist_del_init.exit.i:                            ; preds = %__hlist_del.exit.i.i, %if.end.i.hlist_del_init.exit.i_crit_edge
  %49 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_root.i, align 64
  %d_lockref10.i = getelementptr inbounds %struct.dentry, ptr %50, i32 0, i32 7
  call void @_raw_spin_unlock(ptr noundef %d_lockref10.i) #4
  %51 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_root.i, align 64
  %d_inode.i24.i = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %d_inode.i24.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %d_inode.i24.i, align 8
  %i_lock14.i = getelementptr inbounds %struct.inode, ptr %54, i32 0, i32 18
  call void @_raw_spin_unlock(ptr noundef %i_lock14.i) #4
  br label %if.end96

if.end96:                                         ; preds = %hlist_del_init.exit.i, %if.end92.if.end96_crit_edge
  %call97 = call ptr @d_obtain_root(ptr noundef %call44) #4
  %cmp.i251 = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i251, label %do.body100, label %if.end145

do.body100:                                       ; preds = %if.end96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %55 = load i32, ptr @nfs_debug, align 4
  %and101 = and i32 %55, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %do.body100.do.end117_crit_edge, label %do.end112, !prof !38

do.body100.do.end117_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end117

do.end112:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #6
  %call114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #7
  br label %do.end117

do.end117:                                        ; preds = %do.end112, %do.body100.do.end117_crit_edge
  %56 = ptrtoint ptr %call97 to i32
  %log120 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %57 = ptrtoint ptr %log120 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %log120, align 4
  %tobool121.not = icmp eq ptr %58, null
  br i1 %tobool121.not, label %do.body126, label %cond.true122

cond.true122:                                     ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %58, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.17) #4
  br label %out_fattr

do.body126:                                       ; preds = %do.end117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %59 = load i32, ptr @nfs_debug, align 4
  %and127 = and i32 %59, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %do.body126.out_fattr_crit_edge, label %do.end138, !prof !38

do.body126.out_fattr_crit_edge:                   ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_fattr

do.end138:                                        ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #6
  %call140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #7
  br label %out_fattr

if.end145:                                        ; preds = %if.end96
  call void @security_d_instantiate(ptr noundef %call97, ptr noundef %call44) #4
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %call97, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref) #4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %call97, i32 0, i32 3
  %60 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %d_parent, align 8
  %cmp146 = icmp eq ptr %call97, %61
  br i1 %cmp146, label %land.lhs.true, label %if.end145.if.end153_crit_edge

if.end145.if.end153_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

land.lhs.true:                                    ; preds = %if.end145
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %call97, i32 0, i32 11
  %62 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %d_fsdata, align 4
  %tobool147.not = icmp eq ptr %63, null
  br i1 %tobool147.not, label %land.lhs.true148, label %land.lhs.true.if.end153_crit_edge

land.lhs.true.if.end153_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

land.lhs.true148:                                 ; preds = %land.lhs.true
  %64 = ptrtoint ptr %call97 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %call97, align 8
  %and149 = and i32 %65, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.then151, label %land.lhs.true148.if.end153_crit_edge

land.lhs.true148.if.end153_crit_edge:             ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

if.then151:                                       ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call2, ptr %d_fsdata, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then151, %land.lhs.true148.if.end153_crit_edge, %land.lhs.true.if.end153_crit_edge, %if.end145.if.end153_crit_edge
  %name.0 = phi ptr [ %call2, %land.lhs.true.if.end153_crit_edge ], [ %call2, %land.lhs.true148.if.end153_crit_edge ], [ null, %if.then151 ], [ %call2, %if.end145.if.end153_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %d_lockref) #4
  %root156 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %67 = ptrtoint ptr %root156 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call97, ptr %root156, align 4
  %caps = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 10
  %68 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %caps, align 8
  %and157 = lshr i32 %69, 18
  %and157.lobit = and i32 %and157, 1
  %clone_data = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 30
  %70 = ptrtoint ptr %clone_data to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clone_data, align 4
  %tobool161.not = icmp eq ptr %71, null
  br i1 %tobool161.not, label %if.end180, label %if.then162

if.then162:                                       ; preds = %if.end153
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call97, i32 0, i32 5
  %72 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %d_inode.i, align 8
  %74 = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 44
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %cmp165.not = icmp eq ptr %76, @nfs_dir_operations
  br i1 %cmp165.not, label %if.end167, label %if.then162.error_splat_root_crit_edge

if.then162.error_splat_root_crit_edge:            ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_splat_root

if.end167:                                        ; preds = %if.then162
  %call170 = call i32 @security_sb_clone_mnt_opts(ptr noundef nonnull %71, ptr noundef %s, i32 noundef %and157.lobit, ptr noundef nonnull %kflags_out) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end180.thread, label %if.end167.error_splat_root_crit_edge

if.end167.error_splat_root_crit_edge:             ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_splat_root

if.end180.thread:                                 ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #6
  %77 = ptrtoint ptr %clone_data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %clone_data, align 4
  %s_fs_info.i252 = getelementptr inbounds %struct.super_block, ptr %78, i32 0, i32 33
  %79 = ptrtoint ptr %s_fs_info.i252 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_fs_info.i252, align 16
  %has_sec_mnt_opts = getelementptr inbounds %struct.nfs_server, ptr %80, i32 0, i32 68
  %81 = ptrtoint ptr %has_sec_mnt_opts to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %has_sec_mnt_opts, align 4, !range !39
  %has_sec_mnt_opts178 = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 68
  %83 = ptrtoint ptr %has_sec_mnt_opts178 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %has_sec_mnt_opts178, align 4
  br label %if.end183

if.end180:                                        ; preds = %if.end153
  %security = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 11
  %84 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %security, align 4
  %call179 = call i32 @security_sb_set_mnt_opts(ptr noundef %s, ptr noundef %85, i32 noundef %and157.lobit, ptr noundef nonnull %kflags_out) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool181.not = icmp eq i32 %call179, 0
  br i1 %tobool181.not, label %if.end180.if.end183_crit_edge, label %if.end180.error_splat_root_crit_edge

if.end180.error_splat_root_crit_edge:             ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_splat_root

if.end180.if.end183_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end183

if.end183:                                        ; preds = %if.end180.if.end183_crit_edge, %if.end180.thread
  %86 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %caps, align 8
  %and185 = and i32 %87, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.end183.if.end193_crit_edge, label %land.lhs.true187

if.end183.if.end193_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end193

land.lhs.true187:                                 ; preds = %if.end183
  %88 = ptrtoint ptr %kflags_out to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %kflags_out, align 4
  %and188 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %if.then190, label %land.lhs.true187.if.end193_crit_edge

land.lhs.true187.if.end193_crit_edge:             ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end193

if.then190:                                       ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #6
  %and192 = and i32 %87, -262145
  %90 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %and192, ptr %caps, align 8
  br label %if.end193

if.end193:                                        ; preds = %if.then190, %land.lhs.true187.if.end193_crit_edge, %if.end183.if.end193_crit_edge
  %91 = ptrtoint ptr %fsinfo to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fsinfo, align 8
  call void @nfs_setsecurity(ptr noundef %call44, ptr noundef %92) #4
  br label %out_fattr

out_fattr:                                        ; preds = %error_splat_root, %if.end193, %do.end138, %do.body126.out_fattr_crit_edge, %cond.true122, %if.then.i.out_fattr_crit_edge, %do.end85, %do.body73.out_fattr_crit_edge, %cond.true69, %do.end35, %do.body23.out_fattr_crit_edge, %cond.true
  %error.1 = phi i32 [ %call7, %cond.true ], [ %call7, %do.end35 ], [ %call7, %do.body23.out_fattr_crit_edge ], [ %26, %cond.true69 ], [ %26, %do.end85 ], [ %26, %do.body73.out_fattr_crit_edge ], [ %56, %cond.true122 ], [ %56, %do.end138 ], [ %56, %do.body126.out_fattr_crit_edge ], [ %error.4, %error_splat_root ], [ 0, %if.end193 ], [ -12, %if.then.i.out_fattr_crit_edge ]
  %name.1 = phi ptr [ %call2, %cond.true ], [ %call2, %do.end35 ], [ %call2, %do.body23.out_fattr_crit_edge ], [ %call2, %cond.true69 ], [ %call2, %do.end85 ], [ %call2, %do.body73.out_fattr_crit_edge ], [ %call2, %cond.true122 ], [ %call2, %do.end138 ], [ %call2, %do.body126.out_fattr_crit_edge ], [ %name.0, %error_splat_root ], [ %name.0, %if.end193 ], [ %call2, %if.then.i.out_fattr_crit_edge ]
  %93 = ptrtoint ptr %fsinfo to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fsinfo, align 8
  %tobool.not.i = icmp eq ptr %94, null
  br i1 %tobool.not.i, label %out_fattr.nfs_free_fattr.exit_crit_edge, label %if.then.i253

out_fattr.nfs_free_fattr.exit_crit_edge:          ; preds = %out_fattr
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfs_free_fattr.exit

if.then.i253:                                     ; preds = %out_fattr
  %label.i = getelementptr inbounds %struct.nfs_fattr, ptr %94, i32 0, i32 24
  %95 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %label.i, align 4
  %tobool.not.i.i = icmp eq ptr %96, null
  br i1 %tobool.not.i.i, label %if.then.i253.nfs_free_fattr.exit_crit_edge, label %if.then.i.i254

if.then.i253.nfs_free_fattr.exit_crit_edge:       ; preds = %if.then.i253
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfs_free_fattr.exit

if.then.i.i254:                                   ; preds = %if.then.i253
  call void @__sanitizer_cov_trace_pc() #6
  %label1.i.i = getelementptr inbounds %struct.nfs4_label, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %label1.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %label1.i.i, align 4
  call void @kfree(ptr noundef %98) #4
  call void @kfree(ptr noundef nonnull %96) #4
  br label %nfs_free_fattr.exit

nfs_free_fattr.exit:                              ; preds = %if.then.i.i254, %if.then.i253.nfs_free_fattr.exit_crit_edge, %out_fattr.nfs_free_fattr.exit_crit_edge
  call void @kfree(ptr noundef %94) #4
  br label %out_name

out_name:                                         ; preds = %nfs_free_fattr.exit, %if.end.out_name_crit_edge
  %error.2 = phi i32 [ -12, %if.end.out_name_crit_edge ], [ %error.1, %nfs_free_fattr.exit ]
  %name.2 = phi ptr [ %call2, %if.end.out_name_crit_edge ], [ %name.1, %nfs_free_fattr.exit ]
  call void @kfree(ptr noundef %name.2) #4
  br label %out

out:                                              ; preds = %out_name, %entry.out_crit_edge
  %error.3 = phi i32 [ %error.2, %out_name ], [ -12, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kflags_out) #4
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %fsinfo) #4
  ret i32 %error.3

error_splat_root:                                 ; preds = %if.end180.error_splat_root_crit_edge, %if.end167.error_splat_root_crit_edge, %if.then162.error_splat_root_crit_edge
  %error.4 = phi i32 [ %call170, %if.end167.error_splat_root_crit_edge ], [ %call179, %if.end180.error_splat_root_crit_edge ], [ -116, %if.then162.error_splat_root_crit_edge ]
  %99 = ptrtoint ptr %root156 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %root156, align 4
  call void @dput(ptr noundef %100) #4
  %101 = ptrtoint ptr %root156 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %root156, align 4
  br label %out_fattr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr_with_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_fhget(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sb_clone_mnt_opts(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sb_set_mnt_opts(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_setsecurity(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/getroot.c", i32 89, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfs_get_root._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfs_get_root._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfs/getroot.c", i32 90, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @nfs_get_root._entry.4, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @nfs_get_root._entry_ptr.6, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/nfs/getroot.c", i32 96, i32 3}
!13 = !{ptr @nfs_get_root._entry.7, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @nfs_get_root._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/nfs/getroot.c", i32 98, i32 3}
!17 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nfs_get_root._entry.11, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @nfs_get_root._entry_ptr.13, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/nfs/getroot.c", i32 112, i32 3}
!22 = !{ptr @nfs_get_root._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @nfs_get_root._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/nfs/getroot.c", i32 114, i32 3}
!26 = !{ptr @.str.19, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nfs_get_root._entry.18, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @nfs_get_root._entry_ptr.20, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i8 0, i8 2}
