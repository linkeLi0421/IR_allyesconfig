; ModuleID = '/llk/IR_all_yes/fs/btrfs/lzo.c_pt.bc'
source_filename = "../fs/btrfs/lzo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.workspace_manager = type { %struct.list_head, %struct.spinlock, i32, %struct.atomic_t, %struct.wait_queue_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_compress_op = type { ptr, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.workspace = type { ptr, ptr, ptr, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.82, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%union.anon.82 = type { i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.compressed_bio = type { %struct.refcount_struct, i32, ptr, ptr, i64, i32, i32, i8, i8, i32, ptr, [0 x i8] }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max_nr_page > 0\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/btrfs/lzo.c\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"page_in\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"in_len\00", [25 x i8] zeroinitializer }, align 32
@lzo_compress_pages.__UNIQUE_ID_ddebug928 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.1, ptr @.str.6, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lzo_compress_pages\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"BTRFS: lzo in loop returned %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013invalid lzo header, lzo len %u compressed len %u\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"cur_in / sectorsize == (cur_in + LZO_LEN - 1) / sectorsize\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cur_page\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013unexpectedly large lzo segment len %u\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013failed to decompress\00", [41 x i8] zeroinitializer }, align 32
@lzo_decompress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.1, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014BTRFS: decompress failed!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lzo_decompress\00", [17 x i8] zeroinitializer }, align 32
@lzo_decompress._entry_ptr = internal global ptr @lzo_decompress._entry, section ".printk_index", align 4
@wsm = internal global { %struct.workspace_manager, [48 x i8] } zeroinitializer, align 32
@btrfs_lzo_compress = dso_local constant { %struct.btrfs_compress_op, [20 x i8] } { %struct.btrfs_compress_op { ptr @wsm, i32 1, i32 1 }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.18 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"(*cur_out / sectorsize) == (*cur_out + LZO_LEN - 1) / sectorsize\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"copy_len\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 222, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 242, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 247, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 255, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 356, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 374, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 377, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 388, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 401, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 459, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [4 x i8] c"wsm\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 65, i32 33 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"btrfs_lzo_compress\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 491, i32 32 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 3491, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 44, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 144, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 717, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [18 x i8] c"../fs/btrfs/lzo.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 315, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @lzo_decompress._entry, ptr @lzo_decompress._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @wsm, ptr @btrfs_lzo_compress, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lzo_decompress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_lzo_compress to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lzo_free_workspace(ptr noundef %ws) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -12
  %buf = getelementptr i8, ptr %ws, i32 -8
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  tail call void @kvfree(ptr noundef %1) #9
  %cbuf = getelementptr i8, ptr %ws, i32 -4
  %2 = ptrtoint ptr %cbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cbuf, align 4
  tail call void @kvfree(ptr noundef %3) #9
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void @kvfree(ptr noundef %5) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lzo_alloc_workspace(i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef 16384, i32 noundef 3264, i32 noundef -1) #13
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %call7.i.i, align 8
  %call.i26 = tail call noalias ptr @kvmalloc_node(i32 noundef 4421, i32 noundef 3264, i32 noundef -1) #13
  %buf = getelementptr %struct.workspace, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i26, ptr %buf, align 4
  %call.i27 = tail call noalias ptr @kvmalloc_node(i32 noundef 4421, i32 noundef 3264, i32 noundef -1) #13
  %cbuf = getelementptr %struct.workspace, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %cbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i27, ptr %cbuf, align 8
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.fail_crit_edge, label %lor.lhs.false

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

lor.lhs.false:                                    ; preds = %if.end
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  %tobool8.not = icmp eq ptr %5, null
  %tobool11.not = icmp eq ptr %call.i27, null
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %lor.lhs.false.fail_crit_edge, label %if.end13

lor.lhs.false.fail_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %list = getelementptr inbounds %struct.workspace, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.workspace, ptr %call7.i.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i, align 8
  br label %cleanup

fail:                                             ; preds = %lor.lhs.false.fail_crit_edge, %if.end.fail_crit_edge
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  tail call void @kvfree(ptr noundef %9) #9
  %10 = ptrtoint ptr %cbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cbuf, align 8
  tail call void @kvfree(ptr noundef %11) #9
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i.i, align 8
  tail call void @kvfree(ptr noundef %13) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %list, %if.end13 ], [ inttoptr (i32 -12 to ptr), %fail ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lzo_compress_pages(ptr nocapture noundef readonly %ws, ptr noundef %mapping, i64 noundef %start, ptr nocapture noundef %pages, ptr nocapture noundef %out_pages, ptr nocapture noundef writeonly %total_in, ptr nocapture noundef %total_out) local_unnamed_addr #0 align 64 {
entry:
  %out_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -12
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %sectorsize1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 167
  %6 = ptrtoint ptr %sectorsize1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sectorsize1, align 4
  %8 = ptrtoint ptr %out_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %cond.false, label %cond.end, !prof !57

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 222) #14
  unreachable

cond.end:                                         ; preds = %entry
  %10 = ptrtoint ptr %total_out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_out, align 4
  %12 = ptrtoint ptr %out_pages to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %out_pages, align 4
  store i32 0, ptr %total_out, align 4
  %13 = ptrtoint ptr %total_in to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %total_in, align 4
  %conv = zext i32 %11 to i64
  %add3 = add i64 %conv, %start
  %sub = add i32 %7, -1
  %cbuf = getelementptr i8, ptr %ws, i32 -4
  %mul = shl i32 %7, 1
  %conv72 = zext i32 %mul to i64
  br label %while.cond

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %cond.end
  %cur_out.0 = phi i32 [ 4, %cond.end ], [ %cur_out.5, %cleanup.while.cond_crit_edge ]
  %cur_in.0 = phi i64 [ %start, %cond.end ], [ %cur_in.1, %cleanup.while.cond_crit_edge ]
  %page_in.0 = phi ptr [ null, %cond.end ], [ %page_in.3, %cleanup.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add3, i64 %cur_in.0)
  %cmp4 = icmp ugt i64 %add3, %cur_in.0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %sub6 = sub i64 %cur_in.0, %start
  %14 = trunc i64 %sub6 to i32
  %conv8 = and i32 %sub, %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_len) #9
  %15 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %out_len, align 4, !annotation !58
  %tobool9.not = icmp eq ptr %page_in.0, null
  br i1 %tobool9.not, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %while.body
  %shr = lshr i64 %cur_in.0, 12
  %conv10 = trunc i64 %shr to i32
  %call.i = call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %conv10, i32 noundef 0, i32 noundef 0) #9
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %cond.false20, label %if.then.if.end_crit_edge, !prof !57

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.false20:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 242) #14
  unreachable

if.end:                                           ; preds = %if.then.if.end_crit_edge, %while.body.if.end_crit_edge
  %page_in.1 = phi ptr [ %page_in.0, %while.body.if.end_crit_edge ], [ %call.i, %if.then.if.end_crit_edge ]
  %sub24 = sub i64 %add3, %cur_in.0
  %conv25 = trunc i64 %sub24 to i32
  %sub26 = sub i32 %7, %conv8
  %16 = call i32 @llvm.umin.i32(i32 %sub26, i32 %conv25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool33.not = icmp eq i32 %16, 0
  br i1 %tobool33.not, label %cond.false41, label %cond.end42, !prof !57

cond.false41:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 247) #14
  unreachable

cond.end42:                                       ; preds = %if.end
  call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 44) #9
  %17 = ptrtoint ptr %page_in.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %page_in.1, align 4
  %shr.i.i = lshr i32 %18, 30
  %19 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %cond.end42.if.then.i_crit_edge [
    i32 2, label %cond.end42.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

cond.end42.if.else.i_crit_edge:                   ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

cond.end42.if.then.i_crit_edge:                   ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %cond.end42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %20 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp2.i.not.i = icmp eq i32 %20, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %cond.end42.if.then.i_crit_edge
  %call5.i = call ptr @page_address(ptr noundef nonnull %page_in.1) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %cond.end42.if.else.i_crit_edge
  %call6.i = call ptr @kmap_high(ptr noundef nonnull %page_in.1) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %conv44 = trunc i64 %cur_in.0 to i32
  %and45 = and i32 %conv44, 4095
  %add.ptr46 = getelementptr i8, ptr %addr.0.i, i32 %and45
  %21 = ptrtoint ptr %cbuf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cbuf, align 4
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %call47 = call i32 @lzo1x_1_compress(ptr noundef %add.ptr46, i32 noundef %16, ptr noundef %22, ptr noundef nonnull %out_len, ptr noundef %24) #9
  call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 55) #9
  %25 = ptrtoint ptr %page_in.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %page_in.1, align 4
  %shr.i.i157 = lshr i32 %26, 30
  %27 = zext i32 %shr.i.i157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %shr.i.i157, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i159
  ]

kmap.exit.if.end.i_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i159:                         ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %28 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp2.i.not.i158 = icmp eq i32 %28, 2
  br i1 %cmp2.i.not.i158, label %is_highmem_idx.exit.i159.if.end.i_crit_edge, label %is_highmem_idx.exit.i159.kunmap.exit_crit_edge

is_highmem_idx.exit.i159.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i159
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i159.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i159.if.end.i_crit_edge, %kmap.exit.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef nonnull %page_in.1) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i159.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.body, label %if.end62

do.body:                                          ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lzo_compress_pages.__UNIQUE_ID_ddebug928, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lzo_compress_pages, %if.then60)) #9
          to label %cleanup [label %if.then60], !srcloc !59

if.then60:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lzo_compress_pages.__UNIQUE_ID_ddebug928, ptr noundef nonnull @.str.6, i32 noundef %call47) #9
  br label %cleanup.thread

if.end62:                                         ; preds = %kunmap.exit
  %29 = ptrtoint ptr %cbuf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cbuf, align 4
  %31 = ptrtoint ptr %out_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %out_len, align 4
  %div112.i = lshr i32 %cur_out.0, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %div112.i, i32 %9)
  %cmp.not.i = icmp ult i32 %div112.i, %9
  br i1 %cmp.not.i, label %if.end.i160, label %if.end62.cleanup.thread_crit_edge

if.end62.cleanup.thread_crit_edge:                ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end.i160:                                      ; preds = %if.end62
  %div1.i = udiv i32 %cur_out.0, %7
  %sub.i = add i32 %cur_out.0, 3
  %div2.i = udiv i32 %sub.i, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %div2.i)
  %cmp3.i = icmp eq i32 %div1.i, %div2.i
  br i1 %cmp3.i, label %cond.end.i, label %cond.false.i, !prof !60

cond.false.i:                                     ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.18, i32 noundef 144) #15
  unreachable

cond.end.i:                                       ; preds = %if.end.i160
  %arrayidx.i = getelementptr ptr, ptr %pages, i32 %div112.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %tobool6.not.i = icmp eq ptr %34, null
  br i1 %tobool6.not.i, label %if.then7.i, label %cond.end.i.if.end13.i_crit_edge

cond.end.i.if.end13.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then7.i:                                       ; preds = %cond.end.i
  %call38.i.i.i.i = call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %tobool8.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool8.not.i, label %if.then7.i.cleanup.thread_crit_edge, label %if.end10.i

if.then7.i.cleanup.thread_crit_edge:              ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end10.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call38.i.i.i.i, ptr %arrayidx.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end10.i, %cond.end.i.if.end13.i_crit_edge
  %cur_page.0.i = phi ptr [ %34, %cond.end.i.if.end13.i_crit_edge ], [ %call38.i.i.i.i, %if.end10.i ]
  call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 44) #9
  %36 = ptrtoint ptr %cur_page.0.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cur_page.0.i, align 4
  %shr.i.i.i = lshr i32 %37, 30
  %38 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %shr.i.i.i, label %if.end13.i.if.then.i.i_crit_edge [
    i32 2, label %if.end13.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.end13.i.if.else.i.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.end13.i.if.then.i.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.end13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %39 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp2.i.not.i.i = icmp eq i32 %39, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %if.end13.i.if.then.i.i_crit_edge
  %call5.i.i = call ptr @page_address(ptr noundef nonnull %cur_page.0.i) #9
  br label %kmap.exit.i

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.end13.i.if.else.i.i_crit_edge
  %call6.i.i = call ptr @kmap_high(ptr noundef nonnull %cur_page.0.i) #9
  br label %kmap.exit.i

kmap.exit.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %addr.0.i.i = phi ptr [ %call6.i.i, %if.else.i.i ], [ %call5.i.i, %if.then.i.i ]
  %and.i = and i32 %cur_out.0, 4095
  %add.ptr.i = getelementptr i8, ptr %addr.0.i.i, i32 %and.i
  %40 = call i32 @llvm.bswap.i32(i32 %32) #9
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %add.ptr.i, align 1
  %add15.i = add i32 %cur_out.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp17142.not.i = icmp eq i32 %32, 0
  br i1 %cmp17142.not.i, label %kmap.exit.i.while.end.i_crit_edge, label %while.body.lr.ph.i

kmap.exit.i.while.end.i_crit_edge:                ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %kmap.exit.i
  %add19.i = add i32 %32, %add15.i
  %idx.neg.i = sub i32 -4, %cur_out.0
  %add.ptr43.i = getelementptr i8, ptr %30, i32 %idx.neg.i
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %cur_out.1 = phi i32 [ %add15.i, %while.body.lr.ph.i ], [ %add45.i, %cleanup.i.while.body.i_crit_edge ]
  %cur_page.1144.i = phi ptr [ %cur_page.0.i, %while.body.lr.ph.i ], [ %cur_page.2.i, %cleanup.i.while.body.i_crit_edge ]
  %rem.i = urem i32 %cur_out.1, %7
  %sub18.i = sub i32 %7, %rem.i
  %sub20.i = sub i32 %add19.i, %cur_out.1
  %42 = call i32 @llvm.umin.i32(i32 %sub18.i, i32 %sub20.i) #9
  call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 55) #9
  %43 = ptrtoint ptr %cur_page.1144.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cur_page.1144.i, align 4
  %shr.i.i116.i = lshr i32 %44, 30
  %45 = zext i32 %shr.i.i116.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %shr.i.i116.i, label %while.body.i.kunmap.exit.i_crit_edge [
    i32 2, label %while.body.i.if.end.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i118.i
  ]

while.body.i.if.end.i.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

while.body.i.kunmap.exit.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit.i

is_highmem_idx.exit.i118.i:                       ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %46 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp2.i.not.i117.i = icmp eq i32 %46, 2
  br i1 %cmp2.i.not.i117.i, label %is_highmem_idx.exit.i118.i.if.end.i.i_crit_edge, label %is_highmem_idx.exit.i118.i.kunmap.exit.i_crit_edge

is_highmem_idx.exit.i118.i.kunmap.exit.i_crit_edge: ; preds = %is_highmem_idx.exit.i118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit.i

is_highmem_idx.exit.i118.i.if.end.i.i_crit_edge:  ; preds = %is_highmem_idx.exit.i118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %is_highmem_idx.exit.i118.i.if.end.i.i_crit_edge, %while.body.i.if.end.i.i_crit_edge
  call void @kunmap_high(ptr noundef nonnull %cur_page.1144.i) #9
  br label %kunmap.exit.i

kunmap.exit.i:                                    ; preds = %if.end.i.i, %is_highmem_idx.exit.i118.i.kunmap.exit.i_crit_edge, %while.body.i.kunmap.exit.i_crit_edge
  %div25114.i = lshr i32 %cur_out.1, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %div25114.i, i32 %9)
  %cmp26.not.i = icmp ult i32 %div25114.i, %9
  br i1 %cmp26.not.i, label %if.end28.i, label %kunmap.exit.i.cleanup.thread_crit_edge

kunmap.exit.i.cleanup.thread_crit_edge:           ; preds = %kunmap.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end28.i:                                       ; preds = %kunmap.exit.i
  %arrayidx30.i = getelementptr ptr, ptr %pages, i32 %div25114.i
  %47 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx30.i, align 4
  %tobool31.not.i = icmp eq ptr %48, null
  br i1 %tobool31.not.i, label %if.then32.i, label %if.end28.i.if.end39.i_crit_edge

if.end28.i.if.end39.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.then32.i:                                      ; preds = %if.end28.i
  %call38.i.i.i119.i = call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %tobool34.not.i = icmp eq ptr %call38.i.i.i119.i, null
  br i1 %tobool34.not.i, label %if.then32.i.cleanup.thread_crit_edge, label %if.end36.i

if.then32.i.cleanup.thread_crit_edge:             ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end36.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call38.i.i.i119.i, ptr %arrayidx30.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end36.i, %if.end28.i.if.end39.i_crit_edge
  %cur_page.2.i = phi ptr [ %48, %if.end28.i.if.end39.i_crit_edge ], [ %call38.i.i.i119.i, %if.end36.i ]
  call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 44) #9
  %50 = ptrtoint ptr %cur_page.2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cur_page.2.i, align 4
  %shr.i.i120.i = lshr i32 %51, 30
  %52 = zext i32 %shr.i.i120.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %shr.i.i120.i, label %if.end39.i.if.then.i124.i_crit_edge [
    i32 2, label %if.end39.i.if.else.i126.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i122.i
  ]

if.end39.i.if.else.i126.i_crit_edge:              ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i126.i

if.end39.i.if.then.i124.i_crit_edge:              ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i124.i

is_highmem_idx.exit.i122.i:                       ; preds = %if.end39.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %53 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp2.i.not.i121.i = icmp eq i32 %53, 2
  br i1 %cmp2.i.not.i121.i, label %is_highmem_idx.exit.i122.i.if.else.i126.i_crit_edge, label %is_highmem_idx.exit.i122.i.if.then.i124.i_crit_edge

is_highmem_idx.exit.i122.i.if.then.i124.i_crit_edge: ; preds = %is_highmem_idx.exit.i122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i124.i

is_highmem_idx.exit.i122.i.if.else.i126.i_crit_edge: ; preds = %is_highmem_idx.exit.i122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i126.i

if.then.i124.i:                                   ; preds = %is_highmem_idx.exit.i122.i.if.then.i124.i_crit_edge, %if.end39.i.if.then.i124.i_crit_edge
  %call5.i123.i = call ptr @page_address(ptr noundef nonnull %cur_page.2.i) #9
  br label %cleanup.i

if.else.i126.i:                                   ; preds = %is_highmem_idx.exit.i122.i.if.else.i126.i_crit_edge, %if.end39.i.if.else.i126.i_crit_edge
  %call6.i125.i = call ptr @kmap_high(ptr noundef nonnull %cur_page.2.i) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i126.i, %if.then.i124.i
  %addr.0.i127.i = phi ptr [ %call6.i125.i, %if.else.i126.i ], [ %call5.i123.i, %if.then.i124.i ]
  %and41.i = and i32 %cur_out.1, 4095
  %add.ptr42.i = getelementptr i8, ptr %addr.0.i127.i, i32 %and41.i
  %add.ptr44.i = getelementptr i8, ptr %add.ptr43.i, i32 %cur_out.1
  %54 = call ptr @memcpy(ptr %add.ptr42.i, ptr %add.ptr44.i, i32 %42)
  %add45.i = add i32 %42, %cur_out.1
  %sub16.i = sub i32 %add45.i, %add15.i
  %cmp17.i = icmp ult i32 %sub16.i, %32
  br i1 %cmp17.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.while.end.i_crit_edge

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %kmap.exit.i.while.end.i_crit_edge
  %cur_out.2 = phi i32 [ %add15.i, %kmap.exit.i.while.end.i_crit_edge ], [ %add45.i, %cleanup.i.while.end.i_crit_edge ]
  %cur_page.1.lcssa.i = phi ptr [ %cur_page.0.i, %kmap.exit.i.while.end.i_crit_edge ], [ %cur_page.2.i, %cleanup.i.while.end.i_crit_edge ]
  %kaddr.0.lcssa.i = phi ptr [ %addr.0.i.i, %kmap.exit.i.while.end.i_crit_edge ], [ %addr.0.i127.i, %cleanup.i.while.end.i_crit_edge ]
  %sub46.i = add i32 %cur_out.2, -1
  %or.i = or i32 %sub46.i, %sub
  %add48.i = add i32 %or.i, 1
  %sub49.i = sub i32 %add48.i, %cur_out.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub49.i)
  %cmp50.i = icmp ugt i32 %sub49.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add48.i, i32 %cur_out.2)
  %cmp51.i = icmp eq i32 %add48.i, %cur_out.2
  %or.cond.i = or i1 %cmp51.i, %cmp50.i
  br i1 %or.cond.i, label %while.end.i.out.i_crit_edge, label %if.end53.i

while.end.i.out.i_crit_edge:                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end53.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %and54.i = and i32 %cur_out.2, 4095
  %add.ptr55.i = getelementptr i8, ptr %kaddr.0.lcssa.i, i32 %and54.i
  %55 = call ptr @memset(ptr %add.ptr55.i, i32 0, i32 %sub49.i)
  br label %out.i

out.i:                                            ; preds = %if.end53.i, %while.end.i.out.i_crit_edge
  %cur_out.3 = phi i32 [ %cur_out.2, %while.end.i.out.i_crit_edge ], [ %add48.i, %if.end53.i ]
  call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 55) #9
  %56 = ptrtoint ptr %cur_page.1.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cur_page.1.lcssa.i, align 4
  %shr.i.i130.i = lshr i32 %57, 30
  %58 = zext i32 %shr.i.i130.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %shr.i.i130.i, label %out.i.if.end68_crit_edge [
    i32 2, label %out.i.if.end.i133.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i132.i
  ]

out.i.if.end.i133.i_crit_edge:                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i133.i

out.i.if.end68_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

is_highmem_idx.exit.i132.i:                       ; preds = %out.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %59 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp2.i.not.i131.i = icmp eq i32 %59, 2
  br i1 %cmp2.i.not.i131.i, label %is_highmem_idx.exit.i132.i.if.end.i133.i_crit_edge, label %is_highmem_idx.exit.i132.i.if.end68_crit_edge

is_highmem_idx.exit.i132.i.if.end68_crit_edge:    ; preds = %is_highmem_idx.exit.i132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

is_highmem_idx.exit.i132.i.if.end.i133.i_crit_edge: ; preds = %is_highmem_idx.exit.i132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i133.i

if.end.i133.i:                                    ; preds = %is_highmem_idx.exit.i132.i.if.end.i133.i_crit_edge, %out.i.if.end.i133.i_crit_edge
  call void @kunmap_high(ptr noundef nonnull %cur_page.1.lcssa.i) #9
  br label %if.end68

if.end68:                                         ; preds = %if.end.i133.i, %is_highmem_idx.exit.i132.i.if.end68_crit_edge, %out.i.if.end68_crit_edge
  %conv69 = zext i32 %16 to i64
  %add70 = add i64 %cur_in.0, %conv69
  %sub71 = sub i64 %add70, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %sub71, i64 %conv72)
  %cmp73 = icmp ugt i64 %sub71, %conv72
  %conv76 = zext i32 %cur_out.3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub71, i64 %conv76)
  %cmp77 = icmp ult i64 %sub71, %conv76
  %or.cond = select i1 %cmp73, i1 %cmp77, i1 false
  br i1 %or.cond, label %if.end68.cleanup.thread_crit_edge, label %if.end80

if.end68.cleanup.thread_crit_edge:                ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end80:                                         ; preds = %if.end68
  %and81 = and i64 %add70, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and81)
  %cmp82 = icmp eq i64 %and81, 0
  br i1 %cmp82, label %if.then84, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then84:                                        ; preds = %if.end80
  %60 = getelementptr inbounds %struct.page, ptr %page_in.1, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  %and.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i162, label %if.then.i.i161, !prof !60

if.then.i.i161:                                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %62, -1
  br label %_compound_head.exit.i

if.end.i.i162:                                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %page_in.1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i162, %if.then.i.i161
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i161 ], [ %63, %if.end.i.i162 ]
  %64 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %64, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %65 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.i.i.i.i = icmp eq i32 %66, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !57

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %67, ptr noundef nonnull @.str.20) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !61
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !62
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %68 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !63
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %68, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@lzo_compress_pages, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !59

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %64, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %64) #9
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end68.cleanup.thread_crit_edge, %if.then32.i.cleanup.thread_crit_edge, %kunmap.exit.i.cleanup.thread_crit_edge, %if.then7.i.cleanup.thread_crit_edge, %if.end62.cleanup.thread_crit_edge, %if.then60
  %cur_out.5.ph = phi i32 [ %cur_out.0, %if.then60 ], [ %cur_out.1, %if.then32.i.cleanup.thread_crit_edge ], [ %cur_out.1, %kunmap.exit.i.cleanup.thread_crit_edge ], [ %cur_out.0, %if.then7.i.cleanup.thread_crit_edge ], [ %cur_out.0, %if.end62.cleanup.thread_crit_edge ], [ %cur_out.3, %if.end68.cleanup.thread_crit_edge ]
  %ret.0.ph = phi i32 [ -5, %if.then60 ], [ -7, %kunmap.exit.i.cleanup.thread_crit_edge ], [ -12, %if.then32.i.cleanup.thread_crit_edge ], [ -12, %if.then7.i.cleanup.thread_crit_edge ], [ -7, %if.end62.cleanup.thread_crit_edge ], [ -7, %if.end68.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len) #9
  br label %out

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %do.body
  %cur_out.5 = phi i32 [ %cur_out.3, %if.end80.cleanup_crit_edge ], [ %cur_out.0, %do.body ], [ %cur_out.3, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %cur_out.3, %if.then.i4.i ]
  %ret.0 = phi i32 [ 0, %if.end80.cleanup_crit_edge ], [ -5, %do.body ], [ 0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ 0, %if.then.i4.i ]
  %cur_in.1 = phi i64 [ %add70, %if.end80.cleanup_crit_edge ], [ %cur_in.0, %do.body ], [ %add70, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %add70, %if.then.i4.i ]
  %page_in.3 = phi ptr [ %page_in.1, %if.end80.cleanup_crit_edge ], [ %page_in.1, %do.body ], [ null, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ null, %if.then.i4.i ]
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end80.cleanup_crit_edge ], [ 6, %do.body ], [ 0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ 0, %if.then.i4.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len) #9
  %69 = zext i32 %cleanup.dest.slot.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %cleanup.dest.slot.0, label %cleanup.cleanup104_crit_edge [
    i32 0, label %cleanup.while.cond_crit_edge
    i32 6, label %cleanup.out_crit_edge
  ]

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

cleanup.cleanup104_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup104

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pages, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %72 = load i32, ptr @pgprot_kernel, align 4
  %or.i163 = or i32 %72, 512
  %call.i164 = call ptr @__kmap_local_page_prot(ptr noundef %71, i32 noundef %or.i163) #9
  %73 = call i32 @llvm.bswap.i32(i32 %cur_out.0) #9
  %74 = ptrtoint ptr %call.i164 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %73, ptr %call.i164, align 1
  call void @kunmap_local_indexed(ptr noundef %call.i164) #9
  %75 = ptrtoint ptr %total_out to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %cur_out.0, ptr %total_out, align 4
  %sub97 = sub i64 %cur_in.0, %start
  %conv98 = trunc i64 %sub97 to i32
  %76 = ptrtoint ptr %total_in to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv98, ptr %total_in, align 4
  br label %out

out:                                              ; preds = %while.end, %cleanup.out_crit_edge, %cleanup.thread
  %cur_out.6 = phi i32 [ %cur_out.0, %while.end ], [ %cur_out.5.ph, %cleanup.thread ], [ %cur_out.5, %cleanup.out_crit_edge ]
  %ret.1 = phi i32 [ 0, %while.end ], [ %ret.0.ph, %cleanup.thread ], [ %ret.0, %cleanup.out_crit_edge ]
  %page_in.4 = phi ptr [ %page_in.0, %while.end ], [ %page_in.1, %cleanup.thread ], [ %page_in.3, %cleanup.out_crit_edge ]
  %tobool99.not = icmp eq ptr %page_in.4, null
  br i1 %tobool99.not, label %out.if.end101_crit_edge, label %if.then100

out.if.end101_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then100:                                       ; preds = %out
  %77 = getelementptr inbounds %struct.page, ptr %page_in.4, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %77, align 4
  %and.i.i165 = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i165)
  %tobool.not.i.i166 = icmp eq i32 %and.i.i165, 0
  br i1 %tobool.not.i.i166, label %if.end.i.i169, label %if.then.i.i168, !prof !60

if.then.i.i168:                                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i167 = add i32 %79, -1
  br label %_compound_head.exit.i174

if.end.i.i169:                                    ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %page_in.4 to i32
  br label %_compound_head.exit.i174

_compound_head.exit.i174:                         ; preds = %if.end.i.i169, %if.then.i.i168
  %retval.0.i.i170 = phi i32 [ %sub.i.i167, %if.then.i.i168 ], [ %80, %if.end.i.i169 ]
  %81 = inttoptr i32 %retval.0.i.i170 to ptr
  %_refcount.i.i.i.i.i171 = getelementptr inbounds %struct.page, ptr %81, i32 0, i32 3
  %call.i.i.i.i.i.i.i172 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i171, i32 noundef 4) #9
  %82 = ptrtoint ptr %_refcount.i.i.i.i.i171 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %_refcount.i.i.i.i.i171, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i.i.i.i173 = icmp eq i32 %83, 0
  br i1 %cmp.i.i.i.i173, label %if.then.i.i.i.i175, label %do.end5.i.i.i.i179, !prof !57

if.then.i.i.i.i175:                               ; preds = %_compound_head.exit.i174
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %81, ptr noundef nonnull @.str.20) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !61
  unreachable

do.end5.i.i.i.i179:                               ; preds = %_compound_head.exit.i174
  %call.i.i.i10.i.i.i.i176 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i171, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !62
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i171, i32 1, i32 3, i32 1) #9
  %84 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i171, ptr %_refcount.i.i.i.i.i171, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i171) #9, !srcloc !63
  %asmresult.i.i.i.i.i.i.i.i.i.i177 = extractvalue { i32, i32 } %84, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i177)
  %cmp.i.i.i.i.i.i.i178 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i177, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@lzo_compress_pages, %if.then.i.i.i.i.i181)) #9
          to label %folio_put_testzero.exit.i.i182 [label %if.then.i.i.i.i.i181], !srcloc !59

if.then.i.i.i.i.i181:                             ; preds = %do.end5.i.i.i.i179
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i180 = zext i1 %cmp.i.i.i.i.i.i.i178 to i32
  call void @__page_ref_mod_and_test(ptr noundef %81, i32 noundef -1, i32 noundef %conv.i.i.i.i.i180) #9
  br label %folio_put_testzero.exit.i.i182

folio_put_testzero.exit.i.i182:                   ; preds = %if.then.i.i.i.i.i181, %do.end5.i.i.i.i179
  br i1 %cmp.i.i.i.i.i.i.i178, label %if.then.i4.i183, label %folio_put_testzero.exit.i.i182.if.end101_crit_edge

folio_put_testzero.exit.i.i182.if.end101_crit_edge: ; preds = %folio_put_testzero.exit.i.i182
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then.i4.i183:                                  ; preds = %folio_put_testzero.exit.i.i182
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %81) #9
  br label %if.end101

if.end101:                                        ; preds = %if.then.i4.i183, %folio_put_testzero.exit.i.i182.if.end101_crit_edge, %out.if.end101_crit_edge
  %sub103 = add i32 %cur_out.6, 4095
  %div156 = lshr i32 %sub103, 12
  %85 = ptrtoint ptr %out_pages to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %div156, ptr %out_pages, align 4
  br label %cleanup104

cleanup104:                                       ; preds = %if.end101, %cleanup.cleanup104_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end101 ], [ undef, %cleanup.cleanup104_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #3 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %expr, ptr noundef nonnull @.str.1, i32 noundef %line) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #9, !srcloc !65
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzo1x_1_compress(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lzo_decompress_bio(ptr nocapture noundef readonly %ws, ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %out_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %inode = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 3
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %sectorsize1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 167
  %6 = ptrtoint ptr %sectorsize1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sectorsize1, align 4
  %compressed_pages = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 2
  %8 = ptrtoint ptr %compressed_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %compressed_pages, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 44) #9
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %shr.i.i = lshr i32 %13, 30
  %14 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %shr.i.i, label %entry.if.then.i_crit_edge [
    i32 2, label %entry.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %15 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp2.i.not.i = icmp eq i32 %15, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %11) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %11) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %16 = ptrtoint ptr %addr.0.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %dlen.0.copyload.i = load i32, ptr %addr.0.i, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %dlen.0.copyload.i) #9
  %18 = ptrtoint ptr %compressed_pages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %compressed_pages, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 55) #9
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %shr.i.i117 = lshr i32 %23, 30
  %24 = zext i32 %shr.i.i117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %shr.i.i117, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i119
  ]

kmap.exit.if.end.i_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i119:                         ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %25 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp2.i.not.i118 = icmp eq i32 %25, 2
  br i1 %cmp2.i.not.i118, label %is_highmem_idx.exit.i119.if.end.i_crit_edge, label %is_highmem_idx.exit.i119.kunmap.exit_crit_edge

is_highmem_idx.exit.i119.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i119.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i119.if.end.i_crit_edge, %kmap.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %21) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i119.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  %compressed_len = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 6
  %26 = ptrtoint ptr %compressed_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %compressed_len, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 131072)
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %28)
  %cmp7 = icmp ugt i32 %17, %28
  br i1 %cmp7, label %kunmap.exit.if.then_crit_edge, label %lor.lhs.false

kunmap.exit.if.then_crit_edge:                    ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %kunmap.exit
  %sub = add i32 %17, -1
  %sub8 = add i32 %7, -1
  %or = or i32 %sub, %sub8
  %add9 = add i32 %or, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %27)
  %cmp11 = icmp ult i32 %add9, %27
  br i1 %cmp11, label %lor.lhs.false.if.then_crit_edge, label %while.cond.preheader

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

while.cond.preheader:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp13157 = icmp ugt i32 %17, 4
  br i1 %cmp13157, label %while.body.lr.ph, label %while.cond.preheader.cleanup69_crit_edge

while.cond.preheader.cleanup69_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup69

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %div115 = lshr i32 %7, 4
  %add14 = add i32 %7, 69
  %add17 = add i32 %add14, %div115
  %cbuf = getelementptr i8, ptr %ws, i32 -4
  %buf = getelementptr i8, ptr %ws, i32 -8
  br label %while.body

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %kunmap.exit.if.then_crit_edge
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %17, i32 noundef %27) #16
  br label %cleanup69

while.body:                                       ; preds = %if.end57.while.body_crit_edge, %while.body.lr.ph
  %cur_out.0159 = phi i32 [ 0, %while.body.lr.ph ], [ %add54, %if.end57.while.body_crit_edge ]
  %cur_in.0158 = phi i32 [ 4, %while.body.lr.ph ], [ %spec.select, %if.end57.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_len) #9
  %29 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add17, ptr %out_len, align 4
  %div18 = udiv i32 %cur_in.0158, %7
  %sub20 = add i32 %cur_in.0158, 3
  %div21 = udiv i32 %sub20, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %div18, i32 %div21)
  %cmp22 = icmp eq i32 %div18, %div21
  br i1 %cmp22, label %cond.end26, label %cond.false25, !prof !60

cond.false25:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.8, i32 noundef 375) #14
  unreachable

cond.end26:                                       ; preds = %while.body
  %30 = ptrtoint ptr %compressed_pages to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %compressed_pages, align 8
  %div28116 = lshr i32 %cur_in.0158, 12
  %arrayidx29 = getelementptr ptr, ptr %31, i32 %div28116
  %32 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx29, align 4
  %tobool30.not = icmp eq ptr %33, null
  br i1 %tobool30.not, label %cond.false38, label %cond.end39, !prof !57

cond.false38:                                     ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.9, i32 noundef 377) #14
  unreachable

cond.end39:                                       ; preds = %cond.end26
  call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 44) #9
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %shr.i.i120 = lshr i32 %35, 30
  %36 = zext i32 %shr.i.i120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %shr.i.i120, label %cond.end39.if.then.i124_crit_edge [
    i32 2, label %cond.end39.if.else.i126_crit_edge
    i32 3, label %is_highmem_idx.exit.i122
  ]

cond.end39.if.else.i126_crit_edge:                ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i126

cond.end39.if.then.i124_crit_edge:                ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i124

is_highmem_idx.exit.i122:                         ; preds = %cond.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %37 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp2.i.not.i121 = icmp eq i32 %37, 2
  br i1 %cmp2.i.not.i121, label %is_highmem_idx.exit.i122.if.else.i126_crit_edge, label %is_highmem_idx.exit.i122.if.then.i124_crit_edge

is_highmem_idx.exit.i122.if.then.i124_crit_edge:  ; preds = %is_highmem_idx.exit.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i124

is_highmem_idx.exit.i122.if.else.i126_crit_edge:  ; preds = %is_highmem_idx.exit.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i126

if.then.i124:                                     ; preds = %is_highmem_idx.exit.i122.if.then.i124_crit_edge, %cond.end39.if.then.i124_crit_edge
  %call5.i123 = call ptr @page_address(ptr noundef nonnull %33) #9
  br label %kmap.exit129

if.else.i126:                                     ; preds = %is_highmem_idx.exit.i122.if.else.i126_crit_edge, %cond.end39.if.else.i126_crit_edge
  %call6.i125 = call ptr @kmap_high(ptr noundef nonnull %33) #9
  br label %kmap.exit129

kmap.exit129:                                     ; preds = %if.else.i126, %if.then.i124
  %addr.0.i127 = phi ptr [ %call6.i125, %if.else.i126 ], [ %call5.i123, %if.then.i124 ]
  %and = and i32 %cur_in.0158, 4095
  %add.ptr41 = getelementptr i8, ptr %addr.0.i127, i32 %and
  %38 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %dlen.0.copyload.i130 = load i32, ptr %add.ptr41, align 1
  %39 = call i32 @llvm.bswap.i32(i32 %dlen.0.copyload.i130) #9
  call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 55) #9
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %33, align 4
  %shr.i.i131 = lshr i32 %41, 30
  %42 = zext i32 %shr.i.i131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %shr.i.i131, label %kmap.exit129.kunmap.exit135_crit_edge [
    i32 2, label %kmap.exit129.if.end.i134_crit_edge
    i32 3, label %is_highmem_idx.exit.i133
  ]

kmap.exit129.if.end.i134_crit_edge:               ; preds = %kmap.exit129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i134

kmap.exit129.kunmap.exit135_crit_edge:            ; preds = %kmap.exit129
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit135

is_highmem_idx.exit.i133:                         ; preds = %kmap.exit129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %43 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp2.i.not.i132 = icmp eq i32 %43, 2
  br i1 %cmp2.i.not.i132, label %is_highmem_idx.exit.i133.if.end.i134_crit_edge, label %is_highmem_idx.exit.i133.kunmap.exit135_crit_edge

is_highmem_idx.exit.i133.kunmap.exit135_crit_edge: ; preds = %is_highmem_idx.exit.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit135

is_highmem_idx.exit.i133.if.end.i134_crit_edge:   ; preds = %is_highmem_idx.exit.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i134

if.end.i134:                                      ; preds = %is_highmem_idx.exit.i133.if.end.i134_crit_edge, %kmap.exit129.if.end.i134_crit_edge
  call void @kunmap_high(ptr noundef nonnull %33) #9
  br label %kunmap.exit135

kunmap.exit135:                                   ; preds = %if.end.i134, %is_highmem_idx.exit.i133.kunmap.exit135_crit_edge, %kmap.exit129.kunmap.exit135_crit_edge
  %add43 = add i32 %cur_in.0158, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4421, i32 %39)
  %cmp44 = icmp ugt i32 %39, 4421
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %kunmap.exit135
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef %39) #16
  br label %out.thread169

if.end46:                                         ; preds = %kunmap.exit135
  %add.i = add i32 %39, %add43
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add43)
  %cmp32.i = icmp ugt i32 %add.i, %add43
  br i1 %cmp32.i, label %while.body.lr.ph.i, label %if.end46.copy_compressed_segment.exit_crit_edge

if.end46.copy_compressed_segment.exit_crit_edge:  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_compressed_segment.exit

while.body.lr.ph.i:                               ; preds = %if.end46
  %44 = ptrtoint ptr %cbuf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cbuf, align 4
  %idx.neg.i = sub i32 -4, %cur_in.0158
  %add.ptr.i = getelementptr i8, ptr %45, i32 %idx.neg.i
  br label %while.body.i

while.body.i:                                     ; preds = %kunmap.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %cur_in.1 = phi i32 [ %add43, %while.body.lr.ph.i ], [ %add12.i, %kunmap.exit.i.while.body.i_crit_edge ]
  %and.i = and i32 %cur_in.1, 4095
  %sub.i = sub nuw nsw i32 4096, %and.i
  %sub2.i = sub i32 %add.i, %cur_in.1
  %46 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %sub2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %cond.false7.i, label %cond.end8.i, !prof !57

cond.false7.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.21, i32 noundef 315) #15
  unreachable

cond.end8.i:                                      ; preds = %while.body.i
  %47 = ptrtoint ptr %compressed_pages to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %compressed_pages, align 8
  %div28.i = lshr i32 %cur_in.1, 12
  %arrayidx.i = getelementptr ptr, ptr %48, i32 %div28.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 44) #9
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %shr.i.i.i = lshr i32 %52, 30
  %53 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %shr.i.i.i, label %cond.end8.i.if.then.i.i_crit_edge [
    i32 2, label %cond.end8.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

cond.end8.i.if.else.i.i_crit_edge:                ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

cond.end8.i.if.then.i.i_crit_edge:                ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %cond.end8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %54 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp2.i.not.i.i = icmp eq i32 %54, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %cond.end8.i.if.then.i.i_crit_edge
  %call5.i.i = call ptr @page_address(ptr noundef %50) #9
  br label %kmap.exit.i

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %cond.end8.i.if.else.i.i_crit_edge
  %call6.i.i = call ptr @kmap_high(ptr noundef %50) #9
  br label %kmap.exit.i

kmap.exit.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %addr.0.i.i = phi ptr [ %call6.i.i, %if.else.i.i ], [ %call5.i.i, %if.then.i.i ]
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 %cur_in.1
  %add.ptr11.i = getelementptr i8, ptr %addr.0.i.i, i32 %and.i
  %55 = call ptr @memcpy(ptr %add.ptr9.i, ptr %add.ptr11.i, i32 %46)
  call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 55) #9
  %56 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %50, align 4
  %shr.i.i29.i = lshr i32 %57, 30
  %58 = zext i32 %shr.i.i29.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %shr.i.i29.i, label %kmap.exit.i.kunmap.exit.i_crit_edge [
    i32 2, label %kmap.exit.i.if.end.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i31.i
  ]

kmap.exit.i.if.end.i.i_crit_edge:                 ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

kmap.exit.i.kunmap.exit.i_crit_edge:              ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit.i

is_highmem_idx.exit.i31.i:                        ; preds = %kmap.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %59 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp2.i.not.i30.i = icmp eq i32 %59, 2
  br i1 %cmp2.i.not.i30.i, label %is_highmem_idx.exit.i31.i.if.end.i.i_crit_edge, label %is_highmem_idx.exit.i31.i.kunmap.exit.i_crit_edge

is_highmem_idx.exit.i31.i.kunmap.exit.i_crit_edge: ; preds = %is_highmem_idx.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit.i

is_highmem_idx.exit.i31.i.if.end.i.i_crit_edge:   ; preds = %is_highmem_idx.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %is_highmem_idx.exit.i31.i.if.end.i.i_crit_edge, %kmap.exit.i.if.end.i.i_crit_edge
  call void @kunmap_high(ptr noundef %50) #9
  br label %kunmap.exit.i

kunmap.exit.i:                                    ; preds = %if.end.i.i, %is_highmem_idx.exit.i31.i.kunmap.exit.i_crit_edge, %kmap.exit.i.kunmap.exit.i_crit_edge
  %add12.i = add i32 %46, %cur_in.1
  %cmp.i = icmp ugt i32 %add.i, %add12.i
  br i1 %cmp.i, label %kunmap.exit.i.while.body.i_crit_edge, label %kunmap.exit.i.copy_compressed_segment.exit_crit_edge

kunmap.exit.i.copy_compressed_segment.exit_crit_edge: ; preds = %kunmap.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_compressed_segment.exit

kunmap.exit.i.while.body.i_crit_edge:             ; preds = %kunmap.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

copy_compressed_segment.exit:                     ; preds = %kunmap.exit.i.copy_compressed_segment.exit_crit_edge, %if.end46.copy_compressed_segment.exit_crit_edge
  %cur_in.2 = phi i32 [ %add43, %if.end46.copy_compressed_segment.exit_crit_edge ], [ %add12.i, %kunmap.exit.i.copy_compressed_segment.exit_crit_edge ]
  %60 = ptrtoint ptr %cbuf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cbuf, align 4
  %62 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buf, align 4
  %call48 = call i32 @lzo1x_decompress_safe(ptr noundef %61, i32 noundef %39, ptr noundef %63, ptr noundef nonnull %out_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49.not = icmp eq i32 %call48, 0
  br i1 %cmp49.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %copy_compressed_segment.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %5, ptr noundef nonnull @.str.11) #16
  br label %out.thread169

if.end51:                                         ; preds = %copy_compressed_segment.exit
  %64 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buf, align 4
  %66 = ptrtoint ptr %out_len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %out_len, align 4
  %call53 = call i32 @btrfs_decompress_buf2page(ptr noundef %65, i32 noundef %67, ptr noundef %cb, i32 noundef %cur_out.0159) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp55 = icmp eq i32 %call53, 0
  br i1 %cmp55, label %out, label %if.end57

if.end57:                                         ; preds = %if.end51
  %68 = ptrtoint ptr %out_len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %out_len, align 4
  %add54 = add i32 %69, %cur_out.0159
  %rem = urem i32 %cur_in.2, %7
  %sub58 = sub i32 %7, %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub58)
  %cmp59 = icmp ugt i32 %sub58, 3
  %add62 = select i1 %cmp59, i32 0, i32 %sub58
  %spec.select = add i32 %add62, %cur_in.2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len) #9
  %cmp13 = icmp ult i32 %spec.select, %17
  br i1 %cmp13, label %if.end57.while.body_crit_edge, label %if.end57.if.then67_crit_edge

if.end57.if.then67_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then67

if.end57.while.body_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

out.thread169:                                    ; preds = %if.then50, %if.then45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len) #9
  br label %cleanup69

out:                                              ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len) #9
  br label %if.then67

if.then67:                                        ; preds = %out, %if.end57.if.then67_crit_edge
  %orig_bio = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 10
  %70 = ptrtoint ptr %orig_bio to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %orig_bio, align 8
  call void @zero_fill_bio(ptr noundef %71) #9
  br label %cleanup69

cleanup69:                                        ; preds = %if.then67, %out.thread169, %if.then, %while.cond.preheader.cleanup69_crit_edge
  %retval.0 = phi i32 [ -117, %if.then ], [ 0, %if.then67 ], [ -5, %out.thread169 ], [ -1, %while.cond.preheader.cleanup69_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzo1x_decompress_safe(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_decompress_buf2page(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_fill_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lzo_decompress(ptr nocapture noundef readonly %ws, ptr noundef %data_in, ptr noundef %dest_page, i32 noundef %start_byte, i32 noundef %srclen, i32 noundef %destlen) local_unnamed_addr #0 align 64 {
entry:
  %out_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_len) #9
  %0 = add i32 %srclen, -4430
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4426, i32 %0)
  %1 = icmp ult i32 %0, -4426
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data_in to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %dlen.0.copyload.i = load i32, ptr %data_in, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %dlen.0.copyload.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %srclen)
  %cmp2.not = icmp eq i32 %3, %srclen
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr5 = getelementptr i8, ptr %data_in, i32 4
  %4 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %dlen.0.copyload.i74 = load i32, ptr %add.ptr5, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %dlen.0.copyload.i74) #9
  %sub = add nsw i32 %srclen, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub)
  %cmp7.not = icmp eq i32 %5, %sub
  br i1 %cmp7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %add.ptr10 = getelementptr i8, ptr %data_in, i32 8
  %6 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4096, ptr %out_len, align 4
  %buf = getelementptr i8, ptr %ws, i32 -8
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf, align 4
  %call11 = call i32 @lzo1x_decompress_safe(ptr noundef %add.ptr10, i32 noundef %5, ptr noundef %8, ptr noundef nonnull %out_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #16
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %out_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %out_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %start_byte)
  %cmp17 = icmp ult i32 %10, %start_byte
  br i1 %cmp17, label %if.end16.cleanup_crit_edge, label %if.end19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %11 = call i32 @llvm.umin.i32(i32 %destlen, i32 4096)
  %sub22 = sub i32 %10, %start_byte
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 %sub22)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %13 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %13, 512
  %call.i = call ptr @__kmap_local_page_prot(ptr noundef %dest_page, i32 noundef %or.i) #9
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf, align 4
  %add.ptr31 = getelementptr i8, ptr %15, i32 %start_byte
  %16 = call ptr @memcpy(ptr %call.i, ptr %add.ptr31, i32 %12)
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub22)
  %cmp32 = icmp ugt i32 %11, %sub22
  br i1 %cmp32, label %if.then33, label %if.end19.do.end40_crit_edge

if.end19.do.end40_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

if.then33:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr34 = getelementptr i8, ptr %call.i, i32 %12
  %sub35 = sub nsw i32 %11, %12
  %17 = call ptr @memset(ptr %add.ptr34, i32 0, i32 %sub35)
  br label %do.end40

do.end40:                                         ; preds = %if.then33, %if.end19.do.end40_crit_edge
  call void @kunmap_local_indexed(ptr noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end16.cleanup_crit_edge, %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %entry.cleanup_crit_edge ], [ -117, %if.end.cleanup_crit_edge ], [ -5, %do.end ], [ 0, %do.end40 ], [ -117, %if.end4.cleanup_crit_edge ], [ -5, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold noreturn }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !29, !31, !33, !34, !35, !36, !37, !39, !41, !43, !45}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/lzo.c", i32 222, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/btrfs/lzo.c", i32 242, i32 4}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/btrfs/lzo.c", i32 247, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/btrfs/lzo.c", i32 255, i32 4}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @lzo_compress_pages.__UNIQUE_ID_ddebug928, !8, !"__UNIQUE_ID_ddebug928", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/lzo.c", i32 356, i32 3}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/btrfs/lzo.c", i32 374, i32 3}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/lzo.c", i32 377, i32 3}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/lzo.c", i32 388, i32 4}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/btrfs/lzo.c", i32 401, i32 4}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/btrfs/lzo.c", i32 459, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @lzo_decompress._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @lzo_decompress._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @btrfs_lzo_compress, !28, !"btrfs_lzo_compress", i1 false, i1 false}
!28 = !{!"../fs/btrfs/lzo.c", i32 491, i32 32}
!29 = !{ptr @wsm, !30, !"wsm", i1 false, i1 false}
!30 = !{!"../fs/btrfs/lzo.c", i32 65, i32 33}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @assertfail._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @assertfail._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/btrfs/lzo.c", i32 144, i32 2}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/mm.h", i32 717, i32 2}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/btrfs/lzo.c", i32 315, i32 3}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{!"auto-init"}
!59 = !{i64 2148702508, i64 2148702513, i64 2148702526, i64 2148702570, i64 2148702604, i64 2148702625}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2153167759, i64 2153168242, i64 2153167796, i64 2153167852, i64 2153167886, i64 2153167910, i64 2153167951, i64 2153167972, i64 2153168000, i64 2153168034}
!62 = !{i64 2148309145}
!63 = !{i64 2148223878, i64 2148223910, i64 2148223939, i64 2148223973, i64 2148224004, i64 2148224027}
!64 = !{i64 2148309374}
!65 = !{i64 2158199432, i64 2158199914, i64 2158199469, i64 2158199525, i64 2158199559, i64 2158199583, i64 2158199624, i64 2158199645, i64 2158199673, i64 2158199707}
