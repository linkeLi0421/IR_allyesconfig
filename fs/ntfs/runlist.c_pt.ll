; ModuleID = '/llk/IR_all_yes/fs/ntfs/runlist.c_pt.bc'
source_filename = "../fs/ntfs/runlist.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.runlist_element = type { i64, i64, i64 }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.73 }
%union.anon.73 = type { %struct.anon.75 }
%struct.anon.75 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, i64, i64, i64, i64, i64, i64, ptr, ptr, %struct.rw_semaphore, ptr, i32, ptr, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/ntfs/runlist.c\00", [46 x i8] zeroinitializer }, align 32
@__func__.ntfs_runlists_merge = private unnamed_addr constant [20 x i8] c"ntfs_runlists_merge\00", align 1
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dst:\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"src:\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Run lists overlap. Cannot merge!\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Merge failed.\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Triggering marker code.\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Old marker = 0x%llx, replacing with LCN_ENOENT.\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Merged runlist:\00", [16 x i8] zeroinitializer }, align 32
@__func__.ntfs_mapping_pairs_decompress = private unnamed_addr constant [30 x i8] c"ntfs_mapping_pairs_decompress\00", align 1
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid arguments.\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Corrupt attribute.\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Missing length entry in mapping pairs array.\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid length in mapping pairs array.\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lcn delta == -1\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcn == -1\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid LCN < -1 in mapping pairs array.\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Corrupt mapping pairs array in non-resident attribute.\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"More extents to follow; deltaxcn = 0x%llx, max_cluster = 0x%llx\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Corrupt attribute.  deltaxcn = 0x%llx, max_cluster = 0x%llx\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Mapping pairs array successfully decompressed:\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to merge runlists.\00", [38 x i8] zeroinitializer }, align 32
@__func__.ntfs_rl_truncate_nolock = private unnamed_addr constant [24 x i8] c"ntfs_rl_truncate_nolock\00", align 1
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Entering for new_length 0x%llx.\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Freeing runlist.\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Not enough memory to allocate runlist element buffer.\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Shrinking runlist.\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"Failed to shrink runlist buffer.  This just wastes a bit of memory temporarily so we ignore it and return success.\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Expanding runlist.\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to expand runlist buffer, aborting.\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Done.\00", [26 x i8] zeroinitializer }, align 32
@__func__.ntfs_rl_punch_nolock = private unnamed_addr constant [21 x i8] c"ntfs_rl_punch_nolock\00", align 1
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Entering for start 0x%llx, length 0x%llx.\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Done (requested hole is already sparse).\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Done (extend hole).\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Done (split one).\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Done (split both).\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Not enough memory to extend runlist buffer.\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 530, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 532, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 589, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 643, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 648, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 656, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 702, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 753, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 765, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 819, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 828, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 866, i32 6 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 868, i32 6 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 873, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 894, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 918, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 930, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 948, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 957, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1491, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1496, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1509, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1532, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1558, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1567, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1582, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1605, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1639, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1684, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1724, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1780, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1886, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [21 x i8] c"../fs/ntfs/runlist.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1889, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_runlists_merge(ptr noundef %drl, ptr noundef %srl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 530, ptr noundef nonnull @__func__.ntfs_runlists_merge, ptr noundef nonnull @.str.1) #6
  tail call void @ntfs_debug_dump_runlist(ptr noundef %drl) #6
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 532, ptr noundef nonnull @__func__.ntfs_runlists_merge, ptr noundef nonnull @.str.2) #6
  tail call void @ntfs_debug_dump_runlist(ptr noundef %srl) #6
  %tobool.not = icmp eq ptr %srl, null
  br i1 %tobool.not, label %entry.cleanup301_crit_edge, label %if.end, !prof !80

entry.cleanup301_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup301

if.end:                                           ; preds = %entry
  %cmp.i = icmp ugt ptr %srl, inttoptr (i32 -4096 to ptr)
  %cmp.i485 = icmp ugt ptr %drl, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %cmp.i485, %cmp.i
  br i1 %or.cond, label %if.end.cleanup301_crit_edge, label %if.end7

if.end.cleanup301_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup301

if.end7:                                          ; preds = %if.end
  %tobool8.not = icmp eq ptr %drl, null
  br i1 %tobool8.not, label %if.then17, label %while.cond.preheader, !prof !80

while.cond.preheader:                             ; preds = %if.end7
  %length49745 = getelementptr %struct.runlist_element, ptr %srl, i32 0, i32 2
  %0 = ptrtoint ptr %length49745 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %length49745, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool50.not746 = icmp eq i64 %1, 0
  br i1 %tobool50.not746, label %while.cond.preheader.do.body66_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.do.body66_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66

if.then17:                                        ; preds = %if.end7
  %2 = ptrtoint ptr %srl to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %srl, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool18.not = icmp eq i64 %3, 0
  br i1 %tobool18.not, label %if.then17.finished_crit_edge, label %if.then17.for.cond_crit_edge, !prof !81

if.then17.for.cond_crit_edge:                     ; preds = %if.then17
  br label %for.cond

if.then17.finished_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %finished

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.then17.for.cond_crit_edge
  %dend.0 = phi i32 [ %inc, %for.cond.for.cond_crit_edge ], [ 0, %if.then17.for.cond_crit_edge ]
  %length = getelementptr %struct.runlist_element, ptr %srl, i32 %dend.0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %length, align 8
  %tobool27.not = icmp eq i64 %5, 0
  %inc = add i32 %dend.0, 1
  br i1 %tobool27.not, label %for.end, label %for.cond.for.cond_crit_edge, !prof !80

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %add = add i32 %dend.0, 2
  %call35 = tail call fastcc ptr @ntfs_rl_realloc(ptr noundef nonnull %srl, i32 noundef %inc, i32 noundef %add)
  %cmp.i486 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i486, label %for.end.cleanup301_crit_edge, label %if.end38

for.end.cleanup301_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup301

if.end38:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %dend.0)
  %cmp1.i = icmp ult i32 %dend.0, 2147483647
  br i1 %cmp1.i, label %if.then.i, label %if.end38.ntfs_rl_mm.exit_crit_edge, !prof !81

if.end38.ntfs_rl_mm.exit_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_mm.exit

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr %struct.runlist_element, ptr %call35, i32 1
  %mul.i = mul i32 %inc, 24
  %6 = call ptr @memmove(ptr %add.ptr.i, ptr %call35, i32 %mul.i)
  br label %ntfs_rl_mm.exit

ntfs_rl_mm.exit:                                  ; preds = %if.then.i, %if.end38.ntfs_rl_mm.exit_crit_edge
  %7 = ptrtoint ptr %call35 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %call35, align 8
  %lcn = getelementptr inbounds %struct.runlist_element, ptr %call35, i32 0, i32 1
  %8 = ptrtoint ptr %lcn to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -2, ptr %lcn, align 8
  %arrayidx42 = getelementptr %struct.runlist_element, ptr %call35, i32 1
  %9 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx42, align 8
  %length45 = getelementptr inbounds %struct.runlist_element, ptr %call35, i32 0, i32 2
  %11 = ptrtoint ptr %length45 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %length45, align 8
  br label %finished

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %si.0747 = phi i32 [ %inc53, %while.body.land.rhs_crit_edge ], [ 0, %while.cond.preheader.land.rhs_crit_edge ]
  %lcn52 = getelementptr %struct.runlist_element, ptr %srl, i32 %si.0747, i32 1
  %12 = ptrtoint ptr %lcn52 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %lcn52, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %cmp = icmp slt i64 %13, -1
  br i1 %cmp, label %while.body, label %for.cond73.preheader

for.cond73.preheader:                             ; preds = %land.rhs
  %arrayidx48.le = getelementptr %struct.runlist_element, ptr %srl, i32 %si.0747
  %length75748 = getelementptr %struct.runlist_element, ptr %drl, i32 0, i32 2
  %14 = ptrtoint ptr %length75748 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %length75748, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool76.not749 = icmp eq i64 %15, 0
  br i1 %tobool76.not749, label %for.cond73.preheader.for.end90_crit_edge, label %for.body77.lr.ph

for.cond73.preheader.for.end90_crit_edge:         ; preds = %for.cond73.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end90

for.body77.lr.ph:                                 ; preds = %for.cond73.preheader
  %16 = ptrtoint ptr %arrayidx48.le to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx48.le, align 8
  br label %for.body77

while.body:                                       ; preds = %land.rhs
  %inc53 = add i32 %si.0747, 1
  %length49 = getelementptr %struct.runlist_element, ptr %srl, i32 %inc53, i32 2
  %18 = ptrtoint ptr %length49 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %length49, align 8
  %tobool50.not = icmp eq i64 %19, 0
  br i1 %tobool50.not, label %while.body.do.body66_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

while.body.do.body66_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66

do.body66:                                        ; preds = %while.body.do.body66_crit_edge, %while.cond.preheader.do.body66_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 570, 0\0A.popsection", ""() #6, !srcloc !82
  unreachable

for.body77:                                       ; preds = %for.inc88.for.body77_crit_edge, %for.body77.lr.ph
  %20 = phi i64 [ %15, %for.body77.lr.ph ], [ %24, %for.inc88.for.body77_crit_edge ]
  %arrayidx74751 = phi ptr [ %drl, %for.body77.lr.ph ], [ %arrayidx74, %for.inc88.for.body77_crit_edge ]
  %di.0750 = phi i32 [ 0, %for.body77.lr.ph ], [ %inc89, %for.inc88.for.body77_crit_edge ]
  %21 = ptrtoint ptr %arrayidx74751 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx74751, align 8
  %add82 = add i64 %22, %20
  call void @__sanitizer_cov_trace_cmp8(i64 %add82, i64 %17)
  %cmp85 = icmp sgt i64 %add82, %17
  br i1 %cmp85, label %for.body77.for.end90.loopexit_crit_edge, label %for.inc88

for.body77.for.end90.loopexit_crit_edge:          ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end90.loopexit

for.inc88:                                        ; preds = %for.body77
  %inc89 = add i32 %di.0750, 1
  %arrayidx74 = getelementptr %struct.runlist_element, ptr %drl, i32 %inc89
  %length75 = getelementptr %struct.runlist_element, ptr %drl, i32 %inc89, i32 2
  %23 = ptrtoint ptr %length75 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %length75, align 8
  %tobool76.not = icmp eq i64 %24, 0
  br i1 %tobool76.not, label %for.inc88.for.end90.loopexit_crit_edge, label %for.inc88.for.body77_crit_edge

for.inc88.for.body77_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body77

for.inc88.for.end90.loopexit_crit_edge:           ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end90.loopexit

for.end90.loopexit:                               ; preds = %for.inc88.for.end90.loopexit_crit_edge, %for.body77.for.end90.loopexit_crit_edge
  %di.0.lcssa.ph = phi i32 [ %inc89, %for.inc88.for.end90.loopexit_crit_edge ], [ %di.0750, %for.body77.for.end90.loopexit_crit_edge ]
  %arrayidx74.lcssa.ph = phi ptr [ %arrayidx74, %for.inc88.for.end90.loopexit_crit_edge ], [ %arrayidx74751, %for.body77.for.end90.loopexit_crit_edge ]
  %.lcssa.ph = phi i64 [ 0, %for.inc88.for.end90.loopexit_crit_edge ], [ %20, %for.body77.for.end90.loopexit_crit_edge ]
  %25 = xor i1 %cmp85, true
  br label %for.end90

for.end90:                                        ; preds = %for.end90.loopexit, %for.cond73.preheader.for.end90_crit_edge
  %di.0.lcssa = phi i32 [ 0, %for.cond73.preheader.for.end90_crit_edge ], [ %di.0.lcssa.ph, %for.end90.loopexit ]
  %arrayidx74.lcssa = phi ptr [ %drl, %for.cond73.preheader.for.end90_crit_edge ], [ %arrayidx74.lcssa.ph, %for.end90.loopexit ]
  %.lcssa = phi i64 [ 0, %for.cond73.preheader.for.end90_crit_edge ], [ %.lcssa.ph, %for.end90.loopexit ]
  %tobool76.not.lcssa = phi i1 [ true, %for.cond73.preheader.for.end90_crit_edge ], [ %25, %for.end90.loopexit ]
  %26 = ptrtoint ptr %arrayidx74.lcssa to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx74.lcssa, align 8
  %28 = ptrtoint ptr %arrayidx48.le to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx48.le, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %29)
  %cmp95 = icmp eq i64 %27, %29
  br i1 %cmp95, label %land.lhs.true, label %for.end90.for.cond106.preheader_crit_edge

for.end90.for.cond106.preheader_crit_edge:        ; preds = %for.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond106.preheader

for.cond106.preheader:                            ; preds = %land.lhs.true99.for.cond106.preheader_crit_edge, %land.lhs.true.for.cond106.preheader_crit_edge, %for.end90.for.cond106.preheader_crit_edge
  br label %for.cond106

land.lhs.true:                                    ; preds = %for.end90
  %lcn97 = getelementptr %struct.runlist_element, ptr %drl, i32 %di.0.lcssa, i32 1
  %30 = ptrtoint ptr %lcn97 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %lcn97, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %31)
  %cmp98 = icmp sgt i64 %31, -1
  br i1 %cmp98, label %land.lhs.true99, label %land.lhs.true.for.cond106.preheader_crit_edge

land.lhs.true.for.cond106.preheader_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond106.preheader

land.lhs.true99:                                  ; preds = %land.lhs.true
  %32 = ptrtoint ptr %lcn52 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %lcn52, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %33)
  %cmp102 = icmp sgt i64 %33, -1
  br i1 %cmp102, label %if.then103, label %land.lhs.true99.for.cond106.preheader_crit_edge

land.lhs.true99.for.cond106.preheader_crit_edge:  ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond106.preheader

if.then103:                                       ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_runlists_merge, ptr noundef null, ptr noundef nonnull @.str.3) #6
  br label %cleanup301

for.cond106:                                      ; preds = %for.cond106.for.cond106_crit_edge, %for.cond106.preheader
  %send.0 = phi i32 [ %inc112, %for.cond106.for.cond106_crit_edge ], [ %si.0747, %for.cond106.preheader ]
  %length108 = getelementptr %struct.runlist_element, ptr %srl, i32 %send.0, i32 2
  %34 = ptrtoint ptr %length108 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %length108, align 8
  %tobool109.not = icmp eq i64 %35, 0
  %inc112 = add i32 %send.0, 1
  br i1 %tobool109.not, label %for.cond106.for.cond114_crit_edge, label %for.cond106.for.cond106_crit_edge

for.cond106.for.cond106_crit_edge:                ; preds = %for.cond106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond106

for.cond106.for.cond114_crit_edge:                ; preds = %for.cond106
  br label %for.cond114

for.cond114:                                      ; preds = %for.cond114.for.cond114_crit_edge, %for.cond106.for.cond114_crit_edge
  %dend.1 = phi i32 [ %inc120, %for.cond114.for.cond114_crit_edge ], [ %di.0.lcssa, %for.cond106.for.cond114_crit_edge ]
  %length116 = getelementptr %struct.runlist_element, ptr %drl, i32 %dend.1, i32 2
  %36 = ptrtoint ptr %length116 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %length116, align 8
  %tobool117.not = icmp eq i64 %37, 0
  %inc120 = add i32 %dend.1, 1
  br i1 %tobool117.not, label %for.end121, label %for.cond114.for.cond114_crit_edge

for.cond114.for.cond114_crit_edge:                ; preds = %for.cond114
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond114

for.end121:                                       ; preds = %for.cond114
  %lcn123 = getelementptr %struct.runlist_element, ptr %srl, i32 %send.0, i32 1
  %38 = ptrtoint ptr %lcn123 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %lcn123, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %39)
  %cmp124 = icmp eq i64 %39, -3
  br i1 %cmp124, label %if.then125, label %for.end121.if.end128_crit_edge

for.end121.if.end128_crit_edge:                   ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

if.then125:                                       ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx107.le = getelementptr %struct.runlist_element, ptr %srl, i32 %send.0
  %40 = ptrtoint ptr %arrayidx107.le to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx107.le, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.then125, %for.end121.if.end128_crit_edge
  %marker.0 = phi i32 [ %send.0, %if.then125 ], [ 0, %for.end121.if.end128_crit_edge ]
  %marker_vcn.0 = phi i64 [ %41, %if.then125 ], [ 0, %for.end121.if.end128_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %send.0)
  %cmp130761 = icmp sgt i32 %send.0, -1
  br i1 %cmp130761, label %if.end128.land.rhs131_crit_edge, label %if.end128.for.end149_crit_edge

if.end128.for.end149_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end149

if.end128.land.rhs131_crit_edge:                  ; preds = %if.end128
  br label %land.rhs131

land.rhs131:                                      ; preds = %for.inc137.land.rhs131_crit_edge, %if.end128.land.rhs131_crit_edge
  %sfinal.0762 = phi i32 [ %dec, %for.inc137.land.rhs131_crit_edge ], [ %send.0, %if.end128.land.rhs131_crit_edge ]
  %lcn133 = getelementptr %struct.runlist_element, ptr %srl, i32 %sfinal.0762, i32 1
  %42 = ptrtoint ptr %lcn133 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %lcn133, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %43)
  %cmp134 = icmp slt i64 %43, -1
  br i1 %cmp134, label %for.inc137, label %land.rhs131.for.end149_crit_edge

land.rhs131.for.end149_crit_edge:                 ; preds = %land.rhs131
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end149

for.inc137:                                       ; preds = %land.rhs131
  %dec = add nsw i32 %sfinal.0762, -1
  %cmp130 = icmp sgt i32 %sfinal.0762, 0
  br i1 %cmp130, label %for.inc137.land.rhs131_crit_edge, label %for.inc137.for.end149_crit_edge

for.inc137.for.end149_crit_edge:                  ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end149

for.inc137.land.rhs131_crit_edge:                 ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs131

for.end149:                                       ; preds = %for.inc137.for.end149_crit_edge, %land.rhs131.for.end149_crit_edge, %if.end128.for.end149_crit_edge
  %sfinal.0.lcssa = phi i32 [ %send.0, %if.end128.for.end149_crit_edge ], [ -1, %for.inc137.for.end149_crit_edge ], [ %sfinal.0762, %land.rhs131.for.end149_crit_edge ]
  %sub = sub i32 %sfinal.0.lcssa, %si.0747
  %add151 = add i32 %sub, 1
  %lcn153 = getelementptr %struct.runlist_element, ptr %drl, i32 %di.0.lcssa, i32 1
  %44 = ptrtoint ptr %lcn153 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %lcn153, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %45)
  %cmp154 = icmp slt i64 %45, -2
  br i1 %cmp154, label %for.end149.if.end186_crit_edge, label %land.end177

for.end149.if.end186_crit_edge:                   ; preds = %for.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

land.end177:                                      ; preds = %for.end149
  %add168 = add i64 %27, %.lcssa
  %sub169 = add i32 %send.0, -1
  %arrayidx170 = getelementptr %struct.runlist_element, ptr %srl, i32 %sub169
  %46 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx170, align 8
  %length174 = getelementptr %struct.runlist_element, ptr %srl, i32 %sub169, i32 2
  %48 = ptrtoint ptr %length174 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %length174, align 8
  %add175 = add i64 %49, %47
  call void @__sanitizer_cov_trace_cmp8(i64 %add168, i64 %add175)
  %cmp176.not = icmp sgt i64 %add168, %add175
  br i1 %cmp176.not, label %land.end177.if.end186_crit_edge, label %land.lhs.true180

land.end177.if.end186_crit_edge:                  ; preds = %land.end177
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

land.lhs.true180:                                 ; preds = %land.end177
  call void @__sanitizer_cov_trace_pc() #8
  %inc185 = add i32 %sub, 2
  %spec.select = select i1 %tobool76.not.lcssa, i32 %inc185, i32 %add151
  br label %if.end186

if.end186:                                        ; preds = %land.lhs.true180, %land.end177.if.end186_crit_edge, %for.end149.if.end186_crit_edge
  %50 = phi i1 [ false, %land.end177.if.end186_crit_edge ], [ true, %land.lhs.true180 ], [ false, %for.end149.if.end186_crit_edge ]
  %51 = phi i1 [ %cmp95, %land.end177.if.end186_crit_edge ], [ %cmp95, %land.lhs.true180 ], [ true, %for.end149.if.end186_crit_edge ]
  %ss.0 = phi i32 [ %add151, %land.end177.if.end186_crit_edge ], [ %spec.select, %land.lhs.true180 ], [ %add151, %for.end149.if.end186_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %marker.0)
  %tobool187.not = icmp eq i32 %marker.0, 0
  br i1 %tobool187.not, label %if.end186.if.end199_crit_edge, label %land.lhs.true188

if.end186.if.end199_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end199

land.lhs.true188:                                 ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  %add193 = add i64 %27, %.lcssa
  %sub194 = add i32 %send.0, -1
  %arrayidx195 = getelementptr %struct.runlist_element, ptr %srl, i32 %sub194
  %52 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx195, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add193, i64 %53)
  %cmp197 = icmp sle i64 %add193, %53
  %spec.select482 = and i1 %50, %cmp197
  br label %if.end199

if.end199:                                        ; preds = %land.lhs.true188, %if.end186.if.end199_crit_edge
  %finish.0.shrunk = phi i1 [ %50, %if.end186.if.end199_crit_edge ], [ %spec.select482, %land.lhs.true188 ]
  %tobool11.not.i = icmp eq ptr %arrayidx48.le, null
  br i1 %51, label %if.then201, label %if.else208

if.then201:                                       ; preds = %if.end199
  br i1 %finish.0.shrunk, label %do.body10.i, label %do.body10.i492

do.body10.i:                                      ; preds = %if.then201
  br i1 %tobool11.not.i, label %do.body21.i, label %do.end29.i, !prof !80

do.body21.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 377, 0\0A.popsection", ""() #6, !srcloc !83
  unreachable

do.end29.i:                                       ; preds = %do.body10.i
  %add.i = add i32 %di.0.lcssa, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %inc120)
  %cmp.i487 = icmp slt i32 %add.i, %inc120
  br i1 %cmp.i487, label %if.then30.i, label %do.end29.i.if.end34.i_crit_edge

do.end29.i.if.end34.i_crit_edge:                  ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then30.i:                                      ; preds = %do.end29.i
  %add.ptr.i488 = getelementptr %struct.runlist_element, ptr %arrayidx48.le, i32 %ss.0
  %add.ptr31.i = getelementptr %struct.runlist_element, ptr %add.ptr.i488, i32 -1
  %add.ptr33.i = getelementptr %struct.runlist_element, ptr %arrayidx74.lcssa, i32 1
  %tobool.not.i.i = icmp eq ptr %add.ptr31.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.body8.i.i, !prof !80

do.body4.i.i:                                     ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !84
  unreachable

do.body8.i.i:                                     ; preds = %if.then30.i
  %tobool9.not.i.i = icmp eq ptr %add.ptr33.i, null
  br i1 %tobool9.not.i.i, label %do.body19.i.i, label %do.end24.i.i, !prof !80

do.body19.i.i:                                    ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 145, 0\0A.popsection", ""() #6, !srcloc !85
  unreachable

do.end24.i.i:                                     ; preds = %do.body8.i.i
  %lcn.i.i = getelementptr inbounds %struct.runlist_element, ptr %add.ptr31.i, i32 0, i32 1
  %54 = ptrtoint ptr %lcn.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %lcn.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %55)
  %cmp.i.i = icmp eq i64 %55, -2
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %do.end24.i.i.if.end28.i.i_crit_edge

do.end24.i.i.if.end28.i.i_crit_edge:              ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i.i

land.lhs.true.i.i:                                ; preds = %do.end24.i.i
  %lcn25.i.i = getelementptr %struct.runlist_element, ptr %arrayidx74.lcssa, i32 1, i32 1
  %56 = ptrtoint ptr %lcn25.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %lcn25.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %57)
  %cmp26.i.i = icmp eq i64 %57, -2
  br i1 %cmp26.i.i, label %land.lhs.true.i.i.if.end34.i_crit_edge, label %land.lhs.true.i.i.if.end28.i.i_crit_edge

land.lhs.true.i.i.if.end28.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i.i

land.lhs.true.i.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.end28.i.i:                                     ; preds = %land.lhs.true.i.i.if.end28.i.i_crit_edge, %do.end24.i.i.if.end28.i.i_crit_edge
  %58 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %add.ptr31.i, align 8
  %length.i.i = getelementptr inbounds %struct.runlist_element, ptr %add.ptr31.i, i32 0, i32 2
  %60 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %length.i.i, align 8
  %add.i.i = add i64 %61, %59
  %62 = ptrtoint ptr %add.ptr33.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %add.ptr33.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %63)
  %cmp30.not.i.i = icmp eq i64 %add.i.i, %63
  br i1 %cmp30.not.i.i, label %if.end32.i.i, label %if.end28.i.i.if.end34.i_crit_edge

if.end28.i.i.if.end34.i_crit_edge:                ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.end32.i.i:                                     ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %55)
  %cmp34.i.i = icmp sgt i64 %55, -1
  br i1 %cmp34.i.i, label %land.lhs.true35.i.i, label %if.end45.i.i

land.lhs.true35.i.i:                              ; preds = %if.end32.i.i
  %lcn36.i.i = getelementptr %struct.runlist_element, ptr %arrayidx74.lcssa, i32 1, i32 1
  %64 = ptrtoint ptr %lcn36.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %lcn36.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %65)
  %cmp37.i.i = icmp sgt i64 %65, -1
  %add41.i.i = add i64 %61, %55
  call void @__sanitizer_cov_trace_cmp8(i64 %add41.i.i, i64 %65)
  %cmp43.i.i = icmp eq i64 %add41.i.i, %65
  %or.cond.i.i = select i1 %cmp37.i.i, i1 %cmp43.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true35.i.i.if.end34.i_crit_edge, label %land.lhs.true35.i.i.if.end52.i.i_crit_edge

land.lhs.true35.i.i.if.end52.i.i_crit_edge:       ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i.i

land.lhs.true35.i.i.if.end34.i_crit_edge:         ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.end45.i.i:                                     ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %55)
  %cmp47.i.i = icmp eq i64 %55, -1
  br i1 %cmp47.i.i, label %land.lhs.true48.i.i, label %if.end45.i.i.if.end52.i.i_crit_edge

if.end45.i.i.if.end52.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i.i

land.lhs.true48.i.i:                              ; preds = %if.end45.i.i
  %lcn49.i.i = getelementptr %struct.runlist_element, ptr %arrayidx74.lcssa, i32 1, i32 1
  %66 = ptrtoint ptr %lcn49.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %lcn49.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %67)
  %cmp50.i.i = icmp eq i64 %67, -1
  br i1 %cmp50.i.i, label %land.lhs.true48.i.i.if.end34.i_crit_edge, label %land.lhs.true48.i.i.if.end52.i.i_crit_edge

land.lhs.true48.i.i.if.end52.i.i_crit_edge:       ; preds = %land.lhs.true48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i.i

land.lhs.true48.i.i.if.end34.i_crit_edge:         ; preds = %land.lhs.true48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.end52.i.i:                                     ; preds = %land.lhs.true48.i.i.if.end52.i.i_crit_edge, %if.end45.i.i.if.end52.i.i_crit_edge, %land.lhs.true35.i.i.if.end52.i.i_crit_edge
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end52.i.i, %land.lhs.true48.i.i.if.end34.i_crit_edge, %land.lhs.true35.i.i.if.end34.i_crit_edge, %if.end28.i.i.if.end34.i_crit_edge, %land.lhs.true.i.i.if.end34.i_crit_edge, %do.end29.i.if.end34.i_crit_edge
  %right.0.off0.i = phi i1 [ false, %do.end29.i.if.end34.i_crit_edge ], [ false, %if.end52.i.i ], [ true, %land.lhs.true.i.i.if.end34.i_crit_edge ], [ false, %if.end28.i.i.if.end34.i_crit_edge ], [ true, %land.lhs.true35.i.i.if.end34.i_crit_edge ], [ true, %land.lhs.true48.i.i.if.end34.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %di.0.lcssa)
  %cmp35.i = icmp sgt i32 %di.0.lcssa, 0
  br i1 %cmp35.i, label %if.then36.i, label %if.end34.i.if.end41.i_crit_edge

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.then36.i:                                      ; preds = %if.end34.i
  %add.ptr38.i = getelementptr %struct.runlist_element, ptr %arrayidx74.lcssa, i32 -1
  %tobool.not.i148.i = icmp eq ptr %add.ptr38.i, null
  br i1 %tobool.not.i148.i, label %do.body4.i149.i, label %do.end24.i155.i, !prof !80

do.body4.i149.i:                                  ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !84
  unreachable

do.end24.i155.i:                                  ; preds = %if.then36.i
  %lcn.i153.i = getelementptr %struct.runlist_element, ptr %arrayidx74.lcssa, i32 -1, i32 1
  %68 = ptrtoint ptr %lcn.i153.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %lcn.i153.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %69)
  %cmp.i154.i = icmp eq i64 %69, -2
  br i1 %cmp.i154.i, label %land.lhs.true.i158.i, label %if.end28.i162.i

land.lhs.true.i158.i:                             ; preds = %do.end24.i155.i
  %70 = ptrtoint ptr %lcn52 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %lcn52, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %71)
  %cmp26.i157.i = icmp eq i64 %71, -2
  br i1 %cmp26.i157.i, label %land.lhs.true.i158.i.if.end41.i_crit_edge, label %if.end28.i162.i.thread

land.lhs.true.i158.i.if.end41.i_crit_edge:        ; preds = %land.lhs.true.i158.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.end28.i162.i:                                  ; preds = %do.end24.i155.i
  %72 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %add.ptr38.i, align 8
  %length.i159.i = getelementptr %struct.runlist_element, ptr %arrayidx74.lcssa, i32 -1, i32 2
  %74 = ptrtoint ptr %length.i159.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %length.i159.i, align 8
  %add.i160.i = add i64 %75, %73
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i160.i, i64 %29)
  %cmp30.not.i161.i = icmp eq i64 %add.i160.i, %29
  br i1 %cmp30.not.i161.i, label %if.end32.i164.i, label %if.end28.i162.i.if.end41.i_crit_edge

if.end28.i162.i.if.end41.i_crit_edge:             ; preds = %if.end28.i162.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.end28.i162.i.thread:                           ; preds = %land.lhs.true.i158.i
  %76 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %add.ptr38.i, align 8
  %length.i159.i701 = getelementptr %struct.runlist_element, ptr %arrayidx74.lcssa, i32 -1, i32 2
  %78 = ptrtoint ptr %length.i159.i701 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %length.i159.i701, align 8
  %add.i160.i702 = add i64 %79, %77
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i160.i702, i64 %29)
  %cmp30.not.i161.i703 = icmp eq i64 %add.i160.i702, %29
  br i1 %cmp30.not.i161.i703, label %if.end28.i162.i.thread.if.end52.i176.i_crit_edge, label %if.end28.i162.i.thread.if.end41.i_crit_edge

if.end28.i162.i.thread.if.end41.i_crit_edge:      ; preds = %if.end28.i162.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.end28.i162.i.thread.if.end52.i176.i_crit_edge: ; preds = %if.end28.i162.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i176.i

if.end32.i164.i:                                  ; preds = %if.end28.i162.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %69)
  %cmp34.i163.i = icmp sgt i64 %69, -1
  br i1 %cmp34.i163.i, label %land.lhs.true35.i170.i, label %if.end45.i172.i

land.lhs.true35.i170.i:                           ; preds = %if.end32.i164.i
  %80 = ptrtoint ptr %lcn52 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %lcn52, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %81)
  %cmp37.i166.i = icmp sgt i64 %81, -1
  %add41.i167.i = add i64 %75, %69
  call void @__sanitizer_cov_trace_cmp8(i64 %add41.i167.i, i64 %81)
  %cmp43.i168.i = icmp eq i64 %add41.i167.i, %81
  %or.cond.i169.i = select i1 %cmp37.i166.i, i1 %cmp43.i168.i, i1 false
  br i1 %or.cond.i169.i, label %land.lhs.true35.i170.i.if.end41.i_crit_edge, label %land.lhs.true35.i170.i.if.end52.i176.i_crit_edge

land.lhs.true35.i170.i.if.end52.i176.i_crit_edge: ; preds = %land.lhs.true35.i170.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i176.i

land.lhs.true35.i170.i.if.end41.i_crit_edge:      ; preds = %land.lhs.true35.i170.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.end45.i172.i:                                  ; preds = %if.end32.i164.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %69)
  %cmp47.i171.i = icmp eq i64 %69, -1
  br i1 %cmp47.i171.i, label %land.lhs.true48.i175.i, label %if.end45.i172.i.if.end52.i176.i_crit_edge

if.end45.i172.i.if.end52.i176.i_crit_edge:        ; preds = %if.end45.i172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i176.i

land.lhs.true48.i175.i:                           ; preds = %if.end45.i172.i
  %82 = ptrtoint ptr %lcn52 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %lcn52, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %83)
  %cmp50.i174.i = icmp eq i64 %83, -1
  br i1 %cmp50.i174.i, label %land.lhs.true48.i175.i.if.end41.i_crit_edge, label %land.lhs.true48.i175.i.if.end52.i176.i_crit_edge

land.lhs.true48.i175.i.if.end52.i176.i_crit_edge: ; preds = %land.lhs.true48.i175.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i176.i

land.lhs.true48.i175.i.if.end41.i_crit_edge:      ; preds = %land.lhs.true48.i175.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.end52.i176.i:                                  ; preds = %land.lhs.true48.i175.i.if.end52.i176.i_crit_edge, %if.end45.i172.i.if.end52.i176.i_crit_edge, %land.lhs.true35.i170.i.if.end52.i176.i_crit_edge, %if.end28.i162.i.thread.if.end52.i176.i_crit_edge
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end52.i176.i, %land.lhs.true48.i175.i.if.end41.i_crit_edge, %land.lhs.true35.i170.i.if.end41.i_crit_edge, %if.end28.i162.i.thread.if.end41.i_crit_edge, %if.end28.i162.i.if.end41.i_crit_edge, %land.lhs.true.i158.i.if.end41.i_crit_edge, %if.end34.i.if.end41.i_crit_edge
  %left.0.off0.i = phi i1 [ false, %if.end34.i.if.end41.i_crit_edge ], [ false, %if.end52.i176.i ], [ true, %land.lhs.true.i158.i.if.end41.i_crit_edge ], [ false, %if.end28.i162.i.if.end41.i_crit_edge ], [ true, %land.lhs.true35.i170.i.if.end41.i_crit_edge ], [ true, %land.lhs.true48.i175.i.if.end41.i_crit_edge ], [ false, %if.end28.i162.i.thread.if.end41.i_crit_edge ]
  %conv.neg199.i = sext i1 %left.0.off0.i to i32
  %conv.i = zext i1 %left.0.off0.i to i32
  %84 = xor i32 %conv.i, -1
  %conv45.neg198.i = sext i1 %right.0.off0.i to i32
  %conv45.i = zext i1 %right.0.off0.i to i32
  %sub43.i = add i32 %ss.0, %conv45.neg198.i
  %sub46.i = add i32 %sub43.i, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub46.i)
  %cmp47.i = icmp sgt i32 %sub46.i, 0
  br i1 %cmp47.i, label %if.then49.i, label %if.end41.i.if.end55.i_crit_edge

if.end41.i.if.end55.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i

if.then49.i:                                      ; preds = %if.end41.i
  %add50.i = add i32 %sub46.i, %inc120
  %mul.i.i = mul i32 %inc120, 24
  %add.i179.i = add i32 %mul.i.i, 4095
  %and.i.i = and i32 %add.i179.i, -4096
  %mul1.i.i = mul i32 %add50.i, 24
  %add2.i.i = add i32 %mul1.i.i, 4095
  %and3.i.i = and i32 %add2.i.i, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %and3.i.i)
  %cmp.i180.i = icmp eq i32 %and.i.i, %and3.i.i
  br i1 %cmp.i180.i, label %if.then49.i.ntfs_rl_realloc.exit.i_crit_edge, label %if.end.i.i

if.then49.i.ntfs_rl_realloc.exit.i_crit_edge:     ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_realloc.exit.i

if.end.i.i:                                       ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %and3.i.i)
  %cmp.i.i.i.i = icmp ult i32 %and3.i.i, 4097
  br i1 %cmp.i.i.i.i, label %do.body.i.i.i.i, label %if.end16.i.i.i.i, !prof !81

do.body.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %do.body12.i.i.i.i, label %do.end15.i.i.i.i, !prof !80

do.body12.i.i.i.i:                                ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end15.i.i.i.i:                                 ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %85 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 3136, i32 noundef 4096) #9
  br label %ntfs_malloc_nofs.exit.i.i

if.end16.i.i.i.i:                                 ; preds = %if.end.i.i
  %shr.i.i.i.i = lshr i32 %add2.i.i, 12
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %86 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i.i, i32 %86)
  %cmp18.i.i.i.i = icmp ult i32 %shr.i.i.i.i, %86
  br i1 %cmp18.i.i.i.i, label %if.then25.i.i.i.i, label %if.end16.i.i.i.i.cleanup295_crit_edge, !prof !81

if.end16.i.i.i.i.cleanup295_crit_edge:            ; preds = %if.end16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup295

if.then25.i.i.i.i:                                ; preds = %if.end16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i.i.i.i = tail call noalias ptr @__vmalloc(i32 noundef %and3.i.i, i32 noundef 3138) #10
  br label %ntfs_malloc_nofs.exit.i.i

ntfs_malloc_nofs.exit.i.i:                        ; preds = %if.then25.i.i.i.i, %do.end15.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %call7.i.i.i.i.i, %do.end15.i.i.i.i ], [ %call26.i.i.i.i, %if.then25.i.i.i.i ]
  %tobool.not.i181.i = icmp eq ptr %retval.0.i.i.i.i, null
  br i1 %tobool.not.i181.i, label %ntfs_malloc_nofs.exit.i.i.cleanup295_crit_edge, label %if.then17.i.i, !prof !80

ntfs_malloc_nofs.exit.i.i.cleanup295_crit_edge:   ; preds = %ntfs_malloc_nofs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup295

if.then17.i.i:                                    ; preds = %ntfs_malloc_nofs.exit.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %and3.i.i)
  %cmp18.i.i = icmp sgt i32 %and.i.i, %and3.i.i
  br i1 %cmp18.i.i, label %if.then25.i.i, label %if.then17.i.i.if.end26.i.i_crit_edge, !prof !80

if.then17.i.i.if.end26.i.i_crit_edge:             ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.i

if.then25.i.i:                                    ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then25.i.i, %if.then17.i.i.if.end26.i.i_crit_edge
  %old_size.addr.0.i.i = phi i32 [ %and3.i.i, %if.then25.i.i ], [ %and.i.i, %if.then17.i.i.if.end26.i.i_crit_edge ]
  %87 = call ptr @memcpy(ptr %retval.0.i.i.i.i, ptr %drl, i32 %old_size.addr.0.i.i)
  tail call void @kvfree(ptr noundef nonnull %drl) #6
  br label %ntfs_rl_realloc.exit.i

ntfs_rl_realloc.exit.i:                           ; preds = %if.end26.i.i, %if.then49.i.ntfs_rl_realloc.exit.i_crit_edge
  %retval.0.i182.i = phi ptr [ %drl, %if.then49.i.ntfs_rl_realloc.exit.i_crit_edge ], [ %retval.0.i.i.i.i, %if.end26.i.i ]
  %cmp.i183.i = icmp ugt ptr %retval.0.i182.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183.i, label %ntfs_rl_realloc.exit.i.if.end217_crit_edge, label %ntfs_rl_realloc.exit.i.if.end55.i_crit_edge

ntfs_rl_realloc.exit.i.if.end55.i_crit_edge:      ; preds = %ntfs_rl_realloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i

ntfs_rl_realloc.exit.i.if.end217_crit_edge:       ; preds = %ntfs_rl_realloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end217

if.end55.i:                                       ; preds = %ntfs_rl_realloc.exit.i.if.end55.i_crit_edge, %if.end41.i.if.end55.i_crit_edge
  %dst.addr.0.i = phi ptr [ %retval.0.i182.i, %ntfs_rl_realloc.exit.i.if.end55.i_crit_edge ], [ %drl, %if.end41.i.if.end55.i_crit_edge ]
  br i1 %right.0.off0.i, label %if.then57.i, label %if.end55.i.if.end62.i_crit_edge

if.end55.i.if.end62.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.i

if.then57.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr58.i = getelementptr %struct.runlist_element, ptr %arrayidx48.le, i32 %ss.0
  %add.ptr59.i = getelementptr %struct.runlist_element, ptr %add.ptr58.i, i32 -1
  %add.ptr60.i = getelementptr %struct.runlist_element, ptr %dst.addr.0.i, i32 %di.0.lcssa
  %add.ptr61.i = getelementptr %struct.runlist_element, ptr %add.ptr60.i, i32 1
  %length.i184.i = getelementptr inbounds %struct.runlist_element, ptr %add.ptr61.i, i32 0, i32 2
  %88 = ptrtoint ptr %length.i184.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %length.i184.i, align 8
  %length1.i.i = getelementptr inbounds %struct.runlist_element, ptr %add.ptr59.i, i32 0, i32 2
  %90 = ptrtoint ptr %length1.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %length1.i.i, align 8
  %add.i185.i = add i64 %91, %89
  store i64 %add.i185.i, ptr %length1.i.i, align 8
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then57.i, %if.end55.i.if.end62.i_crit_edge
  br i1 %left.0.off0.i, label %if.then64.i, label %if.end62.i.if.end67.i_crit_edge

if.end62.i.if.end67.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.i

if.then64.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr65.i = getelementptr %struct.runlist_element, ptr %dst.addr.0.i, i32 %di.0.lcssa
  %add.ptr66.i = getelementptr %struct.runlist_element, ptr %add.ptr65.i, i32 -1
  %length.i186.i = getelementptr %struct.runlist_element, ptr %srl, i32 %si.0747, i32 2
  %92 = ptrtoint ptr %length.i186.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %length.i186.i, align 8
  %length1.i187.i = getelementptr inbounds %struct.runlist_element, ptr %add.ptr66.i, i32 0, i32 2
  %94 = ptrtoint ptr %length1.i187.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %length1.i187.i, align 8
  %add.i188.i = add i64 %95, %93
  store i64 %add.i188.i, ptr %length1.i187.i, align 8
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then64.i, %if.end62.i.if.end67.i_crit_edge
  %add71.i = add i32 %add.i, %conv45.i
  %add72.i = add i32 %ss.0, %di.0.lcssa
  %sub75.i = add i32 %add72.i, %conv.neg199.i
  %sub76.i = sub i32 %inc120, %add71.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub75.i, i32 %add71.i)
  %cmp.not.i.i = icmp ne i32 %sub75.i, %add71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub76.i)
  %cmp1.i.i = icmp sgt i32 %sub76.i, 0
  %spec.select.i.i = and i1 %cmp1.i.i, %cmp.not.i.i
  br i1 %spec.select.i.i, label %if.then.i.i, label %if.end67.i.ntfs_rl_mm.exit.i_crit_edge, !prof !81

if.end67.i.ntfs_rl_mm.exit.i_crit_edge:           ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_mm.exit.i

if.then.i.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr %struct.runlist_element, ptr %dst.addr.0.i, i32 %sub75.i
  %add.ptr3.i.i = getelementptr %struct.runlist_element, ptr %dst.addr.0.i, i32 %add71.i
  %mul.i189.i = mul i32 %sub76.i, 24
  %96 = call ptr @memmove(ptr %add.ptr.i.i, ptr %add.ptr3.i.i, i32 %mul.i189.i)
  br label %ntfs_rl_mm.exit.i

ntfs_rl_mm.exit.i:                                ; preds = %if.then.i.i, %if.end67.i.ntfs_rl_mm.exit.i_crit_edge
  %sub81.i = sub i32 %ss.0, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub81.i)
  %cmp.i191.i = icmp sgt i32 %sub81.i, 0
  br i1 %cmp.i191.i, label %if.then.i194.i, label %ntfs_rl_mm.exit.i.ntfs_rl_mc.exit.i_crit_edge, !prof !81

ntfs_rl_mm.exit.i.ntfs_rl_mc.exit.i_crit_edge:    ; preds = %ntfs_rl_mm.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_mc.exit.i

if.then.i194.i:                                   ; preds = %ntfs_rl_mm.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i192.i = getelementptr %struct.runlist_element, ptr %dst.addr.0.i, i32 %di.0.lcssa
  %add.ptr2.i.i = getelementptr %struct.runlist_element, ptr %arrayidx48.le, i32 %conv.i
  %mul.i193.i = mul i32 %sub81.i, 24
  %97 = call ptr @memcpy(ptr %add.ptr.i192.i, ptr %add.ptr2.i.i, i32 %mul.i193.i)
  br label %ntfs_rl_mc.exit.i

ntfs_rl_mc.exit.i:                                ; preds = %if.then.i194.i, %ntfs_rl_mm.exit.i.ntfs_rl_mc.exit.i_crit_edge
  br i1 %cmp1.i.i, label %land.lhs.true.i, label %ntfs_rl_mc.exit.i.if.end217_crit_edge

ntfs_rl_mc.exit.i.if.end217_crit_edge:            ; preds = %ntfs_rl_mc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end217

land.lhs.true.i:                                  ; preds = %ntfs_rl_mc.exit.i
  %lcn.i = getelementptr %struct.runlist_element, ptr %dst.addr.0.i, i32 %sub75.i, i32 1
  %98 = ptrtoint ptr %lcn.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %lcn.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %99)
  %cmp85.i = icmp eq i64 %99, -3
  br i1 %cmp85.i, label %if.then87.i, label %land.lhs.true.i.if.end217_crit_edge

land.lhs.true.i.if.end217_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end217

if.then87.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.runlist_element, ptr %dst.addr.0.i, i32 %sub75.i
  %sub88.i = add i32 %sub75.i, -1
  %arrayidx89.i = getelementptr %struct.runlist_element, ptr %dst.addr.0.i, i32 %sub88.i
  %100 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %arrayidx89.i, align 8
  %length.i = getelementptr %struct.runlist_element, ptr %dst.addr.0.i, i32 %sub88.i, i32 2
  %102 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %length.i, align 8
  %add92.i = add i64 %103, %101
  %104 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %add92.i, ptr %arrayidx.i, align 8
  br label %if.end217

do.body10.i492:                                   ; preds = %if.then201
  br i1 %tobool11.not.i, label %do.body21.i493, label %do.end29.i495, !prof !80

do.body21.i493:                                   ; preds = %do.body10.i492
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #6, !srcloc !87
  unreachable

do.end29.i495:                                    ; preds = %do.body10.i492
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %di.0.lcssa)
  %cmp.i494 = icmp eq i32 %di.0.lcssa, 0
  br i1 %cmp.i494, label %do.end29.i495.if.end47.i_crit_edge, label %if.else.i

do.end29.i495.if.end47.i_crit_edge:               ; preds = %do.end29.i495
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.else.i:                                        ; preds = %do.end29.i495
  %add.ptr32.i498 = getelementptr %struct.runlist_element, ptr %arrayidx74.lcssa, i32 -1
  %tobool.not.i.i499 = icmp eq ptr %add.ptr32.i498, null
  br i1 %tobool.not.i.i499, label %do.body4.i.i500, label %do.end24.i.i503, !prof !80

do.body4.i.i500:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !84
  unreachable

do.end24.i.i503:                                  ; preds = %if.else.i
  %lcn.i.i501 = getelementptr %struct.runlist_element, ptr %arrayidx74.lcssa, i32 -1, i32 1
  %105 = ptrtoint ptr %lcn.i.i501 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %lcn.i.i501, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %106)
  %cmp.i.i502 = icmp eq i64 %106, -2
  br i1 %cmp.i.i502, label %land.lhs.true.i.i506, label %if.end28.i.i510

land.lhs.true.i.i506:                             ; preds = %do.end24.i.i503
  %107 = ptrtoint ptr %lcn52 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %lcn52, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %108)
  %cmp26.i.i505 = icmp eq i64 %108, -2
  br i1 %cmp26.i.i505, label %land.lhs.true.i.i506.if.then36.i526_crit_edge, label %land.lhs.true.i.i506.ntfs_are_rl_mergeable.exit.i_crit_edge

land.lhs.true.i.i506.ntfs_are_rl_mergeable.exit.i_crit_edge: ; preds = %land.lhs.true.i.i506
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_are_rl_mergeable.exit.i

land.lhs.true.i.i506.if.then36.i526_crit_edge:    ; preds = %land.lhs.true.i.i506
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36.i526

if.end28.i.i510:                                  ; preds = %do.end24.i.i503
  %109 = ptrtoint ptr %add.ptr32.i498 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %add.ptr32.i498, align 8
  %length.i.i507 = getelementptr %struct.runlist_element, ptr %arrayidx74.lcssa, i32 -1, i32 2
  %111 = ptrtoint ptr %length.i.i507 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %length.i.i507, align 8
  %add.i.i508 = add i64 %112, %110
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i508, i64 %29)
  %cmp30.not.i.i509 = icmp eq i64 %add.i.i508, %29
  br i1 %cmp30.not.i.i509, label %if.end32.i.i512, label %if.end28.i.i510.ntfs_are_rl_mergeable.exit.i_crit_edge

if.end28.i.i510.ntfs_are_rl_mergeable.exit.i_crit_edge: ; preds = %if.end28.i.i510
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_are_rl_mergeable.exit.i

if.end32.i.i512:                                  ; preds = %if.end28.i.i510
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %106)
  %cmp34.i.i511 = icmp sgt i64 %106, -1
  br i1 %cmp34.i.i511, label %land.lhs.true35.i.i518, label %if.end45.i.i520

land.lhs.true35.i.i518:                           ; preds = %if.end32.i.i512
  %113 = ptrtoint ptr %lcn52 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %lcn52, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %114)
  %cmp37.i.i514 = icmp sgt i64 %114, -1
  %add41.i.i515 = add i64 %112, %106
  call void @__sanitizer_cov_trace_cmp8(i64 %add41.i.i515, i64 %114)
  %cmp43.i.i516 = icmp eq i64 %add41.i.i515, %114
  %or.cond.i.i517 = select i1 %cmp37.i.i514, i1 %cmp43.i.i516, i1 false
  br i1 %or.cond.i.i517, label %land.lhs.true35.i.i518.if.then36.i526_crit_edge, label %land.lhs.true35.i.i518.ntfs_are_rl_mergeable.exit.i_crit_edge

land.lhs.true35.i.i518.ntfs_are_rl_mergeable.exit.i_crit_edge: ; preds = %land.lhs.true35.i.i518
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_are_rl_mergeable.exit.i

land.lhs.true35.i.i518.if.then36.i526_crit_edge:  ; preds = %land.lhs.true35.i.i518
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36.i526

if.end45.i.i520:                                  ; preds = %if.end32.i.i512
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %106)
  %cmp47.i.i519 = icmp eq i64 %106, -1
  br i1 %cmp47.i.i519, label %land.lhs.true48.i.i523, label %if.end45.i.i520.ntfs_are_rl_mergeable.exit.i_crit_edge

if.end45.i.i520.ntfs_are_rl_mergeable.exit.i_crit_edge: ; preds = %if.end45.i.i520
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_are_rl_mergeable.exit.i

land.lhs.true48.i.i523:                           ; preds = %if.end45.i.i520
  %115 = ptrtoint ptr %lcn52 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %lcn52, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %116)
  %cmp50.i.i522 = icmp eq i64 %116, -1
  br i1 %cmp50.i.i522, label %land.lhs.true48.i.i523.if.then36.i526_crit_edge, label %land.lhs.true48.i.i523.ntfs_are_rl_mergeable.exit.i_crit_edge

land.lhs.true48.i.i523.ntfs_are_rl_mergeable.exit.i_crit_edge: ; preds = %land.lhs.true48.i.i523
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_are_rl_mergeable.exit.i

land.lhs.true48.i.i523.if.then36.i526_crit_edge:  ; preds = %land.lhs.true48.i.i523
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36.i526

ntfs_are_rl_mergeable.exit.i:                     ; preds = %land.lhs.true48.i.i523.ntfs_are_rl_mergeable.exit.i_crit_edge, %if.end45.i.i520.ntfs_are_rl_mergeable.exit.i_crit_edge, %land.lhs.true35.i.i518.ntfs_are_rl_mergeable.exit.i_crit_edge, %if.end28.i.i510.ntfs_are_rl_mergeable.exit.i_crit_edge, %land.lhs.true.i.i506.ntfs_are_rl_mergeable.exit.i_crit_edge
  %sub.i = add i32 %di.0.lcssa, -1
  %length.i524 = getelementptr %struct.runlist_element, ptr %drl, i32 %sub.i, i32 2
  %117 = ptrtoint ptr %length.i524 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %length.i524, align 8
  br label %if.end38.i

if.then36.i526:                                   ; preds = %land.lhs.true48.i.i523.if.then36.i526_crit_edge, %land.lhs.true35.i.i518.if.then36.i526_crit_edge, %land.lhs.true.i.i506.if.then36.i526_crit_edge
  %sub230.i = add i32 %di.0.lcssa, -1
  %length232.i = getelementptr %struct.runlist_element, ptr %drl, i32 %sub230.i, i32 2
  %119 = ptrtoint ptr %length232.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %length232.i, align 8
  %length37.i = getelementptr %struct.runlist_element, ptr %srl, i32 %si.0747, i32 2
  %121 = ptrtoint ptr %length37.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %length37.i, align 8
  %add.i525 = add i64 %122, %120
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then36.i526, %ntfs_are_rl_mergeable.exit.i
  %sub230.pn.i = phi i32 [ %sub230.i, %if.then36.i526 ], [ %sub.i, %ntfs_are_rl_mergeable.exit.i ]
  %retval.0.i233.i = phi i1 [ true, %if.then36.i526 ], [ false, %ntfs_are_rl_mergeable.exit.i ]
  %merged_length.0.i = phi i64 [ %add.i525, %if.then36.i526 ], [ %118, %ntfs_are_rl_mergeable.exit.i ]
  %arrayidx34235.i = getelementptr %struct.runlist_element, ptr %drl, i32 %sub230.pn.i
  %123 = ptrtoint ptr %arrayidx34235.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %arrayidx34235.i, align 8
  %add44.i = add i64 %124, %merged_length.0.i
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end38.i, %do.end29.i495.if.end47.i_crit_edge
  %add44.i.sink = phi i64 [ %add44.i, %if.end38.i ], [ 0, %do.end29.i495.if.end47.i_crit_edge ]
  %left.0.off0.i527 = phi i1 [ %retval.0.i233.i, %if.end38.i ], [ false, %do.end29.i495.if.end47.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %add44.i.sink)
  %cmp45.i = icmp sgt i64 %29, %add44.i.sink
  %add48.i = add i32 %ss.0, %inc120
  %conv.neg242.i = sext i1 %left.0.off0.i527 to i32
  %conv.i528 = zext i1 %left.0.off0.i527 to i32
  %sub50.i = add i32 %add48.i, %conv.neg242.i
  %conv52.i = zext i1 %cmp45.i to i32
  %add53.i = add i32 %sub50.i, %conv52.i
  %mul.i.i529 = mul i32 %inc120, 24
  %add.i215.i = add i32 %mul.i.i529, 4095
  %and.i.i530 = and i32 %add.i215.i, -4096
  %mul1.i.i531 = mul i32 %add53.i, 24
  %add2.i.i532 = add i32 %mul1.i.i531, 4095
  %and3.i.i533 = and i32 %add2.i.i532, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i530, i32 %and3.i.i533)
  %cmp.i216.i = icmp eq i32 %and.i.i530, %and3.i.i533
  br i1 %cmp.i216.i, label %if.end47.i.ntfs_rl_realloc.exit.i554_crit_edge, label %if.end.i.i535

if.end47.i.ntfs_rl_realloc.exit.i554_crit_edge:   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_realloc.exit.i554

if.end.i.i535:                                    ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %and3.i.i533)
  %cmp.i.i.i.i534 = icmp ult i32 %and3.i.i533, 4097
  br i1 %cmp.i.i.i.i534, label %do.body.i.i.i.i537, label %if.end16.i.i.i.i544, !prof !81

do.body.i.i.i.i537:                               ; preds = %if.end.i.i535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i533)
  %tobool2.not.i.i.i.i536 = icmp eq i32 %and3.i.i533, 0
  br i1 %tobool2.not.i.i.i.i536, label %do.body12.i.i.i.i538, label %do.end15.i.i.i.i540, !prof !80

do.body12.i.i.i.i538:                             ; preds = %do.body.i.i.i.i537
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end15.i.i.i.i540:                              ; preds = %do.body.i.i.i.i537
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %125 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i.i539 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %125, i32 noundef 3136, i32 noundef 4096) #9
  br label %ntfs_malloc_nofs.exit.i.i548

if.end16.i.i.i.i544:                              ; preds = %if.end.i.i535
  %shr.i.i.i.i541 = lshr i32 %add2.i.i532, 12
  %call.i.i.i.i.i.i.i542 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %126 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i.i541, i32 %126)
  %cmp18.i.i.i.i543 = icmp ult i32 %shr.i.i.i.i541, %126
  br i1 %cmp18.i.i.i.i543, label %if.then25.i.i.i.i546, label %if.end16.i.i.i.i544.cleanup295_crit_edge, !prof !81

if.end16.i.i.i.i544.cleanup295_crit_edge:         ; preds = %if.end16.i.i.i.i544
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup295

if.then25.i.i.i.i546:                             ; preds = %if.end16.i.i.i.i544
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i.i.i.i545 = tail call noalias ptr @__vmalloc(i32 noundef %and3.i.i533, i32 noundef 3138) #10
  br label %ntfs_malloc_nofs.exit.i.i548

ntfs_malloc_nofs.exit.i.i548:                     ; preds = %if.then25.i.i.i.i546, %do.end15.i.i.i.i540
  %retval.0.i.i.i.i547 = phi ptr [ %call7.i.i.i.i.i539, %do.end15.i.i.i.i540 ], [ %call26.i.i.i.i545, %if.then25.i.i.i.i546 ]
  %tobool.not.i217.i = icmp eq ptr %retval.0.i.i.i.i547, null
  br i1 %tobool.not.i217.i, label %ntfs_malloc_nofs.exit.i.i548.cleanup295_crit_edge, label %if.then17.i.i550, !prof !80

ntfs_malloc_nofs.exit.i.i548.cleanup295_crit_edge: ; preds = %ntfs_malloc_nofs.exit.i.i548
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup295

if.then17.i.i550:                                 ; preds = %ntfs_malloc_nofs.exit.i.i548
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i530, i32 %and3.i.i533)
  %cmp18.i.i549 = icmp sgt i32 %and.i.i530, %and3.i.i533
  br i1 %cmp18.i.i549, label %if.then25.i.i551, label %if.then17.i.i550.if.end26.i.i553_crit_edge, !prof !80

if.then17.i.i550.if.end26.i.i553_crit_edge:       ; preds = %if.then17.i.i550
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.i553

if.then25.i.i551:                                 ; preds = %if.then17.i.i550
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.i553

if.end26.i.i553:                                  ; preds = %if.then25.i.i551, %if.then17.i.i550.if.end26.i.i553_crit_edge
  %old_size.addr.0.i.i552 = phi i32 [ %and3.i.i533, %if.then25.i.i551 ], [ %and.i.i530, %if.then17.i.i550.if.end26.i.i553_crit_edge ]
  %127 = call ptr @memcpy(ptr %retval.0.i.i.i.i547, ptr %drl, i32 %old_size.addr.0.i.i552)
  tail call void @kvfree(ptr noundef nonnull %drl) #6
  br label %ntfs_rl_realloc.exit.i554

ntfs_rl_realloc.exit.i554:                        ; preds = %if.end26.i.i553, %if.end47.i.ntfs_rl_realloc.exit.i554_crit_edge
  %retval.0.i218.i = phi ptr [ %drl, %if.end47.i.ntfs_rl_realloc.exit.i554_crit_edge ], [ %retval.0.i.i.i.i547, %if.end26.i.i553 ]
  %cmp.i219.i = icmp ugt ptr %retval.0.i218.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219.i, label %ntfs_rl_realloc.exit.i554.if.end217_crit_edge, label %if.end57.i

ntfs_rl_realloc.exit.i554.if.end217_crit_edge:    ; preds = %ntfs_rl_realloc.exit.i554
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end217

if.end57.i:                                       ; preds = %ntfs_rl_realloc.exit.i554
  br i1 %left.0.off0.i527, label %if.then59.i, label %if.end57.i.if.end62.i561_crit_edge

if.end57.i.if.end62.i561_crit_edge:               ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.i561

if.then59.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr60.i555 = getelementptr %struct.runlist_element, ptr %retval.0.i218.i, i32 %di.0.lcssa
  %add.ptr61.i556 = getelementptr %struct.runlist_element, ptr %add.ptr60.i555, i32 -1
  %length.i220.i = getelementptr %struct.runlist_element, ptr %srl, i32 %si.0747, i32 2
  %128 = ptrtoint ptr %length.i220.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %length.i220.i, align 8
  %length1.i.i557 = getelementptr inbounds %struct.runlist_element, ptr %add.ptr61.i556, i32 0, i32 2
  %130 = ptrtoint ptr %length1.i.i557 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %length1.i.i557, align 8
  %add.i221.i = add i64 %131, %129
  store i64 %add.i221.i, ptr %length1.i.i557, align 8
  br label %if.end62.i561

if.end62.i561:                                    ; preds = %if.then59.i, %if.end57.i.if.end62.i561_crit_edge
  %add63.i = add i32 %ss.0, %di.0.lcssa
  %sub66.i = add i32 %add63.i, %conv.neg242.i
  %add69.i = add i32 %sub66.i, %conv52.i
  %sub70.i = sub i32 %inc120, %di.0.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %add69.i, i32 %di.0.lcssa)
  %cmp.not.i.i558 = icmp ne i32 %add69.i, %di.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub70.i)
  %cmp1.i.i559 = icmp sgt i32 %sub70.i, 0
  %spec.select.i.i560 = and i1 %cmp1.i.i559, %cmp.not.i.i558
  br i1 %spec.select.i.i560, label %if.then.i.i564, label %if.end62.i561.ntfs_rl_mm.exit.i565_crit_edge, !prof !81

if.end62.i561.ntfs_rl_mm.exit.i565_crit_edge:     ; preds = %if.end62.i561
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_mm.exit.i565

if.then.i.i564:                                   ; preds = %if.end62.i561
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i562 = getelementptr %struct.runlist_element, ptr %retval.0.i218.i, i32 %add69.i
  %add.ptr3.i.i563 = getelementptr %struct.runlist_element, ptr %retval.0.i218.i, i32 %di.0.lcssa
  %mul.i222.i = mul i32 %sub70.i, 24
  %132 = call ptr @memmove(ptr %add.ptr.i.i562, ptr %add.ptr3.i.i563, i32 %mul.i222.i)
  br label %ntfs_rl_mm.exit.i565

ntfs_rl_mm.exit.i565:                             ; preds = %if.then.i.i564, %if.end62.i561.ntfs_rl_mm.exit.i565_crit_edge
  %sub78.i = sub i32 %ss.0, %conv.i528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub78.i)
  %cmp.i224.i = icmp sgt i32 %sub78.i, 0
  br i1 %cmp.i224.i, label %if.then.i227.i, label %ntfs_rl_mm.exit.i565.ntfs_rl_mc.exit.i568_crit_edge, !prof !81

ntfs_rl_mm.exit.i565.ntfs_rl_mc.exit.i568_crit_edge: ; preds = %ntfs_rl_mm.exit.i565
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_mc.exit.i568

if.then.i227.i:                                   ; preds = %ntfs_rl_mm.exit.i565
  call void @__sanitizer_cov_trace_pc() #8
  %add73.i = add i32 %di.0.lcssa, %conv52.i
  %add.ptr.i225.i = getelementptr %struct.runlist_element, ptr %retval.0.i218.i, i32 %add73.i
  %add.ptr2.i.i566 = getelementptr %struct.runlist_element, ptr %arrayidx48.le, i32 %conv.i528
  %mul.i226.i = mul i32 %sub78.i, 24
  %133 = call ptr @memcpy(ptr %add.ptr.i225.i, ptr %add.ptr2.i.i566, i32 %mul.i226.i)
  br label %ntfs_rl_mc.exit.i568

ntfs_rl_mc.exit.i568:                             ; preds = %if.then.i227.i, %ntfs_rl_mm.exit.i565.ntfs_rl_mc.exit.i568_crit_edge
  %sub79.i = add i32 %add69.i, -1
  %arrayidx80.i = getelementptr %struct.runlist_element, ptr %retval.0.i218.i, i32 %sub79.i
  %134 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %arrayidx80.i, align 8
  %length84.i = getelementptr %struct.runlist_element, ptr %retval.0.i218.i, i32 %sub79.i, i32 2
  %136 = ptrtoint ptr %length84.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %length84.i, align 8
  %add85.i = add i64 %137, %135
  %arrayidx86.i = getelementptr %struct.runlist_element, ptr %retval.0.i218.i, i32 %add69.i
  %138 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %add85.i, ptr %arrayidx86.i, align 8
  %lcn.i567 = getelementptr %struct.runlist_element, ptr %retval.0.i218.i, i32 %add69.i, i32 1
  %139 = ptrtoint ptr %lcn.i567 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %lcn.i567, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %140)
  %switch.i = icmp ugt i64 %140, -3
  br i1 %switch.i, label %if.then95.i, label %ntfs_rl_mc.exit.i568.if.end104.i_crit_edge

ntfs_rl_mc.exit.i568.if.end104.i_crit_edge:       ; preds = %ntfs_rl_mc.exit.i568
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104.i

if.then95.i:                                      ; preds = %ntfs_rl_mc.exit.i568
  call void @__sanitizer_cov_trace_pc() #8
  %add96.i = add i32 %add69.i, 1
  %arrayidx97.i = getelementptr %struct.runlist_element, ptr %retval.0.i218.i, i32 %add96.i
  %141 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %arrayidx97.i, align 8
  %sub101.i = sub i64 %142, %add85.i
  %length103.i = getelementptr %struct.runlist_element, ptr %retval.0.i218.i, i32 %add69.i, i32 2
  %143 = ptrtoint ptr %length103.i to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %sub101.i, ptr %length103.i, align 8
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then95.i, %ntfs_rl_mc.exit.i568.if.end104.i_crit_edge
  br i1 %cmp45.i, label %if.then106.i, label %if.end104.i.if.end217_crit_edge

if.end104.i.if.end217_crit_edge:                  ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end217

if.then106.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %di.0.lcssa)
  %cmp107.i = icmp sgt i32 %di.0.lcssa, 0
  br i1 %cmp107.i, label %if.then109.i, label %if.else127.i

if.then109.i:                                     ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub110.i = add nsw i32 %di.0.lcssa, -1
  %arrayidx111.i = getelementptr %struct.runlist_element, ptr %retval.0.i218.i, i32 %sub110.i
  %144 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %arrayidx111.i, align 8
  %length115.i = getelementptr %struct.runlist_element, ptr %retval.0.i218.i, i32 %sub110.i, i32 2
  %146 = ptrtoint ptr %length115.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %length115.i, align 8
  %add116.i = add i64 %147, %145
  %add119.i = add nuw i32 %di.0.lcssa, 1
  %arrayidx120.i = getelementptr %struct.runlist_element, ptr %retval.0.i218.i, i32 %add119.i
  %148 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %arrayidx120.i, align 8
  %sub124.i = sub i64 %149, %add116.i
  br label %if.end135.i

if.else127.i:                                     ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #8
  %add130.i = add nsw i32 %di.0.lcssa, 1
  %arrayidx131.i = getelementptr %struct.runlist_element, ptr %retval.0.i218.i, i32 %add130.i
  %150 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %arrayidx131.i, align 8
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.else127.i, %if.then109.i
  %.sink243.i = phi i64 [ %add116.i, %if.then109.i ], [ 0, %if.else127.i ]
  %.sink.i = phi i64 [ %sub124.i, %if.then109.i ], [ %151, %if.else127.i ]
  %152 = getelementptr %struct.runlist_element, ptr %retval.0.i218.i, i32 %di.0.lcssa
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %.sink243.i, ptr %152, align 8
  %154 = getelementptr %struct.runlist_element, ptr %retval.0.i218.i, i32 %di.0.lcssa, i32 2
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %.sink.i, ptr %154, align 8
  %lcn137.i = getelementptr %struct.runlist_element, ptr %retval.0.i218.i, i32 %di.0.lcssa, i32 1
  %156 = ptrtoint ptr %lcn137.i to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 -2, ptr %lcn137.i, align 8
  br label %if.end217

if.else208:                                       ; preds = %if.end199
  br i1 %finish.0.shrunk, label %do.body10.i572, label %do.body8.i

do.body10.i572:                                   ; preds = %if.else208
  br i1 %tobool11.not.i, label %do.body21.i573, label %do.end29.i576, !prof !80

do.body21.i573:                                   ; preds = %do.body10.i572
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 211, 0\0A.popsection", ""() #6, !srcloc !88
  unreachable

do.end29.i576:                                    ; preds = %do.body10.i572
  %add.i574 = add i32 %di.0.lcssa, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i574, i32 %inc120)
  %cmp.i575 = icmp slt i32 %add.i574, %inc120
  br i1 %cmp.i575, label %if.then30.i582, label %do.end29.i576.if.end34.i619_crit_edge

do.end29.i576.if.end34.i619_crit_edge:            ; preds = %do.end29.i576
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i619

if.then30.i582:                                   ; preds = %do.end29.i576
  %add.ptr.i577 = getelementptr %struct.runlist_element, ptr %arrayidx48.le, i32 %ss.0
  %add.ptr31.i578 = getelementptr %struct.runlist_element, ptr %add.ptr.i577, i32 -1
  %add.ptr33.i580 = getelementptr %struct.runlist_element, ptr %arrayidx74.lcssa, i32 1
  %tobool.not.i.i581 = icmp eq ptr %add.ptr31.i578, null
  br i1 %tobool.not.i.i581, label %do.body4.i.i583, label %do.body8.i.i585, !prof !80

do.body4.i.i583:                                  ; preds = %if.then30.i582
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !84
  unreachable

do.body8.i.i585:                                  ; preds = %if.then30.i582
  %tobool9.not.i.i584 = icmp eq ptr %add.ptr33.i580, null
  br i1 %tobool9.not.i.i584, label %do.body19.i.i586, label %do.end24.i.i589, !prof !80

do.body19.i.i586:                                 ; preds = %do.body8.i.i585
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 145, 0\0A.popsection", ""() #6, !srcloc !85
  unreachable

do.end24.i.i589:                                  ; preds = %do.body8.i.i585
  %lcn.i.i587 = getelementptr inbounds %struct.runlist_element, ptr %add.ptr31.i578, i32 0, i32 1
  %157 = ptrtoint ptr %lcn.i.i587 to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %lcn.i.i587, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %158)
  %cmp.i.i588 = icmp eq i64 %158, -2
  br i1 %cmp.i.i588, label %land.lhs.true.i.i592, label %do.end24.i.i589.if.end28.i.i596_crit_edge

do.end24.i.i589.if.end28.i.i596_crit_edge:        ; preds = %do.end24.i.i589
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i.i596

land.lhs.true.i.i592:                             ; preds = %do.end24.i.i589
  %lcn25.i.i590 = getelementptr %struct.runlist_element, ptr %arrayidx74.lcssa, i32 1, i32 1
  %159 = ptrtoint ptr %lcn25.i.i590 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %lcn25.i.i590, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %160)
  %cmp26.i.i591 = icmp eq i64 %160, -2
  br i1 %cmp26.i.i591, label %land.lhs.true.i.i592.if.end34.i619_crit_edge, label %land.lhs.true.i.i592.if.end28.i.i596_crit_edge

land.lhs.true.i.i592.if.end28.i.i596_crit_edge:   ; preds = %land.lhs.true.i.i592
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i.i596

land.lhs.true.i.i592.if.end34.i619_crit_edge:     ; preds = %land.lhs.true.i.i592
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i619

if.end28.i.i596:                                  ; preds = %land.lhs.true.i.i592.if.end28.i.i596_crit_edge, %do.end24.i.i589.if.end28.i.i596_crit_edge
  %161 = ptrtoint ptr %add.ptr31.i578 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %add.ptr31.i578, align 8
  %length.i.i593 = getelementptr inbounds %struct.runlist_element, ptr %add.ptr31.i578, i32 0, i32 2
  %163 = ptrtoint ptr %length.i.i593 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %length.i.i593, align 8
  %add.i.i594 = add i64 %164, %162
  %165 = ptrtoint ptr %add.ptr33.i580 to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %add.ptr33.i580, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i594, i64 %166)
  %cmp30.not.i.i595 = icmp eq i64 %add.i.i594, %166
  br i1 %cmp30.not.i.i595, label %if.end32.i.i598, label %if.end28.i.i596.if.end34.i619_crit_edge

if.end28.i.i596.if.end34.i619_crit_edge:          ; preds = %if.end28.i.i596
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i619

if.end32.i.i598:                                  ; preds = %if.end28.i.i596
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %158)
  %cmp34.i.i597 = icmp sgt i64 %158, -1
  br i1 %cmp34.i.i597, label %land.lhs.true35.i.i604, label %if.end45.i.i606

land.lhs.true35.i.i604:                           ; preds = %if.end32.i.i598
  %lcn36.i.i599 = getelementptr %struct.runlist_element, ptr %arrayidx74.lcssa, i32 1, i32 1
  %167 = ptrtoint ptr %lcn36.i.i599 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %lcn36.i.i599, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %168)
  %cmp37.i.i600 = icmp sgt i64 %168, -1
  %add41.i.i601 = add i64 %164, %158
  call void @__sanitizer_cov_trace_cmp8(i64 %add41.i.i601, i64 %168)
  %cmp43.i.i602 = icmp eq i64 %add41.i.i601, %168
  %or.cond.i.i603 = select i1 %cmp37.i.i600, i1 %cmp43.i.i602, i1 false
  br i1 %or.cond.i.i603, label %land.lhs.true35.i.i604.if.end34.i619_crit_edge, label %land.lhs.true35.i.i604.if.end52.i.i610_crit_edge

land.lhs.true35.i.i604.if.end52.i.i610_crit_edge: ; preds = %land.lhs.true35.i.i604
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i.i610

land.lhs.true35.i.i604.if.end34.i619_crit_edge:   ; preds = %land.lhs.true35.i.i604
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i619

if.end45.i.i606:                                  ; preds = %if.end32.i.i598
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %158)
  %cmp47.i.i605 = icmp eq i64 %158, -1
  br i1 %cmp47.i.i605, label %land.lhs.true48.i.i609, label %if.end45.i.i606.if.end52.i.i610_crit_edge

if.end45.i.i606.if.end52.i.i610_crit_edge:        ; preds = %if.end45.i.i606
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i.i610

land.lhs.true48.i.i609:                           ; preds = %if.end45.i.i606
  %lcn49.i.i607 = getelementptr %struct.runlist_element, ptr %arrayidx74.lcssa, i32 1, i32 1
  %169 = ptrtoint ptr %lcn49.i.i607 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %lcn49.i.i607, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %170)
  %cmp50.i.i608 = icmp eq i64 %170, -1
  br i1 %cmp50.i.i608, label %land.lhs.true48.i.i609.if.end34.i619_crit_edge, label %land.lhs.true48.i.i609.if.end52.i.i610_crit_edge

land.lhs.true48.i.i609.if.end52.i.i610_crit_edge: ; preds = %land.lhs.true48.i.i609
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i.i610

land.lhs.true48.i.i609.if.end34.i619_crit_edge:   ; preds = %land.lhs.true48.i.i609
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i619

if.end52.i.i610:                                  ; preds = %land.lhs.true48.i.i609.if.end52.i.i610_crit_edge, %if.end45.i.i606.if.end52.i.i610_crit_edge, %land.lhs.true35.i.i604.if.end52.i.i610_crit_edge
  br label %if.end34.i619

if.end34.i619:                                    ; preds = %if.end52.i.i610, %land.lhs.true48.i.i609.if.end34.i619_crit_edge, %land.lhs.true35.i.i604.if.end34.i619_crit_edge, %if.end28.i.i596.if.end34.i619_crit_edge, %land.lhs.true.i.i592.if.end34.i619_crit_edge, %do.end29.i576.if.end34.i619_crit_edge
  %right.0.off0.i611 = phi i1 [ false, %do.end29.i576.if.end34.i619_crit_edge ], [ false, %if.end52.i.i610 ], [ true, %land.lhs.true.i.i592.if.end34.i619_crit_edge ], [ false, %if.end28.i.i596.if.end34.i619_crit_edge ], [ true, %land.lhs.true35.i.i604.if.end34.i619_crit_edge ], [ true, %land.lhs.true48.i.i609.if.end34.i619_crit_edge ]
  %add35.i = add i32 %ss.0, %inc120
  %conv.neg138.i = sext i1 %right.0.off0.i611 to i32
  %conv.i612 = zext i1 %right.0.off0.i611 to i32
  %sub.i613 = add i32 %add35.i, %conv.neg138.i
  %mul.i.i614 = mul i32 %inc120, 24
  %add.i121.i = add i32 %mul.i.i614, 4095
  %and.i.i615 = and i32 %add.i121.i, -4096
  %mul1.i.i616 = mul i32 %sub.i613, 24
  %add2.i.i617 = add i32 %mul1.i.i616, 4095
  %and3.i.i618 = and i32 %add2.i.i617, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i615, i32 %and3.i.i618)
  %cmp.i122.i = icmp eq i32 %and.i.i615, %and3.i.i618
  br i1 %cmp.i122.i, label %if.end34.i619.ntfs_rl_realloc.exit.i640_crit_edge, label %if.end.i.i621

if.end34.i619.ntfs_rl_realloc.exit.i640_crit_edge: ; preds = %if.end34.i619
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_realloc.exit.i640

if.end.i.i621:                                    ; preds = %if.end34.i619
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %and3.i.i618)
  %cmp.i.i.i.i620 = icmp ult i32 %and3.i.i618, 4097
  br i1 %cmp.i.i.i.i620, label %do.body.i.i.i.i623, label %if.end16.i.i.i.i630, !prof !81

do.body.i.i.i.i623:                               ; preds = %if.end.i.i621
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i618)
  %tobool2.not.i.i.i.i622 = icmp eq i32 %and3.i.i618, 0
  br i1 %tobool2.not.i.i.i.i622, label %do.body12.i.i.i.i624, label %do.end15.i.i.i.i626, !prof !80

do.body12.i.i.i.i624:                             ; preds = %do.body.i.i.i.i623
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end15.i.i.i.i626:                              ; preds = %do.body.i.i.i.i623
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %171 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i.i625 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %171, i32 noundef 3136, i32 noundef 4096) #9
  br label %ntfs_malloc_nofs.exit.i.i634

if.end16.i.i.i.i630:                              ; preds = %if.end.i.i621
  %shr.i.i.i.i627 = lshr i32 %add2.i.i617, 12
  %call.i.i.i.i.i.i.i628 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %172 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i.i627, i32 %172)
  %cmp18.i.i.i.i629 = icmp ult i32 %shr.i.i.i.i627, %172
  br i1 %cmp18.i.i.i.i629, label %if.then25.i.i.i.i632, label %if.end16.i.i.i.i630.cleanup295_crit_edge, !prof !81

if.end16.i.i.i.i630.cleanup295_crit_edge:         ; preds = %if.end16.i.i.i.i630
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup295

if.then25.i.i.i.i632:                             ; preds = %if.end16.i.i.i.i630
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i.i.i.i631 = tail call noalias ptr @__vmalloc(i32 noundef %and3.i.i618, i32 noundef 3138) #10
  br label %ntfs_malloc_nofs.exit.i.i634

ntfs_malloc_nofs.exit.i.i634:                     ; preds = %if.then25.i.i.i.i632, %do.end15.i.i.i.i626
  %retval.0.i.i.i.i633 = phi ptr [ %call7.i.i.i.i.i625, %do.end15.i.i.i.i626 ], [ %call26.i.i.i.i631, %if.then25.i.i.i.i632 ]
  %tobool.not.i123.i = icmp eq ptr %retval.0.i.i.i.i633, null
  br i1 %tobool.not.i123.i, label %ntfs_malloc_nofs.exit.i.i634.cleanup295_crit_edge, label %if.then17.i.i636, !prof !80

ntfs_malloc_nofs.exit.i.i634.cleanup295_crit_edge: ; preds = %ntfs_malloc_nofs.exit.i.i634
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup295

if.then17.i.i636:                                 ; preds = %ntfs_malloc_nofs.exit.i.i634
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i615, i32 %and3.i.i618)
  %cmp18.i.i635 = icmp sgt i32 %and.i.i615, %and3.i.i618
  br i1 %cmp18.i.i635, label %if.then25.i.i637, label %if.then17.i.i636.if.end26.i.i639_crit_edge, !prof !80

if.then17.i.i636.if.end26.i.i639_crit_edge:       ; preds = %if.then17.i.i636
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.i639

if.then25.i.i637:                                 ; preds = %if.then17.i.i636
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.i639

if.end26.i.i639:                                  ; preds = %if.then25.i.i637, %if.then17.i.i636.if.end26.i.i639_crit_edge
  %old_size.addr.0.i.i638 = phi i32 [ %and3.i.i618, %if.then25.i.i637 ], [ %and.i.i615, %if.then17.i.i636.if.end26.i.i639_crit_edge ]
  %173 = call ptr @memcpy(ptr %retval.0.i.i.i.i633, ptr %drl, i32 %old_size.addr.0.i.i638)
  tail call void @kvfree(ptr noundef nonnull %drl) #6
  br label %ntfs_rl_realloc.exit.i640

ntfs_rl_realloc.exit.i640:                        ; preds = %if.end26.i.i639, %if.end34.i619.ntfs_rl_realloc.exit.i640_crit_edge
  %retval.0.i124.i = phi ptr [ %drl, %if.end34.i619.ntfs_rl_realloc.exit.i640_crit_edge ], [ %retval.0.i.i.i.i633, %if.end26.i.i639 ]
  %cmp.i125.i = icmp ugt ptr %retval.0.i124.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125.i, label %ntfs_rl_realloc.exit.i640.if.end217_crit_edge, label %if.end40.i

ntfs_rl_realloc.exit.i640.if.end217_crit_edge:    ; preds = %ntfs_rl_realloc.exit.i640
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end217

if.end40.i:                                       ; preds = %ntfs_rl_realloc.exit.i640
  br i1 %right.0.off0.i611, label %if.then42.i, label %if.end40.i.if.end47.i647_crit_edge

if.end40.i.if.end47.i647_crit_edge:               ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i647

if.then42.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr43.i = getelementptr %struct.runlist_element, ptr %arrayidx48.le, i32 %ss.0
  %add.ptr44.i = getelementptr %struct.runlist_element, ptr %add.ptr43.i, i32 -1
  %add.ptr45.i = getelementptr %struct.runlist_element, ptr %retval.0.i124.i, i32 %di.0.lcssa
  %add.ptr46.i = getelementptr %struct.runlist_element, ptr %add.ptr45.i, i32 1
  %length.i126.i = getelementptr inbounds %struct.runlist_element, ptr %add.ptr46.i, i32 0, i32 2
  %174 = ptrtoint ptr %length.i126.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %length.i126.i, align 8
  %length1.i.i641 = getelementptr inbounds %struct.runlist_element, ptr %add.ptr44.i, i32 0, i32 2
  %176 = ptrtoint ptr %length1.i.i641 to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %length1.i.i641, align 8
  %add.i127.i = add i64 %177, %175
  store i64 %add.i127.i, ptr %length1.i.i641, align 8
  br label %if.end47.i647

if.end47.i647:                                    ; preds = %if.then42.i, %if.end40.i.if.end47.i647_crit_edge
  %add48.i642 = add i32 %ss.0, %di.0.lcssa
  %add49.i = add i32 %add48.i642, 1
  %add53.i643 = add i32 %add.i574, %conv.i612
  %sub58.i = sub i32 %inc120, %add53.i643
  call void @__sanitizer_cov_trace_cmp4(i32 %add49.i, i32 %add53.i643)
  %cmp.not.i.i644 = icmp ne i32 %add49.i, %add53.i643
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub58.i)
  %cmp1.i.i645 = icmp sgt i32 %sub58.i, 0
  %spec.select.i.i646 = and i1 %cmp.not.i.i644, %cmp1.i.i645
  br i1 %spec.select.i.i646, label %if.then.i.i650, label %if.end47.i647.ntfs_rl_mm.exit.i651_crit_edge, !prof !81

if.end47.i647.ntfs_rl_mm.exit.i651_crit_edge:     ; preds = %if.end47.i647
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_mm.exit.i651

if.then.i.i650:                                   ; preds = %if.end47.i647
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i648 = getelementptr %struct.runlist_element, ptr %retval.0.i124.i, i32 %add49.i
  %add.ptr3.i.i649 = getelementptr %struct.runlist_element, ptr %retval.0.i124.i, i32 %add53.i643
  %mul.i128.i = mul i32 %sub58.i, 24
  %178 = call ptr @memmove(ptr %add.ptr.i.i648, ptr %add.ptr3.i.i649, i32 %mul.i128.i)
  br label %ntfs_rl_mm.exit.i651

ntfs_rl_mm.exit.i651:                             ; preds = %if.then.i.i650, %if.end47.i647.ntfs_rl_mm.exit.i651_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ss.0)
  %cmp.i130.i = icmp sgt i32 %ss.0, 0
  br i1 %cmp.i130.i, label %if.then.i133.i, label %ntfs_rl_mm.exit.i651.ntfs_rl_mc.exit.i655_crit_edge, !prof !81

ntfs_rl_mm.exit.i651.ntfs_rl_mc.exit.i655_crit_edge: ; preds = %ntfs_rl_mm.exit.i651
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_mc.exit.i655

if.then.i133.i:                                   ; preds = %ntfs_rl_mm.exit.i651
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i131.i = getelementptr %struct.runlist_element, ptr %retval.0.i124.i, i32 %add.i574
  %mul.i132.i = mul i32 %ss.0, 24
  %179 = call ptr @memcpy(ptr %add.ptr.i131.i, ptr %arrayidx48.le, i32 %mul.i132.i)
  br label %ntfs_rl_mc.exit.i655

ntfs_rl_mc.exit.i655:                             ; preds = %if.then.i133.i, %ntfs_rl_mm.exit.i651.ntfs_rl_mc.exit.i655_crit_edge
  %arrayidx.i652 = getelementptr %struct.runlist_element, ptr %retval.0.i124.i, i32 %add.i574
  %180 = ptrtoint ptr %arrayidx.i652 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %arrayidx.i652, align 8
  %arrayidx61.i = getelementptr %struct.runlist_element, ptr %retval.0.i124.i, i32 %di.0.lcssa
  %182 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %arrayidx61.i, align 8
  %sub63.i = sub i64 %181, %183
  %length.i653 = getelementptr %struct.runlist_element, ptr %retval.0.i124.i, i32 %di.0.lcssa, i32 2
  %184 = ptrtoint ptr %length.i653 to i32
  call void @__asan_store8_noabort(i32 %184)
  store i64 %sub63.i, ptr %length.i653, align 8
  %lcn.i654 = getelementptr %struct.runlist_element, ptr %retval.0.i124.i, i32 %add49.i, i32 1
  %185 = ptrtoint ptr %lcn.i654 to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %lcn.i654, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %186)
  %cmp66.i = icmp eq i64 %186, -3
  br i1 %cmp66.i, label %if.then68.i, label %ntfs_rl_mc.exit.i655.if.end217_crit_edge

ntfs_rl_mc.exit.i655.if.end217_crit_edge:         ; preds = %ntfs_rl_mc.exit.i655
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end217

if.then68.i:                                      ; preds = %ntfs_rl_mc.exit.i655
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx65.i = getelementptr %struct.runlist_element, ptr %retval.0.i124.i, i32 %add49.i
  %arrayidx70.i = getelementptr %struct.runlist_element, ptr %retval.0.i124.i, i32 %add48.i642
  %187 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %arrayidx70.i, align 8
  %length74.i = getelementptr %struct.runlist_element, ptr %retval.0.i124.i, i32 %add48.i642, i32 2
  %189 = ptrtoint ptr %length74.i to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %length74.i, align 8
  %add75.i = add i64 %190, %188
  %191 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %add75.i, ptr %arrayidx65.i, align 8
  br label %if.end217

do.body8.i:                                       ; preds = %if.else208
  br i1 %tobool11.not.i, label %do.body19.i, label %do.end24.i, !prof !80

do.body19.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 460, 0\0A.popsection", ""() #6, !srcloc !89
  unreachable

do.end24.i:                                       ; preds = %do.body8.i
  %add.i658 = add i32 %ss.0, %inc120
  %mul.i.i659 = mul i32 %inc120, 24
  %add.i.i660 = add i32 %mul.i.i659, 4095
  %and.i.i661 = and i32 %add.i.i660, -4096
  %192 = mul i32 %add.i658, 24
  %add2.i.i662 = add i32 %192, 4119
  %and3.i.i663 = and i32 %add2.i.i662, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i661, i32 %and3.i.i663)
  %cmp.i.i664 = icmp eq i32 %and.i.i661, %and3.i.i663
  br i1 %cmp.i.i664, label %do.end24.i.ntfs_rl_realloc.exit.i686_crit_edge, label %if.end.i.i666

do.end24.i.ntfs_rl_realloc.exit.i686_crit_edge:   ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_realloc.exit.i686

if.end.i.i666:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %and3.i.i663)
  %cmp.i.i.i.i665 = icmp ult i32 %and3.i.i663, 4097
  br i1 %cmp.i.i.i.i665, label %do.body.i.i.i.i668, label %if.end16.i.i.i.i675, !prof !81

do.body.i.i.i.i668:                               ; preds = %if.end.i.i666
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i663)
  %tobool2.not.i.i.i.i667 = icmp eq i32 %and3.i.i663, 0
  br i1 %tobool2.not.i.i.i.i667, label %do.body12.i.i.i.i669, label %do.end15.i.i.i.i671, !prof !80

do.body12.i.i.i.i669:                             ; preds = %do.body.i.i.i.i668
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end15.i.i.i.i671:                              ; preds = %do.body.i.i.i.i668
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %193 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i.i670 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %193, i32 noundef 3136, i32 noundef 4096) #9
  br label %ntfs_malloc_nofs.exit.i.i680

if.end16.i.i.i.i675:                              ; preds = %if.end.i.i666
  %shr.i.i.i.i672 = lshr i32 %add2.i.i662, 12
  %call.i.i.i.i.i.i.i673 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %194 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i.i672, i32 %194)
  %cmp18.i.i.i.i674 = icmp ult i32 %shr.i.i.i.i672, %194
  br i1 %cmp18.i.i.i.i674, label %if.then25.i.i.i.i677, label %if.end16.i.i.i.i675.cleanup295_crit_edge, !prof !81

if.end16.i.i.i.i675.cleanup295_crit_edge:         ; preds = %if.end16.i.i.i.i675
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup295

if.then25.i.i.i.i677:                             ; preds = %if.end16.i.i.i.i675
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i.i.i.i676 = tail call noalias ptr @__vmalloc(i32 noundef %and3.i.i663, i32 noundef 3138) #10
  br label %ntfs_malloc_nofs.exit.i.i680

ntfs_malloc_nofs.exit.i.i680:                     ; preds = %if.then25.i.i.i.i677, %do.end15.i.i.i.i671
  %retval.0.i.i.i.i678 = phi ptr [ %call7.i.i.i.i.i670, %do.end15.i.i.i.i671 ], [ %call26.i.i.i.i676, %if.then25.i.i.i.i677 ]
  %tobool.not.i.i679 = icmp eq ptr %retval.0.i.i.i.i678, null
  br i1 %tobool.not.i.i679, label %ntfs_malloc_nofs.exit.i.i680.cleanup295_crit_edge, label %if.then17.i.i682, !prof !80

ntfs_malloc_nofs.exit.i.i680.cleanup295_crit_edge: ; preds = %ntfs_malloc_nofs.exit.i.i680
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup295

if.then17.i.i682:                                 ; preds = %ntfs_malloc_nofs.exit.i.i680
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i661, i32 %and3.i.i663)
  %cmp18.i.i681 = icmp sgt i32 %and.i.i661, %and3.i.i663
  br i1 %cmp18.i.i681, label %if.then25.i.i683, label %if.then17.i.i682.if.end26.i.i685_crit_edge, !prof !80

if.then17.i.i682.if.end26.i.i685_crit_edge:       ; preds = %if.then17.i.i682
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.i685

if.then25.i.i683:                                 ; preds = %if.then17.i.i682
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.i685

if.end26.i.i685:                                  ; preds = %if.then25.i.i683, %if.then17.i.i682.if.end26.i.i685_crit_edge
  %old_size.addr.0.i.i684 = phi i32 [ %and3.i.i663, %if.then25.i.i683 ], [ %and.i.i661, %if.then17.i.i682.if.end26.i.i685_crit_edge ]
  %195 = call ptr @memcpy(ptr %retval.0.i.i.i.i678, ptr %drl, i32 %old_size.addr.0.i.i684)
  tail call void @kvfree(ptr noundef nonnull %drl) #6
  br label %ntfs_rl_realloc.exit.i686

ntfs_rl_realloc.exit.i686:                        ; preds = %if.end26.i.i685, %do.end24.i.ntfs_rl_realloc.exit.i686_crit_edge
  %retval.0.i.i = phi ptr [ %drl, %do.end24.i.ntfs_rl_realloc.exit.i686_crit_edge ], [ %retval.0.i.i.i.i678, %if.end26.i.i685 ]
  %cmp.i99.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99.i, label %ntfs_rl_realloc.exit.i686.if.end217_crit_edge, label %if.end28.i

ntfs_rl_realloc.exit.i686.if.end217_crit_edge:    ; preds = %ntfs_rl_realloc.exit.i686
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end217

if.end28.i:                                       ; preds = %ntfs_rl_realloc.exit.i686
  %add29.i = add i32 %di.0.lcssa, 1
  %add30.i = add i32 %ss.0, %add29.i
  %sub.i687 = sub i32 %inc120, %di.0.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %add30.i, i32 %di.0.lcssa)
  %cmp.not.i.i688 = icmp ne i32 %add30.i, %di.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i687)
  %cmp1.i.i689 = icmp sgt i32 %sub.i687, 0
  %spec.select.i.i690 = and i1 %cmp1.i.i689, %cmp.not.i.i688
  br i1 %spec.select.i.i690, label %if.then.i.i693, label %if.end28.i.ntfs_rl_mm.exit.i694_crit_edge, !prof !81

if.end28.i.ntfs_rl_mm.exit.i694_crit_edge:        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_mm.exit.i694

if.then.i.i693:                                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i691 = getelementptr %struct.runlist_element, ptr %retval.0.i.i, i32 %add30.i
  %add.ptr3.i.i692 = getelementptr %struct.runlist_element, ptr %retval.0.i.i, i32 %di.0.lcssa
  %mul.i100.i = mul i32 %sub.i687, 24
  %196 = call ptr @memmove(ptr %add.ptr.i.i691, ptr %add.ptr3.i.i692, i32 %mul.i100.i)
  br label %ntfs_rl_mm.exit.i694

ntfs_rl_mm.exit.i694:                             ; preds = %if.then.i.i693, %if.end28.i.ntfs_rl_mm.exit.i694_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ss.0)
  %cmp.i102.i = icmp sgt i32 %ss.0, 0
  br i1 %cmp.i102.i, label %if.then.i105.i, label %ntfs_rl_mm.exit.i694.ntfs_rl_mc.exit.i698_crit_edge, !prof !81

ntfs_rl_mm.exit.i694.ntfs_rl_mc.exit.i698_crit_edge: ; preds = %ntfs_rl_mm.exit.i694
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_mc.exit.i698

if.then.i105.i:                                   ; preds = %ntfs_rl_mm.exit.i694
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i103.i = getelementptr %struct.runlist_element, ptr %retval.0.i.i, i32 %add29.i
  %mul.i104.i = mul i32 %ss.0, 24
  %197 = call ptr @memcpy(ptr %add.ptr.i103.i, ptr %arrayidx48.le, i32 %mul.i104.i)
  br label %ntfs_rl_mc.exit.i698

ntfs_rl_mc.exit.i698:                             ; preds = %if.then.i105.i, %ntfs_rl_mm.exit.i694.ntfs_rl_mc.exit.i698_crit_edge
  %arrayidx.i695 = getelementptr %struct.runlist_element, ptr %retval.0.i.i, i32 %add29.i
  %198 = ptrtoint ptr %arrayidx.i695 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %arrayidx.i695, align 8
  %arrayidx33.i = getelementptr %struct.runlist_element, ptr %retval.0.i.i, i32 %di.0.lcssa
  %200 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %arrayidx33.i, align 8
  %sub35.i = sub i64 %199, %201
  %length.i696 = getelementptr %struct.runlist_element, ptr %retval.0.i.i, i32 %di.0.lcssa, i32 2
  %202 = ptrtoint ptr %length.i696 to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %sub35.i, ptr %length.i696, align 8
  %add37.i = add i32 %ss.0, %di.0.lcssa
  %arrayidx38.i = getelementptr %struct.runlist_element, ptr %retval.0.i.i, i32 %add37.i
  %203 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %arrayidx38.i, align 8
  %length42.i = getelementptr %struct.runlist_element, ptr %retval.0.i.i, i32 %add37.i, i32 2
  %205 = ptrtoint ptr %length42.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %length42.i, align 8
  %add43.i = add i64 %206, %204
  %add45.i = add i32 %add37.i, 1
  %arrayidx46.i = getelementptr %struct.runlist_element, ptr %retval.0.i.i, i32 %add45.i
  %207 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 %add43.i, ptr %arrayidx46.i, align 8
  %add49.i697 = add i32 %add37.i, 2
  %arrayidx50.i = getelementptr %struct.runlist_element, ptr %retval.0.i.i, i32 %add49.i697
  %208 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %arrayidx50.i, align 8
  %sub56.i = sub i64 %209, %add43.i
  %length60.i = getelementptr %struct.runlist_element, ptr %retval.0.i.i, i32 %add45.i, i32 2
  %210 = ptrtoint ptr %length60.i to i32
  call void @__asan_store8_noabort(i32 %210)
  store i64 %sub56.i, ptr %length60.i, align 8
  br label %if.end217

if.end217:                                        ; preds = %ntfs_rl_mc.exit.i698, %ntfs_rl_realloc.exit.i686.if.end217_crit_edge, %if.then68.i, %ntfs_rl_mc.exit.i655.if.end217_crit_edge, %ntfs_rl_realloc.exit.i640.if.end217_crit_edge, %if.end135.i, %if.end104.i.if.end217_crit_edge, %ntfs_rl_realloc.exit.i554.if.end217_crit_edge, %if.then87.i, %land.lhs.true.i.if.end217_crit_edge, %ntfs_rl_mc.exit.i.if.end217_crit_edge, %ntfs_rl_realloc.exit.i.if.end217_crit_edge
  %drl.addr.0 = phi ptr [ %retval.0.i182.i, %ntfs_rl_realloc.exit.i.if.end217_crit_edge ], [ %dst.addr.0.i, %if.then87.i ], [ %dst.addr.0.i, %land.lhs.true.i.if.end217_crit_edge ], [ %dst.addr.0.i, %ntfs_rl_mc.exit.i.if.end217_crit_edge ], [ %retval.0.i218.i, %if.end104.i.if.end217_crit_edge ], [ %retval.0.i218.i, %if.end135.i ], [ %retval.0.i218.i, %ntfs_rl_realloc.exit.i554.if.end217_crit_edge ], [ %retval.0.i124.i, %ntfs_rl_mc.exit.i655.if.end217_crit_edge ], [ %retval.0.i124.i, %if.then68.i ], [ %retval.0.i124.i, %ntfs_rl_realloc.exit.i640.if.end217_crit_edge ], [ %retval.0.i.i, %ntfs_rl_realloc.exit.i686.if.end217_crit_edge ], [ %retval.0.i.i, %ntfs_rl_mc.exit.i698 ]
  %cmp.i699 = icmp ugt ptr %drl.addr.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i699, label %if.end217.cleanup295_crit_edge, label %if.end220

if.end217.cleanup295_crit_edge:                   ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup295

if.end220:                                        ; preds = %if.end217
  tail call void @kvfree(ptr noundef nonnull %srl) #6
  br i1 %tobool187.not, label %if.end220.finished_crit_edge, label %if.then222

if.end220.finished_crit_edge:                     ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #8
  br label %finished

if.then222:                                       ; preds = %if.end220
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 648, ptr noundef nonnull @__func__.ntfs_runlists_merge, ptr noundef nonnull @.str.5) #6
  br label %for.cond223

for.cond223:                                      ; preds = %for.cond223.for.cond223_crit_edge, %if.then222
  %ds.0 = phi i32 [ %dend.1, %if.then222 ], [ %inc229, %for.cond223.for.cond223_crit_edge ]
  %length225 = getelementptr %struct.runlist_element, ptr %drl.addr.0, i32 %ds.0, i32 2
  %211 = ptrtoint ptr %length225 to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %length225, align 8
  %tobool226.not = icmp eq i64 %212, 0
  %inc229 = add i32 %ds.0, 1
  br i1 %tobool226.not, label %for.end230, label %for.cond223.for.cond223_crit_edge

for.cond223.for.cond223_crit_edge:                ; preds = %for.cond223
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond223

for.end230:                                       ; preds = %for.cond223
  %arrayidx224 = getelementptr %struct.runlist_element, ptr %drl.addr.0, i32 %ds.0
  %213 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %arrayidx224, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %214, i64 %marker_vcn.0)
  %cmp233.not = icmp sgt i64 %214, %marker_vcn.0
  br i1 %cmp233.not, label %for.end230.finished_crit_edge, label %if.then234

for.end230.finished_crit_edge:                    ; preds = %for.end230
  call void @__sanitizer_cov_trace_pc() #8
  br label %finished

if.then234:                                       ; preds = %for.end230
  call void @__sanitizer_cov_trace_cmp8(i64 %214, i64 %marker_vcn.0)
  %cmp237 = icmp eq i64 %214, %marker_vcn.0
  %lcn240 = getelementptr %struct.runlist_element, ptr %drl.addr.0, i32 %ds.0, i32 1
  %215 = ptrtoint ptr %lcn240 to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %lcn240, align 8
  br i1 %cmp237, label %cleanup.thread, label %if.end243

cleanup.thread:                                   ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 659, ptr noundef nonnull @__func__.ntfs_runlists_merge, ptr noundef nonnull @.str.6, i64 noundef %216) #6
  %217 = ptrtoint ptr %lcn240 to i32
  call void @__asan_store8_noabort(i32 %217)
  store i64 -3, ptr %lcn240, align 8
  br label %finished

if.end243:                                        ; preds = %if.then234
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %216)
  %cmp246 = icmp eq i64 %216, -3
  %dec248 = sext i1 %cmp246 to i32
  %spec.select483 = add i32 %ds.0, %dec248
  %spec.select484 = zext i1 %cmp246 to i32
  %lcn251 = getelementptr %struct.runlist_element, ptr %drl.addr.0, i32 %spec.select483, i32 1
  %218 = ptrtoint ptr %lcn251 to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %lcn251, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %219)
  %cmp252.not = icmp eq i64 %219, -2
  br i1 %cmp252.not, label %if.end243.if.end275_crit_edge, label %if.then253

if.end243.if.end275_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end275

if.then253:                                       ; preds = %if.end243
  br i1 %cmp246, label %if.end258.thread, label %if.then261

if.end258.thread:                                 ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #8
  %inc259722 = add i32 %spec.select483, 1
  br label %if.end271

if.then261:                                       ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #8
  %add256 = add i32 %spec.select483, 2
  %call257 = tail call fastcc ptr @ntfs_rl_realloc_nofail(ptr noundef %drl.addr.0, i32 noundef %spec.select483, i32 noundef %add256)
  %inc259 = add i32 %spec.select483, 1
  %arrayidx263 = getelementptr %struct.runlist_element, ptr %call257, i32 %spec.select483
  %220 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %arrayidx263, align 8
  %length267 = getelementptr %struct.runlist_element, ptr %call257, i32 %spec.select483, i32 2
  %222 = ptrtoint ptr %length267 to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %length267, align 8
  %add268 = add i64 %223, %221
  %arrayidx269 = getelementptr %struct.runlist_element, ptr %call257, i32 %inc259
  %224 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %add268, ptr %arrayidx269, align 8
  br label %if.end271

if.end271:                                        ; preds = %if.then261, %if.end258.thread
  %inc259726 = phi i32 [ %inc259722, %if.end258.thread ], [ %inc259, %if.then261 ]
  %slots.1725 = phi i32 [ 0, %if.end258.thread ], [ 1, %if.then261 ]
  %drl.addr.1724 = phi ptr [ %drl.addr.0, %if.end258.thread ], [ %call257, %if.then261 ]
  %lcn273 = getelementptr %struct.runlist_element, ptr %drl.addr.1724, i32 %inc259726, i32 1
  %225 = ptrtoint ptr %lcn273 to i32
  call void @__asan_store8_noabort(i32 %225)
  store i64 -2, ptr %lcn273, align 8
  br label %if.end275

if.end275:                                        ; preds = %if.end271, %if.end243.if.end275_crit_edge
  %drl.addr.2 = phi ptr [ %drl.addr.1724, %if.end271 ], [ %drl.addr.0, %if.end243.if.end275_crit_edge ]
  %ds.2 = phi i32 [ %inc259726, %if.end271 ], [ %spec.select483, %if.end243.if.end275_crit_edge ]
  %slots.2 = phi i32 [ %slots.1725, %if.end271 ], [ %spec.select484, %if.end243.if.end275_crit_edge ]
  %arrayidx276 = getelementptr %struct.runlist_element, ptr %drl.addr.2, i32 %ds.2
  %226 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %arrayidx276, align 8
  %sub278 = sub i64 %marker_vcn.0, %227
  %length280 = getelementptr %struct.runlist_element, ptr %drl.addr.2, i32 %ds.2, i32 2
  %228 = ptrtoint ptr %length280 to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 %sub278, ptr %length280, align 8
  %inc281 = add i32 %ds.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots.2)
  %tobool282.not = icmp eq i32 %slots.2, 0
  br i1 %tobool282.not, label %if.then283, label %if.end275.cleanup_crit_edge

if.end275.cleanup_crit_edge:                      ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then283:                                       ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #8
  %add284 = add i32 %ds.2, 2
  %call285 = tail call fastcc ptr @ntfs_rl_realloc_nofail(ptr noundef %drl.addr.2, i32 noundef %inc281, i32 noundef %add284)
  br label %cleanup

cleanup:                                          ; preds = %if.then283, %if.end275.cleanup_crit_edge
  %drl.addr.3 = phi ptr [ %drl.addr.2, %if.end275.cleanup_crit_edge ], [ %call285, %if.then283 ]
  %arrayidx287 = getelementptr %struct.runlist_element, ptr %drl.addr.3, i32 %inc281
  %229 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_store8_noabort(i32 %229)
  store i64 %marker_vcn.0, ptr %arrayidx287, align 8
  %lcn290 = getelementptr %struct.runlist_element, ptr %drl.addr.3, i32 %inc281, i32 1
  %230 = ptrtoint ptr %lcn290 to i32
  call void @__asan_store8_noabort(i32 %230)
  store i64 -3, ptr %lcn290, align 8
  %length292 = getelementptr %struct.runlist_element, ptr %drl.addr.3, i32 %inc281, i32 2
  %231 = ptrtoint ptr %length292 to i32
  call void @__asan_store8_noabort(i32 %231)
  store i64 0, ptr %length292, align 8
  br label %finished

cleanup295:                                       ; preds = %if.end217.cleanup295_crit_edge, %ntfs_malloc_nofs.exit.i.i680.cleanup295_crit_edge, %if.end16.i.i.i.i675.cleanup295_crit_edge, %ntfs_malloc_nofs.exit.i.i634.cleanup295_crit_edge, %if.end16.i.i.i.i630.cleanup295_crit_edge, %ntfs_malloc_nofs.exit.i.i548.cleanup295_crit_edge, %if.end16.i.i.i.i544.cleanup295_crit_edge, %ntfs_malloc_nofs.exit.i.i.cleanup295_crit_edge, %if.end16.i.i.i.i.cleanup295_crit_edge
  %drl.addr.0713 = phi ptr [ %drl.addr.0, %if.end217.cleanup295_crit_edge ], [ inttoptr (i32 -12 to ptr), %ntfs_malloc_nofs.exit.i.i.cleanup295_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end16.i.i.i.i.cleanup295_crit_edge ], [ inttoptr (i32 -12 to ptr), %ntfs_malloc_nofs.exit.i.i548.cleanup295_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end16.i.i.i.i544.cleanup295_crit_edge ], [ inttoptr (i32 -12 to ptr), %ntfs_malloc_nofs.exit.i.i634.cleanup295_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end16.i.i.i.i630.cleanup295_crit_edge ], [ inttoptr (i32 -12 to ptr), %ntfs_malloc_nofs.exit.i.i680.cleanup295_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end16.i.i.i.i675.cleanup295_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_runlists_merge, ptr noundef null, ptr noundef nonnull @.str.4) #6
  br label %cleanup301

finished:                                         ; preds = %cleanup, %cleanup.thread, %for.end230.finished_crit_edge, %if.end220.finished_crit_edge, %ntfs_rl_mm.exit, %if.then17.finished_crit_edge
  %drl.addr.7 = phi ptr [ %call35, %ntfs_rl_mm.exit ], [ %srl, %if.then17.finished_crit_edge ], [ %drl.addr.0, %if.end220.finished_crit_edge ], [ %drl.addr.0, %for.end230.finished_crit_edge ], [ %drl.addr.3, %cleanup ], [ %drl.addr.0, %cleanup.thread ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 702, ptr noundef nonnull @__func__.ntfs_runlists_merge, ptr noundef nonnull @.str.7) #6
  tail call void @ntfs_debug_dump_runlist(ptr noundef %drl.addr.7) #6
  br label %cleanup301

cleanup301:                                       ; preds = %finished, %cleanup295, %if.then103, %for.end.cleanup301_crit_edge, %if.end.cleanup301_crit_edge, %entry.cleanup301_crit_edge
  %retval.1 = phi ptr [ %drl.addr.7, %finished ], [ inttoptr (i32 -34 to ptr), %if.then103 ], [ %drl.addr.0713, %cleanup295 ], [ %drl, %entry.cleanup301_crit_edge ], [ %call35, %for.end.cleanup301_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup301_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_debug_dump_runlist(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ntfs_rl_realloc(ptr noundef %rl, i32 noundef %old_size, i32 noundef %new_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %old_size, 24
  %add = add i32 %mul, 4095
  %and = and i32 %add, -4096
  %mul1 = mul i32 %new_size, 24
  %add2 = add i32 %mul1, 4095
  %and3 = and i32 %add2, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and3)
  %cmp = icmp eq i32 %and, %and3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %and3)
  %cmp.i.i = icmp ult i32 %and3, 4097
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end16.i.i, !prof !81

do.body.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool2.not.i.i = icmp eq i32 %and3, 0
  br i1 %tobool2.not.i.i, label %do.body12.i.i, label %do.end15.i.i, !prof !80

do.body12.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end15.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3136, i32 noundef 4096) #9
  br label %ntfs_malloc_nofs.exit

if.end16.i.i:                                     ; preds = %if.end
  %shr.i.i = lshr i32 %add2, 12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %1 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %1)
  %cmp18.i.i = icmp ult i32 %shr.i.i, %1
  br i1 %cmp18.i.i, label %if.then25.i.i, label %if.end16.i.i.cleanup_crit_edge, !prof !81

if.end16.i.i.cleanup_crit_edge:                   ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i.i = tail call noalias ptr @__vmalloc(i32 noundef %and3, i32 noundef 3138) #10
  br label %ntfs_malloc_nofs.exit

ntfs_malloc_nofs.exit:                            ; preds = %if.then25.i.i, %do.end15.i.i
  %retval.0.i.i = phi ptr [ %call7.i.i.i, %do.end15.i.i ], [ %call26.i.i, %if.then25.i.i ]
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %ntfs_malloc_nofs.exit.cleanup_crit_edge, label %if.end9, !prof !80

ntfs_malloc_nofs.exit.cleanup_crit_edge:          ; preds = %ntfs_malloc_nofs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %ntfs_malloc_nofs.exit
  %cmp10.not = icmp eq ptr %rl, null
  br i1 %cmp10.not, label %if.end9.cleanup_crit_edge, label %if.then17, !prof !80

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and3)
  %cmp18 = icmp sgt i32 %and, %and3
  br i1 %cmp18, label %if.then25, label %if.then17.if.end26_crit_edge, !prof !80

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then25:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then17.if.end26_crit_edge
  %old_size.addr.0 = phi i32 [ %and3, %if.then25 ], [ %and, %if.then17.if.end26_crit_edge ]
  %2 = call ptr @memcpy(ptr %retval.0.i.i, ptr %rl, i32 %old_size.addr.0)
  tail call void @kvfree(ptr noundef nonnull %rl) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end9.cleanup_crit_edge, %ntfs_malloc_nofs.exit.cleanup_crit_edge, %if.end16.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %rl, %entry.cleanup_crit_edge ], [ %retval.0.i.i, %if.end26 ], [ %retval.0.i.i, %if.end9.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %ntfs_malloc_nofs.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end16.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ntfs_rl_realloc_nofail(ptr noundef %rl, i32 noundef %old_size, i32 noundef %new_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %old_size, 24
  %add = add i32 %mul, 4095
  %and = and i32 %add, -4096
  %mul1 = mul i32 %new_size, 24
  %add2 = add i32 %mul1, 4095
  %and3 = and i32 %add2, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and3)
  %cmp = icmp eq i32 %and, %and3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %and3)
  %cmp.i.i = icmp ult i32 %and3, 4097
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end16.i.i, !prof !81

do.body.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool2.not.i.i = icmp eq i32 %and3, 0
  br i1 %tobool2.not.i.i, label %do.body12.i.i, label %do.end15.i.i, !prof !80

do.body12.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end15.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 35904, i32 noundef 4096) #9
  br label %ntfs_malloc_nofs_nofail.exit

if.end16.i.i:                                     ; preds = %if.end
  %shr.i.i = lshr i32 %add2, 12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %1 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %1)
  %cmp18.i.i = icmp ult i32 %shr.i.i, %1
  br i1 %cmp18.i.i, label %if.then25.i.i, label %if.end16.i.i.do.body8_crit_edge, !prof !81

if.end16.i.i.do.body8_crit_edge:                  ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body8

if.then25.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i.i = tail call noalias ptr @__vmalloc(i32 noundef %and3, i32 noundef 35906) #10
  br label %ntfs_malloc_nofs_nofail.exit

ntfs_malloc_nofs_nofail.exit:                     ; preds = %if.then25.i.i, %do.end15.i.i
  %retval.0.i.i = phi ptr [ %call7.i.i.i, %do.end15.i.i ], [ %call26.i.i, %if.then25.i.i ]
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %ntfs_malloc_nofs_nofail.exit.do.body8_crit_edge, label %do.end14, !prof !80

ntfs_malloc_nofs_nofail.exit.do.body8_crit_edge:  ; preds = %ntfs_malloc_nofs_nofail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body8

do.body8:                                         ; preds = %ntfs_malloc_nofs_nofail.exit.do.body8_crit_edge, %if.end16.i.i.do.body8_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #6, !srcloc !90
  unreachable

do.end14:                                         ; preds = %ntfs_malloc_nofs_nofail.exit
  %cmp15.not = icmp eq ptr %rl, null
  br i1 %cmp15.not, label %do.end14.cleanup_crit_edge, label %if.then22, !prof !80

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and3)
  %cmp23 = icmp sgt i32 %and, %and3
  br i1 %cmp23, label %if.then30, label %if.then22.if.end31_crit_edge, !prof !80

if.then22.if.end31_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then30:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then22.if.end31_crit_edge
  %old_size.addr.0 = phi i32 [ %and3, %if.then30 ], [ %and, %if.then22.if.end31_crit_edge ]
  %2 = call ptr @memcpy(ptr %retval.0.i.i, ptr %rl, i32 %old_size.addr.0)
  tail call void @kvfree(ptr noundef nonnull %rl) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %rl, %entry.cleanup_crit_edge ], [ %retval.0.i.i, %if.end31 ], [ %retval.0.i.i, %do.end14.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_mapping_pairs_decompress(ptr nocapture noundef readonly %vol, ptr noundef readonly %attr, ptr noundef %old_rl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %attr, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %non_resident = getelementptr inbounds %struct.ATTR_RECORD, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %non_resident to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %non_resident, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false2

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %attr, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %data, align 1
  %4 = tail call i64 @llvm.bswap.i64(i64 %3) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %lor.lhs.false2.if.then_crit_edge, label %if.end

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %5 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mapping_pairs_decompress, ptr noundef %6, ptr noundef nonnull @.str.8) #6
  br label %cleanup300

if.end:                                           ; preds = %lor.lhs.false2
  %mapping_pairs_offset = getelementptr inbounds %struct.ATTR_RECORD, ptr %attr, i32 0, i32 7, i32 0, i32 2
  %7 = ptrtoint ptr %mapping_pairs_offset to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %mapping_pairs_offset, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv = zext i16 %9 to i32
  %add.ptr = getelementptr i8, ptr %attr, i32 %conv
  %length = getelementptr inbounds %struct.ATTR_RECORD, ptr %attr, i32 0, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %length, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %add.ptr8 = getelementptr i8, ptr %attr, i32 %12
  %cmp9 = icmp ult ptr %add.ptr, %attr
  %cmp11 = icmp ugt ptr %add.ptr, %add.ptr8
  %spec.select = select i1 %cmp9, i1 true, i1 %cmp11, !prof !80
  br i1 %spec.select, label %if.then15, label %if.end18, !prof !80

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mapping_pairs_decompress, ptr noundef %14, ptr noundef nonnull @.str.9) #6
  br label %cleanup300

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool19.not = icmp eq i64 %3, 0
  br i1 %tobool19.not, label %land.lhs.true, label %if.end22.thread

land.lhs.true:                                    ; preds = %if.end18
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool20.not = icmp eq i8 %16, 0
  br i1 %tobool20.not, label %land.lhs.true.cleanup300_crit_edge, label %if.end22

land.lhs.true.cleanup300_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup300

if.end22:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3136, i32 noundef 4096) #9
  %tobool24.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool24.not, label %if.end22.cleanup300_crit_edge, label %if.end22.if.end41_crit_edge, !prof !80

if.end22.if.end41_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end22.cleanup300_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup300

if.end22.thread:                                  ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i444 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3136, i32 noundef 4096) #9
  %tobool24.not445 = icmp eq ptr %call7.i.i.i444, null
  br i1 %tobool24.not445, label %if.end22.thread.cleanup300_crit_edge, label %if.then37, !prof !80

if.end22.thread.cleanup300_crit_edge:             ; preds = %if.end22.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup300

if.then37:                                        ; preds = %if.end22.thread
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call7.i.i.i444 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %call7.i.i.i444, align 8
  %lcn39 = getelementptr inbounds %struct.runlist_element, ptr %call7.i.i.i444, i32 0, i32 1
  %20 = ptrtoint ptr %lcn39 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -2, ptr %lcn39, align 8
  %length40 = getelementptr inbounds %struct.runlist_element, ptr %call7.i.i.i444, i32 0, i32 2
  %21 = ptrtoint ptr %length40 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %4, ptr %length40, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end22.if.end41_crit_edge
  %call7.i.i.i447 = phi ptr [ %call7.i.i.i444, %if.then37 ], [ %call7.i.i.i, %if.end22.if.end41_crit_edge ]
  %rlpos.0 = phi i16 [ 1, %if.then37 ], [ 0, %if.end22.if.end41_crit_edge ]
  %cmp42501 = icmp ult ptr %add.ptr, %add.ptr8
  br i1 %cmp42501, label %land.rhs.lr.ph, label %if.end41.err_out_crit_edge

if.end41.err_out_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

land.rhs.lr.ph:                                   ; preds = %if.end41
  %major_ver = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 44
  br label %land.rhs

land.rhs:                                         ; preds = %if.end194.land.rhs_crit_edge, %land.rhs.lr.ph
  %rlpos.1511 = phi i16 [ %rlpos.0, %land.rhs.lr.ph ], [ %inc195, %if.end194.land.rhs_crit_edge ]
  %rlsize.0510 = phi i32 [ 4096, %land.rhs.lr.ph ], [ %rlsize.2, %if.end194.land.rhs_crit_edge ]
  %buf.0506 = phi ptr [ %add.ptr, %land.rhs.lr.ph ], [ %add.ptr203, %if.end194.land.rhs_crit_edge ]
  %rl.0504 = phi ptr [ %call7.i.i.i447, %land.rhs.lr.ph ], [ %rl.2, %if.end194.land.rhs_crit_edge ]
  %lcn.0503 = phi i64 [ 0, %land.rhs.lr.ph ], [ %lcn.2, %if.end194.land.rhs_crit_edge ]
  %vcn.0502 = phi i64 [ %4, %land.rhs.lr.ph ], [ %add108, %if.end194.land.rhs_crit_edge ]
  %22 = ptrtoint ptr %buf.0506 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf.0506, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool45.not = icmp eq i8 %23, 0
  br i1 %tobool45.not, label %if.end213, label %while.body

while.body:                                       ; preds = %land.rhs
  %conv46 = zext i16 %rlpos.1511 to i32
  %24 = mul nuw nsw i32 %conv46, 24
  %mul = add nuw nsw i32 %24, 72
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %rlsize.0510)
  %cmp47 = icmp ugt i32 %mul, %rlsize.0510
  br i1 %cmp47, label %if.then49, label %while.body.if.end65_crit_edge

while.body.if.end65_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then49:                                        ; preds = %while.body
  %add50 = add i32 %rlsize.0510, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add50)
  %cmp.i.i = icmp ult i32 %add50, 4097
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end16.i.i, !prof !81

do.body.i.i:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add50)
  %tobool2.not.i.i = icmp eq i32 %add50, 0
  br i1 %tobool2.not.i.i, label %do.body12.i.i, label %do.end15.i.i, !prof !80

do.body12.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end15.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i443 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3136, i32 noundef 4096) #9
  br label %ntfs_malloc_nofs.exit

if.end16.i.i:                                     ; preds = %if.then49
  %shr.i.i = lshr i32 %add50, 12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %26 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %26)
  %cmp18.i.i = icmp ult i32 %shr.i.i, %26
  br i1 %cmp18.i.i, label %if.then25.i.i, label %if.end16.i.i.cleanup.thread_crit_edge, !prof !81

if.end16.i.i.cleanup.thread_crit_edge:            ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.then25.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i.i = tail call noalias ptr @__vmalloc(i32 noundef %add50, i32 noundef 3138) #10
  br label %ntfs_malloc_nofs.exit

ntfs_malloc_nofs.exit:                            ; preds = %if.then25.i.i, %do.end15.i.i
  %retval.0.i.i = phi ptr [ %call7.i.i.i443, %do.end15.i.i ], [ %call26.i.i, %if.then25.i.i ]
  %tobool52.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool52.not, label %ntfs_malloc_nofs.exit.cleanup.thread_crit_edge, label %cleanup, !prof !80

ntfs_malloc_nofs.exit.cleanup.thread_crit_edge:   ; preds = %ntfs_malloc_nofs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %ntfs_malloc_nofs.exit.cleanup.thread_crit_edge, %if.end16.i.i.cleanup.thread_crit_edge
  tail call void @kvfree(ptr noundef %rl.0504) #6
  br label %cleanup300

cleanup:                                          ; preds = %ntfs_malloc_nofs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %27 = call ptr @memcpy(ptr %retval.0.i.i, ptr %rl.0504, i32 %rlsize.0510)
  tail call void @kvfree(ptr noundef %rl.0504) #6
  br label %if.end65

if.end65:                                         ; preds = %cleanup, %while.body.if.end65_crit_edge
  %rl.2 = phi ptr [ %retval.0.i.i, %cleanup ], [ %rl.0504, %while.body.if.end65_crit_edge ]
  %rlsize.2 = phi i32 [ %add50, %cleanup ], [ %rlsize.0510, %while.body.if.end65_crit_edge ]
  %arrayidx = getelementptr %struct.runlist_element, ptr %rl.2, i32 %conv46
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %vcn.0502, ptr %arrayidx, align 8
  %29 = ptrtoint ptr %buf.0506 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %buf.0506, align 1
  %31 = and i8 %30, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool69.not = icmp eq i8 %31, 0
  br i1 %tobool69.not, label %if.end93.thread, label %if.then70

if.then70:                                        ; preds = %if.end65
  %conv71 = zext i8 %31 to i32
  %add.ptr72 = getelementptr i8, ptr %buf.0506, i32 %conv71
  %cmp73 = icmp ugt ptr %add.ptr72, %add.ptr8
  br i1 %cmp73, label %if.then70.err_out_crit_edge, label %if.end82, !prof !80

if.then70.err_out_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end82:                                         ; preds = %if.then70
  %32 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr72, align 1
  %conv85 = sext i8 %33 to i64
  %b.0492 = add nsw i8 %31, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %b.0492)
  %tobool86.not493 = icmp eq i8 %b.0492, 0
  br i1 %tobool86.not493, label %if.end82.if.end93_crit_edge, label %for.body.preheader

if.end82.if.end93_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

for.body.preheader:                               ; preds = %if.end82
  %34 = zext i8 %b.0492 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %34, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %b.0495 = phi i8 [ %b.0492, %for.body.preheader ], [ %b.0, %for.body.for.body_crit_edge ]
  %deltaxcn.0494 = phi i64 [ %conv85, %for.body.preheader ], [ %add90, %for.body.for.body_crit_edge ]
  %shl = shl i64 %deltaxcn.0494, 8
  %arrayidx88 = getelementptr i8, ptr %buf.0506, i32 %indvars.iv
  %35 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %36 to i64
  %add90 = or i64 %shl, %conv89
  %b.0 = add i8 %b.0495, -1
  %tobool86.not = icmp eq i8 %b.0, 0
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  br i1 %tobool86.not, label %for.body.if.end93_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end93_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.end93.thread:                                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mapping_pairs_decompress, ptr noundef %38, ptr noundef nonnull @.str.10) #6
  br label %err_out

if.end93:                                         ; preds = %for.body.if.end93_crit_edge, %if.end82.if.end93_crit_edge
  %deltaxcn.0.lcssa = phi i64 [ %conv85, %if.end82.if.end93_crit_edge ], [ %add90, %for.body.if.end93_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %deltaxcn.0.lcssa)
  %cmp94 = icmp slt i64 %deltaxcn.0.lcssa, 0
  br i1 %cmp94, label %if.end93.err_out_crit_edge, label %if.end104, !prof !80

if.end93.err_out_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end104:                                        ; preds = %if.end93
  %length107 = getelementptr %struct.runlist_element, ptr %rl.2, i32 %conv46, i32 2
  %39 = ptrtoint ptr %length107 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %deltaxcn.0.lcssa, ptr %length107, align 8
  %add108 = add i64 %deltaxcn.0.lcssa, %vcn.0502
  %40 = ptrtoint ptr %buf.0506 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %buf.0506, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %41)
  %tobool111.not = icmp ult i8 %41, 16
  br i1 %tobool111.not, label %if.end104.if.end194_crit_edge, label %if.else116

if.end104.if.end194_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end194

if.else116:                                       ; preds = %if.end104
  %and118 = and i8 %41, 15
  %42 = lshr i8 %41, 4
  %add123 = add nuw nsw i8 %42, %and118
  %conv125 = zext i8 %add123 to i32
  %add.ptr126 = getelementptr i8, ptr %buf.0506, i32 %conv125
  %cmp127 = icmp ugt ptr %add.ptr126, %add.ptr8
  br i1 %cmp127, label %if.else116.err_out_crit_edge, label %if.end130

if.else116.err_out_crit_edge:                     ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end130:                                        ; preds = %if.else116
  %43 = ptrtoint ptr %add.ptr126 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr126, align 1
  %conv134 = sext i8 %44 to i64
  %b.1496 = add nsw i8 %add123, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %b.1496, i8 %and118)
  %cmp138497 = icmp ugt i8 %b.1496, %and118
  br i1 %cmp138497, label %for.body140.preheader, label %if.end130.for.end148_crit_edge

if.end130.for.end148_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end148

for.body140.preheader:                            ; preds = %if.end130
  %45 = zext i8 %b.1496 to i32
  br label %for.body140

for.body140:                                      ; preds = %for.body140.for.body140_crit_edge, %for.body140.preheader
  %indvars.iv539 = phi i32 [ %45, %for.body140.preheader ], [ %indvars.iv.next540, %for.body140.for.body140_crit_edge ]
  %b.1499 = phi i8 [ %b.1496, %for.body140.preheader ], [ %b.1, %for.body140.for.body140_crit_edge ]
  %deltaxcn.2498 = phi i64 [ %conv134, %for.body140.preheader ], [ %add145, %for.body140.for.body140_crit_edge ]
  %shl141 = shl i64 %deltaxcn.2498, 8
  %arrayidx143 = getelementptr i8, ptr %buf.0506, i32 %indvars.iv539
  %46 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx143, align 1
  %conv144 = zext i8 %47 to i64
  %add145 = or i64 %shl141, %conv144
  %b.1 = add i8 %b.1499, -1
  %cmp138 = icmp ugt i8 %b.1, %and118
  %indvars.iv.next540 = add nsw i32 %indvars.iv539, -1
  br i1 %cmp138, label %for.body140.for.body140_crit_edge, label %for.body140.for.end148_crit_edge

for.body140.for.end148_crit_edge:                 ; preds = %for.body140
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end148

for.body140.for.body140_crit_edge:                ; preds = %for.body140
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body140

for.end148:                                       ; preds = %for.body140.for.end148_crit_edge, %if.end130.for.end148_crit_edge
  %deltaxcn.2.lcssa = phi i64 [ %conv134, %if.end130.for.end148_crit_edge ], [ %add145, %for.body140.for.end148_crit_edge ]
  %add149 = add i64 %deltaxcn.2.lcssa, %lcn.0503
  %48 = ptrtoint ptr %major_ver to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %major_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %49)
  %cmp151 = icmp ult i8 %49, 3
  br i1 %cmp151, label %if.then153, label %for.end148.if.end176_crit_edge

for.end148.if.end176_crit_edge:                   ; preds = %for.end148
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176

if.then153:                                       ; preds = %for.end148
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %deltaxcn.2.lcssa)
  %cmp154 = icmp eq i64 %deltaxcn.2.lcssa, -1
  br i1 %cmp154, label %if.then162, label %if.then153.if.end164_crit_edge, !prof !80

if.then153.if.end164_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164

if.then162:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mapping_pairs_decompress, ptr noundef %51, ptr noundef nonnull @.str.12) #6
  br label %if.end164

if.end164:                                        ; preds = %if.then162, %if.then153.if.end164_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %add149)
  %cmp165 = icmp eq i64 %add149, -1
  br i1 %cmp165, label %if.end176.thread, label %if.end164.if.end176_crit_edge, !prof !80

if.end164.if.end176_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176

if.end176.thread:                                 ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mapping_pairs_decompress, ptr noundef %53, ptr noundef nonnull @.str.13) #6
  br label %if.end194

if.end176:                                        ; preds = %if.end164.if.end176_crit_edge, %for.end148.if.end176_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %add149)
  %cmp177 = icmp slt i64 %add149, -1
  br i1 %cmp177, label %if.end176.err_out_crit_edge, label %if.end176.if.end194_crit_edge, !prof !80

if.end176.if.end194_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end194

if.end176.err_out_crit_edge:                      ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end194:                                        ; preds = %if.end176.if.end194_crit_edge, %if.end176.thread, %if.end104.if.end194_crit_edge
  %add149.sink = phi i64 [ -1, %if.end104.if.end194_crit_edge ], [ %add149, %if.end176.if.end194_crit_edge ], [ %add149, %if.end176.thread ]
  %lcn.2 = phi i64 [ %lcn.0503, %if.end104.if.end194_crit_edge ], [ %add149, %if.end176.if.end194_crit_edge ], [ %add149, %if.end176.thread ]
  %lcn190 = getelementptr %struct.runlist_element, ptr %rl.2, i32 %conv46, i32 1
  %54 = ptrtoint ptr %lcn190 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %add149.sink, ptr %lcn190, align 8
  %inc195 = add i16 %rlpos.1511, 1
  %55 = ptrtoint ptr %buf.0506 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %buf.0506, align 1
  %conv196 = zext i8 %56 to i32
  %and197 = and i32 %conv196, 15
  %57 = lshr i32 %conv196, 4
  %add201 = add nuw nsw i32 %57, 1
  %add202 = add nuw nsw i32 %add201, %and197
  %add.ptr203 = getelementptr i8, ptr %buf.0506, i32 %add202
  %cmp42 = icmp ult ptr %add.ptr203, %add.ptr8
  br i1 %cmp42, label %if.end194.land.rhs_crit_edge, label %if.end194.err_out_crit_edge

if.end194.err_out_crit_edge:                      ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end194.land.rhs_crit_edge:                     ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

if.end213:                                        ; preds = %land.rhs
  %highest_vcn = getelementptr inbounds %struct.ATTR_RECORD, ptr %attr, i32 0, i32 7, i32 0, i32 1
  %58 = ptrtoint ptr %highest_vcn to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %59 = load i64, ptr %highest_vcn, align 1
  %60 = tail call i64 @llvm.bswap.i64(i64 %59) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %tobool216.not = icmp eq i64 %59, 0
  %sub = add i64 %vcn.0502, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %60)
  %cmp218 = icmp ne i64 %sub, %60
  %not.tobool216.not = xor i1 %tobool216.not, true
  %61 = select i1 %not.tobool216.not, i1 %cmp218, i1 false
  br i1 %61, label %if.end213.err_out_crit_edge, label %if.end229, !prof !80

if.end213.err_out_crit_edge:                      ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end229:                                        ; preds = %if.end213
  %62 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %62, i32 8)
  %63 = load i64, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %tobool232.not = icmp eq i64 %63, 0
  br i1 %tobool232.not, label %if.then233, label %if.end229.if.end283_crit_edge

if.end229.if.end283_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end283

if.then233:                                       ; preds = %if.end229
  %allocated_size = getelementptr inbounds %struct.ATTR_RECORD, ptr %attr, i32 0, i32 7, i32 0, i32 5
  %64 = ptrtoint ptr %allocated_size to i32
  call void @__asan_loadN_noabort(i32 %64, i32 8)
  %65 = load i64, ptr %allocated_size, align 1
  %66 = tail call i64 @llvm.bswap.i64(i64 %65) #6
  %cluster_size = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 11
  %67 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cluster_size, align 8
  %conv236 = zext i32 %68 to i64
  %add237 = add i64 %66, -1
  %sub238 = add i64 %add237, %conv236
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 13
  %69 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom = zext i8 %70 to i64
  %shr240 = ashr i64 %sub238, %sh_prom
  %sub241 = add i64 %shr240, -1
  br i1 %tobool216.not, label %if.then233.if.end283_crit_edge, label %if.then243

if.then233.if.end283_crit_edge:                   ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end283

if.then243:                                       ; preds = %if.then233
  call void @__sanitizer_cov_trace_cmp8(i64 %sub241, i64 %60)
  %cmp244 = icmp sgt i64 %sub241, %60
  br i1 %cmp244, label %if.then246, label %if.else259

if.then246:                                       ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 923, ptr noundef nonnull @__func__.ntfs_mapping_pairs_decompress, ptr noundef nonnull @.str.16, i64 noundef %60, i64 noundef %sub241) #6
  %idxprom247 = zext i16 %rlpos.1511 to i32
  %arrayidx248 = getelementptr %struct.runlist_element, ptr %rl.0504, i32 %idxprom247
  %71 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %vcn.0502, ptr %arrayidx248, align 8
  %sub250 = sub i64 %sub241, %60
  %length253 = getelementptr %struct.runlist_element, ptr %rl.0504, i32 %idxprom247, i32 2
  %72 = ptrtoint ptr %length253 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %sub250, ptr %length253, align 8
  %add254 = add i64 %sub250, %vcn.0502
  %lcn257 = getelementptr %struct.runlist_element, ptr %rl.0504, i32 %idxprom247, i32 1
  %73 = ptrtoint ptr %lcn257 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 -2, ptr %lcn257, align 8
  %inc258 = add i16 %rlpos.1511, 1
  br label %if.end283

if.else259:                                       ; preds = %if.then243
  call void @__sanitizer_cov_trace_cmp8(i64 %sub241, i64 %60)
  %cmp260 = icmp slt i64 %sub241, %60
  br i1 %cmp260, label %cleanup276, label %if.else259.if.end283_crit_edge, !prof !80

if.else259.if.end283_crit_edge:                   ; preds = %if.else259
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end283

cleanup276:                                       ; preds = %if.else259
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mapping_pairs_decompress, ptr noundef %75, ptr noundef nonnull @.str.17, i64 noundef %60, i64 noundef %sub241) #6
  br label %err_out

if.end283:                                        ; preds = %if.else259.if.end283_crit_edge, %if.then246, %if.then233.if.end283_crit_edge, %if.end229.if.end283_crit_edge
  %rlpos.2.sink = phi i16 [ %inc258, %if.then246 ], [ %rlpos.1511, %if.else259.if.end283_crit_edge ], [ %rlpos.1511, %if.then233.if.end283_crit_edge ], [ %rlpos.1511, %if.end229.if.end283_crit_edge ]
  %.sink = phi i64 [ -3, %if.then246 ], [ -3, %if.else259.if.end283_crit_edge ], [ -3, %if.then233.if.end283_crit_edge ], [ -2, %if.end229.if.end283_crit_edge ]
  %vcn.3 = phi i64 [ %add254, %if.then246 ], [ %vcn.0502, %if.else259.if.end283_crit_edge ], [ %vcn.0502, %if.then233.if.end283_crit_edge ], [ %vcn.0502, %if.end229.if.end283_crit_edge ]
  %idxprom273 = zext i16 %rlpos.2.sink to i32
  %lcn275 = getelementptr %struct.runlist_element, ptr %rl.0504, i32 %idxprom273, i32 1
  %76 = ptrtoint ptr %lcn275 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %.sink, ptr %lcn275, align 8
  %arrayidx285 = getelementptr %struct.runlist_element, ptr %rl.0504, i32 %idxprom273
  %77 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %vcn.3, ptr %arrayidx285, align 8
  %length289 = getelementptr %struct.runlist_element, ptr %rl.0504, i32 %idxprom273, i32 2
  %78 = ptrtoint ptr %length289 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 0, ptr %length289, align 8
  %tobool290.not = icmp eq ptr %old_rl, null
  br i1 %tobool290.not, label %if.then291, label %if.end292

if.then291:                                       ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 948, ptr noundef nonnull @__func__.ntfs_mapping_pairs_decompress, ptr noundef nonnull @.str.18) #6
  tail call void @ntfs_debug_dump_runlist(ptr noundef %rl.0504) #6
  br label %cleanup300

if.end292:                                        ; preds = %if.end283
  %call293 = tail call ptr @ntfs_runlists_merge(ptr noundef nonnull %old_rl, ptr noundef %rl.0504)
  %cmp.i = icmp ugt ptr %call293, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end296, label %if.end292.cleanup300_crit_edge

if.end292.cleanup300_crit_edge:                   ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup300

if.end296:                                        ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kvfree(ptr noundef %rl.0504) #6
  %79 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mapping_pairs_decompress, ptr noundef %80, ptr noundef nonnull @.str.19) #6
  br label %cleanup300

err_out:                                          ; preds = %cleanup276, %if.end213.err_out_crit_edge, %if.end194.err_out_crit_edge, %if.end176.err_out_crit_edge, %if.else116.err_out_crit_edge, %if.end93.err_out_crit_edge, %if.end93.thread, %if.then70.err_out_crit_edge, %if.end41.err_out_crit_edge
  %.str.14.sink = phi ptr [ @.str.11, %if.end93.thread ], [ @.str.15, %cleanup276 ], [ @.str.15, %if.end213.err_out_crit_edge ], [ @.str.9, %if.end41.err_out_crit_edge ], [ @.str.11, %if.end93.err_out_crit_edge ], [ @.str.14, %if.end176.err_out_crit_edge ], [ @.str.9, %if.then70.err_out_crit_edge ], [ @.str.9, %if.end194.err_out_crit_edge ], [ @.str.9, %if.else116.err_out_crit_edge ]
  %rl.4 = phi ptr [ %rl.2, %if.end93.thread ], [ %rl.0504, %cleanup276 ], [ %rl.0504, %if.end213.err_out_crit_edge ], [ %call7.i.i.i447, %if.end41.err_out_crit_edge ], [ %rl.2, %if.end93.err_out_crit_edge ], [ %rl.2, %if.end176.err_out_crit_edge ], [ %rl.2, %if.then70.err_out_crit_edge ], [ %rl.2, %if.end194.err_out_crit_edge ], [ %rl.2, %if.else116.err_out_crit_edge ]
  %81 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mapping_pairs_decompress, ptr noundef %82, ptr noundef nonnull %.str.14.sink) #6
  tail call void @kvfree(ptr noundef %rl.4) #6
  br label %cleanup300

cleanup300:                                       ; preds = %err_out, %if.end296, %if.end292.cleanup300_crit_edge, %if.then291, %cleanup.thread, %if.end22.thread.cleanup300_crit_edge, %if.end22.cleanup300_crit_edge, %land.lhs.true.cleanup300_crit_edge, %if.then15, %if.then
  %retval.3 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then ], [ inttoptr (i32 -5 to ptr), %if.then15 ], [ inttoptr (i32 -5 to ptr), %err_out ], [ %call293, %if.end296 ], [ %rl.0504, %if.then291 ], [ %old_rl, %land.lhs.true.cleanup300_crit_edge ], [ %call293, %if.end292.cleanup300_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end22.cleanup300_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end22.thread.cleanup300_crit_edge ], [ inttoptr (i32 -12 to ptr), %cleanup.thread ]
  ret ptr %retval.3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ntfs_rl_vcn_to_lcn(ptr noundef readonly %rl, i64 noundef %vcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %vcn)
  %cmp = icmp slt i64 %vcn, 0
  br i1 %cmp, label %do.body2, label %do.end7, !prof !80

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 994, 0\0A.popsection", ""() #6, !srcloc !91
  unreachable

do.end7:                                          ; preds = %entry
  %tobool8.not = icmp eq ptr %rl, null
  br i1 %tobool8.not, label %do.end7.cleanup_crit_edge, label %if.end18, !prof !80

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %do.end7
  %0 = ptrtoint ptr %rl to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rl, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %vcn)
  %cmp20 = icmp sgt i64 %1, %vcn
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end18.for.cond_crit_edge, !prof !80

if.end18.for.cond_crit_edge:                      ; preds = %if.end18
  br label %for.cond

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end18.for.cond_crit_edge
  %i.0 = phi i32 [ %add, %for.body.for.cond_crit_edge ], [ 0, %if.end18.for.cond_crit_edge ]
  %length = getelementptr %struct.runlist_element, ptr %rl, i32 %i.0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool30.not = icmp eq i64 %3, 0
  br i1 %tobool30.not, label %for.end, label %for.body, !prof !80

for.body:                                         ; preds = %for.cond
  %add = add i32 %i.0, 1
  %arrayidx37 = getelementptr %struct.runlist_element, ptr %rl, i32 %add
  %4 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx37, align 8
  %cmp39 = icmp sgt i64 %5, %vcn
  br i1 %cmp39, label %if.then46, label %for.body.for.cond_crit_edge, !prof !80

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then46:                                        ; preds = %for.body
  %lcn = getelementptr %struct.runlist_element, ptr %rl, i32 %i.0, i32 1
  %6 = ptrtoint ptr %lcn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lcn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %7)
  %cmp48 = icmp sgt i64 %7, -1
  br i1 %cmp48, label %if.then55, label %if.then46.cleanup_crit_edge, !prof !81

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then55:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx29.le = getelementptr %struct.runlist_element, ptr %rl, i32 %i.0
  %8 = ptrtoint ptr %arrayidx29.le to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx29.le, align 8
  %sub = add i64 %7, %vcn
  %add60 = sub i64 %sub, %9
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %lcn66 = getelementptr %struct.runlist_element, ptr %rl, i32 %i.0, i32 1
  %10 = ptrtoint ptr %lcn66 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %lcn66, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp67 = icmp slt i64 %11, 0
  %. = select i1 %cmp67, i64 %11, i64 -3, !prof !81
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then55, %if.then46.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i64 [ %add60, %if.then55 ], [ -2, %do.end7.cleanup_crit_edge ], [ -3, %if.end18.cleanup_crit_edge ], [ %7, %if.then46.cleanup_crit_edge ], [ %., %for.end ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_rl_find_vcn_nolock(ptr noundef readonly %rl, i64 noundef %vcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %vcn)
  %cmp = icmp slt i64 %vcn, 0
  br i1 %cmp, label %do.body2, label %do.end5, !prof !80

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1041, 0\0A.popsection", ""() #6, !srcloc !92
  unreachable

do.end5:                                          ; preds = %entry
  %tobool6.not = icmp eq ptr %rl, null
  br i1 %tobool6.not, label %do.end5.return_crit_edge, label %lor.rhs, !prof !80

do.end5.return_crit_edge:                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.rhs:                                          ; preds = %do.end5
  %0 = ptrtoint ptr %rl to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rl, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %vcn)
  %cmp8 = icmp sgt i64 %1, %vcn
  br i1 %cmp8, label %lor.rhs.return_crit_edge, label %lor.rhs.while.cond_crit_edge, !prof !80

lor.rhs.while.cond_crit_edge:                     ; preds = %lor.rhs
  br label %while.cond

lor.rhs.return_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %lor.rhs.while.cond_crit_edge
  %rl.addr.0 = phi ptr [ %arrayidx24, %while.body.while.cond_crit_edge ], [ %rl, %lor.rhs.while.cond_crit_edge ]
  %length = getelementptr inbounds %struct.runlist_element, ptr %rl.addr.0, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool17.not = icmp eq i64 %3, 0
  br i1 %tobool17.not, label %while.end, label %while.body, !prof !80

while.body:                                       ; preds = %while.cond
  %arrayidx24 = getelementptr %struct.runlist_element, ptr %rl.addr.0, i32 1
  %4 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx24, align 8
  %cmp26 = icmp sgt i64 %5, %vcn
  br i1 %cmp26, label %if.then33, label %while.body.while.cond_crit_edge, !prof !80

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.then33:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %lcn = getelementptr inbounds %struct.runlist_element, ptr %rl.addr.0, i32 0, i32 1
  %6 = ptrtoint ptr %lcn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lcn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %7)
  %cmp34 = icmp sgt i64 %7, -2
  %rl.addr.0. = select i1 %cmp34, ptr %rl.addr.0, ptr null, !prof !81
  br label %return

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %lcn44 = getelementptr inbounds %struct.runlist_element, ptr %rl.addr.0, i32 0, i32 1
  %8 = ptrtoint ptr %lcn44 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %lcn44, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %9)
  %cmp45 = icmp eq i64 %9, -3
  %rl.addr.0.64 = select i1 %cmp45, ptr %rl.addr.0, ptr null, !prof !81
  br label %return

return:                                           ; preds = %while.end, %if.then33, %lor.rhs.return_crit_edge, %do.end5.return_crit_edge
  %retval.0 = phi ptr [ null, %lor.rhs.return_crit_edge ], [ %rl.addr.0., %if.then33 ], [ %rl.addr.0.64, %while.end ], [ null, %do.end5.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_get_size_for_mapping_pairs(ptr nocapture noundef readonly %vol, ptr noundef readonly %rl, i64 noundef %first_vcn, i64 noundef %last_vcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %first_vcn)
  %cmp = icmp slt i64 %first_vcn, 0
  br i1 %cmp, label %do.body2, label %do.body8, !prof !80

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1125, 0\0A.popsection", ""() #6, !srcloc !93
  unreachable

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %last_vcn)
  %cmp9 = icmp slt i64 %last_vcn, -1
  br i1 %cmp9, label %do.body17, label %do.body26, !prof !80

do.body17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1126, 0\0A.popsection", ""() #6, !srcloc !94
  unreachable

do.body26:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %last_vcn)
  %cmp27 = icmp sgt i64 %last_vcn, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %first_vcn, i64 %last_vcn)
  %cmp28 = icmp sgt i64 %first_vcn, %last_vcn
  %spec.select = and i1 %cmp27, %cmp28
  br i1 %spec.select, label %do.body36, label %do.end44, !prof !80

do.body36:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1127, 0\0A.popsection", ""() #6, !srcloc !95
  unreachable

do.end44:                                         ; preds = %do.body26
  %tobool45.not = icmp eq ptr %rl, null
  br i1 %tobool45.not, label %do.body47, label %do.end44.while.cond_crit_edge

do.end44.while.cond_crit_edge:                    ; preds = %do.end44
  br label %while.cond

do.body47:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %first_vcn)
  %tobool48.not = icmp eq i64 %first_vcn, 0
  br i1 %tobool48.not, label %do.body65, label %do.body56, !prof !81

do.body56:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1129, 0\0A.popsection", ""() #6, !srcloc !96
  unreachable

do.body65:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %last_vcn)
  %cmp66 = icmp sgt i64 %last_vcn, 0
  br i1 %cmp66, label %do.body74, label %do.body65.cleanup272_crit_edge, !prof !80

do.body65.cleanup272_crit_edge:                   ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup272

do.body74:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1130, 0\0A.popsection", ""() #6, !srcloc !97
  unreachable

while.cond:                                       ; preds = %land.rhs85.while.cond_crit_edge, %do.end44.while.cond_crit_edge
  %rl.addr.0 = phi ptr [ %arrayidx, %land.rhs85.while.cond_crit_edge ], [ %rl, %do.end44.while.cond_crit_edge ]
  %length = getelementptr inbounds %struct.runlist_element, ptr %rl.addr.0, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool84.not = icmp eq i64 %1, 0
  br i1 %tobool84.not, label %land.lhs.true, label %land.rhs85

land.rhs85:                                       ; preds = %while.cond
  %arrayidx = getelementptr %struct.runlist_element, ptr %rl.addr.0, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %cmp86.not = icmp sgt i64 %3, %first_vcn
  br i1 %cmp86.not, label %land.rhs85.lor.rhs_crit_edge, label %land.rhs85.while.cond_crit_edge

land.rhs85.while.cond_crit_edge:                  ; preds = %land.rhs85
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

land.rhs85.lor.rhs_crit_edge:                     ; preds = %land.rhs85
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %while.cond
  %4 = ptrtoint ptr %rl.addr.0 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rl.addr.0, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %first_vcn)
  %cmp91 = icmp slt i64 %5, %first_vcn
  br i1 %cmp91, label %land.lhs.true.cleanup272_crit_edge, label %land.lhs.true.lor.rhs_crit_edge, !prof !80

land.lhs.true.lor.rhs_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true.cleanup272_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup272

lor.rhs:                                          ; preds = %land.lhs.true.lor.rhs_crit_edge, %land.rhs85.lor.rhs_crit_edge
  %6 = ptrtoint ptr %rl.addr.0 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rl.addr.0, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %first_vcn)
  %cmp93 = icmp sgt i64 %7, %first_vcn
  br i1 %cmp93, label %lor.rhs.cleanup272_crit_edge, label %if.end101, !prof !80

lor.rhs.cleanup272_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup272

if.end101:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %first_vcn)
  %cmp103 = icmp slt i64 %7, %first_vcn
  br i1 %cmp103, label %if.then104, label %if.end101.if.end181_crit_edge

if.end101.if.end181_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end181

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp107 = icmp slt i64 %1, 0
  br i1 %cmp107, label %if.then104.err_out_crit_edge, label %lor.rhs108, !prof !80

if.then104.err_out_crit_edge:                     ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

lor.rhs108:                                       ; preds = %if.then104
  %lcn = getelementptr inbounds %struct.runlist_element, ptr %rl.addr.0, i32 0, i32 1
  %8 = ptrtoint ptr %lcn to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %lcn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %9)
  %cmp109 = icmp slt i64 %9, -1
  br i1 %cmp109, label %lor.rhs108.err_out_crit_edge, label %if.end118, !prof !80

lor.rhs108.err_out_crit_edge:                     ; preds = %lor.rhs108
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end118:                                        ; preds = %lor.rhs108
  br i1 %cmp27, label %land.end124, label %if.end118.if.end144_crit_edge

if.end118.if.end144_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

land.end124:                                      ; preds = %if.end118
  %arrayidx121 = getelementptr %struct.runlist_element, ptr %rl.addr.0, i32 1
  %10 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx121, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %last_vcn)
  %cmp123 = icmp sgt i64 %11, %last_vcn
  br i1 %cmp123, label %if.then131, label %land.end124.if.end144_crit_edge, !prof !80

land.end124.if.end144_crit_edge:                  ; preds = %land.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.then131:                                       ; preds = %land.end124
  %add = add nuw nsw i64 %last_vcn, 1
  %12 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx121, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %add)
  %cmp134 = icmp sgt i64 %13, %add
  br i1 %cmp134, label %if.then141, label %if.then131.if.end144_crit_edge, !prof !80

if.then131.if.end144_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.then141:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i64 %add, %7
  br label %if.end144

if.end144:                                        ; preds = %if.then141, %if.then131.if.end144_crit_edge, %land.end124.if.end144_crit_edge, %if.end118.if.end144_crit_edge
  %14 = phi i1 [ false, %land.end124.if.end144_crit_edge ], [ true, %if.then141 ], [ true, %if.then131.if.end144_crit_edge ], [ false, %if.end118.if.end144_crit_edge ]
  %length105.1 = phi i64 [ %1, %land.end124.if.end144_crit_edge ], [ %sub, %if.then141 ], [ %1, %if.then131.if.end144_crit_edge ], [ %1, %if.end118.if.end144_crit_edge ]
  %sub146 = sub i64 %first_vcn, %7
  %sub147 = sub i64 %length105.1, %sub146
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end144
  %l.0.i = phi i64 [ %sub147, %if.end144 ], [ %shr.i, %do.body.i.do.body.i_crit_edge ]
  %i.0.i = phi i32 [ 0, %if.end144 ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %inc.i = add i32 %i.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %l.0.i)
  %cmp.not.i = icmp ult i64 %l.0.i, 256
  %shr.i = ashr i64 %l.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %shr.i)
  %cmp1.not.i = icmp eq i64 %shr.i, -1
  %or.cond.i = or i1 %cmp.not.i, %cmp1.not.i
  br i1 %or.cond.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %mul.i = shl i32 %i.0.i, 3
  %sh_prom.i = zext i32 %mul.i to i64
  %shr2.i = ashr i64 %sub147, %sh_prom.i
  %conv.i = trunc i64 %shr2.i to i8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub147)
  %cmp3.i = icmp slt i64 %sub147, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv.i)
  %cmp6.i = icmp sgt i8 %conv.i, -1
  %or.cond24.i = select i1 %cmp3.i, i1 %cmp6.i, i1 false
  br i1 %or.cond24.i, label %do.end.i.if.then.i_crit_edge, label %lor.lhs.false.i

do.end.i.if.then.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub147)
  %cmp8.i = icmp sgt i64 %sub147, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %cmp12.i = icmp slt i8 %conv.i, 0
  %or.cond25.i = select i1 %cmp8.i, i1 %cmp12.i, i1 false
  br i1 %or.cond25.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.ntfs_get_nr_significant_bytes.exit_crit_edge

lor.lhs.false.i.ntfs_get_nr_significant_bytes.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_get_nr_significant_bytes.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %do.end.i.if.then.i_crit_edge
  %inc14.i = add i32 %i.0.i, 2
  br label %ntfs_get_nr_significant_bytes.exit

ntfs_get_nr_significant_bytes.exit:               ; preds = %if.then.i, %lor.lhs.false.i.ntfs_get_nr_significant_bytes.exit_crit_edge
  %i.1.i = phi i32 [ %inc14.i, %if.then.i ], [ %inc.i, %lor.lhs.false.i.ntfs_get_nr_significant_bytes.exit_crit_edge ]
  %add149 = add i32 %i.1.i, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %9)
  %cmp151 = icmp sgt i64 %9, -1
  br i1 %cmp151, label %ntfs_get_nr_significant_bytes.exit.if.then162_crit_edge, label %lor.rhs152

ntfs_get_nr_significant_bytes.exit.if.then162_crit_edge: ; preds = %ntfs_get_nr_significant_bytes.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then162

lor.rhs152:                                       ; preds = %ntfs_get_nr_significant_bytes.exit
  %major_ver = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 44
  %15 = ptrtoint ptr %major_ver to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %major_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp153 = icmp ult i8 %16, 3
  br i1 %cmp153, label %lor.rhs152.if.then162_crit_edge, label %lor.rhs152.cleanup_crit_edge, !prof !81

lor.rhs152.cleanup_crit_edge:                     ; preds = %lor.rhs152
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.rhs152.if.then162_crit_edge:                  ; preds = %lor.rhs152
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then162

if.then162:                                       ; preds = %lor.rhs152.if.then162_crit_edge, %ntfs_get_nr_significant_bytes.exit.if.then162_crit_edge
  %add174 = phi i64 [ %sub146, %ntfs_get_nr_significant_bytes.exit.if.then162_crit_edge ], [ 0, %lor.rhs152.if.then162_crit_edge ]
  %spec.select339 = add i64 %add174, %9
  br label %do.body.i347

do.body.i347:                                     ; preds = %do.body.i347.do.body.i347_crit_edge, %if.then162
  %l.0.i340 = phi i64 [ %spec.select339, %if.then162 ], [ %shr.i344, %do.body.i347.do.body.i347_crit_edge ]
  %i.0.i341 = phi i32 [ 0, %if.then162 ], [ %inc.i342, %do.body.i347.do.body.i347_crit_edge ]
  %inc.i342 = add i32 %i.0.i341, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %l.0.i340)
  %cmp.not.i343 = icmp ult i64 %l.0.i340, 256
  %shr.i344 = ashr i64 %l.0.i340, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %shr.i344)
  %cmp1.not.i345 = icmp eq i64 %shr.i344, -1
  %or.cond.i346 = or i1 %cmp.not.i343, %cmp1.not.i345
  br i1 %or.cond.i346, label %do.end.i355, label %do.body.i347.do.body.i347_crit_edge

do.body.i347.do.body.i347_crit_edge:              ; preds = %do.body.i347
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i347

do.end.i355:                                      ; preds = %do.body.i347
  %mul.i348 = shl i32 %i.0.i341, 3
  %sh_prom.i349 = zext i32 %mul.i348 to i64
  %shr2.i350 = ashr i64 %spec.select339, %sh_prom.i349
  %conv.i351 = trunc i64 %shr2.i350 to i8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select339)
  %cmp3.i352 = icmp slt i64 %spec.select339, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv.i351)
  %cmp6.i353 = icmp sgt i8 %conv.i351, -1
  %or.cond24.i354 = select i1 %cmp3.i352, i1 %cmp6.i353, i1 false
  br i1 %or.cond24.i354, label %do.end.i355.if.then.i361_crit_edge, label %lor.lhs.false.i359

do.end.i355.if.then.i361_crit_edge:               ; preds = %do.end.i355
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i361

lor.lhs.false.i359:                               ; preds = %do.end.i355
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select339)
  %cmp8.i356 = icmp sgt i64 %spec.select339, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i351)
  %cmp12.i357 = icmp slt i8 %conv.i351, 0
  %or.cond25.i358 = select i1 %cmp8.i356, i1 %cmp12.i357, i1 false
  br i1 %or.cond25.i358, label %lor.lhs.false.i359.if.then.i361_crit_edge, label %lor.lhs.false.i359.ntfs_get_nr_significant_bytes.exit363_crit_edge

lor.lhs.false.i359.ntfs_get_nr_significant_bytes.exit363_crit_edge: ; preds = %lor.lhs.false.i359
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_get_nr_significant_bytes.exit363

lor.lhs.false.i359.if.then.i361_crit_edge:        ; preds = %lor.lhs.false.i359
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i361

if.then.i361:                                     ; preds = %lor.lhs.false.i359.if.then.i361_crit_edge, %do.end.i355.if.then.i361_crit_edge
  %inc14.i360 = add i32 %i.0.i341, 2
  br label %ntfs_get_nr_significant_bytes.exit363

ntfs_get_nr_significant_bytes.exit363:            ; preds = %if.then.i361, %lor.lhs.false.i359.ntfs_get_nr_significant_bytes.exit363_crit_edge
  %i.1.i362 = phi i32 [ %inc14.i360, %if.then.i361 ], [ %inc.i342, %lor.lhs.false.i359.ntfs_get_nr_significant_bytes.exit363_crit_edge ]
  %add177 = add i32 %i.1.i362, %add149
  br label %cleanup

cleanup:                                          ; preds = %ntfs_get_nr_significant_bytes.exit363, %lor.rhs152.cleanup_crit_edge
  %prev_lcn.1 = phi i64 [ %spec.select339, %ntfs_get_nr_significant_bytes.exit363 ], [ 0, %lor.rhs152.cleanup_crit_edge ]
  %rls.0 = phi i32 [ %add177, %ntfs_get_nr_significant_bytes.exit363 ], [ %add149, %lor.rhs152.cleanup_crit_edge ]
  %incdec.ptr179 = getelementptr %struct.runlist_element, ptr %rl.addr.0, i32 1
  br label %if.end181

if.end181:                                        ; preds = %cleanup, %if.end101.if.end181_crit_edge
  %rl.addr.2 = phi ptr [ %incdec.ptr179, %cleanup ], [ %rl.addr.0, %if.end101.if.end181_crit_edge ]
  %prev_lcn.3 = phi i64 [ %prev_lcn.1, %cleanup ], [ 0, %if.end101.if.end181_crit_edge ]
  %rls.2 = phi i32 [ %rls.0, %cleanup ], [ 1, %if.end101.if.end181_crit_edge ]
  %the_end.2.off0 = phi i1 [ %14, %cleanup ], [ false, %if.end101.if.end181_crit_edge ]
  %length182429 = getelementptr inbounds %struct.runlist_element, ptr %rl.addr.2, i32 0, i32 2
  %17 = ptrtoint ptr %length182429 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %length182429, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool183.not430 = icmp eq i64 %18, 0
  %brmerge431 = or i1 %tobool183.not430, %the_end.2.off0
  br i1 %brmerge431, label %if.end181.cleanup272_crit_edge, label %for.body.lr.ph

if.end181.cleanup272_crit_edge:                   ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup272

for.body.lr.ph:                                   ; preds = %if.end181
  %add222 = add nuw nsw i64 %last_vcn, 1
  %major_ver245 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %19 = phi i64 [ %18, %for.body.lr.ph ], [ %29, %for.inc.for.body_crit_edge ]
  %rls.3436 = phi i32 [ %rls.2, %for.body.lr.ph ], [ %rls.5.ph, %for.inc.for.body_crit_edge ]
  %prev_lcn.4434 = phi i64 [ %prev_lcn.3, %for.body.lr.ph ], [ %prev_lcn.6.ph, %for.inc.for.body_crit_edge ]
  %rl.addr.3432 = phi ptr [ %rl.addr.2, %for.body.lr.ph ], [ %incdec.ptr266, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp191 = icmp slt i64 %19, 0
  br i1 %cmp191, label %for.body.err_out_crit_edge, label %lor.rhs193, !prof !80

for.body.err_out_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

lor.rhs193:                                       ; preds = %for.body
  %lcn194 = getelementptr inbounds %struct.runlist_element, ptr %rl.addr.3432, i32 0, i32 1
  %20 = ptrtoint ptr %lcn194 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %lcn194, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %21)
  %cmp195 = icmp slt i64 %21, -1
  br i1 %cmp195, label %lor.rhs193.err_out_crit_edge, label %if.end205, !prof !80

lor.rhs193.err_out_crit_edge:                     ; preds = %lor.rhs193
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end205:                                        ; preds = %lor.rhs193
  br i1 %cmp27, label %land.rhs208, label %if.end205.if.end237_crit_edge

if.end205.if.end237_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end237

land.rhs208:                                      ; preds = %if.end205
  %arrayidx209 = getelementptr %struct.runlist_element, ptr %rl.addr.3432, i32 1
  %22 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx209, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %last_vcn)
  %cmp211 = icmp sgt i64 %23, %last_vcn
  br i1 %cmp211, label %if.then220, label %land.rhs208.if.end237_crit_edge, !prof !80

land.rhs208.if.end237_crit_edge:                  ; preds = %land.rhs208
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end237

if.then220:                                       ; preds = %land.rhs208
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %add222)
  %cmp225 = icmp sgt i64 %23, %add222
  br i1 %cmp225, label %if.then233, label %if.then220.if.end237_crit_edge, !prof !80

if.then220.if.end237_crit_edge:                   ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end237

if.then233:                                       ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %rl.addr.3432 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rl.addr.3432, align 8
  %sub235 = sub i64 %add222, %25
  br label %if.end237

if.end237:                                        ; preds = %if.then233, %if.then220.if.end237_crit_edge, %land.rhs208.if.end237_crit_edge, %if.end205.if.end237_crit_edge
  %the_end.4.off0 = phi i1 [ false, %land.rhs208.if.end237_crit_edge ], [ true, %if.then233 ], [ true, %if.then220.if.end237_crit_edge ], [ false, %if.end205.if.end237_crit_edge ]
  %length189.1 = phi i64 [ %19, %land.rhs208.if.end237_crit_edge ], [ %sub235, %if.then233 ], [ %19, %if.then220.if.end237_crit_edge ], [ %19, %if.end205.if.end237_crit_edge ]
  br label %do.body.i371

do.body.i371:                                     ; preds = %do.body.i371.do.body.i371_crit_edge, %if.end237
  %l.0.i364 = phi i64 [ %length189.1, %if.end237 ], [ %shr.i368, %do.body.i371.do.body.i371_crit_edge ]
  %i.0.i365 = phi i32 [ 0, %if.end237 ], [ %inc.i366, %do.body.i371.do.body.i371_crit_edge ]
  %inc.i366 = add i32 %i.0.i365, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %l.0.i364)
  %cmp.not.i367 = icmp ult i64 %l.0.i364, 256
  %shr.i368 = ashr i64 %l.0.i364, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %shr.i368)
  %cmp1.not.i369 = icmp eq i64 %shr.i368, -1
  %or.cond.i370 = or i1 %cmp.not.i367, %cmp1.not.i369
  br i1 %or.cond.i370, label %do.end.i379, label %do.body.i371.do.body.i371_crit_edge

do.body.i371.do.body.i371_crit_edge:              ; preds = %do.body.i371
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i371

do.end.i379:                                      ; preds = %do.body.i371
  %mul.i372 = shl i32 %i.0.i365, 3
  %sh_prom.i373 = zext i32 %mul.i372 to i64
  %shr2.i374 = ashr i64 %length189.1, %sh_prom.i373
  %conv.i375 = trunc i64 %shr2.i374 to i8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length189.1)
  %cmp3.i376 = icmp slt i64 %length189.1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv.i375)
  %cmp6.i377 = icmp sgt i8 %conv.i375, -1
  %or.cond24.i378 = select i1 %cmp3.i376, i1 %cmp6.i377, i1 false
  br i1 %or.cond24.i378, label %do.end.i379.if.then.i385_crit_edge, label %lor.lhs.false.i383

do.end.i379.if.then.i385_crit_edge:               ; preds = %do.end.i379
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i385

lor.lhs.false.i383:                               ; preds = %do.end.i379
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length189.1)
  %cmp8.i380 = icmp sgt i64 %length189.1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i375)
  %cmp12.i381 = icmp slt i8 %conv.i375, 0
  %or.cond25.i382 = select i1 %cmp8.i380, i1 %cmp12.i381, i1 false
  br i1 %or.cond25.i382, label %lor.lhs.false.i383.if.then.i385_crit_edge, label %lor.lhs.false.i383.ntfs_get_nr_significant_bytes.exit387_crit_edge

lor.lhs.false.i383.ntfs_get_nr_significant_bytes.exit387_crit_edge: ; preds = %lor.lhs.false.i383
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_get_nr_significant_bytes.exit387

lor.lhs.false.i383.if.then.i385_crit_edge:        ; preds = %lor.lhs.false.i383
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i385

if.then.i385:                                     ; preds = %lor.lhs.false.i383.if.then.i385_crit_edge, %do.end.i379.if.then.i385_crit_edge
  %inc14.i384 = add i32 %i.0.i365, 2
  br label %ntfs_get_nr_significant_bytes.exit387

ntfs_get_nr_significant_bytes.exit387:            ; preds = %if.then.i385, %lor.lhs.false.i383.ntfs_get_nr_significant_bytes.exit387_crit_edge
  %i.1.i386 = phi i32 [ %inc14.i384, %if.then.i385 ], [ %inc.i366, %lor.lhs.false.i383.ntfs_get_nr_significant_bytes.exit387_crit_edge ]
  %add239 = add i32 %rls.3436, 1
  %add240 = add i32 %add239, %i.1.i386
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %21)
  %cmp242 = icmp sgt i64 %21, -1
  br i1 %cmp242, label %ntfs_get_nr_significant_bytes.exit387.if.then256_crit_edge, label %lor.rhs244

ntfs_get_nr_significant_bytes.exit387.if.then256_crit_edge: ; preds = %ntfs_get_nr_significant_bytes.exit387
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then256

lor.rhs244:                                       ; preds = %ntfs_get_nr_significant_bytes.exit387
  %26 = ptrtoint ptr %major_ver245 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %major_ver245, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp247 = icmp ult i8 %27, 3
  br i1 %cmp247, label %lor.rhs244.if.then256_crit_edge, label %lor.rhs244.for.inc_crit_edge, !prof !81

lor.rhs244.for.inc_crit_edge:                     ; preds = %lor.rhs244
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.rhs244.if.then256_crit_edge:                  ; preds = %lor.rhs244
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then256

if.then256:                                       ; preds = %lor.rhs244.if.then256_crit_edge, %ntfs_get_nr_significant_bytes.exit387.if.then256_crit_edge
  %sub258 = sub i64 %21, %prev_lcn.4434
  br label %do.body.i395

do.body.i395:                                     ; preds = %do.body.i395.do.body.i395_crit_edge, %if.then256
  %l.0.i388 = phi i64 [ %sub258, %if.then256 ], [ %shr.i392, %do.body.i395.do.body.i395_crit_edge ]
  %i.0.i389 = phi i32 [ 0, %if.then256 ], [ %inc.i390, %do.body.i395.do.body.i395_crit_edge ]
  %inc.i390 = add i32 %i.0.i389, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %l.0.i388)
  %cmp.not.i391 = icmp ult i64 %l.0.i388, 256
  %shr.i392 = ashr i64 %l.0.i388, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %shr.i392)
  %cmp1.not.i393 = icmp eq i64 %shr.i392, -1
  %or.cond.i394 = or i1 %cmp.not.i391, %cmp1.not.i393
  br i1 %or.cond.i394, label %do.end.i403, label %do.body.i395.do.body.i395_crit_edge

do.body.i395.do.body.i395_crit_edge:              ; preds = %do.body.i395
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i395

do.end.i403:                                      ; preds = %do.body.i395
  %mul.i396 = shl i32 %i.0.i389, 3
  %sh_prom.i397 = zext i32 %mul.i396 to i64
  %shr2.i398 = ashr i64 %sub258, %sh_prom.i397
  %conv.i399 = trunc i64 %shr2.i398 to i8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub258)
  %cmp3.i400 = icmp slt i64 %sub258, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv.i399)
  %cmp6.i401 = icmp sgt i8 %conv.i399, -1
  %or.cond24.i402 = select i1 %cmp3.i400, i1 %cmp6.i401, i1 false
  br i1 %or.cond24.i402, label %do.end.i403.if.then.i409_crit_edge, label %lor.lhs.false.i407

do.end.i403.if.then.i409_crit_edge:               ; preds = %do.end.i403
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i409

lor.lhs.false.i407:                               ; preds = %do.end.i403
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub258)
  %cmp8.i404 = icmp sgt i64 %sub258, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i399)
  %cmp12.i405 = icmp slt i8 %conv.i399, 0
  %or.cond25.i406 = select i1 %cmp8.i404, i1 %cmp12.i405, i1 false
  br i1 %or.cond25.i406, label %lor.lhs.false.i407.if.then.i409_crit_edge, label %lor.lhs.false.i407.ntfs_get_nr_significant_bytes.exit411_crit_edge

lor.lhs.false.i407.ntfs_get_nr_significant_bytes.exit411_crit_edge: ; preds = %lor.lhs.false.i407
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_get_nr_significant_bytes.exit411

lor.lhs.false.i407.if.then.i409_crit_edge:        ; preds = %lor.lhs.false.i407
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i409

if.then.i409:                                     ; preds = %lor.lhs.false.i407.if.then.i409_crit_edge, %do.end.i403.if.then.i409_crit_edge
  %inc14.i408 = add i32 %i.0.i389, 2
  br label %ntfs_get_nr_significant_bytes.exit411

ntfs_get_nr_significant_bytes.exit411:            ; preds = %if.then.i409, %lor.lhs.false.i407.ntfs_get_nr_significant_bytes.exit411_crit_edge
  %i.1.i410 = phi i32 [ %inc14.i408, %if.then.i409 ], [ %inc.i390, %lor.lhs.false.i407.ntfs_get_nr_significant_bytes.exit411_crit_edge ]
  %add260 = add i32 %i.1.i410, %add240
  br label %for.inc

for.inc:                                          ; preds = %ntfs_get_nr_significant_bytes.exit411, %lor.rhs244.for.inc_crit_edge
  %prev_lcn.6.ph = phi i64 [ %prev_lcn.4434, %lor.rhs244.for.inc_crit_edge ], [ %21, %ntfs_get_nr_significant_bytes.exit411 ]
  %rls.5.ph = phi i32 [ %add240, %lor.rhs244.for.inc_crit_edge ], [ %add260, %ntfs_get_nr_significant_bytes.exit411 ]
  %incdec.ptr266 = getelementptr %struct.runlist_element, ptr %rl.addr.3432, i32 1
  %length182 = getelementptr %struct.runlist_element, ptr %rl.addr.3432, i32 1, i32 2
  %28 = ptrtoint ptr %length182 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %length182, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool183.not = icmp eq i64 %29, 0
  %brmerge = or i1 %tobool183.not, %the_end.4.off0
  br i1 %brmerge, label %for.inc.cleanup272_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup272_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup272

err_out:                                          ; preds = %lor.rhs193.err_out_crit_edge, %for.body.err_out_crit_edge, %lor.rhs108.err_out_crit_edge, %if.then104.err_out_crit_edge
  %rl.addr.4 = phi ptr [ %rl.addr.0, %lor.rhs108.err_out_crit_edge ], [ %rl.addr.0, %if.then104.err_out_crit_edge ], [ %rl.addr.3432, %for.body.err_out_crit_edge ], [ %rl.addr.3432, %lor.rhs193.err_out_crit_edge ]
  %lcn267 = getelementptr inbounds %struct.runlist_element, ptr %rl.addr.4, i32 0, i32 1
  %30 = ptrtoint ptr %lcn267 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %lcn267, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %31)
  %cmp268 = icmp eq i64 %31, -2
  %. = select i1 %cmp268, i32 -22, i32 -5
  br label %cleanup272

cleanup272:                                       ; preds = %err_out, %for.inc.cleanup272_crit_edge, %if.end181.cleanup272_crit_edge, %lor.rhs.cleanup272_crit_edge, %land.lhs.true.cleanup272_crit_edge, %do.body65.cleanup272_crit_edge
  %retval.0 = phi i32 [ %., %err_out ], [ 1, %do.body65.cleanup272_crit_edge ], [ -22, %lor.rhs.cleanup272_crit_edge ], [ -22, %land.lhs.true.cleanup272_crit_edge ], [ %rls.2, %if.end181.cleanup272_crit_edge ], [ %rls.5.ph, %for.inc.cleanup272_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_mapping_pairs_build(ptr nocapture noundef readonly %vol, ptr noundef writeonly %dst, i32 noundef %dst_len, ptr noundef readonly %rl, i64 noundef %first_vcn, i64 noundef %last_vcn, ptr noundef writeonly %stop_vcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %first_vcn)
  %cmp = icmp slt i64 %first_vcn, 0
  br i1 %cmp, label %do.body2, label %do.body8, !prof !80

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1319, 0\0A.popsection", ""() #6, !srcloc !98
  unreachable

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %last_vcn)
  %cmp9 = icmp slt i64 %last_vcn, -1
  br i1 %cmp9, label %do.body17, label %do.body26, !prof !80

do.body17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1320, 0\0A.popsection", ""() #6, !srcloc !99
  unreachable

do.body26:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %last_vcn)
  %cmp27 = icmp sgt i64 %last_vcn, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %first_vcn, i64 %last_vcn)
  %cmp28 = icmp sgt i64 %first_vcn, %last_vcn
  %spec.select = and i1 %cmp27, %cmp28
  br i1 %spec.select, label %do.body36, label %do.body45, !prof !80

do.body36:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1321, 0\0A.popsection", ""() #6, !srcloc !100
  unreachable

do.body45:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dst_len)
  %cmp46 = icmp slt i32 %dst_len, 1
  br i1 %cmp46, label %do.body54, label %do.end62, !prof !80

do.body54:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #6, !srcloc !101
  unreachable

do.end62:                                         ; preds = %do.body45
  %tobool63.not = icmp eq ptr %rl, null
  br i1 %tobool63.not, label %do.body65, label %do.end62.while.cond_crit_edge

do.end62.while.cond_crit_edge:                    ; preds = %do.end62
  br label %while.cond

do.body65:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %first_vcn)
  %tobool66.not = icmp eq i64 %first_vcn, 0
  br i1 %tobool66.not, label %do.body83, label %do.body74, !prof !81

do.body74:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1324, 0\0A.popsection", ""() #6, !srcloc !102
  unreachable

do.body83:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %last_vcn)
  %cmp84 = icmp sgt i64 %last_vcn, 0
  br i1 %cmp84, label %do.body92, label %do.end100, !prof !80

do.body92:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1325, 0\0A.popsection", ""() #6, !srcloc !103
  unreachable

do.end100:                                        ; preds = %do.body83
  %tobool101.not = icmp eq ptr %stop_vcn, null
  br i1 %tobool101.not, label %do.end100.if.end103_crit_edge, label %if.then102

do.end100.if.end103_crit_edge:                    ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then102:                                       ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %stop_vcn to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %stop_vcn, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %do.end100.if.end103_crit_edge
  %1 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %dst, align 1
  br label %cleanup389

while.cond:                                       ; preds = %land.rhs106.while.cond_crit_edge, %do.end62.while.cond_crit_edge
  %rl.addr.0 = phi ptr [ %arrayidx, %land.rhs106.while.cond_crit_edge ], [ %rl, %do.end62.while.cond_crit_edge ]
  %length = getelementptr inbounds %struct.runlist_element, ptr %rl.addr.0, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool105.not = icmp eq i64 %3, 0
  br i1 %tobool105.not, label %land.lhs.true, label %land.rhs106

land.rhs106:                                      ; preds = %while.cond
  %arrayidx = getelementptr %struct.runlist_element, ptr %rl.addr.0, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  %cmp107.not = icmp sgt i64 %5, %first_vcn
  br i1 %cmp107.not, label %land.rhs106.lor.rhs_crit_edge, label %land.rhs106.while.cond_crit_edge

land.rhs106.while.cond_crit_edge:                 ; preds = %land.rhs106
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

land.rhs106.lor.rhs_crit_edge:                    ; preds = %land.rhs106
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %while.cond
  %6 = ptrtoint ptr %rl.addr.0 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rl.addr.0, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %first_vcn)
  %cmp112 = icmp slt i64 %7, %first_vcn
  br i1 %cmp112, label %land.lhs.true.cleanup389_crit_edge, label %land.lhs.true.lor.rhs_crit_edge, !prof !80

land.lhs.true.lor.rhs_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true.cleanup389_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup389

lor.rhs:                                          ; preds = %land.lhs.true.lor.rhs_crit_edge, %land.rhs106.lor.rhs_crit_edge
  %8 = ptrtoint ptr %rl.addr.0 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rl.addr.0, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %first_vcn)
  %cmp114 = icmp sgt i64 %9, %first_vcn
  br i1 %cmp114, label %lor.rhs.cleanup389_crit_edge, label %if.end122, !prof !80

lor.rhs.cleanup389_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup389

if.end122:                                        ; preds = %lor.rhs
  %add.ptr = getelementptr i8, ptr %dst, i32 %dst_len
  %add.ptr123 = getelementptr i8, ptr %add.ptr, i32 -1
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %first_vcn)
  %cmp125 = icmp slt i64 %9, %first_vcn
  br i1 %cmp125, label %if.then126, label %if.end122.if.end247_crit_edge

if.end122.if.end247_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end247

if.then126:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp129 = icmp slt i64 %3, 0
  br i1 %cmp129, label %if.then126.err_out_crit_edge, label %lor.rhs130, !prof !80

if.then126.err_out_crit_edge:                     ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

lor.rhs130:                                       ; preds = %if.then126
  %lcn = getelementptr inbounds %struct.runlist_element, ptr %rl.addr.0, i32 0, i32 1
  %10 = ptrtoint ptr %lcn to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %lcn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %11)
  %cmp131 = icmp slt i64 %11, -1
  br i1 %cmp131, label %lor.rhs130.err_out_crit_edge, label %if.end140, !prof !80

lor.rhs130.err_out_crit_edge:                     ; preds = %lor.rhs130
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end140:                                        ; preds = %lor.rhs130
  br i1 %cmp27, label %land.rhs142, label %if.end140.if.end166_crit_edge

if.end140.if.end166_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end166

land.rhs142:                                      ; preds = %if.end140
  %arrayidx143 = getelementptr %struct.runlist_element, ptr %rl.addr.0, i32 1
  %12 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx143, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %last_vcn)
  %cmp145 = icmp sgt i64 %13, %last_vcn
  br i1 %cmp145, label %if.then153, label %land.rhs142.if.end166_crit_edge, !prof !80

land.rhs142.if.end166_crit_edge:                  ; preds = %land.rhs142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end166

if.then153:                                       ; preds = %land.rhs142
  %add = add nuw nsw i64 %last_vcn, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %add)
  %cmp156 = icmp sgt i64 %13, %add
  br i1 %cmp156, label %if.then163, label %if.then153.if.end166_crit_edge, !prof !80

if.then153.if.end166_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end166

if.then163:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i64 %add, %9
  br label %if.end166

if.end166:                                        ; preds = %if.then163, %if.then153.if.end166_crit_edge, %land.rhs142.if.end166_crit_edge, %if.end140.if.end166_crit_edge
  %extract.t487 = phi i1 [ false, %if.end140.if.end166_crit_edge ], [ true, %if.then153.if.end166_crit_edge ], [ true, %if.then163 ], [ false, %land.rhs142.if.end166_crit_edge ]
  %length127.1 = phi i64 [ %3, %if.end140.if.end166_crit_edge ], [ %3, %if.then153.if.end166_crit_edge ], [ %sub, %if.then163 ], [ %3, %land.rhs142.if.end166_crit_edge ]
  %sub168 = sub i64 %first_vcn, %9
  %add.ptr169 = getelementptr i8, ptr %dst, i32 1
  %sub170 = sub i64 %length127.1, %sub168
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end166
  %dst.addr.0.i = phi ptr [ %add.ptr169, %if.end166 ], [ %incdec.ptr.i, %if.end.i.do.body.i_crit_edge ]
  %l.0.i = phi i64 [ %sub170, %if.end166 ], [ %shr.i, %if.end.i.do.body.i_crit_edge ]
  %i.0.i = phi i32 [ 0, %if.end166 ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %cmp.i = icmp ugt ptr %dst.addr.0.i, %add.ptr123
  br i1 %cmp.i, label %do.body.i.size_err_crit_edge, label %if.end.i, !prof !80

do.body.i.size_err_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

if.end.i:                                         ; preds = %do.body.i
  %conv.i = trunc i64 %l.0.i to i8
  %incdec.ptr.i = getelementptr i8, ptr %dst.addr.0.i, i32 1
  %14 = ptrtoint ptr %dst.addr.0.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %dst.addr.0.i, align 1
  %inc.i = add i32 %i.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %l.0.i)
  %cmp2.not.i = icmp ult i64 %l.0.i, 256
  %shr.i = ashr i64 %l.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %shr.i)
  %cmp4.not.i = icmp eq i64 %shr.i, -1
  %or.cond.i = or i1 %cmp2.not.i, %cmp4.not.i
  br i1 %or.cond.i, label %do.end.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end.i:                                         ; preds = %if.end.i
  %mul.i = shl i32 %i.0.i, 3
  %sh_prom.i = zext i32 %mul.i to i64
  %shr6.i = ashr i64 %sub170, %sh_prom.i
  %conv8.i = trunc i64 %shr6.i to i8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub170)
  %cmp9.i = icmp slt i64 %sub170, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv8.i)
  %cmp12.i = icmp sgt i8 %conv8.i, -1
  %or.cond66.i = select i1 %cmp9.i, i1 %cmp12.i, i1 false
  br i1 %or.cond66.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %do.end.i
  %cmp15.i = icmp ugt ptr %incdec.ptr.i, %add.ptr123
  br i1 %cmp15.i, label %if.then14.i.size_err_crit_edge, label %if.then14.i.cleanup.sink.split.i_crit_edge, !prof !80

if.then14.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then14.i.size_err_crit_edge:                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub170)
  %cmp26.i = icmp sgt i64 %sub170, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv8.i)
  %cmp30.i = icmp slt i8 %conv8.i, 0
  %or.cond67.i = select i1 %cmp26.i, i1 %cmp30.i, i1 false
  br i1 %or.cond67.i, label %if.then32.i, label %if.else.i.ntfs_write_significant_bytes.exit_crit_edge

if.else.i.ntfs_write_significant_bytes.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_write_significant_bytes.exit

if.then32.i:                                      ; preds = %if.else.i
  %cmp33.i = icmp ugt ptr %incdec.ptr.i, %add.ptr123
  br i1 %cmp33.i, label %if.then32.i.size_err_crit_edge, label %if.then32.i.cleanup.sink.split.i_crit_edge, !prof !80

if.then32.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then32.i.size_err_crit_edge:                   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

cleanup.sink.split.i:                             ; preds = %if.then32.i.cleanup.sink.split.i_crit_edge, %if.then14.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i8 [ -1, %if.then14.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.then32.i.cleanup.sink.split.i_crit_edge ]
  %inc25.i = add i32 %i.0.i, 2
  %15 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink.i, ptr %incdec.ptr.i, align 1
  br label %ntfs_write_significant_bytes.exit

ntfs_write_significant_bytes.exit:                ; preds = %cleanup.sink.split.i, %if.else.i.ntfs_write_significant_bytes.exit_crit_edge
  %retval.0.i = phi i32 [ %inc.i, %if.else.i.ntfs_write_significant_bytes.exit_crit_edge ], [ %inc25.i, %cleanup.sink.split.i ]
  %sext496 = shl i32 %retval.0.i, 24
  %conv171 = ashr exact i32 %sext496, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext496)
  %cmp172 = icmp slt i32 %sext496, 0
  br i1 %cmp172, label %ntfs_write_significant_bytes.exit.size_err_crit_edge, label %if.end181, !prof !80

ntfs_write_significant_bytes.exit.size_err_crit_edge: ; preds = %ntfs_write_significant_bytes.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

if.end181:                                        ; preds = %ntfs_write_significant_bytes.exit
  %16 = ptrtoint ptr %lcn to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %lcn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %17)
  %cmp183 = icmp sgt i64 %17, -1
  br i1 %cmp183, label %if.end181.if.then196_crit_edge, label %lor.rhs185

if.end181.if.then196_crit_edge:                   ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then196

lor.rhs185:                                       ; preds = %if.end181
  %major_ver = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 44
  %18 = ptrtoint ptr %major_ver to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %major_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp187 = icmp ult i8 %19, 3
  br i1 %cmp187, label %lor.rhs185.if.then196_crit_edge, label %lor.rhs185.if.end226_crit_edge, !prof !81

lor.rhs185.if.end226_crit_edge:                   ; preds = %lor.rhs185
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end226

lor.rhs185.if.then196_crit_edge:                  ; preds = %lor.rhs185
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then196

if.then196:                                       ; preds = %lor.rhs185.if.then196_crit_edge, %if.end181.if.then196_crit_edge
  %add208 = phi i64 [ %sub168, %if.end181.if.then196_crit_edge ], [ 0, %lor.rhs185.if.then196_crit_edge ]
  %spec.select499 = add i64 %add208, %17
  %add.ptr212 = getelementptr i8, ptr %add.ptr169, i32 %conv171
  br label %do.body.i504

do.body.i504:                                     ; preds = %if.end.i512.do.body.i504_crit_edge, %if.then196
  %dst.addr.0.i500 = phi ptr [ %add.ptr212, %if.then196 ], [ %incdec.ptr.i506, %if.end.i512.do.body.i504_crit_edge ]
  %l.0.i501 = phi i64 [ %spec.select499, %if.then196 ], [ %shr.i509, %if.end.i512.do.body.i504_crit_edge ]
  %i.0.i502 = phi i32 [ 0, %if.then196 ], [ %inc.i507, %if.end.i512.do.body.i504_crit_edge ]
  %cmp.i503 = icmp ugt ptr %dst.addr.0.i500, %add.ptr123
  br i1 %cmp.i503, label %do.body.i504.size_err_crit_edge, label %if.end.i512, !prof !80

do.body.i504.size_err_crit_edge:                  ; preds = %do.body.i504
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

if.end.i512:                                      ; preds = %do.body.i504
  %conv.i505 = trunc i64 %l.0.i501 to i8
  %incdec.ptr.i506 = getelementptr i8, ptr %dst.addr.0.i500, i32 1
  %20 = ptrtoint ptr %dst.addr.0.i500 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i505, ptr %dst.addr.0.i500, align 1
  %inc.i507 = add i32 %i.0.i502, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %l.0.i501)
  %cmp2.not.i508 = icmp ult i64 %l.0.i501, 256
  %shr.i509 = ashr i64 %l.0.i501, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %shr.i509)
  %cmp4.not.i510 = icmp eq i64 %shr.i509, -1
  %or.cond.i511 = or i1 %cmp2.not.i508, %cmp4.not.i510
  br i1 %or.cond.i511, label %do.end.i520, label %if.end.i512.do.body.i504_crit_edge

if.end.i512.do.body.i504_crit_edge:               ; preds = %if.end.i512
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i504

do.end.i520:                                      ; preds = %if.end.i512
  %mul.i513 = shl i32 %i.0.i502, 3
  %sh_prom.i514 = zext i32 %mul.i513 to i64
  %shr6.i515 = ashr i64 %spec.select499, %sh_prom.i514
  %conv8.i516 = trunc i64 %shr6.i515 to i8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select499)
  %cmp9.i517 = icmp slt i64 %spec.select499, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv8.i516)
  %cmp12.i518 = icmp sgt i8 %conv8.i516, -1
  %or.cond66.i519 = select i1 %cmp9.i517, i1 %cmp12.i518, i1 false
  br i1 %or.cond66.i519, label %if.then14.i522, label %if.else.i526

if.then14.i522:                                   ; preds = %do.end.i520
  %cmp15.i521 = icmp ugt ptr %incdec.ptr.i506, %add.ptr123
  br i1 %cmp15.i521, label %if.then14.i522.size_err_crit_edge, label %if.then14.i522.cleanup.sink.split.i531_crit_edge, !prof !80

if.then14.i522.cleanup.sink.split.i531_crit_edge: ; preds = %if.then14.i522
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i531

if.then14.i522.size_err_crit_edge:                ; preds = %if.then14.i522
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

if.else.i526:                                     ; preds = %do.end.i520
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select499)
  %cmp26.i523 = icmp sgt i64 %spec.select499, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv8.i516)
  %cmp30.i524 = icmp slt i8 %conv8.i516, 0
  %or.cond67.i525 = select i1 %cmp26.i523, i1 %cmp30.i524, i1 false
  br i1 %or.cond67.i525, label %if.then32.i528, label %if.else.i526.ntfs_write_significant_bytes.exit533_crit_edge

if.else.i526.ntfs_write_significant_bytes.exit533_crit_edge: ; preds = %if.else.i526
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_write_significant_bytes.exit533

if.then32.i528:                                   ; preds = %if.else.i526
  %cmp33.i527 = icmp ugt ptr %incdec.ptr.i506, %add.ptr123
  br i1 %cmp33.i527, label %if.then32.i528.size_err_crit_edge, label %if.then32.i528.cleanup.sink.split.i531_crit_edge, !prof !80

if.then32.i528.cleanup.sink.split.i531_crit_edge: ; preds = %if.then32.i528
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i531

if.then32.i528.size_err_crit_edge:                ; preds = %if.then32.i528
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

cleanup.sink.split.i531:                          ; preds = %if.then32.i528.cleanup.sink.split.i531_crit_edge, %if.then14.i522.cleanup.sink.split.i531_crit_edge
  %.sink.i529 = phi i8 [ -1, %if.then14.i522.cleanup.sink.split.i531_crit_edge ], [ 0, %if.then32.i528.cleanup.sink.split.i531_crit_edge ]
  %inc25.i530 = add i32 %i.0.i502, 2
  %21 = ptrtoint ptr %incdec.ptr.i506 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink.i529, ptr %incdec.ptr.i506, align 1
  br label %ntfs_write_significant_bytes.exit533

ntfs_write_significant_bytes.exit533:             ; preds = %cleanup.sink.split.i531, %if.else.i526.ntfs_write_significant_bytes.exit533_crit_edge
  %retval.0.i532 = phi i32 [ %inc.i507, %if.else.i526.ntfs_write_significant_bytes.exit533_crit_edge ], [ %inc25.i530, %cleanup.sink.split.i531 ]
  %sext498.mask = and i32 %retval.0.i532, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext498.mask)
  %cmp216.not = icmp eq i32 %sext498.mask, 0
  br i1 %cmp216.not, label %ntfs_write_significant_bytes.exit533.if.end226_crit_edge, label %ntfs_write_significant_bytes.exit533.size_err_crit_edge, !prof !81

ntfs_write_significant_bytes.exit533.size_err_crit_edge: ; preds = %ntfs_write_significant_bytes.exit533
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

ntfs_write_significant_bytes.exit533.if.end226_crit_edge: ; preds = %ntfs_write_significant_bytes.exit533
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end226

if.end226:                                        ; preds = %ntfs_write_significant_bytes.exit533.if.end226_crit_edge, %lor.rhs185.if.end226_crit_edge
  %prev_lcn.1 = phi i64 [ %spec.select499, %ntfs_write_significant_bytes.exit533.if.end226_crit_edge ], [ 0, %lor.rhs185.if.end226_crit_edge ]
  %lcn_len.0 = phi i32 [ %retval.0.i532, %ntfs_write_significant_bytes.exit533.if.end226_crit_edge ], [ 0, %lor.rhs185.if.end226_crit_edge ]
  %add.ptr228 = getelementptr i8, ptr %dst, i32 %conv171
  %sext497 = shl i32 %lcn_len.0, 24
  %conv229 = ashr exact i32 %sext497, 24
  %add.ptr230 = getelementptr i8, ptr %add.ptr228, i32 %conv229
  %add.ptr231 = getelementptr i8, ptr %add.ptr230, i32 1
  %cmp232 = icmp ugt ptr %add.ptr231, %add.ptr123
  br i1 %cmp232, label %if.end226.size_err_crit_edge, label %cleanup, !prof !80

if.end226.size_err_crit_edge:                     ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

cleanup:                                          ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #8
  %22 = lshr exact i32 %sext497, 20
  %or = or i32 %22, %retval.0.i
  %conv244 = trunc i32 %or to i8
  %23 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv244, ptr %dst, align 1
  %incdec.ptr245 = getelementptr %struct.runlist_element, ptr %rl.addr.0, i32 1
  br label %if.end247

if.end247:                                        ; preds = %cleanup, %if.end122.if.end247_crit_edge
  %rl.addr.2 = phi ptr [ %incdec.ptr245, %cleanup ], [ %rl.addr.0, %if.end122.if.end247_crit_edge ]
  %dst.addr.1 = phi ptr [ %add.ptr231, %cleanup ], [ %dst, %if.end122.if.end247_crit_edge ]
  %prev_lcn.3 = phi i64 [ %prev_lcn.1, %cleanup ], [ 0, %if.end122.if.end247_crit_edge ]
  %the_end.2.off0 = phi i1 [ %extract.t487, %cleanup ], [ false, %if.end122.if.end247_crit_edge ]
  %length248662 = getelementptr inbounds %struct.runlist_element, ptr %rl.addr.2, i32 0, i32 2
  %24 = ptrtoint ptr %length248662 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %length248662, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool249.not663 = icmp eq i64 %25, 0
  %brmerge664 = or i1 %tobool249.not663, %the_end.2.off0
  br i1 %brmerge664, label %if.end247.size_err_crit_edge, label %for.body.lr.ph

if.end247.size_err_crit_edge:                     ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

for.body.lr.ph:                                   ; preds = %if.end247
  %add288 = add nuw nsw i64 %last_vcn, 1
  %major_ver322 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %26 = phi i64 [ %25, %for.body.lr.ph ], [ %46, %for.inc.for.body_crit_edge ]
  %prev_lcn.4673 = phi i64 [ %prev_lcn.3, %for.body.lr.ph ], [ %prev_lcn.5, %for.inc.for.body_crit_edge ]
  %dst.addr.2669 = phi ptr [ %dst.addr.1, %for.body.lr.ph ], [ %add.ptr359, %for.inc.for.body_crit_edge ]
  %rl.addr.3665 = phi ptr [ %rl.addr.2, %for.body.lr.ph ], [ %incdec.ptr378, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %cmp257 = icmp slt i64 %26, 0
  br i1 %cmp257, label %for.body.err_out_crit_edge, label %lor.rhs259, !prof !80

for.body.err_out_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

lor.rhs259:                                       ; preds = %for.body
  %lcn260 = getelementptr inbounds %struct.runlist_element, ptr %rl.addr.3665, i32 0, i32 1
  %27 = ptrtoint ptr %lcn260 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %lcn260, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %28)
  %cmp261 = icmp slt i64 %28, -1
  br i1 %cmp261, label %lor.rhs259.err_out_crit_edge, label %if.end271, !prof !80

lor.rhs259.err_out_crit_edge:                     ; preds = %lor.rhs259
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end271:                                        ; preds = %lor.rhs259
  br i1 %cmp27, label %land.rhs274, label %if.end271.if.end303_crit_edge

if.end271.if.end303_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end303

land.rhs274:                                      ; preds = %if.end271
  %arrayidx275 = getelementptr %struct.runlist_element, ptr %rl.addr.3665, i32 1
  %29 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx275, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %last_vcn)
  %cmp277 = icmp sgt i64 %30, %last_vcn
  br i1 %cmp277, label %if.then286, label %land.rhs274.if.end303_crit_edge, !prof !80

land.rhs274.if.end303_crit_edge:                  ; preds = %land.rhs274
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end303

if.then286:                                       ; preds = %land.rhs274
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %add288)
  %cmp291 = icmp sgt i64 %30, %add288
  br i1 %cmp291, label %if.then299, label %if.then286.if.end303_crit_edge, !prof !80

if.then286.if.end303_crit_edge:                   ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end303

if.then299:                                       ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %rl.addr.3665 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %rl.addr.3665, align 8
  %sub301 = sub i64 %add288, %32
  br label %if.end303

if.end303:                                        ; preds = %if.then299, %if.then286.if.end303_crit_edge, %land.rhs274.if.end303_crit_edge, %if.end271.if.end303_crit_edge
  %the_end.4.off0 = phi i1 [ false, %land.rhs274.if.end303_crit_edge ], [ true, %if.then299 ], [ true, %if.then286.if.end303_crit_edge ], [ false, %if.end271.if.end303_crit_edge ]
  %length255.1 = phi i64 [ %26, %land.rhs274.if.end303_crit_edge ], [ %sub301, %if.then299 ], [ %26, %if.then286.if.end303_crit_edge ], [ %26, %if.end271.if.end303_crit_edge ]
  %add.ptr304 = getelementptr i8, ptr %dst.addr.2669, i32 1
  br label %do.body.i538

do.body.i538:                                     ; preds = %if.end.i546.do.body.i538_crit_edge, %if.end303
  %dst.addr.0.i534 = phi ptr [ %add.ptr304, %if.end303 ], [ %incdec.ptr.i540, %if.end.i546.do.body.i538_crit_edge ]
  %l.0.i535 = phi i64 [ %length255.1, %if.end303 ], [ %shr.i543, %if.end.i546.do.body.i538_crit_edge ]
  %i.0.i536 = phi i32 [ 0, %if.end303 ], [ %inc.i541, %if.end.i546.do.body.i538_crit_edge ]
  %cmp.i537 = icmp ugt ptr %dst.addr.0.i534, %add.ptr123
  br i1 %cmp.i537, label %do.body.i538.size_err_crit_edge, label %if.end.i546, !prof !80

do.body.i538.size_err_crit_edge:                  ; preds = %do.body.i538
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

if.end.i546:                                      ; preds = %do.body.i538
  %conv.i539 = trunc i64 %l.0.i535 to i8
  %incdec.ptr.i540 = getelementptr i8, ptr %dst.addr.0.i534, i32 1
  %33 = ptrtoint ptr %dst.addr.0.i534 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i539, ptr %dst.addr.0.i534, align 1
  %inc.i541 = add i32 %i.0.i536, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %l.0.i535)
  %cmp2.not.i542 = icmp ult i64 %l.0.i535, 256
  %shr.i543 = ashr i64 %l.0.i535, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %shr.i543)
  %cmp4.not.i544 = icmp eq i64 %shr.i543, -1
  %or.cond.i545 = or i1 %cmp2.not.i542, %cmp4.not.i544
  br i1 %or.cond.i545, label %do.end.i554, label %if.end.i546.do.body.i538_crit_edge

if.end.i546.do.body.i538_crit_edge:               ; preds = %if.end.i546
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i538

do.end.i554:                                      ; preds = %if.end.i546
  %mul.i547 = shl i32 %i.0.i536, 3
  %sh_prom.i548 = zext i32 %mul.i547 to i64
  %shr6.i549 = ashr i64 %length255.1, %sh_prom.i548
  %conv8.i550 = trunc i64 %shr6.i549 to i8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length255.1)
  %cmp9.i551 = icmp slt i64 %length255.1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv8.i550)
  %cmp12.i552 = icmp sgt i8 %conv8.i550, -1
  %or.cond66.i553 = select i1 %cmp9.i551, i1 %cmp12.i552, i1 false
  br i1 %or.cond66.i553, label %if.then14.i556, label %if.else.i560

if.then14.i556:                                   ; preds = %do.end.i554
  %cmp15.i555 = icmp ugt ptr %incdec.ptr.i540, %add.ptr123
  br i1 %cmp15.i555, label %if.then14.i556.size_err_crit_edge, label %if.then14.i556.cleanup.sink.split.i565_crit_edge, !prof !80

if.then14.i556.cleanup.sink.split.i565_crit_edge: ; preds = %if.then14.i556
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i565

if.then14.i556.size_err_crit_edge:                ; preds = %if.then14.i556
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

if.else.i560:                                     ; preds = %do.end.i554
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length255.1)
  %cmp26.i557 = icmp sgt i64 %length255.1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv8.i550)
  %cmp30.i558 = icmp slt i8 %conv8.i550, 0
  %or.cond67.i559 = select i1 %cmp26.i557, i1 %cmp30.i558, i1 false
  br i1 %or.cond67.i559, label %if.then32.i562, label %if.else.i560.ntfs_write_significant_bytes.exit567_crit_edge

if.else.i560.ntfs_write_significant_bytes.exit567_crit_edge: ; preds = %if.else.i560
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_write_significant_bytes.exit567

if.then32.i562:                                   ; preds = %if.else.i560
  %cmp33.i561 = icmp ugt ptr %incdec.ptr.i540, %add.ptr123
  br i1 %cmp33.i561, label %if.then32.i562.size_err_crit_edge, label %if.then32.i562.cleanup.sink.split.i565_crit_edge, !prof !80

if.then32.i562.cleanup.sink.split.i565_crit_edge: ; preds = %if.then32.i562
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i565

if.then32.i562.size_err_crit_edge:                ; preds = %if.then32.i562
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

cleanup.sink.split.i565:                          ; preds = %if.then32.i562.cleanup.sink.split.i565_crit_edge, %if.then14.i556.cleanup.sink.split.i565_crit_edge
  %.sink.i563 = phi i8 [ -1, %if.then14.i556.cleanup.sink.split.i565_crit_edge ], [ 0, %if.then32.i562.cleanup.sink.split.i565_crit_edge ]
  %inc25.i564 = add i32 %i.0.i536, 2
  %34 = ptrtoint ptr %incdec.ptr.i540 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.sink.i563, ptr %incdec.ptr.i540, align 1
  br label %ntfs_write_significant_bytes.exit567

ntfs_write_significant_bytes.exit567:             ; preds = %cleanup.sink.split.i565, %if.else.i560.ntfs_write_significant_bytes.exit567_crit_edge
  %retval.0.i566 = phi i32 [ %inc.i541, %if.else.i560.ntfs_write_significant_bytes.exit567_crit_edge ], [ %inc25.i564, %cleanup.sink.split.i565 ]
  %sext = shl i32 %retval.0.i566, 24
  %conv307 = ashr exact i32 %sext, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext)
  %cmp308 = icmp slt i32 %sext, 0
  br i1 %cmp308, label %ntfs_write_significant_bytes.exit567.size_err_crit_edge, label %if.end317, !prof !80

ntfs_write_significant_bytes.exit567.size_err_crit_edge: ; preds = %ntfs_write_significant_bytes.exit567
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

if.end317:                                        ; preds = %ntfs_write_significant_bytes.exit567
  %35 = ptrtoint ptr %lcn260 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %lcn260, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %36)
  %cmp319 = icmp sgt i64 %36, -1
  br i1 %cmp319, label %if.end317.if.then333_crit_edge, label %lor.rhs321

if.end317.if.then333_crit_edge:                   ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then333

lor.rhs321:                                       ; preds = %if.end317
  %37 = ptrtoint ptr %major_ver322 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %major_ver322, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %38)
  %cmp324 = icmp ult i8 %38, 3
  br i1 %cmp324, label %lor.rhs321.if.then333_crit_edge, label %lor.rhs321.if.end354_crit_edge, !prof !81

lor.rhs321.if.end354_crit_edge:                   ; preds = %lor.rhs321
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end354

lor.rhs321.if.then333_crit_edge:                  ; preds = %lor.rhs321
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then333

if.then333:                                       ; preds = %lor.rhs321.if.then333_crit_edge, %if.end317.if.then333_crit_edge
  %add.ptr336 = getelementptr i8, ptr %add.ptr304, i32 %conv307
  %sub338 = sub i64 %36, %prev_lcn.4673
  br label %do.body.i572

do.body.i572:                                     ; preds = %if.end.i580.do.body.i572_crit_edge, %if.then333
  %dst.addr.0.i568 = phi ptr [ %add.ptr336, %if.then333 ], [ %incdec.ptr.i574, %if.end.i580.do.body.i572_crit_edge ]
  %l.0.i569 = phi i64 [ %sub338, %if.then333 ], [ %shr.i577, %if.end.i580.do.body.i572_crit_edge ]
  %i.0.i570 = phi i32 [ 0, %if.then333 ], [ %inc.i575, %if.end.i580.do.body.i572_crit_edge ]
  %cmp.i571 = icmp ugt ptr %dst.addr.0.i568, %add.ptr123
  br i1 %cmp.i571, label %do.body.i572.size_err_crit_edge, label %if.end.i580, !prof !80

do.body.i572.size_err_crit_edge:                  ; preds = %do.body.i572
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

if.end.i580:                                      ; preds = %do.body.i572
  %conv.i573 = trunc i64 %l.0.i569 to i8
  %incdec.ptr.i574 = getelementptr i8, ptr %dst.addr.0.i568, i32 1
  %39 = ptrtoint ptr %dst.addr.0.i568 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i573, ptr %dst.addr.0.i568, align 1
  %inc.i575 = add i32 %i.0.i570, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %l.0.i569)
  %cmp2.not.i576 = icmp ult i64 %l.0.i569, 256
  %shr.i577 = ashr i64 %l.0.i569, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %shr.i577)
  %cmp4.not.i578 = icmp eq i64 %shr.i577, -1
  %or.cond.i579 = or i1 %cmp2.not.i576, %cmp4.not.i578
  br i1 %or.cond.i579, label %do.end.i588, label %if.end.i580.do.body.i572_crit_edge

if.end.i580.do.body.i572_crit_edge:               ; preds = %if.end.i580
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i572

do.end.i588:                                      ; preds = %if.end.i580
  %mul.i581 = shl i32 %i.0.i570, 3
  %sh_prom.i582 = zext i32 %mul.i581 to i64
  %shr6.i583 = ashr i64 %sub338, %sh_prom.i582
  %conv8.i584 = trunc i64 %shr6.i583 to i8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub338)
  %cmp9.i585 = icmp slt i64 %sub338, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv8.i584)
  %cmp12.i586 = icmp sgt i8 %conv8.i584, -1
  %or.cond66.i587 = select i1 %cmp9.i585, i1 %cmp12.i586, i1 false
  br i1 %or.cond66.i587, label %if.then14.i590, label %if.else.i594

if.then14.i590:                                   ; preds = %do.end.i588
  %cmp15.i589 = icmp ugt ptr %incdec.ptr.i574, %add.ptr123
  br i1 %cmp15.i589, label %if.then14.i590.size_err_crit_edge, label %if.then14.i590.cleanup.sink.split.i599_crit_edge, !prof !80

if.then14.i590.cleanup.sink.split.i599_crit_edge: ; preds = %if.then14.i590
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i599

if.then14.i590.size_err_crit_edge:                ; preds = %if.then14.i590
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

if.else.i594:                                     ; preds = %do.end.i588
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub338)
  %cmp26.i591 = icmp sgt i64 %sub338, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv8.i584)
  %cmp30.i592 = icmp slt i8 %conv8.i584, 0
  %or.cond67.i593 = select i1 %cmp26.i591, i1 %cmp30.i592, i1 false
  br i1 %or.cond67.i593, label %if.then32.i596, label %if.else.i594.ntfs_write_significant_bytes.exit601_crit_edge

if.else.i594.ntfs_write_significant_bytes.exit601_crit_edge: ; preds = %if.else.i594
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_write_significant_bytes.exit601

if.then32.i596:                                   ; preds = %if.else.i594
  %cmp33.i595 = icmp ugt ptr %incdec.ptr.i574, %add.ptr123
  br i1 %cmp33.i595, label %if.then32.i596.size_err_crit_edge, label %if.then32.i596.cleanup.sink.split.i599_crit_edge, !prof !80

if.then32.i596.cleanup.sink.split.i599_crit_edge: ; preds = %if.then32.i596
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i599

if.then32.i596.size_err_crit_edge:                ; preds = %if.then32.i596
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

cleanup.sink.split.i599:                          ; preds = %if.then32.i596.cleanup.sink.split.i599_crit_edge, %if.then14.i590.cleanup.sink.split.i599_crit_edge
  %.sink.i597 = phi i8 [ -1, %if.then14.i590.cleanup.sink.split.i599_crit_edge ], [ 0, %if.then32.i596.cleanup.sink.split.i599_crit_edge ]
  %inc25.i598 = add i32 %i.0.i570, 2
  %40 = ptrtoint ptr %incdec.ptr.i574 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.sink.i597, ptr %incdec.ptr.i574, align 1
  br label %ntfs_write_significant_bytes.exit601

ntfs_write_significant_bytes.exit601:             ; preds = %cleanup.sink.split.i599, %if.else.i594.ntfs_write_significant_bytes.exit601_crit_edge
  %retval.0.i600 = phi i32 [ %inc.i575, %if.else.i594.ntfs_write_significant_bytes.exit601_crit_edge ], [ %inc25.i598, %cleanup.sink.split.i599 ]
  %sext495.mask = and i32 %retval.0.i600, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext495.mask)
  %cmp342.not = icmp eq i32 %sext495.mask, 0
  br i1 %cmp342.not, label %if.end351, label %ntfs_write_significant_bytes.exit601.size_err_crit_edge, !prof !81

ntfs_write_significant_bytes.exit601.size_err_crit_edge: ; preds = %ntfs_write_significant_bytes.exit601
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

if.end351:                                        ; preds = %ntfs_write_significant_bytes.exit601
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %lcn260 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %lcn260, align 8
  br label %if.end354

if.end354:                                        ; preds = %if.end351, %lor.rhs321.if.end354_crit_edge
  %prev_lcn.5 = phi i64 [ %42, %if.end351 ], [ %prev_lcn.4673, %lor.rhs321.if.end354_crit_edge ]
  %lcn_len.1 = phi i32 [ %retval.0.i600, %if.end351 ], [ 0, %lor.rhs321.if.end354_crit_edge ]
  %add.ptr356 = getelementptr i8, ptr %dst.addr.2669, i32 1
  %sext494 = shl i32 %lcn_len.1, 24
  %conv357 = ashr exact i32 %sext494, 24
  %add.ptr358 = getelementptr i8, ptr %add.ptr356, i32 %conv307
  %add.ptr359 = getelementptr i8, ptr %add.ptr358, i32 %conv357
  %cmp360 = icmp ugt ptr %add.ptr359, %add.ptr123
  br i1 %cmp360, label %if.end354.size_err_crit_edge, label %for.inc, !prof !80

if.end354.size_err_crit_edge:                     ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

for.inc:                                          ; preds = %if.end354
  %43 = lshr exact i32 %sext494, 20
  %or373 = or i32 %43, %retval.0.i566
  %conv374 = trunc i32 %or373 to i8
  %44 = ptrtoint ptr %dst.addr.2669 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv374, ptr %dst.addr.2669, align 1
  %incdec.ptr378 = getelementptr %struct.runlist_element, ptr %rl.addr.3665, i32 1
  %length248 = getelementptr %struct.runlist_element, ptr %rl.addr.3665, i32 1, i32 2
  %45 = ptrtoint ptr %length248 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %length248, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %tobool249.not = icmp eq i64 %46, 0
  %brmerge = or i1 %tobool249.not, %the_end.4.off0
  br i1 %brmerge, label %for.inc.size_err_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.size_err_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_err

size_err:                                         ; preds = %for.inc.size_err_crit_edge, %if.end354.size_err_crit_edge, %ntfs_write_significant_bytes.exit601.size_err_crit_edge, %if.then32.i596.size_err_crit_edge, %if.then14.i590.size_err_crit_edge, %do.body.i572.size_err_crit_edge, %ntfs_write_significant_bytes.exit567.size_err_crit_edge, %if.then32.i562.size_err_crit_edge, %if.then14.i556.size_err_crit_edge, %do.body.i538.size_err_crit_edge, %if.end247.size_err_crit_edge, %if.end226.size_err_crit_edge, %ntfs_write_significant_bytes.exit533.size_err_crit_edge, %if.then32.i528.size_err_crit_edge, %if.then14.i522.size_err_crit_edge, %do.body.i504.size_err_crit_edge, %ntfs_write_significant_bytes.exit.size_err_crit_edge, %if.then32.i.size_err_crit_edge, %if.then14.i.size_err_crit_edge, %do.body.i.size_err_crit_edge
  %rl.addr.4 = phi ptr [ %rl.addr.0, %ntfs_write_significant_bytes.exit.size_err_crit_edge ], [ %rl.addr.0, %ntfs_write_significant_bytes.exit533.size_err_crit_edge ], [ %rl.addr.0, %if.end226.size_err_crit_edge ], [ %rl.addr.0, %if.then32.i.size_err_crit_edge ], [ %rl.addr.0, %if.then14.i.size_err_crit_edge ], [ %rl.addr.0, %if.then32.i528.size_err_crit_edge ], [ %rl.addr.0, %if.then14.i522.size_err_crit_edge ], [ %rl.addr.2, %if.end247.size_err_crit_edge ], [ %rl.addr.3665, %do.body.i572.size_err_crit_edge ], [ %rl.addr.3665, %do.body.i538.size_err_crit_edge ], [ %incdec.ptr378, %for.inc.size_err_crit_edge ], [ %rl.addr.3665, %ntfs_write_significant_bytes.exit567.size_err_crit_edge ], [ %rl.addr.3665, %ntfs_write_significant_bytes.exit601.size_err_crit_edge ], [ %rl.addr.3665, %if.end354.size_err_crit_edge ], [ %rl.addr.3665, %if.then32.i562.size_err_crit_edge ], [ %rl.addr.3665, %if.then14.i556.size_err_crit_edge ], [ %rl.addr.3665, %if.then32.i596.size_err_crit_edge ], [ %rl.addr.3665, %if.then14.i590.size_err_crit_edge ], [ %rl.addr.0, %do.body.i504.size_err_crit_edge ], [ %rl.addr.0, %do.body.i.size_err_crit_edge ]
  %dst.addr.4 = phi ptr [ %dst, %ntfs_write_significant_bytes.exit.size_err_crit_edge ], [ %dst, %ntfs_write_significant_bytes.exit533.size_err_crit_edge ], [ %dst, %if.end226.size_err_crit_edge ], [ %dst, %if.then32.i.size_err_crit_edge ], [ %dst, %if.then14.i.size_err_crit_edge ], [ %dst, %if.then32.i528.size_err_crit_edge ], [ %dst, %if.then14.i522.size_err_crit_edge ], [ %dst.addr.1, %if.end247.size_err_crit_edge ], [ %dst.addr.2669, %do.body.i572.size_err_crit_edge ], [ %dst.addr.2669, %do.body.i538.size_err_crit_edge ], [ %add.ptr359, %for.inc.size_err_crit_edge ], [ %dst.addr.2669, %ntfs_write_significant_bytes.exit567.size_err_crit_edge ], [ %dst.addr.2669, %ntfs_write_significant_bytes.exit601.size_err_crit_edge ], [ %dst.addr.2669, %if.end354.size_err_crit_edge ], [ %dst.addr.2669, %if.then32.i562.size_err_crit_edge ], [ %dst.addr.2669, %if.then14.i556.size_err_crit_edge ], [ %dst.addr.2669, %if.then32.i596.size_err_crit_edge ], [ %dst.addr.2669, %if.then14.i590.size_err_crit_edge ], [ %dst, %do.body.i504.size_err_crit_edge ], [ %dst, %do.body.i.size_err_crit_edge ]
  %err.0 = phi i32 [ -28, %ntfs_write_significant_bytes.exit.size_err_crit_edge ], [ -28, %ntfs_write_significant_bytes.exit533.size_err_crit_edge ], [ -28, %if.end226.size_err_crit_edge ], [ -28, %if.then32.i.size_err_crit_edge ], [ -28, %if.then14.i.size_err_crit_edge ], [ -28, %if.then32.i528.size_err_crit_edge ], [ -28, %if.then14.i522.size_err_crit_edge ], [ 0, %if.end247.size_err_crit_edge ], [ -28, %do.body.i572.size_err_crit_edge ], [ -28, %do.body.i538.size_err_crit_edge ], [ 0, %for.inc.size_err_crit_edge ], [ -28, %ntfs_write_significant_bytes.exit567.size_err_crit_edge ], [ -28, %ntfs_write_significant_bytes.exit601.size_err_crit_edge ], [ -28, %if.end354.size_err_crit_edge ], [ -28, %if.then32.i562.size_err_crit_edge ], [ -28, %if.then14.i556.size_err_crit_edge ], [ -28, %if.then32.i596.size_err_crit_edge ], [ -28, %if.then14.i590.size_err_crit_edge ], [ -28, %do.body.i504.size_err_crit_edge ], [ -28, %do.body.i.size_err_crit_edge ]
  %tobool379.not = icmp eq ptr %stop_vcn, null
  br i1 %tobool379.not, label %size_err.if.end382_crit_edge, label %if.then380

size_err.if.end382_crit_edge:                     ; preds = %size_err
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end382

if.then380:                                       ; preds = %size_err
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %rl.addr.4 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %rl.addr.4, align 8
  %49 = ptrtoint ptr %stop_vcn to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %stop_vcn, align 8
  br label %if.end382

if.end382:                                        ; preds = %if.then380, %size_err.if.end382_crit_edge
  %50 = ptrtoint ptr %dst.addr.4 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %dst.addr.4, align 1
  br label %cleanup389

err_out:                                          ; preds = %lor.rhs259.err_out_crit_edge, %for.body.err_out_crit_edge, %lor.rhs130.err_out_crit_edge, %if.then126.err_out_crit_edge
  %rl.addr.5 = phi ptr [ %rl.addr.0, %lor.rhs130.err_out_crit_edge ], [ %rl.addr.0, %if.then126.err_out_crit_edge ], [ %rl.addr.3665, %lor.rhs259.err_out_crit_edge ], [ %rl.addr.3665, %for.body.err_out_crit_edge ]
  %lcn383 = getelementptr inbounds %struct.runlist_element, ptr %rl.addr.5, i32 0, i32 1
  %51 = ptrtoint ptr %lcn383 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %lcn383, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %52)
  %cmp384 = icmp eq i64 %52, -2
  %. = select i1 %cmp384, i32 -22, i32 -5
  br label %cleanup389

cleanup389:                                       ; preds = %err_out, %if.end382, %lor.rhs.cleanup389_crit_edge, %land.lhs.true.cleanup389_crit_edge, %if.end103
  %retval.0 = phi i32 [ %., %err_out ], [ %err.0, %if.end382 ], [ 0, %if.end103 ], [ -22, %lor.rhs.cleanup389_crit_edge ], [ -22, %land.lhs.true.cleanup389_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_rl_truncate_nolock(ptr nocapture noundef readonly %vol, ptr noundef %runlist, i64 noundef %new_length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1491, ptr noundef nonnull @__func__.ntfs_rl_truncate_nolock, ptr noundef nonnull @.str.20, i64 noundef %new_length) #6
  %tobool.not = icmp eq ptr %runlist, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !80

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1492, 0\0A.popsection", ""() #6, !srcloc !104
  unreachable

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %new_length)
  %cmp = icmp slt i64 %new_length, 0
  br i1 %cmp, label %do.body18, label %do.end26, !prof !80

do.body18:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1493, 0\0A.popsection", ""() #6, !srcloc !105
  unreachable

do.end26:                                         ; preds = %do.body10
  %0 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runlist, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %new_length)
  %tobool28.not = icmp eq i64 %new_length, 0
  br i1 %tobool28.not, label %if.then29, label %if.end34

if.then29:                                        ; preds = %do.end26
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1496, ptr noundef nonnull @__func__.ntfs_rl_truncate_nolock, ptr noundef nonnull @.str.21) #6
  %2 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %runlist, align 4
  %tobool31.not = icmp eq ptr %1, null
  br i1 %tobool31.not, label %if.then29.cleanup_crit_edge, label %if.then32

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kvfree(ptr noundef nonnull %1) #6
  br label %cleanup

if.end34:                                         ; preds = %do.end26
  %tobool35.not = icmp eq ptr %1, null
  br i1 %tobool35.not, label %if.then44, label %do.body63, !prof !80

if.then44:                                        ; preds = %if.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3136, i32 noundef 4096) #9
  %tobool45.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool45.not, label %if.then54, label %if.end55, !prof !80

if.then54:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_rl_truncate_nolock, ptr noundef %5, ptr noundef nonnull @.str.22) #6
  br label %cleanup

if.end55:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i.i, ptr %runlist, align 4
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %call7.i.i.i, align 8
  %arrayidx = getelementptr %struct.runlist_element, ptr %call7.i.i.i, i32 1
  %length = getelementptr %struct.runlist_element, ptr %call7.i.i.i, i32 1, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %length, align 8
  %lcn = getelementptr inbounds %struct.runlist_element, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %lcn to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %lcn, align 8
  %length57 = getelementptr inbounds %struct.runlist_element, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %length57 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %new_length, ptr %length57, align 8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %new_length, ptr %arrayidx, align 8
  %lcn61 = getelementptr %struct.runlist_element, ptr %call7.i.i.i, i32 1, i32 1
  %12 = ptrtoint ptr %lcn61 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -3, ptr %lcn61, align 8
  br label %cleanup

do.body63:                                        ; preds = %if.end34
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %new_length)
  %cmp65 = icmp sgt i64 %14, %new_length
  br i1 %cmp65, label %do.body73, label %do.body63.while.cond_crit_edge, !prof !80

do.body63.while.cond_crit_edge:                   ; preds = %do.body63
  br label %while.cond

do.body73:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1520, 0\0A.popsection", ""() #6, !srcloc !106
  unreachable

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %do.body63.while.cond_crit_edge
  %rl.0 = phi ptr [ %arrayidx84, %land.rhs.while.cond_crit_edge ], [ %1, %do.body63.while.cond_crit_edge ]
  %length82 = getelementptr inbounds %struct.runlist_element, ptr %rl.0, i32 0, i32 2
  %15 = ptrtoint ptr %length82 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %length82, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool83.not = icmp eq i64 %16, 0
  br i1 %tobool83.not, label %if.else139, label %land.rhs, !prof !80

land.rhs:                                         ; preds = %while.cond
  %arrayidx84 = getelementptr %struct.runlist_element, ptr %rl.0, i32 1
  %17 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx84, align 8
  %cmp86.not = icmp sgt i64 %18, %new_length
  br i1 %cmp86.not, label %if.then95, label %land.rhs.while.cond_crit_edge, !prof !80

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.then95:                                        ; preds = %land.rhs
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1532, ptr noundef nonnull @__func__.ntfs_rl_truncate_nolock, ptr noundef nonnull @.str.23) #6
  br label %while.cond96

while.cond96:                                     ; preds = %while.cond96.while.cond96_crit_edge, %if.then95
  %trl.0 = phi ptr [ %arrayidx84, %if.then95 ], [ %incdec.ptr106, %while.cond96.while.cond96_crit_edge ]
  %length97 = getelementptr inbounds %struct.runlist_element, ptr %trl.0, i32 0, i32 2
  %19 = ptrtoint ptr %length97 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %length97, align 8
  %tobool98.not = icmp eq i64 %20, 0
  %incdec.ptr106 = getelementptr %struct.runlist_element, ptr %trl.0, i32 1
  br i1 %tobool98.not, label %while.end107, label %while.cond96.while.cond96_crit_edge, !prof !80

while.cond96.while.cond96_crit_edge:              ; preds = %while.cond96
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond96

while.end107:                                     ; preds = %while.cond96
  %21 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %runlist, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %trl.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %22 to i32
  %23 = ptrtoint ptr %rl.0 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rl.0, align 8
  %sub = sub i64 %new_length, %24
  %25 = ptrtoint ptr %length82 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %sub, ptr %length82, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %new_length)
  %tobool112.not = icmp eq i64 %24, %new_length
  br i1 %tobool112.not, label %if.end121.thread, label %if.end121

if.end121.thread:                                 ; preds = %while.end107
  call void @__sanitizer_cov_trace_pc() #8
  %lcn122302 = getelementptr inbounds %struct.runlist_element, ptr %rl.0, i32 0, i32 1
  %26 = ptrtoint ptr %lcn122302 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 -3, ptr %lcn122302, align 8
  br label %if.then124

if.end121:                                        ; preds = %while.end107
  %length115 = getelementptr %struct.runlist_element, ptr %rl.0, i32 1, i32 2
  %27 = ptrtoint ptr %length115 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %length115, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool116.not = icmp eq i64 %28, 0
  %29 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %new_length, ptr %arrayidx84, align 8
  %30 = ptrtoint ptr %length115 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %length115, align 8
  %lcn122 = getelementptr %struct.runlist_element, ptr %rl.0, i32 1, i32 1
  %31 = ptrtoint ptr %lcn122 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 -3, ptr %lcn122, align 8
  br i1 %tobool116.not, label %if.end121.if.end190_crit_edge, label %if.end121.if.then124_crit_edge

if.end121.if.then124_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then124

if.end121.if.end190_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

if.then124:                                       ; preds = %if.end121.if.then124_crit_edge, %if.end121.thread
  %rl.1303 = phi ptr [ %rl.0, %if.end121.thread ], [ %arrayidx84, %if.end121.if.then124_crit_edge ]
  %32 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %runlist, align 4
  %sub.ptr.lhs.cast126 = ptrtoint ptr %rl.1303 to i32
  %sub.ptr.rhs.cast127 = ptrtoint ptr %33 to i32
  %sub.ptr.sub128 = sub i32 %sub.ptr.lhs.cast126, %sub.ptr.rhs.cast127
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, 4119
  %add.i = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %and.i = and i32 %add.i, -4096
  %add2.i = add i32 %sub.ptr.sub128, 4119
  %and3.i = and i32 %add2.i, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and3.i)
  %cmp.i = icmp eq i32 %and.i, %and3.i
  br i1 %cmp.i, label %if.then124.ntfs_rl_realloc.exit_crit_edge, label %if.end.i

if.then124.ntfs_rl_realloc.exit_crit_edge:        ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_realloc.exit

if.end.i:                                         ; preds = %if.then124
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %and3.i)
  %cmp.i.i.i = icmp ult i32 %and3.i, 4097
  br i1 %cmp.i.i.i, label %do.body.i.i.i, label %if.end16.i.i.i, !prof !81

do.body.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool2.not.i.i.i = icmp eq i32 %and3.i, 0
  br i1 %tobool2.not.i.i.i, label %do.body12.i.i.i, label %do.end15.i.i.i, !prof !80

do.body12.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end15.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3136, i32 noundef 4096) #9
  br label %ntfs_malloc_nofs.exit.i

if.end16.i.i.i:                                   ; preds = %if.end.i
  %shr.i.i.i = lshr i32 %add2.i, 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %35 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i, i32 %35)
  %cmp18.i.i.i = icmp ult i32 %shr.i.i.i, %35
  br i1 %cmp18.i.i.i, label %if.then25.i.i.i, label %if.end16.i.i.i.if.then134_crit_edge, !prof !81

if.end16.i.i.i.if.then134_crit_edge:              ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then134

if.then25.i.i.i:                                  ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i.i.i = tail call noalias ptr @__vmalloc(i32 noundef %and3.i, i32 noundef 3138) #10
  br label %ntfs_malloc_nofs.exit.i

ntfs_malloc_nofs.exit.i:                          ; preds = %if.then25.i.i.i, %do.end15.i.i.i
  %retval.0.i.i.i = phi ptr [ %call7.i.i.i.i, %do.end15.i.i.i ], [ %call26.i.i.i, %if.then25.i.i.i ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool.not.i, label %ntfs_malloc_nofs.exit.i.if.then134_crit_edge, label %if.end9.i, !prof !80

ntfs_malloc_nofs.exit.i.if.then134_crit_edge:     ; preds = %ntfs_malloc_nofs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then134

if.end9.i:                                        ; preds = %ntfs_malloc_nofs.exit.i
  %cmp10.not.i = icmp eq ptr %33, null
  br i1 %cmp10.not.i, label %if.end9.i.ntfs_rl_realloc.exit_crit_edge, label %if.then17.i, !prof !80

if.end9.i.ntfs_rl_realloc.exit_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_realloc.exit

if.then17.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and3.i)
  %cmp18.i = icmp sgt i32 %and.i, %and3.i
  br i1 %cmp18.i, label %if.then25.i, label %if.then17.i.if.end26.i_crit_edge, !prof !80

if.then17.i.if.end26.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %if.then17.i.if.end26.i_crit_edge
  %old_size.addr.0.i = phi i32 [ %and3.i, %if.then25.i ], [ %and.i, %if.then17.i.if.end26.i_crit_edge ]
  %36 = call ptr @memcpy(ptr %retval.0.i.i.i, ptr %33, i32 %old_size.addr.0.i)
  tail call void @kvfree(ptr noundef nonnull %33) #6
  br label %ntfs_rl_realloc.exit

ntfs_rl_realloc.exit:                             ; preds = %if.end26.i, %if.end9.i.ntfs_rl_realloc.exit_crit_edge, %if.then124.ntfs_rl_realloc.exit_crit_edge
  %retval.0.i = phi ptr [ %33, %if.then124.ntfs_rl_realloc.exit_crit_edge ], [ %retval.0.i.i.i, %if.end26.i ], [ %retval.0.i.i.i, %if.end9.i.ntfs_rl_realloc.exit_crit_edge ]
  %cmp.i266 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i266, label %ntfs_rl_realloc.exit.if.then134_crit_edge, label %if.else

ntfs_rl_realloc.exit.if.then134_crit_edge:        ; preds = %ntfs_rl_realloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then134

if.then134:                                       ; preds = %ntfs_rl_realloc.exit.if.then134_crit_edge, %ntfs_malloc_nofs.exit.i.if.then134_crit_edge, %if.end16.i.i.i.if.then134_crit_edge
  %37 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_rl_truncate_nolock, ptr noundef %38, ptr noundef nonnull @.str.24) #6
  br label %if.end190

if.else:                                          ; preds = %ntfs_rl_realloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %retval.0.i, ptr %runlist, align 4
  br label %if.end190

if.else139:                                       ; preds = %while.cond
  %40 = ptrtoint ptr %rl.0 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rl.0, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %new_length)
  %cmp141 = icmp slt i64 %41, %new_length
  br i1 %cmp141, label %if.then148, label %if.else187, !prof !81

if.then148:                                       ; preds = %if.else139
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1567, ptr noundef nonnull @__func__.ntfs_rl_truncate_nolock, ptr noundef nonnull @.str.25) #6
  %42 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %runlist, align 4
  %cmp150 = icmp ugt ptr %rl.0, %43
  br i1 %cmp150, label %land.lhs.true, label %if.then148.if.else160_crit_edge

if.then148.if.else160_crit_edge:                  ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else160

land.lhs.true:                                    ; preds = %if.then148
  %lcn152 = getelementptr %struct.runlist_element, ptr %rl.0, i32 -1, i32 1
  %44 = ptrtoint ptr %lcn152 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %lcn152, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %45)
  %cmp153 = icmp eq i64 %45, -1
  br i1 %cmp153, label %if.then154, label %land.lhs.true.if.else160_crit_edge

land.lhs.true.if.else160_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else160

if.then154:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr151 = getelementptr %struct.runlist_element, ptr %rl.0, i32 -1
  %46 = ptrtoint ptr %add.ptr151 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr151, align 8
  %sub157 = sub i64 %new_length, %47
  %length159 = getelementptr %struct.runlist_element, ptr %rl.0, i32 -1, i32 2
  %48 = ptrtoint ptr %length159 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %sub157, ptr %length159, align 8
  br label %if.end184

if.else160:                                       ; preds = %land.lhs.true.if.else160_crit_edge, %if.then148.if.else160_crit_edge
  %sub.ptr.lhs.cast162 = ptrtoint ptr %rl.0 to i32
  %sub.ptr.rhs.cast163 = ptrtoint ptr %43 to i32
  %sub.ptr.sub164 = sub i32 %sub.ptr.lhs.cast162, %sub.ptr.rhs.cast163
  %sub.ptr.div165 = sdiv exact i32 %sub.ptr.sub164, 24
  %add.i268 = add i32 %sub.ptr.sub164, 4119
  %and.i269 = and i32 %add.i268, -4096
  %add2.i271 = add i32 %sub.ptr.sub164, 4143
  %and3.i272 = and i32 %add2.i271, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i269, i32 %and3.i272)
  %cmp.i273 = icmp eq i32 %and.i269, %and3.i272
  br i1 %cmp.i273, label %if.else160.ntfs_rl_realloc.exit298_crit_edge, label %if.end.i275

if.else160.ntfs_rl_realloc.exit298_crit_edge:     ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_realloc.exit298

if.end.i275:                                      ; preds = %if.else160
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %and3.i272)
  %cmp.i.i.i274 = icmp ult i32 %and3.i272, 4097
  br i1 %cmp.i.i.i274, label %do.body.i.i.i277, label %if.end16.i.i.i284, !prof !81

do.body.i.i.i277:                                 ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i272)
  %tobool2.not.i.i.i276 = icmp eq i32 %and3.i272, 0
  br i1 %tobool2.not.i.i.i276, label %do.body12.i.i.i278, label %do.end15.i.i.i280, !prof !80

do.body12.i.i.i278:                               ; preds = %do.body.i.i.i277
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end15.i.i.i280:                                ; preds = %do.body.i.i.i277
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i279 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3136, i32 noundef 4096) #9
  br label %ntfs_malloc_nofs.exit.i289

if.end16.i.i.i284:                                ; preds = %if.end.i275
  %shr.i.i.i281 = lshr i32 %add2.i271, 12
  %call.i.i.i.i.i.i282 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %50 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i281, i32 %50)
  %cmp18.i.i.i283 = icmp ult i32 %shr.i.i.i281, %50
  br i1 %cmp18.i.i.i283, label %if.then25.i.i.i286, label %if.end16.i.i.i284.if.then171_crit_edge, !prof !81

if.end16.i.i.i284.if.then171_crit_edge:           ; preds = %if.end16.i.i.i284
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then171

if.then25.i.i.i286:                               ; preds = %if.end16.i.i.i284
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i.i.i285 = tail call noalias ptr @__vmalloc(i32 noundef %and3.i272, i32 noundef 3138) #10
  br label %ntfs_malloc_nofs.exit.i289

ntfs_malloc_nofs.exit.i289:                       ; preds = %if.then25.i.i.i286, %do.end15.i.i.i280
  %retval.0.i.i.i287 = phi ptr [ %call7.i.i.i.i279, %do.end15.i.i.i280 ], [ %call26.i.i.i285, %if.then25.i.i.i286 ]
  %tobool.not.i288 = icmp eq ptr %retval.0.i.i.i287, null
  br i1 %tobool.not.i288, label %ntfs_malloc_nofs.exit.i289.if.then171_crit_edge, label %if.end9.i291, !prof !80

ntfs_malloc_nofs.exit.i289.if.then171_crit_edge:  ; preds = %ntfs_malloc_nofs.exit.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then171

if.end9.i291:                                     ; preds = %ntfs_malloc_nofs.exit.i289
  %cmp10.not.i290 = icmp eq ptr %43, null
  br i1 %cmp10.not.i290, label %if.end9.i291.ntfs_rl_realloc.exit298_crit_edge, label %if.then17.i293, !prof !80

if.end9.i291.ntfs_rl_realloc.exit298_crit_edge:   ; preds = %if.end9.i291
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_realloc.exit298

if.then17.i293:                                   ; preds = %if.end9.i291
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i269, i32 %and3.i272)
  %cmp18.i292 = icmp sgt i32 %and.i269, %and3.i272
  br i1 %cmp18.i292, label %if.then25.i294, label %if.then17.i293.if.end26.i296_crit_edge, !prof !80

if.then17.i293.if.end26.i296_crit_edge:           ; preds = %if.then17.i293
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i296

if.then25.i294:                                   ; preds = %if.then17.i293
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i296

if.end26.i296:                                    ; preds = %if.then25.i294, %if.then17.i293.if.end26.i296_crit_edge
  %old_size.addr.0.i295 = phi i32 [ %and3.i272, %if.then25.i294 ], [ %and.i269, %if.then17.i293.if.end26.i296_crit_edge ]
  %51 = call ptr @memcpy(ptr %retval.0.i.i.i287, ptr %43, i32 %old_size.addr.0.i295)
  tail call void @kvfree(ptr noundef nonnull %43) #6
  br label %ntfs_rl_realloc.exit298

ntfs_rl_realloc.exit298:                          ; preds = %if.end26.i296, %if.end9.i291.ntfs_rl_realloc.exit298_crit_edge, %if.else160.ntfs_rl_realloc.exit298_crit_edge
  %retval.0.i297 = phi ptr [ %43, %if.else160.ntfs_rl_realloc.exit298_crit_edge ], [ %retval.0.i.i.i287, %if.end26.i296 ], [ %retval.0.i.i.i287, %if.end9.i291.ntfs_rl_realloc.exit298_crit_edge ]
  %cmp.i299 = icmp ugt ptr %retval.0.i297, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i299, label %ntfs_rl_realloc.exit298.if.then171_crit_edge, label %if.end174

ntfs_rl_realloc.exit298.if.then171_crit_edge:     ; preds = %ntfs_rl_realloc.exit298
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then171

if.then171:                                       ; preds = %ntfs_rl_realloc.exit298.if.then171_crit_edge, %ntfs_malloc_nofs.exit.i289.if.then171_crit_edge, %if.end16.i.i.i284.if.then171_crit_edge
  %retval.0.i297308 = phi ptr [ %retval.0.i297, %ntfs_rl_realloc.exit298.if.then171_crit_edge ], [ inttoptr (i32 -12 to ptr), %ntfs_malloc_nofs.exit.i289.if.then171_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end16.i.i.i284.if.then171_crit_edge ]
  %52 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_rl_truncate_nolock, ptr noundef %53, ptr noundef nonnull @.str.26) #6
  %54 = ptrtoint ptr %retval.0.i297308 to i32
  br label %cleanup

if.end174:                                        ; preds = %ntfs_rl_realloc.exit298
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %retval.0.i297, ptr %runlist, align 4
  %add.ptr177 = getelementptr %struct.runlist_element, ptr %retval.0.i297, i32 %sub.ptr.div165
  %lcn178 = getelementptr %struct.runlist_element, ptr %retval.0.i297, i32 %sub.ptr.div165, i32 1
  %56 = ptrtoint ptr %lcn178 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 -1, ptr %lcn178, align 8
  %57 = ptrtoint ptr %add.ptr177 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %add.ptr177, align 8
  %sub180 = sub i64 %new_length, %58
  %length181 = getelementptr %struct.runlist_element, ptr %retval.0.i297, i32 %sub.ptr.div165, i32 2
  %59 = ptrtoint ptr %length181 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %sub180, ptr %length181, align 8
  %incdec.ptr182 = getelementptr %struct.runlist_element, ptr %add.ptr177, i32 1
  %length183 = getelementptr inbounds %struct.runlist_element, ptr %incdec.ptr182, i32 0, i32 2
  %60 = ptrtoint ptr %length183 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %length183, align 8
  br label %if.end184

if.end184:                                        ; preds = %if.end174, %if.then154
  %rl.2 = phi ptr [ %rl.0, %if.then154 ], [ %incdec.ptr182, %if.end174 ]
  %61 = ptrtoint ptr %rl.2 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %new_length, ptr %rl.2, align 8
  %lcn186 = getelementptr inbounds %struct.runlist_element, ptr %rl.2, i32 0, i32 1
  %62 = ptrtoint ptr %lcn186 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 -3, ptr %lcn186, align 8
  br label %if.end190

if.else187:                                       ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #8
  %lcn188 = getelementptr inbounds %struct.runlist_element, ptr %rl.0, i32 0, i32 1
  %63 = ptrtoint ptr %lcn188 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 -3, ptr %lcn188, align 8
  br label %if.end190

if.end190:                                        ; preds = %if.else187, %if.end184, %if.else, %if.then134, %if.end121.if.end190_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1605, ptr noundef nonnull @__func__.ntfs_rl_truncate_nolock, ptr noundef nonnull @.str.27) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end190, %if.then171, %if.end55, %if.then54, %if.then32, %if.then29.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then54 ], [ 0, %if.end55 ], [ 0, %if.end190 ], [ %54, %if.then171 ], [ 0, %if.then32 ], [ 0, %if.then29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_rl_punch_nolock(ptr nocapture noundef readonly %vol, ptr noundef %runlist, i64 noundef %start, i64 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i64 %length, %start
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1640, ptr noundef nonnull @__func__.ntfs_rl_punch_nolock, ptr noundef nonnull @.str.28, i64 noundef %start, i64 noundef %length) #6
  %tobool.not = icmp eq ptr %runlist, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !80

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1641, 0\0A.popsection", ""() #6, !srcloc !107
  unreachable

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %start)
  %cmp = icmp slt i64 %start, 0
  br i1 %cmp, label %do.body18, label %do.body27, !prof !80

do.body18:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1642, 0\0A.popsection", ""() #6, !srcloc !108
  unreachable

do.body27:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length)
  %cmp28 = icmp slt i64 %length, 0
  br i1 %cmp28, label %do.body36, label %do.body45, !prof !80

do.body36:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1643, 0\0A.popsection", ""() #6, !srcloc !109
  unreachable

do.body45:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp46 = icmp slt i64 %add, 0
  br i1 %cmp46, label %do.body54, label %do.end62, !prof !80

do.body54:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1644, 0\0A.popsection", ""() #6, !srcloc !110
  unreachable

do.end62:                                         ; preds = %do.body45
  %0 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runlist, align 4
  %tobool64.not = icmp eq ptr %1, null
  br i1 %tobool64.not, label %if.then73, label %do.end62.while.cond_crit_edge, !prof !80

do.end62.while.cond_crit_edge:                    ; preds = %do.end62
  br label %while.cond

if.then73:                                        ; preds = %do.end62
  %2 = or i64 %length, %start
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %if.then73.cleanup_crit_edge, label %if.end85, !prof !81

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end85:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond:                                       ; preds = %land.rhs89.while.cond_crit_edge, %do.end62.while.cond_crit_edge
  %rl.0 = phi ptr [ %arrayidx, %land.rhs89.while.cond_crit_edge ], [ %1, %do.end62.while.cond_crit_edge ]
  %length87 = getelementptr inbounds %struct.runlist_element, ptr %rl.0, i32 0, i32 2
  %4 = ptrtoint ptr %length87 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %length87, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool88.not = icmp eq i64 %5, 0
  br i1 %tobool88.not, label %while.cond.while.cond98.preheader_crit_edge, label %land.rhs89, !prof !80

while.cond.while.cond98.preheader_crit_edge:      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond98.preheader

land.rhs89:                                       ; preds = %while.cond
  %arrayidx = getelementptr %struct.runlist_element, ptr %rl.0, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %cmp90.not = icmp sgt i64 %7, %start
  br i1 %cmp90.not, label %land.rhs89.while.cond98.preheader_crit_edge, label %land.rhs89.while.cond_crit_edge, !prof !80

land.rhs89.while.cond_crit_edge:                  ; preds = %land.rhs89
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

land.rhs89.while.cond98.preheader_crit_edge:      ; preds = %land.rhs89
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond98.preheader

while.cond98.preheader:                           ; preds = %land.rhs89.while.cond98.preheader_crit_edge, %while.cond.while.cond98.preheader_crit_edge
  br label %while.cond98

while.cond98:                                     ; preds = %while.body112.while.cond98_crit_edge, %while.cond98.preheader
  %rl_end.0 = phi ptr [ %arrayidx102, %while.body112.while.cond98_crit_edge ], [ %rl.0, %while.cond98.preheader ]
  %length99 = getelementptr inbounds %struct.runlist_element, ptr %rl_end.0, i32 0, i32 2
  %8 = ptrtoint ptr %length99 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %length99, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool100.not = icmp eq i64 %9, 0
  br i1 %tobool100.not, label %land.lhs.true, label %land.rhs101, !prof !80

land.rhs101:                                      ; preds = %while.cond98
  %arrayidx102 = getelementptr %struct.runlist_element, ptr %rl_end.0, i32 1
  %10 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx102, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %11)
  %cmp104.not = icmp slt i64 %add, %11
  %lcn127 = getelementptr inbounds %struct.runlist_element, ptr %rl_end.0, i32 0, i32 1
  %12 = ptrtoint ptr %lcn127 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %lcn127, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %cmp128 = icmp slt i64 %13, -1
  br i1 %cmp104.not, label %land.rhs126, label %while.body112, !prof !80

while.body112:                                    ; preds = %land.rhs101
  br i1 %cmp128, label %while.body112.cleanup_crit_edge, label %while.body112.while.cond98_crit_edge, !prof !80

while.body112.while.cond98_crit_edge:             ; preds = %while.body112
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond98

while.body112.cleanup_crit_edge:                  ; preds = %while.body112
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs126:                                      ; preds = %land.rhs101
  br i1 %cmp128, label %land.rhs126.cleanup_crit_edge, label %land.rhs126.if.end143_crit_edge, !prof !80

land.rhs126.if.end143_crit_edge:                  ; preds = %land.rhs126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end143

land.rhs126.cleanup_crit_edge:                    ; preds = %land.rhs126
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %while.cond98
  %14 = ptrtoint ptr %rl_end.0 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rl_end.0, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %15)
  %cmp141 = icmp sgt i64 %add, %15
  br i1 %cmp141, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end143_crit_edge

land.lhs.true.if.end143_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end143

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end143:                                        ; preds = %land.lhs.true.if.end143_crit_edge, %land.rhs126.if.end143_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length)
  %tobool144.not = icmp eq i64 %length, 0
  %brmerge722 = select i1 %tobool144.not, i1 true, i1 %tobool88.not
  %.mux = select i1 %tobool144.not, i32 0, i32 -2
  br i1 %brmerge722, label %if.end143.cleanup_crit_edge, label %if.end143.while.cond151_crit_edge

if.end143.while.cond151_crit_edge:                ; preds = %if.end143
  br label %while.cond151

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond151:                                    ; preds = %while.cond151.while.cond151_crit_edge, %if.end143.while.cond151_crit_edge
  %rl_real_end.0 = phi ptr [ %incdec.ptr161, %while.cond151.while.cond151_crit_edge ], [ %rl_end.0, %if.end143.while.cond151_crit_edge ]
  %length152 = getelementptr inbounds %struct.runlist_element, ptr %rl_real_end.0, i32 0, i32 2
  %16 = ptrtoint ptr %length152 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %length152, align 8
  %tobool153.not = icmp eq i64 %17, 0
  %incdec.ptr161 = getelementptr %struct.runlist_element, ptr %rl_real_end.0, i32 1
  br i1 %tobool153.not, label %while.end162, label %while.cond151.while.cond151_crit_edge, !prof !80

while.cond151.while.cond151_crit_edge:            ; preds = %while.cond151
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond151

while.end162:                                     ; preds = %while.cond151
  %sub.ptr.lhs.cast = ptrtoint ptr %rl_real_end.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %add164 = add nsw i32 %sub.ptr.div, 1
  %lcn165 = getelementptr inbounds %struct.runlist_element, ptr %rl.0, i32 0, i32 1
  %18 = ptrtoint ptr %lcn165 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %lcn165, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %19)
  %cmp166 = icmp eq i64 %19, -1
  br i1 %cmp166, label %if.then167, label %if.end221

if.then167:                                       ; preds = %while.end162
  %arrayidx168 = getelementptr %struct.runlist_element, ptr %rl.0, i32 1
  %20 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx168, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %21)
  %cmp170.not = icmp sgt i64 %add, %21
  br i1 %cmp170.not, label %if.then167.extend_hole_crit_edge, label %if.then171

if.then167.extend_hole_crit_edge:                 ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #8
  br label %extend_hole

if.then171:                                       ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1684, ptr noundef nonnull @__func__.ntfs_rl_punch_nolock, ptr noundef nonnull @.str.29) #6
  br label %cleanup

extend_hole:                                      ; preds = %if.then323, %if.then236, %if.then230, %if.then167.extend_hole_crit_edge
  %rl.1 = phi ptr [ %rl.0, %if.then167.extend_hole_crit_edge ], [ %add.ptr, %if.then230 ], [ %rl.0, %if.then236 ], [ %arrayidx312, %if.then323 ]
  %22 = ptrtoint ptr %rl.1 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rl.1, align 8
  %sub = sub i64 %add, %23
  %length174 = getelementptr inbounds %struct.runlist_element, ptr %rl.1, i32 0, i32 2
  %24 = ptrtoint ptr %length174 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %sub, ptr %length174, align 8
  %lcn175 = getelementptr inbounds %struct.runlist_element, ptr %rl_end.0, i32 0, i32 1
  %25 = ptrtoint ptr %lcn175 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %lcn175, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %26)
  %cmp176 = icmp eq i64 %26, -1
  br i1 %cmp176, label %if.then177, label %extend_hole.if.end183_crit_edge

extend_hole.if.end183_crit_edge:                  ; preds = %extend_hole
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183

if.then177:                                       ; preds = %extend_hole
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr178 = getelementptr %struct.runlist_element, ptr %rl_end.0, i32 1
  %27 = ptrtoint ptr %incdec.ptr178 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %incdec.ptr178, align 8
  %sub181 = sub i64 %28, %23
  %29 = ptrtoint ptr %length174 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %sub181, ptr %length174, align 8
  br label %if.end183

if.end183:                                        ; preds = %if.then177, %extend_hole.if.end183_crit_edge
  %rl_end.1 = phi ptr [ %incdec.ptr178, %if.then177 ], [ %rl_end.0, %extend_hole.if.end183_crit_edge ]
  %incdec.ptr184 = getelementptr %struct.runlist_element, ptr %rl.1, i32 1
  %cmp185 = icmp ult ptr %incdec.ptr184, %rl_end.1
  br i1 %cmp185, label %if.then186, label %if.end183.if.end192_crit_edge

if.end183.if.end192_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end192

if.then186:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.rhs.cast188 = ptrtoint ptr %rl_end.1 to i32
  %sub.ptr.sub189 = add i32 %sub.ptr.lhs.cast, 24
  %mul = sub i32 %sub.ptr.sub189, %sub.ptr.rhs.cast188
  %30 = call ptr @memmove(ptr %incdec.ptr184, ptr %rl_end.1, i32 %mul)
  br label %if.end192

if.end192:                                        ; preds = %if.then186, %if.end183.if.end192_crit_edge
  %31 = ptrtoint ptr %incdec.ptr184 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %incdec.ptr184, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %32)
  %cmp194 = icmp sgt i64 %add, %32
  br i1 %cmp194, label %if.then195, label %if.end192.shrink_allocation_crit_edge

if.end192.shrink_allocation_crit_edge:            ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #8
  br label %shrink_allocation

if.then195:                                       ; preds = %if.end192
  %sub197 = sub i64 %add, %32
  %33 = ptrtoint ptr %incdec.ptr184 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add, ptr %incdec.ptr184, align 8
  %length199 = getelementptr %struct.runlist_element, ptr %rl.1, i32 1, i32 2
  %34 = ptrtoint ptr %length199 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %length199, align 8
  %sub200 = sub i64 %35, %sub197
  store i64 %sub200, ptr %length199, align 8
  %lcn201 = getelementptr %struct.runlist_element, ptr %rl.1, i32 1, i32 1
  %36 = ptrtoint ptr %lcn201 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %lcn201, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %37)
  %cmp202 = icmp sgt i64 %37, -1
  br i1 %cmp202, label %if.then203, label %if.then195.shrink_allocation_crit_edge

if.then195.shrink_allocation_crit_edge:           ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #8
  br label %shrink_allocation

if.then203:                                       ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #8
  %add205 = add i64 %37, %sub197
  %38 = ptrtoint ptr %lcn201 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %add205, ptr %lcn201, align 8
  br label %shrink_allocation

shrink_allocation:                                ; preds = %if.end305, %if.then203, %if.then195.shrink_allocation_crit_edge, %if.end192.shrink_allocation_crit_edge
  %rl.2 = phi ptr [ %incdec.ptr184, %if.then203 ], [ %incdec.ptr184, %if.then195.shrink_allocation_crit_edge ], [ %incdec.ptr184, %if.end192.shrink_allocation_crit_edge ], [ %incdec.ptr296, %if.end305 ]
  %rl_end.2 = phi ptr [ %rl_end.1, %if.then203 ], [ %rl_end.1, %if.then195.shrink_allocation_crit_edge ], [ %rl_end.1, %if.end192.shrink_allocation_crit_edge ], [ %rl_end.0, %if.end305 ]
  %cmp208 = icmp ult ptr %rl.2, %rl_end.2
  br i1 %cmp208, label %if.then209, label %shrink_allocation.if.end220_crit_edge

shrink_allocation.if.end220_crit_edge:            ; preds = %shrink_allocation
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end220

if.then209:                                       ; preds = %shrink_allocation
  %39 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %runlist, align 4
  %sub.ptr.lhs.cast211 = ptrtoint ptr %rl_end.2 to i32
  %sub.ptr.rhs.cast212 = ptrtoint ptr %rl.2 to i32
  %sub.ptr.sub213 = sub i32 %sub.ptr.lhs.cast211, %sub.ptr.rhs.cast212
  %sub.ptr.div214.neg = sdiv exact i32 %sub.ptr.sub213, -24
  %sub215 = add nsw i32 %sub.ptr.div214.neg, %add164
  %add.i = add i32 %sub.ptr.sub, 4119
  %and.i = and i32 %add.i, -4096
  %mul1.i = mul i32 %sub215, 24
  %add2.i = add i32 %mul1.i, 4095
  %and3.i = and i32 %add2.i, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and3.i)
  %cmp.i = icmp eq i32 %and.i, %and3.i
  br i1 %cmp.i, label %if.then209.ntfs_rl_realloc.exit_crit_edge, label %if.end.i

if.then209.ntfs_rl_realloc.exit_crit_edge:        ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_realloc.exit

if.end.i:                                         ; preds = %if.then209
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %and3.i)
  %cmp.i.i.i = icmp ult i32 %and3.i, 4097
  br i1 %cmp.i.i.i, label %do.body.i.i.i, label %if.end16.i.i.i, !prof !81

do.body.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool2.not.i.i.i = icmp eq i32 %and3.i, 0
  br i1 %tobool2.not.i.i.i, label %do.body12.i.i.i, label %do.end15.i.i.i, !prof !80

do.body12.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end15.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3136, i32 noundef 4096) #9
  br label %ntfs_malloc_nofs.exit.i

if.end16.i.i.i:                                   ; preds = %if.end.i
  %shr.i.i.i = lshr i32 %add2.i, 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %42 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i, i32 %42)
  %cmp18.i.i.i = icmp ult i32 %shr.i.i.i, %42
  br i1 %cmp18.i.i.i, label %if.then25.i.i.i, label %if.end16.i.i.i.if.then217_crit_edge, !prof !81

if.end16.i.i.i.if.then217_crit_edge:              ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then217

if.then25.i.i.i:                                  ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i.i.i = tail call noalias ptr @__vmalloc(i32 noundef %and3.i, i32 noundef 3138) #10
  br label %ntfs_malloc_nofs.exit.i

ntfs_malloc_nofs.exit.i:                          ; preds = %if.then25.i.i.i, %do.end15.i.i.i
  %retval.0.i.i.i = phi ptr [ %call7.i.i.i.i, %do.end15.i.i.i ], [ %call26.i.i.i, %if.then25.i.i.i ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool.not.i, label %ntfs_malloc_nofs.exit.i.if.then217_crit_edge, label %if.end9.i, !prof !80

ntfs_malloc_nofs.exit.i.if.then217_crit_edge:     ; preds = %ntfs_malloc_nofs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then217

if.end9.i:                                        ; preds = %ntfs_malloc_nofs.exit.i
  %cmp10.not.i = icmp eq ptr %40, null
  br i1 %cmp10.not.i, label %if.end9.i.ntfs_rl_realloc.exit_crit_edge, label %if.then17.i, !prof !80

if.end9.i.ntfs_rl_realloc.exit_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_realloc.exit

if.then17.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and3.i)
  %cmp18.i = icmp sgt i32 %and.i, %and3.i
  br i1 %cmp18.i, label %if.then25.i, label %if.then17.i.if.end26.i_crit_edge, !prof !80

if.then17.i.if.end26.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %if.then17.i.if.end26.i_crit_edge
  %old_size.addr.0.i = phi i32 [ %and3.i, %if.then25.i ], [ %and.i, %if.then17.i.if.end26.i_crit_edge ]
  %43 = call ptr @memcpy(ptr %retval.0.i.i.i, ptr %40, i32 %old_size.addr.0.i)
  tail call void @kvfree(ptr noundef nonnull %40) #6
  br label %ntfs_rl_realloc.exit

ntfs_rl_realloc.exit:                             ; preds = %if.end26.i, %if.end9.i.ntfs_rl_realloc.exit_crit_edge, %if.then209.ntfs_rl_realloc.exit_crit_edge
  %retval.0.i = phi ptr [ %40, %if.then209.ntfs_rl_realloc.exit_crit_edge ], [ %retval.0.i.i.i, %if.end26.i ], [ %retval.0.i.i.i, %if.end9.i.ntfs_rl_realloc.exit_crit_edge ]
  %cmp.i648 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i648, label %ntfs_rl_realloc.exit.if.then217_crit_edge, label %if.else

ntfs_rl_realloc.exit.if.then217_crit_edge:        ; preds = %ntfs_rl_realloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then217

if.then217:                                       ; preds = %ntfs_rl_realloc.exit.if.then217_crit_edge, %ntfs_malloc_nofs.exit.i.if.then217_crit_edge, %if.end16.i.i.i.if.then217_crit_edge
  %44 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_rl_punch_nolock, ptr noundef %45, ptr noundef nonnull @.str.24) #6
  br label %if.end220

if.else:                                          ; preds = %ntfs_rl_realloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %retval.0.i, ptr %runlist, align 4
  br label %if.end220

if.end220:                                        ; preds = %if.else, %if.then217, %shrink_allocation.if.end220_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1724, ptr noundef nonnull @__func__.ntfs_rl_punch_nolock, ptr noundef nonnull @.str.30) #6
  br label %cleanup

if.end221:                                        ; preds = %while.end162
  %47 = ptrtoint ptr %rl.0 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %rl.0, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %start)
  %cmp223 = icmp eq i64 %48, %start
  br i1 %cmp223, label %if.then224, label %if.end289

if.then224:                                       ; preds = %if.end221
  %cmp226 = icmp ugt ptr %rl.0, %1
  br i1 %cmp226, label %land.lhs.true227, label %if.then224.if.end232_crit_edge

if.then224.if.end232_crit_edge:                   ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end232

land.lhs.true227:                                 ; preds = %if.then224
  %lcn228 = getelementptr %struct.runlist_element, ptr %rl.0, i32 -1, i32 1
  %49 = ptrtoint ptr %lcn228 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %lcn228, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %50)
  %cmp229 = icmp eq i64 %50, -1
  br i1 %cmp229, label %if.then230, label %land.lhs.true227.if.end232_crit_edge

land.lhs.true227.if.end232_crit_edge:             ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end232

if.then230:                                       ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr %struct.runlist_element, ptr %rl.0, i32 -1
  br label %extend_hole

if.end232:                                        ; preds = %land.lhs.true227.if.end232_crit_edge, %if.then224.if.end232_crit_edge
  %arrayidx233 = getelementptr %struct.runlist_element, ptr %rl.0, i32 1
  %51 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx233, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %52)
  %cmp235.not = icmp slt i64 %add, %52
  br i1 %cmp235.not, label %if.end238, label %if.then236

if.then236:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %lcn165 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 -1, ptr %lcn165, align 8
  br label %extend_hole

if.end238:                                        ; preds = %if.end232
  %add.i650 = add i32 %sub.ptr.sub, 4119
  %and.i651 = and i32 %add.i650, -4096
  %add2.i653 = add i32 %sub.ptr.sub, 4143
  %and3.i654 = and i32 %add2.i653, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i651, i32 %and3.i654)
  %cmp.i655 = icmp eq i32 %and.i651, %and3.i654
  br i1 %cmp.i655, label %if.end238.ntfs_rl_realloc.exit680_crit_edge, label %if.end.i657

if.end238.ntfs_rl_realloc.exit680_crit_edge:      ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_realloc.exit680

if.end.i657:                                      ; preds = %if.end238
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %and3.i654)
  %cmp.i.i.i656 = icmp ult i32 %and3.i654, 4097
  br i1 %cmp.i.i.i656, label %do.body.i.i.i659, label %if.end16.i.i.i666, !prof !81

do.body.i.i.i659:                                 ; preds = %if.end.i657
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i654)
  %tobool2.not.i.i.i658 = icmp eq i32 %and3.i654, 0
  br i1 %tobool2.not.i.i.i658, label %do.body12.i.i.i660, label %do.end15.i.i.i662, !prof !80

do.body12.i.i.i660:                               ; preds = %do.body.i.i.i659
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end15.i.i.i662:                                ; preds = %do.body.i.i.i659
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i661 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3136, i32 noundef 4096) #9
  br label %ntfs_malloc_nofs.exit.i671

if.end16.i.i.i666:                                ; preds = %if.end.i657
  %shr.i.i.i663 = lshr i32 %add2.i653, 12
  %call.i.i.i.i.i.i664 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %55 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i663, i32 %55)
  %cmp18.i.i.i665 = icmp ult i32 %shr.i.i.i663, %55
  br i1 %cmp18.i.i.i665, label %if.then25.i.i.i668, label %if.end16.i.i.i666.enomem_out_crit_edge, !prof !81

if.end16.i.i.i666.enomem_out_crit_edge:           ; preds = %if.end16.i.i.i666
  call void @__sanitizer_cov_trace_pc() #8
  br label %enomem_out

if.then25.i.i.i668:                               ; preds = %if.end16.i.i.i666
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i.i.i667 = tail call noalias ptr @__vmalloc(i32 noundef %and3.i654, i32 noundef 3138) #10
  br label %ntfs_malloc_nofs.exit.i671

ntfs_malloc_nofs.exit.i671:                       ; preds = %if.then25.i.i.i668, %do.end15.i.i.i662
  %retval.0.i.i.i669 = phi ptr [ %call7.i.i.i.i661, %do.end15.i.i.i662 ], [ %call26.i.i.i667, %if.then25.i.i.i668 ]
  %tobool.not.i670 = icmp eq ptr %retval.0.i.i.i669, null
  br i1 %tobool.not.i670, label %ntfs_malloc_nofs.exit.i671.enomem_out_crit_edge, label %if.then17.i675, !prof !80

ntfs_malloc_nofs.exit.i671.enomem_out_crit_edge:  ; preds = %ntfs_malloc_nofs.exit.i671
  call void @__sanitizer_cov_trace_pc() #8
  br label %enomem_out

if.then17.i675:                                   ; preds = %ntfs_malloc_nofs.exit.i671
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i651, i32 %and3.i654)
  %cmp18.i674 = icmp sgt i32 %and.i651, %and3.i654
  br i1 %cmp18.i674, label %if.then25.i676, label %if.then17.i675.if.end26.i678_crit_edge, !prof !80

if.then17.i675.if.end26.i678_crit_edge:           ; preds = %if.then17.i675
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i678

if.then25.i676:                                   ; preds = %if.then17.i675
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i678

if.end26.i678:                                    ; preds = %if.then25.i676, %if.then17.i675.if.end26.i678_crit_edge
  %old_size.addr.0.i677 = phi i32 [ %and3.i654, %if.then25.i676 ], [ %and.i651, %if.then17.i675.if.end26.i678_crit_edge ]
  %56 = call ptr @memcpy(ptr %retval.0.i.i.i669, ptr %1, i32 %old_size.addr.0.i677)
  tail call void @kvfree(ptr noundef nonnull %1) #6
  br label %ntfs_rl_realloc.exit680

ntfs_rl_realloc.exit680:                          ; preds = %if.end26.i678, %if.end238.ntfs_rl_realloc.exit680_crit_edge
  %retval.0.i679 = phi ptr [ %1, %if.end238.ntfs_rl_realloc.exit680_crit_edge ], [ %retval.0.i.i.i669, %if.end26.i678 ]
  %cmp.i681 = icmp ugt ptr %retval.0.i679, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i681, label %ntfs_rl_realloc.exit680.enomem_out_crit_edge, label %if.end244

ntfs_rl_realloc.exit680.enomem_out_crit_edge:     ; preds = %ntfs_rl_realloc.exit680
  call void @__sanitizer_cov_trace_pc() #8
  br label %enomem_out

if.end244:                                        ; preds = %ntfs_rl_realloc.exit680
  %57 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %runlist, align 4
  %cmp246.not = icmp eq ptr %58, %retval.0.i679
  br i1 %cmp246.not, label %if.end244.split_end_crit_edge, label %if.then247

if.end244.split_end_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %split_end

if.then247:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.lhs.cast249 = ptrtoint ptr %rl.0 to i32
  %sub.ptr.rhs.cast250 = ptrtoint ptr %58 to i32
  %sub.ptr.sub251 = sub i32 %sub.ptr.lhs.cast249, %sub.ptr.rhs.cast250
  %sub.ptr.div252 = sdiv exact i32 %sub.ptr.sub251, 24
  %add.ptr253 = getelementptr %struct.runlist_element, ptr %retval.0.i679, i32 %sub.ptr.div252
  %sub.ptr.sub263 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast250
  %sub.ptr.div264 = sdiv exact i32 %sub.ptr.sub263, 24
  %add.ptr265 = getelementptr %struct.runlist_element, ptr %retval.0.i679, i32 %sub.ptr.div264
  %59 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %retval.0.i679, ptr %runlist, align 4
  br label %split_end

split_end:                                        ; preds = %if.end373, %if.then247, %if.end244.split_end_crit_edge
  %rl.3 = phi ptr [ %add.ptr253, %if.then247 ], [ %rl.0, %if.end244.split_end_crit_edge ], [ %incdec.ptr364, %if.end373 ]
  %rl_real_end.1 = phi ptr [ %add.ptr265, %if.then247 ], [ %rl_real_end.0, %if.end244.split_end_crit_edge ], [ %rl_real_end.2, %if.end373 ]
  %lcn_fixup.0.off0 = phi i1 [ false, %if.then247 ], [ false, %if.end244.split_end_crit_edge ], [ %cmp369, %if.end373 ]
  %add.ptr268 = getelementptr %struct.runlist_element, ptr %rl.3, i32 1
  %sub.ptr.lhs.cast269 = ptrtoint ptr %rl_real_end.1 to i32
  %sub.ptr.rhs.cast270 = ptrtoint ptr %rl.3 to i32
  %sub.ptr.sub271 = sub i32 24, %sub.ptr.rhs.cast270
  %mul274 = add i32 %sub.ptr.sub271, %sub.ptr.lhs.cast269
  %60 = call ptr @memmove(ptr %add.ptr268, ptr %rl.3, i32 %mul274)
  %lcn275 = getelementptr inbounds %struct.runlist_element, ptr %rl.3, i32 0, i32 1
  %61 = ptrtoint ptr %lcn275 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 -1, ptr %lcn275, align 8
  %length276 = getelementptr inbounds %struct.runlist_element, ptr %rl.3, i32 0, i32 2
  %62 = ptrtoint ptr %length276 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %length, ptr %length276, align 8
  %63 = ptrtoint ptr %add.ptr268 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %add.ptr268, align 8
  %add279 = add i64 %64, %length
  store i64 %add279, ptr %add.ptr268, align 8
  %lcn280 = getelementptr %struct.runlist_element, ptr %rl.3, i32 1, i32 1
  %65 = ptrtoint ptr %lcn280 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %lcn280, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %66)
  %cmp281 = icmp sgt i64 %66, -1
  %brmerge = select i1 %cmp281, i1 true, i1 %lcn_fixup.0.off0
  br i1 %brmerge, label %if.then283, label %split_end.if.end286_crit_edge

split_end.if.end286_crit_edge:                    ; preds = %split_end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end286

if.then283:                                       ; preds = %split_end
  call void @__sanitizer_cov_trace_pc() #8
  %add285 = add i64 %66, %length
  %67 = ptrtoint ptr %lcn280 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %add285, ptr %lcn280, align 8
  br label %if.end286

if.end286:                                        ; preds = %if.then283, %split_end.if.end286_crit_edge
  %length287 = getelementptr %struct.runlist_element, ptr %rl.3, i32 1, i32 2
  %68 = ptrtoint ptr %length287 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %length287, align 8
  %sub288 = sub i64 %69, %length
  store i64 %sub288, ptr %length287, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1780, ptr noundef nonnull @__func__.ntfs_rl_punch_nolock, ptr noundef nonnull @.str.31) #6
  br label %cleanup

if.end289:                                        ; preds = %if.end221
  %lcn290 = getelementptr inbounds %struct.runlist_element, ptr %rl_end.0, i32 0, i32 1
  %70 = ptrtoint ptr %lcn290 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %lcn290, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %71)
  %cmp291 = icmp eq i64 %71, -1
  br i1 %cmp291, label %if.then292, label %if.end311

if.then292:                                       ; preds = %if.end289
  %sub294 = sub i64 %start, %48
  %72 = ptrtoint ptr %length87 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %sub294, ptr %length87, align 8
  %incdec.ptr296 = getelementptr %struct.runlist_element, ptr %rl.0, i32 1
  %cmp297 = icmp ult ptr %incdec.ptr296, %rl_end.0
  br i1 %cmp297, label %if.then298, label %if.then292.if.end305_crit_edge

if.then292.if.end305_crit_edge:                   ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end305

if.then298:                                       ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.rhs.cast300 = ptrtoint ptr %rl_end.0 to i32
  %sub.ptr.sub301 = sub i32 24, %sub.ptr.rhs.cast300
  %mul304 = add i32 %sub.ptr.sub301, %sub.ptr.lhs.cast
  %73 = call ptr @memmove(ptr %incdec.ptr296, ptr %rl_end.0, i32 %mul304)
  br label %if.end305

if.end305:                                        ; preds = %if.then298, %if.then292.if.end305_crit_edge
  %74 = ptrtoint ptr %incdec.ptr296 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %start, ptr %incdec.ptr296, align 8
  %arrayidx307 = getelementptr %struct.runlist_element, ptr %rl.0, i32 2
  %75 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx307, align 8
  %sub309 = sub i64 %76, %start
  %length310 = getelementptr %struct.runlist_element, ptr %rl.0, i32 1, i32 2
  %77 = ptrtoint ptr %length310 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %sub309, ptr %length310, align 8
  br label %shrink_allocation

if.end311:                                        ; preds = %if.end289
  %arrayidx312 = getelementptr %struct.runlist_element, ptr %rl.0, i32 1
  %78 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx312, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %79)
  %cmp314.not = icmp slt i64 %add, %79
  br i1 %cmp314.not, label %if.end376, label %if.then315

if.then315:                                       ; preds = %if.end311
  %length317 = getelementptr %struct.runlist_element, ptr %rl.0, i32 1, i32 2
  %80 = ptrtoint ptr %length317 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %length317, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %81)
  %tobool318.not = icmp eq i64 %81, 0
  br i1 %tobool318.not, label %if.then315.if.end330_crit_edge, label %land.lhs.true319

if.then315.if.end330_crit_edge:                   ; preds = %if.then315
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

land.lhs.true319:                                 ; preds = %if.then315
  %arrayidx320 = getelementptr %struct.runlist_element, ptr %rl.0, i32 2
  %82 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx320, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %83)
  %cmp322.not = icmp slt i64 %add, %83
  br i1 %cmp322.not, label %land.lhs.true319.if.end330_crit_edge, label %if.then323

land.lhs.true319.if.end330_crit_edge:             ; preds = %land.lhs.true319
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

if.then323:                                       ; preds = %land.lhs.true319
  call void @__sanitizer_cov_trace_pc() #8
  %sub325 = sub i64 %start, %48
  %84 = ptrtoint ptr %length87 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %sub325, ptr %length87, align 8
  %85 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %start, ptr %arrayidx312, align 8
  %lcn329 = getelementptr %struct.runlist_element, ptr %rl.0, i32 1, i32 1
  %86 = ptrtoint ptr %lcn329 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 -1, ptr %lcn329, align 8
  br label %extend_hole

if.end330:                                        ; preds = %land.lhs.true319.if.end330_crit_edge, %if.then315.if.end330_crit_edge
  %add332 = add nsw i32 %sub.ptr.div, 2
  %call333 = tail call fastcc ptr @ntfs_rl_realloc(ptr noundef nonnull %1, i32 noundef %add164, i32 noundef %add332)
  %cmp.i682 = icmp ugt ptr %call333, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i682, label %if.end330.enomem_out_crit_edge, label %if.end336

if.end330.enomem_out_crit_edge:                   ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #8
  br label %enomem_out

if.end336:                                        ; preds = %if.end330
  %87 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %runlist, align 4
  %cmp339.not = icmp eq ptr %88, %call333
  br i1 %cmp339.not, label %if.end336.if.end360_crit_edge, label %if.then340

if.end336.if.end360_crit_edge:                    ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end360

if.then340:                                       ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.lhs.cast342 = ptrtoint ptr %rl.0 to i32
  %sub.ptr.rhs.cast343 = ptrtoint ptr %88 to i32
  %sub.ptr.sub344 = sub i32 %sub.ptr.lhs.cast342, %sub.ptr.rhs.cast343
  %sub.ptr.div345 = sdiv exact i32 %sub.ptr.sub344, 24
  %add.ptr346 = getelementptr %struct.runlist_element, ptr %call333, i32 %sub.ptr.div345
  %sub.ptr.sub356 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast343
  %sub.ptr.div357 = sdiv exact i32 %sub.ptr.sub356, 24
  %add.ptr358 = getelementptr %struct.runlist_element, ptr %call333, i32 %sub.ptr.div357
  %89 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call333, ptr %runlist, align 4
  br label %if.end360

if.end360:                                        ; preds = %if.then340, %if.end336.if.end360_crit_edge
  %rl.4 = phi ptr [ %add.ptr346, %if.then340 ], [ %rl.0, %if.end336.if.end360_crit_edge ]
  %rl_real_end.2 = phi ptr [ %add.ptr358, %if.then340 ], [ %rl_real_end.0, %if.end336.if.end360_crit_edge ]
  %90 = ptrtoint ptr %rl.4 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %rl.4, align 8
  %sub362 = sub i64 %start, %91
  %length363 = getelementptr inbounds %struct.runlist_element, ptr %rl.4, i32 0, i32 2
  %92 = ptrtoint ptr %length363 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %sub362, ptr %length363, align 8
  %incdec.ptr364 = getelementptr %struct.runlist_element, ptr %rl.4, i32 1
  %93 = ptrtoint ptr %incdec.ptr364 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %incdec.ptr364, align 8
  %sub366 = sub i64 %94, %start
  store i64 %start, ptr %incdec.ptr364, align 8
  %lcn368 = getelementptr %struct.runlist_element, ptr %rl.4, i32 1, i32 1
  %95 = ptrtoint ptr %lcn368 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %lcn368, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %96)
  %cmp369 = icmp sgt i64 %96, -1
  br i1 %cmp369, label %if.then370, label %if.end360.if.end373_crit_edge

if.end360.if.end373_crit_edge:                    ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end373

if.then370:                                       ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #8
  %sub372 = sub i64 %96, %sub366
  %97 = ptrtoint ptr %lcn368 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %sub372, ptr %lcn368, align 8
  br label %if.end373

if.end373:                                        ; preds = %if.then370, %if.end360.if.end373_crit_edge
  %length374 = getelementptr %struct.runlist_element, ptr %rl.4, i32 1, i32 2
  %98 = ptrtoint ptr %length374 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %length374, align 8
  %add375 = add i64 %99, %sub366
  store i64 %add375, ptr %length374, align 8
  br label %split_end

if.end376:                                        ; preds = %if.end311
  %add.i684 = add i32 %sub.ptr.sub, 4119
  %and.i685 = and i32 %add.i684, -4096
  %add2.i687 = add i32 %sub.ptr.sub, 4167
  %and3.i688 = and i32 %add2.i687, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i685, i32 %and3.i688)
  %cmp.i689 = icmp eq i32 %and.i685, %and3.i688
  br i1 %cmp.i689, label %if.end376.ntfs_rl_realloc.exit714_crit_edge, label %if.end.i691

if.end376.ntfs_rl_realloc.exit714_crit_edge:      ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #8
  br label %ntfs_rl_realloc.exit714

if.end.i691:                                      ; preds = %if.end376
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %and3.i688)
  %cmp.i.i.i690 = icmp ult i32 %and3.i688, 4097
  br i1 %cmp.i.i.i690, label %do.body.i.i.i693, label %if.end16.i.i.i700, !prof !81

do.body.i.i.i693:                                 ; preds = %if.end.i691
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i688)
  %tobool2.not.i.i.i692 = icmp eq i32 %and3.i688, 0
  br i1 %tobool2.not.i.i.i692, label %do.body12.i.i.i694, label %do.end15.i.i.i696, !prof !80

do.body12.i.i.i694:                               ; preds = %do.body.i.i.i693
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.end15.i.i.i696:                                ; preds = %do.body.i.i.i693
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %100 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i695 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %100, i32 noundef 3136, i32 noundef 4096) #9
  br label %ntfs_malloc_nofs.exit.i705

if.end16.i.i.i700:                                ; preds = %if.end.i691
  %shr.i.i.i697 = lshr i32 %add2.i687, 12
  %call.i.i.i.i.i.i698 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %101 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i697, i32 %101)
  %cmp18.i.i.i699 = icmp ult i32 %shr.i.i.i697, %101
  br i1 %cmp18.i.i.i699, label %if.then25.i.i.i702, label %if.end16.i.i.i700.enomem_out_crit_edge, !prof !81

if.end16.i.i.i700.enomem_out_crit_edge:           ; preds = %if.end16.i.i.i700
  call void @__sanitizer_cov_trace_pc() #8
  br label %enomem_out

if.then25.i.i.i702:                               ; preds = %if.end16.i.i.i700
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i.i.i701 = tail call noalias ptr @__vmalloc(i32 noundef %and3.i688, i32 noundef 3138) #10
  br label %ntfs_malloc_nofs.exit.i705

ntfs_malloc_nofs.exit.i705:                       ; preds = %if.then25.i.i.i702, %do.end15.i.i.i696
  %retval.0.i.i.i703 = phi ptr [ %call7.i.i.i.i695, %do.end15.i.i.i696 ], [ %call26.i.i.i701, %if.then25.i.i.i702 ]
  %tobool.not.i704 = icmp eq ptr %retval.0.i.i.i703, null
  br i1 %tobool.not.i704, label %ntfs_malloc_nofs.exit.i705.enomem_out_crit_edge, label %if.then17.i709, !prof !80

ntfs_malloc_nofs.exit.i705.enomem_out_crit_edge:  ; preds = %ntfs_malloc_nofs.exit.i705
  call void @__sanitizer_cov_trace_pc() #8
  br label %enomem_out

if.then17.i709:                                   ; preds = %ntfs_malloc_nofs.exit.i705
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i685, i32 %and3.i688)
  %cmp18.i708 = icmp sgt i32 %and.i685, %and3.i688
  br i1 %cmp18.i708, label %if.then25.i710, label %if.then17.i709.if.end26.i712_crit_edge, !prof !80

if.then17.i709.if.end26.i712_crit_edge:           ; preds = %if.then17.i709
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i712

if.then25.i710:                                   ; preds = %if.then17.i709
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i712

if.end26.i712:                                    ; preds = %if.then25.i710, %if.then17.i709.if.end26.i712_crit_edge
  %old_size.addr.0.i711 = phi i32 [ %and3.i688, %if.then25.i710 ], [ %and.i685, %if.then17.i709.if.end26.i712_crit_edge ]
  %102 = call ptr @memcpy(ptr %retval.0.i.i.i703, ptr %1, i32 %old_size.addr.0.i711)
  tail call void @kvfree(ptr noundef nonnull %1) #6
  br label %ntfs_rl_realloc.exit714

ntfs_rl_realloc.exit714:                          ; preds = %if.end26.i712, %if.end376.ntfs_rl_realloc.exit714_crit_edge
  %retval.0.i713 = phi ptr [ %1, %if.end376.ntfs_rl_realloc.exit714_crit_edge ], [ %retval.0.i.i.i703, %if.end26.i712 ]
  %cmp.i715 = icmp ugt ptr %retval.0.i713, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i715, label %ntfs_rl_realloc.exit714.enomem_out_crit_edge, label %if.end382

ntfs_rl_realloc.exit714.enomem_out_crit_edge:     ; preds = %ntfs_rl_realloc.exit714
  call void @__sanitizer_cov_trace_pc() #8
  br label %enomem_out

if.end382:                                        ; preds = %ntfs_rl_realloc.exit714
  %103 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %runlist, align 4
  %cmp385.not = icmp eq ptr %104, %retval.0.i713
  br i1 %cmp385.not, label %if.end382.if.end406_crit_edge, label %if.then386

if.end382.if.end406_crit_edge:                    ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end406

if.then386:                                       ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.lhs.cast388 = ptrtoint ptr %rl.0 to i32
  %sub.ptr.rhs.cast389 = ptrtoint ptr %104 to i32
  %sub.ptr.sub390 = sub i32 %sub.ptr.lhs.cast388, %sub.ptr.rhs.cast389
  %sub.ptr.div391 = sdiv exact i32 %sub.ptr.sub390, 24
  %add.ptr392 = getelementptr %struct.runlist_element, ptr %retval.0.i713, i32 %sub.ptr.div391
  %sub.ptr.sub402 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast389
  %sub.ptr.div403 = sdiv exact i32 %sub.ptr.sub402, 24
  %add.ptr404 = getelementptr %struct.runlist_element, ptr %retval.0.i713, i32 %sub.ptr.div403
  %105 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %retval.0.i713, ptr %runlist, align 4
  %.pre = ptrtoint ptr %add.ptr404 to i32
  br label %if.end406

if.end406:                                        ; preds = %if.then386, %if.end382.if.end406_crit_edge
  %sub.ptr.lhs.cast408.pre-phi = phi i32 [ %.pre, %if.then386 ], [ %sub.ptr.lhs.cast, %if.end382.if.end406_crit_edge ]
  %rl.5 = phi ptr [ %add.ptr392, %if.then386 ], [ %rl.0, %if.end382.if.end406_crit_edge ]
  %add.ptr407 = getelementptr %struct.runlist_element, ptr %rl.5, i32 2
  %sub.ptr.rhs.cast409 = ptrtoint ptr %rl.5 to i32
  %sub.ptr.sub410 = sub i32 24, %sub.ptr.rhs.cast409
  %mul413 = add i32 %sub.ptr.sub410, %sub.ptr.lhs.cast408.pre-phi
  %106 = call ptr @memmove(ptr %add.ptr407, ptr %rl.5, i32 %mul413)
  %107 = ptrtoint ptr %rl.5 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %rl.5, align 8
  %sub415 = sub i64 %start, %108
  %length416 = getelementptr inbounds %struct.runlist_element, ptr %rl.5, i32 0, i32 2
  %109 = ptrtoint ptr %length416 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %sub415, ptr %length416, align 8
  %incdec.ptr417 = getelementptr %struct.runlist_element, ptr %rl.5, i32 1
  %110 = ptrtoint ptr %incdec.ptr417 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %start, ptr %incdec.ptr417, align 8
  %lcn419 = getelementptr %struct.runlist_element, ptr %rl.5, i32 1, i32 1
  %111 = ptrtoint ptr %lcn419 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 -1, ptr %lcn419, align 8
  %length420 = getelementptr %struct.runlist_element, ptr %rl.5, i32 1, i32 2
  %112 = ptrtoint ptr %length420 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %length, ptr %length420, align 8
  %113 = ptrtoint ptr %add.ptr407 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %add.ptr407, align 8
  %sub423 = sub i64 %add, %114
  store i64 %add, ptr %add.ptr407, align 8
  %lcn425 = getelementptr %struct.runlist_element, ptr %rl.5, i32 2, i32 1
  %115 = ptrtoint ptr %lcn425 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %lcn425, align 8
  %add426 = add i64 %116, %sub423
  store i64 %add426, ptr %lcn425, align 8
  %length427 = getelementptr %struct.runlist_element, ptr %rl.5, i32 2, i32 2
  %117 = ptrtoint ptr %length427 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %length427, align 8
  %sub428 = sub i64 %118, %sub423
  store i64 %sub428, ptr %length427, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1886, ptr noundef nonnull @__func__.ntfs_rl_punch_nolock, ptr noundef nonnull @.str.32) #6
  br label %cleanup

enomem_out:                                       ; preds = %ntfs_rl_realloc.exit714.enomem_out_crit_edge, %ntfs_malloc_nofs.exit.i705.enomem_out_crit_edge, %if.end16.i.i.i700.enomem_out_crit_edge, %if.end330.enomem_out_crit_edge, %ntfs_rl_realloc.exit680.enomem_out_crit_edge, %ntfs_malloc_nofs.exit.i671.enomem_out_crit_edge, %if.end16.i.i.i666.enomem_out_crit_edge
  %119 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_rl_punch_nolock, ptr noundef %120, ptr noundef nonnull @.str.33) #6
  br label %cleanup

cleanup:                                          ; preds = %enomem_out, %if.end406, %if.end286, %if.end220, %if.then171, %if.end143.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %land.rhs126.cleanup_crit_edge, %while.body112.cleanup_crit_edge, %if.end85, %if.then73.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end85 ], [ 0, %if.then171 ], [ 0, %if.end220 ], [ -12, %enomem_out ], [ 0, %if.end286 ], [ 0, %if.end406 ], [ 0, %if.then73.cleanup_crit_edge ], [ -22, %land.rhs126.cleanup_crit_edge ], [ -2, %land.lhs.true.cleanup_crit_edge ], [ %.mux, %if.end143.cleanup_crit_edge ], [ -22, %while.body112.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !63, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs/runlist.c", i32 530, i32 2}
!2 = !{ptr @__func__.ntfs_runlists_merge, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ntfs/runlist.c", i32 532, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ntfs/runlist.c", i32 589, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ntfs/runlist.c", i32 643, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ntfs/runlist.c", i32 648, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ntfs/runlist.c", i32 656, i32 5}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ntfs/runlist.c", i32 702, i32 2}
!16 = !{ptr @__func__.ntfs_mapping_pairs_decompress, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ntfs/runlist.c", i32 753, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ntfs/runlist.c", i32 765, i32 3}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ntfs/runlist.c", i32 819, i32 4}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ntfs/runlist.c", i32 828, i32 4}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ntfs/runlist.c", i32 866, i32 6}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ntfs/runlist.c", i32 868, i32 6}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ntfs/runlist.c", i32 873, i32 5}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ntfs/runlist.c", i32 894, i32 3}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ntfs/runlist.c", i32 918, i32 5}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ntfs/runlist.c", i32 930, i32 5}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ntfs/runlist.c", i32 948, i32 3}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ntfs/runlist.c", i32 957, i32 2}
!41 = !{ptr @__func__.ntfs_rl_truncate_nolock, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ntfs/runlist.c", i32 1491, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ntfs/runlist.c", i32 1496, i32 3}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ntfs/runlist.c", i32 1509, i32 4}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ntfs/runlist.c", i32 1532, i32 3}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ntfs/runlist.c", i32 1558, i32 5}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ntfs/runlist.c", i32 1567, i32 3}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ntfs/runlist.c", i32 1582, i32 5}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ntfs/runlist.c", i32 1605, i32 2}
!58 = !{ptr @__func__.ntfs_rl_punch_nolock, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ntfs/runlist.c", i32 1639, i32 2}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ntfs/runlist.c", i32 1684, i32 4}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ntfs/runlist.c", i32 1724, i32 3}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ntfs/runlist.c", i32 1780, i32 3}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ntfs/runlist.c", i32 1886, i32 2}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ntfs/runlist.c", i32 1889, i32 2}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 2154168995, i64 2154169477, i64 2154169032, i64 2154169088, i64 2154169122, i64 2154169146, i64 2154169187, i64 2154169208, i64 2154169236, i64 2154169270}
!83 = !{i64 2154159756, i64 2154160238, i64 2154159793, i64 2154159849, i64 2154159883, i64 2154159907, i64 2154159948, i64 2154159969, i64 2154159997, i64 2154160031}
!84 = !{i64 2154148174, i64 2154148656, i64 2154148211, i64 2154148267, i64 2154148301, i64 2154148325, i64 2154148366, i64 2154148387, i64 2154148415, i64 2154148449}
!85 = !{i64 2154149732, i64 2154150214, i64 2154149769, i64 2154149825, i64 2154149859, i64 2154149883, i64 2154149924, i64 2154149945, i64 2154149973, i64 2154150007}
!86 = !{i64 2153929602, i64 2153930082, i64 2153929639, i64 2153929695, i64 2153929729, i64 2153929753, i64 2153929794, i64 2153929815, i64 2153929843, i64 2153929877}
!87 = !{i64 2154156471, i64 2154156953, i64 2154156508, i64 2154156564, i64 2154156598, i64 2154156622, i64 2154156663, i64 2154156684, i64 2154156712, i64 2154156746}
!88 = !{i64 2154153186, i64 2154153668, i64 2154153223, i64 2154153279, i64 2154153313, i64 2154153337, i64 2154153378, i64 2154153399, i64 2154153427, i64 2154153461}
!89 = !{i64 2154167102, i64 2154167584, i64 2154167139, i64 2154167195, i64 2154167229, i64 2154167253, i64 2154167294, i64 2154167315, i64 2154167343, i64 2154167377}
!90 = !{i64 2154146343, i64 2154146825, i64 2154146380, i64 2154146436, i64 2154146470, i64 2154146494, i64 2154146535, i64 2154146556, i64 2154146584, i64 2154146618}
!91 = !{i64 2154173456, i64 2154173938, i64 2154173493, i64 2154173549, i64 2154173583, i64 2154173607, i64 2154173648, i64 2154173669, i64 2154173697, i64 2154173731}
!92 = !{i64 2154175274, i64 2154175757, i64 2154175311, i64 2154175367, i64 2154175401, i64 2154175425, i64 2154175466, i64 2154175487, i64 2154175515, i64 2154175549}
!93 = !{i64 2154177285, i64 2154177768, i64 2154177322, i64 2154177378, i64 2154177412, i64 2154177436, i64 2154177477, i64 2154177498, i64 2154177526, i64 2154177560}
!94 = !{i64 2154178864, i64 2154179347, i64 2154178901, i64 2154178957, i64 2154178991, i64 2154179015, i64 2154179056, i64 2154179077, i64 2154179105, i64 2154179139}
!95 = !{i64 2154180491, i64 2154180974, i64 2154180528, i64 2154180584, i64 2154180618, i64 2154180642, i64 2154180683, i64 2154180704, i64 2154180732, i64 2154180766}
!96 = !{i64 2154182062, i64 2154182545, i64 2154182099, i64 2154182155, i64 2154182189, i64 2154182213, i64 2154182254, i64 2154182275, i64 2154182303, i64 2154182337}
!97 = !{i64 2154183639, i64 2154184122, i64 2154183676, i64 2154183732, i64 2154183766, i64 2154183790, i64 2154183831, i64 2154183852, i64 2154183880, i64 2154183914}
!98 = !{i64 2154186112, i64 2154186595, i64 2154186149, i64 2154186205, i64 2154186239, i64 2154186263, i64 2154186304, i64 2154186325, i64 2154186353, i64 2154186387}
!99 = !{i64 2154187691, i64 2154188174, i64 2154187728, i64 2154187784, i64 2154187818, i64 2154187842, i64 2154187883, i64 2154187904, i64 2154187932, i64 2154187966}
!100 = !{i64 2154189318, i64 2154189801, i64 2154189355, i64 2154189411, i64 2154189445, i64 2154189469, i64 2154189510, i64 2154189531, i64 2154189559, i64 2154189593}
!101 = !{i64 2154190893, i64 2154191376, i64 2154190930, i64 2154190986, i64 2154191020, i64 2154191044, i64 2154191085, i64 2154191106, i64 2154191134, i64 2154191168}
!102 = !{i64 2154192464, i64 2154192947, i64 2154192501, i64 2154192557, i64 2154192591, i64 2154192615, i64 2154192656, i64 2154192677, i64 2154192705, i64 2154192739}
!103 = !{i64 2154194041, i64 2154194524, i64 2154194078, i64 2154194134, i64 2154194168, i64 2154194192, i64 2154194233, i64 2154194254, i64 2154194282, i64 2154194316}
!104 = !{i64 2154196586, i64 2154197069, i64 2154196623, i64 2154196679, i64 2154196713, i64 2154196737, i64 2154196778, i64 2154196799, i64 2154196827, i64 2154196861}
!105 = !{i64 2154198167, i64 2154198650, i64 2154198204, i64 2154198260, i64 2154198294, i64 2154198318, i64 2154198359, i64 2154198380, i64 2154198408, i64 2154198442}
!106 = !{i64 2154204160, i64 2154204643, i64 2154204197, i64 2154204253, i64 2154204287, i64 2154204311, i64 2154204352, i64 2154204373, i64 2154204401, i64 2154204435}
!107 = !{i64 2154206610, i64 2154207093, i64 2154206647, i64 2154206703, i64 2154206737, i64 2154206761, i64 2154206802, i64 2154206823, i64 2154206851, i64 2154206885}
!108 = !{i64 2154208181, i64 2154208664, i64 2154208218, i64 2154208274, i64 2154208308, i64 2154208332, i64 2154208373, i64 2154208394, i64 2154208422, i64 2154208456}
!109 = !{i64 2154209754, i64 2154210237, i64 2154209791, i64 2154209847, i64 2154209881, i64 2154209905, i64 2154209946, i64 2154209967, i64 2154209995, i64 2154210029}
!110 = !{i64 2154211321, i64 2154211804, i64 2154211358, i64 2154211414, i64 2154211448, i64 2154211472, i64 2154211513, i64 2154211534, i64 2154211562, i64 2154211596}
