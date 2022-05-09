; ModuleID = '/llk/IR_all_yes/fs/nfs/nfs3acl.c_pt.bc'
source_filename = "../fs/nfs/nfs3acl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xattr_handler = type opaque
%struct.nfs3_getaclargs = type { ptr, i32, ptr }
%struct.nfs3_getaclres = type { ptr, i32, i32, i32, ptr, ptr }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.144, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.145, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.146, ptr, %struct.address_space, %struct.list_head, %union.anon.147, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.144 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.145 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.146 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.147 = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.__kernel_sockaddr_storage = type { %union.anon.124 }
%union.anon.124 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.129, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.129 = type { %struct.work_struct }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon }
%union.anon = type { %struct.kuid_t }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.130, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.130 = type { %struct.anon.132 }
%struct.anon.132 = type { i64 }
%struct.nfs4_label = type { i32, i32, i32, ptr }
%struct.nfs3_setaclargs = type { ptr, i32, ptr, ptr, i32, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.142, %struct.list_head, %struct.list_head, %union.anon.143 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.142 = type { %struct.list_head }
%union.anon.143 = type { %struct.hlist_node }

@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs3_get_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NFS call getacl\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nfs3_get_acl\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/nfs/nfs3acl.c\00", [47 x i8] zeroinitializer }, align 32
@nfs3_get_acl._entry_ptr = internal global ptr @nfs3_get_acl._entry, section ".printk_index", align 4
@nfs3_get_acl._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFS reply getacl: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nfs3_get_acl._entry_ptr.5 = internal global ptr @nfs3_get_acl._entry.3, section ".printk_index", align 4
@nfs3_get_acl._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"NFS_V3_ACL extension not supported; disabling\0A\00", [49 x i8] zeroinitializer }, align 32
@nfs3_get_acl._entry_ptr.8 = internal global ptr @nfs3_get_acl._entry.6, section ".printk_index", align 4
@posix_acl_access_xattr_handler = external dso_local constant %struct.xattr_handler, align 1
@posix_acl_default_xattr_handler = external dso_local constant %struct.xattr_handler, align 1
@nfs3_xattr_handlers = dso_local global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system.posix_acl_access\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"system.posix_acl_default\00", [39 x i8] zeroinitializer }, align 32
@__nfs3_proc_setacls._entry = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 213, ptr null, ptr null }, align 1
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NFS call setacl\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__nfs3_proc_setacls\00", [44 x i8] zeroinitializer }, align 32
@__nfs3_proc_setacls._entry_ptr = internal global ptr @__nfs3_proc_setacls._entry, section ".printk_index", align 4
@__nfs3_proc_setacls._entry.13 = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 224, ptr null, ptr null }, align 1
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFS reply setacl: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@__nfs3_proc_setacls._entry_ptr.15 = internal global ptr @__nfs3_proc_setacls._entry.13, section ".printk_index", align 4
@__nfs3_proc_setacls._entry.16 = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 233, ptr null, ptr null }, align 1
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"NFS_V3_ACL SETACL RPC not supported(will not retry)\0A\00", [43 x i8] zeroinitializer }, align 32
@__nfs3_proc_setacls._entry_ptr.18 = internal global ptr @__nfs3_proc_setacls._entry.16, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294966772, i64 4294967200, i64 4294967203]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294966772, i64 4294967200, i64 4294967203]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 88, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 100, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 112, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"nfs3_xattr_handlers\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 302, i32 29 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 340, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 345, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 213, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 224, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [20 x i8] c"../fs/nfs/nfs3acl.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 232, i32 4 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__nfs3_proc_setacls._entry, ptr @__nfs3_proc_setacls._entry.13, ptr @__nfs3_proc_setacls._entry.16, ptr @__nfs3_proc_setacls._entry_ptr, ptr @__nfs3_proc_setacls._entry_ptr.15, ptr @__nfs3_proc_setacls._entry_ptr.18, ptr @nfs3_get_acl._entry, ptr @nfs3_get_acl._entry.3, ptr @nfs3_get_acl._entry.6, ptr @nfs3_get_acl._entry_ptr, ptr @nfs3_get_acl._entry_ptr.5, ptr @nfs3_get_acl._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @nfs3_xattr_handlers, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_get_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_get_acl._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_get_acl._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_xattr_handlers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs3_get_acl(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext %rcu) local_unnamed_addr #0 align 64 {
entry:
  %pages = alloca [7 x ptr], align 4
  %args = alloca %struct.nfs3_getaclargs, align 4
  %res = alloca %struct.nfs3_getaclres, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pages) #10
  %4 = call ptr @memset(ptr %pages, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #10
  %5 = getelementptr inbounds %struct.nfs3_getaclargs, ptr %args, i32 0, i32 1
  %6 = getelementptr inbounds %struct.nfs3_getaclargs, ptr %args, i32 0, i32 2
  %fh.i = getelementptr i8, ptr %inode, i32 -440
  %7 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fh.i, ptr %args, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %5, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pages, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res) #10
  %10 = call ptr @memset(ptr %res, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #10
  %11 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %12 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %13 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %msg, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %args, ptr %11, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %res, ptr %12, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %13, align 4
  br i1 %rcu, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %caps.i = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 10
  %18 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %caps.i, align 8
  %and.i = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not = icmp eq i32 %and.i, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @nfs_revalidate_inode(ptr noundef %inode, i32 noundef 256) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %20 = inttoptr i32 %call9 to ptr
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %type)
  %cmp13 = icmp eq i32 %type, 32768
  br i1 %cmp13, label %if.then14, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %5, align 4
  %or = or i32 %22, 3
  store i32 %or, ptr %5, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %23 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %inode, align 8
  %25 = and i16 %24, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %25)
  %cmp17 = icmp eq i16 %25, 16384
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %5, align 4
  br i1 %cmp17, label %if.end22.thread, label %if.end22

if.end22.thread:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %or21 = or i32 %27, 12
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or21, ptr %5, align 4
  br label %do.body

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp24 = icmp eq i32 %27, 0
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end22.do.body_crit_edge

if.end22.do.body_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end22.do.body_crit_edge, %if.end22.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %29 = load i32, ptr @nfs_debug, align 4
  %and28 = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body.do.end37_crit_edge, label %do.end, !prof !45

do.body.do.end37_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %do.end37

do.end37:                                         ; preds = %do.end, %do.body.do.end37_crit_edge
  %client_acl = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %client_acl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client_acl, align 8
  %cl_procinfo = getelementptr inbounds %struct.rpc_clnt, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %cl_procinfo to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cl_procinfo, align 4
  %arrayidx = getelementptr %struct.rpc_procinfo, ptr %33, i32 1
  %34 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx, ptr %msg, align 4
  %call39 = call ptr @nfs_alloc_fattr() #10
  %35 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call39, ptr %res, align 4
  %cmp41 = icmp eq ptr %call39, null
  br i1 %cmp41, label %do.end37.cleanup_crit_edge, label %if.end45

do.end37.cleanup_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end45:                                         ; preds = %do.end37
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %5, align 4
  %and47 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end45.if.end50_crit_edge, label %if.then49

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then49:                                        ; preds = %if.end45
  %i_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  %38 = call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 1
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_acl, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !46
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @llvm.prefetch.p0(ptr %i_acl, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then49
  %43 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %i_acl, i32 -1, i32 %42) #10, !srcloc !47
  %asmresult.i.i = extractvalue { i32, i32 } %43, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %nfs3_prepare_get_acl.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

nfs3_prepare_get_acl.exit:                        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !48
  br label %if.end50

if.end50:                                         ; preds = %nfs3_prepare_get_acl.exit, %if.end45.if.end50_crit_edge
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %5, align 4
  %and52 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.if.end55_crit_edge, label %if.then54

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then54:                                        ; preds = %if.end50
  %i_default_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  %46 = call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i188 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i188 to ptr
  %task.i189 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i189 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i189, align 8
  %add.ptr.i.i190 = getelementptr i8, ptr %49, i32 1
  %call.i.i191 = call zeroext i1 @__kasan_check_write(ptr noundef %i_default_acl, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !46
  %50 = ptrtoint ptr %add.ptr.i.i190 to i32
  call void @llvm.prefetch.p0(ptr %i_default_acl, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i194

do.body.i.i194:                                   ; preds = %do.body.i.i194.do.body.i.i194_crit_edge, %if.then54
  %51 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %i_default_acl, i32 -1, i32 %50) #10, !srcloc !47
  %asmresult.i.i192 = extractvalue { i32, i32 } %51, 0
  %tobool.not.i.i193 = icmp eq i32 %asmresult.i.i192, 0
  br i1 %tobool.not.i.i193, label %nfs3_prepare_get_acl.exit195, label %do.body.i.i194.do.body.i.i194_crit_edge

do.body.i.i194.do.body.i.i194_crit_edge:          ; preds = %do.body.i.i194
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i194

nfs3_prepare_get_acl.exit195:                     ; preds = %do.body.i.i194
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !48
  br label %if.end55

if.end55:                                         ; preds = %nfs3_prepare_get_acl.exit195, %if.end50.if.end55_crit_edge
  %52 = ptrtoint ptr %client_acl to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %client_acl, align 8
  %call57 = call i32 @rpc_call_sync(ptr noundef %53, ptr noundef nonnull %msg, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %54 = load i32, ptr @nfs_debug, align 4
  %and59 = and i32 %54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end55.do.end75_crit_edge, label %do.end70, !prof !45

if.end55.do.end75_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75

do.end70:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call57) #13
  br label %do.end75

do.end75:                                         ; preds = %do.end70, %if.end55.do.end75_crit_edge
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %6, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %tobool80.not = icmp eq ptr %58, null
  br i1 %tobool80.not, label %do.end75.for.end_crit_edge, label %for.body

do.end75.for.end_crit_edge:                       ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %do.end75
  call void @__free_pages(ptr noundef nonnull %58, i32 noundef 0) #10
  %59 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %6, align 4
  %arrayidx79.1 = getelementptr ptr, ptr %60, i32 1
  %61 = ptrtoint ptr %arrayidx79.1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx79.1, align 4
  %tobool80.not.1 = icmp eq ptr %62, null
  br i1 %tobool80.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.1:                                       ; preds = %for.body
  call void @__free_pages(ptr noundef nonnull %62, i32 noundef 0) #10
  %63 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %6, align 4
  %arrayidx79.2 = getelementptr ptr, ptr %64, i32 2
  %65 = ptrtoint ptr %arrayidx79.2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx79.2, align 4
  %tobool80.not.2 = icmp eq ptr %66, null
  br i1 %tobool80.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  call void @__free_pages(ptr noundef nonnull %66, i32 noundef 0) #10
  %67 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %6, align 4
  %arrayidx79.3 = getelementptr ptr, ptr %68, i32 3
  %69 = ptrtoint ptr %arrayidx79.3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx79.3, align 4
  %tobool80.not.3 = icmp eq ptr %70, null
  br i1 %tobool80.not.3, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  call void @__free_pages(ptr noundef nonnull %70, i32 noundef 0) #10
  %71 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %6, align 4
  %arrayidx79.4 = getelementptr ptr, ptr %72, i32 4
  %73 = ptrtoint ptr %arrayidx79.4 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx79.4, align 4
  %tobool80.not.4 = icmp eq ptr %74, null
  br i1 %tobool80.not.4, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  call void @__free_pages(ptr noundef nonnull %74, i32 noundef 0) #10
  %75 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %6, align 4
  %arrayidx79.5 = getelementptr ptr, ptr %76, i32 5
  %77 = ptrtoint ptr %arrayidx79.5 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx79.5, align 4
  %tobool80.not.5 = icmp eq ptr %78, null
  br i1 %tobool80.not.5, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  call void @__free_pages(ptr noundef nonnull %78, i32 noundef 0) #10
  %79 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %6, align 4
  %arrayidx79.6 = getelementptr ptr, ptr %80, i32 6
  %81 = ptrtoint ptr %arrayidx79.6 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx79.6, align 4
  %tobool80.not.6 = icmp eq ptr %82, null
  br i1 %tobool80.not.6, label %for.body.5.for.end_crit_edge, label %for.body.6

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #12
  call void @__free_pages(ptr noundef nonnull %82, i32 noundef 0) #10
  br label %for.end

for.end:                                          ; preds = %for.body.6, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %do.end75.for.end_crit_edge
  %83 = zext i32 %call57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call57, label %for.end.getout_crit_edge [
    i32 0, label %sw.bb
    i32 -96, label %for.end.do.body86_crit_edge
    i32 -93, label %for.end.do.body86_crit_edge226
    i32 -524, label %for.end.sw.bb105_crit_edge
  ]

for.end.sw.bb105_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb105

for.end.do.body86_crit_edge226:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body86

for.end.do.body86_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body86

for.end.getout_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %getout

sw.bb:                                            ; preds = %for.end
  %84 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %res, align 4
  %call84 = call i32 @nfs_refresh_inode(ptr noundef %inode, ptr noundef %85) #10
  %86 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %5, align 4
  %mask107 = getelementptr inbounds %struct.nfs3_getaclres, ptr %res, i32 0, i32 1
  %88 = ptrtoint ptr %mask107 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mask107, align 4
  %and108 = and i32 %89, %87
  call void @__sanitizer_cov_trace_cmp4(i32 %and108, i32 %87)
  %cmp110.not = icmp eq i32 %and108, %87
  br i1 %cmp110.not, label %if.end113, label %sw.bb.getout_crit_edge

sw.bb.getout_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %getout

do.body86:                                        ; preds = %for.end.do.body86_crit_edge, %for.end.do.body86_crit_edge226
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %90 = load i32, ptr @nfs_debug, align 4
  %and87 = and i32 %90, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %do.body86.do.end103_crit_edge, label %do.end98, !prof !45

do.body86.do.end103_crit_edge:                    ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end103

do.end98:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #12
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %do.end103

do.end103:                                        ; preds = %do.end98, %do.body86.do.end103_crit_edge
  %91 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %caps.i, align 8
  %and104 = and i32 %92, -9
  store i32 %and104, ptr %caps.i, align 8
  br label %sw.bb105

sw.bb105:                                         ; preds = %do.end103, %for.end.sw.bb105_crit_edge
  br label %getout

if.end113:                                        ; preds = %sw.bb
  %acl_access = getelementptr inbounds %struct.nfs3_getaclres, ptr %res, i32 0, i32 4
  %93 = ptrtoint ptr %acl_access to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %acl_access, align 4
  %cmp114.not = icmp eq ptr %94, null
  br i1 %cmp114.not, label %if.end113.if.end128_crit_edge, label %if.then116

if.end113.if.end128_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then116:                                       ; preds = %if.end113
  %call118 = call i32 @posix_acl_equiv_mode(ptr noundef nonnull %94, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp eq i32 %call118, 0
  br i1 %cmp119, label %if.then116.if.then124_crit_edge, label %lor.lhs.false

if.then116.if.then124_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then124

lor.lhs.false:                                    ; preds = %if.then116
  %95 = ptrtoint ptr %acl_access to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %acl_access, align 4
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %a_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp122 = icmp eq i32 %98, 0
  br i1 %cmp122, label %lor.lhs.false.if.then124_crit_edge, label %lor.lhs.false.if.end128_crit_edge

lor.lhs.false.if.end128_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

lor.lhs.false.if.then124_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then124

if.then124:                                       ; preds = %lor.lhs.false.if.then124_crit_edge, %if.then116.if.then124_crit_edge
  %99 = ptrtoint ptr %acl_access to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %acl_access, align 4
  call fastcc void @posix_acl_release(ptr noundef %100)
  %101 = ptrtoint ptr %acl_access to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %acl_access, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then124, %lor.lhs.false.if.end128_crit_edge, %if.end113.if.end128_crit_edge
  %102 = ptrtoint ptr %mask107 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mask107, align 4
  %and130 = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.else, label %if.then132

if.then132:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  %i_acl133 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  %104 = ptrtoint ptr %acl_access to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %acl_access, align 4
  call fastcc void @nfs3_complete_get_acl(ptr noundef %i_acl133, ptr noundef %105)
  br label %if.end135

if.else:                                          ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  call void @forget_cached_acl(ptr noundef %inode, i32 noundef 32768) #10
  br label %if.end135

if.end135:                                        ; preds = %if.else, %if.then132
  %106 = ptrtoint ptr %mask107 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mask107, align 4
  %and137 = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.else141, label %if.then139

if.then139:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  %i_default_acl140 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  %acl_default = getelementptr inbounds %struct.nfs3_getaclres, ptr %res, i32 0, i32 5
  %108 = ptrtoint ptr %acl_default to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %acl_default, align 4
  call fastcc void @nfs3_complete_get_acl(ptr noundef %i_default_acl140, ptr noundef %109)
  br label %if.end142

if.else141:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  call void @forget_cached_acl(ptr noundef %inode, i32 noundef 16384) #10
  br label %if.end142

if.end142:                                        ; preds = %if.else141, %if.then139
  %110 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %res, align 4
  call fastcc void @nfs_free_fattr(ptr noundef %111)
  br i1 %cmp13, label %if.then146, label %if.else149

if.then146:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  %acl_default147 = getelementptr inbounds %struct.nfs3_getaclres, ptr %res, i32 0, i32 5
  %112 = ptrtoint ptr %acl_default147 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %acl_default147, align 4
  call fastcc void @posix_acl_release(ptr noundef %113)
  %114 = ptrtoint ptr %acl_access to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %acl_access, align 4
  br label %cleanup

if.else149:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %acl_access to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %acl_access, align 4
  call fastcc void @posix_acl_release(ptr noundef %117)
  %acl_default151 = getelementptr inbounds %struct.nfs3_getaclres, ptr %res, i32 0, i32 5
  %118 = ptrtoint ptr %acl_default151 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %acl_default151, align 4
  br label %cleanup

getout:                                           ; preds = %sw.bb105, %sw.bb.getout_crit_edge, %for.end.getout_crit_edge
  %status.0 = phi i32 [ %call57, %for.end.getout_crit_edge ], [ -95, %sw.bb105 ], [ -5, %sw.bb.getout_crit_edge ]
  %i_acl152 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  %120 = call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i196 = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i196 to ptr
  %task.i197 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %task.i197 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task.i197, align 8
  %add.ptr.i.i198 = getelementptr i8, ptr %123, i32 1
  %call.i.i199 = call zeroext i1 @__kasan_check_write(ptr noundef %i_acl152, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !49
  %124 = ptrtoint ptr %add.ptr.i.i198 to i32
  call void @llvm.prefetch.p0(ptr %i_acl152, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i202

do.body.i.i202:                                   ; preds = %do.body.i.i202.do.body.i.i202_crit_edge, %getout
  %125 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %i_acl152, i32 %124, i32 -1) #10, !srcloc !47
  %asmresult.i.i200 = extractvalue { i32, i32 } %125, 0
  %tobool.not.i.i201 = icmp eq i32 %asmresult.i.i200, 0
  br i1 %tobool.not.i.i201, label %nfs3_abort_get_acl.exit, label %do.body.i.i202.do.body.i.i202_crit_edge

do.body.i.i202.do.body.i.i202_crit_edge:          ; preds = %do.body.i.i202
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i202

nfs3_abort_get_acl.exit:                          ; preds = %do.body.i.i202
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !50
  %i_default_acl153 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  %126 = call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i203 = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i203 to ptr
  %task.i204 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %task.i204 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %task.i204, align 8
  %add.ptr.i.i205 = getelementptr i8, ptr %129, i32 1
  %call.i.i206 = call zeroext i1 @__kasan_check_write(ptr noundef %i_default_acl153, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !49
  %130 = ptrtoint ptr %add.ptr.i.i205 to i32
  call void @llvm.prefetch.p0(ptr %i_default_acl153, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i209

do.body.i.i209:                                   ; preds = %do.body.i.i209.do.body.i.i209_crit_edge, %nfs3_abort_get_acl.exit
  %131 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %i_default_acl153, i32 %130, i32 -1) #10, !srcloc !47
  %asmresult.i.i207 = extractvalue { i32, i32 } %131, 0
  %tobool.not.i.i208 = icmp eq i32 %asmresult.i.i207, 0
  br i1 %tobool.not.i.i208, label %nfs3_abort_get_acl.exit210, label %do.body.i.i209.do.body.i.i209_crit_edge

do.body.i.i209.do.body.i.i209_crit_edge:          ; preds = %do.body.i.i209
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i209

nfs3_abort_get_acl.exit210:                       ; preds = %do.body.i.i209
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !50
  %acl_access154 = getelementptr inbounds %struct.nfs3_getaclres, ptr %res, i32 0, i32 4
  %132 = ptrtoint ptr %acl_access154 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %acl_access154, align 4
  %tobool.not.i = icmp eq ptr %133, null
  br i1 %tobool.not.i, label %nfs3_abort_get_acl.exit210.posix_acl_release.exit_crit_edge, label %land.lhs.true.i

nfs3_abort_get_acl.exit210.posix_acl_release.exit_crit_edge: ; preds = %nfs3_abort_get_acl.exit210
  call void @__sanitizer_cov_trace_pc() #12
  br label %posix_acl_release.exit

land.lhs.true.i:                                  ; preds = %nfs3_abort_get_acl.exit210
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %133, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  call void @llvm.prefetch.p0(ptr nonnull %133, i32 1, i32 3, i32 1) #10
  %134 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %133, ptr nonnull %133, i32 1, ptr nonnull elementtype(i32) %133) #10, !srcloc !52
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %134, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !45

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %133, i32 noundef 3) #10
  br label %posix_acl_release.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !53
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %133, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #10
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, %nfs3_abort_get_acl.exit210.posix_acl_release.exit_crit_edge
  %acl_default155 = getelementptr inbounds %struct.nfs3_getaclres, ptr %res, i32 0, i32 5
  %135 = ptrtoint ptr %acl_default155 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %acl_default155, align 4
  %tobool.not.i211 = icmp eq ptr %136, null
  br i1 %tobool.not.i211, label %posix_acl_release.exit.posix_acl_release.exit221_crit_edge, label %land.lhs.true.i215

posix_acl_release.exit.posix_acl_release.exit221_crit_edge: ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %posix_acl_release.exit221

land.lhs.true.i215:                               ; preds = %posix_acl_release.exit
  %call.i.i.i.i.i.i212 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %136, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  call void @llvm.prefetch.p0(ptr nonnull %136, i32 1, i32 3, i32 1) #10
  %137 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %136, ptr nonnull %136, i32 1, ptr nonnull elementtype(i32) %136) #10, !srcloc !52
  %asmresult.i.i.i.i.i.i.i213 = extractvalue { i32, i32, i32 } %137, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i213)
  %cmp.i.i.i.i214 = icmp eq i32 %asmresult.i.i.i.i.i.i.i213, 1
  br i1 %cmp.i.i.i.i214, label %do.end.i220, label %if.end5.i.i.i.i217

if.end5.i.i.i.i217:                               ; preds = %land.lhs.true.i215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i213)
  %.not.i.i.i.i216 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i213, 0
  br i1 %.not.i.i.i.i216, label %if.end5.i.i.i.i217.posix_acl_release.exit221_crit_edge, label %if.then10.i.i.i.i218, !prof !45

if.end5.i.i.i.i217.posix_acl_release.exit221_crit_edge: ; preds = %if.end5.i.i.i.i217
  call void @__sanitizer_cov_trace_pc() #12
  br label %posix_acl_release.exit221

if.then10.i.i.i.i218:                             ; preds = %if.end5.i.i.i.i217
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %136, i32 noundef 3) #10
  br label %posix_acl_release.exit221

do.end.i220:                                      ; preds = %land.lhs.true.i215
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !53
  %a_rcu.i219 = getelementptr inbounds %struct.posix_acl, ptr %136, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i219, ptr noundef nonnull inttoptr (i32 4 to ptr)) #10
  br label %posix_acl_release.exit221

posix_acl_release.exit221:                        ; preds = %do.end.i220, %if.then10.i.i.i.i218, %if.end5.i.i.i.i217.posix_acl_release.exit221_crit_edge, %posix_acl_release.exit.posix_acl_release.exit221_crit_edge
  %138 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %res, align 4
  %tobool.not.i222 = icmp eq ptr %139, null
  br i1 %tobool.not.i222, label %posix_acl_release.exit221.nfs_free_fattr.exit_crit_edge, label %if.then.i

posix_acl_release.exit221.nfs_free_fattr.exit_crit_edge: ; preds = %posix_acl_release.exit221
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_free_fattr.exit

if.then.i:                                        ; preds = %posix_acl_release.exit221
  %label.i = getelementptr inbounds %struct.nfs_fattr, ptr %139, i32 0, i32 24
  %140 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %label.i, align 4
  %tobool.not.i.i223 = icmp eq ptr %141, null
  br i1 %tobool.not.i.i223, label %if.then.i.nfs_free_fattr.exit_crit_edge, label %if.then.i.i

if.then.i.nfs_free_fattr.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_free_fattr.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %label1.i.i = getelementptr inbounds %struct.nfs4_label, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %label1.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %label1.i.i, align 4
  call void @kfree(ptr noundef %143) #10
  call void @kfree(ptr noundef nonnull %141) #10
  br label %nfs_free_fattr.exit

nfs_free_fattr.exit:                              ; preds = %if.then.i.i, %if.then.i.nfs_free_fattr.exit_crit_edge, %posix_acl_release.exit221.nfs_free_fattr.exit_crit_edge
  call void @kfree(ptr noundef %139) #10
  %144 = inttoptr i32 %status.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %nfs_free_fattr.exit, %if.else149, %if.then146, %do.end37.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %20, %if.then10 ], [ %144, %nfs_free_fattr.exit ], [ %115, %if.then146 ], [ %119, %if.else149 ], [ null, %if.end22.cleanup_crit_edge ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pages) #10
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_revalidate_inode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_call_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_refresh_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_equiv_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @posix_acl_release(ptr noundef %acl) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acl, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr nonnull %acl, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %acl, ptr nonnull %acl, i32 1, ptr nonnull elementtype(i32) %acl) #10, !srcloc !52
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end6_crit_edge, label %if.then10.i.i.i, !prof !45

if.end5.i.i.i.if.end6_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %acl, i32 noundef 3) #10
  br label %if.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !53
  %a_rcu = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu, ptr noundef nonnull inttoptr (i32 4 to ptr)) #10
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs3_complete_get_acl(ptr noundef %p, ptr noundef %acl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 1
  %tobool.not.i = icmp eq ptr %acl, null
  br i1 %tobool.not.i, label %entry.posix_acl_dup.exit_crit_edge, label %if.then.i

entry.posix_acl_dup.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %posix_acl_dup.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acl, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %acl, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %acl, ptr nonnull %acl, i32 1, ptr nonnull elementtype(i32) %acl) #10, !srcloc !54
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !55

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.posix_acl_dup.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !45

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.posix_acl_dup.exit_crit_edge:     ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %posix_acl_dup.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %acl, i32 noundef %.sink.i.i.i.i) #10
  br label %posix_acl_dup.exit

posix_acl_dup.exit:                               ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.posix_acl_dup.exit_crit_edge, %entry.posix_acl_dup.exit_crit_edge
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %p, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %6 = ptrtoint ptr %add.ptr.i to i32
  %7 = ptrtoint ptr %acl to i32
  tail call void @llvm.prefetch.p0(ptr %p, i32 1, i32 3, i32 1) #10
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %posix_acl_dup.exit
  %8 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %p, i32 %6, i32 %7) #10, !srcloc !47
  %asmresult.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i22 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i22, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %8, 1
  %9 = inttoptr i32 %asmresult1.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %cmp.not = icmp eq ptr %add.ptr.i, %9
  %brmerge = or i1 %tobool.not.i, %cmp.not
  br i1 %brmerge, label %__cmpxchg.exit.if.end_crit_edge, label %land.lhs.true.i

__cmpxchg.exit.if.end_crit_edge:                  ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i:                                  ; preds = %__cmpxchg.exit
  %call.i.i.i.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acl, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr nonnull %acl, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %acl, ptr nonnull %acl, i32 1, ptr nonnull elementtype(i32) %acl) #10, !srcloc !52
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i25 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i25, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !45

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %acl, i32 noundef 3) #10
  br label %if.end

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !53
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #10
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %__cmpxchg.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @forget_cached_acl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs_free_fattr(ptr noundef %fattr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %fattr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %label = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 24
  %0 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %label, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %label1.i = getelementptr inbounds %struct.nfs4_label, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %label1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %label1.i, align 4
  tail call void @kfree(ptr noundef %3) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %fattr) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs3_proc_setacls(ptr noundef %inode, ptr noundef %acl, ptr noundef %dfacl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__nfs3_proc_setacls(ptr noundef %inode, ptr noundef %acl, ptr noundef %dfacl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call)
  %cmp = icmp eq i32 %call, -95
  %spec.select = select i1 %cmp, i32 0, i32 %call
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__nfs3_proc_setacls(ptr noundef %inode, ptr noundef %acl, ptr noundef %dfacl) unnamed_addr #0 align 64 {
entry:
  %fattr = alloca ptr, align 4
  %pages = alloca [7 x ptr], align 4
  %args = alloca %struct.nfs3_setaclargs, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fattr) #10
  %4 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fattr, align 4, !annotation !58
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pages) #10
  %5 = call ptr @memset(ptr %pages, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %args) #10
  %6 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %args, i32 0, i32 1
  %7 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %args, i32 0, i32 2
  %8 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %args, i32 0, i32 3
  %9 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %args, i32 0, i32 4
  %10 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %args, i32 0, i32 5
  %11 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %args, i32 0, i32 6
  %12 = getelementptr inbounds i8, ptr %args, i32 16
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4
  %14 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %inode, ptr %args, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %acl, ptr %7, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %8, align 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %10, align 4
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pages, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #10
  %20 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %21 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %22 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %23 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %msg, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %args, ptr %20, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %fattr, ptr %21, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %22, align 4
  %cmp = icmp eq ptr %acl, null
  br i1 %cmp, label %land.lhs.true, label %if.end.thread

land.lhs.true:                                    ; preds = %entry
  %27 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %inode, align 8
  %29 = and i16 %28, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %29)
  %cmp3 = icmp ne i16 %29, 16384
  %cmp5 = icmp eq ptr %dfacl, null
  %or.cond = or i1 %cmp5, %cmp3
  br i1 %or.cond, label %land.lhs.true.cleanup129_crit_edge, label %if.end

land.lhs.true.cleanup129_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.end:                                           ; preds = %land.lhs.true
  %caps.i = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 10
  %30 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %caps.i, align 8
  %and.i = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end.cleanup129_crit_edge, label %if.end.land.lhs.true19_crit_edge

if.end.land.lhs.true19_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true19

if.end.cleanup129_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.end.thread:                                    ; preds = %entry
  %caps.i166 = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 10
  %32 = ptrtoint ptr %caps.i166 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %caps.i166, align 8
  %and.i167 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i167)
  %tobool.not168 = icmp eq i32 %and.i167, 0
  br i1 %tobool.not168, label %if.end.thread.cleanup129_crit_edge, label %land.lhs.true12

if.end.thread.cleanup129_crit_edge:               ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

land.lhs.true12:                                  ; preds = %if.end.thread
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %34 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %a_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %35)
  %cmp13 = icmp ugt i32 %35, 1024
  br i1 %cmp13, label %land.lhs.true12.cleanup129_crit_edge, label %if.end16

land.lhs.true12.cleanup129_crit_edge:             ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.end16:                                         ; preds = %land.lhs.true12
  %cmp17.not = icmp eq ptr %dfacl, null
  br i1 %cmp17.not, label %if.end24.thread, label %if.end16.land.lhs.true19_crit_edge

if.end16.land.lhs.true19_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end16.land.lhs.true19_crit_edge, %if.end.land.lhs.true19_crit_edge
  %caps.i169172175 = phi ptr [ %caps.i166, %if.end16.land.lhs.true19_crit_edge ], [ %caps.i, %if.end.land.lhs.true19_crit_edge ]
  %a_count20 = getelementptr inbounds %struct.posix_acl, ptr %dfacl, i32 0, i32 2
  %36 = ptrtoint ptr %a_count20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %a_count20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %37)
  %cmp21 = icmp ugt i32 %37, 1024
  br i1 %cmp21, label %land.lhs.true19.cleanup129_crit_edge, label %if.end24

land.lhs.true19.cleanup129_crit_edge:             ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.end24:                                         ; preds = %land.lhs.true19
  %38 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %inode, align 8
  %40 = and i16 %39, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %40)
  %cmp28 = icmp eq i16 %40, 16384
  br i1 %cmp28, label %if.then30, label %if.else

if.end24.thread:                                  ; preds = %if.end16
  %41 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %inode, align 8
  %43 = and i16 %42, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %43)
  %cmp28181 = icmp eq i16 %43, 16384
  br i1 %cmp28181, label %cond.end.i.thread, label %if.end24.thread.cond.end.i160_crit_edge

if.end24.thread.cond.end.i160_crit_edge:          ; preds = %if.end24.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i160

cond.end.i.thread:                                ; preds = %if.end24.thread
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 5, ptr %6, align 4
  %45 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %8, align 4
  %46 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %a_count, align 4
  %48 = call i32 @llvm.smax.i32(i32 %47, i32 4) #10
  %phi.bo25.i205 = mul i32 %48, 12
  %phi.bo26.i206 = add i32 %phi.bo25.i205, 16
  br label %if.end37

if.then30:                                        ; preds = %if.end24
  %49 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 5, ptr %6, align 4
  %50 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dfacl, ptr %8, align 4
  br i1 %cmp, label %if.then30.if.then.i_crit_edge, label %cond.end.i

if.then30.if.then.i_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

cond.end.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %a_count.i = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %51 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %a_count.i, align 4
  %53 = call i32 @llvm.smax.i32(i32 %52, i32 4) #10
  %phi.bo25.i = mul i32 %53, 12
  %phi.bo26.i = add i32 %phi.bo25.i, 16
  br label %if.then.i

if.then.i:                                        ; preds = %cond.end.i, %if.then30.if.then.i_crit_edge
  %54 = phi i32 [ %phi.bo26.i, %cond.end.i ], [ 64, %if.then30.if.then.i_crit_edge ]
  %55 = ptrtoint ptr %a_count20 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %a_count20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %56)
  %cmp8.i = icmp sgt i32 %56, 4
  %phi.bo.i = mul i32 %56, 12
  %cond12.i = select i1 %cmp8.i, i32 %phi.bo.i, i32 48
  %add14.i = add i32 %cond12.i, %54
  br label %if.end37

if.else:                                          ; preds = %if.end24
  br i1 %cmp, label %if.end37.thread, label %if.else.cond.end.i160_crit_edge

if.else.cond.end.i160_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i160

cond.end.i160:                                    ; preds = %if.else.cond.end.i160_crit_edge, %if.end24.thread.cond.end.i160_crit_edge
  %caps.i169172176184195 = phi ptr [ %caps.i169172175, %if.else.cond.end.i160_crit_edge ], [ %caps.i166, %if.end24.thread.cond.end.i160_crit_edge ]
  %a_count.i157 = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %57 = ptrtoint ptr %a_count.i157 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %a_count.i157, align 4
  %59 = call i32 @llvm.smax.i32(i32 %58, i32 4) #10
  %phi.bo25.i158 = mul i32 %59, 12
  %phi.bo26.i159 = add i32 %phi.bo25.i158, 16
  br label %if.end37

if.end37.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 64, ptr %9, align 4
  br label %do.body59

if.end37:                                         ; preds = %cond.end.i160, %if.then.i, %cond.end.i.thread
  %caps.i169172176183 = phi ptr [ %caps.i169172175, %if.then.i ], [ %caps.i169172176184195, %cond.end.i160 ], [ %caps.i166, %cond.end.i.thread ]
  %storemerge = phi i32 [ %add14.i, %if.then.i ], [ %phi.bo26.i159, %cond.end.i160 ], [ %phi.bo26.i206, %cond.end.i.thread ]
  %61 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %storemerge, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %storemerge)
  %cmp39 = icmp ugt i32 %storemerge, 136
  br i1 %cmp39, label %if.then41, label %if.end37.do.body59_crit_edge

if.end37.do.body59_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59

if.then41:                                        ; preds = %if.end37
  %sub = add i32 %storemerge, -1
  %shr = lshr i32 %sub, 12
  br label %do.body

do.body:                                          ; preds = %if.end53.do.body_crit_edge, %if.then41
  %call38.i.i.i = call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %62 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %11, align 4
  %64 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %10, align 4
  %arrayidx = getelementptr ptr, ptr %63, i32 %65
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call38.i.i.i, ptr %arrayidx, align 4
  %67 = load ptr, ptr %11, align 4
  %68 = load i32, ptr %10, align 4
  %arrayidx49 = getelementptr ptr, ptr %67, i32 %68
  %69 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx49, align 4
  %cmp50 = icmp eq ptr %70, null
  br i1 %cmp50, label %do.body.out_freepages_crit_edge, label %if.end53

do.body.out_freepages_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_freepages

if.end53:                                         ; preds = %do.body
  %inc = add i32 %68, 1
  %71 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %inc, ptr %10, align 4
  %cmp56.not = icmp ugt i32 %inc, %shr
  br i1 %cmp56.not, label %if.end53.do.body59_crit_edge, label %if.end53.do.body_crit_edge

if.end53.do.body_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end53.do.body59_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59

do.body59:                                        ; preds = %if.end53.do.body59_crit_edge, %if.end37.do.body59_crit_edge, %if.end37.thread
  %caps.i169172176183200 = phi ptr [ %caps.i169172175, %if.end37.thread ], [ %caps.i169172176183, %if.end37.do.body59_crit_edge ], [ %caps.i169172176183, %if.end53.do.body59_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %72 = load i32, ptr @nfs_debug, align 4
  %and60 = and i32 %72, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body59.do.end71_crit_edge, label %do.end67, !prof !45

do.body59.do.end71_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end71

do.end67:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %do.end71

do.end71:                                         ; preds = %do.end67, %do.body59.do.end71_crit_edge
  %call72 = call ptr @nfs_alloc_fattr() #10
  %73 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call72, ptr %fattr, align 4
  %cmp73 = icmp eq ptr %call72, null
  br i1 %cmp73, label %do.end71.out_freepagesthread-pre-split_crit_edge, label %if.end76

do.end71.out_freepagesthread-pre-split_crit_edge: ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_freepagesthread-pre-split

if.end76:                                         ; preds = %do.end71
  %client_acl = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 4
  %74 = ptrtoint ptr %client_acl to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %client_acl, align 8
  %cl_procinfo = getelementptr inbounds %struct.rpc_clnt, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %cl_procinfo to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cl_procinfo, align 4
  %arrayidx77 = getelementptr %struct.rpc_procinfo, ptr %77, i32 2
  %78 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %arrayidx77, ptr %msg, align 4
  %79 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call72, ptr %21, align 4
  %call81 = call i32 @rpc_call_sync(ptr noundef %75, ptr noundef nonnull %msg, i32 noundef 0) #10
  call void @nfs_access_zap_cache(ptr noundef %inode) #10
  call void @nfs_zap_acl_cache(ptr noundef %inode) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %80 = load i32, ptr @nfs_debug, align 4
  %and83 = and i32 %80, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end76.do.end99_crit_edge, label %do.end94, !prof !45

if.end76.do.end99_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end99

do.end94:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call81) #13
  br label %do.end99

do.end99:                                         ; preds = %do.end94, %if.end76.do.end99_crit_edge
  %81 = zext i32 %call81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call81, label %do.end99.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 -96, label %do.end99.do.body102_crit_edge
    i32 -93, label %do.end99.do.body102_crit_edge212
    i32 -524, label %do.end99.sw.bb121_crit_edge
  ]

do.end99.sw.bb121_crit_edge:                      ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb121

do.end99.do.body102_crit_edge212:                 ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body102

do.end99.do.body102_crit_edge:                    ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body102

do.end99.sw.epilog_crit_edge:                     ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fattr, align 4
  %call100 = call i32 @nfs_refresh_inode(ptr noundef %inode, ptr noundef %83) #10
  br label %sw.epilog

do.body102:                                       ; preds = %do.end99.do.body102_crit_edge, %do.end99.do.body102_crit_edge212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %84 = load i32, ptr @nfs_debug, align 4
  %and103 = and i32 %84, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %do.body102.do.end119_crit_edge, label %do.end114, !prof !45

do.body102.do.end119_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end119

do.end114:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #12
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %do.end119

do.end119:                                        ; preds = %do.end114, %do.body102.do.end119_crit_edge
  %85 = ptrtoint ptr %caps.i169172176183200 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %caps.i169172176183200, align 8
  %and120 = and i32 %86, -9
  store i32 %and120, ptr %caps.i169172176183200, align 8
  br label %sw.bb121

sw.bb121:                                         ; preds = %do.end119, %do.end99.sw.bb121_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb121, %sw.bb, %do.end99.sw.epilog_crit_edge
  %status.0 = phi i32 [ %call81, %do.end99.sw.epilog_crit_edge ], [ -95, %sw.bb121 ], [ %call100, %sw.bb ]
  %87 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fattr, align 4
  %tobool.not.i164 = icmp eq ptr %88, null
  br i1 %tobool.not.i164, label %sw.epilog.nfs_free_fattr.exit_crit_edge, label %if.then.i165

sw.epilog.nfs_free_fattr.exit_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_free_fattr.exit

if.then.i165:                                     ; preds = %sw.epilog
  %label.i = getelementptr inbounds %struct.nfs_fattr, ptr %88, i32 0, i32 24
  %89 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %label.i, align 4
  %tobool.not.i.i = icmp eq ptr %90, null
  br i1 %tobool.not.i.i, label %if.then.i165.nfs_free_fattr.exit_crit_edge, label %if.then.i.i

if.then.i165.nfs_free_fattr.exit_crit_edge:       ; preds = %if.then.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_free_fattr.exit

if.then.i.i:                                      ; preds = %if.then.i165
  call void @__sanitizer_cov_trace_pc() #12
  %label1.i.i = getelementptr inbounds %struct.nfs4_label, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %label1.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %label1.i.i, align 4
  call void @kfree(ptr noundef %92) #10
  call void @kfree(ptr noundef nonnull %90) #10
  br label %nfs_free_fattr.exit

nfs_free_fattr.exit:                              ; preds = %if.then.i.i, %if.then.i165.nfs_free_fattr.exit_crit_edge, %sw.epilog.nfs_free_fattr.exit_crit_edge
  call void @kfree(ptr noundef %88) #10
  br label %out_freepagesthread-pre-split

out_freepagesthread-pre-split:                    ; preds = %nfs_free_fattr.exit, %do.end71.out_freepagesthread-pre-split_crit_edge
  %status.1.ph = phi i32 [ %status.0, %nfs_free_fattr.exit ], [ -12, %do.end71.out_freepagesthread-pre-split_crit_edge ]
  %93 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr = load i32, ptr %10, align 4
  br label %out_freepages

out_freepages:                                    ; preds = %out_freepagesthread-pre-split, %do.body.out_freepages_crit_edge
  %94 = phi i32 [ %.pr, %out_freepagesthread-pre-split ], [ %68, %do.body.out_freepages_crit_edge ]
  %status.1 = phi i32 [ %status.1.ph, %out_freepagesthread-pre-split ], [ -12, %do.body.out_freepages_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp123.not207 = icmp eq i32 %94, 0
  br i1 %cmp123.not207, label %out_freepages.cleanup129_crit_edge, label %out_freepages.while.body_crit_edge

out_freepages.while.body_crit_edge:               ; preds = %out_freepages
  br label %while.body

out_freepages.cleanup129_crit_edge:               ; preds = %out_freepages
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

while.body:                                       ; preds = %while.body.while.body_crit_edge, %out_freepages.while.body_crit_edge
  %95 = phi i32 [ %102, %while.body.while.body_crit_edge ], [ %94, %out_freepages.while.body_crit_edge ]
  %dec = add i32 %95, -1
  %96 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %dec, ptr %10, align 4
  %97 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %11, align 4
  %arrayidx128 = getelementptr ptr, ptr %98, i32 %dec
  %99 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx128, align 4
  call void @__free_pages(ptr noundef %100, i32 noundef 0) #10
  %101 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %10, align 4
  %cmp123.not = icmp eq i32 %102, 0
  br i1 %cmp123.not, label %while.body.cleanup129_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.cleanup129_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

cleanup129:                                       ; preds = %while.body.cleanup129_crit_edge, %out_freepages.cleanup129_crit_edge, %land.lhs.true19.cleanup129_crit_edge, %land.lhs.true12.cleanup129_crit_edge, %if.end.thread.cleanup129_crit_edge, %if.end.cleanup129_crit_edge, %land.lhs.true.cleanup129_crit_edge
  %retval.0 = phi i32 [ -28, %land.lhs.true12.cleanup129_crit_edge ], [ -28, %land.lhs.true19.cleanup129_crit_edge ], [ -95, %if.end.cleanup129_crit_edge ], [ 0, %land.lhs.true.cleanup129_crit_edge ], [ -95, %if.end.thread.cleanup129_crit_edge ], [ %status.1, %out_freepages.cleanup129_crit_edge ], [ %status.1, %while.body.cleanup129_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pages) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fattr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs3_set_acl(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, ptr noundef %acl, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp = icmp eq i16 %2, 16384
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  %3 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %type, label %if.then.if.end9_crit_edge [
    i32 32768, label %sw.bb
    i32 16384, label %sw.bb4
  ]

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

sw.bb:                                            ; preds = %if.then
  %call = tail call ptr @get_acl(ptr noundef %inode, i32 noundef 16384) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb.fail_crit_edge, label %sw.bb.if.end9_crit_edge

sw.bb.if.end9_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

sw.bb.fail_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

sw.bb4:                                           ; preds = %if.then
  %call5 = tail call ptr @get_acl(ptr noundef %inode, i32 noundef 32768) #10
  %cmp.i47 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47, label %sw.bb4.fail_crit_edge, label %sw.bb4.if.end9_crit_edge

sw.bb4.if.end9_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

sw.bb4.fail_crit_edge:                            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end9:                                          ; preds = %sw.bb4.if.end9_crit_edge, %sw.bb.if.end9_crit_edge, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %acl.addr.0 = phi ptr [ %acl, %if.then.if.end9_crit_edge ], [ %acl, %entry.if.end9_crit_edge ], [ %acl, %sw.bb.if.end9_crit_edge ], [ %call5, %sw.bb4.if.end9_crit_edge ]
  %dfacl.0 = phi ptr [ null, %if.then.if.end9_crit_edge ], [ null, %entry.if.end9_crit_edge ], [ %call, %sw.bb.if.end9_crit_edge ], [ %acl, %sw.bb4.if.end9_crit_edge ]
  %cmp10 = icmp eq ptr %acl.addr.0, null
  br i1 %cmp10, label %if.then12, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then12:                                        ; preds = %if.end9
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %call14 = tail call ptr @posix_acl_from_mode(i16 noundef zeroext %5, i32 noundef 3264) #10
  %cmp.i48 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48, label %if.then12.fail_crit_edge, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then12.fail_crit_edge:                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end18:                                         ; preds = %if.then12.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %acl.addr.1 = phi ptr [ %acl.addr.0, %if.end9.if.end18_crit_edge ], [ %call14, %if.then12.if.end18_crit_edge ]
  %call19 = tail call fastcc i32 @__nfs3_proc_setacls(ptr noundef %inode, ptr noundef %acl.addr.1, ptr noundef %dfacl.0)
  br label %out

out:                                              ; preds = %fail, %if.end18
  %acl.addr.2 = phi ptr [ %acl.addr.3, %fail ], [ %acl.addr.1, %if.end18 ]
  %dfacl.1 = phi ptr [ %dfacl.2, %fail ], [ %dfacl.0, %if.end18 ]
  %status.0 = phi i32 [ %8, %fail ], [ %call19, %if.end18 ]
  %cmp20.not = icmp eq ptr %acl.addr.2, %acl
  %tobool.not.i = icmp eq ptr %acl.addr.2, null
  %or.cond = or i1 %cmp20.not, %tobool.not.i
  br i1 %or.cond, label %out.if.end23_crit_edge, label %land.lhs.true.i

out.if.end23_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true.i:                                  ; preds = %out
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acl.addr.2, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr nonnull %acl.addr.2, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %acl.addr.2, ptr nonnull %acl.addr.2, i32 1, ptr nonnull elementtype(i32) %acl.addr.2) #10, !srcloc !52
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end23_crit_edge, label %if.then10.i.i.i.i, !prof !45

if.end5.i.i.i.i.if.end23_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %acl.addr.2, i32 noundef 3) #10
  br label %if.end23

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !53
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %acl.addr.2, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end23_crit_edge, %out.if.end23_crit_edge
  %cmp24.not = icmp eq ptr %dfacl.1, %acl
  %tobool.not.i49 = icmp eq ptr %dfacl.1, null
  %or.cond60 = or i1 %cmp24.not, %tobool.not.i49
  br i1 %or.cond60, label %if.end23.if.end27_crit_edge, label %land.lhs.true.i53

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true.i53:                                ; preds = %if.end23
  %call.i.i.i.i.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dfacl.1, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr nonnull %dfacl.1, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %dfacl.1, ptr nonnull %dfacl.1, i32 1, ptr nonnull elementtype(i32) %dfacl.1) #10, !srcloc !52
  %asmresult.i.i.i.i.i.i.i51 = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i51)
  %cmp.i.i.i.i52 = icmp eq i32 %asmresult.i.i.i.i.i.i.i51, 1
  br i1 %cmp.i.i.i.i52, label %do.end.i58, label %if.end5.i.i.i.i55

if.end5.i.i.i.i55:                                ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i51)
  %.not.i.i.i.i54 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i51, 0
  br i1 %.not.i.i.i.i54, label %if.end5.i.i.i.i55.if.end27_crit_edge, label %if.then10.i.i.i.i56, !prof !45

if.end5.i.i.i.i55.if.end27_crit_edge:             ; preds = %if.end5.i.i.i.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then10.i.i.i.i56:                              ; preds = %if.end5.i.i.i.i55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %dfacl.1, i32 noundef 3) #10
  br label %if.end27

do.end.i58:                                       ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !53
  %a_rcu.i57 = getelementptr inbounds %struct.posix_acl, ptr %dfacl.1, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i57, ptr noundef nonnull inttoptr (i32 4 to ptr)) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end.i58, %if.then10.i.i.i.i56, %if.end5.i.i.i.i55.if.end27_crit_edge, %if.end23.if.end27_crit_edge
  ret i32 %status.0

fail:                                             ; preds = %if.then12.fail_crit_edge, %sw.bb4.fail_crit_edge, %sw.bb.fail_crit_edge
  %acl.addr.3 = phi ptr [ null, %if.then12.fail_crit_edge ], [ %acl, %sw.bb4.fail_crit_edge ], [ %acl, %sw.bb.fail_crit_edge ]
  %dfacl.2 = phi ptr [ %dfacl.0, %if.then12.fail_crit_edge ], [ null, %sw.bb4.fail_crit_edge ], [ null, %sw.bb.fail_crit_edge ]
  %alloc.0 = phi ptr [ %call14, %if.then12.fail_crit_edge ], [ %call5, %sw.bb4.fail_crit_edge ], [ %call, %sw.bb.fail_crit_edge ]
  %8 = ptrtoint ptr %alloc.0 to i32
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_acl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_from_mode(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs3_listxattr(ptr nocapture noundef readonly %dentry, ptr noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #10
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %result, align 4
  %call1 = call fastcc i32 @nfs3_list_one_acl(ptr noundef %1, i32 noundef 32768, ptr noundef nonnull @.str.9, ptr noundef %data, i32 noundef %size, ptr noundef nonnull %result)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @nfs3_list_one_acl(ptr noundef %1, i32 noundef 16384, ptr noundef nonnull @.str.10, ptr noundef %data, i32 noundef %size, ptr noundef nonnull %result)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %result, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs3_list_one_acl(ptr noundef %inode, i32 noundef %type, ptr nocapture noundef readonly %name, ptr noundef %data, i32 noundef %size, ptr nocapture noundef %result) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %result, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %1
  %call = tail call ptr @get_acl(ptr noundef %inode, i32 noundef %type) #10
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !52
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !45

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %posix_acl_release.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !53
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %call, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #10
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge
  %call2 = tail call i32 @strlen(ptr noundef %name) #14
  %3 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %result, align 4
  %add = add i32 %call2, 1
  %add3 = add i32 %add, %4
  store i32 %add3, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %posix_acl_release.exit.cleanup_crit_edge, label %if.end5

posix_acl_release.exit.cleanup_crit_edge:         ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %size)
  %cmp = icmp ugt i32 %add3, %size
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %name) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end5.cleanup_crit_edge, %posix_acl_release.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %posix_acl_release.exit.cleanup_crit_edge ], [ -34, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_access_zap_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_zap_acl_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/nfs3acl.c", i32 88, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfs3_get_acl._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfs3_get_acl._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfs/nfs3acl.c", i32 100, i32 2}
!8 = !{ptr @nfs3_get_acl._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nfs3_get_acl._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfs/nfs3acl.c", i32 112, i32 4}
!12 = !{ptr @nfs3_get_acl._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nfs3_get_acl._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @nfs3_xattr_handlers, !15, !"nfs3_xattr_handlers", i1 false, i1 false}
!15 = !{!"../fs/nfs/nfs3acl.c", i32 302, i32 29}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/nfs/nfs3acl.c", i32 340, i32 4}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/nfs/nfs3acl.c", i32 345, i32 4}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/nfs/nfs3acl.c", i32 213, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__nfs3_proc_setacls._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @__nfs3_proc_setacls._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/nfs/nfs3acl.c", i32 224, i32 2}
!27 = !{ptr @__nfs3_proc_setacls._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @__nfs3_proc_setacls._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/nfs/nfs3acl.c", i32 232, i32 4}
!31 = !{ptr @__nfs3_proc_setacls._entry.16, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @__nfs3_proc_setacls._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2157603724}
!47 = !{i64 1168134, i64 1168155, i64 1168178, i64 1168197, i64 1168216}
!48 = !{i64 2157604145}
!49 = !{i64 2157606576}
!50 = !{i64 2157606997}
!51 = !{i64 2148748197}
!52 = !{i64 2148662637, i64 2148662669, i64 2148662698, i64 2148662732, i64 2148662763, i64 2148662786}
!53 = !{i64 2150369286}
!54 = !{i64 2148660172, i64 2148660204, i64 2148660233, i64 2148660267, i64 2148660298, i64 2148660321}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 2157605128}
!57 = !{i64 2157605538}
!58 = !{!"auto-init"}
