; ModuleID = '/llk/IR_all_yes/fs/hpfs/dir.c_pt.bc'
source_filename = "../fs/hpfs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timezone = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.quad_buffer_head = type { [4 x ptr], ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.73 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.75 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.76 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
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
%struct.hpfs_dirent = type { i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, [0 x i8] }
%struct.hpfs_sb_info = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, ptr, ptr, i32, i32, i32, %struct.callback_head, i32, [256 x i32], [256 x i32] }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fnode = type { i32, [2 x i32], i8, [15 x i8], i32, i32, i32, i16, i8, i8, i32, i32, i16, i16, %struct.bplus_header, %union.anon.82, i32, i32, [16 x i8], i16, i8, i8, i32, i32, [316 x i8] }
%struct.bplus_header = type { i8, [3 x i8], i8, i8, i16, %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.anon.79, [0 x %struct.bplus_internal_node] }
%struct.anon.79 = type {}
%struct.bplus_internal_node = type { i32, i32 }
%union.anon.82 = type { [8 x %struct.bplus_leaf_node] }
%struct.bplus_leaf_node = type { i32, i32, i32 }
%struct.dir_context = type { ptr, i64 }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hpfs_lookup: can't get inode\00", [35 x i8] zeroinitializer }, align 32
@hpfs_file_iops = external dso_local constant %struct.inode_operations, align 128
@hpfs_file_ops = external dso_local constant %struct.file_operations, align 4
@.str.1 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"ACLs or XPERM found. This is probably HPFS386. This driver doesn't support it now. Send me some info on these structures\00", [39 x i8] zeroinitializer }, align 32
@hpfs_aops = external dso_local constant %struct.address_space_operations, align 4
@hpfs_dir_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @hpfs_dir_lseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpfs_readdir, ptr null, ptr @hpfs_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @hpfs_dir_release, ptr @hpfs_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dir_fnode\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dir_dnode\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"not a directory, fnode %08lx\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"corrupted inode: i_dno == %08x, fnode -> dnode == %08x\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hpfs_readdir\00", [19 x i8] zeroinitializer }, align 32
@hpfs_readdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.6, ptr @.str.8, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013hpfs: pos==%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/hpfs/dir.c\00", [18 x i8] zeroinitializer }, align 32
@hpfs_readdir._entry_ptr = internal global ptr @hpfs_readdir._entry, section ".printk_index", align 4
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"hpfs_readdir: bad ^A^A entry; pos = %08lx\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"hpfs_readdir: bad \\377 entry; pos = %08lx\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967260]
@__sancov_gen_cov_switch_values.13 = internal global [7 x i64] [i64 5, i64 64, i64 0, i64 1, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 64, i64 12, i64 13]
@__sancov_gen_cov_switch_values.15 = internal global [9 x i64] [i64 7, i64 64, i64 0, i64 1, i64 3, i64 4, i64 5, i64 11, i64 12]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 246, i32 25 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 269, i32 28 }
@___asan_gen_.22 = private unnamed_addr constant [13 x i8] c"hpfs_dir_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 320, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 80, i32 54 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 84, i32 59 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 99, i32 28 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 104, i32 28 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 128, i32 58 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 135, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 144, i32 23 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 164, i32 30 }
@___asan_gen_.56 = private constant [17 x i8] c"../fs/hpfs/dir.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 166, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 3566, i32 25 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @hpfs_readdir._entry, ptr @hpfs_readdir._entry_ptr, ptr @.str, ptr @.str.1, ptr @hpfs_dir_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_dir_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_readdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hpfs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %len = alloca i32, align 4
  %qbh = alloca %struct.quad_buffer_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #5
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %5 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  tail call void @mutex_lock_nested(ptr noundef %9, i32 noundef 0) #5
  %call = call i32 @hpfs_chk_name(ptr noundef %1, ptr noundef nonnull %len) #5
  %10 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.end_add_crit_edge [
    i32 0, label %if.end7
    i32 -36, label %if.then4
  ]

entry.end_add_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %end_add

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i200 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i200 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i200, align 16
  call void @mutex_unlock(ptr noundef %14) #5
  br label %cleanup

if.end7:                                          ; preds = %entry
  %i_dno = getelementptr i8, ptr %dir, i32 -36
  %15 = ptrtoint ptr %i_dno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_dno, align 4
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %call9 = call ptr @map_dirent(ptr noundef %dir, i32 noundef %16, ptr noundef %1, i32 noundef %18, ptr noundef null, ptr noundef nonnull %qbh) #5
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end7.end_add_crit_edge, label %if.end12

if.end7.end_add_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %end_add

if.end12:                                         ; preds = %if.end7
  %fnode = getelementptr inbounds %struct.hpfs_dirent, ptr %call9, i32 0, i32 2
  %19 = ptrtoint ptr %fnode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fnode, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %call14 = call ptr @iget_locked(ptr noundef %23, i32 noundef %21) #5
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %25, ptr noundef nonnull @.str) #5
  br label %bail1

if.end19:                                         ; preds = %if.end12
  %i_state = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 24
  %26 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_state, align 8
  %and = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end19.if.end40_crit_edge, label %if.then21

if.end19.if.end40_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then21:                                        ; preds = %if.end19
  call void @hpfs_init_inode(ptr noundef nonnull %call14) #5
  %directory = getelementptr inbounds %struct.hpfs_dirent, ptr %call9, i32 0, i32 1
  %28 = ptrtoint ptr %directory to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %directory, align 2
  %29 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool22.not = icmp eq i16 %29, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  call void @hpfs_read_inode(ptr noundef nonnull %call14) #5
  br label %if.end39

if.else:                                          ; preds = %if.then21
  %ea_size = getelementptr inbounds %struct.hpfs_dirent, ptr %call9, i32 0, i32 7
  %30 = ptrtoint ptr %ea_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ea_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool24.not = icmp eq i32 %31, 0
  br i1 %tobool24.not, label %if.else.if.else32_crit_edge, label %land.lhs.true

if.else.if.else32_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else32

land.lhs.true:                                    ; preds = %if.else
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i, align 16
  %sb_eas = getelementptr inbounds %struct.hpfs_sb_info, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %sb_eas to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load27 = load i16, ptr %sb_eas, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load27)
  %tobool30.not = icmp ult i16 %bf.load27, 16384
  br i1 %tobool30.not, label %land.lhs.true.if.else32_crit_edge, label %if.then31

land.lhs.true.if.else32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else32

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @hpfs_read_inode(ptr noundef nonnull %call14) #5
  br label %if.end39

if.else32:                                        ; preds = %land.lhs.true.if.else32_crit_edge, %if.else.if.else32_crit_edge
  %37 = ptrtoint ptr %call14 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %call14, align 8
  %39 = and i16 %38, 32694
  %40 = or i16 %39, -32768
  store i16 %40, ptr %call14, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 7
  %41 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @hpfs_file_iops, ptr %i_op, align 8
  %42 = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 44
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @hpfs_file_ops, ptr %42, align 8
  call void @set_nlink(ptr noundef nonnull %call14, i32 noundef 1) #5
  br label %if.end39

if.end39:                                         ; preds = %if.else32, %if.then31, %if.then23
  call void @unlock_new_inode(ptr noundef nonnull %call14) #5
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end19.if.end40_crit_edge
  %add.ptr.i201 = getelementptr i8, ptr %call14, i32 -48
  %directory42 = getelementptr inbounds %struct.hpfs_dirent, ptr %call9, i32 0, i32 1
  %44 = ptrtoint ptr %directory42 to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load43 = load i16, ptr %directory42, align 2
  %45 = and i16 %bf.load43, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool47.not = icmp eq i16 %45, 0
  br i1 %tobool47.not, label %if.then48, label %if.end40.if.end49_crit_edge

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then48:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %46 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_ino, align 8
  %i_parent_dir = getelementptr i8, ptr %call14, i32 -40
  %48 = ptrtoint ptr %i_parent_dir to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %i_parent_dir, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end40.if.end49_crit_edge
  %49 = ptrtoint ptr %directory42 to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load50 = load i16, ptr %directory42, align 2
  %50 = and i16 %bf.load50, 8704
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %if.end49.if.end69_crit_edge, label %if.then62

if.end49.if.end69_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then62:                                        ; preds = %if.end49
  %52 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then65, label %if.then62.if.end69_crit_edge

if.then62.if.end69_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then65:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  %i_sb66 = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 8
  %56 = ptrtoint ptr %i_sb66 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_sb66, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %57, ptr noundef nonnull @.str.1) #5
  call void @iput(ptr noundef nonnull %call14) #5
  br label %bail1

if.end69:                                         ; preds = %if.then62.if.end69_crit_edge, %if.end49.if.end69_crit_edge
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 17
  %58 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %i_ctime, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %tobool70.not = icmp eq i64 %59, 0
  br i1 %tobool70.not, label %if.then71, label %if.end69.bail1_crit_edge

if.end69.bail1_crit_edge:                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %bail1

if.then71:                                        ; preds = %if.end69
  %60 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_sb, align 4
  %creation_date = getelementptr inbounds %struct.hpfs_dirent, ptr %call9, i32 0, i32 6
  %62 = ptrtoint ptr %creation_date to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %creation_date, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63)
  %conv73 = zext i32 %64 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %65 = load i32, ptr @sys_tz, align 4
  %mul.i = mul i32 %65, 60
  %conv.i = sext i32 %mul.i to i64
  %add.i = add nsw i64 %conv.i, %conv73
  %s_fs_info.i.i202 = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 33
  %66 = ptrtoint ptr %s_fs_info.i.i202 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_fs_info.i.i202, align 16
  %sb_timeshift.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %67, i32 0, i32 17
  %68 = ptrtoint ptr %sb_timeshift.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sb_timeshift.i, align 4
  %conv1.i = sext i32 %69 to i64
  %add2.i = add nsw i64 %add.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add2.i)
  %tobool77.not = icmp eq i64 %add2.i, 0
  %spec.select = select i1 %tobool77.not, i64 1, i64 %add2.i
  %70 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %spec.select, ptr %i_ctime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 17, i32 1
  %71 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %tv_nsec, align 8
  %72 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_sb, align 4
  %write_date = getelementptr inbounds %struct.hpfs_dirent, ptr %call9, i32 0, i32 3
  %74 = ptrtoint ptr %write_date to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %write_date, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75)
  %conv84 = zext i32 %76 to i64
  %add.i205 = add nsw i64 %conv84, %conv.i
  %s_fs_info.i.i206 = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 33
  %77 = ptrtoint ptr %s_fs_info.i.i206 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_fs_info.i.i206, align 16
  %sb_timeshift.i207 = getelementptr inbounds %struct.hpfs_sb_info, ptr %78, i32 0, i32 17
  %79 = ptrtoint ptr %sb_timeshift.i207 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sb_timeshift.i207, align 4
  %conv1.i208 = sext i32 %80 to i64
  %add2.i209 = add nsw i64 %add.i205, %conv1.i208
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 16
  %81 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %add2.i209, ptr %i_mtime, align 8
  %tv_nsec88 = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 16, i32 1
  %82 = ptrtoint ptr %tv_nsec88 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %tv_nsec88, align 8
  %83 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i_sb, align 4
  %read_date = getelementptr inbounds %struct.hpfs_dirent, ptr %call9, i32 0, i32 5
  %85 = ptrtoint ptr %read_date to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %read_date, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86)
  %conv90 = zext i32 %87 to i64
  %add.i212 = add nsw i64 %conv90, %conv.i
  %s_fs_info.i.i213 = getelementptr inbounds %struct.super_block, ptr %84, i32 0, i32 33
  %88 = ptrtoint ptr %s_fs_info.i.i213 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_fs_info.i.i213, align 16
  %sb_timeshift.i214 = getelementptr inbounds %struct.hpfs_sb_info, ptr %89, i32 0, i32 17
  %90 = ptrtoint ptr %sb_timeshift.i214 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sb_timeshift.i214, align 4
  %conv1.i215 = sext i32 %91 to i64
  %add2.i216 = add nsw i64 %add.i212, %conv1.i215
  %i_atime = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 15
  %92 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %add2.i216, ptr %i_atime, align 8
  %tv_nsec94 = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 15, i32 1
  %93 = ptrtoint ptr %tv_nsec94 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %tv_nsec94, align 8
  %ea_size95 = getelementptr inbounds %struct.hpfs_dirent, ptr %call9, i32 0, i32 7
  %94 = ptrtoint ptr %ea_size95 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ea_size95, align 4
  %96 = call i32 @llvm.bswap.i32(i32 %95)
  %i_ea_size = getelementptr i8, ptr %call14, i32 -12
  %97 = ptrtoint ptr %i_ea_size to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %i_ea_size, align 4
  %i_ea_mode = getelementptr i8, ptr %call14, i32 -8
  %98 = ptrtoint ptr %i_ea_mode to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load96 = load i8, ptr %i_ea_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load96)
  %tobool99.not = icmp sgt i8 %bf.load96, -1
  br i1 %tobool99.not, label %land.lhs.true100, label %if.then71.if.end111_crit_edge

if.then71.if.end111_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

land.lhs.true100:                                 ; preds = %if.then71
  %99 = ptrtoint ptr %directory42 to i32
  call void @__asan_load2_noabort(i32 %99)
  %bf.load101 = load i16, ptr %directory42, align 2
  %100 = and i16 %bf.load101, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool105.not = icmp eq i16 %100, 0
  br i1 %tobool105.not, label %land.lhs.true100.if.end111_crit_edge, label %if.then106

land.lhs.true100.if.end111_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

if.then106:                                       ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #7
  %101 = ptrtoint ptr %call14 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %call14, align 8
  %103 = and i16 %102, -147
  store i16 %103, ptr %call14, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.then106, %land.lhs.true100.if.end111_crit_edge, %if.then71.if.end111_crit_edge
  %104 = ptrtoint ptr %directory42 to i32
  call void @__asan_load2_noabort(i32 %104)
  %bf.load113 = load i16, ptr %directory42, align 2
  %105 = and i16 %bf.load113, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool117.not = icmp eq i16 %105, 0
  br i1 %tobool117.not, label %if.then118, label %if.end111.bail1_crit_edge

if.end111.bail1_crit_edge:                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  br label %bail1

if.then118:                                       ; preds = %if.end111
  %i_size = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 14
  %106 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %107)
  %cmp119 = icmp eq i64 %107, -1
  br i1 %cmp119, label %if.then121, label %if.then118.bail1_crit_edge

if.then118.bail1_crit_edge:                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #7
  br label %bail1

if.then121:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #7
  %file_size = getelementptr inbounds %struct.hpfs_dirent, ptr %call9, i32 0, i32 4
  %108 = ptrtoint ptr %file_size to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %file_size, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %109)
  %conv122 = zext i32 %110 to i64
  %111 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %conv122, ptr %i_size, align 8
  %a_ops = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 46, i32 9
  %112 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @hpfs_aops, ptr %a_ops, align 8
  %113 = ptrtoint ptr %add.ptr.i201 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %conv122, ptr %add.ptr.i201, align 8
  %add = add nuw nsw i64 %conv122, 511
  %shr219 = lshr i64 %add, 9
  %add127 = add nuw nsw i64 %shr219, 1
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 22
  %114 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %add127, ptr %i_blocks, align 8
  br label %bail1

bail1:                                            ; preds = %if.then121, %if.then118.bail1_crit_edge, %if.end111.bail1_crit_edge, %if.end69.bail1_crit_edge, %if.then65, %if.then16
  %result.0 = phi ptr [ %call14, %if.end69.bail1_crit_edge ], [ %call14, %if.end111.bail1_crit_edge ], [ %call14, %if.then121 ], [ %call14, %if.then118.bail1_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then65 ], [ inttoptr (i32 -12 to ptr), %if.then16 ]
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #5
  br label %end_add

end_add:                                          ; preds = %bail1, %if.end7.end_add_crit_edge, %entry.end_add_crit_edge
  %result.1 = phi ptr [ %result.0, %bail1 ], [ null, %if.end7.end_add_crit_edge ], [ null, %entry.end_add_crit_edge ]
  %115 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i218 = getelementptr inbounds %struct.super_block, ptr %116, i32 0, i32 33
  %117 = ptrtoint ptr %s_fs_info.i.i218 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %s_fs_info.i.i218, align 16
  call void @mutex_unlock(ptr noundef %118) #5
  %call132 = call ptr @d_splice_alias(ptr noundef %result.1, ptr noundef %dentry) #5
  br label %cleanup

cleanup:                                          ; preds = %end_add, %if.then4
  %retval.0 = phi ptr [ inttoptr (i32 -36 to ptr), %if.then4 ], [ %call132, %end_add ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_chk_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_dirent(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_init_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_read_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_brelse4(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @hpfs_dir_lseek(ptr noundef %filp, i64 noundef %off, i32 noundef %whence) #0 align 64 {
entry:
  %pos = alloca i64, align 8
  %qbh = alloca %struct.quad_buffer_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whence)
  %cmp = icmp eq i32 %whence, 1
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %f_pos = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 10
  %0 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %f_pos, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i64 [ %1, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %add = add i64 %cond, %off
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #5
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %pos, align 8, !annotation !38
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #5
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %3 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %whence.off = add i32 %whence, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whence.off)
  %switch = icmp ult i32 %whence.off, 2
  br i1 %switch, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #5
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  tail call void @mutex_lock_nested(ptr noundef %9, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_switch(i64 %add, ptr @__sancov_gen_cov_switch_values.13)
  switch i64 %add, label %if.end14 [
    i64 0, label %if.end.ok_crit_edge
    i64 1, label %if.end.ok_crit_edge69
    i64 11, label %if.end.ok_crit_edge70
    i64 12, label %if.end.ok_crit_edge71
    i64 13, label %if.end.ok_crit_edge72
  ]

if.end.ok_crit_edge72:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ok

if.end.ok_crit_edge71:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ok

if.end.ok_crit_edge70:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ok

if.end.ok_crit_edge69:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ok

if.end.ok_crit_edge:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ok

if.end14:                                         ; preds = %if.end
  %i_dno = getelementptr i8, ptr %5, i32 -36
  %10 = ptrtoint ptr %i_dno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_dno, align 4
  %call15 = tail call i32 @hpfs_de_as_down_as_possible(ptr noundef %7, i32 noundef %11) #5
  %conv = zext i32 %call15 to i64
  %shl = shl nuw nsw i64 %conv, 4
  %add16 = or i64 %shl, 1
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add16, ptr %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.then20.while.cond_crit_edge, %if.end14
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %add)
  %cmp17.not = icmp eq i64 %14, %add
  br i1 %cmp17.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call19 = call ptr @map_pos_dirent(ptr noundef %5, ptr noundef nonnull %pos, ptr noundef nonnull %qbh) #5
  %tobool.not = icmp eq ptr %call19, null
  br i1 %tobool.not, label %while.body.cleanup.sink.split_crit_edge, label %if.then20

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then20:                                        ; preds = %while.body
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #5
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %pos, align 8
  %cmp22 = icmp eq i64 %16, 12
  br i1 %cmp22, label %if.then20.cleanup.sink.split_crit_edge, label %if.then20.while.cond_crit_edge

if.then20.while.cond_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.then20.cleanup.sink.split_crit_edge:           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

while.end:                                        ; preds = %while.cond
  %f_pos26 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 10
  %call27 = call i32 @hpfs_add_pos(ptr noundef %5, ptr noundef %f_pos26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %while.end.cleanup.sink.split_crit_edge, label %while.end.ok_crit_edge, !prof !39

while.end.ok_crit_edge:                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ok

while.end.cleanup.sink.split_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

ok:                                               ; preds = %while.end.ok_crit_edge, %if.end.ok_crit_edge, %if.end.ok_crit_edge69, %if.end.ok_crit_edge70, %if.end.ok_crit_edge71, %if.end.ok_crit_edge72
  %f_pos34 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 10
  %17 = ptrtoint ptr %f_pos34 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add, ptr %f_pos34, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %ok, %while.end.cleanup.sink.split_crit_edge, %if.then20.cleanup.sink.split_crit_edge, %while.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i64 [ %add, %ok ], [ -12, %while.end.cleanup.sink.split_crit_edge ], [ -29, %if.then20.cleanup.sink.split_crit_edge ], [ -29, %while.body.cleanup.sink.split_crit_edge ]
  %18 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @mutex_unlock(ptr noundef %19) #5
  call void @up_write(ptr noundef %i_rwsem.i) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cond.end.cleanup_crit_edge
  %retval.0 = phi i64 [ -22, %cond.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #5
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_readdir(ptr noundef %file, ptr noundef %ctx) #0 align 64 {
entry:
  %qbh = alloca %struct.quad_buffer_head, align 4
  %next_pos = alloca i64, align 8
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #5
  %2 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_pos) #5
  %3 = ptrtoint ptr %next_pos to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %next_pos, align 8, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c1) #5
  %4 = ptrtoint ptr %c1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %c1, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c2) #5
  %5 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %c2, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  tail call void @mutex_lock_nested(ptr noundef %9, i32 noundef 0) #5
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %sb_chk, align 2
  %15 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then:                                          ; preds = %entry
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  %call5 = tail call i32 @hpfs_chk_sectors(ptr noundef %11, i32 noundef %17, i32 noundef 1, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %if.then
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %i_dno = getelementptr i8, ptr %1, i32 -36
  %20 = ptrtoint ptr %i_dno to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_dno, align 4
  %call9 = tail call i32 @hpfs_chk_sectors(ptr noundef %19, i32 noundef %21, i32 noundef 4, ptr noundef nonnull @.str.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %entry.if.end13_crit_edge
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i343 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i343 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i343, align 16
  %sb_chk16 = getelementptr inbounds %struct.hpfs_sb_info, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %sb_chk16 to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load17 = load i16, ptr %sb_chk16, align 2
  %27 = and i16 %bf.load17, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.not = icmp eq i16 %27, 0
  br i1 %cmp.not, label %if.end13.if.end47_crit_edge, label %if.then21

if.end13.if.end47_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then21:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #5
  %28 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !38
  %i_ino23 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %i_ino23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_ino23, align 8
  %call24 = call ptr @hpfs_map_fnode(ptr noundef %23, i32 noundef %30, ptr noundef nonnull %bh) #5
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then21.cleanup.thread_crit_edge, label %if.end27

if.then21.cleanup.thread_crit_edge:               ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end27:                                         ; preds = %if.then21
  %flags.i = getelementptr inbounds %struct.fnode, ptr %call24, i32 0, i32 13
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flags.i, align 2
  %33 = and i16 %32, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp.i.not = icmp eq i16 %33, 0
  br i1 %cmp.i.not, label %if.then29, label %if.end27.if.end32_crit_edge

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb, align 4
  %36 = ptrtoint ptr %i_ino23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_ino23, align 8
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %35, ptr noundef nonnull @.str.4, i32 noundef %37) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end27.if.end32_crit_edge
  %e.0 = phi i32 [ 0, %if.end27.if.end32_crit_edge ], [ 1, %if.then29 ]
  %i_dno33 = getelementptr i8, ptr %1, i32 -36
  %38 = ptrtoint ptr %i_dno33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_dno33, align 4
  %disk_secno = getelementptr inbounds %struct.fnode, ptr %call24, i32 0, i32 15, i32 0, i32 0, i32 2
  %40 = ptrtoint ptr %disk_secno to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %disk_secno, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %42)
  %cmp34.not = icmp eq i32 %39, %42
  br i1 %cmp34.not, label %if.end32.if.end41_crit_edge, label %if.then35

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %44, ptr noundef nonnull @.str.5, i32 noundef %39, i32 noundef %42) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.end32.if.end41_crit_edge
  %e.1 = phi i32 [ 1, %if.then35 ], [ %e.0, %if.end32.if.end41_crit_edge ]
  %45 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %if.end41.brelse.exit_crit_edge, label %if.then.i

if.end41.brelse.exit_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %46) #5
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end41.brelse.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %e.1)
  %tobool42.not = icmp eq i32 %e.1, 0
  br i1 %tobool42.not, label %cleanup, label %brelse.exit.cleanup.thread_crit_edge

brelse.exit.cleanup.thread_crit_edge:             ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %brelse.exit.cleanup.thread_crit_edge, %if.then21.cleanup.thread_crit_edge
  %ret.0.ph = phi i32 [ -117, %brelse.exit.cleanup.thread_crit_edge ], [ -5, %if.then21.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #5
  br label %out

cleanup:                                          ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #5
  br label %if.end47

if.end47:                                         ; preds = %cleanup, %if.end13.if.end47_crit_edge
  %47 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i344 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 33
  %49 = ptrtoint ptr %s_fs_info.i344 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i344, align 16
  %sb_lowercase = getelementptr inbounds %struct.hpfs_sb_info, ptr %50, i32 0, i32 12
  %51 = ptrtoint ptr %sb_lowercase to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load50 = load i16, ptr %sb_lowercase, align 2
  %bf.lshr51 = lshr i16 %bf.load50, 9
  %bf.clear52 = and i16 %bf.lshr51, 1
  %bf.cast53 = zext i16 %bf.clear52 to i32
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.14)
  switch i64 %53, label %while.cond.preheader [
    i64 12, label %if.then55
    i64 13, label %if.end47.out_crit_edge
  ]

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

while.cond.preheader:                             ; preds = %if.end47
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %i_parent_dir = getelementptr i8, ptr %1, i32 -40
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %i_dno129 = getelementptr i8, ptr %1, i32 -36
  br label %again

if.then55:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 13, ptr %pos, align 8
  br label %out

again:                                            ; preds = %again.backedge, %while.cond.preheader
  %ret.3 = phi i32 [ 0, %while.cond.preheader ], [ %ret.4, %again.backedge ]
  %55 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i345 = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 33
  %57 = ptrtoint ptr %s_fs_info.i345 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info.i345, align 16
  %sb_chk64 = getelementptr inbounds %struct.hpfs_sb_info, ptr %58, i32 0, i32 12
  %59 = ptrtoint ptr %sb_chk64 to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load65 = load i16, ptr %sb_chk64, align 2
  %60 = and i16 %bf.load65, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool69.not = icmp eq i16 %60, 0
  br i1 %tobool69.not, label %again.if.end77_crit_edge, label %if.then70

again.if.end77_crit_edge:                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.then70:                                        ; preds = %again
  %61 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %pos, align 8
  %conv = trunc i64 %62 to i32
  %call73 = call i32 @hpfs_stop_cycles(ptr noundef %56, i32 noundef %conv, ptr noundef nonnull %c1, ptr noundef nonnull %c2, ptr noundef nonnull @.str.6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then70.if.end77_crit_edge, label %if.then70.out_crit_edge

if.then70.out_crit_edge:                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then70.if.end77_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.end77:                                         ; preds = %if.then70.if.end77_crit_edge, %again.if.end77_crit_edge
  %63 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.15)
  switch i64 %64, label %if.end77.if.end133_crit_edge [
    i64 12, label %if.end77.out_crit_edge
    i64 3, label %if.end77.do.end_crit_edge
    i64 4, label %if.end77.do.end_crit_edge400
    i64 5, label %if.end77.do.end_crit_edge401
    i64 0, label %if.then101
    i64 11, label %if.end77.if.then110_crit_edge
    i64 1, label %if.end77.if.then120_crit_edge
  ]

if.end77.if.then120_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then120

if.end77.if.then110_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then110

if.end77.do.end_crit_edge401:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end77.do.end_crit_edge400:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end77.do.end_crit_edge:                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end77.out_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end77.if.end133_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

do.end:                                           ; preds = %if.end77.do.end_crit_edge, %if.end77.do.end_crit_edge400, %if.end77.do.end_crit_edge401
  %conv95 = trunc i64 %64 to i32
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv95) #8
  br label %out

if.then101:                                       ; preds = %if.end77
  %65 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctx, align 8
  %67 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dentry.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %d_inode.i, align 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %70, i32 0, i32 11
  %71 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %i_ino.i, align 8
  %conv.i = zext i32 %72 to i64
  %call.i = call i32 %66(ptr noundef %ctx, ptr noundef nonnull @.str.12, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i346 = icmp eq i32 %call.i, 0
  br i1 %cmp.i346, label %if.end106.thread, label %if.then101.out_crit_edge

if.then101.out_crit_edge:                         ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end106.thread:                                 ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 11, ptr %pos, align 8
  br label %if.then110

if.then110:                                       ; preds = %if.end106.thread, %if.end77.if.then110_crit_edge
  %74 = ptrtoint ptr %i_parent_dir to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %i_parent_dir, align 8
  %conv111 = zext i32 %75 to i64
  %76 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctx, align 8
  %call.i348 = call i32 %77(ptr noundef %ctx, ptr noundef nonnull @.str.9, i32 noundef 2, i64 noundef 11, i64 noundef %conv111, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i348)
  %cmp.i349 = icmp eq i32 %call.i348, 0
  br i1 %cmp.i349, label %if.end116.thread, label %if.then110.out_crit_edge

if.then110.out_crit_edge:                         ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end116.thread:                                 ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 1, ptr %pos, align 8
  br label %if.then120

if.then120:                                       ; preds = %if.end116.thread, %if.end77.if.then120_crit_edge
  %call121 = call i32 @hpfs_add_pos(ptr noundef %1, ptr noundef %f_pos) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %if.then120.out_crit_edge, label %if.end127, !prof !39

if.then120.out_crit_edge:                         ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end127:                                        ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i_sb, align 4
  %81 = ptrtoint ptr %i_dno129 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %i_dno129, align 4
  %call130 = call i32 @hpfs_de_as_down_as_possible(ptr noundef %80, i32 noundef %82) #5
  %conv131 = zext i32 %call130 to i64
  %shl = shl nuw nsw i64 %conv131, 4
  %add = or i64 %shl, 1
  %83 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %add, ptr %pos, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.end127, %if.end77.if.end133_crit_edge
  %ret.4 = phi i32 [ %call121, %if.end127 ], [ %ret.3, %if.end77.if.end133_crit_edge ]
  %84 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %pos, align 8
  %86 = ptrtoint ptr %next_pos to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %next_pos, align 8
  %call135 = call ptr @map_pos_dirent(ptr noundef %1, ptr noundef nonnull %next_pos, ptr noundef nonnull %qbh) #5
  %tobool136.not = icmp eq ptr %call135, null
  br i1 %tobool136.not, label %if.then137, label %if.end139

if.then137:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %next_pos to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %next_pos, align 8
  %89 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %pos, align 8
  br label %out

if.end139:                                        ; preds = %if.end133
  %first = getelementptr inbounds %struct.hpfs_dirent, ptr %call135, i32 0, i32 1
  %90 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load140 = load i16, ptr %first, align 2
  %91 = and i16 %bf.load140, 2304
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %92 = icmp eq i16 %91, 0
  %93 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i_sb, align 4
  br i1 %92, label %if.end221, label %if.then153

if.then153:                                       ; preds = %if.end139
  %s_fs_info.i350 = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 33
  %95 = ptrtoint ptr %s_fs_info.i350 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %s_fs_info.i350, align 16
  %sb_chk156 = getelementptr inbounds %struct.hpfs_sb_info, ptr %96, i32 0, i32 12
  %97 = ptrtoint ptr %sb_chk156 to i32
  call void @__asan_load2_noabort(i32 %97)
  %bf.load157 = load i16, ptr %sb_chk156, align 2
  %98 = and i16 %bf.load157, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool161.not = icmp eq i16 %98, 0
  br i1 %tobool161.not, label %if.then153.if.end219_crit_edge, label %if.then162

if.then153.if.end219_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end219

if.then162:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %91)
  %99 = icmp eq i16 %91, 256
  br i1 %99, label %land.lhs.true176, label %if.then162.if.end195_crit_edge

if.then162.if.end195_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end195

land.lhs.true176:                                 ; preds = %if.then162
  %namelen = getelementptr inbounds %struct.hpfs_dirent, ptr %call135, i32 0, i32 10
  %100 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %namelen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %101)
  %cmp178.not = icmp eq i8 %101, 2
  br i1 %cmp178.not, label %lor.lhs.false180, label %land.lhs.true176.if.then191_crit_edge

land.lhs.true176.if.then191_crit_edge:            ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then191

lor.lhs.false180:                                 ; preds = %land.lhs.true176
  %name = getelementptr inbounds %struct.hpfs_dirent, ptr %call135, i32 0, i32 11
  %102 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %103)
  %cmp183.not = icmp eq i8 %103, 1
  br i1 %cmp183.not, label %lor.lhs.false185, label %lor.lhs.false180.if.then191_crit_edge

lor.lhs.false180.if.then191_crit_edge:            ; preds = %lor.lhs.false180
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then191

lor.lhs.false185:                                 ; preds = %lor.lhs.false180
  %arrayidx187 = getelementptr %struct.hpfs_dirent, ptr %call135, i32 1
  %104 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx187, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %105)
  %cmp189.not = icmp eq i8 %105, 1
  br i1 %cmp189.not, label %lor.lhs.false185.if.end195_crit_edge, label %lor.lhs.false185.if.then191_crit_edge

lor.lhs.false185.if.then191_crit_edge:            ; preds = %lor.lhs.false185
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then191

lor.lhs.false185.if.end195_crit_edge:             ; preds = %lor.lhs.false185
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end195

if.then191:                                       ; preds = %lor.lhs.false185.if.then191_crit_edge, %lor.lhs.false180.if.then191_crit_edge, %land.lhs.true176.if.then191_crit_edge
  %106 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %pos, align 8
  %conv194 = trunc i64 %107 to i32
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %94, ptr noundef nonnull @.str.10, i32 noundef %conv194) #5
  br label %if.end195

if.end195:                                        ; preds = %if.then191, %lor.lhs.false185.if.end195_crit_edge, %if.then162.if.end195_crit_edge
  %108 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %108)
  %bf.load197 = load i16, ptr %first, align 2
  %109 = and i16 %bf.load197, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool202.not = icmp eq i16 %109, 0
  br i1 %tobool202.not, label %if.end195.if.end219_crit_edge, label %land.lhs.true203

if.end195.if.end219_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end219

land.lhs.true203:                                 ; preds = %if.end195
  %namelen204 = getelementptr inbounds %struct.hpfs_dirent, ptr %call135, i32 0, i32 10
  %110 = ptrtoint ptr %namelen204 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %namelen204, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %111)
  %cmp206.not = icmp eq i8 %111, 1
  br i1 %cmp206.not, label %lor.lhs.false208, label %land.lhs.true203.if.then214_crit_edge

land.lhs.true203.if.then214_crit_edge:            ; preds = %land.lhs.true203
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then214

lor.lhs.false208:                                 ; preds = %land.lhs.true203
  %name209 = getelementptr inbounds %struct.hpfs_dirent, ptr %call135, i32 0, i32 11
  %112 = ptrtoint ptr %name209 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %name209, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %113)
  %cmp212.not = icmp eq i8 %113, -1
  br i1 %cmp212.not, label %lor.lhs.false208.if.end219_crit_edge, label %lor.lhs.false208.if.then214_crit_edge

lor.lhs.false208.if.then214_crit_edge:            ; preds = %lor.lhs.false208
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then214

lor.lhs.false208.if.end219_crit_edge:             ; preds = %lor.lhs.false208
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end219

if.then214:                                       ; preds = %lor.lhs.false208.if.then214_crit_edge, %land.lhs.true203.if.then214_crit_edge
  %114 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %i_sb, align 4
  %116 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %pos, align 8
  %conv217 = trunc i64 %117 to i32
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %115, ptr noundef nonnull @.str.11, i32 noundef %conv217) #5
  br label %if.end219

if.end219:                                        ; preds = %if.then214, %lor.lhs.false208.if.end219_crit_edge, %if.end195.if.end219_crit_edge, %if.then153.if.end219_crit_edge
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #5
  %118 = ptrtoint ptr %next_pos to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %next_pos, align 8
  %120 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %119, ptr %pos, align 8
  br label %again.backedge

again.backedge:                                   ; preds = %if.end250, %if.end219
  br label %again

if.end221:                                        ; preds = %if.end139
  %name223 = getelementptr inbounds %struct.hpfs_dirent, ptr %call135, i32 0, i32 11
  %namelen224 = getelementptr inbounds %struct.hpfs_dirent, ptr %call135, i32 0, i32 10
  %121 = ptrtoint ptr %namelen224 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %namelen224, align 2
  %conv225 = zext i8 %122 to i32
  %123 = lshr i16 %bf.load140, 6
  %124 = and i16 %123, 1
  %bf.cast229 = zext i16 %124 to i32
  %call231 = call ptr @hpfs_translate_name(ptr noundef %94, ptr noundef %name223, i32 noundef %conv225, i32 noundef %bf.cast53, i32 noundef %bf.cast229) #5
  %125 = ptrtoint ptr %namelen224 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %namelen224, align 2
  %conv233 = zext i8 %126 to i32
  %fnode = getelementptr inbounds %struct.hpfs_dirent, ptr %call135, i32 0, i32 2
  %127 = ptrtoint ptr %fnode to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %fnode, align 4
  %129 = call i32 @llvm.bswap.i32(i32 %128)
  %conv234 = zext i32 %129 to i64
  %130 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ctx, align 8
  %132 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %pos, align 8
  %call.i352 = call i32 %131(ptr noundef %ctx, ptr noundef %call231, i32 noundef %conv233, i64 noundef %133, i64 noundef %conv234, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i352)
  %cmp.i353 = icmp eq i32 %call.i352, 0
  br i1 %cmp.i353, label %if.end243, label %if.then236

if.then236:                                       ; preds = %if.end221
  %cmp239.not = icmp eq ptr %call231, %name223
  br i1 %cmp239.not, label %if.then236.if.end242_crit_edge, label %if.then241

if.then236.if.end242_crit_edge:                   ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end242

if.then241:                                       ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef %call231) #5
  br label %if.end242

if.end242:                                        ; preds = %if.then241, %if.then236.if.end242_crit_edge
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #5
  br label %out

if.end243:                                        ; preds = %if.end221
  %134 = ptrtoint ptr %next_pos to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %next_pos, align 8
  %136 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %135, ptr %pos, align 8
  %cmp247.not = icmp eq ptr %call231, %name223
  br i1 %cmp247.not, label %if.end243.if.end250_crit_edge, label %if.then249

if.end243.if.end250_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end250

if.then249:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef %call231) #5
  br label %if.end250

if.end250:                                        ; preds = %if.then249, %if.end243.if.end250_crit_edge
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #5
  br label %again.backedge

out:                                              ; preds = %if.end242, %if.then137, %if.then120.out_crit_edge, %if.then110.out_crit_edge, %if.then101.out_crit_edge, %do.end, %if.end77.out_crit_edge, %if.then70.out_crit_edge, %if.then55, %if.end47.out_crit_edge, %cleanup.thread, %if.end.out_crit_edge, %if.then.out_crit_edge
  %ret.5 = phi i32 [ 0, %if.then55 ], [ %ret.3, %do.end ], [ %ret.4, %if.end242 ], [ -5, %if.then137 ], [ -117, %if.then.out_crit_edge ], [ -117, %if.end.out_crit_edge ], [ -2, %if.end47.out_crit_edge ], [ %ret.0.ph, %cleanup.thread ], [ -117, %if.then70.out_crit_edge ], [ %ret.3, %if.then101.out_crit_edge ], [ %ret.3, %if.then110.out_crit_edge ], [ %call121, %if.then120.out_crit_edge ], [ %ret.3, %if.end77.out_crit_edge ]
  %137 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i354 = getelementptr inbounds %struct.super_block, ptr %138, i32 0, i32 33
  %139 = ptrtoint ptr %s_fs_info.i.i354 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %s_fs_info.i.i354, align 16
  call void @mutex_unlock(ptr noundef %140) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_pos) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #5
  ret i32 %ret.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_dir_release(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #5
  %f_pos = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 10
  tail call void @hpfs_del_pos(ptr noundef %inode, ptr noundef %f_pos) #5
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i4 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i4, align 16
  tail call void @mutex_unlock(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_de_as_down_as_possible(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_pos_dirent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_add_pos(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_chk_sectors(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_map_fnode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_stop_cycles(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_translate_name(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_del_pos(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hpfs/dir.c", i32 246, i32 25}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/hpfs/dir.c", i32 269, i32 28}
!4 = !{ptr @hpfs_dir_ops, !5, !"hpfs_dir_ops", i1 false, i1 false}
!5 = !{!"../fs/hpfs/dir.c", i32 320, i32 30}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hpfs/dir.c", i32 80, i32 54}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/hpfs/dir.c", i32 84, i32 59}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/hpfs/dir.c", i32 99, i32 28}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/hpfs/dir.c", i32 104, i32 28}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/hpfs/dir.c", i32 128, i32 58}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/hpfs/dir.c", i32 135, i32 4}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hpfs_readdir._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @hpfs_readdir._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/hpfs/dir.c", i32 144, i32 23}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/hpfs/dir.c", i32 164, i32 30}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/hpfs/dir.c", i32 166, i32 30}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
!39 = !{!"branch_weights", i32 1, i32 2000}
