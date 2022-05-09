; ModuleID = '/llk/IR_all_yes/fs/ntfs/compress.c_pt.bc'
source_filename = "../fs/ntfs/compress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.53 }
%struct.atomic_t = type { i32 }
%union.anon.53 = type { i32 }
%struct.page = type { i32, %union.anon, %union.anon.70, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { %struct.atomic_t }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, i64, i64, i64, i64, i64, i64, ptr, ptr, %struct.rw_semaphore, ptr, i32, ptr, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.runlist_element = type { i64, i64, i64 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@ntfs_compression_buffer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/ntfs/compress.c\00", [45 x i8] zeroinitializer }, align 32
@__func__.ntfs_read_compressed_block = private unnamed_addr constant [27 x i8] c"ntfs_read_compressed_block\00", align 1
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Entering, page->index = 0x%lx, cb_size = 0x%x, nr_pages = %i.\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate internal buffers.\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Compressed read outside i_size - truncated?\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Reading vcn = 0x%llx, lcn = 0x%llx.\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"block = 0x%x.\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Buffer is unlocked but not uptodate! Unplugging the disk queue and rescheduling.\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Buffer is now uptodate. Good.\00", [34 x i8] zeroinitializer }, align 32
@ntfs_cb_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Successfully read the compression block.\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Found sparse compression block.\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Found uncompressed compression block.\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Found compressed compression block.\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"ntfs_decompress() failed in inode 0x%lx with error code %i. Skipping this compression block.\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"Still have pages left! Terminating them with extreme prejudice.  Inode 0x%lx, page index 0x%lx.\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed. Returning error code %s.\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EOVERFLOW\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EIO\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unknown error\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"IO error while reading compressed data.\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ntfs_map_runlist() failed. Cannot read compression block.\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ntfs_rl_vcn_to_lcn() failed. Cannot read compression block.\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"getblk() failed. Cannot read compression block.\00", [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ntfs_cb_lock\00", [19 x i8] zeroinitializer }, align 32
@__func__.zero_partial_compressed_page = private unnamed_addr constant [29 x i8] c"zero_partial_compressed_page\00", align 1
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Zeroing page region outside initialized size.\00", [50 x i8] zeroinitializer }, align 32
@__func__.ntfs_decompress = private unnamed_addr constant [16 x i8] c"ntfs_decompress\00", align 1
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Entering, cb_size = 0x%x.\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Beginning sub-block at offset = 0x%zx in the cb.\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Completed. Returning success (0).\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Found uncompressed sub-block.\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Found compressed sub-block.\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Filling incomplete sub-block with zeroes.\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed. Returning -EOVERFLOW.\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"ntfs_compression_buffer\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 47, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 506, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 527, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 554, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 612, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 638, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 681, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 689, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"ntfs_cb_lock\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 719, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 732, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 779, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 844, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 854, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 888, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 909, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 914, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 921, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 927, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 933, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 260, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 420, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 416, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 44, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 717, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 354, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 52, i32 8 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 92, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 185, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 187, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 200, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 268, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 296, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 311, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [22 x i8] c"../fs/ntfs/compress.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 423, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @ntfs_compression_buffer, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ntfs_cb_lock, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_compression_buffer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_cb_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @allocate_compression_buffers() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ntfs_compression_buffer, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !87

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 63, 0\0A.popsection", ""() #8, !srcloc !88
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call noalias ptr @vmalloc(i32 noundef 65536) #11
  store ptr %call, ptr @ntfs_compression_buffer, align 4
  %tobool7.not = icmp eq ptr %call, null
  %. = select i1 %tobool7.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_compression_buffers() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ntfs_compression_buffer, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !89

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 78, 0\0A.popsection", ""() #8, !srcloc !90
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vfree(ptr noundef nonnull %0) #8
  store ptr null, ptr @ntfs_compression_buffer, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_read_compressed_block(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  %cur_page = alloca i32, align 4
  %cur_ofs = alloca i32, align 4
  %xpage_done = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -528
  %vol2 = getelementptr i8, ptr %3, i32 -448
  %4 = ptrtoint ptr %vol2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vol2, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %s_blocksize_bits, align 4
  %index4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index4, align 4
  %block_size5 = getelementptr i8, ptr %3, i32 -112
  %14 = ptrtoint ptr %block_size5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %block_size5, align 8
  %sub = add i32 %15, -1
  %conv = zext i32 %sub to i64
  %conv6 = zext i32 %13 to i64
  %shl = shl nuw nsw i64 %conv6, 12
  %neg = xor i64 %conv, -1
  %and = and i64 %shl, %neg
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 13
  %16 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom = zext i8 %17 to i64
  %shr = lshr i64 %and, %sh_prom
  %add = add i32 %13, 1
  %conv8 = zext i32 %add to i64
  %shl9 = shl nuw nsw i64 %conv8, 12
  %conv10 = zext i32 %15 to i64
  %add11 = add nsw i64 %conv10, -1
  %sub12 = add nsw i64 %add11, %shl9
  %and14 = and i64 %sub12, %neg
  %shr18 = lshr i64 %and14, %sh_prom
  %sub19 = sub i64 %shr18, %shr
  %shl23 = shl i64 %sub19, %sh_prom
  %block_size_bits25 = getelementptr i8, ptr %3, i32 -108
  %18 = ptrtoint ptr %block_size_bits25 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %block_size_bits25, align 4
  %sh_prom27 = zext i8 %19 to i64
  %shr28 = ashr i64 %shl23, %sh_prom27
  %conv29 = trunc i64 %shr28 to i32
  %20 = lshr i64 %shl23, 12
  %conv36 = trunc i64 %20 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_page) #8
  %21 = ptrtoint ptr %cur_page to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %cur_page, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_ofs) #8
  %22 = ptrtoint ptr %cur_ofs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %cur_ofs, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %xpage_done) #8
  %23 = ptrtoint ptr %xpage_done to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %xpage_done, align 1
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 507, ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef nonnull @.str.1, i32 noundef %13, i32 noundef %15, i32 noundef %conv36) #8
  %type = getelementptr i8, ptr %3, i32 -444
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %25)
  %cmp.not = icmp eq i32 %25, -2147483648
  br i1 %cmp.not, label %do.body45, label %do.body39, !prof !87

do.body39:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 512, 0\0A.popsection", ""() #8, !srcloc !92
  unreachable

do.body45:                                        ; preds = %entry
  %name_len = getelementptr i8, ptr %3, i32 -436
  %26 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %name_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool46.not = icmp eq i32 %27, 0
  br i1 %tobool46.not, label %do.end62, label %do.body54, !prof !87

do.body54:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 513, 0\0A.popsection", ""() #8, !srcloc !93
  unreachable

do.end62:                                         ; preds = %do.body45
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv36, i32 4) #8
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %do.end62.kmalloc_array.exit_crit_edge, label %if.end7.i, !prof !89

do.end62.kmalloc_array.exit_crit_edge:            ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmalloc_array.exit

if.end7.i:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #10
  %30 = extractvalue { i32, i1 } %28, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3136) #11
  br label %kmalloc_array.exit

kmalloc_array.exit:                               ; preds = %if.end7.i, %do.end62.kmalloc_array.exit_crit_edge
  %retval.0.i = phi ptr [ %call8.i, %if.end7.i ], [ null, %do.end62.kmalloc_array.exit_crit_edge ]
  %add64 = add i32 %conv36, 1
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add64, i32 4) #8
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %kmalloc_array.exit.if.end8.i_crit_edge, label %if.end7.i998, !prof !89

kmalloc_array.exit.if.end8.i_crit_edge:           ; preds = %kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.end7.i998:                                     ; preds = %kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #10
  %33 = extractvalue { i32, i1 } %31, 0
  %call8.i997 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3136) #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end7.i998, %kmalloc_array.exit.if.end8.i_crit_edge
  %retval.0.i999 = phi ptr [ %call8.i997, %if.end7.i998 ], [ null, %kmalloc_array.exit.if.end8.i_crit_edge ]
  %div = udiv i32 %15, %9
  %mul = shl i32 %div, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3136) #11
  %tobool67.not = icmp eq ptr %retval.0.i, null
  %tobool68.not = icmp eq ptr %call9.i, null
  %or.cond = select i1 %tobool67.not, i1 true, i1 %tobool68.not
  %tobool69.not = icmp eq ptr %retval.0.i999, null
  %or.cond926 = select i1 %or.cond, i1 true, i1 %tobool69.not
  br i1 %or.cond926, label %if.then78, label %if.end80, !prof !94

if.then78:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %call9.i) #8
  tail call void @kfree(ptr noundef %retval.0.i) #8
  tail call void @kfree(ptr noundef %retval.0.i999) #8
  tail call void @unlock_page(ptr noundef %page) #8
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef %35, ptr noundef nonnull @.str.2) #8
  br label %cleanup581

if.end80:                                         ; preds = %if.end8.i
  %36 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom83 = zext i8 %37 to i64
  %shl84 = shl i64 %shr, %sh_prom83
  %38 = lshr i64 %shl84, 12
  %conv86 = trunc i64 %38 to i32
  %sub87 = sub i32 %13, %conv86
  %arrayidx = getelementptr ptr, ptr %retval.0.i, i32 %sub87
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %page, ptr %arrayidx, align 4
  %call91 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i) #8
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end80
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !95
  %and.i.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i1001 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i1001, label %if.then.i.i1002, label %do.body24.critedge.i.i

if.then.i.i1002:                                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %41 = tail call ptr @llvm.returnaddress(i32 0) #8
  %42 = ptrtoint ptr %41 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %42) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %42) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = tail call ptr @llvm.returnaddress(i32 0) #8
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %44) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %44) #8
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i1002
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !96
  %and.i.i.i.i1003 = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i1003)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i1003, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !89

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #8, !srcloc !97
  %46 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !99
  %48 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %49, 1
  %tobool.not.i1004 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i1004, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %47, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %49, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !100
  %50 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !101
  %52 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %53, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %initialized_size96 = getelementptr i8, ptr %3, i32 -480
  %54 = ptrtoint ptr %initialized_size96 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %initialized_size96, align 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call91) #8
  %sub107 = add i64 %51, 4095
  %56 = lshr i64 %sub107, 12
  %sub110 = sub nsw i64 %56, %38
  %conv111 = trunc i64 %sub110 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub87, i32 %conv111)
  %cmp112.not = icmp ult i32 %sub87, %conv111
  br i1 %cmp112.not, label %if.end115, label %if.then114

if.then114:                                       ; preds = %i_size_read.exit
  tail call void @kfree(ptr noundef %call9.i) #8
  tail call void @kfree(ptr noundef %retval.0.i) #8
  tail call void @kfree(ptr noundef %retval.0.i999) #8
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 554, ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !102
  %57 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  %and.i.i.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !87

if.then.i.i.i:                                    ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !103
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #8
  tail call void @unlock_page(ptr noundef %page) #8
  br label %cleanup581

if.end115:                                        ; preds = %i_size_read.exit
  %60 = tail call i32 @llvm.umin.i32(i32 %conv36, i32 %conv111)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp1201253.not = icmp eq i32 %60, 0
  br i1 %cmp1201253.not, label %if.end115.for.end_crit_edge, label %for.body.lr.ph

if.end115.for.end_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end115
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.01256 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %offset.01254 = phi i32 [ %conv86, %for.body.lr.ph ], [ %inc143, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.01256, i32 %sub87)
  %cmp122.not = icmp eq i32 %i.01256, %sub87
  br i1 %cmp122.not, label %for.body.if.end127_crit_edge, label %if.then124

for.body.if.end127_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then124:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %gfp_mask.i.i, align 4
  %call1.i = tail call ptr @pagecache_get_page(ptr noundef %1, i32 noundef %offset.01254, i32 noundef 54, i32 noundef %62) #8
  %arrayidx126 = getelementptr ptr, ptr %retval.0.i, i32 %i.01256
  %63 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call1.i, ptr %arrayidx126, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %for.body.if.end127_crit_edge
  %arrayidx128 = getelementptr ptr, ptr %retval.0.i, i32 %i.01256
  %64 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx128, align 4
  %tobool129.not = icmp eq ptr %65, null
  br i1 %tobool129.not, label %if.end127.for.inc_crit_edge, label %if.then130

if.end127.for.inc_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then130:                                       ; preds = %if.end127
  %66 = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  %and.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i927 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i927, label %if.end.i.i928, label %if.then.i.i, !prof !87

if.then.i.i:                                      ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %68, -1
  br label %_compound_head.exit.i

if.end.i.i928:                                    ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %65 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i928, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %69, %if.end.i.i928 ]
  %70 = inttoptr i32 %retval.0.i.i to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp.i.not.i = icmp eq i32 %72, -1
  %73 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %66, align 4
  %and.i13.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i929, label %do.end8.i, !prof !89

if.then.i929:                                     ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !87

if.then.i16.i:                                    ; preds = %if.then.i929
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i15.i = add i32 %74, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i929
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %65 to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %75, %if.end.i17.i ]
  %76 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %76, ptr noundef nonnull @.str.24) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #8, !srcloc !104
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !87

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i22.i = add i32 %74, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %65 to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %77, %if.end.i24.i ]
  %78 = inttoptr i32 %retval.0.i25.i to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  %81 = and i32 %80, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool132.not = icmp eq i32 %81, 0
  br i1 %tobool132.not, label %land.lhs.true, label %PageDirty.exit.if.end140_crit_edge

PageDirty.exit.if.end140_crit_edge:               ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

land.lhs.true:                                    ; preds = %PageDirty.exit
  %82 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %66, align 4
  %and.i.i1006 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1006)
  %tobool.not.i.i1007 = icmp eq i32 %and.i.i1006, 0
  br i1 %tobool.not.i.i1007, label %if.end.i.i1010, label %if.then.i.i1009, !prof !87

if.then.i.i1009:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i1008 = add i32 %83, -1
  br label %_compound_head.exit.i1014

if.end.i.i1010:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %65 to i32
  br label %_compound_head.exit.i1014

_compound_head.exit.i1014:                        ; preds = %if.end.i.i1010, %if.then.i.i1009
  %retval.0.i.i1011 = phi i32 [ %sub.i.i1008, %if.then.i.i1009 ], [ %84, %if.end.i.i1010 ]
  %85 = inttoptr i32 %retval.0.i.i1011 to ptr
  %86 = getelementptr inbounds %struct.page, ptr %85, i32 0, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %86, align 4
  %and.i.i.i.i1012 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i1012)
  %tobool.not.i.i.i1013 = icmp eq i32 %and.i.i.i.i1012, 0
  br i1 %tobool.not.i.i.i1013, label %folio_flags.exit.i.i, label %if.then.i.i.i1015, !prof !87

if.then.i.i.i1015:                                ; preds = %_compound_head.exit.i1014
  call void @__sanitizer_cov_trace_pc() #10
  %89 = inttoptr i32 %retval.0.i.i1011 to ptr
  tail call void @dump_page(ptr noundef %89, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !103
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i1014
  %90 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %85, align 4
  %92 = and i32 %91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.i.not.i = icmp eq i32 %92, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.if.then138_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i.if.then138_crit_edge:        ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then138

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !105
  %93 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %66, align 4
  %and.i.i930 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i930)
  %tobool.not.i.i931 = icmp eq i32 %and.i.i930, 0
  br i1 %tobool.not.i.i931, label %if.end.i.i934, label %if.then.i.i933, !prof !87

if.then.i.i933:                                   ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i932 = add i32 %94, -1
  br label %_compound_head.exit.i937

if.end.i.i934:                                    ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %65 to i32
  br label %_compound_head.exit.i937

_compound_head.exit.i937:                         ; preds = %if.end.i.i934, %if.then.i.i933
  %retval.0.i.i935 = phi i32 [ %sub.i.i932, %if.then.i.i933 ], [ %95, %if.end.i.i934 ]
  %96 = inttoptr i32 %retval.0.i.i935 to ptr
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %98)
  %cmp.i.not.i936 = icmp eq i32 %98, -1
  %99 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %66, align 4
  %and.i16.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i936, label %if.then.i938, label %do.end10.i, !prof !89

if.then.i938:                                     ; preds = %_compound_head.exit.i937
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !87

if.then.i19.i:                                    ; preds = %if.then.i938
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %100, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i938
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %65 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %101, %if.end.i20.i ]
  %102 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %102, ptr noundef nonnull @.str.24) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !106
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i937
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !87

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %100, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %65 to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %103, %if.end.i27.i ]
  %104 = inttoptr i32 %retval.0.i28.i to ptr
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %104, align 4
  %107 = and i32 %106, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool137.not = icmp eq i32 %107, 0
  br i1 %tobool137.not, label %PageError.exit.if.end140_crit_edge, label %PageError.exit.if.then138_crit_edge

PageError.exit.if.then138_crit_edge:              ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then138

PageError.exit.if.end140_crit_edge:               ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

if.then138:                                       ; preds = %PageError.exit.if.then138_crit_edge, %folio_flags.exit.i.i.if.then138_crit_edge
  %108 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %66, align 4
  %and.i.i941 = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i941)
  %tobool.not.i = icmp eq i32 %and.i.i941, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i942, !prof !87

if.then.i942:                                     ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %65, ptr noundef nonnull @.str.25) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !107
  unreachable

do.body7.i:                                       ; preds = %if.then138
  %110 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %66, align 4
  %and.i31.i = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i943 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i943, label %if.end.i.i946, label %if.then.i.i945, !prof !87

if.then.i.i945:                                   ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i944 = add i32 %111, -1
  br label %_compound_head.exit.i949

if.end.i.i946:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %65 to i32
  br label %_compound_head.exit.i949

_compound_head.exit.i949:                         ; preds = %if.end.i.i946, %if.then.i.i945
  %retval.0.i.i947 = phi i32 [ %sub.i.i944, %if.then.i.i945 ], [ %112, %if.end.i.i946 ]
  %113 = inttoptr i32 %retval.0.i.i947 to ptr
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %115)
  %cmp.i.not.i948 = icmp eq i32 %115, -1
  %116 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %66, align 4
  %and.i32.i = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i948, label %if.then17.i, label %do.end24.i, !prof !89

if.then17.i:                                      ; preds = %_compound_head.exit.i949
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !87

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %117, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %65 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %118, %if.end.i36.i ]
  %119 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %119, ptr noundef nonnull @.str.24) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !108
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i949
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !87

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %117, -1
  br label %ClearPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %65 to i32
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %120, %if.end.i43.i ]
  %121 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %121) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 44) #8
  %122 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %65, align 4
  %shr.i.i1016 = lshr i32 %123, 30
  %124 = zext i32 %shr.i.i1016 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i1016, label %ClearPageError.exit.if.then.i1017_crit_edge [
    i32 2, label %ClearPageError.exit.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

ClearPageError.exit.if.else.i_crit_edge:          ; preds = %ClearPageError.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

ClearPageError.exit.if.then.i1017_crit_edge:      ; preds = %ClearPageError.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i1017

is_highmem_idx.exit.i:                            ; preds = %ClearPageError.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %125 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %125)
  %cmp2.i.not.i = icmp eq i32 %125, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i1017_crit_edge

is_highmem_idx.exit.i.if.then.i1017_crit_edge:    ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i1017

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i1017:                                    ; preds = %is_highmem_idx.exit.i.if.then.i1017_crit_edge, %ClearPageError.exit.if.then.i1017_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef nonnull %65) #8
  br label %for.inc

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %ClearPageError.exit.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef nonnull %65) #8
  br label %for.inc

if.end140:                                        ; preds = %PageError.exit.if.end140_crit_edge, %PageDirty.exit.if.end140_crit_edge
  tail call void @unlock_page(ptr noundef nonnull %65) #8
  %126 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %66, align 4
  %and.i.i1019 = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1019)
  %tobool.not.i.i1020 = icmp eq i32 %and.i.i1019, 0
  br i1 %tobool.not.i.i1020, label %if.end.i.i1023, label %if.then.i.i1022, !prof !87

if.then.i.i1022:                                  ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i1021 = add i32 %127, -1
  br label %_compound_head.exit.i1025

if.end.i.i1023:                                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %65 to i32
  br label %_compound_head.exit.i1025

_compound_head.exit.i1025:                        ; preds = %if.end.i.i1023, %if.then.i.i1022
  %retval.0.i.i1024 = phi i32 [ %sub.i.i1021, %if.then.i.i1022 ], [ %128, %if.end.i.i1023 ]
  %129 = inttoptr i32 %retval.0.i.i1024 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %129, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %130 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp.i.i.i.i = icmp eq i32 %131, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !89

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i1025
  call void @__sanitizer_cov_trace_pc() #10
  %132 = inttoptr i32 %retval.0.i.i1024 to ptr
  tail call void @dump_page(ptr noundef %132, ptr noundef nonnull @.str.27) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i1025
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %133 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %133, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_read_compressed_block, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !113

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %129, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %129) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %134 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %arrayidx128, align 4
  br label %for.inc

for.inc:                                          ; preds = %put_page.exit, %if.else.i, %if.then.i1017, %if.end127.for.inc_crit_edge
  %inc = add nuw i32 %i.01256, 1
  %inc143 = add i32 %offset.01254, 1
  %exitcond.not = icmp eq i32 %inc, %60
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end115.for.end_crit_edge
  %135 = ptrtoint ptr %cur_page to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %cur_page, align 4
  %136 = ptrtoint ptr %cur_ofs to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %cur_ofs, align 4
  %block_clusters = getelementptr i8, ptr %3, i32 -107
  %137 = ptrtoint ptr %block_clusters to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %block_clusters, align 1
  %conv146 = zext i8 %138 to i64
  %runlist = getelementptr i8, ptr %3, i32 -432
  %lock = getelementptr i8, ptr %3, i32 -428
  %conv198 = zext i8 %11 to i32
  %sh_prom199 = zext i8 %11 to i64
  %cluster_size = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 11
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 26
  %mft_no = getelementptr i8, ptr %3, i32 -460
  %shr.i = ashr i64 %55, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %51)
  %cmp2.i = icmp slt i64 %55, %51
  %139 = trunc i64 %55 to i32
  %conv2.i.i = and i32 %139, 4095
  %sub.i.i1062 = sub nuw nsw i32 4096, %conv2.i.i
  br label %do_next_cb

do_next_cb:                                       ; preds = %for.end506.do_next_cb_crit_edge, %for.end
  %start_vcn.0 = phi i64 [ %shr, %for.end ], [ %add147, %for.end506.do_next_cb_crit_edge ]
  %nr_cbs.0 = phi i32 [ %conv29, %for.end ], [ %dec, %for.end506.do_next_cb_crit_edge ]
  %err.0 = phi i32 [ 0, %for.end ], [ %err.1, %for.end506.do_next_cb_crit_edge ]
  %dec = add i32 %nr_cbs.0, -1
  %add147 = add i64 %start_vcn.0, %conv146
  call void @__sanitizer_cov_trace_cmp8(i64 %start_vcn.0, i64 %add147)
  %cmp1491258 = icmp slt i64 %start_vcn.0, %add147
  br i1 %cmp1491258, label %do_next_cb.for.body151_crit_edge, label %for.end301.thread

do_next_cb.for.body151_crit_edge:                 ; preds = %do_next_cb
  br label %for.body151

for.body151:                                      ; preds = %for.inc226.for.body151_crit_edge, %do_next_cb.for.body151_crit_edge
  %nr_bhs.01261 = phi i32 [ %inc220, %for.inc226.for.body151_crit_edge ], [ 0, %do_next_cb.for.body151_crit_edge ]
  %vcn.01260 = phi i64 [ %inc227, %for.inc226.for.body151_crit_edge ], [ %start_vcn.0, %do_next_cb.for.body151_crit_edge ]
  %rl.01259 = phi ptr [ %rl.2, %for.inc226.for.body151_crit_edge ], [ null, %do_next_cb.for.body151_crit_edge ]
  %tobool152.not = icmp eq ptr %rl.01259, null
  br i1 %tobool152.not, label %for.body151.if.end156_crit_edge, label %for.body151.while.cond.preheader_crit_edge

for.body151.while.cond.preheader_crit_edge:       ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

for.body151.if.end156_crit_edge:                  ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156

if.end156:                                        ; preds = %if.end186.if.end156_crit_edge, %for.body151.if.end156_crit_edge
  %is_retry.0.off0 = phi i1 [ true, %if.end186.if.end156_crit_edge ], [ false, %for.body151.if.end156_crit_edge ]
  tail call void @down_read(ptr noundef %lock) #8
  %140 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %runlist, align 8
  %cmp157.not = icmp eq ptr %141, null
  br i1 %cmp157.not, label %if.then175.thread, label %if.end156.while.cond.preheader_crit_edge, !prof !89

if.end156.while.cond.preheader_crit_edge:         ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end156.while.cond.preheader_crit_edge, %for.body151.while.cond.preheader_crit_edge
  %is_retry.1.off01380 = phi i1 [ %is_retry.0.off0, %if.end156.while.cond.preheader_crit_edge ], [ false, %for.body151.while.cond.preheader_crit_edge ]
  %rl.11378 = phi ptr [ %141, %if.end156.while.cond.preheader_crit_edge ], [ %rl.01259, %for.body151.while.cond.preheader_crit_edge ]
  br label %while.cond

if.then175.thread:                                ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 614, ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef nonnull @.str.4, i64 noundef %vcn.01260, i64 noundef -2) #8
  br label %if.end179

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %while.cond.preheader
  %rl.2 = phi ptr [ %arrayidx167, %land.rhs.while.cond_crit_edge ], [ %rl.11378, %while.cond.preheader ]
  %length = getelementptr inbounds %struct.runlist_element, ptr %rl.2, i32 0, i32 2
  %142 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %143)
  %tobool166.not = icmp eq i64 %143, 0
  br i1 %tobool166.not, label %while.cond.if.end172_crit_edge, label %land.rhs

while.cond.if.end172_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

land.rhs:                                         ; preds = %while.cond
  %arrayidx167 = getelementptr %struct.runlist_element, ptr %rl.2, i32 1
  %144 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %arrayidx167, align 8
  %cmp169.not = icmp sgt i64 %145, %vcn.01260
  br i1 %cmp169.not, label %land.rhs.if.end172_crit_edge, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

land.rhs.if.end172_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

if.end172:                                        ; preds = %land.rhs.if.end172_crit_edge, %while.cond.if.end172_crit_edge
  %call171 = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %rl.2, i64 noundef %vcn.01260) #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 614, ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef nonnull @.str.4, i64 noundef %vcn.01260, i64 noundef %call171) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call171)
  %cmp173 = icmp slt i64 %call171, 0
  br i1 %cmp173, label %if.then175, label %if.end193

if.then175:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call171)
  %cmp176 = icmp eq i64 %call171, -1
  br i1 %cmp176, label %if.then175.for.end228_crit_edge, label %if.then175.if.end179_crit_edge

if.then175.if.end179_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

if.then175.for.end228_crit_edge:                  ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end228

if.end179:                                        ; preds = %if.then175.if.end179_crit_edge, %if.then175.thread
  %is_retry.1.off01379 = phi i1 [ %is_retry.0.off0, %if.then175.thread ], [ %is_retry.1.off01380, %if.then175.if.end179_crit_edge ]
  %lcn.011791183 = phi i64 [ -2, %if.then175.thread ], [ %call171, %if.then175.if.end179_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %lcn.011791183)
  %cmp183.not = icmp ne i64 %lcn.011791183, -2
  %146 = or i1 %is_retry.1.off01379, %cmp183.not
  tail call void @up_read(ptr noundef %lock) #8
  br i1 %146, label %if.end179.err_out.sink.split_crit_edge, label %if.end186

if.end179.err_out.sink.split_crit_edge:           ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out.sink.split

if.end186:                                        ; preds = %if.end179
  %call189 = tail call i32 @ntfs_map_runlist(ptr noundef %add.ptr.i, i64 noundef %vcn.01260) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end186.if.end156_crit_edge, label %if.end186.err_out.sink.split_crit_edge

if.end186.err_out.sink.split_crit_edge:           ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out.sink.split

if.end186.if.end156_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156

if.end193:                                        ; preds = %if.end172
  %147 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom196 = zext i8 %148 to i64
  %shl197 = shl i64 %call171, %sh_prom196
  %shr200 = ashr i64 %shl197, %sh_prom199
  %conv201 = trunc i64 %shr200 to i32
  %149 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %cluster_size, align 8
  %shr203 = lshr i32 %150, %conv198
  %add204 = add i32 %shr203, %conv201
  br label %do.body205

do.body205:                                       ; preds = %if.end219.do.body205_crit_edge, %if.end193
  %block.0 = phi i32 [ %conv201, %if.end193 ], [ %inc222, %if.end219.do.body205_crit_edge ]
  %nr_bhs.1 = phi i32 [ %nr_bhs.01261, %if.end193 ], [ %inc220, %if.end219.do.body205_crit_edge ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 638, ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef nonnull @.str.5, i32 noundef %block.0) #8
  %conv206 = sext i32 %block.0 to i64
  %151 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %s_bdev.i, align 4
  %153 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %s_blocksize, align 16
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %152, i64 noundef %conv206, i32 noundef %154, i32 noundef 8) #8
  %arrayidx208 = getelementptr ptr, ptr %call9.i, i32 %nr_bhs.1
  %155 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call.i, ptr %arrayidx208, align 4
  %tobool209.not = icmp eq ptr %call.i, null
  br i1 %tobool209.not, label %getblk_err, label %if.end219, !prof !89

if.end219:                                        ; preds = %do.body205
  %inc220 = add i32 %nr_bhs.1, 1
  %inc222 = add i32 %block.0, 1
  %cmp223 = icmp slt i32 %inc222, %add204
  br i1 %cmp223, label %if.end219.do.body205_crit_edge, label %for.inc226

if.end219.do.body205_crit_edge:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body205

for.inc226:                                       ; preds = %if.end219
  %inc227 = add i64 %vcn.01260, 1
  %cmp149 = icmp slt i64 %inc227, %add147
  br i1 %cmp149, label %for.inc226.for.body151_crit_edge, label %for.inc226.for.end228_crit_edge

for.inc226.for.end228_crit_edge:                  ; preds = %for.inc226
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end228

for.inc226.for.body151_crit_edge:                 ; preds = %for.inc226
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body151

for.end228:                                       ; preds = %for.inc226.for.end228_crit_edge, %if.then175.for.end228_crit_edge
  %vcn.0.lcssa = phi i64 [ %inc227, %for.inc226.for.end228_crit_edge ], [ %vcn.01260, %if.then175.for.end228_crit_edge ]
  %nr_bhs.0.lcssa = phi i32 [ %inc220, %for.inc226.for.end228_crit_edge ], [ %nr_bhs.01261, %if.then175.for.end228_crit_edge ]
  %tobool229.not = icmp eq ptr %rl.2, null
  br i1 %tobool229.not, label %for.end228.if.end233_crit_edge, label %if.then230

for.end228.if.end233_crit_edge:                   ; preds = %for.end228
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end233

if.then230:                                       ; preds = %for.end228
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read(ptr noundef %lock) #8
  br label %if.end233

if.end233:                                        ; preds = %if.then230, %for.end228.if.end233_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.0.lcssa)
  %cmp2351267.not = icmp eq i32 %nr_bhs.0.lcssa, 0
  br i1 %cmp2351267.not, label %if.end233.for.end301_crit_edge, label %if.end233.for.body237_crit_edge

if.end233.for.body237_crit_edge:                  ; preds = %if.end233
  br label %for.body237

if.end233.for.end301_crit_edge:                   ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end301

for.cond260.preheader:                            ; preds = %cleanup254
  br i1 %cmp2351267.not, label %for.cond260.preheader.for.end301_crit_edge, label %for.cond260.preheader.for.body263_crit_edge

for.cond260.preheader.for.body263_crit_edge:      ; preds = %for.cond260.preheader
  br label %for.body263

for.cond260.preheader.for.end301_crit_edge:       ; preds = %for.cond260.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end301

for.body237:                                      ; preds = %cleanup254.for.body237_crit_edge, %if.end233.for.body237_crit_edge
  %i.11268 = phi i32 [ %inc258, %cleanup254.for.body237_crit_edge ], [ 0, %if.end233.for.body237_crit_edge ]
  %arrayidx238 = getelementptr ptr, ptr %call9.i, i32 %i.11268
  %156 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx238, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %157, i32 noundef 4) #8
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %157, align 4
  %and.i.i.i1026 = and i32 %159, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1026)
  %tobool.not.i.i.i1027 = icmp eq i32 %and.i.i.i1026, 0
  br i1 %tobool.not.i.i.i1027, label %trylock_buffer.exit, label %for.body237.cleanup254_crit_edge

for.body237.cleanup254_crit_edge:                 ; preds = %for.body237
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup254

trylock_buffer.exit:                              ; preds = %for.body237
  tail call void @llvm.prefetch.p0(ptr %157, i32 1, i32 3, i32 1) #8
  %160 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %157, ptr %157, i32 4, ptr elementtype(i32) %157) #8, !srcloc !114
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %160, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !115
  %161 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool240.not.not = icmp eq i32 %161, 0
  br i1 %tobool240.not.not, label %if.end242, label %trylock_buffer.exit.cleanup254_crit_edge

trylock_buffer.exit.cleanup254_crit_edge:         ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup254

if.end242:                                        ; preds = %trylock_buffer.exit
  %162 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %157, align 4
  %and1.i.i950 = and i32 %163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i950)
  %tobool244.not = icmp eq i32 %and1.i.i950, 0
  br i1 %tobool244.not, label %if.end252, label %if.then251, !prof !87

if.then251:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unlock_buffer(ptr noundef %157) #8
  br label %cleanup254

if.end252:                                        ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #10
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %157, i32 0, i32 11
  %call.i.i.i1030 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %164 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !116
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %157, i32 0, i32 7
  %165 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @end_buffer_read_sync, ptr %b_end_io, align 4
  %call253 = tail call i32 @submit_bh(i32 noundef 0, i32 noundef 0, ptr noundef %157) #8
  br label %cleanup254

cleanup254:                                       ; preds = %if.end252, %if.then251, %trylock_buffer.exit.cleanup254_crit_edge, %for.body237.cleanup254_crit_edge
  %inc258 = add nuw i32 %i.11268, 1
  %exitcond1368.not = icmp eq i32 %inc258, %nr_bhs.0.lcssa
  br i1 %exitcond1368.not, label %for.cond260.preheader, label %cleanup254.for.body237_crit_edge

cleanup254.for.body237_crit_edge:                 ; preds = %cleanup254
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body237

for.body263:                                      ; preds = %for.inc299.for.body263_crit_edge, %for.cond260.preheader.for.body263_crit_edge
  %i.21270 = phi i32 [ %inc300, %for.inc299.for.body263_crit_edge ], [ 0, %for.cond260.preheader.for.body263_crit_edge ]
  %arrayidx265 = getelementptr ptr, ptr %call9.i, i32 %i.21270
  %166 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx265, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile i32, ptr %167, align 4
  %and1.i.i951 = and i32 %169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i951)
  %tobool267.not = icmp eq i32 %and1.i.i951, 0
  br i1 %tobool267.not, label %if.end269, label %for.body263.for.inc299_crit_edge

for.body263.for.inc299_crit_edge:                 ; preds = %for.body263
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc299

if.end269:                                        ; preds = %for.body263
  tail call void @__might_sleep(ptr noundef nonnull @.str.28, i32 noundef 354) #8
  %170 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %167, align 4
  %172 = and i32 %171, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not.i1031 = icmp eq i32 %172, 0
  br i1 %tobool.not.i1031, label %if.end269.wait_on_buffer.exit_crit_edge, label %if.then.i1032

if.end269.wait_on_buffer.exit_crit_edge:          ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_on_buffer.exit

if.then.i1032:                                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__wait_on_buffer(ptr noundef %167) #8
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i1032, %if.end269.wait_on_buffer.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !117
  %173 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %167, align 4
  %and1.i.i952 = and i32 %174, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i952)
  %tobool271.not = icmp eq i32 %and1.i.i952, 0
  br i1 %tobool271.not, label %if.then280, label %wait_on_buffer.exit.for.inc299_crit_edge, !prof !89

wait_on_buffer.exit.for.inc299_crit_edge:         ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc299

if.then280:                                       ; preds = %wait_on_buffer.exit
  %175 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef %176, ptr noundef nonnull @.str.6) #8
  %b_count.i1034 = getelementptr inbounds %struct.buffer_head, ptr %167, i32 0, i32 11
  %call.i.i.i1035 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i1034, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i1034, i32 1, i32 3, i32 1) #8
  %177 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i1034, ptr %b_count.i1034, i32 1, ptr elementtype(i32) %b_count.i1034) #8, !srcloc !116
  tail call void @io_schedule() #8
  tail call fastcc void @put_bh(ptr noundef %167)
  %178 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %167, align 4
  %and1.i.i953 = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i953)
  %tobool283.not = icmp eq i32 %and1.i.i953, 0
  %180 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %5, align 8
  br i1 %tobool283.not, label %read_err, label %if.end293, !prof !89

if.end293:                                        ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef %181, ptr noundef nonnull @.str.7) #8
  br label %for.inc299

for.inc299:                                       ; preds = %if.end293, %wait_on_buffer.exit.for.inc299_crit_edge, %for.body263.for.inc299_crit_edge
  %inc300 = add nuw i32 %i.21270, 1
  %exitcond1369.not = icmp eq i32 %inc300, %nr_bhs.0.lcssa
  br i1 %exitcond1369.not, label %for.inc299.for.end301_crit_edge, label %for.inc299.for.body263_crit_edge

for.inc299.for.body263_crit_edge:                 ; preds = %for.inc299
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body263

for.inc299.for.end301_crit_edge:                  ; preds = %for.inc299
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end301

for.end301:                                       ; preds = %for.inc299.for.end301_crit_edge, %for.cond260.preheader.for.end301_crit_edge, %if.end233.for.end301_crit_edge
  %cmp2351267.not13941398 = phi i1 [ true, %for.cond260.preheader.for.end301_crit_edge ], [ true, %if.end233.for.end301_crit_edge ], [ %cmp2351267.not, %for.inc299.for.end301_crit_edge ]
  %nr_bhs.0.lcssa1388 = phi i32 [ %nr_bhs.0.lcssa, %for.cond260.preheader.for.end301_crit_edge ], [ 0, %if.end233.for.end301_crit_edge ], [ %nr_bhs.0.lcssa, %for.inc299.for.end301_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @ntfs_cb_lock) #8
  %182 = load ptr, ptr @ntfs_compression_buffer, align 4
  %tobool303.not = icmp eq ptr %182, null
  br i1 %tobool303.not, label %for.end301.do.body313_crit_edge, label %do.end321, !prof !89

for.end301.do.body313_crit_edge:                  ; preds = %for.end301
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body313

for.end301.thread:                                ; preds = %do_next_cb
  tail call void @_raw_spin_lock(ptr noundef nonnull @ntfs_cb_lock) #8
  %183 = load ptr, ptr @ntfs_compression_buffer, align 4
  %tobool303.not1403 = icmp eq ptr %183, null
  br i1 %tobool303.not1403, label %for.end301.thread.do.body313_crit_edge, label %for.end301.thread.for.end330_crit_edge, !prof !89

for.end301.thread.for.end330_crit_edge:           ; preds = %for.end301.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end330

for.end301.thread.do.body313_crit_edge:           ; preds = %for.end301.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body313

do.body313:                                       ; preds = %for.end301.thread.do.body313_crit_edge, %for.end301.do.body313_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 700, 0\0A.popsection", ""() #8, !srcloc !118
  unreachable

do.end321:                                        ; preds = %for.end301
  br i1 %cmp2351267.not13941398, label %do.end321.for.end330_crit_edge, label %do.end321.for.body325_crit_edge

do.end321.for.body325_crit_edge:                  ; preds = %do.end321
  br label %for.body325

do.end321.for.end330_crit_edge:                   ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end330

for.body325:                                      ; preds = %for.body325.for.body325_crit_edge, %do.end321.for.body325_crit_edge
  %i.31273 = phi i32 [ %inc329, %for.body325.for.body325_crit_edge ], [ 0, %do.end321.for.body325_crit_edge ]
  %cb_pos.01272 = phi ptr [ %add.ptr327, %for.body325.for.body325_crit_edge ], [ %182, %do.end321.for.body325_crit_edge ]
  %arrayidx326 = getelementptr ptr, ptr %call9.i, i32 %i.31273
  %184 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx326, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %185, i32 0, i32 5
  %186 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %b_data, align 4
  %188 = call ptr @memcpy(ptr %cb_pos.01272, ptr %187, i32 %9)
  %add.ptr327 = getelementptr i8, ptr %cb_pos.01272, i32 %9
  %inc329 = add nuw i32 %i.31273, 1
  %exitcond1370.not = icmp eq i32 %inc329, %nr_bhs.0.lcssa1388
  br i1 %exitcond1370.not, label %for.body325.for.end330_crit_edge, label %for.body325.for.body325_crit_edge

for.body325.for.body325_crit_edge:                ; preds = %for.body325
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body325

for.body325.for.end330_crit_edge:                 ; preds = %for.body325
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end330

for.end330:                                       ; preds = %for.body325.for.end330_crit_edge, %do.end321.for.end330_crit_edge, %for.end301.thread.for.end330_crit_edge
  %vcn.0.lcssa13851393139914041412 = phi i64 [ %vcn.0.lcssa, %do.end321.for.end330_crit_edge ], [ %start_vcn.0, %for.end301.thread.for.end330_crit_edge ], [ %vcn.0.lcssa, %for.body325.for.end330_crit_edge ]
  %cmp2351267.not1394139814051411 = phi i1 [ true, %do.end321.for.end330_crit_edge ], [ true, %for.end301.thread.for.end330_crit_edge ], [ %cmp2351267.not13941398, %for.body325.for.end330_crit_edge ]
  %189 = phi ptr [ %182, %do.end321.for.end330_crit_edge ], [ %183, %for.end301.thread.for.end330_crit_edge ], [ %182, %for.body325.for.end330_crit_edge ]
  %nr_bhs.0.lcssa1389 = phi i32 [ %nr_bhs.0.lcssa1388, %do.end321.for.end330_crit_edge ], [ 0, %for.end301.thread.for.end330_crit_edge ], [ %nr_bhs.0.lcssa1388, %for.body325.for.end330_crit_edge ]
  %cb_pos.0.lcssa = phi ptr [ %182, %do.end321.for.end330_crit_edge ], [ %183, %for.end301.thread.for.end330_crit_edge ], [ %add.ptr327, %for.body325.for.end330_crit_edge ]
  %add.ptr1413 = getelementptr i8, ptr %189, i32 %15
  %add.ptr331 = getelementptr i8, ptr %cb_pos.0.lcssa, i32 2
  %cmp333.not = icmp ugt ptr %add.ptr331, %add.ptr1413
  br i1 %cmp333.not, label %for.end330.if.end336_crit_edge, label %if.then335

for.end330.if.end336_crit_edge:                   ; preds = %for.end330
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end336

if.then335:                                       ; preds = %for.end330
  call void @__sanitizer_cov_trace_pc() #10
  %190 = ptrtoint ptr %cb_pos.0.lcssa to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 0, ptr %cb_pos.0.lcssa, align 2
  br label %if.end336

if.end336:                                        ; preds = %if.then335, %for.end330.if.end336_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 719, ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef nonnull @.str.8) #8
  %191 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cur_page, align 4
  %shl337 = shl i32 %192, 12
  %193 = ptrtoint ptr %cur_ofs to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %cur_ofs, align 4
  %add338 = add i32 %194, %15
  %add339 = add i32 %add338, %shl337
  %and340 = and i32 %add339, 4095
  %shr341 = ashr i32 %add339, 12
  %195 = tail call i32 @llvm.umin.i32(i32 %shr341, i32 %60)
  call void @__sanitizer_cov_trace_cmp8(i64 %vcn.0.lcssa13851393139914041412, i64 %start_vcn.0)
  %cmp348 = icmp eq i64 %vcn.0.lcssa13851393139914041412, %start_vcn.0
  br i1 %cmp348, label %if.then350, label %if.else407

if.then350:                                       ; preds = %if.end336
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 732, ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef nonnull @.str.9) #8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ntfs_cb_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340)
  %tobool351.not = icmp ne i32 %and340, 0
  %dec353 = sext i1 %tobool351.not to i32
  %spec.select922 = add i32 %195, %dec353
  %196 = ptrtoint ptr %cur_ofs to i32
  call void @__asan_load4_noabort(i32 %196)
  %cur_ofs.promoted1295 = load i32, ptr %cur_ofs, align 4
  %197 = ptrtoint ptr %xpage_done to i32
  call void @__asan_load1_noabort(i32 %197)
  %xpage_done.promoted1298 = load i8, ptr %xpage_done, align 1
  %198 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %cur_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %spec.select922)
  %cmp3561301 = icmp ult i32 %199, %spec.select922
  br i1 %cmp3561301, label %if.then350.for.body358_crit_edge, label %if.then350.for.end393_crit_edge

if.then350.for.end393_crit_edge:                  ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end393

if.then350.for.body358_crit_edge:                 ; preds = %if.then350
  br label %for.body358

for.body358:                                      ; preds = %for.inc391.for.body358_crit_edge, %if.then350.for.body358_crit_edge
  %200 = phi i32 [ %inc392, %for.inc391.for.body358_crit_edge ], [ %199, %if.then350.for.body358_crit_edge ]
  %cb_pos.11302 = phi ptr [ %add.ptr386, %for.inc391.for.body358_crit_edge ], [ %189, %if.then350.for.body358_crit_edge ]
  %201 = phi i32 [ 0, %for.inc391.for.body358_crit_edge ], [ %cur_ofs.promoted1295, %if.then350.for.body358_crit_edge ]
  %202 = phi i8 [ %228, %for.inc391.for.body358_crit_edge ], [ %xpage_done.promoted1298, %if.then350.for.body358_crit_edge ]
  %arrayidx359 = getelementptr ptr, ptr %retval.0.i, i32 %200
  %203 = ptrtoint ptr %arrayidx359 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %arrayidx359, align 4
  %tobool360.not = icmp eq ptr %204, null
  br i1 %tobool360.not, label %for.body358.if.end384_crit_edge, label %if.then361

for.body358.if.end384_crit_edge:                  ; preds = %for.body358
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end384

if.then361:                                       ; preds = %for.body358
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool362.not = icmp eq i32 %201, 0
  %call372 = tail call ptr @page_address(ptr noundef nonnull %204) #8
  br i1 %tobool362.not, label %if.then371, label %if.else373, !prof !87

if.then371:                                       ; preds = %if.then361
  call void @__sanitizer_cov_trace_pc() #10
  %205 = call ptr @memset(ptr %call372, i32 0, i32 4096)
  br label %if.end377

if.else373:                                       ; preds = %if.then361
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr375 = getelementptr i8, ptr %call372, i32 %201
  %sub376 = sub i32 4096, %201
  %206 = call ptr @memset(ptr %add.ptr375, i32 0, i32 %sub376)
  br label %if.end377

if.end377:                                        ; preds = %if.else373, %if.then371
  tail call void @flush_dcache_page(ptr noundef nonnull %204) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 55) #8
  %207 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %204, align 4
  %shr.i.i1036 = lshr i32 %208, 30
  %209 = zext i32 %shr.i.i1036 to i64
  call void @__sanitizer_cov_trace_switch(i64 %209, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %shr.i.i1036, label %if.end377.kunmap.exit_crit_edge [
    i32 2, label %if.end377.if.end.i1039_crit_edge
    i32 3, label %is_highmem_idx.exit.i1038
  ]

if.end377.if.end.i1039_crit_edge:                 ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i1039

if.end377.kunmap.exit_crit_edge:                  ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i1038:                        ; preds = %if.end377
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %210 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %210)
  %cmp2.i.not.i1037 = icmp eq i32 %210, 2
  br i1 %cmp2.i.not.i1037, label %is_highmem_idx.exit.i1038.if.end.i1039_crit_edge, label %is_highmem_idx.exit.i1038.kunmap.exit_crit_edge

is_highmem_idx.exit.i1038.kunmap.exit_crit_edge:  ; preds = %is_highmem_idx.exit.i1038
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i1038.if.end.i1039_crit_edge: ; preds = %is_highmem_idx.exit.i1038
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i1039

if.end.i1039:                                     ; preds = %is_highmem_idx.exit.i1038.if.end.i1039_crit_edge, %if.end377.if.end.i1039_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %204) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i1039, %is_highmem_idx.exit.i1038.kunmap.exit_crit_edge, %if.end377.kunmap.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !102
  %211 = getelementptr inbounds %struct.page, ptr %204, i32 0, i32 1
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load volatile i32, ptr %211, align 4
  %and.i.i.i.i954 = and i32 %213, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i954)
  %tobool.not.i.i.i955 = icmp eq i32 %and.i.i.i.i954, 0
  br i1 %tobool.not.i.i.i955, label %SetPageUptodate.exit957, label %if.then.i.i.i956, !prof !87

if.then.i.i.i956:                                 ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %204, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !103
  unreachable

SetPageUptodate.exit957:                          ; preds = %kunmap.exit
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %204) #8
  tail call void @unlock_page(ptr noundef nonnull %204) #8
  %214 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %cur_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %sub87)
  %cmp378 = icmp eq i32 %215, %sub87
  br i1 %cmp378, label %SetPageUptodate.exit957.if.end382_crit_edge, label %if.else381

SetPageUptodate.exit957.if.end382_crit_edge:      ; preds = %SetPageUptodate.exit957
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end382

if.else381:                                       ; preds = %SetPageUptodate.exit957
  %216 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile i32, ptr %211, align 4
  %and.i.i1040 = and i32 %217, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1040)
  %tobool.not.i.i1041 = icmp eq i32 %and.i.i1040, 0
  br i1 %tobool.not.i.i1041, label %if.end.i.i1044, label %if.then.i.i1043, !prof !87

if.then.i.i1043:                                  ; preds = %if.else381
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i1042 = add i32 %217, -1
  br label %_compound_head.exit.i1049

if.end.i.i1044:                                   ; preds = %if.else381
  call void @__sanitizer_cov_trace_pc() #10
  %218 = ptrtoint ptr %204 to i32
  br label %_compound_head.exit.i1049

_compound_head.exit.i1049:                        ; preds = %if.end.i.i1044, %if.then.i.i1043
  %retval.0.i.i1045 = phi i32 [ %sub.i.i1042, %if.then.i.i1043 ], [ %218, %if.end.i.i1044 ]
  %219 = inttoptr i32 %retval.0.i.i1045 to ptr
  %_refcount.i.i.i.i.i1046 = getelementptr inbounds %struct.page, ptr %219, i32 0, i32 3
  %call.i.i.i.i.i.i.i1047 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i1046, i32 noundef 4) #8
  %220 = ptrtoint ptr %_refcount.i.i.i.i.i1046 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load volatile i32, ptr %_refcount.i.i.i.i.i1046, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %cmp.i.i.i.i1048 = icmp eq i32 %221, 0
  br i1 %cmp.i.i.i.i1048, label %if.then.i.i.i.i1050, label %do.end5.i.i.i.i1054, !prof !89

if.then.i.i.i.i1050:                              ; preds = %_compound_head.exit.i1049
  call void @__sanitizer_cov_trace_pc() #10
  %222 = inttoptr i32 %retval.0.i.i1045 to ptr
  tail call void @dump_page(ptr noundef %222, ptr noundef nonnull @.str.27) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

do.end5.i.i.i.i1054:                              ; preds = %_compound_head.exit.i1049
  %call.i.i.i10.i.i.i.i1051 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i1046, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i1046, i32 1, i32 3, i32 1) #8
  %223 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i1046, ptr %_refcount.i.i.i.i.i1046, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i1046) #8, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i.i.i1052 = extractvalue { i32, i32 } %223, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i1052)
  %cmp.i.i.i.i.i.i.i1053 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i1052, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_read_compressed_block, %if.then.i.i.i.i.i1056)) #8
          to label %folio_put_testzero.exit.i.i1057 [label %if.then.i.i.i.i.i1056], !srcloc !113

if.then.i.i.i.i.i1056:                            ; preds = %do.end5.i.i.i.i1054
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i1055 = zext i1 %cmp.i.i.i.i.i.i.i1053 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %219, i32 noundef -1, i32 noundef %conv.i.i.i.i.i1055) #8
  br label %folio_put_testzero.exit.i.i1057

folio_put_testzero.exit.i.i1057:                  ; preds = %if.then.i.i.i.i.i1056, %do.end5.i.i.i.i1054
  br i1 %cmp.i.i.i.i.i.i.i1053, label %if.then.i4.i1058, label %folio_put_testzero.exit.i.i1057.if.end382_crit_edge

folio_put_testzero.exit.i.i1057.if.end382_crit_edge: ; preds = %folio_put_testzero.exit.i.i1057
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end382

if.then.i4.i1058:                                 ; preds = %folio_put_testzero.exit.i.i1057
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %219) #8
  br label %if.end382

if.end382:                                        ; preds = %if.then.i4.i1058, %folio_put_testzero.exit.i.i1057.if.end382_crit_edge, %SetPageUptodate.exit957.if.end382_crit_edge
  %224 = phi i8 [ %202, %if.then.i4.i1058 ], [ %202, %folio_put_testzero.exit.i.i1057.if.end382_crit_edge ], [ 1, %SetPageUptodate.exit957.if.end382_crit_edge ]
  %225 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %cur_page, align 4
  %arrayidx383 = getelementptr ptr, ptr %retval.0.i, i32 %226
  %227 = ptrtoint ptr %arrayidx383 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr null, ptr %arrayidx383, align 4
  br label %if.end384

if.end384:                                        ; preds = %if.end382, %for.body358.if.end384_crit_edge
  %228 = phi i8 [ %224, %if.end382 ], [ %202, %for.body358.if.end384_crit_edge ]
  %sub385 = sub i32 4096, %201
  %add.ptr386 = getelementptr i8, ptr %cb_pos.11302, i32 %sub385
  %cmp387.not = icmp ult ptr %add.ptr386, %add.ptr1413
  br i1 %cmp387.not, label %for.inc391, label %if.end384.for.end393_crit_edge

if.end384.for.end393_crit_edge:                   ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end393

for.inc391:                                       ; preds = %if.end384
  %229 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %cur_page, align 4
  %inc392 = add i32 %230, 1
  store i32 %inc392, ptr %cur_page, align 4
  %cmp356 = icmp ult i32 %inc392, %spec.select922
  br i1 %cmp356, label %for.inc391.for.body358_crit_edge, label %for.inc391.for.end393_crit_edge

for.inc391.for.end393_crit_edge:                  ; preds = %for.inc391
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end393

for.inc391.for.body358_crit_edge:                 ; preds = %for.inc391
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body358

for.end393:                                       ; preds = %for.inc391.for.end393_crit_edge, %if.end384.for.end393_crit_edge, %if.then350.for.end393_crit_edge
  %231 = phi i8 [ %xpage_done.promoted1298, %if.then350.for.end393_crit_edge ], [ %228, %if.end384.for.end393_crit_edge ], [ %228, %for.inc391.for.end393_crit_edge ]
  %232 = phi i32 [ %cur_ofs.promoted1295, %if.then350.for.end393_crit_edge ], [ 0, %if.end384.for.end393_crit_edge ], [ 0, %for.inc391.for.end393_crit_edge ]
  %cb_pos.2 = phi ptr [ %189, %if.then350.for.end393_crit_edge ], [ %add.ptr386, %if.end384.for.end393_crit_edge ], [ %add.ptr386, %for.inc391.for.end393_crit_edge ]
  %233 = ptrtoint ptr %cur_ofs to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %cur_ofs, align 4
  %234 = ptrtoint ptr %xpage_done to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %231, ptr %xpage_done, align 1
  %cmp396 = icmp ult ptr %cb_pos.2, %add.ptr1413
  %or.cond923 = select i1 %tobool351.not, i1 %cmp396, i1 false
  br i1 %or.cond923, label %if.then398, label %for.end393.if.end498_crit_edge

for.end393.if.end498_crit_edge:                   ; preds = %for.end393
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end498

if.then398:                                       ; preds = %for.end393
  %235 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %cur_page, align 4
  %arrayidx399 = getelementptr ptr, ptr %retval.0.i, i32 %236
  %237 = ptrtoint ptr %arrayidx399 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %arrayidx399, align 4
  %tobool400.not = icmp eq ptr %238, null
  br i1 %tobool400.not, label %if.then398.if.end405_crit_edge, label %if.then401

if.then398.if.end405_crit_edge:                   ; preds = %if.then398
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end405

if.then401:                                       ; preds = %if.then398
  call void @__sanitizer_cov_trace_pc() #10
  %call402 = tail call ptr @page_address(ptr noundef nonnull %238) #8
  %239 = ptrtoint ptr %cur_ofs to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %cur_ofs, align 4
  %add.ptr403 = getelementptr i8, ptr %call402, i32 %240
  %sub404 = sub i32 %and340, %240
  %241 = call ptr @memset(ptr %add.ptr403, i32 0, i32 %sub404)
  br label %if.end405

if.end405:                                        ; preds = %if.then401, %if.then398.if.end405_crit_edge
  %242 = ptrtoint ptr %cur_ofs to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %and340, ptr %cur_ofs, align 4
  br label %if.end498

if.else407:                                       ; preds = %if.end336
  call void @__sanitizer_cov_trace_cmp8(i64 %vcn.0.lcssa13851393139914041412, i64 %add147)
  %cmp408 = icmp eq i64 %vcn.0.lcssa13851393139914041412, %add147
  br i1 %cmp408, label %if.then410, label %if.else473

if.then410:                                       ; preds = %if.else407
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 779, ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef nonnull @.str.10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340)
  %tobool411.not = icmp ne i32 %and340, 0
  %dec413 = sext i1 %tobool411.not to i32
  %spec.select924 = add i32 %195, %dec413
  %243 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %243)
  %cur_page.promoted = load i32, ptr %cur_page, align 4
  %244 = ptrtoint ptr %cur_ofs to i32
  call void @__asan_load4_noabort(i32 %244)
  %cur_ofs.promoted = load i32, ptr %cur_ofs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_page.promoted, i32 %spec.select924)
  %cmp4161279 = icmp ult i32 %cur_page.promoted, %spec.select924
  br i1 %cmp4161279, label %if.then410.for.body418_crit_edge, label %if.then410.for.end434_crit_edge

if.then410.for.end434_crit_edge:                  ; preds = %if.then410
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end434

if.then410.for.body418_crit_edge:                 ; preds = %if.then410
  br label %for.body418

for.body418:                                      ; preds = %for.inc432.for.body418_crit_edge, %if.then410.for.body418_crit_edge
  %cb_pos.31281 = phi ptr [ %add.ptr427, %for.inc432.for.body418_crit_edge ], [ %189, %if.then410.for.body418_crit_edge ]
  %inc43312781280 = phi i32 [ %inc433, %for.inc432.for.body418_crit_edge ], [ %cur_page.promoted, %if.then410.for.body418_crit_edge ]
  %245 = phi i32 [ 0, %for.inc432.for.body418_crit_edge ], [ %cur_ofs.promoted, %if.then410.for.body418_crit_edge ]
  %arrayidx419 = getelementptr ptr, ptr %retval.0.i, i32 %inc43312781280
  %246 = ptrtoint ptr %arrayidx419 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx419, align 4
  %tobool420.not = icmp eq ptr %247, null
  br i1 %tobool420.not, label %for.body418.if.end425_crit_edge, label %if.then421

for.body418.if.end425_crit_edge:                  ; preds = %for.body418
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = sub i32 4096, %245
  br label %if.end425

if.then421:                                       ; preds = %for.body418
  call void @__sanitizer_cov_trace_pc() #10
  %call422 = tail call ptr @page_address(ptr noundef nonnull %247) #8
  %add.ptr423 = getelementptr i8, ptr %call422, i32 %245
  %sub424 = sub i32 4096, %245
  %248 = call ptr @memcpy(ptr %add.ptr423, ptr %cb_pos.31281, i32 %sub424)
  br label %if.end425

if.end425:                                        ; preds = %if.then421, %for.body418.if.end425_crit_edge
  %sub426.pre-phi = phi i32 [ %.pre, %for.body418.if.end425_crit_edge ], [ %sub424, %if.then421 ]
  %add.ptr427 = getelementptr i8, ptr %cb_pos.31281, i32 %sub426.pre-phi
  %cmp428.not = icmp ult ptr %add.ptr427, %add.ptr1413
  br i1 %cmp428.not, label %for.inc432, label %if.end425.for.end434_crit_edge

if.end425.for.end434_crit_edge:                   ; preds = %if.end425
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end434

for.inc432:                                       ; preds = %if.end425
  %inc433 = add nuw i32 %inc43312781280, 1
  %249 = ptrtoint ptr %cur_page to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %inc433, ptr %cur_page, align 4
  %exitcond1371.not = icmp eq i32 %inc433, %spec.select924
  br i1 %exitcond1371.not, label %for.inc432.for.end434_crit_edge, label %for.inc432.for.body418_crit_edge

for.inc432.for.body418_crit_edge:                 ; preds = %for.inc432
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body418

for.inc432.for.end434_crit_edge:                  ; preds = %for.inc432
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end434

for.end434:                                       ; preds = %for.inc432.for.end434_crit_edge, %if.end425.for.end434_crit_edge, %if.then410.for.end434_crit_edge
  %250 = phi i32 [ %cur_ofs.promoted, %if.then410.for.end434_crit_edge ], [ 0, %if.end425.for.end434_crit_edge ], [ 0, %for.inc432.for.end434_crit_edge ]
  %cb_pos.4 = phi ptr [ %189, %if.then410.for.end434_crit_edge ], [ %add.ptr427, %if.end425.for.end434_crit_edge ], [ %add.ptr427, %for.inc432.for.end434_crit_edge ]
  %251 = ptrtoint ptr %cur_ofs to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %cur_ofs, align 4
  %cmp437 = icmp ult ptr %cb_pos.4, %add.ptr1413
  %or.cond925 = select i1 %tobool411.not, i1 %cmp437, i1 false
  br i1 %or.cond925, label %if.then439, label %for.end434.if.end449_crit_edge

for.end434.if.end449_crit_edge:                   ; preds = %for.end434
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end449

if.then439:                                       ; preds = %for.end434
  %252 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %cur_page, align 4
  %arrayidx440 = getelementptr ptr, ptr %retval.0.i, i32 %253
  %254 = ptrtoint ptr %arrayidx440 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %arrayidx440, align 4
  %tobool441.not = icmp eq ptr %255, null
  br i1 %tobool441.not, label %if.then439.if.end446_crit_edge, label %if.then442

if.then439.if.end446_crit_edge:                   ; preds = %if.then439
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end446

if.then442:                                       ; preds = %if.then439
  call void @__sanitizer_cov_trace_pc() #10
  %call443 = tail call ptr @page_address(ptr noundef nonnull %255) #8
  %256 = ptrtoint ptr %cur_ofs to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %cur_ofs, align 4
  %add.ptr444 = getelementptr i8, ptr %call443, i32 %257
  %sub445 = sub i32 %and340, %257
  %258 = call ptr @memcpy(ptr %add.ptr444, ptr %cb_pos.4, i32 %sub445)
  br label %if.end446

if.end446:                                        ; preds = %if.then442, %if.then439.if.end446_crit_edge
  %259 = ptrtoint ptr %cur_ofs to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %and340, ptr %cur_ofs, align 4
  br label %if.end449

if.end449:                                        ; preds = %if.end446, %for.end434.if.end449_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ntfs_cb_lock) #8
  %260 = ptrtoint ptr %xpage_done to i32
  call void @__asan_load1_noabort(i32 %260)
  %xpage_done.promoted = load i8, ptr %xpage_done, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %192, i32 %spec.select924)
  %cmp4511288 = icmp ult i32 %192, %spec.select924
  br i1 %cmp4511288, label %if.end449.for.body453_crit_edge, label %if.end449.if.end498.loopexit_crit_edge

if.end449.if.end498.loopexit_crit_edge:           ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end498.loopexit

if.end449.for.body453_crit_edge:                  ; preds = %if.end449
  br label %for.body453

for.body453:                                      ; preds = %if.end463.for.body453_crit_edge, %if.end449.for.body453_crit_edge
  %cb_pos2.01292 = phi ptr [ %add.ptr465, %if.end463.for.body453_crit_edge ], [ %189, %if.end449.for.body453_crit_edge ]
  %cur_ofs2.01291 = phi i32 [ 0, %if.end463.for.body453_crit_edge ], [ %194, %if.end449.for.body453_crit_edge ]
  %cur2_page.01289 = phi i32 [ %inc471, %if.end463.for.body453_crit_edge ], [ %192, %if.end449.for.body453_crit_edge ]
  %261 = phi i8 [ %287, %if.end463.for.body453_crit_edge ], [ %xpage_done.promoted, %if.end449.for.body453_crit_edge ]
  %arrayidx454 = getelementptr ptr, ptr %retval.0.i, i32 %cur2_page.01289
  %262 = ptrtoint ptr %arrayidx454 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx454, align 4
  %tobool455.not = icmp eq ptr %263, null
  br i1 %tobool455.not, label %for.body453.if.end463_crit_edge, label %if.then456

for.body453.if.end463_crit_edge:                  ; preds = %for.body453
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

if.then456:                                       ; preds = %for.body453
  %index.i = getelementptr inbounds %struct.page, ptr %263, i32 0, i32 1, i32 0, i32 2
  %264 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %265 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %conv.i)
  %cmp.not.i = icmp sle i64 %shr.i, %conv.i
  %or.cond.i = and i1 %cmp2.i, %cmp.not.i
  br i1 %or.cond.i, label %if.then.i1060, label %if.then456.handle_bounds_compressed_page.exit_crit_edge

if.then456.handle_bounds_compressed_page.exit_crit_edge: ; preds = %if.then456
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_bounds_compressed_page.exit

if.then.i1060:                                    ; preds = %if.then456
  %call.i.i = tail call ptr @page_address(ptr noundef nonnull %263) #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 92, ptr noundef nonnull @__func__.zero_partial_compressed_page, ptr noundef nonnull @.str.30) #8
  %266 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %index.i, align 4
  %conv.i.i = zext i32 %267 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %55)
  %cmp.not.i.i = icmp slt i64 %shl.i.i, %55
  br i1 %cmp.not.i.i, label %if.end.i.i1063, label %if.then.i.i1061

if.then.i.i1061:                                  ; preds = %if.then.i1060
  call void @__sanitizer_cov_trace_pc() #10
  %268 = call ptr @memset(ptr %call.i.i, i32 0, i32 4096)
  br label %handle_bounds_compressed_page.exit

if.end.i.i1063:                                   ; preds = %if.then.i1060
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %conv2.i.i
  %269 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i1062)
  br label %handle_bounds_compressed_page.exit

handle_bounds_compressed_page.exit:               ; preds = %if.end.i.i1063, %if.then.i.i1061, %if.then456.handle_bounds_compressed_page.exit_crit_edge
  tail call void @flush_dcache_page(ptr noundef nonnull %263) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 55) #8
  %270 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %263, align 4
  %shr.i.i1065 = lshr i32 %271, 30
  %272 = zext i32 %shr.i.i1065 to i64
  call void @__sanitizer_cov_trace_switch(i64 %272, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %shr.i.i1065, label %handle_bounds_compressed_page.exit.kunmap.exit1069_crit_edge [
    i32 2, label %handle_bounds_compressed_page.exit.if.end.i1068_crit_edge
    i32 3, label %is_highmem_idx.exit.i1067
  ]

handle_bounds_compressed_page.exit.if.end.i1068_crit_edge: ; preds = %handle_bounds_compressed_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i1068

handle_bounds_compressed_page.exit.kunmap.exit1069_crit_edge: ; preds = %handle_bounds_compressed_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit1069

is_highmem_idx.exit.i1067:                        ; preds = %handle_bounds_compressed_page.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %273 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %273)
  %cmp2.i.not.i1066 = icmp eq i32 %273, 2
  br i1 %cmp2.i.not.i1066, label %is_highmem_idx.exit.i1067.if.end.i1068_crit_edge, label %is_highmem_idx.exit.i1067.kunmap.exit1069_crit_edge

is_highmem_idx.exit.i1067.kunmap.exit1069_crit_edge: ; preds = %is_highmem_idx.exit.i1067
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit1069

is_highmem_idx.exit.i1067.if.end.i1068_crit_edge: ; preds = %is_highmem_idx.exit.i1067
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i1068

if.end.i1068:                                     ; preds = %is_highmem_idx.exit.i1067.if.end.i1068_crit_edge, %handle_bounds_compressed_page.exit.if.end.i1068_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %263) #8
  br label %kunmap.exit1069

kunmap.exit1069:                                  ; preds = %if.end.i1068, %is_highmem_idx.exit.i1067.kunmap.exit1069_crit_edge, %handle_bounds_compressed_page.exit.kunmap.exit1069_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !102
  %274 = getelementptr inbounds %struct.page, ptr %263, i32 0, i32 1
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load volatile i32, ptr %274, align 4
  %and.i.i.i.i958 = and i32 %276, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i958)
  %tobool.not.i.i.i959 = icmp eq i32 %and.i.i.i.i958, 0
  br i1 %tobool.not.i.i.i959, label %SetPageUptodate.exit961, label %if.then.i.i.i960, !prof !87

if.then.i.i.i960:                                 ; preds = %kunmap.exit1069
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %263, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !103
  unreachable

SetPageUptodate.exit961:                          ; preds = %kunmap.exit1069
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %263) #8
  tail call void @unlock_page(ptr noundef nonnull %263) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %cur2_page.01289, i32 %sub87)
  %cmp457 = icmp eq i32 %cur2_page.01289, %sub87
  br i1 %cmp457, label %SetPageUptodate.exit961.if.end461_crit_edge, label %if.else460

SetPageUptodate.exit961.if.end461_crit_edge:      ; preds = %SetPageUptodate.exit961
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end461

if.else460:                                       ; preds = %SetPageUptodate.exit961
  %277 = ptrtoint ptr %274 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load volatile i32, ptr %274, align 4
  %and.i.i1070 = and i32 %278, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1070)
  %tobool.not.i.i1071 = icmp eq i32 %and.i.i1070, 0
  br i1 %tobool.not.i.i1071, label %if.end.i.i1074, label %if.then.i.i1073, !prof !87

if.then.i.i1073:                                  ; preds = %if.else460
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i1072 = add i32 %278, -1
  br label %_compound_head.exit.i1079

if.end.i.i1074:                                   ; preds = %if.else460
  call void @__sanitizer_cov_trace_pc() #10
  %279 = ptrtoint ptr %263 to i32
  br label %_compound_head.exit.i1079

_compound_head.exit.i1079:                        ; preds = %if.end.i.i1074, %if.then.i.i1073
  %retval.0.i.i1075 = phi i32 [ %sub.i.i1072, %if.then.i.i1073 ], [ %279, %if.end.i.i1074 ]
  %280 = inttoptr i32 %retval.0.i.i1075 to ptr
  %_refcount.i.i.i.i.i1076 = getelementptr inbounds %struct.page, ptr %280, i32 0, i32 3
  %call.i.i.i.i.i.i.i1077 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i1076, i32 noundef 4) #8
  %281 = ptrtoint ptr %_refcount.i.i.i.i.i1076 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load volatile i32, ptr %_refcount.i.i.i.i.i1076, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %282)
  %cmp.i.i.i.i1078 = icmp eq i32 %282, 0
  br i1 %cmp.i.i.i.i1078, label %if.then.i.i.i.i1080, label %do.end5.i.i.i.i1084, !prof !89

if.then.i.i.i.i1080:                              ; preds = %_compound_head.exit.i1079
  call void @__sanitizer_cov_trace_pc() #10
  %283 = inttoptr i32 %retval.0.i.i1075 to ptr
  tail call void @dump_page(ptr noundef %283, ptr noundef nonnull @.str.27) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

do.end5.i.i.i.i1084:                              ; preds = %_compound_head.exit.i1079
  %call.i.i.i10.i.i.i.i1081 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i1076, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i1076, i32 1, i32 3, i32 1) #8
  %284 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i1076, ptr %_refcount.i.i.i.i.i1076, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i1076) #8, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i.i.i1082 = extractvalue { i32, i32 } %284, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i1082)
  %cmp.i.i.i.i.i.i.i1083 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i1082, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_read_compressed_block, %if.then.i.i.i.i.i1086)) #8
          to label %folio_put_testzero.exit.i.i1087 [label %if.then.i.i.i.i.i1086], !srcloc !113

if.then.i.i.i.i.i1086:                            ; preds = %do.end5.i.i.i.i1084
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i1085 = zext i1 %cmp.i.i.i.i.i.i.i1083 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %280, i32 noundef -1, i32 noundef %conv.i.i.i.i.i1085) #8
  br label %folio_put_testzero.exit.i.i1087

folio_put_testzero.exit.i.i1087:                  ; preds = %if.then.i.i.i.i.i1086, %do.end5.i.i.i.i1084
  br i1 %cmp.i.i.i.i.i.i.i1083, label %if.then.i4.i1088, label %folio_put_testzero.exit.i.i1087.if.end461_crit_edge

folio_put_testzero.exit.i.i1087.if.end461_crit_edge: ; preds = %folio_put_testzero.exit.i.i1087
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end461

if.then.i4.i1088:                                 ; preds = %folio_put_testzero.exit.i.i1087
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %280) #8
  br label %if.end461

if.end461:                                        ; preds = %if.then.i4.i1088, %folio_put_testzero.exit.i.i1087.if.end461_crit_edge, %SetPageUptodate.exit961.if.end461_crit_edge
  %285 = phi i8 [ %261, %if.then.i4.i1088 ], [ %261, %folio_put_testzero.exit.i.i1087.if.end461_crit_edge ], [ 1, %SetPageUptodate.exit961.if.end461_crit_edge ]
  %286 = ptrtoint ptr %arrayidx454 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr null, ptr %arrayidx454, align 4
  br label %if.end463

if.end463:                                        ; preds = %if.end461, %for.body453.if.end463_crit_edge
  %287 = phi i8 [ %285, %if.end461 ], [ %261, %for.body453.if.end463_crit_edge ]
  %sub464 = sub i32 4096, %cur_ofs2.01291
  %add.ptr465 = getelementptr i8, ptr %cb_pos2.01292, i32 %sub464
  %cmp466.not = icmp ult ptr %add.ptr465, %add.ptr1413
  %inc471 = add nuw i32 %cur2_page.01289, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc471, i32 %spec.select924)
  %cmp451 = icmp ult i32 %inc471, %spec.select924
  %or.cond1317 = select i1 %cmp466.not, i1 %cmp451, i1 false
  br i1 %or.cond1317, label %if.end463.for.body453_crit_edge, label %if.end463.if.end498.loopexit_crit_edge

if.end463.if.end498.loopexit_crit_edge:           ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end498.loopexit

if.end463.for.body453_crit_edge:                  ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body453

if.else473:                                       ; preds = %if.else407
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 844, ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef nonnull @.str.11) #8
  %call475 = call fastcc i32 @ntfs_decompress(ptr noundef %retval.0.i, ptr noundef %retval.0.i999, ptr noundef nonnull %cur_page, ptr noundef nonnull %cur_ofs, i32 noundef %195, i32 noundef %and340, i32 noundef %sub87, ptr noundef nonnull %xpage_done, ptr noundef nonnull %189, i32 noundef %15, i64 noundef %51, i64 noundef %55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call475)
  %tobool476.not = icmp eq i32 %call475, 0
  br i1 %tobool476.not, label %if.else473.if.end498_crit_edge, label %if.then477

if.else473.if.end498_crit_edge:                   ; preds = %if.else473
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end498

if.then477:                                       ; preds = %if.else473
  %288 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %5, align 8
  %290 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %mft_no, align 4
  %sub479 = sub i32 0, %call475
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef %289, ptr noundef nonnull @.str.12, i32 noundef %291, i32 noundef %sub479) #8
  %292 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %cur_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %192, i32 %293)
  %cmp4811275 = icmp ult i32 %192, %293
  br i1 %cmp4811275, label %if.then477.for.body483_crit_edge, label %if.then477.if.end498_crit_edge

if.then477.if.end498_crit_edge:                   ; preds = %if.then477
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end498

if.then477.for.body483_crit_edge:                 ; preds = %if.then477
  br label %for.body483

for.body483:                                      ; preds = %for.inc493.for.body483_crit_edge, %if.then477.for.body483_crit_edge
  %prev_cur_page.01276 = phi i32 [ %inc494, %for.inc493.for.body483_crit_edge ], [ %192, %if.then477.for.body483_crit_edge ]
  %arrayidx484 = getelementptr ptr, ptr %retval.0.i, i32 %prev_cur_page.01276
  %294 = ptrtoint ptr %arrayidx484 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %arrayidx484, align 4
  %tobool485.not = icmp eq ptr %295, null
  br i1 %tobool485.not, label %for.body483.for.inc493_crit_edge, label %if.then486

for.body483.for.inc493_crit_edge:                 ; preds = %for.body483
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc493

if.then486:                                       ; preds = %for.body483
  tail call void @flush_dcache_page(ptr noundef nonnull %295) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 55) #8
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %295, align 4
  %shr.i.i1090 = lshr i32 %297, 30
  %298 = zext i32 %shr.i.i1090 to i64
  call void @__sanitizer_cov_trace_switch(i64 %298, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %shr.i.i1090, label %if.then486.kunmap.exit1094_crit_edge [
    i32 2, label %if.then486.if.end.i1093_crit_edge
    i32 3, label %is_highmem_idx.exit.i1092
  ]

if.then486.if.end.i1093_crit_edge:                ; preds = %if.then486
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i1093

if.then486.kunmap.exit1094_crit_edge:             ; preds = %if.then486
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit1094

is_highmem_idx.exit.i1092:                        ; preds = %if.then486
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %299 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %299)
  %cmp2.i.not.i1091 = icmp eq i32 %299, 2
  br i1 %cmp2.i.not.i1091, label %is_highmem_idx.exit.i1092.if.end.i1093_crit_edge, label %is_highmem_idx.exit.i1092.kunmap.exit1094_crit_edge

is_highmem_idx.exit.i1092.kunmap.exit1094_crit_edge: ; preds = %is_highmem_idx.exit.i1092
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit1094

is_highmem_idx.exit.i1092.if.end.i1093_crit_edge: ; preds = %is_highmem_idx.exit.i1092
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i1093

if.end.i1093:                                     ; preds = %is_highmem_idx.exit.i1092.if.end.i1093_crit_edge, %if.then486.if.end.i1093_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %295) #8
  br label %kunmap.exit1094

kunmap.exit1094:                                  ; preds = %if.end.i1093, %is_highmem_idx.exit.i1092.kunmap.exit1094_crit_edge, %if.then486.kunmap.exit1094_crit_edge
  tail call void @unlock_page(ptr noundef nonnull %295) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %prev_cur_page.01276, i32 %sub87)
  %cmp487.not = icmp eq i32 %prev_cur_page.01276, %sub87
  br i1 %cmp487.not, label %kunmap.exit1094.if.end490_crit_edge, label %if.then489

kunmap.exit1094.if.end490_crit_edge:              ; preds = %kunmap.exit1094
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end490

if.then489:                                       ; preds = %kunmap.exit1094
  %300 = getelementptr inbounds %struct.page, ptr %295, i32 0, i32 1
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load volatile i32, ptr %300, align 4
  %and.i.i1095 = and i32 %302, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1095)
  %tobool.not.i.i1096 = icmp eq i32 %and.i.i1095, 0
  br i1 %tobool.not.i.i1096, label %if.end.i.i1099, label %if.then.i.i1098, !prof !87

if.then.i.i1098:                                  ; preds = %if.then489
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i1097 = add i32 %302, -1
  br label %_compound_head.exit.i1104

if.end.i.i1099:                                   ; preds = %if.then489
  call void @__sanitizer_cov_trace_pc() #10
  %303 = ptrtoint ptr %295 to i32
  br label %_compound_head.exit.i1104

_compound_head.exit.i1104:                        ; preds = %if.end.i.i1099, %if.then.i.i1098
  %retval.0.i.i1100 = phi i32 [ %sub.i.i1097, %if.then.i.i1098 ], [ %303, %if.end.i.i1099 ]
  %304 = inttoptr i32 %retval.0.i.i1100 to ptr
  %_refcount.i.i.i.i.i1101 = getelementptr inbounds %struct.page, ptr %304, i32 0, i32 3
  %call.i.i.i.i.i.i.i1102 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i1101, i32 noundef 4) #8
  %305 = ptrtoint ptr %_refcount.i.i.i.i.i1101 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load volatile i32, ptr %_refcount.i.i.i.i.i1101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %cmp.i.i.i.i1103 = icmp eq i32 %306, 0
  br i1 %cmp.i.i.i.i1103, label %if.then.i.i.i.i1105, label %do.end5.i.i.i.i1109, !prof !89

if.then.i.i.i.i1105:                              ; preds = %_compound_head.exit.i1104
  call void @__sanitizer_cov_trace_pc() #10
  %307 = inttoptr i32 %retval.0.i.i1100 to ptr
  tail call void @dump_page(ptr noundef %307, ptr noundef nonnull @.str.27) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

do.end5.i.i.i.i1109:                              ; preds = %_compound_head.exit.i1104
  %call.i.i.i10.i.i.i.i1106 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i1101, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i1101, i32 1, i32 3, i32 1) #8
  %308 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i1101, ptr %_refcount.i.i.i.i.i1101, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i1101) #8, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i.i.i1107 = extractvalue { i32, i32 } %308, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i1107)
  %cmp.i.i.i.i.i.i.i1108 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i1107, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_read_compressed_block, %if.then.i.i.i.i.i1111)) #8
          to label %folio_put_testzero.exit.i.i1112 [label %if.then.i.i.i.i.i1111], !srcloc !113

if.then.i.i.i.i.i1111:                            ; preds = %do.end5.i.i.i.i1109
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i1110 = zext i1 %cmp.i.i.i.i.i.i.i1108 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %304, i32 noundef -1, i32 noundef %conv.i.i.i.i.i1110) #8
  br label %folio_put_testzero.exit.i.i1112

folio_put_testzero.exit.i.i1112:                  ; preds = %if.then.i.i.i.i.i1111, %do.end5.i.i.i.i1109
  br i1 %cmp.i.i.i.i.i.i.i1108, label %if.then.i4.i1113, label %folio_put_testzero.exit.i.i1112.if.end490_crit_edge

folio_put_testzero.exit.i.i1112.if.end490_crit_edge: ; preds = %folio_put_testzero.exit.i.i1112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end490

if.then.i4.i1113:                                 ; preds = %folio_put_testzero.exit.i.i1112
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %304) #8
  br label %if.end490

if.end490:                                        ; preds = %if.then.i4.i1113, %folio_put_testzero.exit.i.i1112.if.end490_crit_edge, %kunmap.exit1094.if.end490_crit_edge
  %309 = ptrtoint ptr %arrayidx484 to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr null, ptr %arrayidx484, align 4
  br label %for.inc493

for.inc493:                                       ; preds = %if.end490, %for.body483.for.inc493_crit_edge
  %inc494 = add nuw i32 %prev_cur_page.01276, 1
  %310 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %cur_page, align 4
  %cmp481 = icmp ult i32 %inc494, %311
  br i1 %cmp481, label %for.inc493.for.body483_crit_edge, label %for.inc493.if.end498_crit_edge

for.inc493.if.end498_crit_edge:                   ; preds = %for.inc493
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end498

for.inc493.for.body483_crit_edge:                 ; preds = %for.inc493
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body483

if.end498.loopexit:                               ; preds = %if.end463.if.end498.loopexit_crit_edge, %if.end449.if.end498.loopexit_crit_edge
  %312 = phi i8 [ %xpage_done.promoted, %if.end449.if.end498.loopexit_crit_edge ], [ %287, %if.end463.if.end498.loopexit_crit_edge ]
  %313 = ptrtoint ptr %xpage_done to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %312, ptr %xpage_done, align 1
  br label %if.end498

if.end498:                                        ; preds = %if.end498.loopexit, %for.inc493.if.end498_crit_edge, %if.then477.if.end498_crit_edge, %if.else473.if.end498_crit_edge, %if.end405, %for.end393.if.end498_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end405 ], [ %err.0, %for.end393.if.end498_crit_edge ], [ 0, %if.else473.if.end498_crit_edge ], [ %err.0, %if.end498.loopexit ], [ %call475, %if.then477.if.end498_crit_edge ], [ %call475, %for.inc493.if.end498_crit_edge ]
  br i1 %cmp2351267.not1394139814051411, label %if.end498.for.end506_crit_edge, label %if.end498.for.body502_crit_edge

if.end498.for.body502_crit_edge:                  ; preds = %if.end498
  br label %for.body502

if.end498.for.end506_crit_edge:                   ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end506

for.body502:                                      ; preds = %brelse.exit.for.body502_crit_edge, %if.end498.for.body502_crit_edge
  %i.41310 = phi i32 [ %inc505, %brelse.exit.for.body502_crit_edge ], [ 0, %if.end498.for.body502_crit_edge ]
  %arrayidx503 = getelementptr ptr, ptr %call9.i, i32 %i.41310
  %314 = ptrtoint ptr %arrayidx503 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %arrayidx503, align 4
  %tobool.not.i1115 = icmp eq ptr %315, null
  br i1 %tobool.not.i1115, label %for.body502.brelse.exit_crit_edge, label %if.then.i1116

for.body502.brelse.exit_crit_edge:                ; preds = %for.body502
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i1116:                                    ; preds = %for.body502
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %315) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i1116, %for.body502.brelse.exit_crit_edge
  %inc505 = add nuw i32 %i.41310, 1
  %exitcond1372.not = icmp eq i32 %inc505, %nr_bhs.0.lcssa1389
  br i1 %exitcond1372.not, label %brelse.exit.for.end506_crit_edge, label %brelse.exit.for.body502_crit_edge

brelse.exit.for.body502_crit_edge:                ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body502

brelse.exit.for.end506_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end506

for.end506:                                       ; preds = %brelse.exit.for.end506_crit_edge, %if.end498.for.end506_crit_edge
  %tobool507.not = icmp eq i32 %dec, 0
  br i1 %tobool507.not, label %if.end509, label %for.end506.do_next_cb_crit_edge

for.end506.do_next_cb_crit_edge:                  ; preds = %for.end506
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_next_cb

if.end509:                                        ; preds = %for.end506
  tail call void @kfree(ptr noundef %call9.i) #8
  %316 = ptrtoint ptr %cur_page to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 0, ptr %cur_page, align 4
  br i1 %cmp1201253.not, label %if.end509.for.end528_crit_edge, label %if.end509.for.body513_crit_edge

if.end509.for.body513_crit_edge:                  ; preds = %if.end509
  br label %for.body513

if.end509.for.end528_crit_edge:                   ; preds = %if.end509
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end528

for.body513:                                      ; preds = %for.inc526.for.body513_crit_edge, %if.end509.for.body513_crit_edge
  %storemerge1312 = phi i32 [ %inc527, %for.inc526.for.body513_crit_edge ], [ 0, %if.end509.for.body513_crit_edge ]
  %arrayidx514 = getelementptr ptr, ptr %retval.0.i, i32 %storemerge1312
  %317 = ptrtoint ptr %arrayidx514 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %arrayidx514, align 4
  %tobool515.not = icmp eq ptr %318, null
  br i1 %tobool515.not, label %for.body513.for.inc526_crit_edge, label %if.then516

for.body513.for.inc526_crit_edge:                 ; preds = %for.body513
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc526

if.then516:                                       ; preds = %for.body513
  %319 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %5, align 8
  %321 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %mft_no, align 4
  %index519 = getelementptr inbounds %struct.page, ptr %318, i32 0, i32 1, i32 0, i32 2
  %323 = ptrtoint ptr %index519 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %index519, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef %320, ptr noundef nonnull @.str.13, i32 noundef %322, i32 noundef %324) #8
  tail call void @flush_dcache_page(ptr noundef nonnull %318) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 55) #8
  %325 = ptrtoint ptr %318 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %318, align 4
  %shr.i.i1118 = lshr i32 %326, 30
  %327 = zext i32 %shr.i.i1118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %327, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %shr.i.i1118, label %if.then516.kunmap.exit1122_crit_edge [
    i32 2, label %if.then516.if.end.i1121_crit_edge
    i32 3, label %is_highmem_idx.exit.i1120
  ]

if.then516.if.end.i1121_crit_edge:                ; preds = %if.then516
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i1121

if.then516.kunmap.exit1122_crit_edge:             ; preds = %if.then516
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit1122

is_highmem_idx.exit.i1120:                        ; preds = %if.then516
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %328 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %328)
  %cmp2.i.not.i1119 = icmp eq i32 %328, 2
  br i1 %cmp2.i.not.i1119, label %is_highmem_idx.exit.i1120.if.end.i1121_crit_edge, label %is_highmem_idx.exit.i1120.kunmap.exit1122_crit_edge

is_highmem_idx.exit.i1120.kunmap.exit1122_crit_edge: ; preds = %is_highmem_idx.exit.i1120
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit1122

is_highmem_idx.exit.i1120.if.end.i1121_crit_edge: ; preds = %is_highmem_idx.exit.i1120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i1121

if.end.i1121:                                     ; preds = %is_highmem_idx.exit.i1120.if.end.i1121_crit_edge, %if.then516.if.end.i1121_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %318) #8
  br label %kunmap.exit1122

kunmap.exit1122:                                  ; preds = %if.end.i1121, %is_highmem_idx.exit.i1120.kunmap.exit1122_crit_edge, %if.then516.kunmap.exit1122_crit_edge
  tail call void @unlock_page(ptr noundef nonnull %318) #8
  %329 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %cur_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %330, i32 %sub87)
  %cmp520.not = icmp eq i32 %330, %sub87
  br i1 %cmp520.not, label %kunmap.exit1122.if.end523_crit_edge, label %if.then522

kunmap.exit1122.if.end523_crit_edge:              ; preds = %kunmap.exit1122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end523

if.then522:                                       ; preds = %kunmap.exit1122
  %331 = getelementptr inbounds %struct.page, ptr %318, i32 0, i32 1
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load volatile i32, ptr %331, align 4
  %and.i.i1123 = and i32 %333, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1123)
  %tobool.not.i.i1124 = icmp eq i32 %and.i.i1123, 0
  br i1 %tobool.not.i.i1124, label %if.end.i.i1127, label %if.then.i.i1126, !prof !87

if.then.i.i1126:                                  ; preds = %if.then522
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i1125 = add i32 %333, -1
  br label %_compound_head.exit.i1132

if.end.i.i1127:                                   ; preds = %if.then522
  call void @__sanitizer_cov_trace_pc() #10
  %334 = ptrtoint ptr %318 to i32
  br label %_compound_head.exit.i1132

_compound_head.exit.i1132:                        ; preds = %if.end.i.i1127, %if.then.i.i1126
  %retval.0.i.i1128 = phi i32 [ %sub.i.i1125, %if.then.i.i1126 ], [ %334, %if.end.i.i1127 ]
  %335 = inttoptr i32 %retval.0.i.i1128 to ptr
  %_refcount.i.i.i.i.i1129 = getelementptr inbounds %struct.page, ptr %335, i32 0, i32 3
  %call.i.i.i.i.i.i.i1130 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i1129, i32 noundef 4) #8
  %336 = ptrtoint ptr %_refcount.i.i.i.i.i1129 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load volatile i32, ptr %_refcount.i.i.i.i.i1129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %cmp.i.i.i.i1131 = icmp eq i32 %337, 0
  br i1 %cmp.i.i.i.i1131, label %if.then.i.i.i.i1133, label %do.end5.i.i.i.i1137, !prof !89

if.then.i.i.i.i1133:                              ; preds = %_compound_head.exit.i1132
  call void @__sanitizer_cov_trace_pc() #10
  %338 = inttoptr i32 %retval.0.i.i1128 to ptr
  tail call void @dump_page(ptr noundef %338, ptr noundef nonnull @.str.27) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

do.end5.i.i.i.i1137:                              ; preds = %_compound_head.exit.i1132
  %call.i.i.i10.i.i.i.i1134 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i1129, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i1129, i32 1, i32 3, i32 1) #8
  %339 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i1129, ptr %_refcount.i.i.i.i.i1129, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i1129) #8, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i.i.i1135 = extractvalue { i32, i32 } %339, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i1135)
  %cmp.i.i.i.i.i.i.i1136 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i1135, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_read_compressed_block, %if.then.i.i.i.i.i1139)) #8
          to label %folio_put_testzero.exit.i.i1140 [label %if.then.i.i.i.i.i1139], !srcloc !113

if.then.i.i.i.i.i1139:                            ; preds = %do.end5.i.i.i.i1137
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i1138 = zext i1 %cmp.i.i.i.i.i.i.i1136 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %335, i32 noundef -1, i32 noundef %conv.i.i.i.i.i1138) #8
  br label %folio_put_testzero.exit.i.i1140

folio_put_testzero.exit.i.i1140:                  ; preds = %if.then.i.i.i.i.i1139, %do.end5.i.i.i.i1137
  br i1 %cmp.i.i.i.i.i.i.i1136, label %if.then.i4.i1141, label %folio_put_testzero.exit.i.i1140.if.end523_crit_edge

folio_put_testzero.exit.i.i1140.if.end523_crit_edge: ; preds = %folio_put_testzero.exit.i.i1140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end523

if.then.i4.i1141:                                 ; preds = %folio_put_testzero.exit.i.i1140
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %335) #8
  br label %if.end523

if.end523:                                        ; preds = %if.then.i4.i1141, %folio_put_testzero.exit.i.i1140.if.end523_crit_edge, %kunmap.exit1122.if.end523_crit_edge
  %340 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %cur_page, align 4
  %arrayidx524 = getelementptr ptr, ptr %retval.0.i, i32 %341
  %342 = ptrtoint ptr %arrayidx524 to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr null, ptr %arrayidx524, align 4
  br label %for.inc526

for.inc526:                                       ; preds = %if.end523, %for.body513.for.inc526_crit_edge
  %343 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %cur_page, align 4
  %inc527 = add i32 %344, 1
  store i32 %inc527, ptr %cur_page, align 4
  %cmp511 = icmp ult i32 %inc527, %60
  br i1 %cmp511, label %for.inc526.for.body513_crit_edge, label %for.inc526.for.end528_crit_edge

for.inc526.for.end528_crit_edge:                  ; preds = %for.inc526
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end528

for.inc526.for.body513_crit_edge:                 ; preds = %for.inc526
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body513

for.end528:                                       ; preds = %for.inc526.for.end528_crit_edge, %if.end509.for.end528_crit_edge
  tail call void @kfree(ptr noundef %retval.0.i) #8
  tail call void @kfree(ptr noundef %retval.0.i999) #8
  %345 = ptrtoint ptr %xpage_done to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %xpage_done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %346)
  %tobool529.not = icmp eq i8 %346, 0
  br i1 %tobool529.not, label %if.end537, label %for.end528.cleanup581_crit_edge, !prof !89

for.end528.cleanup581_crit_edge:                  ; preds = %for.end528
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup581

if.end537:                                        ; preds = %for.end528
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -75, i32 %err.1)
  %cmp538 = icmp eq i32 %err.1, -75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool540.not = icmp eq i32 %err.1, 0
  %cond = select i1 %tobool540.not, ptr @.str.16, ptr @.str.17
  %cond543 = select i1 %cmp538, ptr @.str.15, ptr %cond
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 910, ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond543) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp544 = icmp slt i32 %err.1, 0
  %cond549 = select i1 %cmp544, i32 %err.1, i32 -5
  br label %cleanup581

read_err:                                         ; preds = %if.then280
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef %181, ptr noundef nonnull @.str.18) #8
  %umax = call i32 @llvm.umax.i32(i32 %nr_bhs.0.lcssa, i32 1)
  br label %for.body554

for.body554:                                      ; preds = %brelse.exit1146.for.body554_crit_edge, %read_err
  %i.51313 = phi i32 [ 0, %read_err ], [ %inc557, %brelse.exit1146.for.body554_crit_edge ]
  %arrayidx555 = getelementptr ptr, ptr %call9.i, i32 %i.51313
  %347 = ptrtoint ptr %arrayidx555 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %arrayidx555, align 4
  %tobool.not.i1143 = icmp eq ptr %348, null
  br i1 %tobool.not.i1143, label %for.body554.brelse.exit1146_crit_edge, label %if.then.i1144

for.body554.brelse.exit1146_crit_edge:            ; preds = %for.body554
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit1146

if.then.i1144:                                    ; preds = %for.body554
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %348) #8
  br label %brelse.exit1146

brelse.exit1146:                                  ; preds = %if.then.i1144, %for.body554.brelse.exit1146_crit_edge
  %inc557 = add nuw i32 %i.51313, 1
  %exitcond1373.not = icmp eq i32 %inc557, %umax
  br i1 %exitcond1373.not, label %brelse.exit1146.err_out_crit_edge, label %brelse.exit1146.for.body554_crit_edge

brelse.exit1146.for.body554_crit_edge:            ; preds = %brelse.exit1146
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body554

brelse.exit1146.err_out_crit_edge:                ; preds = %brelse.exit1146
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

getblk_err:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read(ptr noundef %lock) #8
  br label %err_out.sink.split

err_out.sink.split:                               ; preds = %getblk_err, %if.end186.err_out.sink.split_crit_edge, %if.end179.err_out.sink.split_crit_edge
  %.str.21.sink = phi ptr [ @.str.21, %getblk_err ], [ @.str.19, %if.end186.err_out.sink.split_crit_edge ], [ @.str.20, %if.end179.err_out.sink.split_crit_edge ]
  %349 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef %350, ptr noundef nonnull %.str.21.sink) #8
  br label %err_out

err_out:                                          ; preds = %err_out.sink.split, %brelse.exit1146.err_out_crit_edge
  tail call void @kfree(ptr noundef %call9.i) #8
  %351 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %cur_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %352, i32 %60)
  %cmp5671314 = icmp ult i32 %352, %60
  br i1 %cmp5671314, label %err_out.for.body569_crit_edge, label %err_out.for.end580_crit_edge

err_out.for.end580_crit_edge:                     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end580

err_out.for.body569_crit_edge:                    ; preds = %err_out
  br label %for.body569

for.body569:                                      ; preds = %for.inc578.for.body569_crit_edge, %err_out.for.body569_crit_edge
  %i.61315 = phi i32 [ %inc579, %for.inc578.for.body569_crit_edge ], [ %352, %err_out.for.body569_crit_edge ]
  %arrayidx570 = getelementptr ptr, ptr %retval.0.i, i32 %i.61315
  %353 = ptrtoint ptr %arrayidx570 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %arrayidx570, align 4
  %tobool571.not = icmp eq ptr %354, null
  br i1 %tobool571.not, label %for.body569.for.inc578_crit_edge, label %if.then572

for.body569.for.inc578_crit_edge:                 ; preds = %for.body569
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc578

if.then572:                                       ; preds = %for.body569
  tail call void @flush_dcache_page(ptr noundef nonnull %354) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 55) #8
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %354, align 4
  %shr.i.i1147 = lshr i32 %356, 30
  %357 = zext i32 %shr.i.i1147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %357, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %shr.i.i1147, label %if.then572.kunmap.exit1151_crit_edge [
    i32 2, label %if.then572.if.end.i1150_crit_edge
    i32 3, label %is_highmem_idx.exit.i1149
  ]

if.then572.if.end.i1150_crit_edge:                ; preds = %if.then572
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i1150

if.then572.kunmap.exit1151_crit_edge:             ; preds = %if.then572
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit1151

is_highmem_idx.exit.i1149:                        ; preds = %if.then572
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %358 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %358)
  %cmp2.i.not.i1148 = icmp eq i32 %358, 2
  br i1 %cmp2.i.not.i1148, label %is_highmem_idx.exit.i1149.if.end.i1150_crit_edge, label %is_highmem_idx.exit.i1149.kunmap.exit1151_crit_edge

is_highmem_idx.exit.i1149.kunmap.exit1151_crit_edge: ; preds = %is_highmem_idx.exit.i1149
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit1151

is_highmem_idx.exit.i1149.if.end.i1150_crit_edge: ; preds = %is_highmem_idx.exit.i1149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i1150

if.end.i1150:                                     ; preds = %is_highmem_idx.exit.i1149.if.end.i1150_crit_edge, %if.then572.if.end.i1150_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %354) #8
  br label %kunmap.exit1151

kunmap.exit1151:                                  ; preds = %if.end.i1150, %is_highmem_idx.exit.i1149.kunmap.exit1151_crit_edge, %if.then572.kunmap.exit1151_crit_edge
  tail call void @unlock_page(ptr noundef nonnull %354) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.61315, i32 %sub87)
  %cmp573.not = icmp eq i32 %i.61315, %sub87
  br i1 %cmp573.not, label %kunmap.exit1151.for.inc578_crit_edge, label %if.then575

kunmap.exit1151.for.inc578_crit_edge:             ; preds = %kunmap.exit1151
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc578

if.then575:                                       ; preds = %kunmap.exit1151
  %359 = getelementptr inbounds %struct.page, ptr %354, i32 0, i32 1
  %360 = ptrtoint ptr %359 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load volatile i32, ptr %359, align 4
  %and.i.i1152 = and i32 %361, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1152)
  %tobool.not.i.i1153 = icmp eq i32 %and.i.i1152, 0
  br i1 %tobool.not.i.i1153, label %if.end.i.i1156, label %if.then.i.i1155, !prof !87

if.then.i.i1155:                                  ; preds = %if.then575
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i1154 = add i32 %361, -1
  br label %_compound_head.exit.i1161

if.end.i.i1156:                                   ; preds = %if.then575
  call void @__sanitizer_cov_trace_pc() #10
  %362 = ptrtoint ptr %354 to i32
  br label %_compound_head.exit.i1161

_compound_head.exit.i1161:                        ; preds = %if.end.i.i1156, %if.then.i.i1155
  %retval.0.i.i1157 = phi i32 [ %sub.i.i1154, %if.then.i.i1155 ], [ %362, %if.end.i.i1156 ]
  %363 = inttoptr i32 %retval.0.i.i1157 to ptr
  %_refcount.i.i.i.i.i1158 = getelementptr inbounds %struct.page, ptr %363, i32 0, i32 3
  %call.i.i.i.i.i.i.i1159 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i1158, i32 noundef 4) #8
  %364 = ptrtoint ptr %_refcount.i.i.i.i.i1158 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load volatile i32, ptr %_refcount.i.i.i.i.i1158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %365)
  %cmp.i.i.i.i1160 = icmp eq i32 %365, 0
  br i1 %cmp.i.i.i.i1160, label %if.then.i.i.i.i1162, label %do.end5.i.i.i.i1166, !prof !89

if.then.i.i.i.i1162:                              ; preds = %_compound_head.exit.i1161
  call void @__sanitizer_cov_trace_pc() #10
  %366 = inttoptr i32 %retval.0.i.i1157 to ptr
  tail call void @dump_page(ptr noundef %366, ptr noundef nonnull @.str.27) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

do.end5.i.i.i.i1166:                              ; preds = %_compound_head.exit.i1161
  %call.i.i.i10.i.i.i.i1163 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i1158, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i1158, i32 1, i32 3, i32 1) #8
  %367 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i1158, ptr %_refcount.i.i.i.i.i1158, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i1158) #8, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i.i.i1164 = extractvalue { i32, i32 } %367, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i1164)
  %cmp.i.i.i.i.i.i.i1165 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i1164, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_read_compressed_block, %if.then.i.i.i.i.i1168)) #8
          to label %folio_put_testzero.exit.i.i1169 [label %if.then.i.i.i.i.i1168], !srcloc !113

if.then.i.i.i.i.i1168:                            ; preds = %do.end5.i.i.i.i1166
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i1167 = zext i1 %cmp.i.i.i.i.i.i.i1165 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %363, i32 noundef -1, i32 noundef %conv.i.i.i.i.i1167) #8
  br label %folio_put_testzero.exit.i.i1169

folio_put_testzero.exit.i.i1169:                  ; preds = %if.then.i.i.i.i.i1168, %do.end5.i.i.i.i1166
  br i1 %cmp.i.i.i.i.i.i.i1165, label %if.then.i4.i1170, label %folio_put_testzero.exit.i.i1169.for.inc578_crit_edge

folio_put_testzero.exit.i.i1169.for.inc578_crit_edge: ; preds = %folio_put_testzero.exit.i.i1169
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc578

if.then.i4.i1170:                                 ; preds = %folio_put_testzero.exit.i.i1169
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %363) #8
  br label %for.inc578

for.inc578:                                       ; preds = %if.then.i4.i1170, %folio_put_testzero.exit.i.i1169.for.inc578_crit_edge, %kunmap.exit1151.for.inc578_crit_edge, %for.body569.for.inc578_crit_edge
  %inc579 = add i32 %i.61315, 1
  %exitcond1374.not = icmp eq i32 %inc579, %60
  br i1 %exitcond1374.not, label %for.inc578.for.end580_crit_edge, label %for.inc578.for.body569_crit_edge

for.inc578.for.body569_crit_edge:                 ; preds = %for.inc578
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body569

for.inc578.for.end580_crit_edge:                  ; preds = %for.inc578
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end580

for.end580:                                       ; preds = %for.inc578.for.end580_crit_edge, %err_out.for.end580_crit_edge
  tail call void @kfree(ptr noundef %retval.0.i) #8
  tail call void @kfree(ptr noundef %retval.0.i999) #8
  br label %cleanup581

cleanup581:                                       ; preds = %for.end580, %if.end537, %for.end528.cleanup581_crit_edge, %SetPageUptodate.exit, %if.then78
  %retval.0 = phi i32 [ -12, %if.then78 ], [ 0, %SetPageUptodate.exit ], [ -5, %for.end580 ], [ %cond549, %if.end537 ], [ 0, %for.end528.cleanup581_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %xpage_done) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_ofs) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_page) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntfs_rl_vcn_to_lcn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_map_runlist(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_read_sync(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_bh(ptr noundef %bh) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !119
  %b_count = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count, ptr %b_count, i32 1, ptr elementtype(i32) %b_count) #8, !srcloc !120
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_decompress(ptr nocapture noundef %dest_pages, ptr nocapture noundef %completed_pages, ptr nocapture noundef %dest_index, ptr nocapture noundef %dest_ofs, i32 noundef %dest_max_index, i32 noundef %dest_max_ofs, i32 noundef %xpage, ptr nocapture noundef writeonly %xpage_done, ptr noundef %cb_start, i32 noundef %cb_size, i64 noundef %i_size, i64 noundef %initialized_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cb_start, i32 %cb_size
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 185, ptr noundef nonnull @__func__.ntfs_decompress, ptr noundef nonnull @.str.31, i32 noundef %cb_size) #8
  %sub.ptr.rhs.cast = ptrtoint ptr %cb_start to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @__func__.ntfs_decompress, ptr noundef nonnull @.str.32, i32 noundef 0) #8
  %cmp389396 = icmp eq ptr %add.ptr, %cb_start
  br i1 %cmp389396, label %entry.if.then_crit_edge, label %entry.lor.lhs.false.lr.ph_crit_edge

entry.lor.lhs.false.lr.ph_crit_edge:              ; preds = %entry
  br label %lor.lhs.false.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.lr.ph:                              ; preds = %if.end77.lor.lhs.false.lr.ph_crit_edge, %entry.lor.lhs.false.lr.ph_crit_edge
  %nr_completed_pages.0.ph398 = phi i32 [ %nr_completed_pages.2, %if.end77.lor.lhs.false.lr.ph_crit_edge ], [ 0, %entry.lor.lhs.false.lr.ph_crit_edge ]
  %cb.0.ph397 = phi ptr [ %cb.2, %if.end77.lor.lhs.false.lr.ph_crit_edge ], [ %cb_start, %entry.lor.lhs.false.lr.ph_crit_edge ]
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do_next_sb.backedge.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %cb.0390 = phi ptr [ %cb.0.ph397, %lor.lhs.false.lr.ph ], [ %add.ptr31, %do_next_sb.backedge.lor.lhs.false_crit_edge ]
  %0 = ptrtoint ptr %cb.0390 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cb.0390, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false1

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %dest_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dest_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %dest_max_index)
  %cmp2 = icmp eq i32 %3, %dest_max_index
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false1.if.end12_crit_edge

lor.lhs.false1.if.end12_crit_edge:                ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %lor.lhs.false1
  %4 = ptrtoint ptr %dest_ofs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dest_ofs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %dest_max_ofs)
  %cmp3 = icmp eq i32 %5, %dest_max_ofs
  br i1 %cmp3, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %if.end77.if.then_crit_edge, %do_next_sb.backedge.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %nr_completed_pages.0.ph.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ %nr_completed_pages.0.ph398, %land.lhs.true.if.then_crit_edge ], [ %nr_completed_pages.0.ph398, %lor.lhs.false.if.then_crit_edge ], [ %nr_completed_pages.0.ph398, %do_next_sb.backedge.if.then_crit_edge ], [ %nr_completed_pages.2, %if.end77.if.then_crit_edge ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 200, ptr noundef nonnull @__func__.ntfs_decompress, ptr noundef nonnull @.str.33) #8
  br label %return_error

return_error:                                     ; preds = %return_overflow, %if.then
  %nr_completed_pages.1 = phi i32 [ %nr_completed_pages.0.ph.lcssa, %if.then ], [ %nr_completed_pages.3, %return_overflow ]
  %err.0 = phi i32 [ 0, %if.then ], [ -75, %return_overflow ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ntfs_cb_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_completed_pages.1)
  %cmp4 = icmp sgt i32 %nr_completed_pages.1, 0
  br i1 %cmp4, label %for.body.lr.ph, label %return_error.cleanup203_crit_edge

return_error.cleanup203_crit_edge:                ; preds = %return_error
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup203

for.body.lr.ph:                                   ; preds = %return_error
  %shr.i = ashr i64 %initialized_size, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %initialized_size, i64 %i_size)
  %cmp2.i = icmp slt i64 %initialized_size, %i_size
  %6 = trunc i64 %initialized_size to i32
  %conv2.i.i = and i32 %6, 4095
  %sub.i.i = sub nuw nsw i32 4096, %conv2.i.i
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.0402 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %completed_pages, i32 %i.0402
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr ptr, ptr %dest_pages, i32 %8
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx7, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %conv.i)
  %cmp.not.i = icmp sle i64 %shr.i, %conv.i
  %or.cond.i = and i1 %cmp2.i, %cmp.not.i
  br i1 %or.cond.i, label %if.then.i, label %for.body.handle_bounds_compressed_page.exit_crit_edge

for.body.handle_bounds_compressed_page.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_bounds_compressed_page.exit

if.then.i:                                        ; preds = %for.body
  %call.i.i = tail call ptr @page_address(ptr noundef %10) #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 92, ptr noundef nonnull @__func__.zero_partial_compressed_page, ptr noundef nonnull @.str.30) #8
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i, align 4
  %conv.i.i = zext i32 %14 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %initialized_size)
  %cmp.not.i.i = icmp slt i64 %shl.i.i, %initialized_size
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = call ptr @memset(ptr %call.i.i, i32 0, i32 4096)
  br label %handle_bounds_compressed_page.exit

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %conv2.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  br label %handle_bounds_compressed_page.exit

handle_bounds_compressed_page.exit:               ; preds = %if.end.i.i, %if.then.i.i, %for.body.handle_bounds_compressed_page.exit_crit_edge
  tail call void @flush_dcache_page(ptr noundef %10) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 55) #8
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %10, align 4
  %shr.i.i = lshr i32 %18, 30
  %19 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %shr.i.i, label %handle_bounds_compressed_page.exit.kunmap.exit_crit_edge [
    i32 2, label %handle_bounds_compressed_page.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

handle_bounds_compressed_page.exit.if.end.i_crit_edge: ; preds = %handle_bounds_compressed_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

handle_bounds_compressed_page.exit.kunmap.exit_crit_edge: ; preds = %handle_bounds_compressed_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %handle_bounds_compressed_page.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %20 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp2.i.not.i = icmp eq i32 %20, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %handle_bounds_compressed_page.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %10) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %handle_bounds_compressed_page.exit.kunmap.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !102
  %21 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !87

if.then.i.i.i:                                    ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !103
  unreachable

SetPageUptodate.exit:                             ; preds = %kunmap.exit
  tail call void @_set_bit(i32 noundef 2, ptr noundef %10) #8
  tail call void @unlock_page(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %xpage)
  %cmp8 = icmp eq i32 %8, %xpage
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %xpage_done to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %xpage_done, align 1
  br label %if.end

if.else:                                          ; preds = %SetPageUptodate.exit
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %21, align 4
  %and.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i332, label %if.then.i.i331, !prof !87

if.then.i.i331:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i330 = add i32 %26, -1
  br label %_compound_head.exit.i

if.end.i.i332:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %10 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i332, %if.then.i.i331
  %retval.0.i.i = phi i32 [ %sub.i.i330, %if.then.i.i331 ], [ %27, %if.end.i.i332 ]
  %28 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %29 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.i.i.i = icmp eq i32 %30, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !89

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %31, ptr noundef nonnull @.str.27) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_decompress, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !113

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %28, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end_crit_edge

folio_put_testzero.exit.i.i.if.end_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %28) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end_crit_edge, %if.then9
  %33 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx7, align 4
  %inc = add nuw nsw i32 %i.0402, 1
  %exitcond425.not = icmp eq i32 %inc, %nr_completed_pages.1
  br i1 %exitcond425.not, label %if.end.cleanup203_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.cleanup203_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup203

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %lor.lhs.false1.if.end12_crit_edge
  %34 = ptrtoint ptr %dest_ofs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dest_ofs, align 4
  %conv13 = and i32 %35, 65535
  %conv14 = add i32 %35, 4096
  %conv18 = and i32 %conv14, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv18, i32 %dest_max_ofs)
  %cmp19 = icmp sgt i32 %conv18, %dest_max_ofs
  %or.cond = select i1 %cmp2, i1 %cmp19, i1 false
  %add.ptr23 = getelementptr i8, ptr %cb.0390, i32 6
  %cmp24 = icmp ugt ptr %add.ptr23, %add.ptr
  %or.cond327 = or i1 %or.cond, %cmp24
  br i1 %or.cond327, label %if.end12.return_overflow_crit_edge, label %if.end27

if.end12.return_overflow_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %return_overflow

if.end27:                                         ; preds = %if.end12
  %36 = and i16 %1, -241
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %and = zext i16 %37 to i32
  %add.ptr30 = getelementptr i8, ptr %cb.0390, i32 3
  %add.ptr31 = getelementptr i8, ptr %add.ptr30, i32 %and
  %cmp32 = icmp ugt ptr %add.ptr31, %add.ptr
  br i1 %cmp32, label %if.end27.return_overflow_crit_edge, label %if.end35

if.end27.return_overflow_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %return_overflow

if.end35:                                         ; preds = %if.end27
  %arrayidx36 = getelementptr ptr, ptr %dest_pages, i32 %3
  %38 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx36, align 4
  %tobool37.not = icmp eq ptr %39, null
  br i1 %tobool37.not, label %if.then38, label %if.end48

if.then38:                                        ; preds = %if.end35
  %and40 = and i32 %35, 4095
  %40 = ptrtoint ptr %dest_ofs to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and40, ptr %dest_ofs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %land.lhs.true42, label %if.then38.do_next_sb.backedge_crit_edge

if.then38.do_next_sb.backedge_crit_edge:          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_next_sb.backedge

land.lhs.true42:                                  ; preds = %if.then38
  %41 = ptrtoint ptr %dest_index to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dest_index, align 4
  %inc43 = add i32 %42, 1
  store i32 %inc43, ptr %dest_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc43, i32 %dest_max_index)
  %cmp44 = icmp sgt i32 %inc43, %dest_max_index
  br i1 %cmp44, label %land.lhs.true42.return_overflow_crit_edge, label %land.lhs.true42.do_next_sb.backedge_crit_edge

land.lhs.true42.do_next_sb.backedge_crit_edge:    ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_next_sb.backedge

land.lhs.true42.return_overflow_crit_edge:        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %return_overflow

do_next_sb.backedge:                              ; preds = %if.end89.do_next_sb.backedge_crit_edge, %land.lhs.true42.do_next_sb.backedge_crit_edge, %if.then38.do_next_sb.backedge_crit_edge
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr31 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @__func__.ntfs_decompress, ptr noundef nonnull @.str.32, i32 noundef %sub.ptr.sub) #8
  %cmp = icmp eq ptr %add.ptr31, %add.ptr
  br i1 %cmp, label %do_next_sb.backedge.if.then_crit_edge, label %do_next_sb.backedge.lor.lhs.false_crit_edge

do_next_sb.backedge.lor.lhs.false_crit_edge:      ; preds = %do_next_sb.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

do_next_sb.backedge.if.then_crit_edge:            ; preds = %do_next_sb.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end48:                                         ; preds = %if.end35
  %call49 = tail call ptr @page_address(ptr noundef nonnull %39) #8
  %add.ptr51 = getelementptr i8, ptr %call49, i32 %conv13
  %43 = ptrtoint ptr %cb.0390 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %cb.0390, align 2
  %.mask = and i16 %44, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %tobool55.not = icmp eq i16 %.mask, 0
  br i1 %tobool55.not, label %if.then56, label %if.end78

if.then56:                                        ; preds = %if.end48
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 268, ptr noundef nonnull @__func__.ntfs_decompress, ptr noundef nonnull @.str.34) #8
  %add.ptr57 = getelementptr i8, ptr %cb.0390, i32 2
  %sub.ptr.lhs.cast58 = ptrtoint ptr %add.ptr31 to i32
  %sub.ptr.rhs.cast59 = ptrtoint ptr %add.ptr57 to i32
  %sub.ptr.sub60 = sub i32 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.ptr.sub60)
  %cmp61.not = icmp eq i32 %sub.ptr.sub60, 4096
  br i1 %cmp61.not, label %if.end64, label %if.then56.return_overflow_crit_edge

if.then56.return_overflow_crit_edge:              ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %return_overflow

if.end64:                                         ; preds = %if.then56
  %45 = call ptr @memcpy(ptr %add.ptr51, ptr %add.ptr57, i32 4096)
  %add.ptr65 = getelementptr i8, ptr %cb.0390, i32 4098
  %46 = ptrtoint ptr %dest_ofs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dest_ofs, align 4
  %and67 = and i32 %47, 4095
  store i32 %and67, ptr %dest_ofs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end64.finalize_page_crit_edge, label %if.end64.if.end77_crit_edge

if.end64.if.end77_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.end64.finalize_page_crit_edge:                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %finalize_page

finalize_page:                                    ; preds = %if.end89.finalize_page_crit_edge, %if.end64.finalize_page_crit_edge
  %cb.1 = phi ptr [ %add.ptr65, %if.end64.finalize_page_crit_edge ], [ %add.ptr31, %if.end89.finalize_page_crit_edge ]
  %48 = ptrtoint ptr %dest_index to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dest_index, align 4
  %inc70 = add i32 %nr_completed_pages.0.ph398, 1
  %arrayidx71 = getelementptr i32, ptr %completed_pages, i32 %nr_completed_pages.0.ph398
  %50 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx71, align 4
  %51 = load i32, ptr %dest_index, align 4
  %inc72 = add i32 %51, 1
  store i32 %inc72, ptr %dest_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc72, i32 %dest_max_index)
  %cmp73 = icmp sgt i32 %inc72, %dest_max_index
  br i1 %cmp73, label %finalize_page.return_overflow_crit_edge, label %finalize_page.if.end77_crit_edge

finalize_page.if.end77_crit_edge:                 ; preds = %finalize_page
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

finalize_page.return_overflow_crit_edge:          ; preds = %finalize_page
  call void @__sanitizer_cov_trace_pc() #10
  br label %return_overflow

if.end77:                                         ; preds = %finalize_page.if.end77_crit_edge, %if.end64.if.end77_crit_edge
  %cb.2 = phi ptr [ %cb.1, %finalize_page.if.end77_crit_edge ], [ %add.ptr65, %if.end64.if.end77_crit_edge ]
  %nr_completed_pages.2 = phi i32 [ %inc70, %finalize_page.if.end77_crit_edge ], [ %nr_completed_pages.0.ph398, %if.end64.if.end77_crit_edge ]
  %sub.ptr.lhs.cast387 = ptrtoint ptr %cb.2 to i32
  %sub.ptr.sub388 = sub i32 %sub.ptr.lhs.cast387, %sub.ptr.rhs.cast
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @__func__.ntfs_decompress, ptr noundef nonnull @.str.32, i32 noundef %sub.ptr.sub388) #8
  %cmp389 = icmp eq ptr %cb.2, %add.ptr
  br i1 %cmp389, label %if.end77.if.then_crit_edge, label %if.end77.lor.lhs.false.lr.ph_crit_edge

if.end77.lor.lhs.false.lr.ph_crit_edge:           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.lr.ph

if.end77.if.then_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end78:                                         ; preds = %if.end48
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 296, ptr noundef nonnull @__func__.ntfs_decompress, ptr noundef nonnull @.str.35) #8
  %add.ptr79 = getelementptr i8, ptr %add.ptr51, i32 4096
  %add.ptr80 = getelementptr i8, ptr %cb.0390, i32 2
  %cmp81382 = icmp eq ptr %add.ptr80, %add.ptr31
  br i1 %cmp81382, label %if.end78.if.then83_crit_edge, label %if.end94.lr.ph

if.end78.if.then83_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then83

if.end94.lr.ph:                                   ; preds = %if.end78
  %52 = xor i32 %35, -1
  br label %if.end94

if.then83:                                        ; preds = %for.end202.if.then83_crit_edge, %if.end78.if.then83_crit_edge
  %dp_addr.0.lcssa = phi ptr [ %add.ptr51, %if.end78.if.then83_crit_edge ], [ %dp_addr.1.lcssa, %for.end202.if.then83_crit_edge ]
  %cmp84 = icmp ult ptr %dp_addr.0.lcssa, %add.ptr79
  br i1 %cmp84, label %if.then86, label %if.then83.if.end89_crit_edge

if.then83.if.end89_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then86:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %dest_ofs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dest_ofs, align 4
  %sub = sub i32 %conv18, %54
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 312, ptr noundef nonnull @__func__.ntfs_decompress, ptr noundef nonnull @.str.36) #8
  %55 = call ptr @memset(ptr %dp_addr.0.lcssa, i32 0, i32 %sub)
  %56 = ptrtoint ptr %dest_ofs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dest_ofs, align 4
  %add88 = add i32 %57, %sub
  store i32 %add88, ptr %dest_ofs, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.then83.if.end89_crit_edge
  %58 = ptrtoint ptr %dest_ofs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dest_ofs, align 4
  %and90 = and i32 %59, 4095
  store i32 %and90, ptr %dest_ofs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end89.finalize_page_crit_edge, label %if.end89.do_next_sb.backedge_crit_edge

if.end89.do_next_sb.backedge_crit_edge:           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_next_sb.backedge

if.end89.finalize_page_crit_edge:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %finalize_page

if.end94:                                         ; preds = %for.end202.if.end94_crit_edge, %if.end94.lr.ph
  %dp_addr.0384 = phi ptr [ %add.ptr51, %if.end94.lr.ph ], [ %dp_addr.1.lcssa, %for.end202.if.end94_crit_edge ]
  %cb.3383 = phi ptr [ %add.ptr80, %if.end94.lr.ph ], [ %cb.4.lcssa, %for.end202.if.end94_crit_edge ]
  %cmp95 = icmp ugt ptr %cb.3383, %add.ptr31
  %cmp98 = icmp ugt ptr %dp_addr.0384, %add.ptr79
  %or.cond328 = select i1 %cmp95, i1 true, i1 %cmp98
  br i1 %or.cond328, label %if.end94.return_overflow_crit_edge, label %if.end101

if.end94.return_overflow_crit_edge:               ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %return_overflow

if.end101:                                        ; preds = %if.end94
  %incdec.ptr = getelementptr i8, ptr %cb.3383, i32 1
  %60 = ptrtoint ptr %cb.3383 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cb.3383, align 1
  br label %for.body105

for.body105:                                      ; preds = %for.inc197.for.body105_crit_edge, %if.end101
  %token.0381 = phi i32 [ 0, %if.end101 ], [ %inc198, %for.inc197.for.body105_crit_edge ]
  %tag.0380 = phi i8 [ %61, %if.end101 ], [ %83, %for.inc197.for.body105_crit_edge ]
  %dp_addr.1379 = phi ptr [ %dp_addr.0384, %if.end101 ], [ %dp_addr.4.ph, %for.inc197.for.body105_crit_edge ]
  %cb.4378 = phi ptr [ %incdec.ptr, %if.end101 ], [ %cb.5.ph, %for.inc197.for.body105_crit_edge ]
  %cmp107.not = icmp uge ptr %cb.4378, %add.ptr31
  %cmp110 = icmp ugt ptr %dp_addr.1379, %add.ptr79
  %or.cond329 = select i1 %cmp107.not, i1 true, i1 %cmp110
  br i1 %or.cond329, label %for.body105.for.end202_crit_edge, label %if.end113

for.body105.for.end202_crit_edge:                 ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end202

if.end113:                                        ; preds = %for.body105
  %62 = and i8 %tag.0380, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp116 = icmp eq i8 %62, 0
  br i1 %cmp116, label %if.then118, label %if.end122

if.then118:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr119 = getelementptr i8, ptr %cb.4378, i32 1
  %63 = ptrtoint ptr %cb.4378 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %cb.4378, align 1
  %incdec.ptr120 = getelementptr i8, ptr %dp_addr.1379, i32 1
  %65 = ptrtoint ptr %dp_addr.1379 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %dp_addr.1379, align 1
  %66 = ptrtoint ptr %dest_ofs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dest_ofs, align 4
  %inc121 = add i32 %67, 1
  store i32 %inc121, ptr %dest_ofs, align 4
  br label %for.inc197

if.end122:                                        ; preds = %if.end113
  %cmp123 = icmp eq ptr %dp_addr.1379, %add.ptr51
  br i1 %cmp123, label %if.end122.return_overflow_crit_edge, label %if.end126

if.end122.return_overflow_crit_edge:              ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %return_overflow

if.end126:                                        ; preds = %if.end122
  %68 = ptrtoint ptr %dest_ofs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dest_ofs, align 4
  %sub129 = add i32 %69, %52
  %conv132369 = and i32 %sub129, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv132369)
  %cmp133370 = icmp ugt i32 %conv132369, 15
  br i1 %cmp133370, label %if.end126.for.body135_crit_edge, label %if.end126.for.end140_crit_edge

if.end126.for.end140_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end140

if.end126.for.body135_crit_edge:                  ; preds = %if.end126
  br label %for.body135

for.body135:                                      ; preds = %for.body135.for.body135_crit_edge, %if.end126.for.body135_crit_edge
  %conv132372 = phi i32 [ %70, %for.body135.for.body135_crit_edge ], [ %conv132369, %if.end126.for.body135_crit_edge ]
  %lg.0371 = phi i16 [ %inc136, %for.body135.for.body135_crit_edge ], [ 0, %if.end126.for.body135_crit_edge ]
  %inc136 = add nuw nsw i16 %lg.0371, 1
  %70 = lshr i32 %conv132372, 1
  %cmp133 = icmp ugt i32 %conv132372, 31
  br i1 %cmp133, label %for.body135.for.body135_crit_edge, label %for.body135.for.end140_crit_edge

for.body135.for.end140_crit_edge:                 ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end140

for.body135.for.body135_crit_edge:                ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body135

for.end140:                                       ; preds = %for.body135.for.end140_crit_edge, %if.end126.for.end140_crit_edge
  %lg.0.lcssa = phi i16 [ 0, %if.end126.for.end140_crit_edge ], [ %inc136, %for.body135.for.end140_crit_edge ]
  %71 = ptrtoint ptr %cb.4378 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %cb.4378, align 2
  %73 = tail call i16 @llvm.bswap.i16(i16 %72) #8
  %conv142 = zext i16 %73 to i32
  %conv143 = zext i16 %lg.0.lcssa to i32
  %sub144 = sub nsw i32 12, %conv143
  %shr145 = lshr i32 %conv142, %sub144
  %idx.neg = sub nsw i32 0, %shr145
  %add.ptr146 = getelementptr i8, ptr %dp_addr.1379, i32 -1
  %add.ptr147 = getelementptr i8, ptr %add.ptr146, i32 %idx.neg
  %cmp148 = icmp ult ptr %add.ptr147, %add.ptr51
  br i1 %cmp148, label %for.end140.return_overflow_crit_edge, label %if.end151

for.end140.return_overflow_crit_edge:             ; preds = %for.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %return_overflow

if.end151:                                        ; preds = %for.end140
  %shr154 = lshr i32 4095, %conv143
  %74 = trunc i32 %shr154 to i16
  %75 = and i16 %73, %74
  %conv157 = add nuw nsw i16 %75, 3
  %conv158 = zext i16 %conv157 to i32
  %add159 = add i32 %69, %conv158
  %76 = ptrtoint ptr %dest_ofs to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add159, ptr %dest_ofs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add159, i32 %conv18)
  %cmp161 = icmp sgt i32 %add159, %conv18
  br i1 %cmp161, label %if.end151.return_overflow_crit_edge, label %if.end164

if.end151.return_overflow_crit_edge:              ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %return_overflow

if.end164:                                        ; preds = %if.end151
  %sub.ptr.lhs.cast165 = ptrtoint ptr %dp_addr.1379 to i32
  %sub.ptr.rhs.cast166 = ptrtoint ptr %add.ptr147 to i32
  %sub.ptr.sub167 = sub i32 %sub.ptr.lhs.cast165, %sub.ptr.rhs.cast166
  %conv170 = and i32 %sub.ptr.sub167, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv170, i32 %conv158)
  %cmp171.not = icmp ult i32 %conv170, %conv158
  br i1 %cmp171.not, label %if.else177, label %if.then173

if.then173:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  %77 = call ptr @memcpy(ptr %dp_addr.1379, ptr %add.ptr147, i32 %conv158)
  %add.ptr176 = getelementptr i8, ptr %dp_addr.1379, i32 %conv158
  br label %if.end190

if.else177:                                       ; preds = %if.end164
  %78 = call ptr @memcpy(ptr %dp_addr.1379, ptr %add.ptr147, i32 %conv170)
  %add.ptr180 = getelementptr i8, ptr %dp_addr.1379, i32 %conv170
  %79 = trunc i32 %sub.ptr.sub167 to i16
  %conv186 = sub i16 %conv157, %79
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv186)
  %tobool187.not373 = icmp eq i16 %conv186, 0
  br i1 %tobool187.not373, label %if.else177.if.end190_crit_edge, label %while.body.preheader

if.else177.if.end190_crit_edge:                   ; preds = %if.else177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end190

while.body.preheader:                             ; preds = %if.else177
  %add.ptr182 = getelementptr i8, ptr %add.ptr147, i32 %conv170
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %dp_back_addr.0376 = phi ptr [ %incdec.ptr188, %while.body.while.body_crit_edge ], [ %add.ptr182, %while.body.preheader ]
  %length.0375 = phi i16 [ %dec, %while.body.while.body_crit_edge ], [ %conv186, %while.body.preheader ]
  %dp_addr.2374 = phi ptr [ %incdec.ptr189, %while.body.while.body_crit_edge ], [ %add.ptr180, %while.body.preheader ]
  %dec = add i16 %length.0375, -1
  %incdec.ptr188 = getelementptr i8, ptr %dp_back_addr.0376, i32 1
  %80 = ptrtoint ptr %dp_back_addr.0376 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %dp_back_addr.0376, align 1
  %incdec.ptr189 = getelementptr i8, ptr %dp_addr.2374, i32 1
  %82 = ptrtoint ptr %dp_addr.2374 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %dp_addr.2374, align 1
  %tobool187.not = icmp eq i16 %dec, 0
  br i1 %tobool187.not, label %while.body.if.end190_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.if.end190_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end190

if.end190:                                        ; preds = %while.body.if.end190_crit_edge, %if.else177.if.end190_crit_edge, %if.then173
  %dp_addr.3 = phi ptr [ %add.ptr176, %if.then173 ], [ %add.ptr180, %if.else177.if.end190_crit_edge ], [ %incdec.ptr189, %while.body.if.end190_crit_edge ]
  %add.ptr191 = getelementptr i8, ptr %cb.4378, i32 2
  br label %for.inc197

for.inc197:                                       ; preds = %if.end190, %if.then118
  %cb.5.ph = phi ptr [ %add.ptr191, %if.end190 ], [ %incdec.ptr119, %if.then118 ]
  %dp_addr.4.ph = phi ptr [ %dp_addr.3, %if.end190 ], [ %incdec.ptr120, %if.then118 ]
  %inc198 = add nuw nsw i32 %token.0381, 1
  %83 = lshr i8 %tag.0380, 1
  %exitcond.not = icmp eq i32 %inc198, 8
  br i1 %exitcond.not, label %for.inc197.for.end202_crit_edge, label %for.inc197.for.body105_crit_edge

for.inc197.for.body105_crit_edge:                 ; preds = %for.inc197
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body105

for.inc197.for.end202_crit_edge:                  ; preds = %for.inc197
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end202

for.end202:                                       ; preds = %for.inc197.for.end202_crit_edge, %for.body105.for.end202_crit_edge
  %cb.4.lcssa = phi ptr [ %cb.4378, %for.body105.for.end202_crit_edge ], [ %cb.5.ph, %for.inc197.for.end202_crit_edge ]
  %dp_addr.1.lcssa = phi ptr [ %dp_addr.1379, %for.body105.for.end202_crit_edge ], [ %dp_addr.4.ph, %for.inc197.for.end202_crit_edge ]
  %cmp81 = icmp eq ptr %cb.4.lcssa, %add.ptr31
  br i1 %cmp81, label %for.end202.if.then83_crit_edge, label %for.end202.if.end94_crit_edge

for.end202.if.end94_crit_edge:                    ; preds = %for.end202
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

for.end202.if.then83_crit_edge:                   ; preds = %for.end202
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then83

return_overflow:                                  ; preds = %if.end151.return_overflow_crit_edge, %for.end140.return_overflow_crit_edge, %if.end122.return_overflow_crit_edge, %if.end94.return_overflow_crit_edge, %finalize_page.return_overflow_crit_edge, %if.then56.return_overflow_crit_edge, %land.lhs.true42.return_overflow_crit_edge, %if.end27.return_overflow_crit_edge, %if.end12.return_overflow_crit_edge
  %nr_completed_pages.3 = phi i32 [ %nr_completed_pages.0.ph398, %if.end122.return_overflow_crit_edge ], [ %nr_completed_pages.0.ph398, %for.end140.return_overflow_crit_edge ], [ %nr_completed_pages.0.ph398, %if.end151.return_overflow_crit_edge ], [ %nr_completed_pages.0.ph398, %if.end94.return_overflow_crit_edge ], [ %nr_completed_pages.0.ph398, %if.end27.return_overflow_crit_edge ], [ %nr_completed_pages.0.ph398, %land.lhs.true42.return_overflow_crit_edge ], [ %nr_completed_pages.0.ph398, %if.end12.return_overflow_crit_edge ], [ %inc70, %finalize_page.return_overflow_crit_edge ], [ %nr_completed_pages.0.ph398, %if.then56.return_overflow_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_decompress, ptr noundef null, ptr noundef nonnull @.str.37) #8
  br label %return_error

cleanup203:                                       ; preds = %if.end.cleanup203_crit_edge, %return_error.cleanup203_crit_edge
  ret i32 %err.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !62, !63, !65, !66, !68, !70, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs/compress.c", i32 506, i32 2}
!2 = !{ptr @__func__.ntfs_read_compressed_block, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ntfs/compress.c", i32 527, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ntfs/compress.c", i32 554, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ntfs/compress.c", i32 612, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ntfs/compress.c", i32 638, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ntfs/compress.c", i32 681, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ntfs/compress.c", i32 689, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ntfs/compress.c", i32 719, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ntfs/compress.c", i32 732, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ntfs/compress.c", i32 779, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ntfs/compress.c", i32 844, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ntfs/compress.c", i32 854, i32 4}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ntfs/compress.c", i32 888, i32 4}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ntfs/compress.c", i32 909, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ntfs/compress.c", i32 914, i32 2}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ntfs/compress.c", i32 921, i32 2}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ntfs/compress.c", i32 927, i32 2}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ntfs/compress.c", i32 933, i32 2}
!41 = !{ptr @ntfs_compression_buffer, !42, !"ntfs_compression_buffer", i1 false, i1 false}
!42 = !{!"../fs/ntfs/compress.c", i32 47, i32 12}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/page-flags.h", i32 420, i32 1}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/mm.h", i32 717, i32 2}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ntfs/compress.c", i32 52, i32 8}
!59 = !{ptr @ntfs_cb_lock, !58, !"ntfs_cb_lock", i1 false, i1 false}
!60 = !{ptr @__func__.zero_partial_compressed_page, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ntfs/compress.c", i32 92, i32 2}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__func__.ntfs_decompress, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ntfs/compress.c", i32 185, i32 2}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ntfs/compress.c", i32 187, i32 2}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ntfs/compress.c", i32 200, i32 3}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ntfs/compress.c", i32 268, i32 3}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ntfs/compress.c", i32 296, i32 2}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ntfs/compress.c", i32 311, i32 4}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ntfs/compress.c", i32 423, i32 2}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{i64 2154607294, i64 2154607776, i64 2154607331, i64 2154607387, i64 2154607421, i64 2154607445, i64 2154607486, i64 2154607507, i64 2154607535, i64 2154607569}
!89 = !{!"branch_weights", i32 1, i32 2000}
!90 = !{i64 2154608895, i64 2154609377, i64 2154608932, i64 2154608988, i64 2154609022, i64 2154609046, i64 2154609087, i64 2154609108, i64 2154609136, i64 2154609170}
!91 = !{!"auto-init"}
!92 = !{i64 2154612125, i64 2154612608, i64 2154612162, i64 2154612218, i64 2154612252, i64 2154612276, i64 2154612317, i64 2154612338, i64 2154612366, i64 2154612400}
!93 = !{i64 2154613702, i64 2154614185, i64 2154613739, i64 2154613795, i64 2154613829, i64 2154613853, i64 2154613894, i64 2154613915, i64 2154613943, i64 2154613977}
!94 = !{!"branch_weights", i32 6003000, i32 -294967296}
!95 = !{i64 1083699, i64 1083760}
!96 = !{i64 1086431}
!97 = !{i64 1086716}
!98 = !{i64 2152521850}
!99 = !{i64 2152521692}
!100 = !{i64 2152522020}
!101 = !{i64 2150107834}
!102 = !{i64 2151338727}
!103 = !{i64 2150587764, i64 2150588255, i64 2150587801, i64 2150587857, i64 2150587891, i64 2150587915, i64 2150587956, i64 2150587977, i64 2150588005, i64 2150588039}
!104 = !{i64 2150697673, i64 2150698164, i64 2150697710, i64 2150697766, i64 2150697800, i64 2150697824, i64 2150697865, i64 2150697886, i64 2150697914, i64 2150697948}
!105 = !{i64 2151337656}
!106 = !{i64 2150640796, i64 2150641287, i64 2150640833, i64 2150640889, i64 2150640923, i64 2150640947, i64 2150640988, i64 2150641009, i64 2150641037, i64 2150641071}
!107 = !{i64 2150658156, i64 2150658329, i64 2150658344, i64 2150658396, i64 2150658455, i64 2150658479, i64 2150658520, i64 2150658541, i64 2150658569, i64 2150658601}
!108 = !{i64 2150659031, i64 2150659204, i64 2150659219, i64 2150659271, i64 2150659330, i64 2150659354, i64 2150659395, i64 2150659416, i64 2150659444, i64 2150659476}
!109 = !{i64 2153190705, i64 2153191188, i64 2153190742, i64 2153190798, i64 2153190832, i64 2153190856, i64 2153190897, i64 2153190918, i64 2153190946, i64 2153190980}
!110 = !{i64 2148767495}
!111 = !{i64 2148682204, i64 2148682236, i64 2148682265, i64 2148682299, i64 2148682330, i64 2148682353}
!112 = !{i64 2148767724}
!113 = !{i64 2148503617, i64 2148503622, i64 2148503635, i64 2148503679, i64 2148503713, i64 2148503734}
!114 = !{i64 2148687877, i64 2148687909, i64 2148687938, i64 2148687972, i64 2148688003, i64 2148688026}
!115 = !{i64 2148776982}
!116 = !{i64 2148679019, i64 2148679045, i64 2148679074, i64 2148679108, i64 2148679139, i64 2148679162}
!117 = !{i64 2154616776}
!118 = !{i64 2154617365, i64 2154617848, i64 2154617402, i64 2154617458, i64 2154617492, i64 2154617516, i64 2154617557, i64 2154617578, i64 2154617606, i64 2154617640}
!119 = !{i64 2153822269}
!120 = !{i64 2148681484, i64 2148681510, i64 2148681539, i64 2148681573, i64 2148681604, i64 2148681627}
