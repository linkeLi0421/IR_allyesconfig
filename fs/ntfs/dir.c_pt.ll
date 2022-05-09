; ModuleID = '/llk/IR_all_yes/fs/ntfs/dir.c_pt.bc'
source_filename = "../fs/ntfs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.65 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { i32 }
%struct._ntfs_inode = type { %struct.rwlock_t, i64, i64, i32, i32, i16, %struct.atomic_t, ptr, i32, ptr, i32, %struct.runlist, %struct.mutex, ptr, i32, i32, ptr, %struct.runlist, %union.anon.77, %struct.mutex, i32, %union.anon.80 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.runlist = type { ptr, %struct.rw_semaphore }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.77 = type { %struct.anon.79 }
%struct.anon.79 = type { i64, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.80 = type { ptr }
%struct.big_ntfs_inode = type { %struct._ntfs_inode, %struct.inode }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.ntfs_attr_search_ctx = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.89 }
%union.anon.89 = type { %struct.anon.91 }
%struct.anon.91 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.anon.90 = type { i32, i16, i8, i8 }
%struct.INDEX_ROOT = type { i32, i32, i32, i8, [3 x i8], %struct.INDEX_HEADER }
%struct.INDEX_HEADER = type { i32, i32, i32, i8, [3 x i8] }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, i64, i64, i64, i64, i64, i64, ptr, ptr, %struct.rw_semaphore, ptr, i32, ptr, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.INDEX_ENTRY = type <{ %union.anon.81, i16, i16, i16, i16, %union.anon.84 }>
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i64 }
%union.anon.84 = type <{ %struct.GUID, [50 x i8] }>
%struct.GUID = type { i32, i16, i16, [8 x i8] }
%struct.ntfs_name = type <{ i64, i8, i8, [0 x i16] }>
%struct.page = type { i32, %union.anon.5, %union.anon.57, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.57 = type { %struct.atomic_t }
%struct.INDEX_BLOCK = type { i32, i16, i16, i64, i64, %struct.INDEX_HEADER }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.dir_context = type { ptr, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.ntfs_attr = type { i32, ptr, i32, i32 }

@I30 = dso_local global { [5 x i16], [22 x i8] } { [5 x i16] [i16 9216, i16 18688, i16 13056, i16 12288, i16 0], [22 x i8] zeroinitializer }, align 32
@__func__.ntfs_lookup_inode_by_name = private unnamed_addr constant [26 x i8] c"ntfs_lookup_inode_by_name\00", align 1
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"map_mft_record() failed with error code %ld.\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Index root attribute missing in directory inode 0x%lx.\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [171 x i8], [53 x i8] } { [171 x i8] c"Found already allocated name in phase 1. Please run chkdsk and if that doesn't find any errors please report you saw this message to linux-ntfs-dev@lists.sourceforge.net.\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/ntfs/dir.c\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Entry not found.\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"No index allocation attribute but index entry requires one. Directory inode 0x%lx is corrupt or driver bug.\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to map directory index page, error %ld.\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Out of bounds check failed. Corrupt directory inode 0x%lx or driver bug.\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"Directory index record with vcn 0x%llx is corrupt.  Corrupt inode 0x%lx.  Run chkdsk.\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [125 x i8], [35 x i8] } { [125 x i8] c"Actual VCN (0x%llx) of index buffer is different from expected VCN (0x%llx). Directory inode 0x%lx is corrupt or driver bug.\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [159 x i8], [33 x i8] } { [159 x i8] c"Index buffer (VCN 0x%llx) of directory inode 0x%lx has a size (%u) differing from the directory specified size (%u). Directory inode is corrupt or driver bug.\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [139 x i8], [53 x i8] } { [139 x i8] c"Index buffer (VCN 0x%llx) of directory inode 0x%lx crosses page boundary. Impossible! Cannot access! This is probably a bug in the driver.\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Size of index buffer (VCN 0x%llx) of directory inode 0x%lx exceeds maximum size.\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Index entry out of bounds in directory inode 0x%lx.\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [171 x i8], [53 x i8] } { [171 x i8] c"Found already allocated name in phase 2. Please run chkdsk and if that doesn't find any errors please report you saw this message to linux-ntfs-dev@lists.sourceforge.net.\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Index entry with child node found in a leaf node in directory inode 0x%lx.\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Negative child node vcn in directory inode 0x%lx.\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Corrupt directory.  Aborting lookup.\00", [59 x i8] zeroinitializer }, align 32
@ntfs_dir_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @ntfs_readdir, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ntfs_dir_open, ptr null, ptr null, ptr @ntfs_dir_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.19 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__func__.ntfs_readdir = private unnamed_addr constant [13 x i8] c"ntfs_readdir\00", align 1
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Entering for inode 0x%lx, fpos 0x%llx.\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"In index root, offset 0x%zx.\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Inode 0x%lx, getting index bitmap.\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get bitmap attribute.\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Current index allocation position exceeds index bitmap size.\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Reading bitmap with page index 0x%llx, bit ofs 0x%llx\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Reading index bitmap failed.\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Handling index buffer 0x%llx.\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Reading index allocation data failed.\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"Actual VCN (0x%llx) of index buffer is different from expected VCN (0x%llx). Directory inode 0x%lx is corrupt or driver bug. \00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"In index allocation, offset 0x%llx.\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed. Returning error code %i.\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@__func__.ntfs_filldir = private unnamed_addr constant [13 x i8] c"ntfs_filldir\00", align 1
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Skipping DOS name space entry.\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Skipping root directory self reference entry.\00", [50 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Skipping system file.\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Skipping unrepresentable inode 0x%llx.\00", [57 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Calling filldir for %s with len %i, fpos 0x%llx, inode 0x%lx, DT_%s.\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DIR\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"REG\00", [28 x i8] zeroinitializer }, align 32
@__func__.ntfs_dir_fsync = private unnamed_addr constant [15 x i8] c"ntfs_dir_fsync\00", align 1
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Entering for inode 0x%lx.\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Done.\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to f%ssync inode 0x%lx.  Error %u.\00", [54 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@___asan_gen_.57 = private unnamed_addr constant [4 x i8] c"I30\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 23, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 91, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 105, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 203, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 280, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 286, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 311, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 324, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 330, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 336, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 346, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 357, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 366, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 385, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 463, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 536, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 557, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 589, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [13 x i8] c"ntfs_dir_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1528, i32 30 }
@___asan_gen_.118 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 44, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 416, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 788, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 260, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 717, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1105, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1184, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1220, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1223, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1231, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1239, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1246, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1272, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1288, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1316, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1364, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1431, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 3566, i32 25 }
@___asan_gen_.172 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 3571, i32 25 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1023, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1027, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1032, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1039, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1055, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1494, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1518, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [17 x i8] c"../fs/ntfs/dir.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1520, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @I30, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ntfs_dir_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @I30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 171, i32 224, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 159, i32 192, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 139, i32 192, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 171, i32 224, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_dir_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ntfs_lookup_inode_by_name(ptr noundef %dir_ni, ptr noundef %uname, i32 noundef %uname_len, ptr nocapture noundef writeonly %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vol1 = getelementptr inbounds %struct._ntfs_inode, ptr %dir_ni, i32 0, i32 7
  %0 = ptrtoint ptr %vol1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vol1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vfs_inode.i = getelementptr inbounds %struct.big_ntfs_inode, ptr %dir_ni, i32 0, i32 1
  %4 = ptrtoint ptr %vfs_inode.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vfs_inode.i, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp.not = icmp eq i16 %6, 16384
  br i1 %cmp.not, label %do.body12, label %do.body6, !prof !112

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 86, 0\0A.popsection", ""() #9, !srcloc !113
  unreachable

do.body12:                                        ; preds = %entry
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %dir_ni, i32 0, i32 3
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not = icmp eq i32 %9, 0
  br i1 %tobool14.not, label %do.end30, label %do.body22, !prof !112

do.body22:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 87, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

do.end30:                                         ; preds = %do.body12
  %call31 = tail call ptr @map_mft_record(ptr noundef %dir_ni) #9
  %cmp.i820 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i820, label %if.then33, label %if.end37

if.then33:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call31 to i32
  %sub = sub i32 0, %10
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %sub) #9
  %conv36 = sext i32 %10 to i64
  br label %cleanup513

if.end37:                                         ; preds = %do.end30
  %call38 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %dir_ni, ptr noundef %call31) #9
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end37.if.end505_crit_edge, label %if.end49, !prof !115

if.end37.if.end505_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end505

if.end49:                                         ; preds = %if.end37
  %call50 = tail call i32 @ntfs_attr_lookup(i32 noundef -1879048192, ptr noundef nonnull @I30, i32 noundef 4, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call38) #9
  %11 = zext i32 %call50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call50, label %if.end49.err_out_crit_edge [
    i32 0, label %if.end63
    i32 -2, label %err_out.thread.thread871
  ], !prof !116

if.end49.err_out_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

err_out.thread.thread871:                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %mft_no = getelementptr inbounds %struct._ntfs_inode, ptr %dir_ni, i32 0, i32 4
  %12 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mft_no, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %13) #9
  br label %if.then504

if.end63:                                         ; preds = %if.end49
  %attr = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call38, i32 0, i32 1
  %14 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %attr, align 4
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %15, i32 0, i32 7
  %value_offset = getelementptr inbounds %struct.anon.90, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %value_offset, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv65 = zext i16 %18 to i32
  %add.ptr = getelementptr i8, ptr %15, i32 %conv65
  %index = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr, i32 0, i32 5
  %index_length = getelementptr inbounds %struct.INDEX_HEADER, ptr %index, i32 0, i32 1
  %19 = ptrtoint ptr %index_length to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %index_length, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %add.ptr67 = getelementptr i8, ptr %index, i32 %21
  %22 = ptrtoint ptr %index to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %index, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %add.ptr70 = getelementptr i8, ptr %index, i32 %24
  %25 = ptrtoint ptr %call38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call38, align 4
  %cmp711010 = icmp ult ptr %add.ptr70, %26
  %add.ptr731011 = getelementptr i8, ptr %add.ptr70, i32 16
  %cmp741012 = icmp ugt ptr %add.ptr731011, %add.ptr67
  %or.cond1013 = select i1 %cmp711010, i1 true, i1 %cmp741012
  br i1 %or.cond1013, label %if.end63.err_out.thread1162_crit_edge, label %lor.lhs.false76.lr.ph

if.end63.err_out.thread1162_crit_edge:            ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.thread1162

lor.lhs.false76.lr.ph:                            ; preds = %if.end63
  %upcase = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 25
  %upcase_len = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 24
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 2
  br label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %for.inc.lor.lhs.false76_crit_edge, %lor.lhs.false76.lr.ph
  %name.01016 = phi ptr [ null, %lor.lhs.false76.lr.ph ], [ %name.4, %for.inc.lor.lhs.false76_crit_edge ]
  %ie.01014 = phi ptr [ %add.ptr70, %lor.lhs.false76.lr.ph ], [ %add.ptr198, %for.inc.lor.lhs.false76_crit_edge ]
  %key_length = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.01014, i32 0, i32 2
  %27 = ptrtoint ptr %key_length to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %key_length, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %conv77 = zext i16 %29 to i32
  %add.ptr78 = getelementptr i8, ptr %ie.01014, i32 %conv77
  %cmp79 = icmp ugt ptr %add.ptr78, %add.ptr67
  br i1 %cmp79, label %lor.lhs.false76.err_out.thread1162_crit_edge, label %if.end82

lor.lhs.false76.err_out.thread1162_crit_edge:     ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.thread1162

if.end82:                                         ; preds = %lor.lhs.false76
  %flags = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.01014, i32 0, i32 3
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %flags, align 1
  %32 = and i16 %31, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool85.not = icmp eq i16 %32, 0
  br i1 %tobool85.not, label %if.end87, label %if.end82.for.end_crit_edge

if.end82.for.end_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end87:                                         ; preds = %if.end82
  %file_name = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.01014, i32 1
  %file_name_length = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.01014, i32 0, i32 5, i32 1, i32 48
  %33 = ptrtoint ptr %file_name_length to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %file_name_length, align 1
  %conv89 = zext i8 %34 to i32
  %35 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %upcase, align 4
  %37 = ptrtoint ptr %upcase_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %upcase_len, align 8
  %call90 = tail call zeroext i1 @ntfs_are_names_equal(ptr noundef %uname, i32 noundef %uname_len, ptr noundef %file_name, i32 noundef %conv89, i32 noundef 0, ptr noundef %36, i32 noundef %38) #9
  br i1 %call90, label %if.end87.found_it_crit_edge, label %if.end109

if.end87.found_it_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_it

found_it:                                         ; preds = %if.end181.found_it_crit_edge, %if.end87.found_it_crit_edge
  %name.1 = phi ptr [ %name.01016, %if.end87.found_it_crit_edge ], [ %name.4, %if.end181.found_it_crit_edge ]
  %file_name_type = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.01014, i32 0, i32 5, i32 1, i32 49
  %39 = ptrtoint ptr %file_name_type to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %file_name_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp94 = icmp eq i8 %40, 2
  br i1 %cmp94, label %if.then96, label %if.else

if.then96:                                        ; preds = %found_it
  %tobool97.not = icmp eq ptr %name.1, null
  br i1 %tobool97.not, label %if.then98, label %if.then96.if.end103_crit_edge

if.then96.if.end103_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then98:                                        ; preds = %if.then96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3136, i32 noundef 10) #12
  %tobool100.not = icmp eq ptr %call7.i, null
  br i1 %tobool100.not, label %if.then98.err_out.thread_crit_edge, label %if.then98.if.end103_crit_edge

if.then98.if.end103_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then98.err_out.thread_crit_edge:               ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.thread

if.end103:                                        ; preds = %if.then98.if.end103_crit_edge, %if.then96.if.end103_crit_edge
  %name.2 = phi ptr [ %name.1, %if.then96.if.end103_crit_edge ], [ %call7.i, %if.then98.if.end103_crit_edge ]
  %42 = ptrtoint ptr %ie.01014 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %ie.01014, align 1
  %44 = tail call i64 @llvm.bswap.i64(i64 %43)
  %45 = ptrtoint ptr %name.2 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %name.2, align 1
  %type = getelementptr inbounds %struct.ntfs_name, ptr %name.2, i32 0, i32 1
  %46 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %type, align 1
  %len = getelementptr inbounds %struct.ntfs_name, ptr %name.2, i32 0, i32 2
  %47 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %len, align 1
  br label %if.end106

if.else:                                          ; preds = %found_it
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %name.1) #9
  br label %if.end106

if.end106:                                        ; preds = %if.else, %if.end103
  %storemerge = phi ptr [ null, %if.else ], [ %name.2, %if.end103 ]
  %48 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %storemerge, ptr %res, align 4
  %49 = ptrtoint ptr %ie.01014 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %ie.01014, align 1
  %51 = tail call i64 @llvm.bswap.i64(i64 %50)
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call38) #9
  tail call void @unmap_mft_record(ptr noundef %dir_ni) #9
  br label %cleanup513

if.end109:                                        ; preds = %if.end87
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags.i, align 4
  %54 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool111.not = icmp eq i32 %54, 0
  br i1 %tobool111.not, label %land.lhs.true, label %if.end109.if.end166_crit_edge

if.end109.if.end166_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

land.lhs.true:                                    ; preds = %if.end109
  %file_name_type113 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.01014, i32 0, i32 5, i32 1, i32 49
  %55 = ptrtoint ptr %file_name_type113 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %file_name_type113, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool115.not = icmp eq i8 %56, 0
  br i1 %tobool115.not, label %land.lhs.true.if.end166_crit_edge, label %land.lhs.true116

land.lhs.true.if.end166_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

land.lhs.true116:                                 ; preds = %land.lhs.true
  %57 = ptrtoint ptr %file_name_length to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %file_name_length, align 1
  %conv121 = zext i8 %58 to i32
  %59 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %upcase, align 4
  %61 = ptrtoint ptr %upcase_len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %upcase_len, align 8
  %call124 = tail call zeroext i1 @ntfs_are_names_equal(ptr noundef %uname, i32 noundef %uname_len, ptr noundef %file_name, i32 noundef %conv121, i32 noundef 1, ptr noundef %60, i32 noundef %62) #9
  br i1 %call124, label %if.then126, label %land.lhs.true116.if.end166_crit_edge

land.lhs.true116.if.end166_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

if.then126:                                       ; preds = %land.lhs.true116
  %63 = ptrtoint ptr %file_name_type113 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %file_name_type113, align 1
  %65 = ptrtoint ptr %file_name_length to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %file_name_length, align 1
  %tobool133.not = icmp eq ptr %name.01016, null
  br i1 %tobool133.not, label %if.end135, label %cleanup

if.end135:                                        ; preds = %if.then126
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %64)
  %cmp137.not = icmp eq i8 %64, 2
  %conv140 = zext i8 %66 to i32
  %mul = shl nuw nsw i32 %conv140, 1
  %add = add nuw nsw i32 %mul, 10
  %name_size.0 = select i1 %cmp137.not, i32 10, i32 %add
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %name_size.0, i32 noundef 3136) #13
  %tobool143.not = icmp eq ptr %call9.i, null
  br i1 %tobool143.not, label %if.end135.err_out.thread_crit_edge, label %if.end145

if.end135.err_out.thread_crit_edge:               ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.thread

if.end145:                                        ; preds = %if.end135
  %67 = ptrtoint ptr %ie.01014 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 8)
  %68 = load i64, ptr %ie.01014, align 1
  %69 = tail call i64 @llvm.bswap.i64(i64 %68)
  %70 = ptrtoint ptr %call9.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %call9.i, align 128
  %type149 = getelementptr inbounds %struct.ntfs_name, ptr %call9.i, i32 0, i32 1
  %71 = ptrtoint ptr %type149 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %64, ptr %type149, align 8
  %len162 = getelementptr inbounds %struct.ntfs_name, ptr %call9.i, i32 0, i32 2
  br i1 %cmp137.not, label %if.else161, label %if.then153

if.then153:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %len162 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %66, ptr %len162, align 1
  %name155 = getelementptr inbounds %struct.ntfs_name, ptr %call9.i, i32 0, i32 3
  %73 = call ptr @memcpy(ptr %name155, ptr %file_name, i32 %mul)
  br label %cleanup.thread

if.else161:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %len162 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %len162, align 1
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else161, %if.then153
  %75 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call9.i, ptr %res, align 4
  br label %if.end166

cleanup:                                          ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %3, ptr noundef nonnull @.str.2) #9
  br label %err_out.thread1162

if.end166:                                        ; preds = %cleanup.thread, %land.lhs.true116.if.end166_crit_edge, %land.lhs.true.if.end166_crit_edge, %if.end109.if.end166_crit_edge
  %name.4 = phi ptr [ %name.01016, %if.end109.if.end166_crit_edge ], [ %name.01016, %land.lhs.true116.if.end166_crit_edge ], [ %name.01016, %land.lhs.true.if.end166_crit_edge ], [ %call9.i, %cleanup.thread ]
  %76 = ptrtoint ptr %file_name_length to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %file_name_length, align 1
  %conv171 = zext i8 %77 to i32
  %78 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %upcase, align 4
  %80 = ptrtoint ptr %upcase_len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %upcase_len, align 8
  %call174 = tail call i32 @ntfs_collate_names(ptr noundef %uname, i32 noundef %uname_len, ptr noundef %file_name, i32 noundef %conv171, i32 noundef 1, i32 noundef 1, ptr noundef %79, i32 noundef %81) #9
  %82 = zext i32 %call174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call174, label %if.end166.for.inc_crit_edge [
    i32 -1, label %if.end166.for.end_crit_edge
    i32 0, label %if.end181
  ]

if.end166.for.end_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end166.for.inc_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end181:                                        ; preds = %if.end166
  %83 = ptrtoint ptr %file_name_length to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %file_name_length, align 1
  %conv186 = zext i8 %84 to i32
  %85 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %upcase, align 4
  %87 = ptrtoint ptr %upcase_len to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %upcase_len, align 8
  %call189 = tail call i32 @ntfs_collate_names(ptr noundef %uname, i32 noundef %uname_len, ptr noundef %file_name, i32 noundef %conv186, i32 noundef 1, i32 noundef 0, ptr noundef %86, i32 noundef %88) #9
  %89 = zext i32 %call189 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %call189, label %if.end181.for.inc_crit_edge [
    i32 -1, label %if.end181.for.end_crit_edge
    i32 0, label %if.end181.found_it_crit_edge
  ]

if.end181.found_it_crit_edge:                     ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_it

if.end181.for.end_crit_edge:                      ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end181.for.inc_crit_edge:                      ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end181.for.inc_crit_edge, %if.end166.for.inc_crit_edge
  %length = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.01014, i32 0, i32 1
  %90 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %length, align 1
  %92 = tail call i16 @llvm.bswap.i16(i16 %91)
  %conv197 = zext i16 %92 to i32
  %add.ptr198 = getelementptr i8, ptr %ie.01014, i32 %conv197
  %93 = ptrtoint ptr %call38 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call38, align 4
  %cmp71 = icmp ult ptr %add.ptr198, %94
  %add.ptr73 = getelementptr i8, ptr %add.ptr198, i32 16
  %cmp74 = icmp ugt ptr %add.ptr73, %add.ptr67
  %or.cond = select i1 %cmp71, i1 true, i1 %cmp74
  br i1 %or.cond, label %for.inc.err_out.thread1162_crit_edge, label %for.inc.lor.lhs.false76_crit_edge

for.inc.lor.lhs.false76_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false76

for.inc.err_out.thread1162_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.thread1162

for.end:                                          ; preds = %if.end181.for.end_crit_edge, %if.end166.for.end_crit_edge, %if.end82.for.end_crit_edge
  %name.5 = phi ptr [ %name.01016, %if.end82.for.end_crit_edge ], [ %name.4, %if.end166.for.end_crit_edge ], [ %name.4, %if.end181.for.end_crit_edge ]
  %flags.le = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.01014, i32 0, i32 3
  %95 = ptrtoint ptr %flags.le to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %flags.le, align 1
  %97 = and i16 %96, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool202.not = icmp eq i16 %97, 0
  br i1 %tobool202.not, label %if.then203, label %if.end208

if.then203:                                       ; preds = %for.end
  %tobool204.not = icmp eq ptr %name.5, null
  br i1 %tobool204.not, label %if.end207, label %if.then205

if.then205:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call38) #9
  tail call void @unmap_mft_record(ptr noundef %dir_ni) #9
  %98 = ptrtoint ptr %name.5 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 8)
  %99 = load i64, ptr %name.5, align 1
  br label %cleanup513

if.end207:                                        ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 280, ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef nonnull @.str.4) #9
  br label %err_out.thread

if.end208:                                        ; preds = %for.end
  %100 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %state.i, align 4
  %102 = and i32 %101, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool210.not = icmp eq i32 %102, 0
  br i1 %tobool210.not, label %err_out.thread856, label %if.end213

err_out.thread856:                                ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  %mft_no212 = getelementptr inbounds %struct._ntfs_inode, ptr %dir_ni, i32 0, i32 4
  %103 = ptrtoint ptr %mft_no212 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mft_no212, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %104) #9
  br label %251

if.end213:                                        ; preds = %if.end208
  %length214 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.01014, i32 0, i32 1
  %105 = ptrtoint ptr %length214 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %106 = load i16, ptr %length214, align 1
  %107 = tail call i16 @llvm.bswap.i16(i16 %106)
  %conv215 = zext i16 %107 to i32
  %add.ptr216 = getelementptr i8, ptr %ie.01014, i32 %conv215
  %add.ptr217 = getelementptr i8, ptr %add.ptr216, i32 -8
  %108 = ptrtoint ptr %add.ptr217 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %add.ptr217, align 8
  %110 = tail call i64 @llvm.bswap.i64(i64 %109) #9
  %i_mapping = getelementptr inbounds %struct.big_ntfs_inode, ptr %dir_ni, i32 0, i32 1, i32 9
  %111 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i_mapping, align 8
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call38) #9
  tail call void @unmap_mft_record(ptr noundef %dir_ni) #9
  %itype = getelementptr inbounds %struct._ntfs_inode, ptr %dir_ni, i32 0, i32 18
  %vcn_size_bits = getelementptr inbounds %struct._ntfs_inode, ptr %dir_ni, i32 0, i32 18, i32 0, i32 3
  %113 = ptrtoint ptr %vcn_size_bits to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %vcn_size_bits, align 1
  %sh_prom1031 = zext i8 %114 to i64
  %shl1032 = shl i64 %110, %sh_prom1031
  %115 = lshr i64 %shl1032, 12
  %conv2211033 = trunc i64 %115 to i32
  %call2221034 = tail call fastcc ptr @ntfs_map_page(ptr noundef %112, i32 noundef %conv2211033)
  %cmp.i8271035 = icmp ugt ptr %call2221034, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i8271035, label %if.end213.if.then224_crit_edge, label %if.end228.lr.ph

if.end213.if.then224_crit_edge:                   ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then224

if.end228.lr.ph:                                  ; preds = %if.end213
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 13
  br label %if.end228

if.then224:                                       ; preds = %if.end492.if.then224_crit_edge, %if.end213.if.then224_crit_edge
  %name.6.lcssa = phi ptr [ %name.5, %if.end213.if.then224_crit_edge ], [ %name.13, %if.end492.if.then224_crit_edge ]
  %call222.lcssa = phi ptr [ %call2221034, %if.end213.if.then224_crit_edge ], [ %call222, %if.end492.if.then224_crit_edge ]
  %116 = ptrtoint ptr %call222.lcssa to i32
  %sub226 = sub i32 0, %116
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %sub226) #9
  br label %err_out

if.end228:                                        ; preds = %if.end492.if.end228_crit_edge, %if.end228.lr.ph
  %call2221038 = phi ptr [ %call2221034, %if.end228.lr.ph ], [ %call222, %if.end492.if.end228_crit_edge ]
  %name.61037 = phi ptr [ %name.5, %if.end228.lr.ph ], [ %name.13, %if.end492.if.end228_crit_edge ]
  %vcn.01036 = phi i64 [ %110, %if.end228.lr.ph ], [ %241, %if.end492.if.end228_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 788) #9
  %117 = getelementptr inbounds %struct.page, ptr %call2221038, i32 0, i32 1
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %117, align 4
  %and.i.i = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !112

if.then.i.i:                                      ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %119, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %call2221038 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %120, %if.end.i.i ]
  %121 = inttoptr i32 %retval.0.i.i to ptr
  %122 = getelementptr inbounds %struct.page, ptr %121, i32 0, i32 1
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %122, align 4
  %and.i.i.i.i = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !112

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %125 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %125, ptr noundef nonnull @.str.21) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !117
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %121, i32 noundef 4) #9
  %126 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %121, align 4
  %and.i.i4.i.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i828_crit_edge

folio_flags.exit.i.i.if.then.i828_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i828

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %121, i32 1, i32 3, i32 1) #9
  %128 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %121, ptr %121, i32 1, ptr elementtype(i32) %121) #9, !srcloc !118
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %128, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !119
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i828_crit_edge

folio_trylock.exit.i.if.then.i828_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i828

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i828:                                     ; preds = %folio_trylock.exit.i.if.then.i828_crit_edge, %folio_flags.exit.i.i.if.then.i828_crit_edge
  tail call void @__folio_lock(ptr noundef %121) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i828, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call229 = tail call ptr @page_address(ptr noundef %call2221038) #9
  %add.ptr240 = getelementptr i8, ptr %call229, i32 4096
  br label %fast_descend_into_child_node

fast_descend_into_child_node:                     ; preds = %if.then479.fast_descend_into_child_node_crit_edge, %lock_page.exit
  %vcn.1 = phi i64 [ %vcn.01036, %lock_page.exit ], [ %241, %if.then479.fast_descend_into_child_node_crit_edge ]
  %name.7 = phi ptr [ %name.61037, %lock_page.exit ], [ %name.13, %if.then479.fast_descend_into_child_node_crit_edge ]
  %129 = ptrtoint ptr %vcn_size_bits to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %vcn_size_bits, align 1
  %sh_prom233 = zext i8 %130 to i64
  %shl234 = shl i64 %vcn.1, %sh_prom233
  %131 = trunc i64 %shl234 to i32
  %idx.ext = and i32 %131, 4095
  %add.ptr236 = getelementptr i8, ptr %call229, i32 %idx.ext
  %cmp237 = icmp ult ptr %add.ptr236, %call229
  %cmp241 = icmp ugt ptr %add.ptr236, %add.ptr240
  %or.cond1041 = or i1 %cmp237, %cmp241
  br i1 %or.cond1041, label %if.then243, label %if.end245

if.then243:                                       ; preds = %fast_descend_into_child_node
  call void @__sanitizer_cov_trace_pc() #11
  %mft_no244 = getelementptr inbounds %struct._ntfs_inode, ptr %dir_ni, i32 0, i32 4
  %132 = ptrtoint ptr %mft_no244 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mft_no244, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %133) #9
  br label %unm_err_out

if.end245:                                        ; preds = %fast_descend_into_child_node
  %134 = ptrtoint ptr %add.ptr236 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %add.ptr236, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1229866072, i32 %135)
  %cmp.i830 = icmp eq i32 %135, 1229866072
  br i1 %cmp.i830, label %if.end257, label %if.then255, !prof !112

if.then255:                                       ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #11
  %mft_no256 = getelementptr inbounds %struct._ntfs_inode, ptr %dir_ni, i32 0, i32 4
  %136 = ptrtoint ptr %mft_no256 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mft_no256, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %3, ptr noundef nonnull @.str.8, i64 noundef %vcn.1, i32 noundef %137) #9
  br label %unm_err_out

if.end257:                                        ; preds = %if.end245
  %index_block_vcn = getelementptr inbounds %struct.INDEX_BLOCK, ptr %add.ptr236, i32 0, i32 4
  %138 = ptrtoint ptr %index_block_vcn to i32
  call void @__asan_loadN_noabort(i32 %138, i32 8)
  %139 = load i64, ptr %index_block_vcn, align 1
  %140 = tail call i64 @llvm.bswap.i64(i64 %139) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %140, i64 %vcn.1)
  %cmp259.not = icmp eq i64 %140, %vcn.1
  br i1 %cmp259.not, label %if.end265, label %if.then261

if.then261:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #11
  %mft_no264 = getelementptr inbounds %struct._ntfs_inode, ptr %dir_ni, i32 0, i32 4
  %141 = ptrtoint ptr %mft_no264 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %mft_no264, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %3, ptr noundef nonnull @.str.9, i64 noundef %140, i64 noundef %vcn.1, i32 noundef %142) #9
  br label %unm_err_out

if.end265:                                        ; preds = %if.end257
  %index266 = getelementptr inbounds %struct.INDEX_BLOCK, ptr %add.ptr236, i32 0, i32 5
  %allocated_size = getelementptr inbounds %struct.INDEX_HEADER, ptr %index266, i32 0, i32 2
  %143 = ptrtoint ptr %allocated_size to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %allocated_size, align 1
  %145 = tail call i32 @llvm.bswap.i32(i32 %144)
  %add267 = add i32 %145, 24
  %146 = ptrtoint ptr %itype to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %itype, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add267, i32 %147)
  %cmp269.not = icmp eq i32 %add267, %147
  br i1 %cmp269.not, label %if.end278, label %if.then271

if.then271:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  %mft_no272 = getelementptr inbounds %struct._ntfs_inode, ptr %dir_ni, i32 0, i32 4
  %148 = ptrtoint ptr %mft_no272 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %mft_no272, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %3, ptr noundef nonnull @.str.10, i64 noundef %vcn.1, i32 noundef %149, i32 noundef %add267, i32 noundef %147) #9
  br label %unm_err_out

if.end278:                                        ; preds = %if.end265
  %add.ptr281 = getelementptr i8, ptr %add.ptr236, i32 %add267
  %cmp283 = icmp ugt ptr %add.ptr281, %add.ptr240
  br i1 %cmp283, label %if.then285, label %if.end287

if.then285:                                       ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #11
  %mft_no286 = getelementptr inbounds %struct._ntfs_inode, ptr %dir_ni, i32 0, i32 4
  %150 = ptrtoint ptr %mft_no286 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %mft_no286, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %3, ptr noundef nonnull @.str.11, i64 noundef %vcn.1, i32 noundef %151) #9
  br label %unm_err_out

if.end287:                                        ; preds = %if.end278
  %index_length290 = getelementptr inbounds %struct.INDEX_HEADER, ptr %index266, i32 0, i32 1
  %152 = ptrtoint ptr %index_length290 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %index_length290, align 1
  %154 = tail call i32 @llvm.bswap.i32(i32 %153)
  %add.ptr291 = getelementptr i8, ptr %index266, i32 %154
  %cmp295 = icmp ugt ptr %add.ptr291, %add.ptr281
  br i1 %cmp295, label %if.then297, label %if.end299

if.then297:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #11
  %mft_no298 = getelementptr inbounds %struct._ntfs_inode, ptr %dir_ni, i32 0, i32 4
  %155 = ptrtoint ptr %mft_no298 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %mft_no298, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %3, ptr noundef nonnull @.str.12, i64 noundef %vcn.1, i32 noundef %156) #9
  br label %unm_err_out

if.end299:                                        ; preds = %if.end287
  %157 = ptrtoint ptr %index266 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %index266, align 1
  %159 = tail call i32 @llvm.bswap.i32(i32 %158)
  %add.ptr303 = getelementptr i8, ptr %index266, i32 %159
  %cmp3051018 = icmp ult ptr %add.ptr303, %add.ptr236
  %add.ptr3081019 = getelementptr i8, ptr %add.ptr303, i32 16
  %cmp3091020 = icmp ugt ptr %add.ptr3081019, %add.ptr291
  %or.cond7841021 = select i1 %cmp3051018, i1 true, i1 %cmp3091020
  br i1 %or.cond7841021, label %if.end299.if.then317_crit_edge, label %if.end299.lor.lhs.false311_crit_edge

if.end299.lor.lhs.false311_crit_edge:             ; preds = %if.end299
  br label %lor.lhs.false311

if.end299.if.then317_crit_edge:                   ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then317

lor.lhs.false311:                                 ; preds = %for.inc453.lor.lhs.false311_crit_edge, %if.end299.lor.lhs.false311_crit_edge
  %name.81024 = phi ptr [ %name.12, %for.inc453.lor.lhs.false311_crit_edge ], [ %name.7, %if.end299.lor.lhs.false311_crit_edge ]
  %ie.11022 = phi ptr [ %add.ptr456, %for.inc453.lor.lhs.false311_crit_edge ], [ %add.ptr303, %if.end299.lor.lhs.false311_crit_edge ]
  %key_length312 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.11022, i32 0, i32 2
  %160 = ptrtoint ptr %key_length312 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 2)
  %161 = load i16, ptr %key_length312, align 1
  %162 = tail call i16 @llvm.bswap.i16(i16 %161)
  %conv313 = zext i16 %162 to i32
  %add.ptr314 = getelementptr i8, ptr %ie.11022, i32 %conv313
  %cmp315 = icmp ugt ptr %add.ptr314, %add.ptr291
  br i1 %cmp315, label %lor.lhs.false311.if.then317_crit_edge, label %if.end319

lor.lhs.false311.if.then317_crit_edge:            ; preds = %lor.lhs.false311
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then317

if.then317:                                       ; preds = %for.inc453.if.then317_crit_edge, %lor.lhs.false311.if.then317_crit_edge, %if.end299.if.then317_crit_edge
  %name.8.lcssa = phi ptr [ %name.81024, %lor.lhs.false311.if.then317_crit_edge ], [ %name.12, %for.inc453.if.then317_crit_edge ], [ %name.7, %if.end299.if.then317_crit_edge ]
  %mft_no318 = getelementptr inbounds %struct._ntfs_inode, ptr %dir_ni, i32 0, i32 4
  %163 = ptrtoint ptr %mft_no318 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %mft_no318, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %164) #9
  br label %unm_err_out

if.end319:                                        ; preds = %lor.lhs.false311
  %flags320 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.11022, i32 0, i32 3
  %165 = ptrtoint ptr %flags320 to i32
  call void @__asan_loadN_noabort(i32 %165, i32 2)
  %166 = load i16, ptr %flags320, align 1
  %167 = and i16 %166, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %167)
  %tobool323.not = icmp eq i16 %167, 0
  br i1 %tobool323.not, label %if.end325, label %if.end319.for.end457_crit_edge

if.end319.for.end457_crit_edge:                   ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end457

if.end325:                                        ; preds = %if.end319
  %file_name327 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.11022, i32 1
  %file_name_length329 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.11022, i32 0, i32 5, i32 1, i32 48
  %168 = ptrtoint ptr %file_name_length329 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %file_name_length329, align 1
  %conv330 = zext i8 %169 to i32
  %170 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %upcase, align 4
  %172 = ptrtoint ptr %upcase_len to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %upcase_len, align 8
  %call333 = tail call zeroext i1 @ntfs_are_names_equal(ptr noundef %uname, i32 noundef %uname_len, ptr noundef %file_name327, i32 noundef %conv330, i32 noundef 0, ptr noundef %171, i32 noundef %173) #9
  br i1 %call333, label %if.end325.found_it2_crit_edge, label %if.end357

if.end325.found_it2_crit_edge:                    ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_it2

found_it2:                                        ; preds = %if.end437.found_it2_crit_edge, %if.end325.found_it2_crit_edge
  %name.9 = phi ptr [ %name.81024, %if.end325.found_it2_crit_edge ], [ %name.12, %if.end437.found_it2_crit_edge ]
  %file_name_type336 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.11022, i32 0, i32 5, i32 1, i32 49
  %174 = ptrtoint ptr %file_name_type336 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %file_name_type336, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %175)
  %cmp338 = icmp eq i8 %175, 2
  br i1 %cmp338, label %if.then340, label %if.else353

if.then340:                                       ; preds = %found_it2
  %tobool341.not = icmp eq ptr %name.9, null
  br i1 %tobool341.not, label %if.then342, label %if.then340.if.end347_crit_edge

if.then340.if.end347_crit_edge:                   ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end347

if.then342:                                       ; preds = %if.then340
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %176 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i790 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %176, i32 noundef 3136, i32 noundef 10) #12
  %tobool344.not = icmp eq ptr %call7.i790, null
  br i1 %tobool344.not, label %if.then342.unm_err_out_crit_edge, label %if.then342.if.end347_crit_edge

if.then342.if.end347_crit_edge:                   ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end347

if.then342.unm_err_out_crit_edge:                 ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #11
  br label %unm_err_out

if.end347:                                        ; preds = %if.then342.if.end347_crit_edge, %if.then340.if.end347_crit_edge
  %name.10 = phi ptr [ %name.9, %if.then340.if.end347_crit_edge ], [ %call7.i790, %if.then342.if.end347_crit_edge ]
  %177 = ptrtoint ptr %ie.11022 to i32
  call void @__asan_loadN_noabort(i32 %177, i32 8)
  %178 = load i64, ptr %ie.11022, align 1
  %179 = tail call i64 @llvm.bswap.i64(i64 %178)
  %180 = ptrtoint ptr %name.10 to i32
  call void @__asan_storeN_noabort(i32 %180, i32 8)
  store i64 %179, ptr %name.10, align 1
  %type351 = getelementptr inbounds %struct.ntfs_name, ptr %name.10, i32 0, i32 1
  %181 = ptrtoint ptr %type351 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 2, ptr %type351, align 1
  %len352 = getelementptr inbounds %struct.ntfs_name, ptr %name.10, i32 0, i32 2
  %182 = ptrtoint ptr %len352 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %len352, align 1
  br label %if.end354

if.else353:                                       ; preds = %found_it2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %name.9) #9
  br label %if.end354

if.end354:                                        ; preds = %if.else353, %if.end347
  %storemerge782 = phi ptr [ null, %if.else353 ], [ %name.10, %if.end347 ]
  %183 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %storemerge782, ptr %res, align 4
  %184 = ptrtoint ptr %ie.11022 to i32
  call void @__asan_loadN_noabort(i32 %184, i32 8)
  %185 = load i64, ptr %ie.11022, align 1
  %186 = tail call i64 @llvm.bswap.i64(i64 %185)
  tail call void @unlock_page(ptr noundef %call2221038) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call2221038)
  br label %cleanup513

if.end357:                                        ; preds = %if.end325
  %187 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile i32, ptr %flags.i, align 4
  %189 = and i32 %188, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool359.not = icmp eq i32 %189, 0
  br i1 %tobool359.not, label %land.lhs.true360, label %if.end357.if.end422_crit_edge

if.end357.if.end422_crit_edge:                    ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end422

land.lhs.true360:                                 ; preds = %if.end357
  %file_name_type362 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.11022, i32 0, i32 5, i32 1, i32 49
  %190 = ptrtoint ptr %file_name_type362 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %file_name_type362, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool364.not = icmp eq i8 %191, 0
  br i1 %tobool364.not, label %land.lhs.true360.if.end422_crit_edge, label %land.lhs.true365

land.lhs.true360.if.end422_crit_edge:             ; preds = %land.lhs.true360
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end422

land.lhs.true365:                                 ; preds = %land.lhs.true360
  %192 = ptrtoint ptr %file_name_length329 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %file_name_length329, align 1
  %conv370 = zext i8 %193 to i32
  %194 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %upcase, align 4
  %196 = ptrtoint ptr %upcase_len to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %upcase_len, align 8
  %call373 = tail call zeroext i1 @ntfs_are_names_equal(ptr noundef %uname, i32 noundef %uname_len, ptr noundef %file_name327, i32 noundef %conv370, i32 noundef 1, ptr noundef %195, i32 noundef %197) #9
  br i1 %call373, label %if.then375, label %land.lhs.true365.if.end422_crit_edge

land.lhs.true365.if.end422_crit_edge:             ; preds = %land.lhs.true365
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end422

if.then375:                                       ; preds = %land.lhs.true365
  %198 = ptrtoint ptr %file_name_type362 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %file_name_type362, align 1
  %200 = ptrtoint ptr %file_name_length329 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %file_name_length329, align 1
  %tobool383.not = icmp eq ptr %name.81024, null
  br i1 %tobool383.not, label %if.end385, label %cleanup417

if.end385:                                        ; preds = %if.then375
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %199)
  %cmp387.not = icmp eq i8 %199, 2
  %conv390 = zext i8 %201 to i32
  %mul391 = shl nuw nsw i32 %conv390, 1
  %add392 = add nuw nsw i32 %mul391, 10
  %name_size376.0 = select i1 %cmp387.not, i32 10, i32 %add392
  %call9.i816 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %name_size376.0, i32 noundef 3136) #13
  %tobool395.not = icmp eq ptr %call9.i816, null
  br i1 %tobool395.not, label %if.end385.unm_err_out_crit_edge, label %if.end397

if.end385.unm_err_out_crit_edge:                  ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #11
  br label %unm_err_out

if.end397:                                        ; preds = %if.end385
  %202 = ptrtoint ptr %ie.11022 to i32
  call void @__asan_loadN_noabort(i32 %202, i32 8)
  %203 = load i64, ptr %ie.11022, align 1
  %204 = tail call i64 @llvm.bswap.i64(i64 %203)
  %205 = ptrtoint ptr %call9.i816 to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 %204, ptr %call9.i816, align 128
  %type401 = getelementptr inbounds %struct.ntfs_name, ptr %call9.i816, i32 0, i32 1
  %206 = ptrtoint ptr %type401 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %199, ptr %type401, align 8
  %len415 = getelementptr inbounds %struct.ntfs_name, ptr %call9.i816, i32 0, i32 2
  br i1 %cmp387.not, label %if.else414, label %if.then405

if.then405:                                       ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #11
  %207 = ptrtoint ptr %len415 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %201, ptr %len415, align 1
  %name407 = getelementptr inbounds %struct.ntfs_name, ptr %call9.i816, i32 0, i32 3
  %208 = call ptr @memcpy(ptr %name407, ptr %file_name327, i32 %mul391)
  br label %cleanup417.thread

if.else414:                                       ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #11
  %209 = ptrtoint ptr %len415 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 0, ptr %len415, align 1
  br label %cleanup417.thread

cleanup417.thread:                                ; preds = %if.else414, %if.then405
  %210 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %call9.i816, ptr %res, align 4
  br label %if.end422

cleanup417:                                       ; preds = %if.then375
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %3, ptr noundef nonnull @.str.14) #9
  tail call void @unlock_page(ptr noundef %call2221038) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call2221038)
  br label %err_out.thread1162

if.end422:                                        ; preds = %cleanup417.thread, %land.lhs.true365.if.end422_crit_edge, %land.lhs.true360.if.end422_crit_edge, %if.end357.if.end422_crit_edge
  %name.12 = phi ptr [ %name.81024, %if.end357.if.end422_crit_edge ], [ %name.81024, %land.lhs.true365.if.end422_crit_edge ], [ %name.81024, %land.lhs.true360.if.end422_crit_edge ], [ %call9.i816, %cleanup417.thread ]
  %211 = ptrtoint ptr %file_name_length329 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %file_name_length329, align 1
  %conv427 = zext i8 %212 to i32
  %213 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %upcase, align 4
  %215 = ptrtoint ptr %upcase_len to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %upcase_len, align 8
  %call430 = tail call i32 @ntfs_collate_names(ptr noundef %uname, i32 noundef %uname_len, ptr noundef %file_name327, i32 noundef %conv427, i32 noundef 1, i32 noundef 1, ptr noundef %214, i32 noundef %216) #9
  %217 = zext i32 %call430 to i64
  call void @__sanitizer_cov_trace_switch(i64 %217, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %call430, label %if.end422.for.inc453_crit_edge [
    i32 -1, label %if.end422.for.end457_crit_edge
    i32 0, label %if.end437
  ]

if.end422.for.end457_crit_edge:                   ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end457

if.end422.for.inc453_crit_edge:                   ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc453

if.end437:                                        ; preds = %if.end422
  %218 = ptrtoint ptr %file_name_length329 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %file_name_length329, align 1
  %conv442 = zext i8 %219 to i32
  %220 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %upcase, align 4
  %222 = ptrtoint ptr %upcase_len to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %upcase_len, align 8
  %call445 = tail call i32 @ntfs_collate_names(ptr noundef %uname, i32 noundef %uname_len, ptr noundef %file_name327, i32 noundef %conv442, i32 noundef 1, i32 noundef 0, ptr noundef %221, i32 noundef %223) #9
  %224 = zext i32 %call445 to i64
  call void @__sanitizer_cov_trace_switch(i64 %224, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call445, label %if.end437.for.inc453_crit_edge [
    i32 -1, label %if.end437.for.end457_crit_edge
    i32 0, label %if.end437.found_it2_crit_edge
  ]

if.end437.found_it2_crit_edge:                    ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_it2

if.end437.for.end457_crit_edge:                   ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end457

if.end437.for.inc453_crit_edge:                   ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc453

for.inc453:                                       ; preds = %if.end437.for.inc453_crit_edge, %if.end422.for.inc453_crit_edge
  %length454 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.11022, i32 0, i32 1
  %225 = ptrtoint ptr %length454 to i32
  call void @__asan_loadN_noabort(i32 %225, i32 2)
  %226 = load i16, ptr %length454, align 1
  %227 = tail call i16 @llvm.bswap.i16(i16 %226)
  %conv455 = zext i16 %227 to i32
  %add.ptr456 = getelementptr i8, ptr %ie.11022, i32 %conv455
  %cmp305 = icmp ult ptr %add.ptr456, %add.ptr236
  %add.ptr308 = getelementptr i8, ptr %add.ptr456, i32 16
  %cmp309 = icmp ugt ptr %add.ptr308, %add.ptr291
  %or.cond784 = select i1 %cmp305, i1 true, i1 %cmp309
  br i1 %or.cond784, label %for.inc453.if.then317_crit_edge, label %for.inc453.lor.lhs.false311_crit_edge

for.inc453.lor.lhs.false311_crit_edge:            ; preds = %for.inc453
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false311

for.inc453.if.then317_crit_edge:                  ; preds = %for.inc453
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then317

for.end457:                                       ; preds = %if.end437.for.end457_crit_edge, %if.end422.for.end457_crit_edge, %if.end319.for.end457_crit_edge
  %name.13 = phi ptr [ %name.81024, %if.end319.for.end457_crit_edge ], [ %name.12, %if.end422.for.end457_crit_edge ], [ %name.12, %if.end437.for.end457_crit_edge ]
  %flags320.le = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.11022, i32 0, i32 3
  %228 = ptrtoint ptr %flags320.le to i32
  call void @__asan_loadN_noabort(i32 %228, i32 2)
  %229 = load i16, ptr %flags320.le, align 1
  %230 = and i16 %229, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %230)
  %tobool461.not = icmp eq i16 %230, 0
  br i1 %tobool461.not, label %if.end495, label %if.then462

if.then462:                                       ; preds = %for.end457
  %flags464 = getelementptr inbounds %struct.INDEX_HEADER, ptr %index266, i32 0, i32 3
  %231 = ptrtoint ptr %flags464 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %flags464, align 1
  %233 = and i8 %232, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %cmp467 = icmp eq i8 %233, 0
  br i1 %cmp467, label %if.then469, label %if.end471

if.then469:                                       ; preds = %if.then462
  call void @__sanitizer_cov_trace_pc() #11
  %mft_no470 = getelementptr inbounds %struct._ntfs_inode, ptr %dir_ni, i32 0, i32 4
  %234 = ptrtoint ptr %mft_no470 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %mft_no470, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %3, ptr noundef nonnull @.str.15, i32 noundef %235) #9
  br label %unm_err_out

if.end471:                                        ; preds = %if.then462
  %length472 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.11022, i32 0, i32 1
  %236 = ptrtoint ptr %length472 to i32
  call void @__asan_loadN_noabort(i32 %236, i32 2)
  %237 = load i16, ptr %length472, align 1
  %238 = tail call i16 @llvm.bswap.i16(i16 %237)
  %conv473 = zext i16 %238 to i32
  %add.ptr474 = getelementptr i8, ptr %ie.11022, i32 -8
  %add.ptr475 = getelementptr i8, ptr %add.ptr474, i32 %conv473
  %239 = ptrtoint ptr %add.ptr475 to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %add.ptr475, align 8
  %241 = tail call i64 @llvm.bswap.i64(i64 %240) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %241)
  %cmp477 = icmp sgt i64 %241, -1
  br i1 %cmp477, label %if.then479, label %if.end493

if.then479:                                       ; preds = %if.end471
  %242 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom481 = zext i8 %243 to i64
  %shl482783 = xor i64 %241, %vcn.1
  %cmp489.unshifted = shl i64 %shl482783, %sh_prom481
  %cmp489 = icmp ult i64 %cmp489.unshifted, 4096
  br i1 %cmp489, label %if.then479.fast_descend_into_child_node_crit_edge, label %if.end492

if.then479.fast_descend_into_child_node_crit_edge: ; preds = %if.then479
  call void @__sanitizer_cov_trace_pc() #11
  br label %fast_descend_into_child_node

if.end492:                                        ; preds = %if.then479
  tail call void @unlock_page(ptr noundef %call2221038) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call2221038)
  %244 = ptrtoint ptr %vcn_size_bits to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %vcn_size_bits, align 1
  %sh_prom = zext i8 %245 to i64
  %shl = shl i64 %241, %sh_prom
  %246 = lshr i64 %shl, 12
  %conv221 = trunc i64 %246 to i32
  %call222 = tail call fastcc ptr @ntfs_map_page(ptr noundef %112, i32 noundef %conv221)
  %cmp.i827 = icmp ugt ptr %call222, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i827, label %if.end492.if.then224_crit_edge, label %if.end492.if.end228_crit_edge

if.end492.if.end228_crit_edge:                    ; preds = %if.end492
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end228

if.end492.if.then224_crit_edge:                   ; preds = %if.end492
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then224

if.end493:                                        ; preds = %if.end471
  call void @__sanitizer_cov_trace_pc() #11
  %mft_no494 = getelementptr inbounds %struct._ntfs_inode, ptr %dir_ni, i32 0, i32 4
  %247 = ptrtoint ptr %mft_no494 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %mft_no494, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %248) #9
  br label %unm_err_out

if.end495:                                        ; preds = %for.end457
  %tobool496.not = icmp eq ptr %name.13, null
  br i1 %tobool496.not, label %if.end499, label %if.then497

if.then497:                                       ; preds = %if.end495
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_page(ptr noundef %call2221038) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call2221038)
  %249 = ptrtoint ptr %name.13 to i32
  call void @__asan_loadN_noabort(i32 %249, i32 8)
  %250 = load i64, ptr %name.13, align 1
  br label %cleanup513

if.end499:                                        ; preds = %if.end495
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 571, ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef nonnull @.str.4) #9
  br label %unm_err_out

unm_err_out:                                      ; preds = %if.end499, %if.end493, %if.then469, %if.end385.unm_err_out_crit_edge, %if.then342.unm_err_out_crit_edge, %if.then317, %if.then297, %if.then285, %if.then271, %if.then261, %if.then255, %if.then243
  %err.10 = phi i32 [ 0, %if.then243 ], [ 0, %if.then255 ], [ 0, %if.then261 ], [ 0, %if.then271 ], [ 0, %if.then285 ], [ 0, %if.then297 ], [ 0, %if.then317 ], [ 0, %if.then469 ], [ 0, %if.end493 ], [ -2, %if.end499 ], [ -12, %if.then342.unm_err_out_crit_edge ], [ -12, %if.end385.unm_err_out_crit_edge ]
  %name.14 = phi ptr [ %name.7, %if.then243 ], [ %name.7, %if.then255 ], [ %name.7, %if.then261 ], [ %name.7, %if.then271 ], [ %name.7, %if.then285 ], [ %name.7, %if.then297 ], [ %name.8.lcssa, %if.then317 ], [ %name.13, %if.then469 ], [ %name.13, %if.end493 ], [ null, %if.end499 ], [ null, %if.then342.unm_err_out_crit_edge ], [ null, %if.end385.unm_err_out_crit_edge ]
  tail call void @unlock_page(ptr noundef %call2221038) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call2221038)
  br label %err_out

err_out:                                          ; preds = %unm_err_out, %if.then224, %if.end49.err_out_crit_edge
  %m.0 = phi ptr [ null, %if.then224 ], [ null, %unm_err_out ], [ %call31, %if.end49.err_out_crit_edge ]
  %ctx.0 = phi ptr [ null, %if.then224 ], [ null, %unm_err_out ], [ %call38, %if.end49.err_out_crit_edge ]
  %err.11 = phi i32 [ %116, %if.then224 ], [ %err.10, %unm_err_out ], [ %call50, %if.end49.err_out_crit_edge ]
  %name.15 = phi ptr [ %name.6.lcssa, %if.then224 ], [ %name.14, %unm_err_out ], [ null, %if.end49.err_out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.11)
  %tobool500.not = icmp eq i32 %err.11, 0
  br i1 %tobool500.not, label %err_out._crit_edge, label %err_out.err_out.thread_crit_edge

err_out.err_out.thread_crit_edge:                 ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.thread

err_out._crit_edge:                               ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %251

251:                                              ; preds = %err_out.thread1162, %err_out._crit_edge, %err_out.thread856
  %name.15864 = phi ptr [ %name.5, %err_out.thread856 ], [ %name.15, %err_out._crit_edge ], [ %name.16, %err_out.thread1162 ]
  %ctx.0863 = phi ptr [ %call38, %err_out.thread856 ], [ %ctx.0, %err_out._crit_edge ], [ %ctx.1, %err_out.thread1162 ]
  %m.0862 = phi ptr [ %call31, %err_out.thread856 ], [ %m.0, %err_out._crit_edge ], [ %m.1, %err_out.thread1162 ]
  br label %err_out.thread

err_out.thread:                                   ; preds = %251, %err_out.err_out.thread_crit_edge, %if.end207, %if.end135.err_out.thread_crit_edge, %if.then98.err_out.thread_crit_edge
  %name.15855 = phi ptr [ %name.15864, %251 ], [ %name.15, %err_out.err_out.thread_crit_edge ], [ null, %if.end207 ], [ null, %if.then98.err_out.thread_crit_edge ], [ null, %if.end135.err_out.thread_crit_edge ]
  %ctx.0854 = phi ptr [ %ctx.0863, %251 ], [ %ctx.0, %err_out.err_out.thread_crit_edge ], [ %call38, %if.end207 ], [ %call38, %if.then98.err_out.thread_crit_edge ], [ %call38, %if.end135.err_out.thread_crit_edge ]
  %m.0853 = phi ptr [ %m.0862, %251 ], [ %m.0, %err_out.err_out.thread_crit_edge ], [ %call31, %if.end207 ], [ %call31, %if.then98.err_out.thread_crit_edge ], [ %call31, %if.end135.err_out.thread_crit_edge ]
  %252 = phi i32 [ -5, %251 ], [ %err.11, %err_out.err_out.thread_crit_edge ], [ -2, %if.end207 ], [ -12, %if.then98.err_out.thread_crit_edge ], [ -12, %if.end135.err_out.thread_crit_edge ]
  %tobool503.not = icmp eq ptr %ctx.0854, null
  br i1 %tobool503.not, label %err_out.thread.if.end505_crit_edge, label %err_out.thread.if.then504_crit_edge

err_out.thread.if.then504_crit_edge:              ; preds = %err_out.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then504

err_out.thread.if.end505_crit_edge:               ; preds = %err_out.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end505

if.then504:                                       ; preds = %err_out.thread.if.then504_crit_edge, %err_out.thread.thread871
  %253 = phi i32 [ -5, %err_out.thread.thread871 ], [ %252, %err_out.thread.if.then504_crit_edge ]
  %m.0853878 = phi ptr [ %call31, %err_out.thread.thread871 ], [ %m.0853, %err_out.thread.if.then504_crit_edge ]
  %ctx.0854877 = phi ptr [ %call38, %err_out.thread.thread871 ], [ %ctx.0854, %err_out.thread.if.then504_crit_edge ]
  %name.15855876 = phi ptr [ null, %err_out.thread.thread871 ], [ %name.15855, %err_out.thread.if.then504_crit_edge ]
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %ctx.0854877) #9
  br label %if.end505

if.end505:                                        ; preds = %if.then504, %err_out.thread.if.end505_crit_edge, %if.end37.if.end505_crit_edge
  %254 = phi i32 [ %253, %if.then504 ], [ %252, %err_out.thread.if.end505_crit_edge ], [ -12, %if.end37.if.end505_crit_edge ]
  %m.0853870 = phi ptr [ %m.0853878, %if.then504 ], [ %m.0853, %err_out.thread.if.end505_crit_edge ], [ %call31, %if.end37.if.end505_crit_edge ]
  %name.15855869 = phi ptr [ %name.15855876, %if.then504 ], [ %name.15855, %err_out.thread.if.end505_crit_edge ], [ null, %if.end37.if.end505_crit_edge ]
  %tobool506.not = icmp eq ptr %m.0853870, null
  br i1 %tobool506.not, label %if.end505.if.end508_crit_edge, label %if.then507

if.end505.if.end508_crit_edge:                    ; preds = %if.end505
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end508

if.then507:                                       ; preds = %if.end505
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unmap_mft_record(ptr noundef %dir_ni) #9
  br label %if.end508

if.end508:                                        ; preds = %if.then507, %if.end505.if.end508_crit_edge
  %tobool509.not = icmp eq ptr %name.15855869, null
  br i1 %tobool509.not, label %if.end508.if.end511_crit_edge, label %if.then510

if.end508.if.end511_crit_edge:                    ; preds = %if.end508
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end511

if.then510:                                       ; preds = %if.end508
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %name.15855869) #9
  %255 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr null, ptr %res, align 4
  br label %if.end511

if.end511:                                        ; preds = %if.then510, %if.end508.if.end511_crit_edge
  %conv512 = sext i32 %254 to i64
  br label %cleanup513

err_out.thread1162:                               ; preds = %cleanup417, %for.inc.err_out.thread1162_crit_edge, %cleanup, %lor.lhs.false76.err_out.thread1162_crit_edge, %if.end63.err_out.thread1162_crit_edge
  %m.1 = phi ptr [ null, %cleanup417 ], [ %call31, %cleanup ], [ %call31, %if.end63.err_out.thread1162_crit_edge ], [ %call31, %lor.lhs.false76.err_out.thread1162_crit_edge ], [ %call31, %for.inc.err_out.thread1162_crit_edge ]
  %ctx.1 = phi ptr [ null, %cleanup417 ], [ %call38, %cleanup ], [ %call38, %if.end63.err_out.thread1162_crit_edge ], [ %call38, %lor.lhs.false76.err_out.thread1162_crit_edge ], [ %call38, %for.inc.err_out.thread1162_crit_edge ]
  %name.16 = phi ptr [ %name.81024, %cleanup417 ], [ %name.01016, %cleanup ], [ null, %if.end63.err_out.thread1162_crit_edge ], [ %name.4, %for.inc.err_out.thread1162_crit_edge ], [ %name.01016, %lor.lhs.false76.err_out.thread1162_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %3, ptr noundef nonnull @.str.17) #9
  br label %251

cleanup513:                                       ; preds = %if.end511, %if.then497, %if.end354, %if.then205, %if.end106, %if.then33
  %retval.0 = phi i64 [ %conv36, %if.then33 ], [ %conv512, %if.end511 ], [ %250, %if.then497 ], [ %186, %if.end354 ], [ %99, %if.then205 ], [ %51, %if.end106 ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_mft_record(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_get_search_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_lookup(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ntfs_are_names_equal(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_put_search_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mft_record(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_collate_names(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ntfs_map_page(ptr noundef %mapping, i32 noundef %index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @read_cache_page(ptr noundef %mapping, i32 noundef %index, ptr noundef null, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 44) #9
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  %shr.i.i12 = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %shr.i.i12, label %if.then.if.then.i13_crit_edge [
    i32 2, label %if.then.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.if.then.i13_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i13

is_highmem_idx.exit.i:                            ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i13_crit_edge

is_highmem_idx.exit.i.if.then.i13_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i13

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i13:                                      ; preds = %is_highmem_idx.exit.i.if.then.i13_crit_edge, %if.then.if.then.i13_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call.i) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call.i) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i13
  %4 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !112

if.then.i.i:                                      ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %4, align 4
  %and.i16.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !115

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !112

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %12, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %13, %if.end.i20.i ]
  %14 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.19) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !120
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !112

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %12, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call.i to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %15, %if.end.i27.i ]
  %16 = inttoptr i32 %retval.0.i28.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %PageError.exit.cleanup_crit_edge, label %if.end

PageError.exit.cleanup_crit_edge:                 ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %PageError.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %if.end ], [ %call.i, %PageError.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ntfs_unmap_page(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 55) #9
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %shr.i.i, label %entry.kunmap.exit_crit_edge [
    i32 2, label %entry.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

entry.kunmap.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %entry.kunmap.exit_crit_edge
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !112

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !115

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.23) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !121
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !123
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_unmap_page, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !125

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %8) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_readdir(ptr nocapture noundef readonly %file, ptr noundef %actor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -528
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %pos = getelementptr inbounds %struct.dir_context, ptr %actor, i32 0, i32 1
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 1106, ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef nonnull @.str.24, i32 noundef %7, i64 noundef %9) #9
  %call3 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos, align 8
  %mft_record_size = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 14
  %12 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mft_record_size, align 4
  %conv = zext i32 %13 to i64
  %add = add i64 %call3, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %add)
  %cmp.not = icmp slt i64 %11, %add
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.56)
  switch i64 %11, label %if.end.if.end8_crit_edge [
    i64 0, label %if.then.i686
    i64 1, label %if.end.if.then6.i_crit_edge
  ]

if.end.if.then6.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then.i686:                                     ; preds = %if.end
  %14 = ptrtoint ptr %actor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %actor, align 8
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino.i.i, align 8
  %conv.i.i = zext i32 %21 to i64
  %call.i.i = tail call i32 %15(ptr noundef %actor, ptr noundef nonnull @.str.36, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i685 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i685, label %if.end3.thread.i, label %if.then.i686.cleanup_crit_edge

if.then.i686.cleanup_crit_edge:                   ; preds = %if.then.i686
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.thread.i:                                 ; preds = %if.then.i686
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1, ptr %pos, align 8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.thread.i, %if.end.if.then6.i_crit_edge
  %23 = ptrtoint ptr %actor to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %actor, align 8
  %dentry.i19.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %dentry.i19.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dentry.i19.i, align 4
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #9
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_parent.i.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_ino.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #9
  %conv.i20.i = zext i32 %32 to i64
  %call1.i.i687 = tail call i32 %24(ptr noundef %actor, ptr noundef nonnull @.str.37, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i20.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i687)
  %cmp.i21.i = icmp eq i32 %call1.i.i687, 0
  br i1 %cmp.i21.i, label %if.end9.i, label %if.then6.i.cleanup_crit_edge

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 2, ptr %pos, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end9.i, %if.end.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3136, i32 noundef 1531) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end8.if.end445_crit_edge, label %if.end14, !prof !115

if.end8.if.end445_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end445

if.end14:                                         ; preds = %if.end8
  %35 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %pos, align 8
  %37 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mft_record_size, align 4
  %conv17 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %conv17)
  %cmp18.not = icmp slt i64 %36, %conv17
  br i1 %cmp18.not, label %if.end21, label %if.end14.skip_index_root_crit_edge

if.end14.skip_index_root_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_index_root

if.end21:                                         ; preds = %if.end14
  %call22 = tail call ptr @map_mft_record(ptr noundef %add.ptr.i) #9
  %cmp.i688 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i688, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %call22 to i32
  br label %if.end445

if.end26:                                         ; preds = %if.end21
  %call27 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %add.ptr.i, ptr noundef %call22) #9
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end26.if.end445_crit_edge, label %if.end38, !prof !115

if.end26.if.end445_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end445

if.end38:                                         ; preds = %if.end26
  %40 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %pos, align 8
  %conv40 = trunc i64 %41 to i32
  %call41 = tail call i32 @ntfs_attr_lookup(i32 noundef -1879048192, ptr noundef nonnull @I30, i32 noundef 4, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end51, label %if.then49, !prof !112

if.then49:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %43) #9
  br label %if.end445

if.end51:                                         ; preds = %if.end38
  %attr = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call27, i32 0, i32 1
  %44 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %attr, align 4
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %data, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %48, i32 noundef 3136) #13
  %tobool53.not = icmp eq ptr %call9.i, null
  br i1 %tobool53.not, label %if.end51.if.end445_crit_edge, label %if.end63, !prof !115

if.end51.if.end445_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end445

if.end63:                                         ; preds = %if.end51
  %49 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %attr, align 4
  %data66 = getelementptr inbounds %struct.ATTR_RECORD, ptr %50, i32 0, i32 7
  %value_offset = getelementptr inbounds %struct.anon.90, ptr %data66, i32 0, i32 1
  %51 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %value_offset, align 1
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %conv67 = zext i16 %53 to i32
  %add.ptr = getelementptr i8, ptr %50, i32 %conv67
  %54 = call ptr @memcpy(ptr %call9.i, ptr %add.ptr, i32 %48)
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call27) #9
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i) #9
  %index = getelementptr inbounds %struct.INDEX_ROOT, ptr %call9.i, i32 0, i32 5
  %index_length = getelementptr inbounds %struct.INDEX_ROOT, ptr %call9.i, i32 0, i32 5, i32 1
  %55 = ptrtoint ptr %index_length to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %index_length, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %add.ptr69 = getelementptr i8, ptr %index, i32 %57
  %58 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %index, align 16
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %add.ptr72 = getelementptr i8, ptr %index, i32 %60
  %sub.ptr.rhs.cast = ptrtoint ptr %call9.i to i32
  %sub.ptr.lhs.cast790 = ptrtoint ptr %add.ptr72 to i32
  %sub.ptr.sub791 = sub i32 %sub.ptr.lhs.cast790, %sub.ptr.rhs.cast
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 1184, ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef nonnull @.str.25, i32 noundef %sub.ptr.sub791) #9
  %cmp73792 = icmp ult ptr %add.ptr72, %call9.i
  %add.ptr75793 = getelementptr i8, ptr %add.ptr72, i32 16
  %cmp76794 = icmp ugt ptr %add.ptr75793, %add.ptr69
  %or.cond795 = select i1 %cmp73792, i1 true, i1 %cmp76794
  br i1 %or.cond795, label %if.end63.if.end445_crit_edge, label %if.end63.lor.rhs_crit_edge, !prof !126

if.end63.lor.rhs_crit_edge:                       ; preds = %if.end63
  br label %lor.rhs

if.end63.if.end445_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end445

lor.rhs:                                          ; preds = %for.inc.lor.rhs_crit_edge, %if.end63.lor.rhs_crit_edge
  %sub.ptr.sub798 = phi i32 [ %sub.ptr.sub, %for.inc.lor.rhs_crit_edge ], [ %sub.ptr.sub791, %if.end63.lor.rhs_crit_edge ]
  %ie.0796 = phi ptr [ %add.ptr111, %for.inc.lor.rhs_crit_edge ], [ %add.ptr72, %if.end63.lor.rhs_crit_edge ]
  %key_length = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.0796, i32 0, i32 2
  %61 = ptrtoint ptr %key_length to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %key_length, align 1
  %63 = tail call i16 @llvm.bswap.i16(i16 %62)
  %conv78 = zext i16 %63 to i32
  %add.ptr79 = getelementptr i8, ptr %ie.0796, i32 %conv78
  %cmp80 = icmp ugt ptr %add.ptr79, %add.ptr69
  br i1 %cmp80, label %lor.rhs.if.end445_crit_edge, label %if.end89, !prof !115

lor.rhs.if.end445_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end445

if.end89:                                         ; preds = %lor.rhs
  %flags = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.0796, i32 0, i32 3
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %flags, align 1
  %66 = and i16 %65, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool91.not = icmp eq i16 %66, 0
  br i1 %tobool91.not, label %if.end93, label %for.end

if.end93:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub798, i32 %conv40)
  %cmp97 = icmp slt i32 %sub.ptr.sub798, %conv40
  br i1 %cmp97, label %if.end93.for.inc_crit_edge, label %if.end100

if.end93.for.inc_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end100:                                        ; preds = %if.end93
  %conv104 = sext i32 %sub.ptr.sub798 to i64
  %67 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv104, ptr %pos, align 8
  %call106 = tail call fastcc i32 @ntfs_filldir(ptr noundef %5, ptr noundef null, ptr noundef %ie.0796, ptr noundef nonnull %call7.i, ptr noundef %actor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end100.for.inc_crit_edge, label %if.then108

if.end100.for.inc_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then108:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %abort

for.inc:                                          ; preds = %if.end100.for.inc_crit_edge, %if.end93.for.inc_crit_edge
  %length = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.0796, i32 0, i32 1
  %68 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %length, align 1
  %70 = tail call i16 @llvm.bswap.i16(i16 %69)
  %conv110 = zext i16 %70 to i32
  %add.ptr111 = getelementptr i8, ptr %ie.0796, i32 %conv110
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr111 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 1184, ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef nonnull @.str.25, i32 noundef %sub.ptr.sub) #9
  %cmp73 = icmp ult ptr %add.ptr111, %call9.i
  %add.ptr75 = getelementptr i8, ptr %add.ptr111, i32 16
  %cmp76 = icmp ugt ptr %add.ptr75, %add.ptr69
  %or.cond = select i1 %cmp73, i1 true, i1 %cmp76
  br i1 %or.cond, label %for.inc.if.end445_crit_edge, label %for.inc.lor.rhs_crit_edge, !prof !126

for.inc.lor.rhs_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

for.inc.if.end445_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end445

for.end:                                          ; preds = %if.end89
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  %state.i = getelementptr i8, ptr %1, i32 -464
  %71 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %state.i, align 4
  %73 = and i32 %72, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool113.not = icmp eq i32 %73, 0
  br i1 %tobool113.not, label %for.end.EOD_crit_edge, label %if.end115

for.end.EOD_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %EOD

if.end115:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mft_record_size, align 4
  %conv117 = zext i32 %75 to i64
  %76 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv117, ptr %pos, align 8
  br label %skip_index_root

skip_index_root:                                  ; preds = %if.end115, %if.end14.skip_index_root_crit_edge
  %77 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %pos, align 8
  %79 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mft_record_size, align 4
  %conv121 = zext i32 %80 to i64
  %sub = sub i64 %78, %conv121
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %81 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i_mapping, align 8
  %83 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %i_ino, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 1220, ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef nonnull @.str.26, i32 noundef %84) #9
  %call123 = tail call ptr @ntfs_attr_iget(ptr noundef %1, i32 noundef -1342177280, ptr noundef nonnull @I30, i32 noundef 4) #9
  %cmp.i689 = icmp ugt ptr %call123, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i689, label %if.then125, label %if.end127

if.then125:                                       ; preds = %skip_index_root
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %3, ptr noundef nonnull @.str.27) #9
  %85 = ptrtoint ptr %call123 to i32
  br label %if.end445

if.end127:                                        ; preds = %skip_index_root
  %i_mapping128 = getelementptr inbounds %struct.inode, ptr %call123, i32 0, i32 9
  %86 = ptrtoint ptr %i_mapping128 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i_mapping128, align 8
  %itype = getelementptr i8, ptr %1, i32 -120
  %block_size_bits = getelementptr i8, ptr %1, i32 -108
  %88 = ptrtoint ptr %block_size_bits to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %block_size_bits, align 4
  %sh_prom = zext i8 %89 to i64
  %shr = ashr i64 %sub, %sh_prom
  %shr130 = ashr i64 %shr, 3
  %call131 = tail call fastcc i64 @i_size_read(ptr noundef %call123)
  call void @__sanitizer_cov_trace_cmp8(i64 %shr130, i64 %call131)
  %cmp132.not = icmp slt i64 %shr130, %call131
  br i1 %cmp132.not, label %if.end141, label %if.then140, !prof !112

if.then140:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %3, ptr noundef nonnull @.str.28) #9
  br label %iput_err_out

if.end141:                                        ; preds = %if.end127
  %and144 = and i64 %shr, -32768
  %shr145815 = lshr exact i64 %and144, 15
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 1242, ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef nonnull @.str.29, i64 noundef %shr145815, i64 noundef 0) #9
  %conv148816 = trunc i64 %shr145815 to i32
  %call149817 = tail call fastcc ptr @ntfs_map_page(ptr noundef %87, i32 noundef %conv148816)
  %cmp.i690818 = icmp ugt ptr %call149817, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i690818, label %if.end141.if.then151_crit_edge, label %if.end153.lr.ph

if.end141.if.then151_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then151

if.end153.lr.ph:                                  ; preds = %if.end141
  %90 = trunc i64 %shr to i32
  %conv143 = and i32 %90, 32767
  %vcn_size_bits266 = getelementptr i8, ptr %1, i32 -107
  br label %if.end153

if.then151:                                       ; preds = %if.then171.if.then151_crit_edge, %if.end141.if.then151_crit_edge
  %ia_page.0.lcssa = phi ptr [ null, %if.end141.if.then151_crit_edge ], [ %ia_page.2, %if.then171.if.then151_crit_edge ]
  %call149.lcssa = phi ptr [ %call149817, %if.end141.if.then151_crit_edge ], [ %call149, %if.then171.if.then151_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %3, ptr noundef nonnull @.str.30) #9
  %91 = ptrtoint ptr %call149.lcssa to i32
  br label %iput_err_out

if.end153:                                        ; preds = %if.then171.if.end153_crit_edge, %if.end153.lr.ph
  %call149825 = phi ptr [ %call149817, %if.end153.lr.ph ], [ %call149, %if.then171.if.end153_crit_edge ]
  %kaddr.0824 = phi ptr [ null, %if.end153.lr.ph ], [ %kaddr.2, %if.then171.if.end153_crit_edge ]
  %ia_page.0823 = phi ptr [ null, %if.end153.lr.ph ], [ %ia_page.2, %if.then171.if.end153_crit_edge ]
  %cur_bmp_pos.0822 = phi i32 [ %conv143, %if.end153.lr.ph ], [ 0, %if.then171.if.end153_crit_edge ]
  %bmp_pos.0821 = phi i64 [ %and144, %if.end153.lr.ph ], [ %add172, %if.then171.if.end153_crit_edge ]
  %prev_ia_pos.0820 = phi i64 [ -1, %if.end153.lr.ph ], [ %prev_ia_pos.2, %if.then171.if.end153_crit_edge ]
  %ia_pos.0819 = phi i64 [ %sub, %if.end153.lr.ph ], [ %ia_pos.1, %if.then171.if.end153_crit_edge ]
  %call154 = tail call ptr @page_address(ptr noundef %call149825) #9
  br label %while.cond

while.cond:                                       ; preds = %if.end186, %if.end153
  %ia_pos.1 = phi i64 [ %ia_pos.0819, %if.end153 ], [ %shl193, %if.end186 ]
  %prev_ia_pos.1 = phi i64 [ %prev_ia_pos.0820, %if.end153 ], [ %prev_ia_pos.2, %if.end186 ]
  %cur_bmp_pos.1 = phi i32 [ %cur_bmp_pos.0822, %if.end153 ], [ %inc, %if.end186 ]
  %ia_page.1 = phi ptr [ %ia_page.0823, %if.end153 ], [ %ia_page.2, %if.end186 ]
  %kaddr.1 = phi ptr [ %kaddr.0824, %if.end153 ], [ %kaddr.2, %if.end186 ]
  %shr155719 = lshr i32 %cur_bmp_pos.1, 3
  %arrayidx = getelementptr i8, ptr %call154, i32 %shr155719
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx, align 1
  %conv156 = zext i8 %93 to i32
  %and157 = and i32 %cur_bmp_pos.1, 7
  %shl = shl nuw nsw i32 1, %and157
  %and158 = and i32 %shl, %conv156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %while.cond.find_next_index_buffer_crit_edge, label %while.end

while.cond.find_next_index_buffer_crit_edge:      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_next_index_buffer

find_next_index_buffer:                           ; preds = %if.end392.find_next_index_buffer_crit_edge, %while.cond.find_next_index_buffer_crit_edge
  %prev_ia_pos.2 = phi i64 [ %prev_ia_pos.1, %while.cond.find_next_index_buffer_crit_edge ], [ %prev_ia_pos.3, %if.end392.find_next_index_buffer_crit_edge ]
  %ia_page.2 = phi ptr [ %ia_page.1, %while.cond.find_next_index_buffer_crit_edge ], [ %ia_page.3, %if.end392.find_next_index_buffer_crit_edge ]
  %kaddr.2 = phi ptr [ %kaddr.1, %while.cond.find_next_index_buffer_crit_edge ], [ %kaddr.3, %if.end392.find_next_index_buffer_crit_edge ]
  %inc = add nuw nsw i32 %cur_bmp_pos.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %cur_bmp_pos.1)
  %exitcond = icmp eq i32 %cur_bmp_pos.1, 32767
  br i1 %exitcond, label %if.then171, label %if.end173, !prof !115

if.then171:                                       ; preds = %find_next_index_buffer
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call149825)
  %add172 = add i64 %bmp_pos.0821, 32768
  %shr145 = lshr exact i64 %add172, 15
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 1242, ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef nonnull @.str.29, i64 noundef %shr145, i64 noundef 0) #9
  %conv148 = trunc i64 %shr145 to i32
  %call149 = tail call fastcc ptr @ntfs_map_page(ptr noundef %87, i32 noundef %conv148)
  %cmp.i690 = icmp ugt ptr %call149, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i690, label %if.then171.if.then151_crit_edge, label %if.then171.if.end153_crit_edge

if.then171.if.end153_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

if.then171.if.then151_crit_edge:                  ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then151

if.end173:                                        ; preds = %find_next_index_buffer
  %conv174720 = zext i32 %inc to i64
  %add175 = add i64 %bmp_pos.0821, %conv174720
  %shr176 = ashr i64 %add175, 3
  %cmp177.not = icmp slt i64 %shr176, %call3
  br i1 %cmp177.not, label %if.end186, label %unm_EOD, !prof !112

if.end186:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %block_size_bits to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %block_size_bits, align 4
  %sh_prom192 = zext i8 %95 to i64
  %shl193 = shl i64 %add175, %sh_prom192
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %conv194721 = zext i32 %cur_bmp_pos.1 to i64
  %add195 = add i64 %bmp_pos.0821, %conv194721
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 1273, ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef nonnull @.str.31, i64 noundef %add195) #9
  %96 = xor i64 %prev_ia_pos.1, %ia_pos.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %96)
  %cmp198.not = icmp ult i64 %96, 4096
  br i1 %cmp198.not, label %while.end.if.end219_crit_edge, label %if.then200

while.end.if.end219_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219

if.then200:                                       ; preds = %while.end
  %cmp201.not = icmp eq ptr %ia_page.1, null
  br i1 %cmp201.not, label %if.then200.if.end210_crit_edge, label %if.then209, !prof !115

if.then200.if.end210_crit_edge:                   ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end210

if.then209:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_page(ptr noundef nonnull %ia_page.1) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef nonnull %ia_page.1)
  br label %if.end210

if.end210:                                        ; preds = %if.then209, %if.then200.if.end210_crit_edge
  %97 = lshr i64 %ia_pos.1, 12
  %conv212 = trunc i64 %97 to i32
  %call213 = tail call fastcc ptr @ntfs_map_page(ptr noundef %82, i32 noundef %conv212)
  %cmp.i691 = icmp ugt ptr %call213, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i691, label %if.then215, label %if.end217

if.then215:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %3, ptr noundef nonnull @.str.32) #9
  %98 = ptrtoint ptr %call213 to i32
  br label %err_out

if.end217:                                        ; preds = %if.end210
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 788) #9
  %99 = getelementptr inbounds %struct.page, ptr %call213, i32 0, i32 1
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %99, align 4
  %and.i.i = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i692 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i692, label %if.end.i.i693, label %if.then.i.i, !prof !112

if.then.i.i:                                      ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %101, -1
  br label %_compound_head.exit.i

if.end.i.i693:                                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %call213 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i693, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %102, %if.end.i.i693 ]
  %103 = inttoptr i32 %retval.0.i.i to ptr
  %104 = getelementptr inbounds %struct.page, ptr %103, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %104, align 4
  %and.i.i.i.i = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !112

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %107 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %107, ptr noundef nonnull @.str.21) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !117
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %103, i32 noundef 4) #9
  %108 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %103, align 4
  %and.i.i4.i.i = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i694_crit_edge

folio_flags.exit.i.i.if.then.i694_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i694

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %103, i32 1, i32 3, i32 1) #9
  %110 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %103, ptr %103, i32 1, ptr elementtype(i32) %103) #9, !srcloc !118
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %110, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !119
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i694_crit_edge

folio_trylock.exit.i.if.then.i694_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i694

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i694:                                     ; preds = %folio_trylock.exit.i.if.then.i694_crit_edge, %folio_flags.exit.i.i.if.then.i694_crit_edge
  tail call void @__folio_lock(ptr noundef %103) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i694, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call218 = tail call ptr @page_address(ptr noundef %call213) #9
  br label %if.end219

if.end219:                                        ; preds = %lock_page.exit, %while.end.if.end219_crit_edge
  %prev_ia_pos.3 = phi i64 [ %ia_pos.1, %lock_page.exit ], [ %prev_ia_pos.1, %while.end.if.end219_crit_edge ]
  %ia_page.3 = phi ptr [ %call213, %lock_page.exit ], [ %ia_page.1, %while.end.if.end219_crit_edge ]
  %kaddr.3 = phi ptr [ %call218, %lock_page.exit ], [ %kaddr.1, %while.end.if.end219_crit_edge ]
  %111 = ptrtoint ptr %itype to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %itype, align 8
  %sub222 = add i32 %112, -1
  %conv223 = zext i32 %sub222 to i64
  %neg = xor i64 %conv223, -1
  %and220 = and i64 %ia_pos.1, %neg
  %113 = trunc i64 %and220 to i32
  %idx.ext = and i32 %113, 4095
  %add.ptr225 = getelementptr i8, ptr %kaddr.3, i32 %idx.ext
  %cmp226 = icmp ult ptr %add.ptr225, %kaddr.3
  %add.ptr229 = getelementptr i8, ptr %kaddr.3, i32 4096
  %cmp230 = icmp ugt ptr %add.ptr225, %add.ptr229
  %114 = or i1 %cmp226, %cmp230
  br i1 %114, label %if.then239, label %if.end241, !prof !115

if.then239:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %116) #9
  br label %err_out

if.end241:                                        ; preds = %if.end219
  %117 = ptrtoint ptr %add.ptr225 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %add.ptr225, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1229866072, i32 %118)
  %cmp.i696 = icmp eq i32 %118, 1229866072
  br i1 %cmp.i696, label %if.end257, label %if.then251, !prof !112

if.then251:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %vcn_size_bits266 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %vcn_size_bits266, align 1
  %sh_prom254 = zext i8 %120 to i64
  %shr255 = lshr i64 %ia_pos.1, %sh_prom254
  %121 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %3, ptr noundef nonnull @.str.8, i64 noundef %shr255, i32 noundef %122) #9
  br label %err_out

if.end257:                                        ; preds = %if.end241
  %index_block_vcn = getelementptr inbounds %struct.INDEX_BLOCK, ptr %add.ptr225, i32 0, i32 4
  %123 = ptrtoint ptr %index_block_vcn to i32
  call void @__asan_loadN_noabort(i32 %123, i32 8)
  %124 = load i64, ptr %index_block_vcn, align 1
  %125 = tail call i64 @llvm.bswap.i64(i64 %124) #9
  %126 = ptrtoint ptr %vcn_size_bits266 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %vcn_size_bits266, align 1
  %sh_prom268 = zext i8 %127 to i64
  %shr269 = ashr i64 %and220, %sh_prom268
  call void @__sanitizer_cov_trace_cmp8(i64 %125, i64 %shr269)
  %cmp270.not = icmp eq i64 %125, %shr269
  br i1 %cmp270.not, label %if.end287, label %if.then278, !prof !112

if.then278:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #11
  %shr285 = lshr i64 %ia_pos.1, %sh_prom268
  %128 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %3, ptr noundef nonnull @.str.33, i64 noundef %125, i64 noundef %shr285, i32 noundef %129) #9
  br label %err_out

if.end287:                                        ; preds = %if.end257
  %index288 = getelementptr inbounds %struct.INDEX_BLOCK, ptr %add.ptr225, i32 0, i32 5
  %allocated_size = getelementptr inbounds %struct.INDEX_HEADER, ptr %index288, i32 0, i32 2
  %130 = ptrtoint ptr %allocated_size to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %allocated_size, align 1
  %132 = tail call i32 @llvm.bswap.i32(i32 %131)
  %add289 = add i32 %132, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add289, i32 %112)
  %cmp292.not = icmp eq i32 %add289, %112
  br i1 %cmp292.not, label %if.end312, label %if.then300, !prof !112

if.then300:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #11
  %shr305 = lshr i64 %ia_pos.1, %sh_prom268
  %133 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %3, ptr noundef nonnull @.str.10, i64 noundef %shr305, i32 noundef %134, i32 noundef %add289, i32 noundef %112) #9
  br label %err_out

if.end312:                                        ; preds = %if.end287
  %add.ptr315 = getelementptr i8, ptr %add.ptr225, i32 %112
  %cmp317 = icmp ugt ptr %add.ptr315, %add.ptr229
  br i1 %cmp317, label %if.then325, label %if.end332, !prof !115

if.then325:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #11
  %shr330 = lshr i64 %ia_pos.1, %sh_prom268
  %135 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %3, ptr noundef nonnull @.str.11, i64 noundef %shr330, i32 noundef %136) #9
  br label %err_out

if.end332:                                        ; preds = %if.end312
  %index_length341 = getelementptr inbounds %struct.INDEX_HEADER, ptr %index288, i32 0, i32 1
  %137 = ptrtoint ptr %index_length341 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %index_length341, align 1
  %139 = tail call i32 @llvm.bswap.i32(i32 %138)
  %add.ptr342 = getelementptr i8, ptr %index288, i32 %139
  %cmp346 = icmp ugt ptr %add.ptr342, %add.ptr315
  br i1 %cmp346, label %if.then354, label %if.end361, !prof !115

if.then354:                                       ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #11
  %shr359 = lshr i64 %ia_pos.1, %sh_prom268
  %140 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %3, ptr noundef nonnull @.str.12, i64 noundef %shr359, i32 noundef %141) #9
  br label %err_out

if.end361:                                        ; preds = %if.end332
  %142 = ptrtoint ptr %index288 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %index288, align 1
  %144 = tail call i32 @llvm.bswap.i32(i32 %143)
  %add.ptr365 = getelementptr i8, ptr %index288, i32 %144
  %sub.ptr.rhs.cast368 = ptrtoint ptr %add.ptr225 to i32
  %sub.ptr.lhs.cast367799 = ptrtoint ptr %add.ptr365 to i32
  %sub.ptr.sub369800 = sub i32 %sub.ptr.lhs.cast367799, %sub.ptr.rhs.cast368
  %conv370801 = sext i32 %sub.ptr.sub369800 to i64
  %add371802 = add i64 %and220, %conv370801
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 1366, ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef nonnull @.str.34, i64 noundef %add371802) #9
  %cmp372803 = icmp ult ptr %add.ptr365, %add.ptr225
  %add.ptr375804 = getelementptr i8, ptr %add.ptr365, i32 16
  %cmp376805 = icmp ugt ptr %add.ptr375804, %add.ptr342
  %or.cond682806 = select i1 %cmp372803, i1 true, i1 %cmp376805
  br i1 %or.cond682806, label %if.end361.err_out_crit_edge, label %lor.rhs378.lr.ph, !prof !126

if.end361.err_out_crit_edge:                      ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

lor.rhs378.lr.ph:                                 ; preds = %if.end361
  %sub399 = sub i64 %ia_pos.1, %and220
  br label %lor.rhs378

lor.rhs378:                                       ; preds = %for.inc428.lor.rhs378_crit_edge, %lor.rhs378.lr.ph
  %conv370809 = phi i64 [ %conv370801, %lor.rhs378.lr.ph ], [ %conv370, %for.inc428.lor.rhs378_crit_edge ]
  %ie.1807 = phi ptr [ %add.ptr365, %lor.rhs378.lr.ph ], [ %add.ptr431, %for.inc428.lor.rhs378_crit_edge ]
  %key_length379 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.1807, i32 0, i32 2
  %145 = ptrtoint ptr %key_length379 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 2)
  %146 = load i16, ptr %key_length379, align 1
  %147 = tail call i16 @llvm.bswap.i16(i16 %146)
  %conv380 = zext i16 %147 to i32
  %add.ptr381 = getelementptr i8, ptr %ie.1807, i32 %conv380
  %cmp382 = icmp ugt ptr %add.ptr381, %add.ptr342
  br i1 %cmp382, label %lor.rhs378.err_out_crit_edge, label %if.end392, !prof !115

lor.rhs378.err_out_crit_edge:                     ; preds = %lor.rhs378
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end392:                                        ; preds = %lor.rhs378
  %flags393 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.1807, i32 0, i32 3
  %148 = ptrtoint ptr %flags393 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 2)
  %149 = load i16, ptr %flags393, align 1
  %150 = and i16 %149, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %150)
  %tobool396.not = icmp eq i16 %150, 0
  br i1 %tobool396.not, label %if.end398, label %if.end392.find_next_index_buffer_crit_edge

if.end392.find_next_index_buffer_crit_edge:       ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_next_index_buffer

if.end398:                                        ; preds = %if.end392
  call void @__sanitizer_cov_trace_cmp8(i64 %sub399, i64 %conv370809)
  %cmp404 = icmp sgt i64 %sub399, %conv370809
  br i1 %cmp404, label %if.end398.for.inc428_crit_edge, label %if.end407

if.end398.for.inc428_crit_edge:                   ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc428

if.end407:                                        ; preds = %if.end398
  %151 = ptrtoint ptr %index_block_vcn to i32
  call void @__asan_loadN_noabort(i32 %151, i32 8)
  %152 = load i64, ptr %index_block_vcn, align 1
  %153 = tail call i64 @llvm.bswap.i64(i64 %152) #9
  %154 = ptrtoint ptr %vcn_size_bits266 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %vcn_size_bits266, align 1
  %sh_prom417 = zext i8 %155 to i64
  %shl418 = shl i64 %153, %sh_prom417
  %add419 = add i64 %shl418, %conv370809
  %156 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %mft_record_size, align 4
  %conv421 = zext i32 %157 to i64
  %add422 = add i64 %add419, %conv421
  %158 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %add422, ptr %pos, align 8
  %call424 = tail call fastcc i32 @ntfs_filldir(ptr noundef %5, ptr noundef %ia_page.3, ptr noundef %ie.1807, ptr noundef nonnull %call7.i, ptr noundef %actor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call424)
  %tobool425.not = icmp eq i32 %call424, 0
  br i1 %tobool425.not, label %if.end407.for.inc428_crit_edge, label %if.then426

if.end407.for.inc428_crit_edge:                   ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc428

if.then426:                                       ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ntfs_unmap_page(ptr noundef %ia_page.3)
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call149825)
  tail call void @iput(ptr noundef %call123) #9
  br label %abort

for.inc428:                                       ; preds = %if.end407.for.inc428_crit_edge, %if.end398.for.inc428_crit_edge
  %length429 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.1807, i32 0, i32 1
  %159 = ptrtoint ptr %length429 to i32
  call void @__asan_loadN_noabort(i32 %159, i32 2)
  %160 = load i16, ptr %length429, align 1
  %161 = tail call i16 @llvm.bswap.i16(i16 %160)
  %conv430 = zext i16 %161 to i32
  %add.ptr431 = getelementptr i8, ptr %ie.1807, i32 %conv430
  %sub.ptr.lhs.cast367 = ptrtoint ptr %add.ptr431 to i32
  %sub.ptr.sub369 = sub i32 %sub.ptr.lhs.cast367, %sub.ptr.rhs.cast368
  %conv370 = sext i32 %sub.ptr.sub369 to i64
  %add371 = add i64 %and220, %conv370
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 1366, ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef nonnull @.str.34, i64 noundef %add371) #9
  %cmp372 = icmp ult ptr %add.ptr431, %add.ptr225
  %add.ptr375 = getelementptr i8, ptr %add.ptr431, i32 16
  %cmp376 = icmp ugt ptr %add.ptr375, %add.ptr342
  %or.cond682 = select i1 %cmp372, i1 true, i1 %cmp376
  br i1 %or.cond682, label %for.inc428.err_out_crit_edge, label %for.inc428.lor.rhs378_crit_edge, !prof !126

for.inc428.lor.rhs378_crit_edge:                  ; preds = %for.inc428
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs378

for.inc428.err_out_crit_edge:                     ; preds = %for.inc428
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

unm_EOD:                                          ; preds = %if.end173
  %tobool433.not = icmp eq ptr %ia_page.2, null
  br i1 %tobool433.not, label %unm_EOD.if.end435_crit_edge, label %if.then434

unm_EOD.if.end435_crit_edge:                      ; preds = %unm_EOD
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end435

if.then434:                                       ; preds = %unm_EOD
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_page(ptr noundef nonnull %ia_page.2) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef nonnull %ia_page.2)
  br label %if.end435

if.end435:                                        ; preds = %if.then434, %unm_EOD.if.end435_crit_edge
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call149825)
  tail call void @iput(ptr noundef %call123) #9
  br label %EOD

EOD:                                              ; preds = %if.end435, %for.end.EOD_crit_edge
  %162 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %mft_record_size, align 4
  %conv437 = zext i32 %163 to i64
  %add438 = add i64 %call3, %conv437
  %164 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %add438, ptr %pos, align 8
  br label %abort

abort:                                            ; preds = %EOD, %if.then426, %if.then108
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

err_out:                                          ; preds = %for.inc428.err_out_crit_edge, %lor.rhs378.err_out_crit_edge, %if.end361.err_out_crit_edge, %if.then354, %if.then325, %if.then300, %if.then278, %if.then251, %if.then239, %if.then215
  %err.1 = phi i32 [ %98, %if.then215 ], [ 0, %if.then239 ], [ 0, %if.then251 ], [ 0, %if.then278 ], [ 0, %if.then300 ], [ 0, %if.then325 ], [ 0, %if.then354 ], [ 0, %for.inc428.err_out_crit_edge ], [ 0, %lor.rhs378.err_out_crit_edge ], [ 0, %if.end361.err_out_crit_edge ]
  %ia_page.4 = phi ptr [ null, %if.then215 ], [ %ia_page.3, %if.then239 ], [ %ia_page.3, %if.then251 ], [ %ia_page.3, %if.then278 ], [ %ia_page.3, %if.then300 ], [ %ia_page.3, %if.then325 ], [ %ia_page.3, %if.then354 ], [ %ia_page.3, %for.inc428.err_out_crit_edge ], [ %ia_page.3, %lor.rhs378.err_out_crit_edge ], [ %ia_page.3, %if.end361.err_out_crit_edge ]
  %tobool440.not = icmp eq ptr %call149825, null
  br i1 %tobool440.not, label %err_out.if.end442_crit_edge, label %if.then441

err_out.if.end442_crit_edge:                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end442

if.then441:                                       ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ntfs_unmap_page(ptr noundef nonnull %call149825)
  br label %iput_err_out

iput_err_out:                                     ; preds = %if.then441, %if.then151, %if.then140
  %err.2 = phi i32 [ %err.1, %if.then441 ], [ 0, %if.then140 ], [ %91, %if.then151 ]
  %ia_page.5 = phi ptr [ %ia_page.4, %if.then441 ], [ null, %if.then140 ], [ %ia_page.0.lcssa, %if.then151 ]
  tail call void @iput(ptr noundef %call123) #9
  br label %if.end442

if.end442:                                        ; preds = %iput_err_out, %err_out.if.end442_crit_edge
  %err.3 = phi i32 [ %err.2, %iput_err_out ], [ %err.1, %err_out.if.end442_crit_edge ]
  %ia_page.6 = phi ptr [ %ia_page.5, %iput_err_out ], [ %ia_page.4, %err_out.if.end442_crit_edge ]
  %tobool443.not = icmp eq ptr %ia_page.6, null
  br i1 %tobool443.not, label %if.end442.if.end445_crit_edge, label %if.then444

if.end442.if.end445_crit_edge:                    ; preds = %if.end442
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end445

if.then444:                                       ; preds = %if.end442
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_page(ptr noundef nonnull %ia_page.6) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef nonnull %ia_page.6)
  br label %if.end445

if.end445:                                        ; preds = %if.then444, %if.end442.if.end445_crit_edge, %if.then125, %for.inc.if.end445_crit_edge, %lor.rhs.if.end445_crit_edge, %if.end63.if.end445_crit_edge, %if.end51.if.end445_crit_edge, %if.then49, %if.end26.if.end445_crit_edge, %if.then24, %if.end8.if.end445_crit_edge
  %ctx.3718 = phi ptr [ null, %if.then444 ], [ null, %if.end442.if.end445_crit_edge ], [ %call27, %if.end51.if.end445_crit_edge ], [ null, %if.end26.if.end445_crit_edge ], [ null, %if.end8.if.end445_crit_edge ], [ %call27, %if.then49 ], [ null, %if.then24 ], [ null, %if.then125 ], [ null, %if.end63.if.end445_crit_edge ], [ null, %lor.rhs.if.end445_crit_edge ], [ null, %for.inc.if.end445_crit_edge ]
  %err.3717 = phi i32 [ %err.3, %if.then444 ], [ %err.3, %if.end442.if.end445_crit_edge ], [ -12, %if.end51.if.end445_crit_edge ], [ -12, %if.end26.if.end445_crit_edge ], [ -12, %if.end8.if.end445_crit_edge ], [ %call41, %if.then49 ], [ %39, %if.then24 ], [ %85, %if.then125 ], [ 0, %if.end63.if.end445_crit_edge ], [ 0, %lor.rhs.if.end445_crit_edge ], [ 0, %for.inc.if.end445_crit_edge ]
  %ir.3716 = phi ptr [ null, %if.then444 ], [ null, %if.end442.if.end445_crit_edge ], [ null, %if.end51.if.end445_crit_edge ], [ null, %if.end26.if.end445_crit_edge ], [ null, %if.end8.if.end445_crit_edge ], [ null, %if.then49 ], [ null, %if.then24 ], [ null, %if.then125 ], [ %call9.i, %if.end63.if.end445_crit_edge ], [ %call9.i, %lor.rhs.if.end445_crit_edge ], [ %call9.i, %for.inc.if.end445_crit_edge ]
  %m.3715 = phi ptr [ null, %if.then444 ], [ null, %if.end442.if.end445_crit_edge ], [ %call22, %if.end51.if.end445_crit_edge ], [ %call22, %if.end26.if.end445_crit_edge ], [ null, %if.end8.if.end445_crit_edge ], [ %call22, %if.then49 ], [ null, %if.then24 ], [ null, %if.then125 ], [ null, %if.end63.if.end445_crit_edge ], [ null, %lor.rhs.if.end445_crit_edge ], [ null, %for.inc.if.end445_crit_edge ]
  tail call void @kfree(ptr noundef %ir.3716) #9
  tail call void @kfree(ptr noundef %call7.i) #9
  %tobool446.not = icmp eq ptr %ctx.3718, null
  br i1 %tobool446.not, label %if.end445.if.end448_crit_edge, label %if.then447

if.end445.if.end448_crit_edge:                    ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end448

if.then447:                                       ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %ctx.3718) #9
  br label %if.end448

if.end448:                                        ; preds = %if.then447, %if.end445.if.end448_crit_edge
  %tobool449.not = icmp eq ptr %m.3715, null
  br i1 %tobool449.not, label %if.end448.if.end451_crit_edge, label %if.then450

if.end448.if.end451_crit_edge:                    ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end451

if.then450:                                       ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i) #9
  br label %if.end451

if.end451:                                        ; preds = %if.then450, %if.end448.if.end451_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3717)
  %tobool452.not = icmp eq i32 %err.3717, 0
  %spec.store.select = select i1 %tobool452.not, i32 -5, i32 %err.3717
  %sub455 = sub i32 0, %spec.store.select
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 1431, ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef nonnull @.str.35, i32 noundef %sub455) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end451, %abort, %if.then6.i.cleanup_crit_edge, %if.then.i686.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end451 ], [ 0, %abort ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then.i686.cleanup_crit_edge ], [ 0, %if.then6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_dir_open(ptr noundef %vi, ptr nocapture noundef readnone %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i64 @i_size_read(ptr noundef %vi)
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186040320, i64 %call)
  %cmp = icmp sgt i64 %call, 17592186040320
  %. = select i1 %cmp, i32 -27, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_dir_fsync(ptr noundef %filp, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  %na = alloca %struct.ntfs_attr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %na) #9
  %4 = getelementptr inbounds %struct.ntfs_attr, ptr %na, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ntfs_attr, ptr %na, i32 0, i32 2
  %6 = getelementptr inbounds %struct.ntfs_attr, ptr %na, i32 0, i32 3
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 1494, ptr noundef nonnull @__func__.ntfs_dir_fsync, ptr noundef nonnull @.str.45, i32 noundef %8) #9
  %call = tail call i32 @file_write_and_wait_range(ptr noundef %filp, i64 noundef %start, i64 noundef %end) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #9
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %3, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %11)
  %cmp.not = icmp eq i16 %11, 16384
  br i1 %cmp.not, label %do.end12, label %do.body6, !prof !112

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1501, 0\0A.popsection", ""() #9, !srcloc !127
  unreachable

do.end12:                                         ; preds = %if.end
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  %14 = ptrtoint ptr %na to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %na, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1342177280, ptr %6, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @I30, ptr %4, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %5, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %call15 = call ptr @ilookup5(ptr noundef %19, i32 noundef %13, ptr noundef nonnull @ntfs_test_inode, ptr noundef nonnull %na) #9
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end12.if.end22_crit_edge, label %if.then17

do.end12.if.end22_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then17:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datasync)
  %tobool18.not = icmp eq i32 %datasync, 0
  %lnot.ext20 = zext i1 %tobool18.not to i32
  %call21 = call i32 @write_inode_now(ptr noundef nonnull %call15, i32 noundef %lnot.ext20) #9
  call void @iput(ptr noundef nonnull %call15) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %do.end12.if.end22_crit_edge
  %call23 = call i32 @__ntfs_write_inode(ptr noundef %3, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datasync)
  %tobool24.not = icmp eq i32 %datasync, 0
  %lnot.ext26 = zext i1 %tobool24.not to i32
  %call27 = call i32 @write_inode_now(ptr noundef %3, i32 noundef %lnot.ext26) #9
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 26
  %22 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_bdev, align 4
  %call29 = call i32 @sync_blockdev(ptr noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp ne i32 %call29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool31.not = icmp eq i32 %call23, 0
  %spec.select = select i1 %tobool30.not, i1 %tobool31.not, i1 false
  br i1 %spec.select, label %if.end22.if.else_crit_edge, label %if.end41, !prof !115

if.end22.if.else_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end41:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool42.not = icmp eq i32 %call23, 0
  br i1 %tobool42.not, label %if.then51, label %if.end41.if.else_crit_edge, !prof !112

if.end41.if.else_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then51:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 1518, ptr noundef nonnull @__func__.ntfs_dir_fsync, ptr noundef nonnull @.str.46) #9
  br label %if.end55

if.else:                                          ; preds = %if.end41.if.else_crit_edge, %if.end22.if.else_crit_edge
  %ret.085 = phi i32 [ %call23, %if.end41.if.else_crit_edge ], [ %call29, %if.end22.if.else_crit_edge ]
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  %cond = select i1 %tobool24.not, ptr @.str.49, ptr @.str.48
  %26 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino, align 8
  %sub = sub i32 0, %ret.085
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_dir_fsync, ptr noundef %25, ptr noundef nonnull @.str.47, ptr noundef nonnull %cond, i32 noundef %27, i32 noundef %sub) #9
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then51
  %ret.086 = phi i32 [ %ret.085, %if.else ], [ 0, %if.then51 ]
  call void @up_write(ptr noundef %i_rwsem.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.086, %if.end55 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %na) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !128
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %1 = tail call ptr @llvm.returnaddress(i32 0) #9
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call ptr @llvm.returnaddress(i32 0) #9
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #9
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !129
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !115

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !130
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !132
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !133
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !134
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  ret i64 %11
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_filldir(ptr noundef %vol, ptr noundef %ia_page, ptr noundef %ie, ptr noundef %name, ptr noundef %actor) unnamed_addr #4 align 64 {
entry:
  %name.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %name, ptr %name.addr, align 4
  %file_name_type = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie, i32 0, i32 5, i32 1, i32 49
  %1 = ptrtoint ptr %file_name_type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %file_name_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp = icmp eq i8 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 1023, ptr noundef nonnull @__func__.ntfs_filldir, ptr noundef nonnull @.str.38) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ie to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %ie, align 1
  %5 = and i64 %4, -65536
  %6 = tail call i64 @llvm.bswap.i64(i64 %5)
  %conv2 = trunc i64 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv2)
  %cmp3 = icmp eq i32 %conv2, 5
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 1027, ptr noundef nonnull @__func__.ntfs_filldir, ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv2)
  %cmp11 = icmp ult i32 %conv2, 16
  br i1 %cmp11, label %land.lhs.true, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end6
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then13, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 1032, ptr noundef nonnull @__func__.ntfs_filldir, ptr noundef nonnull @.str.40) #9
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %file_name = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie, i32 1
  %file_name_length = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie, i32 0, i32 5, i32 1, i32 48
  %10 = ptrtoint ptr %file_name_length to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %file_name_length, align 1
  %conv17 = zext i8 %11 to i32
  %call18 = call i32 @ntfs_ucstonls(ptr noundef %vol, ptr noundef %file_name, i32 noundef %conv17, ptr noundef nonnull %name.addr, i32 noundef 1531) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 1
  br i1 %cmp19, label %if.then21, label %if.end27

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vol, align 8
  %14 = ptrtoint ptr %ie to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %ie, align 1
  %16 = and i64 %15, -4294967296
  %17 = call i64 @llvm.bswap.i64(i64 %16)
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_filldir, ptr noundef %13, ptr noundef nonnull @.str.41, i64 noundef %17) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end14
  %file_attributes = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie, i32 0, i32 5, i32 1, i32 40
  %18 = ptrtoint ptr %file_attributes to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %file_attributes, align 1
  %and29 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %. = select i1 %tobool30.not, i32 8, i32 4
  %20 = ptrtoint ptr %ie to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %ie, align 1
  %22 = and i64 %21, -65536
  %23 = call i64 @llvm.bswap.i64(i64 %22)
  %conv36 = trunc i64 %23 to i32
  %tobool37.not = icmp eq ptr %ia_page, null
  br i1 %tobool37.not, label %if.end27.if.end39_crit_edge, label %if.then38

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then38:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  call void @unlock_page(ptr noundef nonnull %ia_page) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end27.if.end39_crit_edge
  %24 = ptrtoint ptr %name.addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name.addr, align 4
  %pos = getelementptr inbounds %struct.dir_context, ptr %actor, i32 0, i32 1
  %26 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pos, align 8
  %cond = select i1 %tobool30.not, ptr @.str.44, ptr @.str.43
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.3, i32 noundef 1057, ptr noundef nonnull @__func__.ntfs_filldir, ptr noundef nonnull @.str.42, ptr noundef %25, i32 noundef %call18, i64 noundef %27, i32 noundef %conv36, ptr noundef nonnull %cond) #9
  %28 = ptrtoint ptr %name.addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name.addr, align 4
  %conv42 = and i64 %23, 4294967295
  %30 = ptrtoint ptr %actor to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %actor, align 8
  %32 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %pos, align 8
  %call.i = call i32 %31(ptr noundef %actor, ptr noundef %29, i32 noundef %call18, i64 noundef %33, i64 noundef %conv42, i32 noundef %.) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp ne i32 %call.i, 0
  %brmerge = or i1 %tobool37.not, %cmp.i
  %.mux = zext i1 %cmp.i to i32
  br i1 %brmerge, label %if.end39.cleanup_crit_edge, label %if.then47

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %if.end39
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 788) #9
  %34 = getelementptr inbounds %struct.page, ptr %ia_page, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !112

if.then.i.i:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %36, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %ia_page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %37, %if.end.i.i ]
  %38 = inttoptr i32 %retval.0.i.i to ptr
  %39 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !112

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %38, ptr noundef nonnull @.str.21) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !117
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %38, i32 noundef 4) #9
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %38, align 4
  %and.i.i4.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %38, i32 1, i32 3, i32 1) #9
  %44 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #9, !srcloc !118
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !119
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.cleanup_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i.cleanup_crit_edge:           ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  call void @__folio_lock(ptr noundef %38) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %folio_trylock.exit.i.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.then21, %if.then13, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then21 ], [ 0, %if.then13 ], [ %.mux, %if.end39.cleanup_crit_edge ], [ 0, %folio_trylock.exit.i.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_iget(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_ucstonls(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup5(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_test_inode(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ntfs_write_inode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !86, !88, !90, !92, !93, !94, !96, !97, !99, !101, !102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @I30, !1, !"I30", i1 false, i1 false}
!1 = !{!"../fs/ntfs/dir.c", i32 23, i32 10}
!2 = !{ptr @__func__.ntfs_lookup_inode_by_name, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ntfs/dir.c", i32 91, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ntfs/dir.c", i32 105, i32 4}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ntfs/dir.c", i32 203, i32 5}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ntfs/dir.c", i32 280, i32 3}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ntfs/dir.c", i32 286, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ntfs/dir.c", i32 311, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ntfs/dir.c", i32 324, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ntfs/dir.c", i32 330, i32 3}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ntfs/dir.c", i32 336, i32 3}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ntfs/dir.c", i32 346, i32 3}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ntfs/dir.c", i32 357, i32 3}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ntfs/dir.c", i32 366, i32 3}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ntfs/dir.c", i32 385, i32 4}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ntfs/dir.c", i32 463, i32 5}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ntfs/dir.c", i32 536, i32 4}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ntfs/dir.c", i32 557, i32 3}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ntfs/dir.c", i32 589, i32 2}
!38 = !{ptr @ntfs_dir_ops, !39, !"ntfs_dir_ops", i1 false, i1 false}
!39 = !{!"../fs/ntfs/dir.c", i32 1528, i32 30}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/mm.h", i32 717, i32 2}
!52 = !{ptr @__func__.ntfs_readdir, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ntfs/dir.c", i32 1105, i32 2}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ntfs/dir.c", i32 1184, i32 3}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ntfs/dir.c", i32 1220, i32 2}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ntfs/dir.c", i32 1223, i32 3}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ntfs/dir.c", i32 1231, i32 3}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ntfs/dir.c", i32 1239, i32 2}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ntfs/dir.c", i32 1246, i32 3}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ntfs/dir.c", i32 1272, i32 2}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ntfs/dir.c", i32 1288, i32 4}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ntfs/dir.c", i32 1316, i32 3}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ntfs/dir.c", i32 1364, i32 3}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ntfs/dir.c", i32 1431, i32 2}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/fs.h", i32 3571, i32 25}
!81 = !{ptr @__func__.ntfs_filldir, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ntfs/dir.c", i32 1023, i32 3}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ntfs/dir.c", i32 1027, i32 3}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ntfs/dir.c", i32 1032, i32 3}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/ntfs/dir.c", i32 1039, i32 3}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ntfs/dir.c", i32 1055, i32 2}
!92 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @__func__.ntfs_dir_fsync, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ntfs/dir.c", i32 1494, i32 2}
!96 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ntfs/dir.c", i32 1518, i32 3}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ntfs/dir.c", i32 1520, i32 3}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"branch_weights", i32 2000, i32 1}
!113 = !{i64 2154640598, i64 2154641075, i64 2154640635, i64 2154640691, i64 2154640725, i64 2154640749, i64 2154640790, i64 2154640811, i64 2154640839, i64 2154640873}
!114 = !{i64 2154642165, i64 2154642642, i64 2154642202, i64 2154642258, i64 2154642292, i64 2154642316, i64 2154642357, i64 2154642378, i64 2154642406, i64 2154642440}
!115 = !{!"branch_weights", i32 1, i32 2000}
!116 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!117 = !{i64 2150624952, i64 2150625443, i64 2150624989, i64 2150625045, i64 2150625079, i64 2150625103, i64 2150625144, i64 2150625165, i64 2150625193, i64 2150625227}
!118 = !{i64 2148725065, i64 2148725097, i64 2148725126, i64 2148725160, i64 2148725191, i64 2148725214}
!119 = !{i64 2148814170}
!120 = !{i64 2150677984, i64 2150678475, i64 2150678021, i64 2150678077, i64 2150678111, i64 2150678135, i64 2150678176, i64 2150678197, i64 2150678225, i64 2150678259}
!121 = !{i64 2153214023, i64 2153214506, i64 2153214060, i64 2153214116, i64 2153214150, i64 2153214174, i64 2153214215, i64 2153214236, i64 2153214264, i64 2153214298}
!122 = !{i64 2148804683}
!123 = !{i64 2148719392, i64 2148719424, i64 2148719453, i64 2148719487, i64 2148719518, i64 2148719541}
!124 = !{i64 2148804912}
!125 = !{i64 2148540805, i64 2148540810, i64 2148540823, i64 2148540867, i64 2148540901, i64 2148540922}
!126 = !{!"branch_weights", i32 4001, i32 4000000}
!127 = !{i64 2154660479, i64 2154660958, i64 2154660516, i64 2154660572, i64 2154660606, i64 2154660630, i64 2154660671, i64 2154660692, i64 2154660720, i64 2154660754}
!128 = !{i64 1120887, i64 1120948}
!129 = !{i64 1123619}
!130 = !{i64 1123904}
!131 = !{i64 2152559038}
!132 = !{i64 2152558880}
!133 = !{i64 2152559208}
!134 = !{i64 2150145022}
