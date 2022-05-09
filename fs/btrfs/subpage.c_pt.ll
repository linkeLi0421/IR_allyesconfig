; ModuleID = '/llk/IR_all_yes/fs/btrfs/subpage.c_pt.bc'
source_filename = "../fs/btrfs/subpage.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%struct.atomic_t = type { i32 }
%union.anon.57 = type { i32 }
%struct.btrfs_subpage_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.75 = type { %struct.atomic_t }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.80, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.80 = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.btrfs_subpage = type { %struct.spinlock, %struct.atomic_t, %union.anon.83, [0 x i32] }
%union.anon.83 = type { %struct.atomic_t }
%struct.anon.82 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"IS_ALIGNED(PAGE_SIZE, sectorsize)\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/btrfs/subpage.c\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PageLocked(page)\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"subpage\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fs_info->sectorsize < PAGE_SIZE\00", [32 x i8] zeroinitializer }, align 32
@btrfs_alloc_subpage.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ret->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PagePrivate(page) && page->mapping\00", [61 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"atomic_read(&subpage->eb_refs)\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"atomic_read(&subpage->readers) >= nbits\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"atomic_read(&subpage->readers) == 0\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ret == nbits\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"atomic_read(&subpage->writers) >= nbits\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PageWriteback(page)\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"!PageDirty(page)\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PagePrivate(page) && page->private\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"subpage_test_bitmap_all_zero(fs_info, subpage, dirty)\00", [42 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@.str.19 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.25 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"IS_ALIGNED(start, fs_info->sectorsize) && IS_ALIGNED(len, fs_info->sectorsize)\00", [49 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"page_offset(page) <= start && start + len <= page_offset(page) + PAGE_SIZE\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_PAGE(1 && PageCompound(page))\00", [56 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 71, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 107, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 131, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 141, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 149, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 181, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 200, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 241, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 282, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 284, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 305, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 522, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 696, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 700, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 701, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 3491, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 414, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 452, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1160, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 260, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 717, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 209, i32 2 }
@___asan_gen_.112 = private constant [22 x i8] c"../fs/btrfs/subpage.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 216, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 788, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 678, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 430, i32 1 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @btrfs_alloc_subpage.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_alloc_subpage.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_init_subpage_info(ptr nocapture noundef writeonly %subpage_info, i32 noundef %sectorsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %sectorsize, 8191
  %and = and i32 %sub, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.end, label %cond.false, !prof !69

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 71) #11
  unreachable

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 4096, %sectorsize
  %0 = ptrtoint ptr %subpage_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %div, ptr %subpage_info, align 4
  %uptodate_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %subpage_info, i32 0, i32 2
  %1 = ptrtoint ptr %uptodate_offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %uptodate_offset, align 4
  %error_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %subpage_info, i32 0, i32 3
  %2 = ptrtoint ptr %error_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %error_offset, align 4
  %add2 = shl nuw nsw i32 %div, 1
  %dirty_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %subpage_info, i32 0, i32 4
  %3 = ptrtoint ptr %dirty_offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add2, ptr %dirty_offset, align 4
  %add3 = mul nuw nsw i32 %div, 3
  %writeback_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %subpage_info, i32 0, i32 5
  %4 = ptrtoint ptr %writeback_offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add3, ptr %writeback_offset, align 4
  %add4 = shl nuw nsw i32 %div, 2
  %ordered_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %subpage_info, i32 0, i32 6
  %5 = ptrtoint ptr %ordered_offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add4, ptr %ordered_offset, align 4
  %add5 = mul nuw nsw i32 %div, 5
  %checked_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %subpage_info, i32 0, i32 7
  %6 = ptrtoint ptr %checked_offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add5, ptr %checked_offset, align 4
  %add6 = mul nuw nsw i32 %div, 6
  %total_nr_bits = getelementptr inbounds %struct.btrfs_subpage_info, ptr %subpage_info, i32 0, i32 1
  %7 = ptrtoint ptr %total_nr_bits to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add6, ptr %total_nr_bits, align 4
  ret void
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #1 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %expr, ptr noundef nonnull @.str.1, i32 noundef %line) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #8, !srcloc !70
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_attach_subpage(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, -1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %2, align 4
  %and.i16.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !71

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !69

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %10, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %11, %if.end.i20.i ]
  %12 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #8, !srcloc !72
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !69

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %10, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %13, %if.end.i27.i ]
  %14 = inttoptr i32 %retval.0.i28.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool1.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool1.not, label %cond.false, label %PageLocked.exit.if.end_crit_edge, !prof !71

PageLocked.exit.if.end_crit_edge:                 ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.false:                                       ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 107) #11
  unreachable

if.end:                                           ; preds = %PageLocked.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %17 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %18)
  %cmp = icmp eq i32 %18, 4096
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %19 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.not.i19 = icmp eq i32 %20, -1
  br i1 %cmp.i.not.i19, label %if.then.i20, label %PagePrivate.exit, !prof !71

if.then.i20:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !73
  unreachable

PagePrivate.exit:                                 ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %page, align 4
  %23 = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool5.not = icmp eq i32 %23, 0
  br i1 %tobool5.not, label %if.end7, label %PagePrivate.exit.cleanup_crit_edge

PagePrivate.exit.cleanup_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %PagePrivate.exit
  %call8 = tail call ptr @btrfs_alloc_subpage(ptr noundef %fs_info, i32 noundef %type)
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @attach_page_private(ptr noundef %page, ptr noundef %call8)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %PagePrivate.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %24, %if.then10 ], [ 0, %if.end12 ], [ 0, %PagePrivate.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_alloc_subpage(ptr nocapture noundef readonly %fs_info, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp ult i32 %1, 4096
  br i1 %cmp, label %if.end8.i.i, label %cond.false, !prof !69

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.4, i32 noundef 141) #11
  unreachable

if.end8.i.i:                                      ; preds = %entry
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %2 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subpage_info, align 8
  %total_nr_bits = getelementptr inbounds %struct.btrfs_subpage_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %total_nr_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_nr_bits, align 4
  %sub = add i32 %5, 31
  %6 = lshr i32 %sub, 3
  %7 = and i32 %6, 536870908
  %spec.select.i19 = add nuw nsw i32 %7, 52
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i19, i32 noundef 3392) #13
  %tobool3.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not, label %if.end8.i.i.cleanup_crit_edge, label %do.body

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end8.i.i
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @btrfs_alloc_subpage.__key, i16 noundef signext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp6 = icmp eq i32 %type, 0
  br i1 %cmp6, label %do.body.cleanup.sink.split_crit_edge, label %if.else

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %readers = getelementptr inbounds %struct.btrfs_subpage, ptr %call9.i.i, i32 0, i32 1
  %call.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %readers, i32 noundef 4) #8
  %8 = ptrtoint ptr %readers to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %readers, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %do.body.cleanup.sink.split_crit_edge
  %9 = getelementptr inbounds %struct.btrfs_subpage, ptr %call9.i.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %9, i32 noundef 4) #8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %9, align 16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ], [ %call9.i.i, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @attach_page_private(ptr noundef %page, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !69

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end5.i.i, !prof !71

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.21) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #8, !srcloc !74
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@attach_page_private, %if.then.i.i.i.i)) #8
          to label %folio_get.exit.i [label %if.then.i.i.i.i], !srcloc !76

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__page_ref_mod(ptr noundef %4, i32 noundef 1) #8
  br label %folio_get.exit.i

folio_get.exit.i:                                 ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %private.i = getelementptr inbounds %struct.anon.82, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %private.i, align 4
  %9 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_attach_private.exit, label %if.then.i.i.i, !prof !69

if.then.i.i.i:                                    ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

folio_attach_private.exit:                        ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 13, ptr noundef %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_detach_subpage(ptr nocapture noundef readonly %fs_info, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !71

if.then.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !73
  unreachable

PagePrivate.exit:                                 ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %page, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %PagePrivate.exit.cleanup_crit_edge, label %if.end

PagePrivate.exit.cleanup_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %PagePrivate.exit
  %7 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %9, -1
  br label %detach_page_private.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %page to i32
  br label %detach_page_private.exit

detach_page_private.exit:                         ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %10, %if.end.i.i ]
  %11 = inttoptr i32 %retval.0.i.i to ptr
  %call1.i = tail call fastcc ptr @folio_detach_private(ptr noundef %11) #8
  %tobool2.not = icmp eq ptr %call1.i, null
  br i1 %tobool2.not, label %cond.false, label %cond.end, !prof !71

cond.false:                                       ; preds = %detach_page_private.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 131) #11
  unreachable

cond.end:                                         ; preds = %detach_page_private.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call1.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %PagePrivate.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_free_subpage(ptr noundef %subpage) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %subpage) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_inc_eb_refs(ptr nocapture noundef readonly %fs_info, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !71

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !73
  unreachable

PagePrivate.exit:                                 ; preds = %if.end
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %page, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %PagePrivate.exit.cond.false_crit_edge, label %land.rhs, !prof !71

PagePrivate.exit.cond.false_crit_edge:            ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.rhs:                                         ; preds = %PagePrivate.exit
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapping, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %land.rhs.cond.false_crit_edge, label %do.body, !prof !71

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %PagePrivate.exit.cond.false_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.6, i32 noundef 181) #11
  unreachable

do.body:                                          ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %do.body.if.end31_crit_edge, label %land.rhs5

do.body.if.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.rhs5:                                        ; preds = %do.body
  %dep_map = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.not = icmp eq i32 %call.i, 0
  br i1 %cmp8.not, label %do.end, label %land.rhs5.if.end31_crit_edge, !prof !71

land.rhs5.if.end31_crit_edge:                     ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end:                                           ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 182, i32 noundef 9, ptr noundef null) #8
  br label %if.end31

if.end31:                                         ; preds = %do.end, %land.rhs5.if.end31_crit_edge, %do.body.if.end31_crit_edge
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %private, align 4
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.btrfs_subpage, ptr %12, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %13, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %13, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #8, !srcloc !75
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_dec_eb_refs(ptr nocapture noundef readonly %fs_info, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !71

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !73
  unreachable

PagePrivate.exit:                                 ; preds = %if.end
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %page, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %PagePrivate.exit.cond.false_crit_edge, label %land.rhs, !prof !71

PagePrivate.exit.cond.false_crit_edge:            ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.rhs:                                         ; preds = %PagePrivate.exit
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapping, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %land.rhs.cond.false_crit_edge, label %do.body, !prof !71

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %PagePrivate.exit.cond.false_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.6, i32 noundef 196) #11
  unreachable

do.body:                                          ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %do.body.if.end31_crit_edge, label %land.rhs5

do.body.if.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.rhs5:                                        ; preds = %do.body
  %dep_map = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.not = icmp eq i32 %call.i, 0
  br i1 %cmp8.not, label %do.end, label %land.rhs5.if.end31_crit_edge, !prof !71

land.rhs5.if.end31_crit_edge:                     ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end:                                           ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 197, i32 noundef 9, ptr noundef null) #8
  br label %if.end31

if.end31:                                         ; preds = %do.end, %land.rhs5.if.end31_crit_edge, %do.body.if.end31_crit_edge
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %private, align 4
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.btrfs_subpage, ptr %12, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %13, i32 noundef 4) #8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool41.not = icmp eq i32 %15, 0
  br i1 %tobool41.not, label %cond.false49, label %cond.end50, !prof !71

cond.false49:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.7, i32 noundef 200) #11
  unreachable

cond.end50:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i56 = tail call zeroext i1 @__kasan_check_write(ptr noundef %13, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %13, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #8, !srcloc !78
  br label %cleanup

cleanup:                                          ; preds = %cond.end50, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_subpage_start_reader(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %len, %4
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %readers = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %readers, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %readers, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %readers, ptr %readers, i32 %shr, ptr elementtype(i32) %readers) #8, !srcloc !75
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_subpage_assert(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !71

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !73
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %PagePrivate.exit.cond.false_crit_edge, label %land.rhs, !prof !71

PagePrivate.exit.cond.false_crit_edge:            ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.rhs:                                         ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %land.rhs.cond.false_crit_edge, label %cond.end, !prof !71

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %PagePrivate.exit.cond.false_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.14, i32 noundef 208) #11
  unreachable

cond.end:                                         ; preds = %land.rhs
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %7 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sectorsize, align 4
  %conv = zext i32 %8 to i64
  %sub = add nsw i64 %conv, -1
  %and = and i64 %sub, %start
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  %sub7 = add i32 %8, -1
  %and8 = and i32 %sub7, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9 = icmp eq i32 %and8, 0
  %9 = select i1 %cmp, i1 %cmp9, i1 false, !prof !69
  br i1 %9, label %cond.end20, label %cond.false19, !prof !69

cond.false19:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.25, i32 noundef 210) #11
  unreachable

cond.end20:                                       ; preds = %cond.end
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mapping, align 4
  %tobool21.not = icmp eq ptr %11, null
  br i1 %tobool21.not, label %cond.end20.if.end_crit_edge, label %if.then

cond.end20.if.end_crit_edge:                      ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end20
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %13 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %start)
  %cmp23.not = icmp ugt i64 %shl.i, %start
  br i1 %cmp23.not, label %if.then.cond.false39_crit_edge, label %land.rhs25, !prof !71

if.then.cond.false39_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false39

land.rhs25:                                       ; preds = %if.then
  %conv26 = zext i32 %len to i64
  %add = add i64 %conv26, %start
  %add28 = add nuw nsw i64 %shl.i, 4096
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add28)
  %cmp29.not = icmp ugt i64 %add, %add28
  br i1 %cmp29.not, label %land.rhs25.cond.false39_crit_edge, label %land.rhs25.if.end_crit_edge, !prof !71

land.rhs25.if.end_crit_edge:                      ; preds = %land.rhs25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs25.cond.false39_crit_edge:                ; preds = %land.rhs25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false39

cond.false39:                                     ; preds = %land.rhs25.cond.false39_crit_edge, %if.then.cond.false39_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.26, i32 noundef 217) #11
  unreachable

if.end:                                           ; preds = %land.rhs25.if.end_crit_edge, %cond.end20.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_subpage_end_reader(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %len, %4
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapping, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %location.i.i = getelementptr i8, ptr %8, i32 -860
  %9 = ptrtoint ptr %location.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %location.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not.i.i = icmp eq i64 %10, 0
  br i1 %tobool.not.i.i, label %entry.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %entry
  %type.i.i = getelementptr i8, ptr %8, i32 -852
  %11 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %12)
  %cmp.i.i16 = icmp eq i8 %12, -124
  br i1 %cmp.i.i16, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.is_data_inode.exit_crit_edge

lor.lhs.false.i.i.is_data_inode.exit_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_data_inode.exit

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i_ino.i.i = getelementptr i8, ptr %8, i32 40
  %13 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino.i.i, align 8
  %conv3.i.i = zext i32 %14 to i64
  br label %is_data_inode.exit

is_data_inode.exit:                               ; preds = %if.then.i.i, %lor.lhs.false.i.i.is_data_inode.exit_crit_edge
  %ino.0.i.i = phi i64 [ %conv3.i.i, %if.then.i.i ], [ %10, %lor.lhs.false.i.i.is_data_inode.exit_crit_edge ]
  %readers = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %readers, i32 noundef 4) #8
  %15 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %readers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %shr)
  %cmp.not = icmp slt i32 %16, %shr
  br i1 %cmp.not, label %cond.false, label %cond.end, !prof !71

cond.false:                                       ; preds = %is_data_inode.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.8, i32 noundef 241) #11
  unreachable

cond.end:                                         ; preds = %is_data_inode.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %ino.0.i.i)
  %cmp.i.not = icmp eq i64 %ino.0.i.i, 1
  %call.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %readers, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %readers, i32 1, i32 3, i32 1) #8
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %readers, ptr %readers, i32 %shr, ptr elementtype(i32) %readers) #8, !srcloc !80
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i = icmp ne i32 %asmresult.i.i.i.i, 0
  %brmerge = select i1 %cmp.i.not, i1 true, i1 %cmp.i.i
  br i1 %brmerge, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unlock_page(ptr noundef %page) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_subpage_start_writer(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %readers = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %readers, i32 noundef 4) #8
  %5 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %cond.end, label %cond.false, !prof !69

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.9, i32 noundef 282) #11
  unreachable

cond.end:                                         ; preds = %entry
  %shr = lshr i32 %len, %4
  %7 = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 2
  %call.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %7, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %7, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 %shr, ptr elementtype(i32) %7) #8, !srcloc !83
  %asmresult.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !84
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i, i32 %shr)
  %cmp3 = icmp eq i32 %asmresult.i.i.i, %shr
  br i1 %cmp3, label %cond.end12, label %cond.false11, !prof !69

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.10, i32 noundef 284) #11
  unreachable

cond.end12:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_subpage_end_and_test_writer(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %len, %4
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %5 = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i12 = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %shr)
  %cmp2.not = icmp slt i32 %9, %shr
  br i1 %cmp2.not, label %cond.false, label %cond.end, !prof !71

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.11, i32 noundef 305) #11
  unreachable

cond.end:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %5, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 %shr, ptr elementtype(i32) %5) #8, !srcloc !80
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp.i.i, %cond.end ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_page_start_writer_lock(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.27, i32 noundef 788) #8
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !69

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #8
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %6, align 4
  %and.i.i4.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i17_crit_edge

folio_flags.exit.i.i.if.then.i17_crit_edge:       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i17

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #8, !srcloc !85
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !86
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.return_crit_edge, label %folio_trylock.exit.i.if.then.i17_crit_edge

folio_trylock.exit.i.if.then.i17_crit_edge:       ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i17

folio_trylock.exit.i.return_crit_edge:            ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then.i17:                                      ; preds = %folio_trylock.exit.i.if.then.i17_crit_edge, %folio_flags.exit.i.i.if.then.i17_crit_edge
  tail call void @__folio_lock(ptr noundef %6) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  tail call void @__might_sleep(ptr noundef nonnull @.str.27, i32 noundef 788) #8
  %13 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i18 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i18)
  %tobool.not.i.i19 = icmp eq i32 %and.i.i18, 0
  br i1 %tobool.not.i.i19, label %if.end.i.i22, label %if.then.i.i21, !prof !69

if.then.i.i21:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i20 = add i32 %15, -1
  br label %_compound_head.exit.i26

if.end.i.i22:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i26

_compound_head.exit.i26:                          ; preds = %if.end.i.i22, %if.then.i.i21
  %retval.0.i.i23 = phi i32 [ %sub.i.i20, %if.then.i.i21 ], [ %16, %if.end.i.i22 ]
  %17 = inttoptr i32 %retval.0.i.i23 to ptr
  %18 = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i.i.i24 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i24)
  %tobool.not.i.i.i25 = icmp eq i32 %and.i.i.i.i24, 0
  br i1 %tobool.not.i.i.i25, label %folio_flags.exit.i.i31, label %if.then.i.i.i27, !prof !69

if.then.i.i.i27:                                  ; preds = %_compound_head.exit.i26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

folio_flags.exit.i.i31:                           ; preds = %_compound_head.exit.i26
  %call.i.i.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %17, i32 noundef 4) #8
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %17, align 4
  %and.i.i4.i.i29 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i29)
  %tobool.not.i.i.i.i30 = icmp eq i32 %and.i.i4.i.i29, 0
  br i1 %tobool.not.i.i.i.i30, label %folio_trylock.exit.i35, label %folio_flags.exit.i.i31.if.then.i36_crit_edge

folio_flags.exit.i.i31.if.then.i36_crit_edge:     ; preds = %folio_flags.exit.i.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i36

folio_trylock.exit.i35:                           ; preds = %folio_flags.exit.i.i31
  tail call void @llvm.prefetch.p0(ptr %17, i32 1, i32 3, i32 1) #8
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #8, !srcloc !85
  %asmresult.i.i.i.i.i.i.i32 = extractvalue { i32, i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !86
  %and1.i.i.i.i33 = and i32 %asmresult.i.i.i.i.i.i.i32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i33)
  %phi.cmp.i.i.i34 = icmp eq i32 %and1.i.i.i.i33, 0
  br i1 %phi.cmp.i.i.i34, label %folio_trylock.exit.i35.lock_page.exit37_crit_edge, label %folio_trylock.exit.i35.if.then.i36_crit_edge

folio_trylock.exit.i35.if.then.i36_crit_edge:     ; preds = %folio_trylock.exit.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i36

folio_trylock.exit.i35.lock_page.exit37_crit_edge: ; preds = %folio_trylock.exit.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_page.exit37

if.then.i36:                                      ; preds = %folio_trylock.exit.i35.if.then.i36_crit_edge, %folio_flags.exit.i.i31.if.then.i36_crit_edge
  tail call void @__folio_lock(ptr noundef %17) #8
  br label %lock_page.exit37

lock_page.exit37:                                 ; preds = %if.then.i36, %folio_trylock.exit.i35.lock_page.exit37_crit_edge
  %24 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i = icmp eq i32 %25, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !71

if.then.i:                                        ; preds = %lock_page.exit37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !73
  unreachable

PagePrivate.exit:                                 ; preds = %lock_page.exit37
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %page, align 4
  %28 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool4.not = icmp eq i32 %28, 0
  br i1 %tobool4.not, label %PagePrivate.exit.if.then7_crit_edge, label %lor.lhs.false5

PagePrivate.exit.if.then7_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

lor.lhs.false5:                                   ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %29 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool6.not = icmp eq i32 %30, 0
  br i1 %tobool6.not, label %lor.lhs.false5.if.then7_crit_edge, label %if.end8

lor.lhs.false5.if.then7_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false5.if.then7_crit_edge, %PagePrivate.exit.if.then7_crit_edge
  tail call void @unlock_page(ptr noundef %page) #8
  br label %return

if.end8:                                          ; preds = %lor.lhs.false5
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %32 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %33 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end8.btrfs_subpage_clamp_range.exit_crit_edge

if.end8.btrfs_subpage_clamp_range.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %34 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %34, %33
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end8.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end8.btrfs_subpage_clamp_range.exit_crit_edge ]
  tail call void @btrfs_subpage_start_writer(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %33, i32 noundef %storemerge.i)
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %if.then7, %if.then.i17, %folio_trylock.exit.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %btrfs_subpage_clamp_range.exit ], [ -11, %if.then7 ], [ 0, %folio_trylock.exit.i.return_crit_edge ], [ 0, %if.then.i17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_end_writer_lock(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.end5.sink.split_crit_edge, label %lor.lhs.false, !prof !71

entry.if.end5.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.sink.split

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.end5.sink.split_crit_edge, label %if.end

lor.lhs.false.if.end5.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.sink.split

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %3 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %4 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %5 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %5, %4
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  %call = tail call zeroext i1 @btrfs_subpage_end_and_test_writer(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %4, i32 noundef %storemerge.i)
  br i1 %call, label %btrfs_subpage_clamp_range.exit.if.end5.sink.split_crit_edge, label %btrfs_subpage_clamp_range.exit.if.end5_crit_edge

btrfs_subpage_clamp_range.exit.if.end5_crit_edge: ; preds = %btrfs_subpage_clamp_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

btrfs_subpage_clamp_range.exit.if.end5.sink.split_crit_edge: ; preds = %btrfs_subpage_clamp_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %btrfs_subpage_clamp_range.exit.if.end5.sink.split_crit_edge, %lor.lhs.false.if.end5.sink.split_crit_edge, %entry.if.end5.sink.split_crit_edge
  tail call void @unlock_page(ptr noundef %page) #8
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %btrfs_subpage_clamp_range.exit.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_subpage_set_uptodate(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %uptodate_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %uptodate_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uptodate_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  tail call void @__bitmap_set(ptr noundef %bitmaps, i32 noundef %add, i32 noundef %shr9) #8
  %11 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subpage_info, align 8
  %uptodate_offset13 = getelementptr inbounds %struct.btrfs_subpage_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %uptodate_offset13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %uptodate_offset13, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %add.i = add i32 %16, %14
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps, i32 noundef %add.i, i32 noundef %14) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add.i)
  %cmp.i30 = icmp eq i32 %call.i, %add.i
  br i1 %cmp.i30, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  %17 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !69

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #8
  br label %if.end

if.end:                                           ; preds = %SetPageUptodate.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_subpage_clear_uptodate(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %uptodate_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %uptodate_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uptodate_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  tail call void @__bitmap_clear(ptr noundef %bitmaps, i32 noundef %add, i32 noundef %shr9) #8
  %11 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i21 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i21)
  %tobool.not.i = icmp eq i32 %and.i.i21, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i22, !prof !69

if.then.i22:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.28) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #8, !srcloc !88
  unreachable

do.body7.i:                                       ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %11, align 4
  %and.i31.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %15, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end.i.i ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i.not.i = icmp eq i32 %19, -1
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %11, align 4
  %and.i32.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !71

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !69

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %21, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %22, %if.end.i36.i ]
  %23 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #8, !srcloc !89
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !69

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %21, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %page to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %24, %if.end.i43.i ]
  %25 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %25) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_subpage_set_error(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %error_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %error_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  tail call void @__bitmap_set(ptr noundef %bitmaps, i32 noundef %add, i32 noundef %shr9) #8
  %11 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i21, !prof !69

if.then.i21:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.28) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !90
  unreachable

do.body7.i:                                       ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %11, align 4
  %and.i31.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %15, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end.i.i ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i.not.i = icmp eq i32 %19, -1
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %11, align 4
  %and.i32.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !71

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !69

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %21, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %22, %if.end.i36.i ]
  %23 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !91
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !69

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %21, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %24, %if.end.i43.i ]
  %25 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %25) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_subpage_clear_error(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %error_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %error_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  tail call void @__bitmap_clear(ptr noundef %bitmaps, i32 noundef %add, i32 noundef %shr9) #8
  %11 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subpage_info, align 8
  %error_offset13 = getelementptr inbounds %struct.btrfs_subpage_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %error_offset13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error_offset13, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %add.i = add i32 %16, %14
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %bitmaps, i32 noundef %add.i, i32 noundef %14) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add.i)
  %cmp.i32 = icmp eq i32 %call.i, %add.i
  br i1 %cmp.i32, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %17 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i30 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i30)
  %tobool.not.i = icmp eq i32 %and.i.i30, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i31, !prof !69

if.then.i31:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.28) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !92
  unreachable

do.body7.i:                                       ; preds = %if.then
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %17, align 4
  %and.i31.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %21, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %22, %if.end.i.i ]
  %23 = inttoptr i32 %retval.0.i.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i = icmp eq i32 %25, -1
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %17, align 4
  %and.i32.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !71

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !69

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %27, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %28, %if.end.i36.i ]
  %29 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !93
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !69

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %27, -1
  br label %ClearPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %page to i32
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %30, %if.end.i43.i ]
  %31 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %31) #8
  br label %if.end

if.end:                                           ; preds = %ClearPageError.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_subpage_set_dirty(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %dirty_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %dirty_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dirty_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  tail call void @__bitmap_set(ptr noundef %bitmaps, i32 noundef %add, i32 noundef %shr9) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  %call11 = tail call zeroext i1 @set_page_dirty(ptr noundef %page) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_subpage_clear_and_test_dirty(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %dirty_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %dirty_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dirty_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  tail call void @__bitmap_clear(ptr noundef %bitmaps, i32 noundef %add, i32 noundef %shr9) #8
  %11 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subpage_info, align 8
  %dirty_offset13 = getelementptr inbounds %struct.btrfs_subpage_info, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %dirty_offset13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dirty_offset13, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %add.i = add i32 %16, %14
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %bitmaps, i32 noundef %add.i, i32 noundef %14) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add.i)
  %cmp.i29 = icmp eq i32 %call.i, %add.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  ret i1 %cmp.i29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_subpage_clear_dirty(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private.i, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) #8
  %conv.i = trunc i64 %start to i32
  %and.i = and i32 %conv.i, 4095
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = lshr i32 %and.i, %4
  %subpage_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info.i, align 8
  %dirty_offset.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %dirty_offset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dirty_offset.i, align 4
  %add.i = add i32 %8, %shr.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps.i = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits.i, align 8
  %shr9.i = lshr i32 %len, %10
  tail call void @__bitmap_clear(ptr noundef %bitmaps.i, i32 noundef %add.i, i32 noundef %shr9.i) #8
  %11 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subpage_info.i, align 8
  %dirty_offset13.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %dirty_offset13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dirty_offset13.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %add.i.i = add i32 %16, %14
  %call.i.i = tail call i32 @_find_next_bit_be(ptr noundef %bitmaps.i, i32 noundef %add.i.i, i32 noundef %14) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i.i)
  %cmp.i29.i = icmp eq i32 %call.i.i, %add.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5.i) #8
  br i1 %cmp.i29.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef %page) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_subpage_set_writeback(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %writeback_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %writeback_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writeback_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  tail call void @__bitmap_set(ptr noundef %bitmaps, i32 noundef %add, i32 noundef %shr9) #8
  %call10 = tail call zeroext i1 @set_page_writeback(ptr noundef %page) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_subpage_clear_writeback(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %writeback_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %writeback_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writeback_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  tail call void @__bitmap_clear(ptr noundef %bitmaps, i32 noundef %add, i32 noundef %shr9) #8
  %11 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subpage_info, align 8
  %writeback_offset13 = getelementptr inbounds %struct.btrfs_subpage_info, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %writeback_offset13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %writeback_offset13, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %add.i = add i32 %16, %14
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %bitmaps, i32 noundef %add.i, i32 noundef %14) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add.i)
  %cmp.i36 = icmp eq i32 %call.i, %add.i
  br i1 %cmp.i36, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %17 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i34 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i34)
  %tobool.not.i.i = icmp eq i32 %and.i.i34, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %19, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %20, %if.end.i.i ]
  %21 = inttoptr i32 %retval.0.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i.not.i = icmp eq i32 %23, -1
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %17, align 4
  %and.i16.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i35, label %do.end10.i, !prof !71

if.then.i35:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !69

if.then.i19.i:                                    ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %25, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %26, %if.end.i20.i ]
  %27 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %27, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !94
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !69

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %25, -1
  br label %PageWriteback.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %28, %if.end.i27.i ]
  %29 = inttoptr i32 %retval.0.i28.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %32 = and i32 %31, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp eq i32 %32, 0
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !71

cond.false:                                       ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.12, i32 noundef 522) #11
  unreachable

cond.end:                                         ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @end_page_writeback(ptr noundef %page) #8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_subpage_set_ordered(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %ordered_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %ordered_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ordered_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  tail call void @__bitmap_set(ptr noundef %bitmaps, i32 noundef %add, i32 noundef %shr9) #8
  %11 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not.i = icmp eq i32 %12, -1
  br i1 %cmp.i.not.i, label %if.then.i21, label %SetPagePrivate2.exit, !prof !71

if.then.i21:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 453, 0\0A.popsection", ""() #8, !srcloc !95
  unreachable

SetPagePrivate2.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 14, ptr noundef %page) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_subpage_clear_ordered(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %ordered_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %ordered_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ordered_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  tail call void @__bitmap_clear(ptr noundef %bitmaps, i32 noundef %add, i32 noundef %shr9) #8
  %11 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subpage_info, align 8
  %ordered_offset13 = getelementptr inbounds %struct.btrfs_subpage_info, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %ordered_offset13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ordered_offset13, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %add.i = add i32 %16, %14
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %bitmaps, i32 noundef %add.i, i32 noundef %14) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add.i)
  %cmp.i31 = icmp eq i32 %call.i, %add.i
  br i1 %cmp.i31, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %17 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i.not.i = icmp eq i32 %18, -1
  br i1 %cmp.i.not.i, label %if.then.i30, label %ClearPagePrivate2.exit, !prof !71

if.then.i30:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 453, 0\0A.popsection", ""() #8, !srcloc !96
  unreachable

ClearPagePrivate2.exit:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %page) #8
  br label %if.end

if.end:                                           ; preds = %ClearPagePrivate2.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_subpage_set_checked(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %checked_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %checked_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %checked_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  tail call void @__bitmap_set(ptr noundef %bitmaps, i32 noundef %add, i32 noundef %shr9) #8
  %11 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subpage_info, align 8
  %checked_offset13 = getelementptr inbounds %struct.btrfs_subpage_info, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %checked_offset13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %checked_offset13, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %add.i = add i32 %16, %14
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps, i32 noundef %add.i, i32 noundef %14) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add.i)
  %cmp.i31 = icmp eq i32 %call.i, %add.i
  br i1 %cmp.i31, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %17 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %page, align 4
  %19 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %if.then.if.then.i30_crit_edge

if.then.if.then.i30_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i30

PageCompound.exit.i:                              ; preds = %if.then
  %20 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i30_crit_edge, !prof !69

PageCompound.exit.i.if.then.i30_crit_edge:        ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i30

if.then.i30:                                      ; preds = %PageCompound.exit.i.if.then.i30_crit_edge, %if.then.if.then.i30_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.29) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #8, !srcloc !97
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %23 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.not.i = icmp eq i32 %24, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %SetPageChecked.exit, !prof !71

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #8, !srcloc !98
  unreachable

SetPageChecked.exit:                              ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 10, ptr noundef %page) #8
  br label %if.end

if.end:                                           ; preds = %SetPageChecked.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_subpage_clear_checked(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %checked_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %checked_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %checked_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  tail call void @__bitmap_clear(ptr noundef %bitmaps, i32 noundef %add, i32 noundef %shr9) #8
  %11 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %page, align 4
  %13 = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %entry.if.then.i21_crit_edge

entry.if.then.i21_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i21

PageCompound.exit.i:                              ; preds = %entry
  %14 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i21_crit_edge, !prof !69

PageCompound.exit.i.if.then.i21_crit_edge:        ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i21

if.then.i21:                                      ; preds = %PageCompound.exit.i.if.then.i21_crit_edge, %entry.if.then.i21_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.29) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #8, !srcloc !99
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %17 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i.not.i = icmp eq i32 %18, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %ClearPageChecked.exit, !prof !71

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #8, !srcloc !100
  unreachable

ClearPageChecked.exit:                            ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %page) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_subpage_test_uptodate(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %uptodate_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %uptodate_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uptodate_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  %add.i = add i32 %shr9, %add
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps, i32 noundef %add.i, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add.i)
  %cmp.i = icmp eq i32 %call.i, %add.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_subpage_test_error(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %error_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %error_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  %add.i = add i32 %shr9, %add
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps, i32 noundef %add.i, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add.i)
  %cmp.i = icmp eq i32 %call.i, %add.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_subpage_test_dirty(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %dirty_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %dirty_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dirty_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  %add.i = add i32 %shr9, %add
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps, i32 noundef %add.i, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add.i)
  %cmp.i = icmp eq i32 %call.i, %add.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_subpage_test_writeback(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %writeback_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %writeback_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writeback_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  %add.i = add i32 %shr9, %add
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps, i32 noundef %add.i, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add.i)
  %cmp.i = icmp eq i32 %call.i, %add.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_subpage_test_ordered(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %ordered_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %ordered_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ordered_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  %add.i = add i32 %shr9, %add
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps, i32 noundef %add.i, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add.i)
  %cmp.i = icmp eq i32 %call.i, %add.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_subpage_test_checked(ptr nocapture noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  %conv = trunc i64 %start to i32
  %and = and i32 %conv, 4095
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %3 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %and, %4
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %5 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpage_info, align 8
  %checked_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %checked_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %checked_offset, align 4
  %add = add i32 %8, %shr
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits, align 8
  %shr9 = lshr i32 %len, %10
  %add.i = add i32 %shr9, %add
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps, i32 noundef %add.i, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add.i)
  %cmp.i = icmp eq i32 %call.i, %add.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call5) #8
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_set_uptodate(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !69

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @btrfs_subpage_set_uptodate(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  br label %return

return:                                           ; preds = %if.end, %SetPageUptodate.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clear_uptodate(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !69

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.28) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #8, !srcloc !88
  unreachable

do.body7.i:                                       ; preds = %if.then
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %2, align 4
  %and.i31.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %2, align 4
  %and.i32.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !71

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !69

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %12, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %13, %if.end.i36.i ]
  %14 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #8, !srcloc !89
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !69

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %12, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %page to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %15, %if.end.i43.i ]
  %16 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %16) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @btrfs_subpage_clear_uptodate(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  br label %return

return:                                           ; preds = %if.end, %ClearPageUptodate.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_page_test_uptodate(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !69

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.PageUptodate.exit_crit_edge, label %do.end.i.i

folio_flags.exit.i.i.PageUptodate.exit_crit_edge: ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PageUptodate.exit

do.end.i.i:                                       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !101
  br label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %do.end.i.i, %folio_flags.exit.i.i.PageUptodate.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4 = icmp ne i32 %12, 0
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %private.i, align 4
  %15 = inttoptr i32 %14 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) #8
  %conv.i = trunc i64 %start to i32
  %and.i = and i32 %conv.i, 4095
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %16 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = lshr i32 %and.i, %17
  %subpage_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %18 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %subpage_info.i, align 8
  %uptodate_offset.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %uptodate_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uptodate_offset.i, align 4
  %add.i = add i32 %21, %shr.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #8
  %bitmaps.i = getelementptr inbounds %struct.btrfs_subpage, ptr %15, i32 0, i32 3
  %22 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sectorsize_bits.i, align 8
  %shr9.i = lshr i32 %len, %23
  %add.i.i = add i32 %shr9.i, %add.i
  %call.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps.i, i32 noundef %add.i.i, i32 noundef %add.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, %add.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %call5.i) #8
  br label %return

return:                                           ; preds = %if.end, %PageUptodate.exit
  %retval.0 = phi i1 [ %tobool4, %PageUptodate.exit ], [ %cmp.i.i, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clamp_set_uptodate(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !69

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %6 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %7 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %8 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %8, %7
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  tail call void @btrfs_subpage_set_uptodate(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %7, i32 noundef %storemerge.i)
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %SetPageUptodate.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clamp_clear_uptodate(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !69

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.28) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #8, !srcloc !88
  unreachable

do.body7.i:                                       ; preds = %if.then
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %2, align 4
  %and.i31.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %2, align 4
  %and.i32.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !71

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !69

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %12, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %13, %if.end.i36.i ]
  %14 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #8, !srcloc !89
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !69

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %12, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %page to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %15, %if.end.i43.i ]
  %16 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %16) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %18 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %19 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %20 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %20, %19
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  tail call void @btrfs_subpage_clear_uptodate(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %19, i32 noundef %storemerge.i)
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %ClearPageUptodate.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_page_clamp_test_uptodate(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !69

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.PageUptodate.exit_crit_edge, label %do.end.i.i

folio_flags.exit.i.i.PageUptodate.exit_crit_edge: ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PageUptodate.exit

do.end.i.i:                                       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !101
  br label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %do.end.i.i, %folio_flags.exit.i.i.PageUptodate.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4 = icmp ne i32 %12, 0
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %14 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %15 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %16 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %16, %15
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %private.i, align 4
  %19 = inttoptr i32 %18 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %15, i32 noundef %storemerge.i) #8
  %conv.i10 = trunc i64 %15 to i32
  %and.i = and i32 %conv.i10, 4095
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %20 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = lshr i32 %and.i, %21
  %subpage_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %22 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %subpage_info.i, align 8
  %uptodate_offset.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %uptodate_offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %uptodate_offset.i, align 4
  %add.i11 = add i32 %25, %shr.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #8
  %bitmaps.i = getelementptr inbounds %struct.btrfs_subpage, ptr %19, i32 0, i32 3
  %26 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sectorsize_bits.i, align 8
  %shr9.i = lshr i32 %storemerge.i, %27
  %add.i.i = add i32 %shr9.i, %add.i11
  %call.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps.i, i32 noundef %add.i.i, i32 noundef %add.i11) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, %add.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %call5.i) #8
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %PageUptodate.exit
  %retval.0 = phi i1 [ %tobool4, %PageUptodate.exit ], [ %cmp.i.i, %btrfs_subpage_clamp_range.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_set_error(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !69

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.28) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !90
  unreachable

do.body7.i:                                       ; preds = %if.then
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %2, align 4
  %and.i31.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %2, align 4
  %and.i32.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !71

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !69

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %12, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %13, %if.end.i36.i ]
  %14 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !91
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !69

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %12, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %15, %if.end.i43.i ]
  %16 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %16) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @btrfs_subpage_set_error(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  br label %return

return:                                           ; preds = %if.end, %SetPageError.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clear_error(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !69

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.28) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !92
  unreachable

do.body7.i:                                       ; preds = %if.then
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %2, align 4
  %and.i31.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %2, align 4
  %and.i32.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !71

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !69

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %12, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %13, %if.end.i36.i ]
  %14 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !93
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !69

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %12, -1
  br label %ClearPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %page to i32
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %15, %if.end.i43.i ]
  %16 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %16) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @btrfs_subpage_clear_error(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  br label %return

return:                                           ; preds = %if.end, %ClearPageError.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_page_test_error(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, -1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %2, align 4
  %and.i16.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !71

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !69

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %10, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %11, %if.end.i20.i ]
  %12 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !102
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !69

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %10, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %page to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %13, %if.end.i27.i ]
  %14 = inttoptr i32 %retval.0.i28.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4 = icmp ne i32 %17, 0
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %private.i, align 4
  %20 = inttoptr i32 %19 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) #8
  %conv.i = trunc i64 %start to i32
  %and.i = and i32 %conv.i, 4095
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %21 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = lshr i32 %and.i, %22
  %subpage_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %23 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %subpage_info.i, align 8
  %error_offset.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %error_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %error_offset.i, align 4
  %add.i = add i32 %26, %shr.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #8
  %bitmaps.i = getelementptr inbounds %struct.btrfs_subpage, ptr %20, i32 0, i32 3
  %27 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sectorsize_bits.i, align 8
  %shr9.i = lshr i32 %len, %28
  %add.i.i = add i32 %shr9.i, %add.i
  %call.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps.i, i32 noundef %add.i.i, i32 noundef %add.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, %add.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %call5.i) #8
  br label %return

return:                                           ; preds = %if.end, %PageError.exit
  %retval.0 = phi i1 [ %tobool4, %PageError.exit ], [ %cmp.i.i, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clamp_set_error(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !69

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.28) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !90
  unreachable

do.body7.i:                                       ; preds = %if.then
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %2, align 4
  %and.i31.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %2, align 4
  %and.i32.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !71

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !69

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %12, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %13, %if.end.i36.i ]
  %14 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !91
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !69

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %12, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %15, %if.end.i43.i ]
  %16 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %16) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %18 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %19 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %20 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %20, %19
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  tail call void @btrfs_subpage_set_error(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %19, i32 noundef %storemerge.i)
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %SetPageError.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clamp_clear_error(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !69

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.28) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !92
  unreachable

do.body7.i:                                       ; preds = %if.then
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %2, align 4
  %and.i31.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %2, align 4
  %and.i32.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !71

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !69

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %12, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %13, %if.end.i36.i ]
  %14 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !93
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !69

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %12, -1
  br label %ClearPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %page to i32
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %15, %if.end.i43.i ]
  %16 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %16) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %18 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %19 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %20 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %20, %19
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  tail call void @btrfs_subpage_clear_error(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %19, i32 noundef %storemerge.i)
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %ClearPageError.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_page_clamp_test_error(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, -1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %2, align 4
  %and.i16.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !71

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !69

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %10, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %11, %if.end.i20.i ]
  %12 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !102
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !69

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %10, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %page to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %13, %if.end.i27.i ]
  %14 = inttoptr i32 %retval.0.i28.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4 = icmp ne i32 %17, 0
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %19 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %20 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %21 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %21, %20
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %private.i, align 4
  %24 = inttoptr i32 %23 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %20, i32 noundef %storemerge.i) #8
  %conv.i10 = trunc i64 %20 to i32
  %and.i = and i32 %conv.i10, 4095
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %25 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = lshr i32 %and.i, %26
  %subpage_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %27 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %subpage_info.i, align 8
  %error_offset.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %error_offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %error_offset.i, align 4
  %add.i11 = add i32 %30, %shr.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #8
  %bitmaps.i = getelementptr inbounds %struct.btrfs_subpage, ptr %24, i32 0, i32 3
  %31 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sectorsize_bits.i, align 8
  %shr9.i = lshr i32 %storemerge.i, %32
  %add.i.i = add i32 %shr9.i, %add.i11
  %call.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps.i, i32 noundef %add.i.i, i32 noundef %add.i11) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, %add.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %call5.i) #8
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %PageError.exit
  %retval.0 = phi i1 [ %tobool4, %PageError.exit ], [ %cmp.i.i, %btrfs_subpage_clamp_range.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_set_dirty(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false, !prof !71

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private.i, align 4
  %4 = inttoptr i32 %3 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) #8
  %conv.i = trunc i64 %start to i32
  %and.i = and i32 %conv.i, 4095
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %5 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = lshr i32 %and.i, %6
  %subpage_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %7 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subpage_info.i, align 8
  %dirty_offset.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %dirty_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dirty_offset.i, align 4
  %add.i = add i32 %10, %shr.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %bitmaps.i = getelementptr inbounds %struct.btrfs_subpage, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sectorsize_bits.i, align 8
  %shr9.i = lshr i32 %len, %12
  tail call void @__bitmap_set(ptr noundef %bitmaps.i, i32 noundef %add.i, i32 noundef %shr9.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %call5.i) #8
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %call11.i = tail call zeroext i1 @set_page_dirty(ptr noundef %page) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clear_dirty(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef %page) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @btrfs_subpage_clear_dirty(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_page_test_dirty(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, -1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %2, align 4
  %and.i13.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !71

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !69

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i15.i = add i32 %10, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %11, %if.end.i17.i ]
  %12 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #8, !srcloc !103
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !69

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i22.i = add i32 %10, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %page to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %13, %if.end.i24.i ]
  %14 = inttoptr i32 %retval.0.i25.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4 = icmp ne i32 %17, 0
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %private.i, align 4
  %20 = inttoptr i32 %19 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) #8
  %conv.i = trunc i64 %start to i32
  %and.i = and i32 %conv.i, 4095
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %21 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = lshr i32 %and.i, %22
  %subpage_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %23 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %subpage_info.i, align 8
  %dirty_offset.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %dirty_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dirty_offset.i, align 4
  %add.i = add i32 %26, %shr.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #8
  %bitmaps.i = getelementptr inbounds %struct.btrfs_subpage, ptr %20, i32 0, i32 3
  %27 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sectorsize_bits.i, align 8
  %shr9.i = lshr i32 %len, %28
  %add.i.i = add i32 %shr9.i, %add.i
  %call.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps.i, i32 noundef %add.i.i, i32 noundef %add.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, %add.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %call5.i) #8
  br label %return

return:                                           ; preds = %if.end, %PageDirty.exit
  %retval.0 = phi i1 [ %tobool4, %PageDirty.exit ], [ %cmp.i.i, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clamp_set_dirty(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false, !prof !71

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %3 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %4 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %5 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %5, %4
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private.i, align 4
  %8 = inttoptr i32 %7 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %4, i32 noundef %storemerge.i) #8
  %conv.i8 = trunc i64 %4 to i32
  %and.i = and i32 %conv.i8, 4095
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %9 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = lshr i32 %and.i, %10
  %subpage_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %11 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subpage_info.i, align 8
  %dirty_offset.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %dirty_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dirty_offset.i, align 4
  %add.i9 = add i32 %14, %shr.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #8
  %bitmaps.i = getelementptr inbounds %struct.btrfs_subpage, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sectorsize_bits.i, align 8
  %shr9.i = lshr i32 %storemerge.i, %16
  tail call void @__bitmap_set(ptr noundef %bitmaps.i, i32 noundef %add.i9, i32 noundef %shr9.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %call5.i) #8
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %call11.i = tail call zeroext i1 @set_page_dirty(ptr noundef %page) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clamp_clear_dirty(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef %page) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %3 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %4 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %5 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %5, %4
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  tail call void @btrfs_subpage_clear_dirty(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %4, i32 noundef %storemerge.i)
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_page_clamp_test_dirty(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, -1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %2, align 4
  %and.i13.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !71

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !69

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i15.i = add i32 %10, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %11, %if.end.i17.i ]
  %12 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #8, !srcloc !103
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !69

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i22.i = add i32 %10, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %page to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %13, %if.end.i24.i ]
  %14 = inttoptr i32 %retval.0.i25.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4 = icmp ne i32 %17, 0
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %19 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %20 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %21 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %21, %20
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %private.i, align 4
  %24 = inttoptr i32 %23 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %20, i32 noundef %storemerge.i) #8
  %conv.i10 = trunc i64 %20 to i32
  %and.i = and i32 %conv.i10, 4095
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %25 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = lshr i32 %and.i, %26
  %subpage_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %27 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %subpage_info.i, align 8
  %dirty_offset.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %dirty_offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dirty_offset.i, align 4
  %add.i11 = add i32 %30, %shr.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #8
  %bitmaps.i = getelementptr inbounds %struct.btrfs_subpage, ptr %24, i32 0, i32 3
  %31 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sectorsize_bits.i, align 8
  %shr9.i = lshr i32 %storemerge.i, %32
  %add.i.i = add i32 %shr9.i, %add.i11
  %call.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps.i, i32 noundef %add.i.i, i32 noundef %add.i11) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, %add.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %call5.i) #8
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %PageDirty.exit
  %retval.0 = phi i1 [ %tobool4, %PageDirty.exit ], [ %cmp.i.i, %btrfs_subpage_clamp_range.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_set_writeback(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call zeroext i1 @set_page_writeback(ptr noundef %page) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private.i, align 4
  %4 = inttoptr i32 %3 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) #8
  %conv.i = trunc i64 %start to i32
  %and.i = and i32 %conv.i, 4095
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %5 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = lshr i32 %and.i, %6
  %subpage_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %7 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subpage_info.i, align 8
  %writeback_offset.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %writeback_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %writeback_offset.i, align 4
  %add.i = add i32 %10, %shr.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %bitmaps.i = getelementptr inbounds %struct.btrfs_subpage, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sectorsize_bits.i, align 8
  %shr9.i = lshr i32 %len, %12
  tail call void @__bitmap_set(ptr noundef %bitmaps.i, i32 noundef %add.i, i32 noundef %shr9.i) #8
  %call10.i = tail call zeroext i1 @set_page_writeback(ptr noundef %page) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %call5.i) #8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clear_writeback(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @end_page_writeback(ptr noundef %page) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @btrfs_subpage_clear_writeback(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_page_test_writeback(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, -1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %2, align 4
  %and.i16.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !71

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !69

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %10, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %11, %if.end.i20.i ]
  %12 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !94
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !69

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %10, -1
  br label %PageWriteback.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %13, %if.end.i27.i ]
  %14 = inttoptr i32 %retval.0.i28.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4 = icmp ne i32 %17, 0
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %private.i, align 4
  %20 = inttoptr i32 %19 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) #8
  %conv.i = trunc i64 %start to i32
  %and.i = and i32 %conv.i, 4095
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %21 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = lshr i32 %and.i, %22
  %subpage_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %23 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %subpage_info.i, align 8
  %writeback_offset.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %writeback_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %writeback_offset.i, align 4
  %add.i = add i32 %26, %shr.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #8
  %bitmaps.i = getelementptr inbounds %struct.btrfs_subpage, ptr %20, i32 0, i32 3
  %27 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sectorsize_bits.i, align 8
  %shr9.i = lshr i32 %len, %28
  %add.i.i = add i32 %shr9.i, %add.i
  %call.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps.i, i32 noundef %add.i.i, i32 noundef %add.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, %add.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %call5.i) #8
  br label %return

return:                                           ; preds = %if.end, %PageWriteback.exit
  %retval.0 = phi i1 [ %tobool4, %PageWriteback.exit ], [ %cmp.i.i, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clamp_set_writeback(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call zeroext i1 @set_page_writeback(ptr noundef %page) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %3 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %4 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %5 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %5, %4
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private.i, align 4
  %8 = inttoptr i32 %7 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %4, i32 noundef %storemerge.i) #8
  %conv.i8 = trunc i64 %4 to i32
  %and.i = and i32 %conv.i8, 4095
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %9 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = lshr i32 %and.i, %10
  %subpage_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %11 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subpage_info.i, align 8
  %writeback_offset.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %writeback_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %writeback_offset.i, align 4
  %add.i9 = add i32 %14, %shr.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #8
  %bitmaps.i = getelementptr inbounds %struct.btrfs_subpage, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sectorsize_bits.i, align 8
  %shr9.i = lshr i32 %storemerge.i, %16
  tail call void @__bitmap_set(ptr noundef %bitmaps.i, i32 noundef %add.i9, i32 noundef %shr9.i) #8
  %call10.i = tail call zeroext i1 @set_page_writeback(ptr noundef %page) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %call5.i) #8
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clamp_clear_writeback(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @end_page_writeback(ptr noundef %page) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %3 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %4 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %5 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %5, %4
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  tail call void @btrfs_subpage_clear_writeback(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %4, i32 noundef %storemerge.i)
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_page_clamp_test_writeback(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, -1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %2, align 4
  %and.i16.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !71

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !69

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %10, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %11, %if.end.i20.i ]
  %12 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !94
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !69

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %10, -1
  br label %PageWriteback.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %13, %if.end.i27.i ]
  %14 = inttoptr i32 %retval.0.i28.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4 = icmp ne i32 %17, 0
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %19 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %20 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %21 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %21, %20
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %private.i, align 4
  %24 = inttoptr i32 %23 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %20, i32 noundef %storemerge.i) #8
  %conv.i10 = trunc i64 %20 to i32
  %and.i = and i32 %conv.i10, 4095
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %25 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = lshr i32 %and.i, %26
  %subpage_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %27 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %subpage_info.i, align 8
  %writeback_offset.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %writeback_offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %writeback_offset.i, align 4
  %add.i11 = add i32 %30, %shr.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #8
  %bitmaps.i = getelementptr inbounds %struct.btrfs_subpage, ptr %24, i32 0, i32 3
  %31 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sectorsize_bits.i, align 8
  %shr9.i = lshr i32 %storemerge.i, %32
  %add.i.i = add i32 %shr9.i, %add.i11
  %call.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps.i, i32 noundef %add.i.i, i32 noundef %add.i11) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, %add.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %call5.i) #8
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %PageWriteback.exit
  %retval.0 = phi i1 [ %tobool4, %PageWriteback.exit ], [ %cmp.i.i, %btrfs_subpage_clamp_range.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_set_ordered(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %SetPagePrivate2.exit, !prof !71

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 453, 0\0A.popsection", ""() #8, !srcloc !95
  unreachable

SetPagePrivate2.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 14, ptr noundef %page) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @btrfs_subpage_set_ordered(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  br label %return

return:                                           ; preds = %if.end, %SetPagePrivate2.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clear_ordered(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %ClearPagePrivate2.exit, !prof !71

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 453, 0\0A.popsection", ""() #8, !srcloc !96
  unreachable

ClearPagePrivate2.exit:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %page) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @btrfs_subpage_clear_ordered(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  br label %return

return:                                           ; preds = %if.end, %ClearPagePrivate2.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_page_test_ordered(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate2.exit, !prof !71

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 453, 0\0A.popsection", ""() #8, !srcloc !104
  unreachable

PagePrivate2.exit:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %page, align 4
  %6 = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4 = icmp ne i32 %6, 0
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %private.i, align 4
  %9 = inttoptr i32 %8 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) #8
  %conv.i = trunc i64 %start to i32
  %and.i = and i32 %conv.i, 4095
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %10 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = lshr i32 %and.i, %11
  %subpage_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %12 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %subpage_info.i, align 8
  %ordered_offset.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %ordered_offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ordered_offset.i, align 4
  %add.i = add i32 %15, %shr.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #8
  %bitmaps.i = getelementptr inbounds %struct.btrfs_subpage, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sectorsize_bits.i, align 8
  %shr9.i = lshr i32 %len, %17
  %add.i.i = add i32 %shr9.i, %add.i
  %call.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps.i, i32 noundef %add.i.i, i32 noundef %add.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, %add.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call5.i) #8
  br label %return

return:                                           ; preds = %if.end, %PagePrivate2.exit
  %retval.0 = phi i1 [ %tobool4, %PagePrivate2.exit ], [ %cmp.i.i, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clamp_set_ordered(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %SetPagePrivate2.exit, !prof !71

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 453, 0\0A.popsection", ""() #8, !srcloc !95
  unreachable

SetPagePrivate2.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 14, ptr noundef %page) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %5 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %6 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %7 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %7, %6
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  tail call void @btrfs_subpage_set_ordered(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %6, i32 noundef %storemerge.i)
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %SetPagePrivate2.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clamp_clear_ordered(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %ClearPagePrivate2.exit, !prof !71

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 453, 0\0A.popsection", ""() #8, !srcloc !96
  unreachable

ClearPagePrivate2.exit:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %page) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %5 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %6 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %7 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %7, %6
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  tail call void @btrfs_subpage_clear_ordered(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %6, i32 noundef %storemerge.i)
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %ClearPagePrivate2.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_page_clamp_test_ordered(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate2.exit, !prof !71

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 453, 0\0A.popsection", ""() #8, !srcloc !104
  unreachable

PagePrivate2.exit:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %page, align 4
  %6 = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4 = icmp ne i32 %6, 0
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %8 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %9 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %10 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %10, %9
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %private.i, align 4
  %13 = inttoptr i32 %12 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %9, i32 noundef %storemerge.i) #8
  %conv.i10 = trunc i64 %9 to i32
  %and.i = and i32 %conv.i10, 4095
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %14 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = lshr i32 %and.i, %15
  %subpage_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %16 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %subpage_info.i, align 8
  %ordered_offset.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %ordered_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ordered_offset.i, align 4
  %add.i11 = add i32 %19, %shr.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #8
  %bitmaps.i = getelementptr inbounds %struct.btrfs_subpage, ptr %13, i32 0, i32 3
  %20 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sectorsize_bits.i, align 8
  %shr9.i = lshr i32 %storemerge.i, %21
  %add.i.i = add i32 %shr9.i, %add.i11
  %call.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps.i, i32 noundef %add.i.i, i32 noundef %add.i11) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, %add.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %call5.i) #8
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %PagePrivate2.exit
  %retval.0 = phi i1 [ %tobool4, %PagePrivate2.exit ], [ %cmp.i.i, %btrfs_subpage_clamp_range.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_set_checked(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %if.then.if.then.i_crit_edge

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %if.then
  %5 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !69

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.29) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #8, !srcloc !97
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %SetPageChecked.exit, !prof !71

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #8, !srcloc !98
  unreachable

SetPageChecked.exit:                              ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 10, ptr noundef %page) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @btrfs_subpage_set_checked(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  br label %return

return:                                           ; preds = %if.end, %SetPageChecked.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clear_checked(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %if.then.if.then.i_crit_edge

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %if.then
  %5 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !69

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.29) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #8, !srcloc !99
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %ClearPageChecked.exit, !prof !71

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #8, !srcloc !100
  unreachable

ClearPageChecked.exit:                            ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %page) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @btrfs_subpage_clear_checked(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len)
  br label %return

return:                                           ; preds = %if.end, %ClearPageChecked.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_page_test_checked(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageChecked.exit, !prof !71

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #8, !srcloc !105
  unreachable

PageChecked.exit:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %page, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4 = icmp ne i32 %6, 0
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %private.i, align 4
  %9 = inttoptr i32 %8 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) #8
  %conv.i = trunc i64 %start to i32
  %and.i = and i32 %conv.i, 4095
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %10 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = lshr i32 %and.i, %11
  %subpage_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %12 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %subpage_info.i, align 8
  %checked_offset.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %checked_offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %checked_offset.i, align 4
  %add.i = add i32 %15, %shr.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #8
  %bitmaps.i = getelementptr inbounds %struct.btrfs_subpage, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sectorsize_bits.i, align 8
  %shr9.i = lshr i32 %len, %17
  %add.i.i = add i32 %shr9.i, %add.i
  %call.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps.i, i32 noundef %add.i.i, i32 noundef %add.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, %add.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call5.i) #8
  br label %return

return:                                           ; preds = %if.end, %PageChecked.exit
  %retval.0 = phi i1 [ %tobool4, %PageChecked.exit ], [ %cmp.i.i, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clamp_set_checked(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %if.then.if.then.i_crit_edge

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %if.then
  %5 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !69

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.29) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #8, !srcloc !97
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %SetPageChecked.exit, !prof !71

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #8, !srcloc !98
  unreachable

SetPageChecked.exit:                              ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 10, ptr noundef %page) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %11 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %12 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %13 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %13, %12
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  tail call void @btrfs_subpage_set_checked(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %12, i32 noundef %storemerge.i)
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %SetPageChecked.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_clamp_clear_checked(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %if.then.if.then.i_crit_edge

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %if.then
  %5 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !69

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.29) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #8, !srcloc !99
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %ClearPageChecked.exit, !prof !71

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #8, !srcloc !100
  unreachable

ClearPageChecked.exit:                            ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %page) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %11 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %12 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %13 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %13, %12
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  tail call void @btrfs_subpage_clear_checked(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %12, i32 noundef %storemerge.i)
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %ClearPageChecked.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_page_clamp_test_checked(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !71

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp eq i32 %1, 4096
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageChecked.exit, !prof !71

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #8, !srcloc !105
  unreachable

PageChecked.exit:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %page, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4 = icmp ne i32 %6, 0
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %8 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %9 = tail call i64 @llvm.umax.i64(i64 %shl.i.i, i64 %start) #8
  %conv.i = zext i32 %len to i64
  %add.i = add i64 %conv.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i)
  %cmp2.not.i = icmp ult i64 %shl.i.i, %add.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.end.btrfs_subpage_clamp_range.exit_crit_edge

if.end.btrfs_subpage_clamp_range.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i = add nuw nsw i64 %shl.i.i, 4096
  %10 = tail call i64 @llvm.umin.i64(i64 %add5.i, i64 %add.i) #8
  %sub.i = sub i64 %10, %9
  %conv15.i = trunc i64 %sub.i to i32
  br label %btrfs_subpage_clamp_range.exit

btrfs_subpage_clamp_range.exit:                   ; preds = %if.else.i, %if.end.btrfs_subpage_clamp_range.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ 0, %if.end.btrfs_subpage_clamp_range.exit_crit_edge ]
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %private.i, align 4
  %13 = inttoptr i32 %12 to ptr
  tail call fastcc void @btrfs_subpage_assert(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %9, i32 noundef %storemerge.i) #8
  %conv.i10 = trunc i64 %9 to i32
  %and.i = and i32 %conv.i10, 4095
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %14 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = lshr i32 %and.i, %15
  %subpage_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %16 = ptrtoint ptr %subpage_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %subpage_info.i, align 8
  %checked_offset.i = getelementptr inbounds %struct.btrfs_subpage_info, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %checked_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %checked_offset.i, align 4
  %add.i11 = add i32 %19, %shr.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #8
  %bitmaps.i = getelementptr inbounds %struct.btrfs_subpage, ptr %13, i32 0, i32 3
  %20 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sectorsize_bits.i, align 8
  %shr9.i = lshr i32 %storemerge.i, %21
  %add.i.i = add i32 %shr9.i, %add.i11
  %call.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmaps.i, i32 noundef %add.i.i, i32 noundef %add.i11) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, %add.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %call5.i) #8
  br label %return

return:                                           ; preds = %btrfs_subpage_clamp_range.exit, %PageChecked.exit
  %retval.0 = phi i1 [ %tobool4, %PageChecked.exit ], [ %cmp.i.i, %btrfs_subpage_clamp_range.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_assert_not_dirty(ptr nocapture noundef readonly %fs_info, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %5, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %6, %if.end.i.i ]
  %7 = inttoptr i32 %retval.0.i.i to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i = icmp eq i32 %9, -1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %3, align 4
  %and.i13.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !71

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !69

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i15.i = add i32 %11, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %12, %if.end.i17.i ]
  %13 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %13, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #8, !srcloc !103
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !69

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i22.i = add i32 %11, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %page to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %14, %if.end.i24.i ]
  %15 = inttoptr i32 %retval.0.i25.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %cond.end, label %cond.false, !prof !69

cond.false:                                       ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.13, i32 noundef 696) #11
  unreachable

cond.end:                                         ; preds = %PageDirty.exit
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %19 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %20)
  %cmp = icmp eq i32 %20, 4096
  br i1 %cmp, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %21 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i.not.i33 = icmp eq i32 %22, -1
  br i1 %cmp.i.not.i33, label %if.then.i34, label %PagePrivate.exit, !prof !71

if.then.i34:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !73
  unreachable

PagePrivate.exit:                                 ; preds = %if.end
  %23 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %page, align 4
  %25 = and i32 %24, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool5.not = icmp ne i32 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool7 = icmp ne i32 %1, 0
  %or.cond = select i1 %tobool5.not, i1 %tobool7, i1 false
  br i1 %or.cond, label %cond.end16, label %cond.false15, !prof !106

cond.false15:                                     ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.14, i32 noundef 700) #11
  unreachable

cond.end16:                                       ; preds = %PagePrivate.exit
  %bitmaps = getelementptr inbounds %struct.btrfs_subpage, ptr %2, i32 0, i32 3
  %subpage_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 133
  %26 = ptrtoint ptr %subpage_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %subpage_info, align 8
  %dirty_offset = getelementptr inbounds %struct.btrfs_subpage_info, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %dirty_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dirty_offset, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %27, align 4
  %add.i = add i32 %31, %29
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %bitmaps, i32 noundef %add.i, i32 noundef %29) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add.i)
  %cmp.i = icmp eq i32 %call.i, %add.i
  br i1 %cmp.i, label %cond.end16.cleanup_crit_edge, label %cond.false26, !prof !69

cond.end16.cleanup_crit_edge:                     ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false26:                                     ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.15, i32 noundef 701) #11
  unreachable

cleanup:                                          ; preds = %cond.end16.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_page_unlock_writer(ptr noundef readonly %fs_info, ptr noundef %page, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !71

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !69

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #8, !srcloc !72
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !69

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !71

cond.false:                                       ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 724) #11
  unreachable

cond.end:                                         ; preds = %PageLocked.exit
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %15 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %16)
  %cmp = icmp eq i32 %16, 4096
  br i1 %cmp, label %cond.end.cleanup.sink.split_crit_edge, label %if.end

cond.end.cleanup.sink.split_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %cond.end
  %17 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i.not.i27 = icmp eq i32 %18, -1
  br i1 %cmp.i.not.i27, label %if.then.i28, label %PagePrivate.exit, !prof !71

if.then.i28:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !73
  unreachable

PagePrivate.exit:                                 ; preds = %if.end
  %19 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %page, align 4
  %21 = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not = icmp eq i32 %21, 0
  br i1 %tobool4.not, label %PagePrivate.exit.cond.false13_crit_edge, label %land.rhs, !prof !71

PagePrivate.exit.cond.false13_crit_edge:          ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false13

land.rhs:                                         ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool5.not = icmp eq i32 %23, 0
  br i1 %tobool5.not, label %land.rhs.cond.false13_crit_edge, label %cond.end14, !prof !71

land.rhs.cond.false13_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false13

cond.false13:                                     ; preds = %land.rhs.cond.false13_crit_edge, %PagePrivate.exit.cond.false13_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.14, i32 noundef 729) #11
  unreachable

cond.end14:                                       ; preds = %land.rhs
  %24 = inttoptr i32 %23 to ptr
  %25 = getelementptr inbounds %struct.btrfs_subpage, ptr %24, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %25, i32 noundef 4) #8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp17 = icmp eq i32 %27, 0
  %tobool.not.i = icmp eq ptr %fs_info, null
  %or.cond = or i1 %cmp17, %tobool.not.i
  br i1 %or.cond, label %cond.end14.cleanup.sink.split_crit_edge, label %lor.lhs.false.i, !prof !107

cond.end14.cleanup.sink.split_crit_edge:          ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

lor.lhs.false.i:                                  ; preds = %cond.end14
  %28 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %29)
  %cmp.i = icmp eq i32 %29, 4096
  br i1 %cmp.i, label %lor.lhs.false.i.cleanup.sink.split_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %lor.lhs.false.i
  %index.i.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %30 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index.i.i.i, align 4
  %conv.i.i.i = zext i32 %31 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 12
  %32 = tail call i64 @llvm.umax.i64(i64 %shl.i.i.i, i64 %start) #8
  %conv.i.i = zext i32 %len to i64
  %add.i.i = add i64 %conv.i.i, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i.i, i64 %add.i.i)
  %cmp2.not.i.i = icmp ult i64 %shl.i.i.i, %add.i.i
  br i1 %cmp2.not.i.i, label %if.else.i.i, label %if.end.i.btrfs_subpage_clamp_range.exit.i_crit_edge

if.end.i.btrfs_subpage_clamp_range.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_subpage_clamp_range.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add5.i.i = add nuw nsw i64 %shl.i.i.i, 4096
  %33 = tail call i64 @llvm.umin.i64(i64 %add5.i.i, i64 %add.i.i) #8
  %sub.i.i30 = sub i64 %33, %32
  %conv15.i.i = trunc i64 %sub.i.i30 to i32
  br label %btrfs_subpage_clamp_range.exit.i

btrfs_subpage_clamp_range.exit.i:                 ; preds = %if.else.i.i, %if.end.i.btrfs_subpage_clamp_range.exit.i_crit_edge
  %storemerge.i.i = phi i32 [ %conv15.i.i, %if.else.i.i ], [ 0, %if.end.i.btrfs_subpage_clamp_range.exit.i_crit_edge ]
  %call.i = tail call zeroext i1 @btrfs_subpage_end_and_test_writer(ptr noundef nonnull %fs_info, ptr noundef %page, i64 noundef %32, i32 noundef %storemerge.i.i) #8
  br i1 %call.i, label %btrfs_subpage_clamp_range.exit.i.cleanup.sink.split_crit_edge, label %btrfs_subpage_clamp_range.exit.i.cleanup_crit_edge

btrfs_subpage_clamp_range.exit.i.cleanup_crit_edge: ; preds = %btrfs_subpage_clamp_range.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

btrfs_subpage_clamp_range.exit.i.cleanup.sink.split_crit_edge: ; preds = %btrfs_subpage_clamp_range.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %btrfs_subpage_clamp_range.exit.i.cleanup.sink.split_crit_edge, %lor.lhs.false.i.cleanup.sink.split_crit_edge, %cond.end14.cleanup.sink.split_crit_edge, %cond.end.cleanup.sink.split_crit_edge
  tail call void @unlock_page(ptr noundef %page) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %btrfs_subpage_clamp_range.exit.i.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @folio_detach_private(ptr noundef %folio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %private.i = getelementptr inbounds %struct.anon.82, ptr %folio, i32 0, i32 4
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %2 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private.exit, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

folio_test_private.exit:                          ; preds = %entry
  %5 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %folio, align 4
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %folio_test_private.exit.cleanup_crit_edge, label %if.end

folio_test_private.exit.cleanup_crit_edge:        ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %folio_test_private.exit
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %2, align 4
  %and.i.i.i6 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i6)
  %tobool.not.i.i7 = icmp eq i32 %and.i.i.i6, 0
  br i1 %tobool.not.i.i7, label %folio_clear_private.exit, label %if.then.i.i8, !prof !69

if.then.i.i8:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

folio_clear_private.exit:                         ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %folio) #8
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %private.i, align 4
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  %11 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !71

if.then.i.i.i:                                    ; preds = %folio_clear_private.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.24) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !108
  unreachable

do.end5.i.i.i:                                    ; preds = %folio_clear_private.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !80
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@folio_detach_private, %if.then.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !76

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio, i32 noundef -1, i32 noundef %conv.i.i.i.i) #8
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.cleanup_crit_edge

folio_put_testzero.exit.i.cleanup_crit_edge:      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %folio) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %folio_put_testzero.exit.i.cleanup_crit_edge, %folio_test_private.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %folio_test_private.exit.cleanup_crit_edge ], [ %1, %folio_put_testzero.exit.i.cleanup_crit_edge ], [ %1, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold noreturn }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/subpage.c", i32 71, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/btrfs/subpage.c", i32 107, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/btrfs/subpage.c", i32 131, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/btrfs/subpage.c", i32 141, i32 2}
!9 = !{ptr @btrfs_alloc_subpage.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../fs/btrfs/subpage.c", i32 149, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/subpage.c", i32 181, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/btrfs/subpage.c", i32 200, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/subpage.c", i32 241, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/subpage.c", i32 282, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/btrfs/subpage.c", i32 284, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/btrfs/subpage.c", i32 305, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/btrfs/subpage.c", i32 522, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/btrfs/subpage.c", i32 696, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/btrfs/subpage.c", i32 700, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/btrfs/subpage.c", i32 701, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @assertfail._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @assertfail._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/mm.h", i32 717, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/btrfs/subpage.c", i32 209, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/btrfs/subpage.c", i32 216, i32 3}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/page-flags.h", i32 678, i32 1}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/page-flags.h", i32 430, i32 1}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2158202196, i64 2158202678, i64 2158202233, i64 2158202289, i64 2158202323, i64 2158202347, i64 2158202388, i64 2158202409, i64 2158202437, i64 2158202471}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i64 2150170557, i64 2150171048, i64 2150170594, i64 2150170650, i64 2150170684, i64 2150170708, i64 2150170749, i64 2150170770, i64 2150170798, i64 2150170832}
!73 = !{i64 2150621830, i64 2150622321, i64 2150621867, i64 2150621923, i64 2150621957, i64 2150621981, i64 2150622022, i64 2150622043, i64 2150622071, i64 2150622105}
!74 = !{i64 2153332104, i64 2153332588, i64 2153332141, i64 2153332197, i64 2153332231, i64 2153332255, i64 2153332296, i64 2153332317, i64 2153332345, i64 2153332379}
!75 = !{i64 2148602527, i64 2148602553, i64 2148602582, i64 2148602616, i64 2148602647, i64 2148602670}
!76 = !{i64 2148223253, i64 2148223258, i64 2148223271, i64 2148223315, i64 2148223349, i64 2148223370}
!77 = !{i64 2150159063, i64 2150159554, i64 2150159100, i64 2150159156, i64 2150159190, i64 2150159214, i64 2150159255, i64 2150159276, i64 2150159304, i64 2150159338}
!78 = !{i64 2148604992, i64 2148605018, i64 2148605047, i64 2148605081, i64 2148605112, i64 2148605135}
!79 = !{i64 2148691003}
!80 = !{i64 2148605712, i64 2148605744, i64 2148605773, i64 2148605807, i64 2148605838, i64 2148605861}
!81 = !{i64 2148691232}
!82 = !{i64 2148687962}
!83 = !{i64 2148603247, i64 2148603279, i64 2148603308, i64 2148603342, i64 2148603373, i64 2148603396}
!84 = !{i64 2148688191}
!85 = !{i64 2148611385, i64 2148611417, i64 2148611446, i64 2148611480, i64 2148611511, i64 2148611534}
!86 = !{i64 2148700490}
!87 = !{i64 2150910026}
!88 = !{i64 2150917939, i64 2150918112, i64 2150918127, i64 2150918179, i64 2150918238, i64 2150918262, i64 2150918303, i64 2150918324, i64 2150918352, i64 2150918384}
!89 = !{i64 2150918814, i64 2150918987, i64 2150919002, i64 2150919054, i64 2150919113, i64 2150919137, i64 2150919178, i64 2150919199, i64 2150919227, i64 2150919259}
!90 = !{i64 2150224714, i64 2150224887, i64 2150224902, i64 2150224954, i64 2150225013, i64 2150225037, i64 2150225078, i64 2150225099, i64 2150225127, i64 2150225159}
!91 = !{i64 2150225589, i64 2150225762, i64 2150225777, i64 2150225829, i64 2150225888, i64 2150225912, i64 2150225953, i64 2150225974, i64 2150226002, i64 2150226034}
!92 = !{i64 2150233516, i64 2150233689, i64 2150233704, i64 2150233756, i64 2150233815, i64 2150233839, i64 2150233880, i64 2150233901, i64 2150233929, i64 2150233961}
!93 = !{i64 2150234391, i64 2150234564, i64 2150234579, i64 2150234631, i64 2150234690, i64 2150234714, i64 2150234755, i64 2150234776, i64 2150234804, i64 2150234836}
!94 = !{i64 2150678978, i64 2150679469, i64 2150679015, i64 2150679071, i64 2150679105, i64 2150679129, i64 2150679170, i64 2150679191, i64 2150679219, i64 2150679253}
!95 = !{i64 2150639246, i64 2150639419, i64 2150639434, i64 2150639486, i64 2150639545, i64 2150639569, i64 2150639610, i64 2150639631, i64 2150639659, i64 2150639691}
!96 = !{i64 2150643847, i64 2150644020, i64 2150644035, i64 2150644087, i64 2150644146, i64 2150644170, i64 2150644211, i64 2150644232, i64 2150644260, i64 2150644292}
!97 = !{i64 2150419506, i64 2150419679, i64 2150419694, i64 2150419746, i64 2150419805, i64 2150419829, i64 2150419870, i64 2150419891, i64 2150419919, i64 2150419951}
!98 = !{i64 2150420277, i64 2150420450, i64 2150420465, i64 2150420517, i64 2150420576, i64 2150420600, i64 2150420641, i64 2150420662, i64 2150420690, i64 2150420722}
!99 = !{i64 2150427653, i64 2150427826, i64 2150427841, i64 2150427893, i64 2150427952, i64 2150427976, i64 2150428017, i64 2150428038, i64 2150428066, i64 2150428098}
!100 = !{i64 2150428424, i64 2150428597, i64 2150428612, i64 2150428664, i64 2150428723, i64 2150428747, i64 2150428788, i64 2150428809, i64 2150428837, i64 2150428869}
!101 = !{i64 2150908955}
!102 = !{i64 2150216156, i64 2150216647, i64 2150216193, i64 2150216249, i64 2150216283, i64 2150216307, i64 2150216348, i64 2150216369, i64 2150216397, i64 2150216431}
!103 = !{i64 2150273033, i64 2150273524, i64 2150273070, i64 2150273126, i64 2150273160, i64 2150273184, i64 2150273225, i64 2150273246, i64 2150273274, i64 2150273308}
!104 = !{i64 2150633973, i64 2150634464, i64 2150634010, i64 2150634066, i64 2150634100, i64 2150634124, i64 2150634165, i64 2150634186, i64 2150634214, i64 2150634248}
!105 = !{i64 2150411463, i64 2150411954, i64 2150411500, i64 2150411556, i64 2150411590, i64 2150411614, i64 2150411655, i64 2150411676, i64 2150411704, i64 2150411738}
!106 = !{!"branch_weights", i32 4000000, i32 4001}
!107 = !{!"branch_weights", i32 2002, i32 2000}
!108 = !{i64 2153312192, i64 2153312675, i64 2153312229, i64 2153312285, i64 2153312319, i64 2153312343, i64 2153312384, i64 2153312405, i64 2153312433, i64 2153312467}
