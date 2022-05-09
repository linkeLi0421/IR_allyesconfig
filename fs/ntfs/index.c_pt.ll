; ModuleID = '/llk/IR_all_yes/fs/ntfs/index.c_pt.bc'
source_filename = "../fs/ntfs/index.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.61 }
%struct.atomic_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.ntfs_index_context = type { ptr, ptr, ptr, i16, i8, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.5, %union.anon.56, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.56 = type { %struct.atomic_t }
%struct._ntfs_inode = type { %struct.rwlock_t, i64, i64, i32, i32, i16, %struct.atomic_t, ptr, i32, ptr, i32, %struct.runlist, %struct.mutex, ptr, i32, i32, ptr, %struct.runlist, %union.anon.73, %struct.mutex, i32, %union.anon.76 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.runlist = type { ptr, %struct.rw_semaphore }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.73 = type { %struct.anon.75 }
%struct.anon.75 = type { i64, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.76 = type { ptr }
%struct.ntfs_attr_search_ctx = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.85 }
%union.anon.85 = type { %struct.anon.87 }
%struct.anon.87 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.anon.86 = type { i32, i16, i8, i8 }
%struct.INDEX_ROOT = type { i32, i32, i32, i8, [3 x i8], %struct.INDEX_HEADER }
%struct.INDEX_HEADER = type { i32, i32, i32, i8, [3 x i8] }
%struct.INDEX_ENTRY = type <{ %union.anon.77, i16, i16, i16, i16, %union.anon.80 }>
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { i64 }
%union.anon.80 = type <{ %struct.GUID, [50 x i8] }>
%struct.GUID = type { i32, i16, i16, [8 x i8] }
%struct.anon.79 = type { i16, i16, i32 }
%struct.big_ntfs_inode = type { %struct._ntfs_inode, %struct.inode }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, i64, i64, i64, i64, i64, i64, ptr, ptr, %struct.rw_semaphore, ptr, i32, ptr, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.INDEX_BLOCK = type { i32, i16, i16, i64, i64, %struct.INDEX_HEADER }

@ntfs_index_ctx_cache = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ntfs/index.c\00", [16 x i8] zeroinitializer }, align 32
@__func__.ntfs_index_lookup = private unnamed_addr constant [18 x i8] c"ntfs_index_lookup\00", align 1
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Entering.\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Index uses unsupported collation rule 0x%x.  Aborting lookup.\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"map_mft_record() failed with error code %ld.\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Index root attribute missing in inode 0x%lx.\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Done.\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Entry not found.\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"No index allocation attribute but index entry requires one.  Inode 0x%lx is corrupt or driver bug.\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to map index page, error %ld.\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Out of bounds check failed.  Corrupt inode 0x%lx or driver bug.\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Index record with vcn 0x%llx is corrupt.  Corrupt inode 0x%lx.  Run chkdsk.\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"Actual VCN (0x%llx) of index buffer is different from expected VCN (0x%llx).  Inode 0x%lx is corrupt or driver bug.\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [136 x i8], [56 x i8] } { [136 x i8] c"Index buffer (VCN 0x%llx) of inode 0x%lx has a size (%u) differing from the index specified size (%u).  Inode is corrupt or driver bug.\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [132 x i8], [60 x i8] } { [132 x i8] c"Index buffer (VCN 0x%llx) of inode 0x%lx crosses page boundary.  Impossible!  Cannot access!  This is probably a bug in the driver.\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Size of index buffer (VCN 0x%llx) of inode 0x%lx exceeds maximum size.\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Index entry out of bounds in inode 0x%lx.\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Index entry with child node found in a leaf node in inode 0x%lx.\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Negative child node vcn in inode 0x%lx.\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Corrupt index.  Aborting lookup.\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 123, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 132, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 140, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 154, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 206, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 236, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 242, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 267, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 280, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 286, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 292, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 302, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 313, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 322, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 340, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 403, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 424, i32 2 }
@___asan_gen_.84 = private constant [19 x i8] c"../fs/ntfs/index.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 438, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 414, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 55, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 717, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 788, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 260, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @ntfs_index_ctx_get(ptr noundef %idx_ni) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_index_ctx_cache to i32))
  %0 = load ptr, ptr @ntfs_index_ctx_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %idx_ni, ptr %call, align 8
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %call, i32 4
  %2 = call ptr @memset(ptr %.compoundliteral.sroa.3.0..sroa_idx, i32 0, i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntfs_index_ctx_put(ptr noundef %ictx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %entry1 = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 1
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entry1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %if.then

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then:                                          ; preds = %entry
  %is_in_root = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 4
  %2 = ptrtoint ptr %is_in_root to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_in_root, align 2, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %actx = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 6
  %4 = ptrtoint ptr %actx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %actx, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then3.if.end_crit_edge, label %if.then5

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3.if.end_crit_edge
  %base_ni = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 7
  %6 = ptrtoint ptr %base_ni to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_ni, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end.if.end28_crit_edge, label %if.then8

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unmap_mft_record(ptr noundef nonnull %7) #6
  br label %if.end28

if.else:                                          ; preds = %if.then
  %page11 = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 9
  %8 = ptrtoint ptr %page11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page11, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.else.if.end28_crit_edge, label %do.body

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

do.body:                                          ; preds = %if.else
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !60

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i.not.i = icmp eq i32 %16, -1
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %10, align 4
  %and.i16.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !61

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !60

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i18.i = add i32 %18, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %19, %if.end.i20.i ]
  %20 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %20, ptr noundef nonnull @.str.19) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #6, !srcloc !62
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !60

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i25.i = add i32 %18, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %9 to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %21, %if.end.i27.i ]
  %22 = inttoptr i32 %retval.0.i28.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and1.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool14.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool14.not, label %do.body19, label %do.end25, !prof !61

do.body19:                                        ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/index.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #6, !srcloc !63
  unreachable

do.end25:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unlock_page(ptr noundef nonnull %9) #6
  tail call fastcc void @ntfs_unmap_page(ptr noundef nonnull %9)
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %if.else.if.end28_crit_edge, %if.then8, %if.end.if.end28_crit_edge, %entry.if.end28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_index_ctx_cache to i32))
  %25 = load ptr, ptr @ntfs_index_ctx_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %25, ptr noundef %ictx) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_put_search_ctx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mft_record(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ntfs_unmap_page(ptr noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 55) #6
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %entry.kunmap.exit_crit_edge [
    i32 2, label %entry.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

entry.kunmap.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #6
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %entry.kunmap.exit_crit_edge
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !60

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !61

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.21) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !64
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #6
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #6, !srcloc !66
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_unmap_page, %if.then.i.i.i.i.i)) #6
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !68

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #6
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__put_page(ptr noundef %8) #6
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_index_lookup(ptr noundef %key, i32 noundef %key_len, ptr nocapture noundef %ictx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ictx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ictx, align 4
  %vol2 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vol2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vol2, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %ext = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 123, ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef nonnull @.str.1) #6
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %do.body7, label %do.body13, !prof !61

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/index.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #6, !srcloc !69
  unreachable

do.body13:                                        ; preds = %entry
  %type = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612736, i32 %12)
  %cmp.not = icmp eq i32 %12, -1610612736
  br i1 %cmp.not, label %do.body30, label %do.body21, !prof !60

do.body21:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/index.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #6, !srcloc !70
  unreachable

do.body30:                                        ; preds = %do.body13
  %nr_extents = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 20
  %13 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_extents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp31.not = icmp eq i32 %14, -1
  br i1 %cmp31.not, label %do.body48, label %do.body39, !prof !60

do.body39:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/index.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #6, !srcloc !71
  unreachable

do.body48:                                        ; preds = %do.body30
  %tobool49.not = icmp eq ptr %7, null
  br i1 %tobool49.not, label %do.body59, label %do.body68, !prof !61

do.body59:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/index.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 127, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

do.body68:                                        ; preds = %do.body48
  %tobool69.not = icmp eq ptr %key, null
  br i1 %tobool69.not, label %do.body79, label %do.body88, !prof !61

do.body79:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/index.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 128, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

do.body88:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %key_len)
  %cmp89 = icmp slt i32 %key_len, 1
  br i1 %cmp89, label %do.body97, label %do.end105, !prof !61

do.body97:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/index.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 129, 0\0A.popsection", ""() #6, !srcloc !74
  unreachable

do.end105:                                        ; preds = %do.body88
  %itype = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 18
  %collation_rule = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 18, i32 0, i32 1
  %15 = ptrtoint ptr %collation_rule to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %collation_rule, align 8
  %17 = and i32 %16, -268435457
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %.not.i = icmp eq i32 %17, 0
  br i1 %.not.i, label %if.end.i, label %do.end105.if.then107_crit_edge, !prof !60

do.end105.if.then107_crit_edge:                   ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = tail call i32 @llvm.bswap.i32(i32 %16)
  br label %if.then107

if.end.i:                                         ; preds = %do.end105
  %18 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %19 = icmp ult i32 %18, 3
  %20 = and i32 %18, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %20)
  %21 = icmp eq i32 %20, 16
  %or.cond692 = or i1 %19, %21
  br i1 %or.cond692, label %if.end110, label %if.end.i.if.then107_crit_edge

if.end.i.if.then107_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then107

if.then107:                                       ; preds = %if.end.i.if.then107_crit_edge, %do.end105.if.then107_crit_edge
  %.pre-phi = phi i32 [ %.pre, %do.end105.if.then107_crit_edge ], [ %18, %if.end.i.if.then107_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %.pre-phi) #6
  br label %cleanup

if.end110:                                        ; preds = %if.end.i
  %call111 = tail call ptr @map_mft_record(ptr noundef nonnull %7) #6
  %cmp.i = icmp ugt ptr %call111, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then113, label %if.end116

if.then113:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call111 to i32
  %sub = sub i32 0, %22
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %sub) #6
  br label %cleanup

if.end116:                                        ; preds = %if.end110
  %call117 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef nonnull %7, ptr noundef %call111) #6
  %tobool118.not = icmp eq ptr %call117, null
  br i1 %tobool118.not, label %if.end116.if.end443_crit_edge, label %if.end128, !prof !61

if.end116.if.end443_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end443

if.end128:                                        ; preds = %if.end116
  %name = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 8
  %name_len = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %name_len, align 4
  %call129 = tail call i32 @ntfs_attr_lookup(i32 noundef -1879048192, ptr noundef %24, i32 noundef %26, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call117) #6
  %27 = zext i32 %call129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call129, label %if.end128.err_out_crit_edge [
    i32 0, label %if.end141
    i32 -2, label %err_out.thread676.thread685
  ], !prof !75

if.end128.err_out_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

err_out.thread676.thread685:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  %mft_no = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mft_no, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %29) #6
  br label %if.then442

if.end141:                                        ; preds = %if.end128
  %attr = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call117, i32 0, i32 1
  %30 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %attr, align 4
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %31, i32 0, i32 7
  %value_offset = getelementptr inbounds %struct.anon.86, ptr %data, i32 0, i32 1
  %32 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %value_offset, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %conv = zext i16 %34 to i32
  %add.ptr = getelementptr i8, ptr %31, i32 %conv
  %index = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr, i32 0, i32 5
  %index_length = getelementptr inbounds %struct.INDEX_HEADER, ptr %index, i32 0, i32 1
  %35 = ptrtoint ptr %index_length to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %index_length, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %add.ptr144 = getelementptr i8, ptr %index, i32 %37
  %38 = ptrtoint ptr %index to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %index, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %add.ptr147 = getelementptr i8, ptr %index, i32 %40
  %41 = ptrtoint ptr %call117 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call117, align 4
  %cmp148784 = icmp ult ptr %add.ptr147, %42
  %add.ptr150785 = getelementptr i8, ptr %add.ptr147, i32 16
  %cmp151786 = icmp ugt ptr %add.ptr150785, %add.ptr144
  %or.cond787 = select i1 %cmp148784, i1 true, i1 %cmp151786
  br i1 %or.cond787, label %if.end141.idx_err_out_crit_edge, label %if.end141.lor.lhs.false153_crit_edge

if.end141.lor.lhs.false153_crit_edge:             ; preds = %if.end141
  br label %lor.lhs.false153

if.end141.idx_err_out_crit_edge:                  ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %idx_err_out

lor.lhs.false153:                                 ; preds = %for.inc.lor.lhs.false153_crit_edge, %if.end141.lor.lhs.false153_crit_edge
  %ie.0788 = phi ptr [ %add.ptr219, %for.inc.lor.lhs.false153_crit_edge ], [ %add.ptr147, %if.end141.lor.lhs.false153_crit_edge ]
  %length = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.0788, i32 0, i32 1
  %43 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %length, align 1
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %conv154 = zext i16 %45 to i32
  %add.ptr155 = getelementptr i8, ptr %ie.0788, i32 %conv154
  %cmp156 = icmp ugt ptr %add.ptr155, %add.ptr144
  br i1 %cmp156, label %lor.lhs.false153.idx_err_out_crit_edge, label %if.end159

lor.lhs.false153.idx_err_out_crit_edge:           ; preds = %lor.lhs.false153
  call void @__sanitizer_cov_trace_pc() #8
  br label %idx_err_out

if.end159:                                        ; preds = %lor.lhs.false153
  %flags = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.0788, i32 0, i32 3
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %flags, align 1
  %48 = and i16 %47, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool161.not = icmp eq i16 %48, 0
  br i1 %tobool161.not, label %if.end163, label %if.end159.for.end_crit_edge

if.end159.for.end_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end163:                                        ; preds = %if.end159
  %key_length = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.0788, i32 0, i32 2
  %49 = ptrtoint ptr %key_length to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %key_length, align 1
  %51 = tail call i16 @llvm.bswap.i16(i16 %50)
  %conv164 = zext i16 %51 to i32
  %add = add nuw nsw i32 %conv164, 16
  %52 = ptrtoint ptr %ie.0788 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %ie.0788, align 1
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  %conv166 = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv166)
  %cmp167 = icmp ugt i32 %add, %conv166
  br i1 %cmp167, label %if.end163.idx_err_out_crit_edge, label %lor.lhs.false169

if.end163.idx_err_out_crit_edge:                  ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  br label %idx_err_out

lor.lhs.false169:                                 ; preds = %if.end163
  %data_length = getelementptr inbounds %struct.anon.79, ptr %ie.0788, i32 0, i32 1
  %55 = ptrtoint ptr %data_length to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %data_length, align 1
  %57 = tail call i16 @llvm.bswap.i16(i16 %56)
  %conv174 = zext i16 %57 to i32
  %add175 = add nuw nsw i32 %conv174, %conv166
  call void @__sanitizer_cov_trace_cmp4(i32 %add175, i32 %conv154)
  %cmp178 = icmp ugt i32 %add175, %conv154
  br i1 %cmp178, label %lor.lhs.false169.idx_err_out_crit_edge, label %if.end181

lor.lhs.false169.idx_err_out_crit_edge:           ; preds = %lor.lhs.false169
  call void @__sanitizer_cov_trace_pc() #8
  br label %idx_err_out

if.end181:                                        ; preds = %lor.lhs.false169
  call void @__sanitizer_cov_trace_cmp4(i32 %conv164, i32 %key_len)
  %cmp184 = icmp eq i32 %conv164, %key_len
  br i1 %cmp184, label %land.lhs.true, label %if.end181.if.end203_crit_edge

if.end181.if.end203_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203

land.lhs.true:                                    ; preds = %if.end181
  %key186 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.0788, i32 0, i32 5
  %bcmp648 = tail call i32 @bcmp(ptr nonnull %key, ptr %key186, i32 %key_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp648)
  %tobool188.not = icmp eq i32 %bcmp648, 0
  br i1 %tobool188.not, label %land.lhs.true.ir_done_crit_edge, label %land.lhs.true.if.end203_crit_edge

land.lhs.true.if.end203_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203

land.lhs.true.ir_done_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %ir_done

ir_done:                                          ; preds = %if.then224, %if.end203.ir_done_crit_edge, %land.lhs.true.ir_done_crit_edge
  %err.0 = phi i32 [ -2, %if.then224 ], [ %call209, %if.end203.ir_done_crit_edge ], [ 0, %land.lhs.true.ir_done_crit_edge ]
  %is_in_root = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 4
  %58 = ptrtoint ptr %is_in_root to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %is_in_root, align 2
  %ir190 = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 5
  %59 = ptrtoint ptr %ir190 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr, ptr %ir190, align 4
  br label %done

done:                                             ; preds = %ia_done, %ir_done
  %.sink1021 = phi ptr [ null, %ia_done ], [ %call117, %ir_done ]
  %.sink = phi ptr [ null, %ia_done ], [ %7, %ir_done ]
  %add.ptr254922.sink = phi ptr [ %add.ptr254, %ia_done ], [ null, %ir_done ]
  %call.i.i986.sink = phi ptr [ %call.i.i1151, %ia_done ], [ null, %ir_done ]
  %ie.1 = phi ptr [ %ie.2793, %ia_done ], [ %ie.0788, %ir_done ]
  %err.1 = phi i32 [ %err.2, %ia_done ], [ %err.0, %ir_done ]
  %actx377 = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 6
  %60 = ptrtoint ptr %actx377 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %.sink1021, ptr %actx377, align 4
  %base_ni378 = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 7
  %61 = ptrtoint ptr %base_ni378 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %.sink, ptr %base_ni378, align 4
  %ia379 = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 8
  %62 = ptrtoint ptr %ia379 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr254922.sink, ptr %ia379, align 4
  %page380 = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 9
  %63 = ptrtoint ptr %page380 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i.i986.sink, ptr %page380, align 4
  %entry195 = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 1
  %64 = ptrtoint ptr %entry195 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %ie.1, ptr %entry195, align 4
  %65 = ptrtoint ptr %ie.1 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %ie.1, align 1
  %67 = tail call i16 @llvm.bswap.i16(i16 %66)
  %conv198 = zext i16 %67 to i32
  %add.ptr199 = getelementptr i8, ptr %ie.1, i32 %conv198
  %data200 = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 2
  %68 = ptrtoint ptr %data200 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr199, ptr %data200, align 4
  %data_length202 = getelementptr inbounds %struct.anon.79, ptr %ie.1, i32 0, i32 1
  %69 = ptrtoint ptr %data_length202 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %data_length202, align 1
  %71 = tail call i16 @llvm.bswap.i16(i16 %70)
  %data_len = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 3
  %72 = ptrtoint ptr %data_len to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %data_len, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 206, ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef nonnull @.str.5) #6
  br label %cleanup

if.end203:                                        ; preds = %land.lhs.true.if.end203_crit_edge, %if.end181.if.end203_crit_edge
  %73 = ptrtoint ptr %collation_rule to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %collation_rule, align 8
  %key206 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.0788, i32 0, i32 5
  %call209 = tail call i32 @ntfs_collate(ptr noundef %3, i32 noundef %74, ptr noundef nonnull %key, i32 noundef %key_len, ptr noundef %key206, i32 noundef %conv164) #6
  %75 = zext i32 %call209 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call209, label %for.inc [
    i32 -1, label %if.end203.for.end_crit_edge
    i32 0, label %if.end203.ir_done_crit_edge
  ]

if.end203.ir_done_crit_edge:                      ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #8
  br label %ir_done

if.end203.for.end_crit_edge:                      ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %if.end203
  %76 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %length, align 1
  %78 = tail call i16 @llvm.bswap.i16(i16 %77)
  %conv218 = zext i16 %78 to i32
  %add.ptr219 = getelementptr i8, ptr %ie.0788, i32 %conv218
  %79 = ptrtoint ptr %call117 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call117, align 4
  %cmp148 = icmp ult ptr %add.ptr219, %80
  %add.ptr150 = getelementptr i8, ptr %add.ptr219, i32 16
  %cmp151 = icmp ugt ptr %add.ptr150, %add.ptr144
  %or.cond = select i1 %cmp148, i1 true, i1 %cmp151
  br i1 %or.cond, label %for.inc.idx_err_out_crit_edge, label %for.inc.lor.lhs.false153_crit_edge

for.inc.lor.lhs.false153_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false153

for.inc.idx_err_out_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %idx_err_out

for.end:                                          ; preds = %if.end203.for.end_crit_edge, %if.end159.for.end_crit_edge
  %flags.le = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.0788, i32 0, i32 3
  %81 = ptrtoint ptr %flags.le to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %flags.le, align 1
  %83 = and i16 %82, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool223.not = icmp eq i16 %83, 0
  br i1 %tobool223.not, label %if.then224, label %if.end225

if.then224:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 236, ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef nonnull @.str.6) #6
  br label %ir_done

if.end225:                                        ; preds = %for.end
  %84 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %state.i, align 4
  %86 = and i32 %85, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool227.not = icmp eq i32 %86, 0
  br i1 %tobool227.not, label %if.then228, label %if.end230

if.then228:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #8
  %mft_no229 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 4
  %87 = ptrtoint ptr %mft_no229 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mft_no229, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %88) #6
  br label %err_out.thread

if.end230:                                        ; preds = %if.end225
  %89 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %length, align 1
  %91 = tail call i16 @llvm.bswap.i16(i16 %90)
  %conv232 = zext i16 %91 to i32
  %add.ptr233 = getelementptr i8, ptr %ie.0788, i32 %conv232
  %add.ptr234 = getelementptr i8, ptr %add.ptr233, i32 -8
  %92 = ptrtoint ptr %add.ptr234 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %add.ptr234, align 8
  %94 = tail call i64 @llvm.bswap.i64(i64 %93) #6
  %i_mapping = getelementptr inbounds %struct.big_ntfs_inode, ptr %1, i32 0, i32 1, i32 9
  %95 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i_mapping, align 8
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call117) #6
  tail call void @unmap_mft_record(ptr noundef nonnull %7) #6
  %vcn_size_bits = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 18, i32 0, i32 3
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 13
  %97 = ptrtoint ptr %vcn_size_bits to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %vcn_size_bits, align 1
  %sh_prom1145 = zext i8 %98 to i64
  %shl1146 = shl i64 %94, %sh_prom1145
  %99 = lshr i64 %shl1146, 12
  %conv2391147 = trunc i64 %99 to i32
  %call.i.i1148 = tail call ptr @read_cache_page(ptr noundef %96, i32 noundef %conv2391147, ptr noundef null, ptr noundef null) #6
  %cmp.i.i1149 = icmp ugt ptr %call.i.i1148, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i1149, label %if.end230.if.then242_crit_edge, label %if.end230.if.then.i_crit_edge

if.end230.if.then.i_crit_edge:                    ; preds = %if.end230
  br label %if.then.i

if.end230.if.then242_crit_edge:                   ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then242

if.then.i:                                        ; preds = %if.end435.if.then.i_crit_edge, %if.end230.if.then.i_crit_edge
  %call.i.i1151 = phi ptr [ %call.i.i, %if.end435.if.then.i_crit_edge ], [ %call.i.i1148, %if.end230.if.then.i_crit_edge ]
  %vcn.01150 = phi i64 [ %191, %if.end435.if.then.i_crit_edge ], [ %94, %if.end230.if.then.i_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 44) #6
  %100 = ptrtoint ptr %call.i.i1151 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %call.i.i1151, align 4
  %shr.i.i12.i = lshr i32 %101, 30
  %102 = zext i32 %shr.i.i12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %shr.i.i12.i, label %if.then.i.if.then.i13.i_crit_edge [
    i32 2, label %if.then.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then.i.if.else.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

if.then.i.if.then.i13.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i13.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %103 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp2.i.not.i.i = icmp eq i32 %103, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i13.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i13.i_crit_edge:  ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i13.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

if.then.i13.i:                                    ; preds = %is_highmem_idx.exit.i.i.if.then.i13.i_crit_edge, %if.then.i.if.then.i13.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %call.i.i1151) #6
  br label %kmap.exit.i

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.then.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %call.i.i1151) #6
  br label %kmap.exit.i

kmap.exit.i:                                      ; preds = %if.else.i.i, %if.then.i13.i
  %104 = getelementptr inbounds %struct.page, ptr %call.i.i1151, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %104, align 4
  %and.i.i.i = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !60

if.then.i.i.i:                                    ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i.i = add i32 %106, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %call.i.i1151 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %107, %if.end.i.i.i ]
  %108 = inttoptr i32 %retval.0.i.i.i to ptr
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %cmp.i.not.i.i = icmp eq i32 %110, -1
  %111 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %104, align 4
  %and.i16.i.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i)
  %tobool.not.i17.i.i = icmp eq i32 %and.i16.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %do.end10.i.i, !prof !61

if.then.i.i:                                      ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i20.i.i, label %if.then.i19.i.i, !prof !60

if.then.i19.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i18.i.i = add i32 %112, -1
  br label %_compound_head.exit22.i.i

if.end.i20.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %call.i.i1151 to i32
  br label %_compound_head.exit22.i.i

_compound_head.exit22.i.i:                        ; preds = %if.end.i20.i.i, %if.then.i19.i.i
  %retval.0.i21.i.i = phi i32 [ %sub.i18.i.i, %if.then.i19.i.i ], [ %113, %if.end.i20.i.i ]
  %114 = inttoptr i32 %retval.0.i21.i.i to ptr
  tail call void @dump_page(ptr noundef %114, ptr noundef nonnull @.str.19) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #6, !srcloc !76
  unreachable

do.end10.i.i:                                     ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i27.i.i, label %if.then.i26.i.i, !prof !60

if.then.i26.i.i:                                  ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i25.i.i = add i32 %112, -1
  br label %PageError.exit.i

if.end.i27.i.i:                                   ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %call.i.i1151 to i32
  br label %PageError.exit.i

PageError.exit.i:                                 ; preds = %if.end.i27.i.i, %if.then.i26.i.i
  %retval.0.i28.i.i = phi i32 [ %sub.i25.i.i, %if.then.i26.i.i ], [ %115, %if.end.i27.i.i ]
  %116 = inttoptr i32 %retval.0.i28.i.i to ptr
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %116, align 4
  %119 = and i32 %118, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i = icmp eq i32 %119, 0
  br i1 %tobool.not.i, label %if.end246, label %ntfs_map_page.exit.thread

ntfs_map_page.exit.thread:                        ; preds = %PageError.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call.i.i1151) #6
  br label %if.then242

if.then242:                                       ; preds = %if.end435.if.then242_crit_edge, %ntfs_map_page.exit.thread, %if.end230.if.then242_crit_edge
  %retval.0.i654666 = phi ptr [ inttoptr (i32 -5 to ptr), %ntfs_map_page.exit.thread ], [ %call.i.i1148, %if.end230.if.then242_crit_edge ], [ %call.i.i, %if.end435.if.then242_crit_edge ]
  %120 = ptrtoint ptr %retval.0.i654666 to i32
  %sub244 = sub i32 0, %120
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %sub244) #6
  br label %err_out

if.end246:                                        ; preds = %PageError.exit.i
  tail call fastcc void @lock_page(ptr noundef %call.i.i1151)
  %call247 = tail call ptr @page_address(ptr noundef %call.i.i1151) #6
  %add.ptr258 = getelementptr i8, ptr %call247, i32 4096
  br label %fast_descend_into_child_node

fast_descend_into_child_node:                     ; preds = %if.then422.fast_descend_into_child_node_crit_edge, %if.end246
  %vcn.1 = phi i64 [ %vcn.01150, %if.end246 ], [ %191, %if.then422.fast_descend_into_child_node_crit_edge ]
  %121 = ptrtoint ptr %vcn_size_bits to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %vcn_size_bits, align 1
  %sh_prom251 = zext i8 %122 to i64
  %shl252 = shl i64 %vcn.1, %sh_prom251
  %123 = trunc i64 %shl252 to i32
  %idx.ext = and i32 %123, 4095
  %add.ptr254 = getelementptr i8, ptr %call247, i32 %idx.ext
  %cmp255 = icmp ult ptr %add.ptr254, %call247
  %cmp259 = icmp ugt ptr %add.ptr254, %add.ptr258
  %or.cond796 = or i1 %cmp255, %cmp259
  br i1 %or.cond796, label %if.then261, label %if.end263

if.then261:                                       ; preds = %fast_descend_into_child_node
  call void @__sanitizer_cov_trace_pc() #8
  %mft_no262 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 4
  %124 = ptrtoint ptr %mft_no262 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mft_no262, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %125) #6
  br label %unm_err_out

if.end263:                                        ; preds = %fast_descend_into_child_node
  %126 = ptrtoint ptr %add.ptr254 to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %add.ptr254, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1229866072, i32 %127)
  %cmp.i656 = icmp eq i32 %127, 1229866072
  br i1 %cmp.i656, label %if.end275, label %if.then273, !prof !60

if.then273:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #8
  %mft_no274 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 4
  %128 = ptrtoint ptr %mft_no274 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %mft_no274, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %5, ptr noundef nonnull @.str.10, i64 noundef %vcn.1, i32 noundef %129) #6
  br label %unm_err_out

if.end275:                                        ; preds = %if.end263
  %index_block_vcn = getelementptr inbounds %struct.INDEX_BLOCK, ptr %add.ptr254, i32 0, i32 4
  %130 = ptrtoint ptr %index_block_vcn to i32
  call void @__asan_loadN_noabort(i32 %130, i32 8)
  %131 = load i64, ptr %index_block_vcn, align 1
  %132 = tail call i64 @llvm.bswap.i64(i64 %131) #6
  call void @__sanitizer_cov_trace_cmp8(i64 %132, i64 %vcn.1)
  %cmp277.not = icmp eq i64 %132, %vcn.1
  br i1 %cmp277.not, label %if.end283, label %if.then279

if.then279:                                       ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #8
  %mft_no282 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 4
  %133 = ptrtoint ptr %mft_no282 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %mft_no282, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %5, ptr noundef nonnull @.str.11, i64 noundef %132, i64 noundef %vcn.1, i32 noundef %134) #6
  br label %unm_err_out

if.end283:                                        ; preds = %if.end275
  %index284 = getelementptr inbounds %struct.INDEX_BLOCK, ptr %add.ptr254, i32 0, i32 5
  %allocated_size = getelementptr inbounds %struct.INDEX_HEADER, ptr %index284, i32 0, i32 2
  %135 = ptrtoint ptr %allocated_size to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %allocated_size, align 1
  %137 = tail call i32 @llvm.bswap.i32(i32 %136)
  %add285 = add i32 %137, 24
  %138 = ptrtoint ptr %itype to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %itype, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add285, i32 %139)
  %cmp287.not = icmp eq i32 %add285, %139
  br i1 %cmp287.not, label %if.end296, label %if.then289

if.then289:                                       ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #8
  %mft_no290 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 4
  %140 = ptrtoint ptr %mft_no290 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %mft_no290, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %5, ptr noundef nonnull @.str.12, i64 noundef %vcn.1, i32 noundef %141, i32 noundef %add285, i32 noundef %139) #6
  br label %unm_err_out

if.end296:                                        ; preds = %if.end283
  %add.ptr299 = getelementptr i8, ptr %add.ptr254, i32 %add285
  %cmp301 = icmp ugt ptr %add.ptr299, %add.ptr258
  br i1 %cmp301, label %if.then303, label %if.end305

if.then303:                                       ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #8
  %mft_no304 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 4
  %142 = ptrtoint ptr %mft_no304 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %mft_no304, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %5, ptr noundef nonnull @.str.13, i64 noundef %vcn.1, i32 noundef %143) #6
  br label %unm_err_out

if.end305:                                        ; preds = %if.end296
  %index_length308 = getelementptr inbounds %struct.INDEX_HEADER, ptr %index284, i32 0, i32 1
  %144 = ptrtoint ptr %index_length308 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %index_length308, align 1
  %146 = tail call i32 @llvm.bswap.i32(i32 %145)
  %add.ptr309 = getelementptr i8, ptr %index284, i32 %146
  %cmp313 = icmp ugt ptr %add.ptr309, %add.ptr299
  br i1 %cmp313, label %if.then315, label %if.end317

if.then315:                                       ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #8
  %mft_no316 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 4
  %147 = ptrtoint ptr %mft_no316 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %mft_no316, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %5, ptr noundef nonnull @.str.14, i64 noundef %vcn.1, i32 noundef %148) #6
  br label %unm_err_out

if.end317:                                        ; preds = %if.end305
  %149 = ptrtoint ptr %index284 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %index284, align 1
  %151 = tail call i32 @llvm.bswap.i32(i32 %150)
  %add.ptr321 = getelementptr i8, ptr %index284, i32 %151
  %cmp323789 = icmp ult ptr %add.ptr321, %add.ptr254
  %add.ptr326790 = getelementptr i8, ptr %add.ptr321, i32 16
  %cmp327791 = icmp ugt ptr %add.ptr326790, %add.ptr309
  %or.cond649792 = select i1 %cmp323789, i1 true, i1 %cmp327791
  br i1 %or.cond649792, label %if.end317.if.then335_crit_edge, label %if.end317.lor.lhs.false329_crit_edge

if.end317.lor.lhs.false329_crit_edge:             ; preds = %if.end317
  br label %lor.lhs.false329

if.end317.if.then335_crit_edge:                   ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then335

lor.lhs.false329:                                 ; preds = %for.inc395.lor.lhs.false329_crit_edge, %if.end317.lor.lhs.false329_crit_edge
  %ie.2793 = phi ptr [ %add.ptr398, %for.inc395.lor.lhs.false329_crit_edge ], [ %add.ptr321, %if.end317.lor.lhs.false329_crit_edge ]
  %length330 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.2793, i32 0, i32 1
  %152 = ptrtoint ptr %length330 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 2)
  %153 = load i16, ptr %length330, align 1
  %154 = tail call i16 @llvm.bswap.i16(i16 %153)
  %conv331 = zext i16 %154 to i32
  %add.ptr332 = getelementptr i8, ptr %ie.2793, i32 %conv331
  %cmp333 = icmp ugt ptr %add.ptr332, %add.ptr309
  br i1 %cmp333, label %lor.lhs.false329.if.then335_crit_edge, label %if.end337

lor.lhs.false329.if.then335_crit_edge:            ; preds = %lor.lhs.false329
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then335

if.then335:                                       ; preds = %for.inc395.if.then335_crit_edge, %lor.lhs.false329.if.then335_crit_edge, %if.end317.if.then335_crit_edge
  %mft_no336 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 4
  %155 = ptrtoint ptr %mft_no336 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %mft_no336, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef %156) #6
  br label %unm_err_out

if.end337:                                        ; preds = %lor.lhs.false329
  %flags338 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.2793, i32 0, i32 3
  %157 = ptrtoint ptr %flags338 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 2)
  %158 = load i16, ptr %flags338, align 1
  %159 = and i16 %158, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %159)
  %tobool341.not = icmp eq i16 %159, 0
  br i1 %tobool341.not, label %if.end343, label %if.end337.for.end399_crit_edge

if.end337.for.end399_crit_edge:                   ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end399

if.end343:                                        ; preds = %if.end337
  %key_length344 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.2793, i32 0, i32 2
  %160 = ptrtoint ptr %key_length344 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 2)
  %161 = load i16, ptr %key_length344, align 1
  %162 = tail call i16 @llvm.bswap.i16(i16 %161)
  %conv345 = zext i16 %162 to i32
  %add346 = add nuw nsw i32 %conv345, 16
  %163 = ptrtoint ptr %ie.2793 to i32
  call void @__asan_loadN_noabort(i32 %163, i32 2)
  %164 = load i16, ptr %ie.2793, align 1
  %165 = tail call i16 @llvm.bswap.i16(i16 %164)
  %conv349 = zext i16 %165 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add346, i32 %conv349)
  %cmp350 = icmp ugt i32 %add346, %conv349
  br i1 %cmp350, label %if.end343.if.then364_crit_edge, label %lor.lhs.false352

if.end343.if.then364_crit_edge:                   ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then364

lor.lhs.false352:                                 ; preds = %if.end343
  %data_length357 = getelementptr inbounds %struct.anon.79, ptr %ie.2793, i32 0, i32 1
  %166 = ptrtoint ptr %data_length357 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 2)
  %167 = load i16, ptr %data_length357, align 1
  %168 = tail call i16 @llvm.bswap.i16(i16 %167)
  %conv358 = zext i16 %168 to i32
  %add359 = add nuw nsw i32 %conv358, %conv349
  call void @__sanitizer_cov_trace_cmp4(i32 %add359, i32 %conv331)
  %cmp362 = icmp ugt i32 %add359, %conv331
  br i1 %cmp362, label %lor.lhs.false352.if.then364_crit_edge, label %if.end366

lor.lhs.false352.if.then364_crit_edge:            ; preds = %lor.lhs.false352
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then364

if.then364:                                       ; preds = %lor.lhs.false352.if.then364_crit_edge, %if.end343.if.then364_crit_edge
  %mft_no365 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 4
  %169 = ptrtoint ptr %mft_no365 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %mft_no365, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef %170) #6
  br label %unm_err_out

if.end366:                                        ; preds = %lor.lhs.false352
  call void @__sanitizer_cov_trace_cmp4(i32 %conv345, i32 %key_len)
  %cmp369 = icmp eq i32 %conv345, %key_len
  br i1 %cmp369, label %land.lhs.true371, label %if.end366.if.end381_crit_edge

if.end366.if.end381_crit_edge:                    ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end381

land.lhs.true371:                                 ; preds = %if.end366
  %key372 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.2793, i32 0, i32 5
  %bcmp = tail call i32 @bcmp(ptr nonnull %key, ptr %key372, i32 %key_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool374.not = icmp eq i32 %bcmp, 0
  br i1 %tobool374.not, label %land.lhs.true371.ia_done_crit_edge, label %land.lhs.true371.if.end381_crit_edge

land.lhs.true371.if.end381_crit_edge:             ; preds = %land.lhs.true371
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end381

land.lhs.true371.ia_done_crit_edge:               ; preds = %land.lhs.true371
  call void @__sanitizer_cov_trace_pc() #8
  br label %ia_done

ia_done:                                          ; preds = %if.then404, %if.end381.ia_done_crit_edge, %land.lhs.true371.ia_done_crit_edge
  %err.2 = phi i32 [ -2, %if.then404 ], [ %call387, %if.end381.ia_done_crit_edge ], [ 0, %land.lhs.true371.ia_done_crit_edge ]
  %is_in_root376 = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 4
  %171 = ptrtoint ptr %is_in_root376 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 0, ptr %is_in_root376, align 2
  br label %done

if.end381:                                        ; preds = %land.lhs.true371.if.end381_crit_edge, %if.end366.if.end381_crit_edge
  %172 = ptrtoint ptr %collation_rule to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %collation_rule, align 8
  %key384 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.2793, i32 0, i32 5
  %call387 = tail call i32 @ntfs_collate(ptr noundef %3, i32 noundef %173, ptr noundef nonnull %key, i32 noundef %key_len, ptr noundef %key384, i32 noundef %conv345) #6
  %174 = zext i32 %call387 to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call387, label %for.inc395 [
    i32 -1, label %if.end381.for.end399_crit_edge
    i32 0, label %if.end381.ia_done_crit_edge
  ]

if.end381.ia_done_crit_edge:                      ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #8
  br label %ia_done

if.end381.for.end399_crit_edge:                   ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end399

for.inc395:                                       ; preds = %if.end381
  %175 = ptrtoint ptr %length330 to i32
  call void @__asan_loadN_noabort(i32 %175, i32 2)
  %176 = load i16, ptr %length330, align 1
  %177 = tail call i16 @llvm.bswap.i16(i16 %176)
  %conv397 = zext i16 %177 to i32
  %add.ptr398 = getelementptr i8, ptr %ie.2793, i32 %conv397
  %cmp323 = icmp ult ptr %add.ptr398, %add.ptr254
  %add.ptr326 = getelementptr i8, ptr %add.ptr398, i32 16
  %cmp327 = icmp ugt ptr %add.ptr326, %add.ptr309
  %or.cond649 = select i1 %cmp323, i1 true, i1 %cmp327
  br i1 %or.cond649, label %for.inc395.if.then335_crit_edge, label %for.inc395.lor.lhs.false329_crit_edge

for.inc395.lor.lhs.false329_crit_edge:            ; preds = %for.inc395
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false329

for.inc395.if.then335_crit_edge:                  ; preds = %for.inc395
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then335

for.end399:                                       ; preds = %if.end381.for.end399_crit_edge, %if.end337.for.end399_crit_edge
  %flags338.le = getelementptr inbounds %struct.INDEX_ENTRY, ptr %ie.2793, i32 0, i32 3
  %178 = ptrtoint ptr %flags338.le to i32
  call void @__asan_loadN_noabort(i32 %178, i32 2)
  %179 = load i16, ptr %flags338.le, align 1
  %180 = and i16 %179, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %180)
  %tobool403.not = icmp eq i16 %180, 0
  br i1 %tobool403.not, label %if.then404, label %if.end405

if.then404:                                       ; preds = %for.end399
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 398, ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef nonnull @.str.6) #6
  br label %ia_done

if.end405:                                        ; preds = %for.end399
  %flags407 = getelementptr inbounds %struct.INDEX_HEADER, ptr %index284, i32 0, i32 3
  %181 = ptrtoint ptr %flags407 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %flags407, align 1
  %183 = and i8 %182, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %cmp410 = icmp eq i8 %183, 0
  br i1 %cmp410, label %if.then412, label %if.end414

if.then412:                                       ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #8
  %mft_no413 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 4
  %184 = ptrtoint ptr %mft_no413 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %mft_no413, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef %185) #6
  br label %unm_err_out

if.end414:                                        ; preds = %if.end405
  %186 = ptrtoint ptr %length330 to i32
  call void @__asan_loadN_noabort(i32 %186, i32 2)
  %187 = load i16, ptr %length330, align 1
  %188 = tail call i16 @llvm.bswap.i16(i16 %187)
  %conv416 = zext i16 %188 to i32
  %add.ptr417 = getelementptr i8, ptr %ie.2793, i32 -8
  %add.ptr418 = getelementptr i8, ptr %add.ptr417, i32 %conv416
  %189 = ptrtoint ptr %add.ptr418 to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %add.ptr418, align 8
  %191 = tail call i64 @llvm.bswap.i64(i64 %190) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %191)
  %cmp420 = icmp sgt i64 %191, -1
  br i1 %cmp420, label %if.then422, label %if.end436

if.then422:                                       ; preds = %if.end414
  %192 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom424 = zext i8 %193 to i64
  %shl425647 = xor i64 %191, %vcn.1
  %cmp432.unshifted = shl i64 %shl425647, %sh_prom424
  %cmp432 = icmp ult i64 %cmp432.unshifted, 4096
  br i1 %cmp432, label %if.then422.fast_descend_into_child_node_crit_edge, label %if.end435

if.then422.fast_descend_into_child_node_crit_edge: ; preds = %if.then422
  call void @__sanitizer_cov_trace_pc() #8
  br label %fast_descend_into_child_node

if.end435:                                        ; preds = %if.then422
  tail call void @unlock_page(ptr noundef %call.i.i1151) #6
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call.i.i1151)
  %194 = ptrtoint ptr %vcn_size_bits to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %vcn_size_bits, align 1
  %sh_prom = zext i8 %195 to i64
  %shl = shl i64 %191, %sh_prom
  %196 = lshr i64 %shl, 12
  %conv239 = trunc i64 %196 to i32
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %96, i32 noundef %conv239, ptr noundef null, ptr noundef null) #6
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end435.if.then242_crit_edge, label %if.end435.if.then.i_crit_edge

if.end435.if.then.i_crit_edge:                    ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end435.if.then242_crit_edge:                   ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then242

if.end436:                                        ; preds = %if.end414
  call void @__sanitizer_cov_trace_pc() #8
  %mft_no437 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 4
  %197 = ptrtoint ptr %mft_no437 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %mft_no437, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %5, ptr noundef nonnull @.str.17, i32 noundef %198) #6
  br label %unm_err_out

unm_err_out:                                      ; preds = %if.end436, %if.then412, %if.then364, %if.then335, %if.then315, %if.then303, %if.then289, %if.then279, %if.then273, %if.then261
  tail call void @unlock_page(ptr noundef %call.i.i1151) #6
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call.i.i1151)
  br label %err_out.thread

err_out:                                          ; preds = %if.then242, %if.end128.err_out_crit_edge
  %m.0 = phi ptr [ null, %if.then242 ], [ %call111, %if.end128.err_out_crit_edge ]
  %actx.0 = phi ptr [ null, %if.then242 ], [ %call117, %if.end128.err_out_crit_edge ]
  %err.3 = phi i32 [ %120, %if.then242 ], [ %call129, %if.end128.err_out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool438.not = icmp eq i32 %err.3, 0
  br i1 %tobool438.not, label %err_out.err_out.thread_crit_edge, label %err_out.err_out.thread676_crit_edge

err_out.err_out.thread676_crit_edge:              ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.thread676

err_out.err_out.thread_crit_edge:                 ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.thread

err_out.thread:                                   ; preds = %idx_err_out, %err_out.err_out.thread_crit_edge, %unm_err_out, %if.then228
  %actx.0674 = phi ptr [ %actx.0, %err_out.err_out.thread_crit_edge ], [ %call117, %if.then228 ], [ null, %unm_err_out ], [ %call117, %idx_err_out ]
  %m.0672 = phi ptr [ %m.0, %err_out.err_out.thread_crit_edge ], [ %call111, %if.then228 ], [ null, %unm_err_out ], [ %call111, %idx_err_out ]
  br label %err_out.thread676

err_out.thread676:                                ; preds = %err_out.thread, %err_out.err_out.thread676_crit_edge
  %actx.0673 = phi ptr [ %actx.0674, %err_out.thread ], [ %actx.0, %err_out.err_out.thread676_crit_edge ]
  %m.0671 = phi ptr [ %m.0672, %err_out.thread ], [ %m.0, %err_out.err_out.thread676_crit_edge ]
  %199 = phi i32 [ -5, %err_out.thread ], [ %err.3, %err_out.err_out.thread676_crit_edge ]
  %tobool441.not = icmp eq ptr %actx.0673, null
  br i1 %tobool441.not, label %err_out.thread676.if.end443_crit_edge, label %err_out.thread676.if.then442_crit_edge

err_out.thread676.if.then442_crit_edge:           ; preds = %err_out.thread676
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then442

err_out.thread676.if.end443_crit_edge:            ; preds = %err_out.thread676
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end443

if.then442:                                       ; preds = %err_out.thread676.if.then442_crit_edge, %err_out.thread676.thread685
  %200 = phi i32 [ -5, %err_out.thread676.thread685 ], [ %199, %err_out.thread676.if.then442_crit_edge ]
  %m.0671690 = phi ptr [ %call111, %err_out.thread676.thread685 ], [ %m.0671, %err_out.thread676.if.then442_crit_edge ]
  %actx.0673689 = phi ptr [ %call117, %err_out.thread676.thread685 ], [ %actx.0673, %err_out.thread676.if.then442_crit_edge ]
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %actx.0673689) #6
  br label %if.end443

if.end443:                                        ; preds = %if.then442, %err_out.thread676.if.end443_crit_edge, %if.end116.if.end443_crit_edge
  %201 = phi i32 [ %200, %if.then442 ], [ %199, %err_out.thread676.if.end443_crit_edge ], [ -12, %if.end116.if.end443_crit_edge ]
  %m.0671684 = phi ptr [ %m.0671690, %if.then442 ], [ %m.0671, %err_out.thread676.if.end443_crit_edge ], [ %call111, %if.end116.if.end443_crit_edge ]
  %tobool444.not = icmp eq ptr %m.0671684, null
  br i1 %tobool444.not, label %if.end443.cleanup_crit_edge, label %if.then445

if.end443.cleanup_crit_edge:                      ; preds = %if.end443
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then445:                                       ; preds = %if.end443
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unmap_mft_record(ptr noundef nonnull %7) #6
  br label %cleanup

idx_err_out:                                      ; preds = %for.inc.idx_err_out_crit_edge, %lor.lhs.false169.idx_err_out_crit_edge, %if.end163.idx_err_out_crit_edge, %lor.lhs.false153.idx_err_out_crit_edge, %if.end141.idx_err_out_crit_edge
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %5, ptr noundef nonnull @.str.18) #6
  br label %err_out.thread

cleanup:                                          ; preds = %if.then445, %if.end443.cleanup_crit_edge, %done, %if.then113, %if.then107
  %retval.0 = phi i32 [ %22, %if.then113 ], [ %err.1, %done ], [ -95, %if.then107 ], [ %201, %if.then445 ], [ %201, %if.end443.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_mft_record(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_get_search_ctx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_lookup(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_collate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lock_page(ptr noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 788) #6
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !60

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !60

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.23) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #6, !srcloc !77
  unreachable

folio_flags.exit.i:                               ; preds = %_compound_head.exit
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #6
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %and.i.i4.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i4.i, 0
  br i1 %tobool.not.i.i.i, label %folio_trylock.exit, label %folio_flags.exit.i.if.then_crit_edge

folio_flags.exit.i.if.then_crit_edge:             ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

folio_trylock.exit:                               ; preds = %folio_flags.exit.i
  tail call void @llvm.prefetch.p0(ptr %4, i32 1, i32 3, i32 1) #6
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #6, !srcloc !78
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !79
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.i, label %folio_trylock.exit.if.end_crit_edge, label %folio_trylock.exit.if.then_crit_edge

folio_trylock.exit.if.then_crit_edge:             ; preds = %folio_trylock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

folio_trylock.exit.if.end_crit_edge:              ; preds = %folio_trylock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %folio_trylock.exit.if.then_crit_edge, %folio_flags.exit.i.if.then_crit_edge
  tail call void @__folio_lock(ptr noundef %4) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %folio_trylock.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs/index.c", i32 123, i32 2}
!2 = !{ptr @__func__.ntfs_index_lookup, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ntfs/index.c", i32 132, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ntfs/index.c", i32 140, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ntfs/index.c", i32 154, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ntfs/index.c", i32 206, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ntfs/index.c", i32 236, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ntfs/index.c", i32 242, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ntfs/index.c", i32 267, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ntfs/index.c", i32 280, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ntfs/index.c", i32 286, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ntfs/index.c", i32 292, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ntfs/index.c", i32 302, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ntfs/index.c", i32 313, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ntfs/index.c", i32 322, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ntfs/index.c", i32 340, i32 4}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ntfs/index.c", i32 403, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ntfs/index.c", i32 424, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ntfs/index.c", i32 438, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"./../include/linux/highmem-internal.h", i32 55, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/mm.h", i32 717, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i8 0, i8 2}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 2150161015, i64 2150161506, i64 2150161052, i64 2150161108, i64 2150161142, i64 2150161166, i64 2150161207, i64 2150161228, i64 2150161256, i64 2150161290}
!63 = !{i64 2154111322, i64 2154111801, i64 2154111359, i64 2154111415, i64 2154111449, i64 2154111473, i64 2154111514, i64 2154111535, i64 2154111563, i64 2154111597}
!64 = !{i64 2153172490, i64 2153172973, i64 2153172527, i64 2153172583, i64 2153172617, i64 2153172641, i64 2153172682, i64 2153172703, i64 2153172731, i64 2153172765}
!65 = !{i64 2148681461}
!66 = !{i64 2148596170, i64 2148596202, i64 2148596231, i64 2148596265, i64 2148596296, i64 2148596319}
!67 = !{i64 2148681690}
!68 = !{i64 2148213711, i64 2148213716, i64 2148213729, i64 2148213773, i64 2148213807, i64 2148213828}
!69 = !{i64 2154112984, i64 2154113464, i64 2154113021, i64 2154113077, i64 2154113111, i64 2154113135, i64 2154113176, i64 2154113197, i64 2154113225, i64 2154113259}
!70 = !{i64 2154114598, i64 2154115078, i64 2154114635, i64 2154114691, i64 2154114725, i64 2154114749, i64 2154114790, i64 2154114811, i64 2154114839, i64 2154114873}
!71 = !{i64 2154120251, i64 2154120731, i64 2154120288, i64 2154120344, i64 2154120378, i64 2154120402, i64 2154120443, i64 2154120464, i64 2154120492, i64 2154120526}
!72 = !{i64 2154121811, i64 2154122291, i64 2154121848, i64 2154121904, i64 2154121938, i64 2154121962, i64 2154122003, i64 2154122024, i64 2154122052, i64 2154122086}
!73 = !{i64 2154123363, i64 2154123843, i64 2154123400, i64 2154123456, i64 2154123490, i64 2154123514, i64 2154123555, i64 2154123576, i64 2154123604, i64 2154123638}
!74 = !{i64 2154124931, i64 2154125411, i64 2154124968, i64 2154125024, i64 2154125058, i64 2154125082, i64 2154125123, i64 2154125144, i64 2154125172, i64 2154125206}
!75 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!76 = !{i64 2150206614, i64 2150207105, i64 2150206651, i64 2150206707, i64 2150206741, i64 2150206765, i64 2150206806, i64 2150206827, i64 2150206855, i64 2150206889}
!77 = !{i64 2150149521, i64 2150150012, i64 2150149558, i64 2150149614, i64 2150149648, i64 2150149672, i64 2150149713, i64 2150149734, i64 2150149762, i64 2150149796}
!78 = !{i64 2148601843, i64 2148601875, i64 2148601904, i64 2148601938, i64 2148601969, i64 2148601992}
!79 = !{i64 2148690948}
