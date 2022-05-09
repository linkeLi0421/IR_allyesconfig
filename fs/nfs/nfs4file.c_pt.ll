; ModuleID = '/llk/IR_all_yes/fs/nfs/nfs4file.c_pt.bc'
source_filename = "../fs/nfs/nfs4file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfs4_ssc_client_ops = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.162, %struct.list_head, %struct.list_head, %union.anon.163 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.160 }
%union.anon.160 = type { %struct.anon.161 }
%struct.anon.161 = type { %struct.spinlock, i32 }
%union.anon.162 = type { %struct.list_head }
%union.anon.163 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.136, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.137, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.138, ptr, %struct.address_space, %struct.list_head, %union.anon.159, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.136 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.137 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.138 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.159 = type { ptr }
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
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.140 }
%union.anon.140 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.nfs_iostats = type { [8 x i64], [5 x i64], [27 x i32], [44 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs42_copy_notify_res = type { %struct.nfs4_sequence_res, %struct.nfstime4, %struct.nfs4_stateid_struct, %struct.nl4_server }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%struct.nfstime4 = type { i64, i32 }
%struct.nfs4_stateid_struct = type { %union.anon.151, i32 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, [12 x i8] }
%struct.nl4_server = type { i32, %union.anon.167 }
%union.anon.167 = type { %struct.anon.168 }
%struct.anon.168 = type { i32, [1025 x i8] }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.nfs4_state = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, %struct.spinlock, %struct.seqlock_t, %struct.nfs4_stateid_struct, %struct.nfs4_stateid_struct, i32, i32, i32, i32, %struct.refcount_struct, %struct.wait_queue_head, %struct.callback_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.148, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.148 = type { %struct.anon.150 }
%struct.anon.150 = type { i64 }
%struct.nfs4_label = type { i32, i32, i32, ptr }

@nfs4_ssc_clnt_ops_tbl = internal constant { %struct.nfs4_ssc_client_ops, [24 x i8] } { %struct.nfs4_ssc_client_ops { ptr @__nfs42_ssc_open, ptr @__nfs42_ssc_close }, [24 x i8] zeroinitializer }, align 32
@nfs4_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @nfs4_file_llseek, ptr null, ptr null, ptr @nfs_file_read, ptr @nfs_file_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfs_file_mmap, i32 0, ptr @nfs4_file_open, ptr @nfs4_file_flush, ptr @nfs_file_release, ptr @nfs_file_fsync, ptr null, ptr @nfs_lock, ptr null, ptr null, ptr @nfs_check_flags, ptr @nfs_flock, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr @nfs4_setlease, ptr @nfs42_fallocate, ptr null, ptr @nfs4_copy_file_range, ptr @nfs42_remap_file_range, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ssc_read_%d\00", [20 x i8] zeroinitializer }, align 32
@read_name_gen = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs4_file_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFS: open file(%pd2)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfs4_file_open\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/nfs/nfs4file.c\00", [46 x i8] zeroinitializer }, align 32
@nfs4_file_open._entry_ptr = internal global ptr @nfs4_file_open._entry, section ".printk_index", align 4
@nfs4_file_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NFS: flush(%pD2)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfs4_file_flush\00", [16 x i8] zeroinitializer }, align 32
@nfs4_file_flush._entry_ptr = internal global ptr @nfs4_file_flush._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 4294967180, i64 4294967256, i64 4294967275, i64 4294967276, i64 4294967294]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967278, i64 4294967285]
@___asan_gen_.8 = private unnamed_addr constant [22 x i8] c"nfs4_ssc_clnt_ops_tbl\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 408, i32 41 }
@___asan_gen_.11 = private unnamed_addr constant [21 x i8] c"nfs4_file_operations\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 442, i32 30 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 345, i32 27 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"read_name_gen\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 314, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 47, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [21 x i8] c"../fs/nfs/nfs4file.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 116, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @nfs4_file_flush._entry, ptr @nfs4_file_flush._entry_ptr, ptr @nfs4_file_open._entry, ptr @nfs4_file_open._entry_ptr, ptr @nfs4_ssc_clnt_ops_tbl, ptr @nfs4_file_operations, ptr @.str, ptr @read_name_gen, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_ssc_clnt_ops_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_name_gen to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_file_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_file_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs42_ssc_register_ops() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nfs42_ssc_register(ptr noundef nonnull @nfs4_ssc_clnt_ops_tbl) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs42_ssc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs42_ssc_unregister_ops() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nfs42_ssc_unregister(ptr noundef nonnull @nfs4_ssc_clnt_ops_tbl) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs42_ssc_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @nfs4_file_llseek(ptr noundef %filep, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %whence.off = add i32 %whence, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whence.off)
  %switch = icmp ult i32 %whence.off, 2
  br i1 %switch, label %sw.bb, label %entry.sw.default_crit_edge

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb:                                            ; preds = %entry
  %call = tail call i64 @nfs42_proc_llseek(ptr noundef %filep, i64 noundef %offset, i32 noundef %whence) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -95, i64 %call)
  %cmp.not = icmp eq i64 %call, -95
  br i1 %cmp.not, label %sw.bb.sw.default_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.sw.default_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.default:                                       ; preds = %sw.bb.sw.default_crit_edge, %entry.sw.default_crit_edge
  %call1 = tail call i64 @nfs_file_llseek(ptr noundef %filep, i64 noundef %offset, i32 noundef %whence) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i64 [ %call1, %sw.default ], [ %call, %sw.bb.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_file_read(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_file_write(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_file_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_file_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  %attr = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and.i.i = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !29

entry.file_dentry.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = tail call ptr %9(ptr noundef %1, ptr noundef %5) #10
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %entry.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %1, %entry.file_dentry.exit_crit_edge ]
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %10 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_flags, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %attr) #10
  %12 = call ptr @memset(ptr %attr, i32 255, i32 80)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %13 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %file_dentry.exit.do.end6_crit_edge, label %do.end, !prof !29

file_dentry.exit.do.end6_crit_edge:               ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %retval.0.i.i) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %file_dentry.exit.do.end6_crit_edge
  %call7 = tail call i32 @nfs_check_flags(i32 noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end6.cleanup_crit_edge

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %do.end6
  %and11 = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and11)
  %cmp = icmp eq i32 %and11, 3
  br i1 %cmp, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 @nfs_open(ptr noundef %inode, ptr noundef %filp) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %and15 = and i32 %11, -193
  %call16 = tail call ptr @dget_parent(ptr noundef %retval.0.i.i) #10
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call16, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i, align 8
  %16 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dentry.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %and.i.i75 = and i32 %19, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i75)
  %tobool.not.i.i76 = icmp eq i32 %and.i.i75, 0
  br i1 %tobool.not.i.i76, label %if.end14.file_dentry.exit83_crit_edge, label %if.then.i.i81, !prof !29

if.end14.file_dentry.exit83_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %file_dentry.exit83

if.then.i.i81:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %f_inode.i.i77 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %20 = ptrtoint ptr %f_inode.i.i77 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %f_inode.i.i77, align 8
  %d_op.i.i78 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 8
  %22 = ptrtoint ptr %d_op.i.i78 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_op.i.i78, align 8
  %d_real.i.i79 = getelementptr inbounds %struct.dentry_operations, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %d_real.i.i79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_real.i.i79, align 16
  %call.i.i80 = tail call ptr %25(ptr noundef %17, ptr noundef %21) #10
  br label %file_dentry.exit83

file_dentry.exit83:                               ; preds = %if.then.i.i81, %if.end14.file_dentry.exit83_crit_edge
  %retval.0.i.i82 = phi ptr [ %call.i.i80, %if.then.i.i81 ], [ %17, %if.end14.file_dentry.exit83_crit_edge ]
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %26 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %f_mode, align 8
  %call19 = tail call ptr @alloc_nfs_open_context(ptr noundef %retval.0.i.i82, i32 noundef %27, ptr noundef %filp) #10
  %28 = ptrtoint ptr %call19 to i32
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %file_dentry.exit83.out_crit_edge, label %if.end23

file_dentry.exit83.out_crit_edge:                 ; preds = %file_dentry.exit83
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end23:                                         ; preds = %file_dentry.exit83
  %29 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 32768, ptr %attr, align 8
  %and24 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end29_crit_edge, label %if.then26

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 32776, ptr %attr, align 8
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %31 = ptrtoint ptr %ia_size to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %ia_size, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %32 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %33, i64 noundef 0, i64 noundef 9223372036854775807) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23.if.end29_crit_edge
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 8
  %34 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 33
  %36 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %rpc_ops.i = getelementptr inbounds %struct.nfs_client, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %rpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rpc_ops.i, align 4
  %open_context = getelementptr inbounds %struct.nfs_rpc_ops, ptr %41, i32 0, i32 46
  %42 = ptrtoint ptr %open_context to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %open_context, align 4
  %call31 = call ptr %43(ptr noundef %15, ptr noundef %call19, i32 noundef %and15, ptr noundef nonnull %attr, ptr noundef null) #10
  %cmp.i84 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end29
  %44 = ptrtoint ptr %call31 to i32
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %44, label %if.then33.out_put_ctx_crit_edge [
    i32 -2, label %if.then33.out_drop_crit_edge
    i32 -116, label %if.then33.out_drop_crit_edge86
    i32 -21, label %if.then33.out_drop_crit_edge87
    i32 -20, label %if.then33.out_drop_crit_edge88
    i32 -40, label %if.then33.out_drop_crit_edge89
  ]

if.then33.out_drop_crit_edge89:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_drop

if.then33.out_drop_crit_edge88:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_drop

if.then33.out_drop_crit_edge87:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_drop

if.then33.out_drop_crit_edge86:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_drop

if.then33.out_drop_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_drop

if.then33.out_put_ctx_crit_edge:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put_ctx

if.end35:                                         ; preds = %if.end29
  %d_inode.i85 = getelementptr inbounds %struct.dentry, ptr %retval.0.i.i, i32 0, i32 5
  %46 = ptrtoint ptr %d_inode.i85 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %d_inode.i85, align 8
  %cmp37.not = icmp eq ptr %call31, %47
  br i1 %cmp37.not, label %if.end39, label %if.end35.out_drop_crit_edge

if.end35.out_drop_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_drop

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  call void @nfs_file_set_open_context(ptr noundef %filp, ptr noundef %call19) #10
  call void @nfs_fscache_open_file(ptr noundef %call31, ptr noundef %filp) #10
  br label %out_put_ctx

out_put_ctx:                                      ; preds = %out_drop, %if.end39, %if.then33.out_put_ctx_crit_edge
  %err.0 = phi i32 [ %44, %if.then33.out_put_ctx_crit_edge ], [ -518, %out_drop ], [ 0, %if.end39 ]
  call void @put_nfs_open_context(ptr noundef %call19) #10
  br label %out

out:                                              ; preds = %out_put_ctx, %file_dentry.exit83.out_crit_edge
  %err.1 = phi i32 [ %28, %file_dentry.exit83.out_crit_edge ], [ %err.0, %out_put_ctx ]
  call void @dput(ptr noundef %call16) #10
  br label %cleanup

out_drop:                                         ; preds = %if.end35.out_drop_crit_edge, %if.then33.out_drop_crit_edge, %if.then33.out_drop_crit_edge86, %if.then33.out_drop_crit_edge87, %if.then33.out_drop_crit_edge88, %if.then33.out_drop_crit_edge89
  call void @d_drop(ptr noundef %retval.0.i.i) #10
  br label %out_put_ctx

cleanup:                                          ; preds = %out, %if.then12, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then12 ], [ %err.1, %out ], [ %call7, %do.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %attr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_file_flush(ptr noundef %file, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !29

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %file) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !30
  %io_stats.i.i = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 6
  %8 = ptrtoint ptr %io_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_stats.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.nfs_iostats, ptr %9, i32 0, i32 2, i32 14
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !19) #10
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i.i, align 4
  %arrayidx13.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx13.i.i, align 4
  %add.i.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add14.i.i = add i32 %19, 1
  store i32 %add14.i.i, ptr %17, align 4
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !31
  %and.i.i.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.end6.nfs_inc_stats.exit_crit_edge, !prof !32

do.end6.nfs_inc_stats.exit_crit_edge:             ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_inc_stats.exit

if.then.i.i:                                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %nfs_inc_stats.exit

nfs_inc_stats.exit:                               ; preds = %if.then.i.i, %do.end6.nfs_inc_stats.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #10, !srcloc !33
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %21 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %f_mode, align 8
  %and7 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp = icmp eq i32 %and7, 0
  br i1 %cmp, label %nfs_inc_stats.exit.cleanup_crit_edge, label %if.end9

nfs_inc_stats.exit.cleanup_crit_edge:             ; preds = %nfs_inc_stats.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %nfs_inc_stats.exit
  %call10 = tail call zeroext i1 @nfs4_delegation_flush_on_close(ptr noundef %1) #10
  %f_mapping14 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %23 = ptrtoint ptr %f_mapping14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f_mapping14, align 4
  br i1 %call10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 @filemap_fdatawrite(ptr noundef %24) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %wb_err.i = getelementptr inbounds %struct.address_space, ptr %24, i32 0, i32 11
  %call.i = tail call i32 @errseq_sample(ptr noundef %wb_err.i) #10
  %call16 = tail call i32 @nfs_wb_all(ptr noundef %1) #10
  %25 = ptrtoint ptr %f_mapping14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f_mapping14, align 4
  %wb_err.i27 = getelementptr inbounds %struct.address_space, ptr %26, i32 0, i32 11
  %call.i28 = tail call i32 @errseq_check(ptr noundef %wb_err.i27, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11, %nfs_inc_stats.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i28, %if.end13 ], [ %call12, %if.then11 ], [ 0, %nfs_inc_stats.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_file_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_lock(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_check_flags(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_flock(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_setlease(ptr noundef %file, i32 noundef %arg, ptr noundef %lease, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfs4_proc_setlease(ptr noundef %file, i32 noundef %arg, ptr noundef %lease, ptr noundef %priv) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs42_fallocate(ptr noundef %filep, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp = icmp eq i16 %4, -32768
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %mode, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.if.end7_crit_edge
    i32 3, label %if.end.if.end7_crit_edge29
  ]

if.end.if.end7_crit_edge29:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge29
  %add = add i64 %len, %offset
  %call8 = tail call i32 @inode_newsize_ok(ptr noundef %1, i64 noundef %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %and13 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 @nfs42_proc_deallocate(ptr noundef %filep, i64 noundef %offset, i64 noundef %len) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 @nfs42_proc_allocate(ptr noundef %filep, i64 noundef %offset, i64 noundef %len) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then14 ], [ %call17, %if.end16 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_copy_file_range(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i32 noundef %count, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_op.i = getelementptr inbounds %struct.file, ptr %file_in, i32 0, i32 3
  %0 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op.i, align 4
  %cmp.not.i = icmp eq ptr %1, @nfs4_file_operations
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i:                                         ; preds = %entry
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %caps.i.i = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps.i.i, align 8
  %and.i.i = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.then_crit_edge, label %lor.lhs.false.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.i:                                  ; preds = %if.end.i
  %f_inode.i1.i = getelementptr inbounds %struct.file, ptr %file_in, i32 0, i32 2
  %10 = ptrtoint ptr %f_inode.i1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_inode.i1.i, align 8
  %i_sb.i.i2.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i.i2.i, align 4
  %s_fs_info.i.i.i3.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i.i3.i, align 16
  %caps.i4.i = getelementptr inbounds %struct.nfs_server, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %caps.i4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %caps.i4.i, align 8
  %and.i5.i = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5.i)
  %tobool4.not.i = icmp eq i32 %and.i5.i, 0
  %cmp9.i = icmp eq ptr %11, %3
  %or.cond.i = select i1 %tobool4.not.i, i1 true, i1 %cmp9.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then_crit_edge, label %if.end11.i

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end11.i:                                       ; preds = %lor.lhs.false.i
  %rsize.i = getelementptr inbounds %struct.nfs_server, ptr %15, i32 0, i32 11
  %18 = ptrtoint ptr %rsize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rsize.i, align 4
  %mul.i = shl i32 %19, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %count)
  %cmp14.not.i = icmp ult i32 %mul.i, %count
  %20 = xor i1 %cmp14.not.i, true
  br label %retry.i

retry.i:                                          ; preds = %if.end37.i.retry.i_crit_edge, %if.end11.i
  %cn_resp.0.i = phi ptr [ null, %if.end11.i ], [ %cn_resp.2.i, %if.end37.i.retry.i_crit_edge ]
  %nss.0.i = phi ptr [ null, %if.end11.i ], [ %nss.2.i, %if.end37.i.retry.i_crit_edge ]
  %cnrs.0.i = phi ptr [ null, %if.end11.i ], [ %cnrs.2.i, %if.end37.i.retry.i_crit_edge ]
  %21 = ptrtoint ptr %f_inode.i1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_inode.i1.i, align 8
  %i_sb.i.i9.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i.i9.i, align 4
  %s_fs_info.i.i.i10.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i.i.i10.i, align 16
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %29 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i8.i.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %i_sb.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb.i8.i.i, align 4
  %s_fs_info.i.i9.i.i = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %s_fs_info.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i.i9.i.i, align 16
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %cl_serverowner.i.i = getelementptr inbounds %struct.nfs_client, ptr %28, i32 0, i32 38
  %37 = ptrtoint ptr %cl_serverowner.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cl_serverowner.i.i, align 4
  %cl_serverowner5.i.i = getelementptr inbounds %struct.nfs_client, ptr %36, i32 0, i32 38
  %39 = ptrtoint ptr %cl_serverowner5.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cl_serverowner5.i.i, align 4
  %call6.i.i = tail call zeroext i1 @nfs4_check_serverowner_major_id(ptr noundef %38, ptr noundef %40) #10
  br i1 %call6.i.i, label %retry.i.if.end32.i_crit_edge, label %if.then18.i

retry.i.if.end32.i_crit_edge:                     ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then18.i:                                      ; preds = %retry.i
  br i1 %cmp14.not.i, label %if.end21.i, label %if.then18.i.if.then_crit_edge

if.then18.i.if.then_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end21.i:                                       ; preds = %if.then18.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3392, i32 noundef 1096) #14
  %cmp23.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp23.i, label %if.end21.i.if.end_crit_edge, label %if.end27.i, !prof !32

if.end21.i.if.end_crit_edge:                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end27.i:                                       ; preds = %if.end21.i
  %call28.i = tail call i32 @nfs42_proc_copy_notify(ptr noundef %file_in, ptr noundef %file_out, ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end27.i.out.i_crit_edge

if.end27.i.out.i_crit_edge:                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end31.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %cnr_src.i = getelementptr inbounds %struct.nfs42_copy_notify_res, ptr %call7.i.i.i, i32 0, i32 3
  %cnr_stateid.i = getelementptr inbounds %struct.nfs42_copy_notify_res, ptr %call7.i.i.i, i32 0, i32 2
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end31.i, %retry.i.if.end32.i_crit_edge
  %cn_resp.1.i = phi ptr [ %cn_resp.0.i, %retry.i.if.end32.i_crit_edge ], [ %call7.i.i.i, %if.end31.i ]
  %nss.1.i = phi ptr [ %nss.0.i, %retry.i.if.end32.i_crit_edge ], [ %cnr_src.i, %if.end31.i ]
  %cnrs.1.i = phi ptr [ %cnrs.0.i, %retry.i.if.end32.i_crit_edge ], [ %cnr_stateid.i, %if.end31.i ]
  %call34.i = tail call i32 @nfs42_proc_copy(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i32 noundef %count, ptr noundef %nss.1.i, ptr noundef %cnrs.1.i, i1 noundef zeroext %20) #10
  br label %out.i

out.i:                                            ; preds = %if.end32.i, %if.end27.i.out.i_crit_edge
  %cn_resp.2.i = phi ptr [ %cn_resp.1.i, %if.end32.i ], [ %call7.i.i.i, %if.end27.i.out.i_crit_edge ]
  %nss.2.i = phi ptr [ %nss.1.i, %if.end32.i ], [ %nss.0.i, %if.end27.i.out.i_crit_edge ]
  %cnrs.2.i = phi ptr [ %cnrs.1.i, %if.end32.i ], [ %cnrs.0.i, %if.end27.i.out.i_crit_edge ]
  %ret.0.i = phi i32 [ %call34.i, %if.end32.i ], [ -95, %if.end27.i.out.i_crit_edge ]
  %42 = ptrtoint ptr %f_inode.i1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %f_inode.i1.i, align 8
  %i_sb.i.i12.i = getelementptr inbounds %struct.inode, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %i_sb.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb.i.i12.i, align 4
  %s_fs_info.i.i.i13.i = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 33
  %46 = ptrtoint ptr %s_fs_info.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i.i.i13.i, align 16
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %50 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i8.i15.i = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %i_sb.i8.i15.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb.i8.i15.i, align 4
  %s_fs_info.i.i9.i16.i = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 33
  %54 = ptrtoint ptr %s_fs_info.i.i9.i16.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i.i9.i16.i, align 16
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %cl_serverowner.i17.i = getelementptr inbounds %struct.nfs_client, ptr %49, i32 0, i32 38
  %58 = ptrtoint ptr %cl_serverowner.i17.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cl_serverowner.i17.i, align 4
  %cl_serverowner5.i18.i = getelementptr inbounds %struct.nfs_client, ptr %57, i32 0, i32 38
  %60 = ptrtoint ptr %cl_serverowner5.i18.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cl_serverowner5.i18.i, align 4
  %call6.i19.i = tail call zeroext i1 @nfs4_check_serverowner_major_id(ptr noundef %59, ptr noundef %61) #10
  br i1 %call6.i19.i, label %out.i.if.end37.i_crit_edge, label %if.then36.i

out.i.if.end37.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then36.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %cn_resp.2.i) #10
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then36.i, %out.i.if.end37.i_crit_edge
  %62 = zext i32 %ret.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %ret.0.i, label %if.end37.i.if.end_crit_edge [
    i32 -11, label %if.end37.i.retry.i_crit_edge
    i32 -95, label %if.end37.i.if.then_crit_edge
    i32 -18, label %if.end37.i.if.then_crit_edge14
  ]

if.end37.i.if.then_crit_edge14:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end37.i.if.then_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end37.i.retry.i_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.i

if.end37.i.if.end_crit_edge:                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %if.end37.i.if.then_crit_edge, %if.end37.i.if.then_crit_edge14, %if.then18.i.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %call2 = tail call i32 @generic_copy_file_range(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i32 noundef %count, i32 noundef %flags) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end37.i.if.end_crit_edge, %if.end21.i.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ %ret.0.i, %if.end37.i.if.end_crit_edge ], [ -12, %if.end21.i.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @nfs42_remap_file_range(ptr noundef %src_file, i64 noundef %src_off, ptr noundef %dst_file, i64 noundef %dst_off, i64 noundef %count, i32 noundef %remap_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %dst_file, i32 0, i32 2
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
  %f_inode.i121 = getelementptr inbounds %struct.file, ptr %src_file, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i121 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i121, align 8
  %clone_blksize = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 28
  %8 = ptrtoint ptr %clone_blksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clone_blksize, align 8
  %and = and i32 %remap_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %remap_flags, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags, align 4
  %and7 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end6
  %i_flags9 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %i_flags9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_flags9, align 4
  %and10 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not = icmp eq i32 %9, 0
  br i1 %tobool14.not, label %if.end13.if.end36_crit_edge, label %if.then15

if.end13.if.end36_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then15:                                        ; preds = %if.end13
  %conv = zext i32 %9 to i64
  %sub = add nsw i64 %conv, -1
  %14 = or i64 %dst_off, %src_off
  %15 = and i64 %sub, %14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %if.end25, label %if.then15.out.thread_crit_edge

if.then15.out.thread_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end25:                                         ; preds = %if.then15
  %and28 = and i64 %sub, %count
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and28)
  %cmp29 = icmp eq i64 %and28, 0
  br i1 %cmp29, label %if.end25.if.end36_crit_edge, label %land.lhs.true

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end25
  %call31 = tail call fastcc i64 @i_size_read(ptr noundef %7)
  %add = add i64 %count, %src_off
  call void @__sanitizer_cov_trace_cmp8(i64 %call31, i64 %add)
  %cmp32.not = icmp eq i64 %call31, %add
  br i1 %cmp32.not, label %land.lhs.true.if.end36_crit_edge, label %land.lhs.true.out.thread_crit_edge

land.lhs.true.out.thread_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %if.end25.if.end36_crit_edge, %if.end13.if.end36_crit_edge
  %cmp37 = icmp eq ptr %7, %1
  br i1 %cmp37, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  br label %if.end48

if.else:                                          ; preds = %if.end36
  %cmp43 = icmp ult ptr %1, %7
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %i_rwsem.i122 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i122, i32 noundef 1) #10
  %i_rwsem.i123 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i123, i32 noundef 2) #10
  br label %if.end48

if.else46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %i_rwsem.i124 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i124, i32 noundef 1) #10
  %i_rwsem.i125 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i125, i32 noundef 2) #10
  br label %if.end48

if.end48:                                         ; preds = %if.else46, %if.then45, %if.then42
  %call49 = tail call i32 @nfs_sync_inode(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.out_unlock_crit_edge

if.end48.out_unlock_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end52:                                         ; preds = %if.end48
  %call53 = tail call i32 @nfs_sync_inode(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.out_unlock_crit_edge

if.end52.out_unlock_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end56:                                         ; preds = %if.end52
  %call57 = tail call i32 @nfs42_proc_clone(ptr noundef %src_file, ptr noundef %dst_file, i64 noundef %src_off, i64 noundef %dst_off, i64 noundef %count) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %if.end56.out_unlock_crit_edge

if.end56.out_unlock_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %i_data = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 46
  %add60 = add i64 %dst_off, -1
  %sub61 = add i64 %add60, %count
  tail call void @truncate_inode_pages_range(ptr noundef %i_data, i64 noundef %dst_off, i64 noundef %sub61) #10
  br label %out_unlock

out_unlock:                                       ; preds = %if.then59, %if.end56.out_unlock_crit_edge, %if.end52.out_unlock_crit_edge, %if.end48.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call49, %if.end48.out_unlock_crit_edge ], [ %call53, %if.end52.out_unlock_crit_edge ], [ %call57, %if.end56.out_unlock_crit_edge ], [ 0, %if.then59 ]
  br i1 %cmp37, label %out_unlock.out_crit_edge, label %if.else65

out_unlock.out_crit_edge:                         ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else65:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  %cmp66 = icmp ult ptr %1, %7
  %. = select i1 %cmp66, ptr %7, ptr %1
  %.136 = select i1 %cmp66, ptr %1, ptr %7
  %i_rwsem.i129 = getelementptr inbounds %struct.inode, ptr %., i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i129) #10
  br label %out

out:                                              ; preds = %if.else65, %out_unlock.out_crit_edge
  %.sink = phi ptr [ %1, %out_unlock.out_crit_edge ], [ %.136, %if.else65 ]
  %i_rwsem.i126 = getelementptr inbounds %struct.inode, ptr %.sink, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i126) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp72 = icmp slt i32 %ret.0, 0
  %conv74 = sext i32 %ret.0 to i64
  br i1 %cmp72, label %out.out.thread_crit_edge, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out.out.thread_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

out.thread:                                       ; preds = %out.out.thread_crit_edge, %land.lhs.true.out.thread_crit_edge, %if.then15.out.thread_crit_edge
  %conv74134 = phi i64 [ %conv74, %out.out.thread_crit_edge ], [ -22, %land.lhs.true.out.thread_crit_edge ], [ -22, %if.then15.out.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %out.thread, %out.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -26, %lor.lhs.false.cleanup_crit_edge ], [ -26, %if.end6.cleanup_crit_edge ], [ %conv74134, %out.thread ], [ %count, %out.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @__nfs42_ssc_open(ptr noundef %ss_mnt, ptr noundef %src_fh, ptr noundef %stateid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfs_alloc_fattr() #10
  %0 = ptrtoint ptr %ss_mnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ss_mnt, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @nfs4_proc_getattr(ptr noundef %7, ptr noundef %src_fh, ptr noundef nonnull %call, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = inttoptr i32 %call3 to ptr
  br label %if.then.i

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3392, i32 noundef 27) #14
  %cmp9 = icmp eq ptr %call7.i.i, null
  br i1 %cmp9, label %if.end6.if.then.i_crit_edge, label %if.end11

if.end6.if.then.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end11:                                         ; preds = %if.end6
  %10 = load i32, ptr @read_name_gen, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr @read_name_gen, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 27, ptr noundef nonnull @.str, i32 noundef %10)
  %11 = ptrtoint ptr %ss_mnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ss_mnt, align 4
  %d_inode14 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %d_inode14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode14, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %call15 = tail call ptr @nfs_fhget(ptr noundef %16, ptr noundef %src_fh, ptr noundef nonnull %call) #10
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end11.out_free_name_crit_edge, label %if.end19

if.end11.out_free_name_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_name

if.end19:                                         ; preds = %if.end11
  %17 = getelementptr inbounds %struct.inode, ptr %call15, i32 0, i32 44
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %call20 = tail call ptr @alloc_file_pseudo(ptr noundef %call15, ptr noundef %ss_mnt, ptr noundef nonnull %call7.i.i, i32 noundef 0, ptr noundef %19) #10
  %cmp.i97 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %if.end19.out_free_name_crit_edge, label %if.end24

if.end19.out_free_name_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_name

if.end24:                                         ; preds = %if.end19
  %dentry = getelementptr inbounds %struct.file, ptr %call20, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dentry, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %call20, i32 0, i32 8
  %22 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_mode, align 8
  %call25 = tail call ptr @alloc_nfs_open_context(ptr noundef %21, i32 noundef %23, ptr noundef %call20) #10
  %cmp.i98 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %if.end24.out_filep_crit_edge, label %if.end29

if.end24.out_filep_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_filep

if.end29:                                         ; preds = %if.end24
  %cred = getelementptr inbounds %struct.nfs_open_context, ptr %call25, i32 0, i32 3
  %24 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cred, align 4
  %call31 = tail call ptr @nfs4_get_state_owner(ptr noundef %7, ptr noundef %25, i32 noundef 3264) #10
  %cmp32 = icmp eq ptr %call31, null
  br i1 %cmp32, label %if.end29.out_ctx_crit_edge, label %if.end34

if.end29.out_ctx_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_ctx

if.end34:                                         ; preds = %if.end29
  %call35 = tail call ptr @nfs4_get_open_state(ptr noundef %call15, ptr noundef nonnull %call31) #10
  %state = getelementptr inbounds %struct.nfs_open_context, ptr %call25, i32 0, i32 5
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call35, ptr %state, align 4
  %cmp37 = icmp eq ptr %call35, null
  br i1 %cmp37, label %out_stateowner, label %if.end39

if.end39:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.nfs4_state, ptr %call35, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags) #10
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state, align 4
  %other = getelementptr inbounds %struct.nfs4_state, ptr %28, i32 0, i32 9, i32 0, i32 0, i32 1
  %other42 = getelementptr inbounds %struct.anon.152, ptr %stateid, i32 0, i32 1
  %29 = call ptr @memcpy(ptr %other, ptr %other42, i32 12)
  %30 = load ptr, ptr %state, align 4
  %31 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %f_mode, align 8
  %call45 = tail call i32 @update_open_stateid(ptr noundef %30, ptr noundef %stateid, ptr noundef null, i32 noundef %32) #10
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state, align 4
  %flags47 = getelementptr inbounds %struct.nfs4_state, ptr %34, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags47) #10
  tail call void @nfs_file_set_open_context(ptr noundef %call20, ptr noundef %call25) #10
  tail call void @put_nfs_open_context(ptr noundef %call25) #10
  %f_ra = getelementptr inbounds %struct.file, ptr %call20, i32 0, i32 13
  %f_mapping = getelementptr inbounds %struct.file, ptr %call20, i32 0, i32 18
  %35 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %f_mapping, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_mapping, align 8
  tail call void @file_ra_state_init(ptr noundef %f_ra, ptr noundef %40) #10
  br label %out_free_name

out_free_name:                                    ; preds = %out_filep, %if.end39, %if.end19.out_free_name_crit_edge, %if.end11.out_free_name_crit_edge
  %res.0 = phi ptr [ %res.2, %out_filep ], [ %call20, %if.end39 ], [ %call15, %if.end11.out_free_name_crit_edge ], [ %call20, %if.end19.out_free_name_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %if.then.i

if.then.i:                                        ; preds = %out_free_name, %if.end6.if.then.i_crit_edge, %if.then4
  %res.1 = phi ptr [ %8, %if.then4 ], [ inttoptr (i32 -12 to ptr), %if.end6.if.then.i_crit_edge ], [ %res.0, %out_free_name ]
  %label.i = getelementptr inbounds %struct.nfs_fattr, ptr %call, i32 0, i32 24
  %41 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %label.i, align 4
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.then.i.nfs_free_fattr.exit_crit_edge, label %if.then.i.i

if.then.i.nfs_free_fattr.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_free_fattr.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %label1.i.i = getelementptr inbounds %struct.nfs4_label, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %label1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %label1.i.i, align 4
  tail call void @kfree(ptr noundef %44) #10
  tail call void @kfree(ptr noundef nonnull %42) #10
  br label %nfs_free_fattr.exit

nfs_free_fattr.exit:                              ; preds = %if.then.i.i, %if.then.i.nfs_free_fattr.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #10
  br label %cleanup

out_stateowner:                                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nfs4_put_state_owner(ptr noundef nonnull %call31) #10
  br label %out_ctx

out_ctx:                                          ; preds = %out_stateowner, %if.end29.out_ctx_crit_edge
  tail call void @put_nfs_open_context(ptr noundef %call25) #10
  br label %out_filep

out_filep:                                        ; preds = %out_ctx, %if.end24.out_filep_crit_edge
  %res.2 = phi ptr [ inttoptr (i32 -22 to ptr), %out_ctx ], [ %call25, %if.end24.out_filep_crit_edge ]
  tail call void @fput(ptr noundef %call20) #10
  br label %out_free_name

cleanup:                                          ; preds = %nfs_free_fattr.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %res.1, %nfs_free_fattr.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @__nfs42_ssc_close(ptr nocapture noundef readonly %filep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %state = getelementptr inbounds %struct.nfs_open_context, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %flags = getelementptr inbounds %struct.nfs4_state, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %flags, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_getattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_fhget(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_file_pseudo(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_nfs_open_context(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_get_state_owner(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_get_open_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_open_stateid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_file_set_open_context(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_nfs_open_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @file_ra_state_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_put_state_owner(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfs42_proc_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfs_file_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_fscache_open_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_delegation_flush_on_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_wb_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_sample(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_setlease(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs42_proc_deallocate(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs42_proc_allocate(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_copy_file_range(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs42_proc_copy_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs42_proc_copy(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_check_serverowner_major_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !30
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %1 = tail call ptr @llvm.returnaddress(i32 0) #10
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call ptr @llvm.returnaddress(i32 0) #10
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #10
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !31
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !32

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !33
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !34
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !35
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !36
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !37
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_sync_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs42_proc_clone(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @nfs4_file_operations, !1, !"nfs4_file_operations", i1 false, i1 false}
!1 = !{!"../fs/nfs/nfs4file.c", i32 442, i32 30}
!2 = !{ptr @nfs4_ssc_clnt_ops_tbl, !3, !"nfs4_ssc_clnt_ops_tbl", i1 false, i1 false}
!3 = !{!"../fs/nfs/nfs4file.c", i32 408, i32 41}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/nfs/nfs4file.c", i32 345, i32 27}
!6 = !{ptr @read_name_gen, !7, !"read_name_gen", i1 false, i1 false}
!7 = !{!"../fs/nfs/nfs4file.c", i32 314, i32 12}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nfs/nfs4file.c", i32 47, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nfs4_file_open._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @nfs4_file_open._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nfs/nfs4file.c", i32 116, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nfs4_file_flush._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @nfs4_file_flush._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 1066313, i64 1066374}
!31 = !{i64 1069045}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{i64 1069330}
!34 = !{i64 2152504464}
!35 = !{i64 2152504306}
!36 = !{i64 2152504634}
!37 = !{i64 2150090448}
