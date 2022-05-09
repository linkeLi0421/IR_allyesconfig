; ModuleID = '/llk/IR_all_yes/fs/hpfs/inode.c_pt.bc'
source_filename = "../fs/hpfs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.timezone = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hpfs_sb_info = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, ptr, ptr, i32, i32, i32, %struct.callback_head, i32, [256 x i32], [256 x i32] }
%struct.fnode = type { i32, [2 x i32], i8, [15 x i8], i32, i32, i32, i16, i8, i8, i32, i32, i16, i16, %struct.bplus_header, %union.anon.86, i32, i32, [16 x i8], i16, i8, i8, i32, i32, [316 x i8] }
%struct.bplus_header = type { i8, [3 x i8], i8, i8, i16, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { %struct.anon.83, [0 x %struct.bplus_internal_node] }
%struct.anon.83 = type {}
%struct.bplus_internal_node = type { i32, i32 }
%union.anon.86 = type { [8 x %struct.bplus_leaf_node] }
%struct.bplus_leaf_node = type { i32, i32, i32 }
%struct.quad_buffer_head = type { [4 x ptr], ptr }
%struct.hpfs_dirent = type { i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, [0 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.73, %struct.list_head, %struct.list_head, %union.anon.74 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.73 = type { %struct.list_head }
%union.anon.74 = type { %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UID\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GID\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SYMLINK\00", [24 x i8] zeroinitializer }, align 32
@page_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@hpfs_symlink_aops = external dso_local constant %struct.address_space_operations, align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MODE\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DEV\00", [28 x i8] zeroinitializer }, align 32
@hpfs_dir_iops = external dso_local constant %struct.inode_operations, align 128
@hpfs_dir_ops = external dso_local constant %struct.file_operations, align 4
@hpfs_file_iops = external dso_local constant %struct.inode_operations, align 128
@hpfs_file_ops = external dso_local constant %struct.file_operations, align 4
@hpfs_aops = external dso_local constant %struct.address_space_operations, align 4
@hpfs_write_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013hpfs: write_inode: some position still there\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hpfs_write_inode\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/hpfs/inode.c\00", [16 x i8] zeroinitializer }, align 32
@hpfs_write_inode._entry_ptr = internal global ptr @hpfs_write_inode._entry, section ".printk_index", align 4
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\01\01\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"directory %08lx doesn't have '.' entry\00", [57 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 16, i64 4096, i64 8192, i64 24576, i64 49152]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 63, i32 41 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 70, i32 41 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 77, i32 41 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 89, i32 41 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 99, i32 43 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 189, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 242, i32 46 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [19 x i8] c"../fs/hpfs/inode.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 253, i32 5 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @hpfs_write_inode._entry, ptr @hpfs_write_inode._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_write_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hpfs_init_inode(ptr nocapture noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %i_uid = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 2
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %sb_uid = getelementptr inbounds %struct.hpfs_sb_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %sb_uid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_uid, align 4
  %6 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 3
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %sb_gid = getelementptr inbounds %struct.hpfs_sb_info, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %sb_gid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_gid, align 4
  %10 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %i_gid, align 8
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %sb_mode = getelementptr inbounds %struct.hpfs_sb_info, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %sb_mode to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sb_mode, align 4
  %14 = ptrtoint ptr %i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %i, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 14
  %15 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %i_size, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 22
  %16 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %i_blocks, align 8
  %i_dno = getelementptr i8, ptr %i, i32 -36
  %i_ea_mode = getelementptr i8, ptr %i, i32 -8
  %17 = call ptr @memset(ptr %i_dno, i32 0, i32 24)
  %18 = ptrtoint ptr %i_ea_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %i_ea_mode, align 8
  %i_ea_size = getelementptr i8, ptr %i, i32 -12
  %19 = ptrtoint ptr %i_ea_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %i_ea_size, align 4
  %i_rddir_off = getelementptr i8, ptr %i, i32 -4
  %20 = ptrtoint ptr %i_rddir_off to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %i_rddir_off, align 4
  %bf.clear11 = and i8 %bf.load, 15
  store i8 %bf.clear11, ptr %i_ea_mode, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 17
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 17, i32 1
  %21 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %tv_nsec, align 8
  %22 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %i_ctime, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 16
  %tv_nsec14 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 16, i32 1
  %23 = ptrtoint ptr %tv_nsec14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %tv_nsec14, align 8
  %24 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %i_mtime, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 15
  %tv_nsec17 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 15, i32 1
  %25 = ptrtoint ptr %tv_nsec17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %tv_nsec17, align 8
  %26 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %i_atime, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_read_inode(ptr noundef %i) local_unnamed_addr #2 align 64 {
entry:
  %bh = alloca ptr, align 4
  %ea_size = alloca i32, align 4
  %n_dnodes = alloca i32, align 4
  %n_subdirs = alloca i32, align 4
  %bh0 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #7
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !29
  %i_sb = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %add.ptr.i = getelementptr i8, ptr %i, i32 -48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ea_size) #7
  %3 = ptrtoint ptr %ea_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ea_size, align 4, !annotation !29
  %i_ino = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %call1 = call ptr @hpfs_map_fnode(ptr noundef %2, i32 noundef %5, ptr noundef nonnull %bh) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @make_bad_inode(ptr noundef %i) #7
  br label %cleanup145

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %sb_eas = getelementptr inbounds %struct.hpfs_sb_info, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %sb_eas to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %sb_eas, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load)
  %tobool4.not = icmp ult i16 %bf.load, 16384
  br i1 %tobool4.not, label %if.end.if.end90_crit_edge, label %if.then5

if.end.if.end90_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then5:                                         ; preds = %if.end
  %call7 = call ptr @hpfs_get_ea(ptr noundef %7, ptr noundef nonnull %call1, ptr noundef nonnull @.str, ptr noundef nonnull %ea_size) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then5.if.end13_crit_edge, label %if.then9

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9:                                         ; preds = %if.then5
  %11 = ptrtoint ptr %ea_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ea_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %if.then10, label %if.then9.if.end12_crit_edge

if.then9.if.end12_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call7 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %call7, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %conv = zext i16 %15 to i32
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 2
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 53
  %18 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = call i32 @make_kuid(ptr noundef %19, i32 noundef %conv) #7
  %20 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %i_ea_uid = getelementptr i8, ptr %i, i32 -8
  %21 = ptrtoint ptr %i_ea_uid to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load11 = load i8, ptr %i_ea_uid, align 8
  %bf.set = or i8 %bf.load11, 64
  store i8 %bf.set, ptr %i_ea_uid, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then9.if.end12_crit_edge
  call void @kfree(ptr noundef nonnull %call7) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then5.if.end13_crit_edge
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %call15 = call ptr @hpfs_get_ea(ptr noundef %23, ptr noundef nonnull %call1, ptr noundef nonnull @.str.1, ptr noundef nonnull %ea_size) #7
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end13.if.end26_crit_edge, label %if.then17

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then17:                                        ; preds = %if.end13
  %24 = ptrtoint ptr %ea_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ea_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp18 = icmp eq i32 %25, 2
  br i1 %cmp18, label %if.then20, label %if.then17.if.end25_crit_edge

if.then17.if.end25_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call15 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %call15, align 2
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %conv21 = zext i16 %28 to i32
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 3
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i231 = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 53
  %31 = ptrtoint ptr %s_user_ns.i.i231 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_user_ns.i.i231, align 8
  %call1.i232 = call i32 @make_kgid(ptr noundef %32, i32 noundef %conv21) #7
  %33 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call1.i232, ptr %i_gid.i, align 8
  %i_ea_gid = getelementptr i8, ptr %i, i32 -8
  %34 = ptrtoint ptr %i_ea_gid to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load22 = load i8, ptr %i_ea_gid, align 8
  %bf.set24 = or i8 %bf.load22, 32
  store i8 %bf.set24, ptr %i_ea_gid, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.then17.if.end25_crit_edge
  call void @kfree(ptr noundef nonnull %call15) #7
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end13.if.end26_crit_edge
  %35 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb, align 4
  %call28 = call ptr @hpfs_get_ea(ptr noundef %36, ptr noundef nonnull %call1, ptr noundef nonnull @.str.2, ptr noundef nonnull %ea_size) #7
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end26
  call void @kfree(ptr noundef nonnull %call28) #7
  %37 = ptrtoint ptr %i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -24065, ptr %i, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 7
  %38 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @page_symlink_inode_operations, ptr %i_op, align 8
  call void @inode_nohighmem(ptr noundef %i) #7
  %a_ops = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 46, i32 9
  %39 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @hpfs_symlink_aops, ptr %a_ops, align 8
  call void @set_nlink(ptr noundef %i, i32 noundef 1) #7
  %40 = ptrtoint ptr %ea_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ea_size, align 4
  %conv31 = sext i32 %41 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 14
  %42 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv31, ptr %i_size, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 22
  %43 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 1, ptr %i_blocks, align 8
  %44 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %if.then30.cleanup145_crit_edge, label %if.then.i

if.then30.cleanup145_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup145

if.then.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %45) #7
  br label %cleanup145

if.end32:                                         ; preds = %if.end26
  %46 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_sb, align 4
  %call34 = call ptr @hpfs_get_ea(ptr noundef %47, ptr noundef nonnull %call1, ptr noundef nonnull @.str.3, ptr noundef nonnull %ea_size) #7
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end32.if.end90_crit_edge, label %if.then36

if.end32.if.end90_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then36:                                        ; preds = %if.end32
  %s_fs_info.i233 = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %48 = ptrtoint ptr %s_fs_info.i233 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i233, align 16
  %sb_mode = getelementptr inbounds %struct.hpfs_sb_info, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %sb_mode to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %sb_mode, align 4
  %52 = ptrtoint ptr %ea_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ea_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp38 = icmp eq i32 %53, 2
  br i1 %cmp38, label %if.then40, label %if.then36.if.end44_crit_edge

if.then36.if.end44_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %call34 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %call34, align 2
  %56 = call i16 @llvm.bswap.i16(i16 %55)
  %i_ea_mode = getelementptr i8, ptr %i, i32 -8
  %57 = ptrtoint ptr %i_ea_mode to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load41 = load i8, ptr %i_ea_mode, align 8
  %bf.set43 = or i8 %bf.load41, -128
  store i8 %bf.set43, ptr %i_ea_mode, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.then36.if.end44_crit_edge
  %mode.0 = phi i16 [ %56, %if.then40 ], [ %51, %if.then36.if.end44_crit_edge ]
  call void @kfree(ptr noundef nonnull %call34) #7
  %58 = ptrtoint ptr %i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %mode.0, ptr %i, align 8
  %59 = and i16 %mode.0, -4096
  %60 = zext i16 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values)
  switch i16 %59, label %if.end44.if.end63_crit_edge [
    i16 24576, label %if.end44.if.then53_crit_edge
    i16 8192, label %if.end44.if.then53_crit_edge245
  ]

if.end44.if.then53_crit_edge245:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then53

if.end44.if.then53_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then53

if.end44.if.end63_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then53:                                        ; preds = %if.end44.if.then53_crit_edge, %if.end44.if.then53_crit_edge245
  %61 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb, align 4
  %call55 = call ptr @hpfs_get_ea(ptr noundef %62, ptr noundef nonnull %call1, ptr noundef nonnull @.str.4, ptr noundef nonnull %ea_size) #7
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %if.then53.if.end63_crit_edge, label %if.then57

if.then53.if.end63_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then57:                                        ; preds = %if.then53
  %63 = ptrtoint ptr %ea_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ea_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %64)
  %cmp58 = icmp eq i32 %64, 4
  br i1 %cmp58, label %if.then60, label %if.then57.if.end61_crit_edge

if.then57.if.end61_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then60:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %call55 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call55, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.then57.if.end61_crit_edge
  %rdev.0 = phi i32 [ %67, %if.then60 ], [ 0, %if.then57.if.end61_crit_edge ]
  call void @kfree(ptr noundef nonnull %call55) #7
  br label %if.end63

if.end63:                                         ; preds = %if.end61, %if.then53.if.end63_crit_edge, %if.end44.if.end63_crit_edge
  %rdev.1 = phi i32 [ %rdev.0, %if.end61 ], [ 0, %if.then53.if.end63_crit_edge ], [ 0, %if.end44.if.end63_crit_edge ]
  %68 = zext i16 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %59, label %if.end63.if.end90_crit_edge [
    i16 -16384, label %if.end63.if.then83_crit_edge
    i16 24576, label %if.end63.if.then83_crit_edge246
    i16 8192, label %if.end63.if.then83_crit_edge247
    i16 4096, label %if.end63.if.then83_crit_edge248
  ]

if.end63.if.then83_crit_edge248:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

if.end63.if.then83_crit_edge247:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

if.end63.if.then83_crit_edge246:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

if.end63.if.then83_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

if.end63.if.end90_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then83:                                        ; preds = %if.end63.if.then83_crit_edge, %if.end63.if.then83_crit_edge246, %if.end63.if.then83_crit_edge247, %if.end63.if.then83_crit_edge248
  %69 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bh, align 4
  %tobool.not.i234 = icmp eq ptr %70, null
  br i1 %tobool.not.i234, label %if.then83.brelse.exit236_crit_edge, label %if.then.i235

if.then83.brelse.exit236_crit_edge:               ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit236

if.then.i235:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %70) #7
  br label %brelse.exit236

brelse.exit236:                                   ; preds = %if.then.i235, %if.then83.brelse.exit236_crit_edge
  call void @set_nlink(ptr noundef %i, i32 noundef 1) #7
  %i_size84 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 14
  %71 = ptrtoint ptr %i_size84 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 0, ptr %i_size84, align 8
  %i_blocks85 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 22
  %72 = ptrtoint ptr %i_blocks85 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 1, ptr %i_blocks85, align 8
  %and1.i = and i32 %rdev.1, 255
  %shr2.i = lshr i32 %rdev.1, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i = or i32 %and3.i, %and1.i
  %73 = shl i32 %rdev.1, 12
  %shl.i = and i32 %73, -1048576
  %or4.i = or i32 %or.i, %shl.i
  call void @init_special_inode(ptr noundef %i, i16 noundef zeroext %mode.0, i32 noundef %or4.i) #7
  br label %cleanup145

if.end90:                                         ; preds = %if.end63.if.end90_crit_edge, %if.end32.if.end90_crit_edge, %if.end.if.end90_crit_edge
  %flags.i = getelementptr inbounds %struct.fnode, ptr %call1, i32 0, i32 13
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %flags.i, align 2
  %76 = and i16 %75, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp.i.not = icmp eq i16 %76, 0
  br i1 %cmp.i.not, label %if.else, label %if.then92

if.then92:                                        ; preds = %if.end90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_dnodes) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_subdirs) #7
  %77 = ptrtoint ptr %i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %i, align 8
  %79 = or i16 %78, 16384
  store i16 %79, ptr %i, align 8
  %i_op96 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 7
  %80 = ptrtoint ptr %i_op96 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @hpfs_dir_iops, ptr %i_op96, align 8
  %81 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 44
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @hpfs_dir_ops, ptr %81, align 8
  %up = getelementptr inbounds %struct.fnode, ptr %call1, i32 0, i32 4
  %83 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %up, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84)
  %i_parent_dir = getelementptr i8, ptr %i, i32 -40
  %86 = ptrtoint ptr %i_parent_dir to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %i_parent_dir, align 8
  %disk_secno = getelementptr inbounds %struct.fnode, ptr %call1, i32 0, i32 15, i32 0, i32 0, i32 2
  %87 = ptrtoint ptr %disk_secno to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %disk_secno, align 4
  %89 = call i32 @llvm.bswap.i32(i32 %88)
  %i_dno = getelementptr i8, ptr %i, i32 -36
  %90 = ptrtoint ptr %i_dno to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %i_dno, align 4
  %s_fs_info.i237 = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %91 = ptrtoint ptr %s_fs_info.i237 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_fs_info.i237, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %92, i32 0, i32 12
  %93 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load98 = load i16, ptr %sb_chk, align 2
  %94 = and i16 %bf.load98, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %cmp102.not = icmp eq i16 %94, 0
  br i1 %cmp102.not, label %if.then92.if.end110_crit_edge, label %if.then104

if.then92.if.end110_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.then104:                                       ; preds = %if.then92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh0) #7
  %95 = ptrtoint ptr %bh0 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh0, align 4, !annotation !29
  %call106 = call ptr @hpfs_map_fnode(ptr noundef %2, i32 noundef %85, ptr noundef nonnull %bh0) #7
  %tobool107.not = icmp eq ptr %call106, null
  br i1 %tobool107.not, label %if.then104.if.end109_crit_edge, label %if.then108

if.then104.if.end109_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then108:                                       ; preds = %if.then104
  %96 = ptrtoint ptr %bh0 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bh0, align 4
  %tobool.not.i238 = icmp eq ptr %97, null
  br i1 %tobool.not.i238, label %if.then108.if.end109_crit_edge, label %if.then.i239

if.then108.if.end109_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then.i239:                                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %97) #7
  br label %if.end109

if.end109:                                        ; preds = %if.then.i239, %if.then108.if.end109_crit_edge, %if.then104.if.end109_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh0) #7
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.then92.if.end110_crit_edge
  %98 = ptrtoint ptr %n_dnodes to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %n_dnodes, align 4
  %99 = ptrtoint ptr %n_subdirs to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %n_subdirs, align 4
  %100 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %i_sb, align 4
  %102 = ptrtoint ptr %i_dno to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %i_dno, align 4
  call void @hpfs_count_dnodes(ptr noundef %101, i32 noundef %103, ptr noundef nonnull %n_dnodes, ptr noundef nonnull %n_subdirs, ptr noundef null) #7
  %104 = ptrtoint ptr %n_dnodes to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %n_dnodes, align 4
  %mul = shl i32 %105, 2
  %conv113 = sext i32 %mul to i64
  %i_blocks114 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 22
  %106 = ptrtoint ptr %i_blocks114 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %conv113, ptr %i_blocks114, align 8
  %mul115 = shl i32 %105, 11
  %conv116 = sext i32 %mul115 to i64
  %i_size117 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 14
  %107 = ptrtoint ptr %i_size117 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv116, ptr %i_size117, align 8
  %108 = ptrtoint ptr %n_subdirs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %n_subdirs, align 4
  %add = add i32 %109, 2
  call void @set_nlink(ptr noundef %i, i32 noundef %add) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_subdirs) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_dnodes) #7
  br label %if.end144

if.else:                                          ; preds = %if.end90
  %110 = ptrtoint ptr %i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %i, align 8
  %112 = or i16 %111, -32768
  store i16 %112, ptr %i, align 8
  %i_ea_mode122 = getelementptr i8, ptr %i, i32 -8
  %113 = ptrtoint ptr %i_ea_mode122 to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load123 = load i8, ptr %i_ea_mode122, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load123)
  %tobool126.not = icmp sgt i8 %bf.load123, -1
  br i1 %tobool126.not, label %if.then127, label %if.else.if.end132_crit_edge

if.else.if.end132_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then127:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %114 = and i16 %112, -74
  %115 = ptrtoint ptr %i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %i, align 8
  br label %if.end132

if.end132:                                        ; preds = %if.then127, %if.else.if.end132_crit_edge
  %i_op133 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 7
  %116 = ptrtoint ptr %i_op133 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @hpfs_file_iops, ptr %i_op133, align 8
  %117 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 44
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @hpfs_file_ops, ptr %117, align 8
  call void @set_nlink(ptr noundef %i, i32 noundef 1) #7
  %file_size = getelementptr inbounds %struct.fnode, ptr %call1, i32 0, i32 16
  %119 = ptrtoint ptr %file_size to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %file_size, align 4
  %121 = call i32 @llvm.bswap.i32(i32 %120)
  %conv134 = zext i32 %121 to i64
  %i_size135 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 14
  %122 = ptrtoint ptr %i_size135 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %conv134, ptr %i_size135, align 8
  %add137 = add nuw nsw i64 %conv134, 511
  %123 = lshr i64 %add137, 9
  %add138 = add nuw nsw i64 %123, 1
  %i_blocks139 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 22
  %124 = ptrtoint ptr %i_blocks139 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %add138, ptr %i_blocks139, align 8
  %a_ops141 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 46, i32 9
  %125 = ptrtoint ptr %a_ops141 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @hpfs_aops, ptr %a_ops141, align 8
  %126 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %conv134, ptr %add.ptr.i, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.end132, %if.end110
  %127 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bh, align 4
  %tobool.not.i242 = icmp eq ptr %128, null
  br i1 %tobool.not.i242, label %if.end144.cleanup145_crit_edge, label %if.then.i243

if.end144.cleanup145_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup145

if.then.i243:                                     ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %128) #7
  br label %cleanup145

cleanup145:                                       ; preds = %if.then.i243, %if.end144.cleanup145_crit_edge, %brelse.exit236, %if.then.i, %if.then30.cleanup145_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ea_size) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_map_fnode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_get_ea(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_count_dnodes(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_write_inode(ptr noundef %i) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ino = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %sb_root = getelementptr inbounds %struct.hpfs_sb_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sb_root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_root, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %7)
  %cmp = icmp eq i32 %1, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_rddir_off = getelementptr i8, ptr %i, i32 -4
  %8 = ptrtoint ptr %i_rddir_off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_rddir_off, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %i_count = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_count, i32 noundef 4) #7
  %10 = ptrtoint ptr %i_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %i_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then4:                                         ; preds = %land.lhs.true
  %12 = ptrtoint ptr %i_rddir_off to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_rddir_off, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %if.then4.if.end9_crit_edge, label %do.end

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then4.if.end9_crit_edge
  %16 = ptrtoint ptr %i_rddir_off to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_rddir_off, align 4
  tail call void @kfree(ptr noundef %17) #7
  %18 = ptrtoint ptr %i_rddir_off to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %i_rddir_off, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end9, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %19 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 12
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool13.not = icmp eq i32 %21, 0
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %i_parent_dir = getelementptr i8, ptr %i, i32 -40
  %24 = ptrtoint ptr %i_parent_dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_parent_dir, align 8
  %call17 = tail call ptr @iget_locked(ptr noundef %23, i32 noundef %25) #7
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.then19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.end15
  %i_dirty = getelementptr i8, ptr %i, i32 -8
  %26 = ptrtoint ptr %i_dirty to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %i_dirty, align 8
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %i_dirty, align 8
  %i_state = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 24
  %27 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_state, align 8
  %and = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.then19.if.end22_crit_edge, label %if.then21

if.then19.if.end22_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 8
  %29 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb.i, align 4
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 2
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 33
  %31 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_uid.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %sb_uid.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sb_uid.i, align 4
  %35 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 3
  %36 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_gid.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %sb_gid.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sb_gid.i, align 4
  %39 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %i_gid.i, align 8
  %40 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_mode.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %sb_mode.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %sb_mode.i, align 4
  %43 = ptrtoint ptr %call17 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %call17, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 14
  %44 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 -1, ptr %i_size.i, align 8
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 22
  %45 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 -1, ptr %i_blocks.i, align 8
  %i_dno.i = getelementptr i8, ptr %call17, i32 -36
  %i_ea_mode.i = getelementptr i8, ptr %call17, i32 -8
  %46 = call ptr @memset(ptr %i_dno.i, i32 0, i32 24)
  %47 = ptrtoint ptr %i_ea_mode.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i = load i8, ptr %i_ea_mode.i, align 8
  %i_ea_size.i = getelementptr i8, ptr %call17, i32 -12
  %48 = ptrtoint ptr %i_ea_size.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %i_ea_size.i, align 4
  %i_rddir_off.i = getelementptr i8, ptr %call17, i32 -4
  %49 = ptrtoint ptr %i_rddir_off.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %i_rddir_off.i, align 4
  %bf.clear11.i = and i8 %bf.load.i, 15
  store i8 %bf.clear11.i, ptr %i_ea_mode.i, align 8
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 17
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 17, i32 1
  %50 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %tv_nsec.i, align 8
  %51 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %i_ctime.i, align 8
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 16
  %tv_nsec14.i = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 16, i32 1
  %52 = ptrtoint ptr %tv_nsec14.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %tv_nsec14.i, align 8
  %53 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 0, ptr %i_mtime.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 15
  %tv_nsec17.i = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 15, i32 1
  %54 = ptrtoint ptr %tv_nsec17.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %tv_nsec17.i, align 8
  %55 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %i_atime.i, align 8
  tail call void @hpfs_read_inode(ptr noundef nonnull %call17)
  tail call void @unlock_new_inode(ptr noundef nonnull %call17) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then19.if.end22_crit_edge
  tail call void @hpfs_write_inode_nolock(ptr noundef %i)
  tail call void @iput(ptr noundef nonnull %call17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_write_inode_nolock(ptr noundef %i) local_unnamed_addr #2 align 64 {
entry:
  %ea.i = alloca i32, align 4
  %bh = alloca ptr, align 4
  %qbh = alloca %struct.quad_buffer_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #7
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #7
  %i_ino = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 11
  %1 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %sb_root = getelementptr inbounds %struct.hpfs_sb_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %sb_root to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_root, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %9)
  %cmp = icmp eq i32 %3, %9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call ptr @hpfs_map_fnode(ptr noundef %5, i32 noundef %3, ptr noundef nonnull %bh) #7
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino, align 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i160 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i160 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i160, align 16
  %sb_root10 = getelementptr inbounds %struct.hpfs_sb_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %sb_root10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sb_root10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %17)
  %cmp11.not = icmp eq i32 %11, %17
  br i1 %cmp11.not, label %if.end6.if.end20_crit_edge, label %land.lhs.true

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end6
  %18 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.not = icmp eq i32 %20, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end20_crit_edge, label %if.then13

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then13:                                        ; preds = %land.lhs.true
  %call16 = call ptr @map_fnode_dirent(ptr noundef %13, i32 noundef %11, ptr noundef nonnull %call4, ptr noundef nonnull %qbh) #7
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then18, label %if.then13.if.end20_crit_edge

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.then13
  %21 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then18.cleanup_crit_edge, label %if.then18.cleanup.sink.split_crit_edge

if.then18.cleanup.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.then13.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %if.end6.if.end20_crit_edge
  %de.0 = phi ptr [ %call16, %if.then13.if.end20_crit_edge ], [ null, %land.lhs.true.if.end20_crit_edge ], [ null, %if.end6.if.end20_crit_edge ]
  %23 = ptrtoint ptr %i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %i, align 8
  %25 = and i16 %24, -4096
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %25, label %if.end20.if.end44_crit_edge [
    i16 -32768, label %if.then23
    i16 16384, label %if.then37
  ]

if.end20.if.end44_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then23:                                        ; preds = %if.end20
  %i_size = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 14
  %27 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_size, align 8
  %conv24 = trunc i64 %28 to i32
  %29 = call i32 @llvm.bswap.i32(i32 %conv24)
  %file_size = getelementptr inbounds %struct.fnode, ptr %call4, i32 0, i32 16
  %30 = ptrtoint ptr %file_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %file_size, align 4
  %tobool25.not = icmp eq ptr %de.0, null
  br i1 %tobool25.not, label %if.then23.if.end44_crit_edge, label %if.then26

if.then23.if.end44_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_size, align 8
  %conv28 = trunc i64 %32 to i32
  %33 = call i32 @llvm.bswap.i32(i32 %conv28)
  br label %if.end44.sink.split

if.then37:                                        ; preds = %if.end20
  %file_size38 = getelementptr inbounds %struct.fnode, ptr %call4, i32 0, i32 16
  %34 = ptrtoint ptr %file_size38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %file_size38, align 4
  %tobool39.not = icmp eq ptr %de.0, null
  br i1 %tobool39.not, label %if.then37.if.end44_crit_edge, label %if.then37.if.end44.sink.split_crit_edge

if.then37.if.end44.sink.split_crit_edge:          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.sink.split

if.then37.if.end44_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.end44.sink.split:                              ; preds = %if.then37.if.end44.sink.split_crit_edge, %if.then26
  %.sink = phi i32 [ %33, %if.then26 ], [ 0, %if.then37.if.end44.sink.split_crit_edge ]
  %file_size41 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0, i32 0, i32 4
  %35 = ptrtoint ptr %file_size41 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %file_size41, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.then37.if.end44_crit_edge, %if.then23.if.end44_crit_edge, %if.end20.if.end44_crit_edge
  %36 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 33
  %38 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_eas.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %sb_eas.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load.i = load i16, ptr %sb_eas.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %cmp.i = icmp slt i16 %bf.load.i, 0
  br i1 %cmp.i, label %if.then.i161, label %if.end44.hpfs_write_inode_ea.exit_crit_edge

if.end44.hpfs_write_inode_ea.exit_crit_edge:      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %hpfs_write_inode_ea.exit

if.then.i161:                                     ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ea.i) #7
  %41 = ptrtoint ptr %ea.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %ea.i, align 4, !annotation !29
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 2
  %sb_uid.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %39, i32 0, i32 9
  %42 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %43 = ptrtoint ptr %sb_uid.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.unpack138.i = load i32, ptr %sb_uid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack138.i)
  %cmp.i.i = icmp eq i32 %.unpack.i, %.unpack138.i
  br i1 %cmp.i.i, label %lor.lhs.false.i, label %if.then.i161.if.then9.i_crit_edge

if.then.i161.if.then9.i_crit_edge:                ; preds = %if.then.i161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

lor.lhs.false.i:                                  ; preds = %if.then.i161
  %i_ea_uid.i = getelementptr i8, ptr %i, i32 -8
  %44 = ptrtoint ptr %i_ea_uid.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load6.i = load i8, ptr %i_ea_uid.i, align 8
  %45 = and i8 %bf.load6.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i162 = icmp eq i8 %45, 0
  br i1 %tobool.not.i162, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then9.i_crit_edge

lor.lhs.false.i.if.then9.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then9.i:                                       ; preds = %lor.lhs.false.i.if.then9.i_crit_edge, %if.then.i161.if.then9.i_crit_edge
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 53
  %46 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %48 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i.i = call i32 @from_kuid(ptr noundef %47, [1 x i32] %48) #7
  %49 = call i32 @llvm.bswap.i32(i32 %call1.i.i) #7
  %50 = ptrtoint ptr %ea.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %ea.i, align 4
  call void @hpfs_set_ea(ptr noundef %i, ptr noundef nonnull %call4, ptr noundef nonnull @.str, ptr noundef nonnull %ea.i, i32 noundef 2) #7
  %i_ea_uid11.i = getelementptr i8, ptr %i, i32 -8
  %51 = ptrtoint ptr %i_ea_uid11.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load12.i = load i8, ptr %i_ea_uid11.i, align 8
  %bf.set.i = or i8 %bf.load12.i, 64
  store i8 %bf.set.i, ptr %i_ea_uid11.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then9.i, %lor.lhs.false.i.if.end.i_crit_edge
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 3
  %52 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i142.i = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 33
  %54 = ptrtoint ptr %s_fs_info.i142.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i142.i, align 16
  %sb_gid.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.unpack139.i = load i32, ptr %i_gid.i, align 8
  %57 = ptrtoint ptr %sb_gid.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.unpack140.i = load i32, ptr %sb_gid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack139.i, i32 %.unpack140.i)
  %cmp.i143.i = icmp eq i32 %.unpack139.i, %.unpack140.i
  br i1 %cmp.i143.i, label %lor.lhs.false19.i, label %if.end.i.if.then25.i_crit_edge

if.end.i.if.then25.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

lor.lhs.false19.i:                                ; preds = %if.end.i
  %i_ea_gid.i = getelementptr i8, ptr %i, i32 -8
  %58 = ptrtoint ptr %i_ea_gid.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load20.i = load i8, ptr %i_ea_gid.i, align 8
  %59 = and i8 %bf.load20.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool24.not.i = icmp eq i8 %59, 0
  br i1 %tobool24.not.i, label %lor.lhs.false19.i.if.end31.i_crit_edge, label %lor.lhs.false19.i.if.then25.i_crit_edge

lor.lhs.false19.i.if.then25.i_crit_edge:          ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

lor.lhs.false19.i.if.end31.i_crit_edge:           ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then25.i:                                      ; preds = %lor.lhs.false19.i.if.then25.i_crit_edge, %if.end.i.if.then25.i_crit_edge
  %s_user_ns.i.i145.i = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 53
  %60 = ptrtoint ptr %s_user_ns.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_user_ns.i.i145.i, align 8
  %62 = insertvalue [1 x i32] undef, i32 %.unpack139.i, 0
  %call1.i147.i = call i32 @from_kgid(ptr noundef %61, [1 x i32] %62) #7
  %63 = call i32 @llvm.bswap.i32(i32 %call1.i147.i) #7
  %64 = ptrtoint ptr %ea.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %ea.i, align 4
  call void @hpfs_set_ea(ptr noundef %i, ptr noundef nonnull %call4, ptr noundef nonnull @.str.1, ptr noundef nonnull %ea.i, i32 noundef 2) #7
  %i_ea_gid27.i = getelementptr i8, ptr %i, i32 -8
  %65 = ptrtoint ptr %i_ea_gid27.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load28.i = load i8, ptr %i_ea_gid27.i, align 8
  %bf.set30.i = or i8 %bf.load28.i, 32
  store i8 %bf.set30.i, ptr %i_ea_gid27.i, align 8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then25.i, %lor.lhs.false19.i.if.end31.i_crit_edge
  %66 = ptrtoint ptr %i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %i, align 8
  %conv.i = zext i16 %67 to i32
  %and.i = and i32 %conv.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %and.i)
  %cmp32.i = icmp eq i32 %and.i, 40960
  br i1 %cmp32.i, label %if.end31.i.if.end90.i_crit_edge, label %if.then34.i

if.end31.i.if.end90.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90.i

if.then34.i:                                      ; preds = %if.end31.i
  %68 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i148.i = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 33
  %70 = ptrtoint ptr %s_fs_info.i148.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_fs_info.i148.i, align 16
  %sb_mode.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %71, i32 0, i32 11
  %72 = ptrtoint ptr %sb_mode.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %sb_mode.i, align 4
  %conv39.i = zext i16 %73 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and.i)
  %cmp43.i = icmp eq i32 %and.i, 16384
  %neg.i = select i1 %cmp43.i, i32 65535, i32 65462
  %and45.i = and i32 %neg.i, %conv39.i
  %cond51.i = select i1 %cmp43.i, i32 16384, i32 32768
  %or.i = or i32 %and45.i, %cond51.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %conv.i)
  %cmp52.not.i = icmp eq i32 %or.i, %conv.i
  br i1 %cmp52.not.i, label %if.then34.i.lor.lhs.false77.i_crit_edge, label %land.lhs.true.i

if.then34.i.lor.lhs.false77.i_crit_edge:          ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false77.i

land.lhs.true.i:                                  ; preds = %if.then34.i
  %74 = and i16 %67, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %74)
  %cmp63.i = icmp eq i16 %74, 16384
  %neg66.i = select i1 %cmp63.i, i32 65389, i32 65316
  %and67.i = and i32 %neg66.i, %conv39.i
  %cond73.i = select i1 %cmp63.i, i32 16384, i32 32768
  %or74.i = or i32 %and67.i, %cond73.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or74.i, i32 %conv.i)
  %cmp75.not.i = icmp eq i32 %or74.i, %conv.i
  br i1 %cmp75.not.i, label %land.lhs.true.i.lor.lhs.false77.i_crit_edge, label %land.lhs.true.i.if.then82.i_crit_edge

land.lhs.true.i.if.then82.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82.i

land.lhs.true.i.lor.lhs.false77.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false77.i

lor.lhs.false77.i:                                ; preds = %land.lhs.true.i.lor.lhs.false77.i_crit_edge, %if.then34.i.lor.lhs.false77.i_crit_edge
  %i_ea_mode.i = getelementptr i8, ptr %i, i32 -8
  %75 = ptrtoint ptr %i_ea_mode.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load78.i = load i8, ptr %i_ea_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load78.i)
  %tobool81.not.i = icmp sgt i8 %bf.load78.i, -1
  br i1 %tobool81.not.i, label %lor.lhs.false77.i.if.end90.i_crit_edge, label %lor.lhs.false77.i.if.then82.i_crit_edge

lor.lhs.false77.i.if.then82.i_crit_edge:          ; preds = %lor.lhs.false77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82.i

lor.lhs.false77.i.if.end90.i_crit_edge:           ; preds = %lor.lhs.false77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90.i

if.then82.i:                                      ; preds = %lor.lhs.false77.i.if.then82.i_crit_edge, %land.lhs.true.i.if.then82.i_crit_edge
  %76 = call i32 @llvm.bswap.i32(i32 %conv.i) #7
  %77 = ptrtoint ptr %ea.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %ea.i, align 4
  call void @hpfs_set_ea(ptr noundef %i, ptr noundef nonnull %call4, ptr noundef nonnull @.str.3, ptr noundef nonnull %ea.i, i32 noundef 2) #7
  %i_ea_mode85.i = getelementptr i8, ptr %i, i32 -8
  %78 = ptrtoint ptr %i_ea_mode85.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load86.i = load i8, ptr %i_ea_mode85.i, align 8
  %bf.set88.i = or i8 %bf.load86.i, -128
  store i8 %bf.set88.i, ptr %i_ea_mode85.i, align 8
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then82.i, %lor.lhs.false77.i.if.end90.i_crit_edge, %if.end31.i.if.end90.i_crit_edge
  %79 = ptrtoint ptr %i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %i, align 8
  %81 = and i16 %80, -4096
  %82 = zext i16 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %81, label %if.end90.i.if.end104.i_crit_edge [
    i16 24576, label %if.end90.i.if.then102.i_crit_edge
    i16 8192, label %if.end90.i.if.then102.i_crit_edge209
  ]

if.end90.i.if.then102.i_crit_edge209:             ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then102.i

if.end90.i.if.then102.i_crit_edge:                ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then102.i

if.end90.i.if.end104.i_crit_edge:                 ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104.i

if.then102.i:                                     ; preds = %if.end90.i.if.then102.i_crit_edge, %if.end90.i.if.then102.i_crit_edge209
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 13
  %83 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %i_rdev.i, align 8
  %and1.i.i = and i32 %84, 255
  %85 = lshr i32 %84, 12
  %shl.i.i = and i32 %85, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %84, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %86 = call i32 @llvm.bswap.i32(i32 %or4.i.i) #7
  %87 = ptrtoint ptr %ea.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %ea.i, align 4
  call void @hpfs_set_ea(ptr noundef %i, ptr noundef nonnull %call4, ptr noundef nonnull @.str.4, ptr noundef nonnull %ea.i, i32 noundef 4) #7
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then102.i, %if.end90.i.if.end104.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ea.i) #7
  br label %hpfs_write_inode_ea.exit

hpfs_write_inode_ea.exit:                         ; preds = %if.end104.i, %if.end44.hpfs_write_inode_ea.exit_crit_edge
  %tobool45.not = icmp eq ptr %de.0, null
  br i1 %tobool45.not, label %hpfs_write_inode_ea.exit.if.end60_crit_edge, label %if.then46

hpfs_write_inode_ea.exit.if.end60_crit_edge:      ; preds = %hpfs_write_inode_ea.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then46:                                        ; preds = %hpfs_write_inode_ea.exit
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %i_sb, align 4
  %i_mtime = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 16
  %90 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %i_mtime, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %92 = load i32, ptr @sys_tz, align 4
  %mul.i = mul i32 %92, 60
  %conv4.i = zext i32 %mul.i to i64
  %s_fs_info.i.i163 = getelementptr inbounds %struct.super_block, ptr %89, i32 0, i32 33
  %93 = ptrtoint ptr %s_fs_info.i.i163 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_fs_info.i.i163, align 16
  %sb_timeshift.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %94, i32 0, i32 17
  %95 = ptrtoint ptr %sb_timeshift.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sb_timeshift.i, align 4
  %conv15.i = zext i32 %96 to i64
  %97 = add nuw nsw i64 %conv4.i, %conv15.i
  %sub2.i = sub i64 %91, %97
  %conv3.i = trunc i64 %sub2.i to i32
  %98 = call i32 @llvm.bswap.i32(i32 %conv3.i)
  %write_date = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0, i32 0, i32 3
  %99 = ptrtoint ptr %write_date to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %write_date, align 4
  %100 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %i_sb, align 4
  %i_atime = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 15
  %102 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %i_atime, align 8
  %s_fs_info.i.i166 = getelementptr inbounds %struct.super_block, ptr %101, i32 0, i32 33
  %104 = ptrtoint ptr %s_fs_info.i.i166 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %s_fs_info.i.i166, align 16
  %sb_timeshift.i167 = getelementptr inbounds %struct.hpfs_sb_info, ptr %105, i32 0, i32 17
  %106 = ptrtoint ptr %sb_timeshift.i167 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sb_timeshift.i167, align 4
  %conv15.i168 = zext i32 %107 to i64
  %108 = add nuw nsw i64 %conv4.i, %conv15.i168
  %sub2.i169 = sub i64 %103, %108
  %conv3.i170 = trunc i64 %sub2.i169 to i32
  %109 = call i32 @llvm.bswap.i32(i32 %conv3.i170)
  %read_date = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0, i32 0, i32 5
  %110 = ptrtoint ptr %read_date to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %read_date, align 4
  %111 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i_sb, align 4
  %i_ctime = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 17
  %113 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %i_ctime, align 8
  %s_fs_info.i.i173 = getelementptr inbounds %struct.super_block, ptr %112, i32 0, i32 33
  %115 = ptrtoint ptr %s_fs_info.i.i173 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %s_fs_info.i.i173, align 16
  %sb_timeshift.i174 = getelementptr inbounds %struct.hpfs_sb_info, ptr %116, i32 0, i32 17
  %117 = ptrtoint ptr %sb_timeshift.i174 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %sb_timeshift.i174, align 4
  %conv15.i175 = zext i32 %118 to i64
  %119 = add nuw nsw i64 %conv4.i, %conv15.i175
  %sub2.i176 = sub i64 %114, %119
  %conv3.i177 = trunc i64 %sub2.i176 to i32
  %120 = call i32 @llvm.bswap.i32(i32 %conv3.i177)
  %creation_date = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0, i32 0, i32 6
  %121 = ptrtoint ptr %creation_date to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %creation_date, align 4
  %122 = ptrtoint ptr %i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %i, align 8
  %124 = and i16 %123, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %tobool58.not = icmp eq i16 %124, 0
  %read_only = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0, i32 0, i32 1
  %125 = zext i1 %tobool58.not to i16
  %126 = ptrtoint ptr %read_only to i32
  call void @__asan_load2_noabort(i32 %126)
  %bf.load = load i16, ptr %read_only, align 2
  %bf.clear = and i16 %bf.load, -2
  %bf.set = or i16 %bf.clear, %125
  store i16 %bf.set, ptr %read_only, align 2
  %i_ea_size = getelementptr i8, ptr %i, i32 -12
  %127 = ptrtoint ptr %i_ea_size to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %i_ea_size, align 4
  %129 = call i32 @llvm.bswap.i32(i32 %128)
  %ea_size = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0, i32 0, i32 7
  %130 = ptrtoint ptr %ea_size to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %ea_size, align 4
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh) #7
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #7
  br label %if.end60

if.end60:                                         ; preds = %if.then46, %hpfs_write_inode_ea.exit.if.end60_crit_edge
  %131 = ptrtoint ptr %i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %i, align 8
  %133 = and i16 %132, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %133)
  %cmp64 = icmp eq i16 %133, 16384
  br i1 %cmp64, label %if.then66, label %if.end60.if.end104_crit_edge

if.end60.if.end104_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then66:                                        ; preds = %if.end60
  %i_dno = getelementptr i8, ptr %i, i32 -36
  %134 = ptrtoint ptr %i_dno to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %i_dno, align 4
  %call67 = call ptr @map_dirent(ptr noundef %i, i32 noundef %135, ptr noundef nonnull @.str.8, i32 noundef 2, ptr noundef null, ptr noundef nonnull %qbh) #7
  %tobool68.not = icmp eq ptr %call67, null
  %136 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %i_sb, align 4
  br i1 %tobool68.not, label %if.else100, label %if.then69

if.then69:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  %i_mtime71 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 16
  %138 = ptrtoint ptr %i_mtime71 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %i_mtime71, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %140 = load i32, ptr @sys_tz, align 4
  %mul.i178 = mul i32 %140, 60
  %conv4.i179 = zext i32 %mul.i178 to i64
  %s_fs_info.i.i180 = getelementptr inbounds %struct.super_block, ptr %137, i32 0, i32 33
  %141 = ptrtoint ptr %s_fs_info.i.i180 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %s_fs_info.i.i180, align 16
  %sb_timeshift.i181 = getelementptr inbounds %struct.hpfs_sb_info, ptr %142, i32 0, i32 17
  %143 = ptrtoint ptr %sb_timeshift.i181 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %sb_timeshift.i181, align 4
  %conv15.i182 = zext i32 %144 to i64
  %145 = add nuw nsw i64 %conv4.i179, %conv15.i182
  %sub2.i183 = sub i64 %139, %145
  %conv3.i184 = trunc i64 %sub2.i183 to i32
  %146 = call i32 @llvm.bswap.i32(i32 %conv3.i184)
  %write_date74 = getelementptr inbounds %struct.hpfs_dirent, ptr %call67, i32 0, i32 3
  %147 = ptrtoint ptr %write_date74 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %write_date74, align 4
  %148 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %i_sb, align 4
  %i_atime76 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 15
  %150 = ptrtoint ptr %i_atime76 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %i_atime76, align 8
  %s_fs_info.i.i187 = getelementptr inbounds %struct.super_block, ptr %149, i32 0, i32 33
  %152 = ptrtoint ptr %s_fs_info.i.i187 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %s_fs_info.i.i187, align 16
  %sb_timeshift.i188 = getelementptr inbounds %struct.hpfs_sb_info, ptr %153, i32 0, i32 17
  %154 = ptrtoint ptr %sb_timeshift.i188 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %sb_timeshift.i188, align 4
  %conv15.i189 = zext i32 %155 to i64
  %156 = add nuw nsw i64 %conv4.i179, %conv15.i189
  %sub2.i190 = sub i64 %151, %156
  %conv3.i191 = trunc i64 %sub2.i190 to i32
  %157 = call i32 @llvm.bswap.i32(i32 %conv3.i191)
  %read_date79 = getelementptr inbounds %struct.hpfs_dirent, ptr %call67, i32 0, i32 5
  %158 = ptrtoint ptr %read_date79 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %read_date79, align 4
  %159 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %i_sb, align 4
  %i_ctime81 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 17
  %161 = ptrtoint ptr %i_ctime81 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %i_ctime81, align 8
  %s_fs_info.i.i194 = getelementptr inbounds %struct.super_block, ptr %160, i32 0, i32 33
  %163 = ptrtoint ptr %s_fs_info.i.i194 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %s_fs_info.i.i194, align 16
  %sb_timeshift.i195 = getelementptr inbounds %struct.hpfs_sb_info, ptr %164, i32 0, i32 17
  %165 = ptrtoint ptr %sb_timeshift.i195 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %sb_timeshift.i195, align 4
  %conv15.i196 = zext i32 %166 to i64
  %167 = add nuw nsw i64 %conv4.i179, %conv15.i196
  %sub2.i197 = sub i64 %162, %167
  %conv3.i198 = trunc i64 %sub2.i197 to i32
  %168 = call i32 @llvm.bswap.i32(i32 %conv3.i198)
  %creation_date84 = getelementptr inbounds %struct.hpfs_dirent, ptr %call67, i32 0, i32 6
  %169 = ptrtoint ptr %creation_date84 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %creation_date84, align 4
  %170 = ptrtoint ptr %i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %i, align 8
  %172 = and i16 %171, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %172)
  %tobool88.not = icmp eq i16 %172, 0
  %read_only92 = getelementptr inbounds %struct.hpfs_dirent, ptr %call67, i32 0, i32 1
  %173 = zext i1 %tobool88.not to i16
  %174 = ptrtoint ptr %read_only92 to i32
  call void @__asan_load2_noabort(i32 %174)
  %bf.load93 = load i16, ptr %read_only92, align 2
  %bf.clear95 = and i16 %bf.load93, -2
  %bf.set96 = or i16 %bf.clear95, %173
  store i16 %bf.set96, ptr %read_only92, align 2
  %ea_size98 = getelementptr inbounds %struct.hpfs_dirent, ptr %call67, i32 0, i32 7
  %175 = ptrtoint ptr %ea_size98 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %ea_size98, align 4
  %file_size99 = getelementptr inbounds %struct.hpfs_dirent, ptr %call67, i32 0, i32 4
  %176 = ptrtoint ptr %file_size99 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %file_size99, align 4
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh) #7
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #7
  br label %if.end104

if.else100:                                       ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  %177 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %137, ptr noundef nonnull @.str.9, i32 noundef %178) #7
  br label %if.end104

if.end104:                                        ; preds = %if.else100, %if.then69, %if.end60.if.end104_crit_edge
  %179 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %180) #7
  %181 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %bh, align 4
  %tobool.not.i199 = icmp eq ptr %182, null
  br i1 %tobool.not.i199, label %if.end104.cleanup_crit_edge, label %if.end104.cleanup.sink.split_crit_edge

if.end104.cleanup.sink.split_crit_edge:           ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end104.cleanup.sink.split_crit_edge, %if.then18.cleanup.sink.split_crit_edge
  %.sink208 = phi ptr [ %22, %if.then18.cleanup.sink.split_crit_edge ], [ %182, %if.end104.cleanup.sink.split_crit_edge ]
  call void @__brelse(ptr noundef nonnull %.sink208) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end104.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_fnode_dirent(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_mark_4buffers_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_brelse4(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_dirent(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #7
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %sb_root = getelementptr inbounds %struct.hpfs_sb_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %sb_root to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sb_root, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %13)
  %cmp = icmp eq i32 %7, %13
  br i1 %cmp, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %attr, align 8
  %and = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %16 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack67 = load i32, ptr %ia_uid, align 8
  %17 = insertvalue [1 x i32] undef, i32 %.unpack67, 0
  %call3 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call3)
  %cmp4 = icmp ugt i32 %call3, 65535
  br i1 %cmp4, label %land.lhs.true.out_unlock_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %18 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %attr, align 8
  %and8 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end15_crit_edge, label %land.lhs.true10

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true10:                                  ; preds = %if.end6
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %20 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack = load i32, ptr %ia_gid, align 4
  %21 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call12 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call12)
  %cmp13 = icmp ugt i32 %call12, 65535
  br i1 %cmp13, label %land.lhs.true10.out_unlock_crit_edge, label %land.lhs.true10.if.end15_crit_edge

land.lhs.true10.if.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true10.out_unlock_crit_edge:             ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end15:                                         ; preds = %land.lhs.true10.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  %22 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %attr, align 8
  %and17 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end22_crit_edge, label %land.lhs.true19

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.lhs.true19:                                  ; preds = %if.end15
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %24 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ia_size, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %26 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %27)
  %cmp20 = icmp sgt i64 %25, %27
  br i1 %cmp20, label %land.lhs.true19.out_unlock_crit_edge, label %land.lhs.true19.if.end22_crit_edge

land.lhs.true19.if.end22_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.lhs.true19.out_unlock_crit_edge:             ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end22:                                         ; preds = %land.lhs.true19.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %call23 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.out_unlock_crit_edge

if.end22.out_unlock_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end26:                                         ; preds = %if.end22
  %28 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %attr, align 8
  %and28 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end41_crit_edge, label %land.lhs.true30

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

land.lhs.true30:                                  ; preds = %if.end26
  %ia_size31 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %30 = ptrtoint ptr %ia_size31 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ia_size31, align 8
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %land.lhs.true30
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !30
  %and.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %33 = tail call ptr @llvm.returnaddress(i32 0) #7
  %34 = ptrtoint ptr %33 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %34) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %34) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = tail call ptr @llvm.returnaddress(i32 0) #7
  %36 = ptrtoint ptr %35 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %36) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %36) #7
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !31
  %and.i.i.i.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !32

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #7, !srcloc !33
  %38 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !35
  %40 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %41, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %39, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %41, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !36
  %42 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !37
  %44 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %45, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %43)
  %cmp33.not = icmp eq i64 %31, %43
  br i1 %cmp33.not, label %i_size_read.exit.if.end41_crit_edge, label %if.then34

i_size_read.exit.if.end41_crit_edge:              ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then34:                                        ; preds = %i_size_read.exit
  %46 = ptrtoint ptr %ia_size31 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ia_size31, align 8
  %call36 = tail call i32 @inode_newsize_ok(ptr noundef %1, i64 noundef %47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.then34.out_unlock_crit_edge

if.then34.out_unlock_crit_edge:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end39:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %ia_size31 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %ia_size31, align 8
  tail call void @truncate_setsize(ptr noundef %1, i64 noundef %49) #7
  tail call void @hpfs_truncate(ptr noundef %1) #7
  br label %if.end41

if.end41:                                         ; preds = %if.end39, %i_size_read.exit.if.end41_crit_edge, %if.end26.if.end41_crit_edge
  tail call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %attr) #7
  tail call void @hpfs_write_inode(ptr noundef %1)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end41, %if.then34.out_unlock_crit_edge, %if.end22.out_unlock_crit_edge, %land.lhs.true19.out_unlock_crit_edge, %land.lhs.true10.out_unlock_crit_edge, %land.lhs.true.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %error.1 = phi i32 [ -22, %entry.out_unlock_crit_edge ], [ -22, %land.lhs.true.out_unlock_crit_edge ], [ -22, %land.lhs.true10.out_unlock_crit_edge ], [ -22, %land.lhs.true19.out_unlock_crit_edge ], [ %call23, %if.end22.out_unlock_crit_edge ], [ %call36, %if.then34.out_unlock_crit_edge ], [ 0, %if.end41 ]
  %50 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i68 = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 33
  %52 = ptrtoint ptr %s_fs_info.i.i68 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i.i68, align 16
  tail call void @mutex_unlock(ptr noundef %53) #7
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_truncate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_write_if_changed(ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_dirty = getelementptr i8, ptr %inode, i32 -8
  %0 = ptrtoint ptr %i_dirty to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %i_dirty, align 8
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hpfs_write_inode(ptr noundef %inode)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_evict_inode(ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #7
  tail call void @clear_inode(ptr noundef %inode) #7
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  tail call void @mutex_lock_nested(ptr noundef %6, i32 noundef 0) #7
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  tail call void @hpfs_remove_fnode(ptr noundef %8, i32 noundef %10) #7
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i9 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i9, align 16
  tail call void @mutex_unlock(ptr noundef %14) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_remove_fnode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_set_ea(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hpfs/inode.c", i32 63, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/hpfs/inode.c", i32 70, i32 41}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/hpfs/inode.c", i32 77, i32 41}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hpfs/inode.c", i32 89, i32 41}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/hpfs/inode.c", i32 99, i32 43}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/hpfs/inode.c", i32 189, i32 4}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hpfs_write_inode._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @hpfs_write_inode._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/hpfs/inode.c", i32 242, i32 46}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/hpfs/inode.c", i32 253, i32 5}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
!30 = !{i64 992329, i64 992390}
!31 = !{i64 995061}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{i64 995346}
!34 = !{i64 2153171866}
!35 = !{i64 2153171708}
!36 = !{i64 2153172036}
!37 = !{i64 2149767048}
