; ModuleID = '/llk/IR_all_yes/fs/ntfs/namei.c_pt.bc'
source_filename = "../fs/ntfs/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { ptr }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.ntfs_name = type <{ i64, i8, i8, [0 x i16] }>
%struct.ntfs_attr_search_ctx = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.80 }
%union.anon.80 = type { %struct.anon.82 }
%struct.anon.82 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.anon.81 = type { i32, i16, i8, i8 }
%struct.FILE_NAME_ATTR = type <{ i64, i64, i64, i64, i64, i64, i64, i32, %union.anon.83, i8, i8, [0 x i16] }>
%union.anon.83 = type { %struct.anon.85 }
%struct.anon.85 = type { i32 }
%struct.anon.3 = type { i32, i32 }

@ntfs_dir_inode_ops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @ntfs_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@ntfs_export_ops = dso_local constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr null, ptr @ntfs_fh_to_dentry, ptr @ntfs_fh_to_parent, ptr null, ptr @ntfs_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ntfs/namei.c\00", [16 x i8] zeroinitializer }, align 32
@__func__.ntfs_lookup = private unnamed_addr constant [12 x i8] c"ntfs_lookup\00", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Looking up %pd in directory inode 0x%lx.\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to convert name to Unicode.\00", [61 x i8] zeroinitializer }, align 32
@ntfs_name_cache = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Found inode 0x%lx. Calling ntfs_iget.\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Done.  (Case 1.)\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"Found stale reference to inode 0x%lx (reference sequence number = 0x%x, inode sequence number = 0x%x), returning -EIO. Run chkdsk.\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ntfs_iget(0x%lx) failed with error code %li.\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Entry was not found, adding negative dentry.\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Done.\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ntfs_lookup_ino_by_name() failed with error code %i.\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Case 2.\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Case 3.\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Inode corrupt: No WIN32 namespace counterpart to DOS file name. Run chkdsk.\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Illegal file name attribute. Run chkdsk.\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed, returning error code %i.\00", [63 x i8] zeroinitializer }, align 32
@__func__.ntfs_get_parent = private unnamed_addr constant [16 x i8] c"ntfs_get_parent\00", align 1
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Entering for inode 0x%lx.\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Inode 0x%lx does not have a file name attribute.  Run chkdsk.\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"ntfs_export_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 386, i32 32 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 100, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 107, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 116, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 125, i32 6 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 134, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 143, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 152, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 155, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 158, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 172, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 180, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 204, i32 5 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 249, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 257, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 297, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [19 x i8] c"../fs/ntfs/namei.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 315, i32 4 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @ntfs_export_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ntfs_lookup(ptr noundef %dir_ino, ptr noundef %dent, i32 noundef %flags) #0 align 64 {
entry:
  %uname = alloca ptr, align 4
  %name = alloca ptr, align 4
  %nls_name = alloca %struct.qstr, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir_ino, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uname) #5
  %4 = ptrtoint ptr %uname to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %uname, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #5
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %name, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir_ino, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 101, ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef nonnull @.str.1, ptr noundef %dent, i32 noundef %7) #5
  %d_name = getelementptr inbounds %struct.dentry, ptr %dent, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dent, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name1, align 8
  %10 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %d_name, align 8
  %call3 = call i32 @ntfs_nlstoucs(ptr noundef %3, ptr noundef %9, i32 noundef %11, ptr noundef nonnull %uname) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -36, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, -36
  br i1 %cmp4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef %13, ptr noundef nonnull @.str.2) #5
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %14 = inttoptr i32 %call3 to ptr
  br label %cleanup161

if.end7:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dir_ino, i32 -528
  %15 = ptrtoint ptr %uname to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %uname, align 4
  %call9 = call i64 @ntfs_lookup_inode_by_name(ptr noundef %add.ptr.i, ptr noundef %16, i32 noundef %call3, ptr noundef nonnull %name) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_name_cache to i32))
  %17 = load ptr, ptr @ntfs_name_cache, align 4
  %18 = ptrtoint ptr %uname to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %uname, align 4
  call void @kmem_cache_free(ptr noundef %17, ptr noundef %19) #5
  %and = and i64 %call9, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %conv = trunc i64 %call9 to i32
  br i1 %tobool.not, label %if.then10, label %if.end47

if.then10:                                        ; preds = %if.end7
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 116, ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef nonnull @.str.3, i32 noundef %conv) #5
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  %call13 = call ptr @ntfs_iget(ptr noundef %21, i32 noundef %conv) #5
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then10
  %call16 = call zeroext i1 @is_bad_inode(ptr noundef %call13) #5
  br i1 %call16, label %if.then15.if.then28_crit_edge, label %lor.lhs.false

if.then15.if.then28_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then28

lor.lhs.false:                                    ; preds = %if.then15
  %shr = lshr i64 %call9, 48
  %conv19 = trunc i64 %shr to i32
  %seq_no = getelementptr i8, ptr %call13, i32 -456
  %22 = ptrtoint ptr %seq_no to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %seq_no, align 8
  %conv22 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv19, i32 %conv22)
  %cmp23 = icmp eq i32 %conv19, %conv22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp26 = icmp eq i32 %conv, 0
  %or.cond = or i1 %cmp26, %cmp23
  br i1 %or.cond, label %lor.lhs.false.if.then28_crit_edge, label %if.end33

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %if.then15.if.then28_crit_edge
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  %tobool29.not = icmp eq ptr %25, null
  br i1 %tobool29.not, label %if.then30, label %handle_name

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 125, ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef nonnull @.str.4) #5
  %call31 = call ptr @d_splice_alias(ptr noundef %call13, ptr noundef %dent) #5
  br label %cleanup161

if.end33:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef %27, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv19, i32 noundef %conv22) #5
  call void @iput(ptr noundef %call13) #5
  br label %if.end45

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 8
  %30 = ptrtoint ptr %call13 to i32
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef %29, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %30) #5
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.end33
  %dent_inode.0 = phi ptr [ %call13, %if.else ], [ inttoptr (i32 -5 to ptr), %if.end33 ]
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 4
  call void @kfree(ptr noundef %32) #5
  br label %cleanup161

if.end47:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %conv)
  %cmp49 = icmp eq i32 %conv, -2
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 152, ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef nonnull @.str.7) #5
  call void @d_add(ptr noundef %dent, ptr noundef null) #5
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 155, ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef nonnull @.str.8) #5
  br label %cleanup161

if.end52:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 8
  %sub = sub i32 0, %conv
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef %34, ptr noundef nonnull @.str.9, i32 noundef %sub) #5
  %35 = inttoptr i32 %conv to ptr
  br label %cleanup161

handle_name:                                      ; preds = %if.then28
  %add.ptr.i239 = getelementptr i8, ptr %call13, i32 -528
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nls_name) #5
  %36 = call ptr @memset(ptr %nls_name, i32 255, i32 16)
  %name58 = getelementptr inbounds %struct.qstr, ptr %nls_name, i32 0, i32 1
  %37 = ptrtoint ptr %name58 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %name58, align 8
  %type = getelementptr inbounds %struct.ntfs_name, ptr %25, i32 0, i32 1
  %38 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp60.not = icmp eq i8 %39, 2
  br i1 %cmp60.not, label %if.else69, label %if.then62

if.then62:                                        ; preds = %handle_name
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 172, ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef nonnull @.str.10) #5
  %40 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name, align 4
  %name63 = getelementptr inbounds %struct.ntfs_name, ptr %41, i32 0, i32 3
  %len64 = getelementptr inbounds %struct.ntfs_name, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %len64 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %len64, align 1
  %conv65 = zext i8 %43 to i32
  %call67 = call i32 @ntfs_ucstonls(ptr noundef %3, ptr noundef %name63, i32 noundef %conv65, ptr noundef %name58, i32 noundef 0) #5
  %44 = ptrtoint ptr %nls_name to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call67, ptr %nls_name, align 8
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 4
  call void @kfree(ptr noundef %46) #5
  br label %if.end135

if.else69:                                        ; preds = %handle_name
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef nonnull @.str.11) #5
  %47 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name, align 4
  call void @kfree(ptr noundef %48) #5
  %call71 = call ptr @map_mft_record(ptr noundef %add.ptr.i239) #5
  %cmp.i241 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i241, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %call71 to i32
  br label %if.end153

if.end75:                                         ; preds = %if.else69
  %call76 = call ptr @ntfs_attr_get_search_ctx(ptr noundef %add.ptr.i239, ptr noundef %call71) #5
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %if.end75.if.end150_crit_edge, label %do.body.preheader, !prof !49

if.end75.if.end150_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end150

do.body.preheader:                                ; preds = %if.end75
  %attr = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call76, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %call83 = call i32 @ntfs_attr_lookup(i32 noundef 805306368, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call76) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end97, label %cleanup132.thread269, !prof !50

cleanup132.thread269:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef %51, ptr noundef nonnull @.str.12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call83)
  %cmp93 = icmp eq i32 %call83, -2
  %spec.store.select = select i1 %cmp93, i32 -5, i32 %call83
  br label %if.then149

if.end97:                                         ; preds = %do.body
  %52 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %attr, align 4
  %non_resident = getelementptr inbounds %struct.ATTR_RECORD, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %non_resident to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %non_resident, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool99.not = icmp eq i8 %55, 0
  br i1 %tobool99.not, label %lor.lhs.false100, label %if.end97.eio_err_out_crit_edge

if.end97.eio_err_out_crit_edge:                   ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %eio_err_out

lor.lhs.false100:                                 ; preds = %if.end97
  %flags101 = getelementptr inbounds %struct.ATTR_RECORD, ptr %53, i32 0, i32 5
  %56 = ptrtoint ptr %flags101 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %flags101, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool103.not = icmp eq i16 %57, 0
  br i1 %tobool103.not, label %if.end105, label %lor.lhs.false100.eio_err_out_crit_edge

lor.lhs.false100.eio_err_out_crit_edge:           ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #7
  br label %eio_err_out

if.end105:                                        ; preds = %lor.lhs.false100
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %53, i32 0, i32 7
  %58 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %data, align 1
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  %value_offset = getelementptr inbounds %struct.anon.81, ptr %data, i32 0, i32 1
  %61 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %value_offset, align 1
  %63 = call i16 @llvm.bswap.i16(i16 %62)
  %conv107 = zext i16 %63 to i32
  %add = add i32 %60, %conv107
  %length = getelementptr inbounds %struct.ATTR_RECORD, ptr %53, i32 0, i32 1
  %64 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %length, align 1
  %66 = call i32 @llvm.bswap.i32(i32 %65)
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %66)
  %cmp108 = icmp ugt i32 %add, %66
  br i1 %cmp108, label %if.end105.eio_err_out_crit_edge, label %cleanup

if.end105.eio_err_out_crit_edge:                  ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %eio_err_out

cleanup:                                          ; preds = %if.end105
  %add.ptr = getelementptr i8, ptr %53, i32 %conv107
  %file_name_length = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %add.ptr, i32 0, i32 9
  %67 = ptrtoint ptr %file_name_length to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %file_name_length, align 1
  %conv117 = zext i8 %68 to i32
  %mul = shl nuw nsw i32 %conv117, 1
  %add118 = add nuw nsw i32 %mul, 66
  call void @__sanitizer_cov_trace_cmp4(i32 %add118, i32 %60)
  %cmp119 = icmp ugt i32 %add118, %60
  br i1 %cmp119, label %cleanup.eio_err_out_crit_edge, label %do.cond

cleanup.eio_err_out_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %eio_err_out

do.cond:                                          ; preds = %cleanup
  %file_name_type = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %add.ptr, i32 0, i32 10
  %69 = ptrtoint ptr %file_name_type to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %file_name_type, align 1
  %cmp125.not = icmp eq i8 %70, 1
  br i1 %cmp125.not, label %cleanup132.thread250, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

cleanup132.thread250:                             ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  %file_name_length.le = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %add.ptr, i32 0, i32 9
  %file_name = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %add.ptr, i32 0, i32 11
  %71 = ptrtoint ptr %file_name_length.le to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %file_name_length.le, align 1
  %conv128 = zext i8 %72 to i32
  %call130 = call i32 @ntfs_ucstonls(ptr noundef %3, ptr noundef %file_name, i32 noundef %conv128, ptr noundef %name58, i32 noundef 0) #5
  %73 = ptrtoint ptr %nls_name to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call130, ptr %nls_name, align 8
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call76) #5
  call void @unmap_mft_record(ptr noundef %add.ptr.i239) #5
  br label %if.end135

if.end135:                                        ; preds = %cleanup132.thread250, %if.then62
  %74 = ptrtoint ptr %nls_name to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nls_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp137 = icmp slt i32 %75, 0
  br i1 %cmp137, label %if.end135.if.end153_crit_edge, label %if.end141

if.end135.if.end153_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153

if.end141:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %name58 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %name58, align 8
  %call144 = call i32 @full_name_hash(ptr noundef %dent, ptr noundef %77, i32 noundef %75) #8
  %hash = getelementptr inbounds %struct.anon.3, ptr %nls_name, i32 0, i32 1
  %78 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call144, ptr %hash, align 4
  %call145 = call ptr @d_add_ci(ptr noundef %dent, ptr noundef %call13, ptr noundef nonnull %nls_name) #5
  %79 = ptrtoint ptr %name58 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name58, align 8
  call void @kfree(ptr noundef %80) #5
  br label %cleanup156

eio_err_out:                                      ; preds = %cleanup.eio_err_out_crit_edge, %if.end105.eio_err_out_crit_edge, %lor.lhs.false100.eio_err_out_crit_edge, %if.end97.eio_err_out_crit_edge
  %81 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef %82, ptr noundef nonnull @.str.13) #5
  br label %if.then149

if.then149:                                       ; preds = %eio_err_out, %cleanup132.thread269
  %err.2 = phi i32 [ -5, %eio_err_out ], [ %spec.store.select, %cleanup132.thread269 ]
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call76) #5
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %if.end75.if.end150_crit_edge
  %err.2260 = phi i32 [ %err.2, %if.then149 ], [ -12, %if.end75.if.end150_crit_edge ]
  %tobool151.not = icmp eq ptr %call71, null
  br i1 %tobool151.not, label %if.end150.if.end153_crit_edge, label %if.then152

if.end150.if.end153_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153

if.then152:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #7
  call void @unmap_mft_record(ptr noundef %add.ptr.i239) #5
  br label %if.end153

if.end153:                                        ; preds = %if.then152, %if.end150.if.end153_crit_edge, %if.end135.if.end153_crit_edge, %if.then73
  %err.2260277 = phi i32 [ %err.2260, %if.then152 ], [ %err.2260, %if.end150.if.end153_crit_edge ], [ %49, %if.then73 ], [ %75, %if.end135.if.end153_crit_edge ]
  call void @iput(ptr noundef %call13) #5
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef %84, ptr noundef nonnull @.str.14, i32 noundef %err.2260277) #5
  %85 = inttoptr i32 %err.2260277 to ptr
  br label %cleanup156

cleanup156:                                       ; preds = %if.end153, %if.end141
  %retval.0 = phi ptr [ %85, %if.end153 ], [ %call145, %if.end141 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nls_name) #5
  br label %cleanup161

cleanup161:                                       ; preds = %cleanup156, %if.end52, %if.then51, %if.end45, %if.then30, %if.end
  %retval.1 = phi ptr [ %14, %if.end ], [ null, %if.then51 ], [ %35, %if.end52 ], [ %dent_inode.0, %if.end45 ], [ %retval.0, %cleanup156 ], [ %call31, %if.then30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uname) #5
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ntfs_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @ntfs_nfs_get_inode) #5
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ntfs_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @ntfs_nfs_get_inode) #5
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ntfs_get_parent(ptr nocapture noundef readonly %child_dent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child_dent, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -528
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 297, ptr noundef nonnull @__func__.ntfs_get_parent, ptr noundef nonnull @.str.15, i32 noundef %3) #5
  %call2 = tail call ptr @map_mft_record(ptr noundef %add.ptr.i) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %add.ptr.i, ptr noundef %call2) #5
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.then9, label %try_next.preheader, !prof !49

try_next.preheader:                               ; preds = %if.end
  %call1283 = tail call i32 @ntfs_attr_lookup(i32 noundef 805306368, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1283)
  %tobool13.not84 = icmp eq i32 %call1283, 0
  br i1 %tobool13.not84, label %if.end25.lr.ph, label %try_next.preheader.if.then20_crit_edge, !prof !50

try_next.preheader.if.then20_crit_edge:           ; preds = %try_next.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

if.end25.lr.ph:                                   ; preds = %try_next.preheader
  %attr26 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call5, i32 0, i32 1
  br label %if.end25

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i) #5
  br label %cleanup

if.then20:                                        ; preds = %try_next.backedge.if.then20_crit_edge, %try_next.preheader.if.then20_crit_edge
  %call12.lcssa = phi i32 [ %call1283, %try_next.preheader.if.then20_crit_edge ], [ %call12, %try_next.backedge.if.then20_crit_edge ]
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call5) #5
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call12.lcssa)
  %cmp = icmp eq i32 %call12.lcssa, -2
  br i1 %cmp, label %if.then21, label %if.then20.if.end23_crit_edge

if.then20.if.end23_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then21:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_get_parent, ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef %7) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then20.if.end23_crit_edge
  %8 = inttoptr i32 %call12.lcssa to ptr
  br label %cleanup

if.end25:                                         ; preds = %try_next.backedge.if.end25_crit_edge, %if.end25.lr.ph
  %9 = ptrtoint ptr %attr26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attr26, align 4
  %non_resident = getelementptr inbounds %struct.ATTR_RECORD, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %non_resident to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %non_resident, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool27.not = icmp eq i8 %12, 0
  br i1 %tobool27.not, label %if.end35, label %if.end25.try_next.backedge_crit_edge, !prof !50

if.end25.try_next.backedge_crit_edge:             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %try_next.backedge

try_next.backedge:                                ; preds = %if.end35.try_next.backedge_crit_edge, %if.end25.try_next.backedge_crit_edge
  %call12 = tail call i32 @ntfs_attr_lookup(i32 noundef 805306368, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call5) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %try_next.backedge.if.end25_crit_edge, label %try_next.backedge.if.then20_crit_edge, !prof !50

try_next.backedge.if.then20_crit_edge:            ; preds = %try_next.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

try_next.backedge.if.end25_crit_edge:             ; preds = %try_next.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end35:                                         ; preds = %if.end25
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %10, i32 0, i32 7
  %value_offset = getelementptr inbounds %struct.anon.81, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %value_offset, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv = zext i16 %15 to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  %16 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %data, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %add.ptr37 = getelementptr i8, ptr %add.ptr, i32 %18
  %length = getelementptr inbounds %struct.ATTR_RECORD, ptr %10, i32 0, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %length, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %add.ptr38 = getelementptr i8, ptr %10, i32 %21
  %cmp39 = icmp ugt ptr %add.ptr37, %add.ptr38
  br i1 %cmp39, label %if.end35.try_next.backedge_crit_edge, label %if.end48, !prof !49

if.end35.try_next.backedge_crit_edge:             ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %try_next.backedge

if.end48:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %add.ptr, align 1
  %24 = and i64 %23, -65536
  %25 = tail call i64 @llvm.bswap.i64(i64 %24)
  %conv49 = trunc i64 %25 to i32
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call5) #5
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i) #5
  %i_sb50 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb50, align 4
  %call51 = tail call ptr @ntfs_iget(ptr noundef %27, i32 noundef %conv49) #5
  %call52 = tail call ptr @d_obtain_alias(ptr noundef %call51) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end23, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then9 ], [ %8, %if.end23 ], [ %call52, %if.end48 ], [ %call2, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_nlstoucs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntfs_lookup_inode_by_name(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_iget(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_ucstonls(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_mft_record(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_get_search_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_lookup(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_put_search_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mft_record(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_add_ci(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_dentry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ntfs_nfs_get_inode(ptr noundef %sb, i64 noundef %ino, i32 noundef %generation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %ino to i32
  %call = tail call ptr @ntfs_iget(ptr noundef %sb, i32 noundef %conv) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %call2 = tail call zeroext i1 @is_bad_inode(ptr noundef %call) #5
  br i1 %call2, label %if.then.if.then5_crit_edge, label %lor.lhs.false

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.then
  %i_generation = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 49
  %0 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_generation, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %generation)
  %cmp.not = icmp eq i32 %1, %generation
  br i1 %cmp.not, label %lor.lhs.false.if.end7_crit_edge, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.then.if.then5_crit_edge
  tail call void @iput(ptr noundef %call) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %lor.lhs.false.if.end7_crit_edge, %entry.if.end7_crit_edge
  %inode.0 = phi ptr [ %call, %entry.if.end7_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.then5 ], [ %call, %lor.lhs.false.if.end7_crit_edge ]
  ret ptr %inode.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_parent(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @ntfs_dir_inode_ops, !1, !"ntfs_dir_inode_ops", i1 false, i1 false}
!1 = !{!"../fs/ntfs/namei.c", i32 265, i32 31}
!2 = !{ptr @ntfs_export_ops, !3, !"ntfs_export_ops", i1 false, i1 false}
!3 = !{!"../fs/ntfs/namei.c", i32 386, i32 32}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ntfs/namei.c", i32 100, i32 2}
!6 = !{ptr @__func__.ntfs_lookup, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ntfs/namei.c", i32 107, i32 4}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ntfs/namei.c", i32 116, i32 3}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ntfs/namei.c", i32 125, i32 6}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ntfs/namei.c", i32 134, i32 4}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ntfs/namei.c", i32 143, i32 4}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ntfs/namei.c", i32 152, i32 3}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ntfs/namei.c", i32 155, i32 3}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ntfs/namei.c", i32 158, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ntfs/namei.c", i32 172, i32 3}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ntfs/namei.c", i32 180, i32 3}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ntfs/namei.c", i32 204, i32 5}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ntfs/namei.c", i32 249, i32 2}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ntfs/namei.c", i32 257, i32 2}
!34 = !{ptr @__func__.ntfs_get_parent, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ntfs/namei.c", i32 297, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ntfs/namei.c", i32 315, i32 4}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{!"branch_weights", i32 2000, i32 1}
